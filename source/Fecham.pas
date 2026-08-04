unit Coman;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,
  ExtCtrls, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Buttons, Mask,
  JvExMask, JvToolEdit, DB,
  CadMes; // Form de Cadastro de Mesas/Comandas

type
  TFrmGereComanda = class(TForm)
    Panel1: TPanel;
    lbTitulo: TLabel;
    Label6: TLabel;
    EdComanda: TJvComboEdit;
    Bevel1: TBevel;
    nbComanda: TNotebook;
    dbgMesaItem: TJvDBGrid;
    Label14: TLabel;
    EdComplemento: TDBEdit;
    Bevel2: TBevel;
    Shape1: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Shape2: TShape;
    Label11: TLabel;
    Shape3: TShape;
    ckAtendida: TCheckBox;
    sbComanda: TSpeedButton;
    lbVlrTotal: TLabel;
    Label1: TLabel;
    edCodProd: TJvComboEdit;
    Label2: TLabel;
    edDescrProd: TEdit;
    rgMesaViagem: TRadioGroup;
    ckFocaHistorico: TCheckBox;
    sbCadastra: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure EdComandaButtonClick(Sender: TObject);
    procedure EdComandaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbCadastraClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    procedure CarregarDetalhamentoComanda(const AComanda: string);
    function ComandaExiste(const AComanda: string): Boolean;
    procedure AbrirCadastroComanda(const AComanda: string);
  public
  end;

var
  FrmGereComanda: TFrmGereComanda;

implementation

uses
  udm1, Fecham; // Data Module e Tela de Fechamento

{$R *.dfm}

{ --- Inicialização da Tela --- }
procedure TFrmGereComanda.FormShow(Sender: TObject);
begin
  // Painel de detalhamento inicia INVISÍVEL
  nbComanda.Visible := False;
  EdComanda.Clear;
  EdComanda.SetFocus;
end;

{ --- Validação e Busca da Comanda --- }
function TFrmGereComanda.ComandaExiste(const AComanda: string): Boolean;
begin
  Result := False;
  if Trim(AComanda) = '' then Exit;

  // Busca na tabela de mesas/comandas no DataModule
  with Dm1.qrGenerica do
  begin
    Close;
    SQL.Text := 'SELECT ID, NUMERO, STATUS FROM MESAS WHERE NUMERO = :NUMERO';
    ParamByName('NUMERO').AsString := Trim(AComanda);
    Open;
    Result := not IsEmpty;
  end;
end;

procedure TFrmGereComanda.CarregarDetalhamentoComanda(const AComanda: string);
begin
  if Trim(AComanda) = '' then
  begin
    nbComanda.Visible := False;
    Exit;
  end;

  if ComandaExiste(AComanda) then
  begin
    // Localizou a comanda: Torna o painel visível e carrega os dados
    nbComanda.Visible := True;

    // Filtra os itens da comanda atual no DataModule
    Dm1.tbMesaItem.Close;
    Dm1.tbMesaItem.Filter := 'ID_MESA = ' + QuotedStr(AComanda);
    Dm1.tbMesaItem.Filtered := True;
    Dm1.tbMesaItem.Open;

    // Atualiza o total acumulado
    lbVlrTotal.Caption := FormatFloat('R$ #,##0.00', Dm1.CalcularTotalComanda(AComanda));
  end;
end;

{ --- Eventos de Seleção de Comanda --- }
procedure TFrmGereComanda.EdComandaButtonClick(Sender: TObject);
begin
  if Trim(EdComanda.Text) <> '' then
  begin
    if ComandaExiste(EdComanda.Text) then
      CarregarDetalhamentoComanda(EdComanda.Text)
    else
    begin
      if MessageDlg('Comanda ' + EdComanda.Text + ' não cadastrada. Deseja cadastrar agora?', 
                    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        AbrirCadastroComanda(EdComanda.Text);
      end;
    end;
  end;
end;

procedure TFrmGereComanda.EdComandaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    EdComandaButtonClick(Sender);
  end;
end;

{ --- Cadastro Rápido de Comanda (`CadMes.pas`) --- }
procedure TFrmGereComanda.AbrirCadastroComanda(const AComanda: string);
var
  FrmCadMes: TFrmCadMes;
begin
  FrmCadMes := TFrmCadMes.Create(Self);
  try
    // Se o formulário permitir receber o número inicial
    // FrmCadMes.EdNumeroMesa.Text := AComanda;
    if FrmCadMes.ShowModal = mrOk then
    begin
      // Após cadastrar, recarrega o detalhamento caso tenha sido criada
      if ComandaExiste(EdComanda.Text) then
        CarregarDetalhamentoComanda(EdComanda.Text);
    end;
  finally
    FrmCadMes.Free;
  end;
end;

procedure TFrmGereComanda.sbCadastraClick(Sender: TObject);
begin
  if Trim(EdComanda.Text) = '' then
  begin
    ShowMessage('Informe o número da comanda para realizar o cadastro rápido.');
    EdComanda.SetFocus;
    Exit;
  end;

  if ComandaExiste(EdComanda.Text) then
  begin
    ShowMessage('A comanda nº ' + EdComanda.Text + ' já está cadastrada!');
    CarregarDetalhamentoComanda(EdComanda.Text);
  end
  else
  begin
    AbrirCadastroComanda(EdComanda.Text);
  end;
end;

{ --- Botões de Fechamento e Encerramento --- }
procedure TFrmGereComanda.BitBtn1Click(Sender: TObject);
begin
  if not nbComanda.Visible then
  begin
    ShowMessage('Selecione uma comanda válida antes de prosseguir.');
    Exit;
  end;

  FormFecha := TfrmFecha.Create(Self);
  try
    FormFecha.edCodMesa.Text := EdComanda.Text;
    if FormFecha.ShowModal = mrOk then
    begin
      EdComanda.Clear;
      nbComanda.Visible := False;
      EdComanda.SetFocus;
    end;
  finally
    FormFecha.Free;
  end;
end;

procedure TFrmGereComanda.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmGereComanda.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := True;
end;

end.
