unit Grupos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, 
  StdCtrls, ToolEdit, RXDBCtrl, DBNumEdt, JvExMask, JvToolEdit, JvDBControls, 
  Mask, DBCtrls, Buttons, ExtCtrls, JvExControls, JvComponent, JvLabel, DB;

type
  TfrmGrupos = class(TForm)
    Panel1: TPanel;
    DBStatusLabel1: TJvDBStatusLabel;
    sbAdiciona: TSpeedButton;
    sbGrava: TSpeedButton;
    sbApaga: TSpeedButton;
    sbDesfaz: TSpeedButton;
    sbFecha: TSpeedButton;
    sbImprime: TSpeedButton;
    sbTodos: TSpeedButton;
    DBNavigator1: TDBNavigator;
    
    DBText1: TDBText;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    LbMargem: TLabel;
    Bevel1: TBevel;

    EdCodGrupo: TJvDBComboEdit;
    EdDescricao: TDBEdit;
    EdUnidMed: TJvDBComboEdit;
    EdDescrUnidMed: TDBEdit;
    EdSitTrib: TJvDBComboEdit;
    EdDescrSitTrib: TDBEdit;
    EdClasFisc: TJvDBComboEdit;
    EdDescrClassFisc: TDBEdit;
    EdMargem: TDBNumEdit;
    edSugDescrProd: TDBEdit;
    EdImpressora: TRxDBComboEdit;
    EdDescrImpressora: TDBEdit;

    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sbFechaClick(Sender: TObject);
    procedure sbAdicionaClick(Sender: TObject);
    procedure sbGravaClick(Sender: TObject);
    procedure sbApagaClick(Sender: TObject);
    procedure sbDesfazClick(Sender: TObject);
    procedure sbTodosClick(Sender: TObject);
    procedure EdCodGrupoButtonClick(Sender: TObject);
    procedure EdUnidMedButtonClick(Sender: TObject);
    procedure EdSitTribButtonClick(Sender: TObject);
    procedure EdClasFiscButtonClick(Sender: TObject);
    procedure EdImpressoraButtonClick(Sender: TObject);
    procedure NvGruposBeforeAction(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrupos: TfrmGrupos;

implementation

uses UDm1, UDm2, funcoes, F2Geral;

{$R *.DFM}

procedure TfrmGrupos.FormShow(Sender: TObject);
begin
  AbreTabela(Dm1.TbGrupos, False);
  AbreTabela(dm1.TbUnidMED, False);
end;

procedure TfrmGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmGrupos.sbFechaClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmGrupos.sbAdicionaClick(Sender: TObject);
begin
  if Adiciona(Dm1.TbGrupos) then
  begin
    if EdCodGrupo.CanFocus then
      EdCodGrupo.SetFocus;
  end;
end;

procedure TfrmGrupos.sbGravaClick(Sender: TObject);
begin
  Grava(Dm1.TbGrupos);
end;

procedure TfrmGrupos.sbApagaClick(Sender: TObject);
begin
  Apaga(Dm1.TbGrupos, True);
end;

procedure TfrmGrupos.sbDesfazClick(Sender: TObject);
begin
  Desfaz(Dm1.TbGrupos);
end;

{ Pesquisa do Grupo principal }
procedure TfrmGrupos.EdCodGrupoButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.TbGrupos,
       'CODGRUPO',
       ['CODGRUPO', 'DESCRICAO'],
       ['Código', 'Descrição'],
       ['CODGRUPO'],
       False,
       EdCodGrupo.Text,
       'CODGRUPO'
     ) then
  begin
    EdCodGrupo.Text := Dm1.TbGrupos.FieldByName('CODGRUPO').AsString;
  end;
end;

{ Pesquisa Auxiliar: Unidade de Medida }
procedure TfrmGrupos.EdUnidMedButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.TbUnidMed,
       'UNIDMED',
       ['UNIDMED', 'DESCRICAO'],
       ['Unidade', 'Descrição'],
       ['UNIDMED'],
       False,
       EdUnidMed.Text,
       'UNIDMED'
     ) then
  begin
    Edita(Dm1.TbGrupos);
    Dm1.TbGrupos.FieldByName('UNIDMED').AsString := Dm1.TbUnidMed.FieldByName('UNIDMED').AsString;
  end;
end;

{ Pesquisa Auxiliar: Situação Tributária }
procedure TfrmGrupos.EdSitTribButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.TbSitTrib,
       'SITTRIB',
       ['SITTRIB', 'DESCRICAO'],
       ['Sit. Trib', 'Descrição'],
       ['SITTRIB'],
       False,
       EdSitTrib.Text,
       'SITTRIB'
     ) then
  begin
    Edita(Dm1.TbGrupos);
    Dm1.TbGrupos.FieldByName('SITTRIB').AsString := Dm1.TbSitTrib.FieldByName('SITTRIB').AsString;
  end;
end;

{ Pesquisa Auxiliar: Classificação Fiscal }
procedure TfrmGrupos.EdClasFiscButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm2.TbClasFisc,
       'CLASSFISC',
       ['CLASSFISC', 'DESCRICAO'],
       ['Class. Fiscal', 'Descrição'],
       ['CLASSFISC'],
       False,
       EdClasFisc.Text,
       'CLASSFISC'
     ) then
  begin
    Edita(Dm1.TbGrupos);
    Dm1.TbGrupos.FieldByName('CLASSFISC').AsString := Dm2.TbClasFisc.FieldByName('CLASSFISC').AsString;
  end;
end;

{ Pesquisa Auxiliar: Impressora de Produção / Cozinha }
procedure TfrmGrupos.EdImpressoraButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.TbImprGrill,
       'CODIMPR',
       ['CODIMPR', 'DESCRICAO'],
       ['Código', 'Descrição'],
       ['CODIMPR'],
       False,
       EdImpressora.Text,
       'CODIMPR'
     ) then
  begin
    Edita(Dm1.TbGrupos);
    Dm1.TbGrupos.FieldByName('CODIMPR').AsString := Dm1.TbImprGrill.FieldByName('CODIMPR').AsString;
  end;
end;

procedure TfrmGrupos.sbTodosClick(Sender: TObject);
begin
  Dm1.TbGrupos.Close;
  Dm1.TbGrupos.Open;  
end;

procedure TfrmGrupos.NvGruposBeforeAction(Sender: TObject);
begin
  if Dm1.TbGrupos.State in [dsInsert, dsEdit] then
  begin
    if sbGrava.Enabled then
      sbGrava.Click;
  end;
end;

end.
