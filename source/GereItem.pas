unit GereItem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  StdCtrls, IBTable, ExtCtrls, DB, IBCustomDataSet, Mask, JvExMask, 
  JvToolEdit, Buttons, Grids, DBGrids, JvExDBGrids, JvDBGrid, Math;

type
  TfrmGereItem = class(TForm)
    lbTitulo: TLabel;
    dbgMesaItem: TJvDBGrid;
    tbItens: TIBDataSet;
    dsItens: TDataSource;
    pvTopo: TPanel;
    btFiltrar: TBitBtn;
    Label2: TLabel;
    edFuncionario: TEdit;
    edCodFunc: TJvComboEdit;
    rgStatus: TRadioGroup;
    edMesa: TEdit;
    Label3: TLabel;
    edCodMesa: TJvComboEdit;
    tbItensCODMESA: TIntegerField;
    tbItensITEM: TIntegerField;
    tbItensCODPROD: TIBStringField;
    tbItensDESCRPROD: TIBStringField;
    tbItensQTDELCTO: TFloatField;
    tbItensVLRUNIT: TFloatField;
    tbItensVLRTOTAL: TFloatField;
    tbItensCODFUNC: TIBStringField;
    tbItensSTATUS: TIBStringField;
    pvRodape: TPanel;
    btAtender: TBitBtn;
    btFechar: TBitBtn;
    btCancelar: TBitBtn;
    tmrGereItem: TTimer;
    tbItensNUMLCTO: TIntegerField;
    tbItensUNIDMED: TIBStringField;
    tbItensQTDEUNIDMED: TFloatField;
    btTodos: TBitBtn;
    Label1: TLabel;
    edCodDestino: TJvComboEdit;
    EdDestino: TEdit;
    BitBtn1: TBitBtn;
    tbItensDATAREQ: TDateTimeField;
    tbItensFECHADO: TIBStringField;
    tbItensCODIMPR: TIntegerField;
    tbItensIMPRESSO: TIBStringField;
    tbItensVIAGEM: TIBStringField;
    tbItensHRREQUIS: TIBStringField;
    tbItensHISTORICO: TIBStringField;
    tbItensHRATEND: TIBStringField;
    BitBtn2: TBitBtn;
    IBTable1: TIBTable;
    IBTable1CODCOMANDA: TIBStringField;
    IBTable1CODMESA: TIntegerField;
    tbItensCODCOMANDA: TStringField;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btFiltrarClick(Sender: TObject);
    procedure edCodFuncButtonClick(Sender: TObject);
    procedure edCodMesaButtonClick(Sender: TObject);
    procedure edCodDestinoButtonClick(Sender: TObject);
    procedure btAtenderClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbgMesaItemDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tmrGereItemTimer(Sender: TObject);
    procedure dbgMesaItemTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumn);
    procedure btTodosClick(Sender: TObject);
    procedure edMesaChange(Sender: TObject);
    procedure edCodMesaChange(Sender: TObject);
    procedure edCodDestinoChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgMesaItemKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    FCampoOrdem: string;
    procedure CarregaItens;
  public
    { Public declarations }
  end;

var
  frmGereItem: TfrmGereItem;

implementation

uses UDm1, UDm2, funcoes, F2Geral;

{$R *.DFM}

procedure TfrmGereItem.FormCreate(Sender: TObject);
begin
  FCampoOrdem := 'mi.datareq';
end;

procedure TfrmGereItem.FormShow(Sender: TObject);
begin
  AbreTabela(Dm1.TbMesas, False);
  AbreTabela(dm1.TbImprGrill, False); 
  CarregaItens;
end;

procedure TfrmGereItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

{ Monta e executa a instrução SQL com base nos filtros selecionados }
procedure TfrmGereItem.CarregaItens;
begin
  tbItens.Close;
  tbItens.SelectSQL.Clear;
  
  tbItens.SelectSQL.Add('select mi.* from mesaitem mi');
  tbItens.SelectSQL.Add('left join produtos p on (mi.codprod = p.codprod)');
  tbItens.SelectSQL.Add('left join grupos g on (p.codgrupo = g.codgrupo)');
  tbItens.SelectSQL.Add('where ((mi.fechado is null) or (mi.fechado = ''F''))');

  // Filtro por Funcionário
  if Trim(edCodFunc.Text) <> '' then
    tbItens.SelectSQL.Add('and (mi.codfunc = ' + QuotedStr(FormatFloat(edCodFunc.Text, 2)) + ')');

  // Filtro por Mesa
  if Trim(edCodMesa.Text) <> '' then
    tbItens.SelectSQL.Add('and (mi.codmesa = ' + QuotedStr(edCodMesa.Text) + ')');

  // Filtro por Impressora / Destino
  if Trim(edCodDestino.Text) <> '' then
    tbItens.SelectSQL.Add('and (mi.codimpr = ' + QuotedStr(edCodDestino.Text) + ')');

  // Filtro por Status
  case rgStatus.ItemIndex of
    1: tbItens.SelectSQL.Add('and (mi.status = ''P'')'); // Pendentes
    2: tbItens.SelectSQL.Add('and (mi.status = ''A'')'); // Atendidos
    3: tbItens.SelectSQL.Add('and (mi.status = ''C'')'); // Cancelados
  end;

  if FCampoOrdem <> '' then
    tbItens.SelectSQL.Add('order by ' + FCampoOrdem)
  else
    tbItens.SelectSQL.Add('order by mi.datareq');

  try
    tbItens.Open;
  except
    on E: Exception do
      ShowMessage('Erro ao carregar os itens: ' + E.Message);
  end;
end;

procedure TfrmGereItem.btFiltrarClick(Sender: TObject);
begin
  CarregaItens;
end;

{ Consultas F2 dos botões de pesquisa }
procedure TfrmGereItem.edCodFuncButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.TbFunc,
       'CODFUNC',
       ['CODFUNC', 'NOME', 'FANTASIA'],
       ['Código', 'Nome', 'Fantasia'],
       ['CODFUNC'],
       False,
       edCodFunc.Text,
       'CODFUNC'
     ) then
  begin
    edCodFunc.Text := Dm1.TbFunc.FieldByName('CODFUNC').AsString;
    edFuncionario.Text := Dm1.TbFunc.FieldByName('NOME').AsString;
  end;
end;

procedure TfrmGereItem.edCodMesaButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.TbMesas,
       'CODMESA',
       ['CODMESA', 'DESCRICAO'],
       ['código', 'Descrição'],
       ['CODMESA'],
       False,
       edCodMesa.Text,
       'CODMESA'
     ) then
  begin
    edCodMesa.Text := Dm1.TbMesas.FieldByName('CODMESA').AsString;
    edMesa.Text := Dm1.TbMesas.FieldByName('DESCRICAO').AsString;
  end;
end;

procedure TfrmGereItem.edCodDestinoButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.TbImprGrill,
       'CODIMPR',
       ['CODIMPR', 'DESCRICAO'],
       ['código', 'Descrição'],
       ['CODIMPR'],
       False,
       edCodDestino.Text,
       'CODIMPR'
     ) then
  begin
    edCodDestino.Text := Dm1.TbImprGrill.FieldByName('CODIMPR').AsString;
  end;
end;

{ Atualização das descrições utilizando Locate nos datasets já abertos }
procedure TfrmGereItem.edCodMesaChange(Sender: TObject);
begin
  if Trim(edCodMesa.Text) <> '' then
  begin
    if Dm1.TbMesas.Locate('CODMESA', edCodMesa.Text, []) then
      edMesa.Text := Dm1.TbMesas.FieldByName('DESCRICAO').AsString
    else
      edMesa.Text := '';
  end
  else
    edMesa.Text := '';
end;

procedure TfrmGereItem.edCodDestinoChange(Sender: TObject);
begin
  if Trim(edCodDestino.Text) <> '' then
  begin
    if Dm1.TbImprGrill.Locate('CODIMPR', edCodDestino.Text, []) then
      EdDestino.Text := Dm1.TbImprGrill.FieldByName('DESCRICAO').AsString
    else
      EdDestino.Text := '';
  end
  else
    EdDestino.Text := '';
end;

procedure TfrmGereItem.edMesaChange(Sender: TObject);
begin
  btTodos.Enabled := (Trim(edMesa.Text) <> '');
end;

{ Ação: Atender Item Selecionado }
procedure TfrmGereItem.btAtenderClick(Sender: TObject);
begin
  tmrGereItem.Enabled := False;
  try
    if not tbItens.IsEmpty then
    begin
      tbItens.Edit;
      tbItens.FieldByName('STATUS').AsString := 'A';
      tbItens.FieldByName('HRATEND').AsString := FormatDateTime('hh:mm', Now);
      tbItens.Post;
      CarregaItens;
    end;
  finally
    tmrGereItem.Enabled := True;
  end;
end;

{ Ação: Cancelar Item Selecionado }
procedure TfrmGereItem.btCancelarClick(Sender: TObject);
begin
  if tbItens.IsEmpty then Exit;

  tmrGereItem.Enabled := False;
  try
    if MessageDlg('Tem certeza que deseja cancelar este item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      tbItens.Edit;
      tbItens.FieldByName('STATUS').AsString := 'C';
      tbItens.Post;
      CarregaItens;
    end;
  finally
    tmrGereItem.Enabled := True;
  end;
end;

{ Ação: Atender Todos os Itens da Mesa }
procedure TfrmGereItem.btTodosClick(Sender: TObject);
begin
  if tbItens.IsEmpty then Exit;

  tmrGereItem.Enabled := False;
  try
    tbItens.First;
    while not tbItens.Eof do
    begin
      if tbItens.FieldByName('STATUS').AsString = 'P' then
      begin
        tbItens.Edit;
        tbItens.FieldByName('STATUS').AsString := 'A';
        tbItens.FieldByName('HRATEND').AsString := FormatDateTime('hh:mm', Now);
        tbItens.Post;
      end;
      tbItens.Next;
    end;
    CarregaItens;
  finally
    tmrGereItem.Enabled := True;
  end;
end;

{ Alterar Quantidade do Item Lançado }
procedure TfrmGereItem.BitBtn1Click(Sender: TObject);
var
  NovaQtde: Double;
  ValorStr: string;
begin
  if tbItens.IsEmpty then Exit;

  NovaQtde := tbItens.FieldByName('QTDELCTO').AsFloat;
  ValorStr := FloatToStr(NovaQtde);

  if InputQuery('Alterar Quantidade', 'Informe a nova quantidade:', ValorStr) then
  begin
    NovaQtde := StrToFloatDef(ValorStr, NovaQtde);
    tmrGereItem.Enabled := False;
    try
      tbItens.Edit;
      tbItens.FieldByName('QTDELCTO').AsFloat := NovaQtde;
      tbItens.FieldByName('VLRTOTAL').AsFloat := RoundTo(NovaQtde * tbItens.FieldByName('VLRUNIT').AsFloat, 2);
      tbItens.Post;
      CarregaItens;
    finally
      tmrGereItem.Enabled := True;
    end;
  end;
end;

{ Abrir Gaveta }
procedure TfrmGereItem.BitBtn2Click(Sender: TObject);
begin
  //AbreGaveta;
end;

{ Renderização das Células com Cores por Status }
procedure TfrmGereItem.dbgMesaItemDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Status: string;
begin
  if Column.FieldName = 'STATUS' then
  begin
    Status := tbItens.FieldByName('STATUS').AsString;
    
    dbgMesaItem.Canvas.FillRect(Rect);
    
    if Status = 'P' then // Pendente -> Amarelo
    begin
      dbgMesaItem.Canvas.Brush.Color := clYellow;
      dbgMesaItem.Canvas.Pen.Color := clYellow;
      dbgMesaItem.Canvas.Font.Color := clBlack;
    end
    else if Status = 'A' then // Atendido -> Verde
    begin
      dbgMesaItem.Canvas.Brush.Color := clGreen;
      dbgMesaItem.Canvas.Pen.Color := clGreen;
      dbgMesaItem.Canvas.Font.Color := clWhite;
    end
    else if Status = 'C' then // Cancelado -> Vermelho
    begin
      dbgMesaItem.Canvas.Brush.Color := clRed;
      dbgMesaItem.Canvas.Pen.Color := clRed;
      dbgMesaItem.Canvas.Font.Color := clWhite;
    end;

    dbgMesaItem.Canvas.Ellipse(Rect);
    dbgMesaItem.Canvas.TextRect(Rect, Rect.Left + 13, Rect.Top + 2, Status);
  end;
end;

{ Ordenação ao Clicar no Título da Coluna do Grid }
procedure TfrmGereItem.dbgMesaItemTitleBtnClick(Sender: TObject; ACol: Integer; Column: TColumn);
begin
  case ACol of
    0: FCampoOrdem := 'mi.datareq';
    1: FCampoOrdem := 'mi.codmesa';
    2: FCampoOrdem := 'mi.qtdelcto';
    3: FCampoOrdem := 'mi.codprod';
    4: FCampoOrdem := 'p.descricao';
    5: FCampoOrdem := 'mi.status';
  end;
  CarregaItens;
end;

{ Timer de Atualização Automática }
procedure TfrmGereItem.tmrGereItemTimer(Sender: TObject);
begin
  CarregaItens;
end;

procedure TfrmGereItem.dbgMesaItemKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_DELETE then
    Abort; // Previne exclusão acidental via teclado direto na Grid
end;

end.
