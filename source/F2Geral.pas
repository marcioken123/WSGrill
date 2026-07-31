unit F2Geral;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, Buttons, StdCtrls, Grids, DBGrids, DB,
  IBDatabase, IBQuery, IBCustomDataSet, IBTable,
  Variants, sBitBtn, sLabel, acNoteBook, JvExDBGrids, JvDBGrid, AdjustGrid,
  DBFilter, DBTables, RxQuery, DBIndex, RXCtrls, RXDBCtrl;

type
  tCamposGridF2 = record
    Campos  : string[20];
    Titulos : string[20];
  end;

type
  TFrmF2 = class(TForm)
    DBStatusLabel1: TDBStatusLabel;
    Panel2: TPanel;
    Bevel5: TBevel;
    lbOrdem: TLabel;
    BitBtn1: TBitBtn;
    btOK: TsBitBtn;
    CkGenerico: TCheckBox;
    cbOrdem: TComboBox;
    cbOrdem2: TDBIndexCombo;
    nvF2: TDBNavigator;
    GrF2: TJvDBGrid;
    nbF2: TNotebook;
    Bevel4: TBevel;
    lb1Campo1: TLabel;
    Ed1Campo1: TEdit;
    Bevel1: TBevel;
    lb2Campo1: TLabel;
    lb2Campo2: TLabel;
    Ed2Campo1: TEdit;
    Ed2Campo2: TEdit;
    Bevel2: TBevel;
    lb3Campo2: TLabel;
    lb3Campo1: TLabel;
    lb3Campo3: TLabel;
    Ed3Campo2: TEdit;
    Ed3Campo1: TEdit;
    Ed3Campo3: TEdit;
    Bevel3: TBevel;
    lb4Campo1: TLabel;
    lb4Campo2: TLabel;
    lb4Campo3: TLabel;
    lb4Campo4: TLabel;
    Ed4Campo1: TEdit;
    Ed4Campo2: TEdit;
    Ed4Campo3: TEdit;
    Ed4Campo4: TEdit;
    lb5Campo4: TLabel;
    lb5Campo3: TLabel;
    lb5Campo2: TLabel;
    lb5Campo1: TLabel;
    lb5Campo5: TLabel;
    Ed5Campo4: TEdit;
    Ed5Campo3: TEdit;
    Ed5Campo2: TEdit;
    Ed5Campo1: TEdit;
    Ed5Campo5: TEdit;
    QeF2: TIBQuery;
    DsF2: TDataSource;
    FrF2: TRxDBFilter;
    procedure sbFechaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ChecaTeclado(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TiraLetraCGC(Sender: TObject; var Key: Char);
    procedure PesquisaCampo(Sender: TObject);
    procedure cbOrdemChange(Sender: TObject);
    procedure GrF2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MudaIndice(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GrF2GetCellProps(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MontaQuery(xTabela, xOrdem, xCondicao: string; xCampos: array of string);
    procedure MontaCaptions(xTitulos: array of string);
    procedure MontaEdits(xCampos: array of string);
    procedure MontaGrid(xCampos, xTitulos: array of string);
    function  PegaTamanhoCampo(xCampo: string): integer;
    function  RetornaEdit(xCampo: string): TEdit;
    procedure VerificaFoco;
    function  TamanhoColuna(xCampo: string; xDefault: Integer): Integer;
  end;

function MontaF2(tDataSet: TIBDataSet; xCampoPesquisa: string; xCampos, xTitulos: array of string; xFiltraFilial: boolean): boolean; overload;
function MontaF2(tDataSet: TIBDataSet; xCampoPesquisa: string; xCampos, xTitulos: array of string; xFiltraFilial: boolean; xKey, xCampo: string): boolean; overload;
function MontaF2Ind(tDataSet: TIBDataSet; xCampoPesquisa: string; xCampos, xTitulos, xIndices: array of string; xFiltraFilial: boolean; xKey, xFocoCampo: string): boolean;
function CamposAdicionaisNoGrid(xCampos, xTitulos: array of string): boolean;

var
  FrmF2            : TFrmF2;
  xCamposG         : array of string;
  xTitulosG        : array of string;
  xIndicesG        : array of string;

  xTabelaG         : string;
  xDataSetI        : TIBDataSet;
  xCampoI          : string;
  xFiltroFilial    : string = '';

  xFrAdicional     : string = '';
  xMaisCampos      : array of tCamposGridF2;
  xTipoF2          : string = 'query';
  xTituloF2        : string = 'Pesquisa no cadastro:';
  xUltimoRegF2     : boolean;

  tTabF2           : TIBDataSet;

  xChamouInd       : boolean = true;
  gKey             : string;
  gFoco            : string;
  xStatus          : string = 'c';

implementation

{$R *.DFM}

uses
  funcoes, vGlobal, Udm2, UDmC;

procedure TFrmF2.sbFechaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmF2.FormShow(Sender: TObject);
begin
  VerificaFoco;

  if xUltimoRegF2 then
  begin
    if xTipoF2 = 'query' then
      FrmF2.QeF2.Last
    else if Assigned(tTabF2) and tTabF2.Active then
      tTabF2.Last;
  end;
end;

function MontaF2(tDataSet: TIBDataSet; xCampoPesquisa: string; xCampos, xTitulos: array of string; xFiltraFilial: boolean): boolean;
var
  xIndices: array of string;
begin
  SetLength(xIndices, Length(xCampos));
  xChamouInd := false;
  Result := MontaF2Ind(tDataSet, xCampoPesquisa, xCampos, xTitulos, xIndices, xFiltraFilial, '', '');
end;

function MontaF2(tDataSet: TIBDataSet; xCampoPesquisa: string; xCampos, xTitulos: array of string; xFiltraFilial: boolean; xKey, xCampo: string): boolean;
var
  xIndices: array of string;
begin
  SetLength(xIndices, Length(xCampos));
  xChamouInd := false;
  Result := MontaF2Ind(tDataSet, xCampoPesquisa, xCampos, xTitulos, xIndices, xFiltraFilial, xKey, xCampo);
end;

function MontaF2Ind(tDataSet: TIBDataSet; xCampoPesquisa: string; xCampos, xTitulos, xIndices: array of string; xFiltraFilial: boolean; xKey, xFocoCampo: string): boolean;
var
  nCampos  : Integer;
  i        : Integer;
  xChave   : string;
  xBookMark: TBookmark;
begin
  if not AchouForm(FrmF2) then
  begin
    xChave := tDataSet.FieldByName(xCampoPesquisa).AsString;
    xBookMark := tDataSet.GetBookmark;

    if (tDataSet.RecordCount > gF2LimiteRegSQL) and (tDataSet.FieldCount > 5) then
      xTipoF2 := 'tabela';

    if xFiltraFilial then
    begin
      if tDataSet.FindField('FILIAL') <> nil then
      begin
        if xTipoF2 = 'query' then
          xFiltroFilial := 'FILIAL = ' + QuotedStr(gFilialCorrente)
        else
          xFiltroFilial := 'FILIAL = ' + QuotedStr(gFilialCorrente);
      end
      else
        xFiltroFilial := '';
    end
    else
      xFiltroFilial := '';

    xDataSetI := tDataSet;
    xCampoI   := xCampoPesquisa;

    Result := false;
    FrmF2  := TFrmF2.Create(Application);

    SetLength(xCamposG, 0);
    SetLength(xTitulosG, 0);
    SetLength(xIndicesG, 0);

    FrmF2.cbOrdem.Items.Clear;
    for i := 0 to Length(xCampos) - 1 do
    begin
      SetLength(xCamposG, Length(xCamposG) + 1);
      xCamposG[Length(xCamposG) - 1] := xCampos[i];
      FrmF2.cbOrdem.Items.Add(xCampos[i]);
    end;

    for i := 0 to Length(xTitulos) - 1 do
    begin
      SetLength(xTitulosG, Length(xTitulosG) + 1);
      xTitulosG[Length(xTitulosG) - 1] := xTitulos[i];
    end;

    for i := 0 to Length(xIndices) - 1 do
    begin
      SetLength(xIndicesG, Length(xIndicesG) + 1);
      xIndicesG[Length(xIndicesG) - 1] := xIndices[i];
    end;

    // Extrai o nome da tabela principal da instrução Select do IBDataSet
    xTabelaG := StringReplace(UpperCase(tDataSet.SelectSQL[0]), 'SELECT * FROM ', EmptyStr, []);
    if xTabelaG = '' then
      xTabelaG := tDataSet.Name;

    try
      try
        nCampos := Length(xCampos);
        if nCampos > 0 then
        begin
          FrmF2.nbF2.PageIndex := nCampos - 1;

          if xTipoF2 = 'query' then
          begin
            FrmF2.DsF2.DataSet := FrmF2.QeF2;
            FrmF2.MontaQuery(xTabelaG, '', '', xCampos);
            FrmF2.cbOrdem.Visible    := True;
            FrmF2.CkGenerico.Visible := True;
          end
          else
          begin
            tTabF2 := tDataSet;
            FrmF2.DsF2.DataSet := tTabF2;

            if xFrAdicional <> '' then
            begin
              if xFiltroFilial <> '' then
                xFiltroFilial := xFiltroFilial + ' AND ' + xFrAdicional
              else
                xFiltroFilial := xFrAdicional;
            end;

            if xFiltroFilial <> '' then
            begin
              tTabF2.Filter   := xFiltroFilial;
              tTabF2.Filtered := True;
            end;

            if not tTabF2.Active then
              tTabF2.Open;

            FrmF2.cbOrdem.Visible    := False;
            FrmF2.CkGenerico.Visible := False;
          end;

          FrmF2.MontaCaptions(xTitulos);
          FrmF2.MontaEdits(xCampos);
          FrmF2.MontaGrid(xCampos, xTitulos);

          if xTipoF2 <> 'query' then
          begin
            try
              tTabF2.GotoBookmark(xBookMark);
            except
              //
            end;
          end;

          gKey  := xKey;
          gFoco := xFocoCampo;

          FrmF2.Caption := xTituloF2;
          if FrmF2.ShowModal = mrOk then
          begin
            Application.ProcessMessages;
            if xTipoF2 = 'query' then
            begin
              if (AnsiLowerCase(xTabelaG) <> 'saidas') and (AnsiLowerCase(xTabelaG) <> 'entradas') then
              begin
                Result := tDataSet.Locate(xCampoPesquisa, FrmF2.QeF2.FieldByName(xCampoPesquisa).AsString, [loCaseInsensitive]);
              end
              else
              begin
                Result := tDataSet.Locate('FILIAL;TIPOLCTO;DTLCTO;ESPECIE;SERIE;NUMLCTO',
                  VarArrayOf([
                    FrmF2.QeF2.FieldByName('FILIAL').AsString,
                    FrmF2.QeF2.FieldByName('TIPOLCTO').AsString,
                    FrmF2.QeF2.FieldByName('DTLCTO').AsString,
                    FrmF2.QeF2.FieldByName('ESPECIE').AsString,
                    FrmF2.QeF2.FieldByName('SERIE').AsString,
                    FrmF2.QeF2.FieldByName('NUMLCTO').AsString
                  ]), [loCaseInsensitive]);
              end;
            end
            else
            begin
              if (AnsiLowerCase(xTabelaG) <> 'saidas') and (AnsiLowerCase(xTabelaG) <> 'entradas') then
              begin
                if tDataSet.FieldByName(xCampoPesquisa).AsString <> tTabF2.FieldByName(xCampoPesquisa).AsString then
                  Result := tDataSet.Locate(xCampoPesquisa, tTabF2.FieldByName(xCampoPesquisa).AsString, [loCaseInsensitive])
                else
                  Result := True;
              end
              else
              begin
                Result := tDataSet.Locate('FILIAL;TIPOLCTO;DTLCTO;ESPECIE;SERIE;NUMLCTO',
                  VarArrayOf([
                    tTabF2.FieldByName('FILIAL').AsString,
                    tTabF2.FieldByName('TIPOLCTO').AsString,
                    tTabF2.FieldByName('DTLCTO').AsString,
                    tTabF2.FieldByName('ESPECIE').AsString,
                    tTabF2.FieldByName('SERIE').AsString,
                    tTabF2.FieldByName('NUMLCTO').AsString
                  ]), [loCaseInsensitive]);
              end;
            end;
          end
          else
            Result := False;
        end;
      except
        on E: Exception do
        begin
          Result := False;
          ShowMessage(E.Message);
        end;
      end;
    finally
      if Assigned(xBookMark) then
        tDataSet.FreeBookmark(xBookMark);
      FrmF2.Free;
      Application.ProcessMessages;
      xTipoF2      := 'query';
      xTituloF2    := 'Pesquisa no cadastro:';
      xUltimoRegF2 := False;
      xChamouInd   := True;
      xFrAdicional := '';
      SetLength(xMaisCampos, 0);
    end;
  end
  else
  begin
    Result := False;
    ShowMessage('Essa pesquisa já está ativa, não podendo ser executada duas vezes.');
  end;
end;

procedure TFrmF2.MontaCaptions(xTitulos: array of string);
begin
  case Length(xTitulos) of
    1: lb1Campo1.Caption := xTitulos[0] + '.:';
    2: begin
         lb2Campo1.Caption := xTitulos[0] + '.:';
         lb2Campo2.Caption := xTitulos[1] + '.:';
       end;
    3: begin
         lb3Campo1.Caption := xTitulos[0] + '.:';
         lb3Campo2.Caption := xTitulos[1] + '.:';
         lb3Campo3.Caption := xTitulos[2] + '.:';
       end;
    4: begin
         lb4Campo1.Caption := xTitulos[0] + '.:';
         lb4Campo2.Caption := xTitulos[1] + '.:';
         lb4Campo3.Caption := xTitulos[2] + '.:';
         lb4Campo4.Caption := xTitulos[3] + '.:';
       end;
    5: begin
         lb5Campo1.Caption := xTitulos[0] + '.:';
         lb5Campo2.Caption := xTitulos[1] + '.:';
         lb5Campo3.Caption := xTitulos[2] + '.:';
         lb5Campo4.Caption := xTitulos[3] + '.:';
         lb5Campo5.Caption := xTitulos[4] + '.:';
       end;
  end;
end;

procedure TFrmF2.MontaGrid(xCampos, xTitulos: array of string);
var
  i, x: Integer;
begin
  GrF2.Columns.Clear;
  x := 0;

  for i := 0 to Length(xCampos) - 1 do
  begin
    GrF2.Columns.Add;
    GrF2.Columns.Items[i].Title.Alignment := taCenter;
    GrF2.Columns.Items[i].Title.Caption   := xTitulos[i];
    GrF2.Columns.Items[i].FieldName       := xCampos[i];
    GrF2.Columns.Items[i].Width           := TamanhoColuna(xCampos[i], GrF2.Columns.Items[i].Width + 30);
    Inc(x, 1);
  end;

  if Length(xMaisCampos) > 0 then
  begin
    for i := x to (Length(xMaisCampos) - 1) + x do
    begin
      if xDataSetI.FindField(xMaisCampos[i - x].Campos) <> nil then
      begin
        GrF2.Columns.Add;
        GrF2.Columns.Items[i].Title.Alignment := taCenter;
        GrF2.Columns.Items[i].Title.Caption   := xMaisCampos[i - x].Titulos;
        GrF2.Columns.Items[i].FieldName       := xMaisCampos[i - x].Campos;
        GrF2.Columns.Items[i].Width           := TamanhoColuna(xMaisCampos[i - x].Campos, GrF2.Columns.Items[i - x].Width + 30);
      end;
    end;
  end;

  AdjustColumnWidths(GrF2);
end;

procedure TFrmF2.MontaQuery(xTabela, xOrdem, xCondicao: string; xCampos: array of string);
var
  i, x: Integer;
  xStrCampos: string;
begin
  x := 0;
  xStrCampos := '';

  for i := 0 to Length(xCampos) - 1 do
  begin
    if xStrCampos = '' then
      xStrCampos := xCampos[i]
    else
      xStrCampos := xStrCampos + ', ' + xCampos[i];
    Inc(x, 1);
  end;

  if Length(xMaisCampos) > 0 then
  begin
    for i := x to (Length(xMaisCampos) - 1) + x do
    begin
      if xDataSetI.FindField(xMaisCampos[i - x].Campos) <> nil then
      begin
        if xStrCampos = '' then
          xStrCampos := xMaisCampos[i - x].Campos
        else
          xStrCampos := xStrCampos + ', ' + xMaisCampos[i - x].Campos;
      end;
    end;
  end;

  if xOrdem = '' then
    xOrdem := xCampos[0];

  if xCondicao = '' then
  begin
    if xFiltroFilial = '' then
    begin
      if xFrAdicional <> '' then
        xCondicao := xFrAdicional
      else
        xCondicao := '1=1';
    end
    else
    begin
      if xFrAdicional <> '' then
        xCondicao := '(' + xFiltroFilial + ') AND ' + xFrAdicional
      else
        xCondicao := xFiltroFilial;
    end;
  end
  else
  begin
    if xFiltroFilial <> '' then
    begin
      if xFrAdicional <> '' then
        xCondicao := '(' + xFiltroFilial + ') AND (' + xCondicao + ') AND (' + xFrAdicional + ')'
      else
        xCondicao := '(' + xFiltroFilial + ') AND ' + xCondicao;
    end;
  end;

  if Assigned(xDataSetI) and Assigned(xDataSetI.Database) then
    QeF2.Database := xDataSetI.Database;

  QeF2.Close;
  QeF2.SQL.Clear;
  QeF2.SQL.Add('SELECT ' + xStrCampos);
  QeF2.SQL.Add('FROM ' + xTabela);
  QeF2.SQL.Add('WHERE ' + xCondicao);
  QeF2.SQL.Add('ORDER BY ' + xOrdem);

  Screen.Cursor := crSQLWait;
  try
    try
      QeF2.Open;
      AdjustColumnWidths(GrF2);
    except
      on E: Exception do
        ShowMessage('Erro ao executar pesquisa F2: ' + E.Message);
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

function TFrmF2.PegaTamanhoCampo(xCampo: string): integer;
begin
  if xTipoF2 = 'query' then
    Result := QeF2.FieldByName(xCampo).DataSize * 10
  else
    Result := tTabF2.FieldByName(xCampo).DataSize * 10;

  if Result > 480 then
    Result := 480;
end;

procedure TFrmF2.MontaEdits(xCampos: array of string);
begin
  case Length(xCampos) of
    1: Ed1Campo1.Width := PegaTamanhoCampo(xCampos[0]);
    2: begin
         Ed2Campo1.Width := PegaTamanhoCampo(xCampos[0]);
         Ed2Campo2.Width := PegaTamanhoCampo(xCampos[1]);
       end;
    3: begin
         Ed3Campo1.Width := PegaTamanhoCampo(xCampos[0]);
         Ed3Campo2.Width := PegaTamanhoCampo(xCampos[1]);
         Ed3Campo3.Width := PegaTamanhoCampo(xCampos[2]);
       end;
    4: begin
         Ed4Campo1.Width := PegaTamanhoCampo(xCampos[0]);
         Ed4Campo2.Width := PegaTamanhoCampo(xCampos[1]);
         Ed4Campo3.Width := PegaTamanhoCampo(xCampos[2]);
         Ed4Campo4.Width := PegaTamanhoCampo(xCampos[3]);
       end;
    5: begin
         Ed5Campo1.Width := PegaTamanhoCampo(xCampos[0]);
         Ed5Campo2.Width := PegaTamanhoCampo(xCampos[1]);
         Ed5Campo3.Width := PegaTamanhoCampo(xCampos[2]);
         Ed5Campo4.Width := PegaTamanhoCampo(xCampos[3]);
         Ed5Campo5.Width := PegaTamanhoCampo(xCampos[4]);
       end;
  end;
end;

procedure TFrmF2.ChecaTeclado(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  ds: TDataSet;
begin
  if xTipoF2 = 'query' then
    ds := QeF2
  else
    ds := tTabF2;

  if Assigned(ds) and ds.Active then
  begin
    case Key of
      VK_NEXT:  ds.MoveBy(10);
      VK_PRIOR: ds.MoveBy(-10);
      VK_DOWN:  ds.Next;
      VK_UP:    ds.Prior;
    end;
  end;
end;

procedure TFrmF2.TiraLetraCGC(Sender: TObject; var Key: Char);
begin
  with (Sender as TEdit) do
  begin
    if (((Key >= 'A') and (Key <= 'Z')) or ((Key >= 'a') and (Key <= 'z'))) and (Pos('CGC', UpperCase(xCamposG[Tag - 1])) <> 0) then
      Key := #0;
  end;
end;

procedure TFrmF2.PesquisaCampo(Sender: TObject);
var
  xCampoAtivo: string;
  Edit: TEdit;
  FieldType: TFieldType;
begin
  Edit := TEdit(Sender);
  xCampoAtivo := xCamposG[Edit.Tag - 1];

  if xTipoF2 = 'query' then
  begin
    if CkGenerico.Checked then
    begin
      FieldType := QeF2.FieldByName(xCampoAtivo).DataType;
      if FieldType in [ftInteger, ftFloat, ftCurrency, ftSmallint, ftLargeint] then
      begin
        if Edit.Text <> '' then
          MontaQuery(xTabelaG, xCampoAtivo, xCampoAtivo + ' = ' + Edit.Text, xCamposG);
      end
      else
      begin
        MontaQuery(xTabelaG, xCampoAtivo, xCampoAtivo + ' LIKE ' + QuotedStr('%' + Edit.Text + '%'), xCamposG);
      end;
    end
    else
    begin
      if (xCampoAtivo <> '') and (Edit.Text <> '') then
        QeF2.Locate(xCampoAtivo, Edit.Text, [loCaseInsensitive, loPartialKey]);
    end;
  end
  else
  begin
    if (xCampoAtivo <> '') and (Edit.Text <> '') then
      tTabF2.Locate(xCampoAtivo, Edit.Text, [loCaseInsensitive, loPartialKey]);
  end;
end;

procedure TFrmF2.cbOrdemChange(Sender: TObject);
begin
  MontaQuery(xTabelaG, cbOrdem.Text, '', xCamposG);
end;

procedure TFrmF2.GrF2DblClick(Sender: TObject);
begin
  SendMessage(btOK.Handle, WM_LBUTTONDOWN, 0, 0);
end;

procedure TFrmF2.FormCreate(Sender: TObject);
begin
  DesabilitaFiltroTeclas;
  AdjustColumnWidths(GrF2);
end;

procedure TFrmF2.FormDestroy(Sender: TObject);
begin
  HabilitaFiltroTeclas;
end;

procedure TFrmF2.MudaIndice(Sender: TObject);
begin
  if xTipoF2 = 'query' then
  begin
    with (Sender as TEdit) do
    begin
      MontaQuery(xTabelaG, xCamposG[Tag - 1], '', xCamposG);
      cbOrdem.ItemIndex := Tag - 1;
    end;
  end;
end;

function TFrmF2.RetornaEdit(xCampo: string): TEdit;
var
  i: Integer;
  xNomeEd: string;
begin
  Result := nil;

  case Length(xCamposG) of
    1: xNomeEd := 'Ed1';
    2: xNomeEd := 'Ed2';
    3: xNomeEd := 'Ed3';
    4: xNomeEd := 'Ed4';
    5: xNomeEd := 'Ed5';
  end;

  for i := 1 to Length(xCamposG) do
  begin
    if SameText(xCamposG[i - 1], xCampo) then
    begin
      xNomeEd := xNomeEd + 'Campo' + IntToStr(i);
      Result  := TEdit(FrmF2.FindComponent(xNomeEd));
      Break;
    end;
  end;
end;

procedure TFrmF2.VerificaFoco;
var
  xEdit: TEdit;
begin
  if (gKey <> '') or (gFoco <> '') then
  begin
    xEdit := FrmF2.RetornaEdit(gFoco);

    if xEdit <> nil then
    begin
      xEdit.SetFocus;
      xEdit.Text := UpperCase(gKey);
      SendMessage(xEdit.Handle, WM_KEYDOWN, VK_END, 0);
      if Assigned(xEdit.OnChange) then
        xEdit.OnChange(xEdit);
    end;
  end;

  gKey  := '';
  gFoco := '';
end;

function CamposAdicionaisNoGrid(xCampos, xTitulos: array of string): boolean;
var
  i: Integer;
begin
  SetLength(xMaisCampos, 0);

  for i := 0 to Length(xCampos) - 1 do
  begin
    SetLength(xMaisCampos, Length(xMaisCampos) + 1);
    xMaisCampos[Length(xMaisCampos) - 1].Campos  := xCampos[i];
    xMaisCampos[Length(xMaisCampos) - 1].Titulos := xTitulos[i];
  end;

  Result := True;
end;

procedure TFrmF2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_F12) and (Shift = [ssCtrl]) then
  begin
    xStatus := 's';
    FrmF2.Caption := 'Pesquisa no cadastro-';
  end
  else if (Key = VK_F12) and (Shift = [ssAlt]) then
  begin
    xStatus := 't';
    FrmF2.Caption := 'Pesquisa no cadastro';
  end
  else if (Key = VK_F12) then
  begin
    xStatus := 'c';
    FrmF2.Caption := 'Pesquisa no cadastro:';
  end;
end;

function TFrmF2.TamanhoColuna(xCampo: string; xDefault: Integer): Integer;
begin
  Result := xDefault;

  try
    if SameText(xCampo, 'especie')        then Result := 50
    else if SameText(xCampo, 'serie')          then Result := 50
    else if SameText(xCampo, 'dtlcto')         then Result := 65
    else if SameText(xCampo, 'numlcto')        then Result := 65
    else if SameText(xCampo, 'cliesenhacaixa') then Result := 40
    else if SameText(xCampo, 'codfunc')        then Result := 50
    else if SameText(xCampo, 'cgcclie')        then Result := 100
    else if SameText(xCampo, 'vlrtotal')       then Result := 60
    else if SameText(xCampo, 'dtpedido')       then Result := 65
    else if SameText(xCampo, 'numpedido')      then Result := 65
    else if SameText(xCampo, 'filial')         then Result := 35
    else if SameText(xCampo, 'lkrazaoforn')    then Result := 160
    else if SameText(xCampo, 'lkrazaoclie')    then Result := 160
    else if SameText(xCampo, 'lkrazao')        then Result := 160;
  except
    on E: Exception do
      MessageDlg('Erro ao obter o tamanho da coluna!' + #13#13 + E.Message, mtError, [mbOk], 0);
  end;
end;

procedure TFrmF2.GrF2GetCellProps(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor);
begin
  if (AnsiLowerCase(xTabelaG) = 'clientes') and (xTipoF2 = 'tabela') and Assigned(tTabF2) and (tTabF2.Active) then
  begin
    if (tTabF2.FindField('Ativo') <> nil) and
       ((tTabF2.FieldByName('Ativo').AsString = 'D') or (tTabF2.FieldByName('Ativo').AsString = 'B')) then
      Background := clSilver;
  end
  else if (AnsiLowerCase(xTabelaG) = 'fornecs') and (xTipoF2 = 'tabela') and Assigned(tTabF2) and (tTabF2.Active) then
  begin
    if (tTabF2.FindField('Ativo') <> nil) and (tTabF2.FieldByName('Ativo').AsString = 'D') then
      Background := clSilver;
  end
  else if (AnsiLowerCase(xTabelaG) = 'natoper') and (xTipoF2 = 'tabela') and Assigned(tTabF2) and (tTabF2.Active) then
  begin
    if (tTabF2.FindField('Desativado') <> nil) and tTabF2.FieldByName('Desativado').AsBoolean then
      Background := clSilver
    else if (tTabF2.FindField('Mercantil') <> nil) and not tTabF2.FieldByName('Mercantil').AsBoolean then
      Background := clAqua;
  end;
end;

procedure TFrmF2.FormResize(Sender: TObject);
begin
  AdjustColumnWidths(GrF2);
end;

end.
