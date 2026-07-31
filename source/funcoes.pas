unit funcoes;

interface

uses SysUtils, Dialogs, WinTypes, Messages, Classes,
     Graphics, Controls, Db, IBQuery, IBCustomDataSet, Forms, Menus,
     Math;

function  VerificaLogin : Boolean;

function  InicializaTabela(var xTabela : TIBDataSet; xAlias, xNomeTabela : string) : boolean; overload;
function  AbreTabela(xTabela: TIBDataSet; xExclusiva : Boolean): Boolean;
function  FechaTabela(xTabela : TIBDataSet) : Boolean;
procedure ReAbre(xQuery : TIBQuery);

procedure AbreCadastros;

function  Adiciona(xTabela : TIBDataSet)        : Boolean;
function  Edita(xTabela : TIBDataSet)           : Boolean;
function  Grava(xTabela : TIBDataSet)           : Boolean;
function  Apaga(xTabela : TIBDataSet; xMensagem : boolean) : boolean;
procedure Desfaz(xTabela : TIBDataSet);

procedure SetaFoco(xComponent : TWinControl);
function  AchouForm(xForm:TForm):Boolean;
procedure DesabilitaFiltroTeclas;
procedure HabilitaFiltroTeclas;
procedure ProximoControle;
procedure ControleAnterior;

function  VerificaSeCampoExiste(xTabela: TIBDataSet; xCampo:string) : boolean;

function  Right(inString: string; numChars: Integer): string;
function  Left(inString: string; numChars: Integer): string;

function  DataReg(xData : TDate) : string;
function  SubStr(inString: string; numChars,strSize: byte):string;
function  SD(Data: string): TDateTime;

function  AdicionaCondicao(xCondicao, xNovaCondicao, xOperador : string) : string;
function  Aspas(xTexto : string) : string;
function  StrToInt0(num : String) : Integer;
function  Preenche(xCaracter:String; xString:String;xTam:Integer;xAlinhamento:string):string;

function  Decripta(xVar : String): string;
procedure Conectado(var xTabUsu : TIBDataSet; xUsuario : string; xConectado, xLimpaStatus : boolean);

function  iif(condicao:boolean; verdadeiro, falso:variant):variant;

// Funcoes de mensagens
procedure IniMens;
procedure Mensagem(xMensagem : string);
procedure FreeMens;

function  LeAtualizacao(xTabela: TIBDataSet; xInfo:string; xExibeForm:boolean) : string;
function  PegaPermissoesUsuario(xUsuario:string; xIndice:integer; xMenu:TMenuItem; xForm:TForm): string;

function  AsciiToBin(xAscii: string): string;
function  BinToAscii(xBin: string): string;

procedure GravaDiasUsuarioFiltro(nDias : integer);
function  StatusCliente(xCgcClie,xStatus  : string) : boolean;

function  SenhaCalculada : string;

implementation

uses mens, login, infoatu, vGlobal, UDm2, UDm1;

function VerificaLogin : Boolean;
begin
  FrmLogin := TFrmLogin.Create(application);
  if FrmLogin.ShowModal = mrOk then
     Result := true
  else
     Result := false;
  FrmLogin.Free;
end;

function InicializaTabela(var xTabela : TIBDataSet; xAlias, xNomeTabela : string) : boolean; overload;
begin
  Result := false;
  try
    try
      if xTabela.Active then
        xTabela.Close;
      xTabela.Open;

      Result := true;
    except
      On E:Exception do
         begin
           MessageDlg('Não foi possível abrir a tabela/DataSet: ' + xNomeTabela + #13 + #13 + e.Message, mtError, [mbOk], 0);
         end;
    end;
  finally
  end;
end;

function AbreTabela(xTabela: TIBDataSet; xExclusiva : Boolean): Boolean;
var
   xNome : string;
begin
   Result := false;
   try
      try
         Screen.Cursor := crSQLWait;
         if xTabela.Active then
            xTabela.Close;

         xNome := xTabela.Name;
         xTabela.Open;

         Screen.Cursor := crDefault;
         Result := true;
      except
         on e:exception do
            begin
               Screen.Cursor := crDefault;
               MessageDlg('Erro:' + #13 + xNome + #13 + e.message, mtError, [mbOK], 0);
            end;
      end;
   finally
      Screen.Cursor := crDefault;
   end;
end;

function FechaTabela(xTabela : TIBDataSet) : Boolean;
var
  xNome : string;
begin
  Result := false;
  try
    try
      xNome := xTabela.Name;
      if xTabela.Active then
         xTabela.Close;

      Result := true;
    except
      On E:Exception do
         ShowMessage('Erro:' + #13 + xNome + #13 + e.Message);
    end;
  finally
    {}
  end;
end;

procedure ReAbre(xQuery : TIBQuery);
begin
  xQuery.Close;
  xQuery.Open;
end;

procedure AbreCadastros;
begin
  // 1. Parâmetros e Configuração Inicial de Filial
  AbreTabela(Dm2.TbParmFili, False);
  gFilialCorrente := Dm2.TbParmFiliFilial.AsString;

  // Configuração dos Filtros por Filial
  Dm1.TbClieFili.Filter   := 'Filial = ' + Aspas(gFilialCorrente);
  Dm1.TbFiliais.Filter    := 'Filial = ' + Aspas(gFilialCorrente);
  Dm1.TbClieFili.Filtered := True;
  Dm1.TbFiliais.Filtered  := True;

  // 2. Usuários e Permissões
  AbreTabela(Dm2.TbUsuarios, False);
  Dm2.TbUsuarios.Locate('Usuario', gUsuario, [loCaseInsensitive]);

  // 3. Cadastros Principais (Dm1)
  AbreTabela(Dm1.TbClientes, False);
  AbreTabela(Dm1.TbClieFili, False);
  AbreTabela(Dm1.TbFunc, False);
  AbreTabela(Dm1.TbFiliais, False);

  // 4. Outras Tabelas de Cadastro do Dm1 / Dm2 (Anteriores que estavam comentadas ou desativadas)
  if Assigned(Dm1.FindComponent('TbRegistro')) then
    AbreTabela(TIBDataSet(Dm1.FindComponent('TbRegistro')), False);

  if Assigned(Dm1.FindComponent('TbSuporte')) then
    AbreTabela(TIBDataSet(Dm1.FindComponent('TbSuporte')), False);

  if Assigned(Dm2.FindComponent('TbFornecedores')) then
    AbreTabela(TIBDataSet(Dm2.FindComponent('TbFornecedores')), False);

  if Assigned(Dm2.FindComponent('TbProdutos')) then
    AbreTabela(TIBDataSet(Dm2.FindComponent('TbProdutos')), False);

  if Assigned(Dm2.FindComponent('TbVendedores')) then
    AbreTabela(TIBDataSet(Dm2.FindComponent('TbVendedores')), False);

  if Assigned(Dm2.FindComponent('TbTransportadoras')) then
    AbreTabela(TIBDataSet(Dm2.FindComponent('TbTransportadoras')), False);
end;

function Adiciona(xTabela : TIBDataSet) : Boolean;
begin
  result := false;
  if xTabela.Active then
     begin
       xTabela.Insert;
       result := true;
     end;
end;

function Edita(xTabela : TIBDataSet) : Boolean;
begin
  Result := false;
  if (xTabela.Active) then
     begin
       if not (xTabela.State in [dsInsert, dsEdit]) then
          begin
            try
              xTabela.Edit;
              Result := true;
            except
              On E:Exception do
                 MessageDlg('A tabela '+xTabela.Name+' não pode ser editada!'+#13+'Motivo:'+e.Message, mtError, [mbOk], 0);
            end;
          end
       else
          Result := true;
     end
  else
     Result := false;
end;

function Grava(xTabela : TIBDataSet) : Boolean;
begin
  Result := true;
  if xTabela.State in [dsInsert, dsEdit] then
     begin
       try
         xTabela.Post;
         Result := true;
       except
         On E:Exception do
            begin
              if (Pos('PRIMARY KEY', UpperCase(e.Message)) > 0) or 
                 (Pos('UNIQUE KEY', UpperCase(e.Message)) > 0) or 
                 (LowerCase(e.Message) = 'key violation.') then
                 begin
                   MessageDlg('Atenção!'+#13+#13+'Registro duplicado. Já existe um registro cadastrado com essa chave/código - DataSet: '+xTabela.Name, mtError, [mbOk], 0);
                 end
              else
                 begin
                   MessageDlg(e.Message, mtError, [mbOk], 0);
                 end;

              Result := false;
            end;
       end;
     end;
end;

function Apaga(xTabela : TIBDataSet; xMensagem : boolean) : boolean;
begin
  if xTabela.Active then
     begin
       if xMensagem then
          begin
            if MessageDlg('Tem certeza que deseja excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then
               begin
                 SysUtils.Abort;
               end;
          end;

       if xTabela.State in [dsBrowse] then
          begin
            if xTabela.RecordCount > 0 then
               xTabela.Delete;
          end
       else
          xTabela.Delete;
       Result := true;
     end
  else
     Result := false;
end;

procedure Desfaz(xTabela : TIBDataSet);
begin
  if xTabela.Active then
     xTabela.Cancel;
end;

procedure SetaFoco(xComponent : TWinControl);
begin
  try
    if (xComponent.Visible) and (xComponent.Enabled) then
       begin
         xComponent.SetFocus;
       end
    else if xComponent.Visible then
       begin
         xComponent.Enabled := true;
         xComponent.SetFocus;
       end;
  except
    {}
  end;
end;

function AchouForm(xForm:TForm):Boolean;
var
  i : Integer;
begin
  Result := False;
  i := 0;

  Application.ProcessMessages;

  while (i <= Screen.FormCount - 1) and not Result do
    begin
      Result := (Screen.Forms[i] = xForm);
      Inc(i);
    end;
end;

procedure DesabilitaFiltroTeclas;
begin
  Application.OnMessage := nil;
end;

procedure HabilitaFiltroTeclas;
begin
//  Application.OnMessage := FrmCentral.ProcessaMsg;
end;

procedure ProximoControle;
begin
  Screen.ActiveForm.Perform(WM_NextDlgCtl, 0, 0);
end;

procedure ControleAnterior;
begin
  Screen.ActiveForm.Perform(WM_NextDlgCtl, 1, 0);
end;

function VerificaSeCampoExiste(xTabela: TIBDataSet; xCampo: string) : boolean;
var
  xCampos : TStringList;
  i       : Integer;
begin
  Result := false;
  xCampos := TStringList.Create;
  try
    try
      xTabela.GetFieldNames(xCampos);
      for i := 0 to xCampos.Count - 1 do
        begin
          if LowerCase(xCampos.Strings[i]) = LowerCase(xCampo) then
             begin
               Result := true;
               Break;
             end;
        end;
    except
      Result := false;
    end;
  finally
    xCampos.Free;
  end;
end;

function Right(inString: string; numChars: Integer): string;
var
  index: byte;
begin
  if numChars >= Length(inString) then
    Right := inString
  else
    begin
      index := Length(inString) - numChars + 1;
      Right := Copy(inString, index, numChars);
    end;
end;

function Left(inString: string; numChars: Integer): string;
begin
  Left := Copy(inString, 1, numChars);
end;

function DataReg(xData : TDate) : string;
var
  xDia : Integer;
  xMes : Integer;
  xAno : Integer;

  sDia : string;
  sMes : string;
  sAno : string;
begin
  xAno := StrToInt(FormatDateTime('yyyy', xData));
  xMes := StrToInt(FormatDateTime('m', xData));
  xDia := StrToInt(FormatDateTime('d', xData));

  Case xAno of
       2002: sAno := 'A';
       2003: sAno := 'B';
       2004: sAno := 'C';
       2005: sAno := 'D';
       2006: sAno := 'E';
       2007: sAno := 'F';
       2008: sAno := 'G';
       2009: sAno := 'H';
       2010: sAno := 'I';
  end;

  Case xMes of
       1: sMes := 'a';
       2: sMes := 'b';
       3: sMes := 'c';
       4: sMes := 'd';
       5: sMes := 'e';
       6: sMes := 'f';
       7: sMes := 'g';
       8: sMes := 'h';
       9: sMes := 'i';
      10: sMes := 'j';
      11: sMes := 'k';
      12: sMes := 'l';
  end;

  Case xDia of
       1: sDia := 'A';
       2: sDia := 'B';
       3: sDia := 'C';
       4: sDia := 'D';
       5: sDia := 'E';
       6: sDia := 'F';
       7: sDia := 'G';
       8: sDia := 'H';
       9: sDia := 'I';
      10: sDia := 'J';
      11: sDia := 'K';
      12: sDia := 'L';
      13: sDia := 'M';
      14: sDia := 'N';
      15: sDia := 'O';
      16: sDia := 'P';
      17: sDia := 'Q';
      18: sDia := 'R';
      19: sDia := 'S';
      20: sDia := 'T';
      21: sDia := 'U';
      22: sDia := 'V';
      23: sDia := 'W';
      24: sDia := 'X';
      25: sDia := 'Y';
      26: sDia := 'Z';
      27: sDia := 'a';
      28: sDia := 'b';
      29: sDia := 'c';
      30: sDia := 'd';
      31: sDia := 'e';
  end;

  Result := sDia + sMes + sAno;
end;

function SubStr(inString: string; numChars, strSize: byte): string;
begin
  SubStr := Copy(inString, numChars, strSize);
end;

function SD(Data: string): TDateTime;
var formdata: string;
begin
   formdata := Right(Data, 2) + '/' + SubStr(Data, 5, 2) + '/' + Left(Data, 4);
   Result := StrToDate(formdata);
end;

function AdicionaCondicao(xCondicao, xNovaCondicao, xOperador : string) : string;
begin
  if xCondicao <> '' then
     Result := xCondicao + ' ' + xOperador + ' ' + xNovaCondicao
  else
     Result := xNovaCondicao;
end;

function Aspas(xTexto : string) : string;
begin
  Result := #39 + xTexto + #39;
end;

function StrToInt0(num : String) : Integer;
begin
  Result := 0;
  try
     if num <> '' then
        Result := StrToInt(num);
  except
    {}
  end;
end;

function Preenche(xCaracter: String; xString: String; xTam: Integer; xAlinhamento: string): string;
var
  i: integer;
  fat: integer;
  dif : integer;
  xRes : string;
begin
  if (LowerCase(xAlinhamento) = 'esquerda') or (xAlinhamento = '') then
     begin
       dif := xTam - Length(xString);
       if dif > 0 then
          begin
            for i := 1 to dif do
                xRes := xRes + xCaracter;
            xRes := xString + xRes;
          end
       else
          begin
            for i := 1 to xTam do
                xRes := xRes + xString[i];
          end;
     end
  else if LowerCase(xAlinhamento) = 'direita' then
     begin
       dif := xTam - Length(xString);
       if dif > 0 then
          begin
            for i := 1 to dif do
                xRes := xRes + xCaracter;
            xRes := xRes + xString;
          end
       else
          begin
            for i := 1 to xTam do
                xRes := xRes + xString[i];
          end;
     end
  else if LowerCase(xAlinhamento) = 'centro' then
     begin
       dif := xTam - Length(xString);
       if dif > 0 then
          begin
            fat := dif div 2;

            for i := 1 to fat do
                xRes := xRes + xCaracter;

            if (fat * 2) <> dif then
                xRes := xRes + xString + xRes + xCaracter
            else
                xRes := xRes + xString + xRes;
          end
       else
          begin
            for i := 1 to xTam do
                xRes := xRes + xString[i];
          end;
     end;
  Result := xRes;
end;

function Decripta(xVar : String): string;
begin
  if xVar <> '' then
     begin
       Result := Chr(Ord(xVar[1]) - 100) +
                 Chr(Ord(xVar[4]) - 100) +
                 Chr(Ord(xVar[3]) - 100) +
                 Chr(Ord(xVar[5]) - 100) +
                 Chr(Ord(xVar[2]) - 100);
     end
  else
     Result := '';
end;

procedure Conectado(var xTabUsu : TIBDataSet; xUsuario : string; xConectado, xLimpaStatus : boolean);
begin
  try
    try
      if xTabUsu.FieldByName('Usuario').AsString <> xUsuario then
         begin
           xTabUsu.Locate('Usuario', xUsuario, [loCaseInsensitive]);
         end;

      if xTabUsu.FieldByName('Usuario').AsString = xUsuario then
         begin
           xTabUsu.Edit;
           xTabUsu.FieldByName('Conectado').AsBoolean := xConectado;

           if xLimpaStatus then
              xTabUsu.FieldByName('MensStatus').AsString := '';

           xTabUsu.Post;
         end;

    except
      On E:Exception do
         MessageDlg('Erro:' + #13 + #13 + e.message, mtError, [mbOk], 0);
    end;
  finally

  end;
end;

function iif(condicao:boolean; verdadeiro, falso:variant):variant;
begin
  if condicao then Result := verdadeiro else Result := falso;
end;

procedure IniMens;
begin
  if FrmMensagem = nil then
     FrmMensagem := TFrmMensagem.Create(application);
end;

procedure Mensagem(xMensagem : string);
begin
  FrmMensagem.Show;
  FrmMensagem.LbMensagem.Caption := xMensagem;
  Application.ProcessMessages;
end;

procedure FreeMens;
begin
  FrmMensagem.Hide;
end;

function LeAtualizacao(xTabela: TIBDataSet; xInfo: string; xExibeForm: boolean) : string;
var
   xResultado : string;
begin
  if xExibeForm then
     FrmInfoAtu := TFrmInfoAtu.Create(application);

  if VerificaSeCampoExiste(xTabela, 'Atualizacao') then
     begin
       if Length(xTabela.FieldByName('Atualizacao').AsString) = 30 then
          begin
            if (UpperCase(xInfo) = 'USUARIOINC') or (xExibeForm = True) then
               begin
                 xResultado := Copy(xTabela.FieldByName('Atualizacao').AsString, 1, 3);
                 if xExibeForm then FrmInfoAtu.EdUsuarioInclu.Text := xResultado;
               end;
            if (UpperCase(xInfo) = 'DATAINC') or (xExibeForm = True) then
               begin
                 xResultado := FormatDateTime('dd/mm/yyyy', SD(Copy(xTabela.FieldByName('Atualizacao').AsString, 4, 8)));
                 if xExibeForm then FrmInfoAtu.EdDataInclu.Text := xResultado;
               end;
            if (UpperCase(xInfo) = 'HORAINC') or (xExibeForm = True) then
               begin
                 xResultado := Copy(xTabela.FieldByName('Atualizacao').AsString, 12, 2) + ':' +
                               Copy(xTabela.FieldByName('Atualizacao').AsString, 14, 2);
                 if xExibeForm then FrmInfoAtu.EdHoraInclu.Text := xResultado;
               end;
            if (UpperCase(xInfo) = 'USUARIOALT') or (xExibeForm = True) then
               begin
                 xResultado := Copy(xTabela.FieldByName('Atualizacao').AsString, 16, 3);
                 if xExibeForm then FrmInfoAtu.EdUsuarioAtu.Text := xResultado;
               end;
            if (UpperCase(xInfo) = 'DATAALT') or (xExibeForm = True) then
               begin
                 xResultado := FormatDateTime('dd/mm/yyyy', SD(Copy(xTabela.FieldByName('Atualizacao').AsString, 19, 8)));
                 if xExibeForm then FrmInfoAtu.EdDataAtu.Text := xResultado;
               end;
            if (UpperCase(xInfo) = 'HORAALT') or (xExibeForm = True) then
               begin
                 xResultado := Copy(xTabela.FieldByName('Atualizacao').AsString, 27, 2) + ':' +
                               Copy(xTabela.FieldByName('Atualizacao').AsString, 29, 2);
                 if xExibeForm then FrmInfoAtu.EdHoraAtu.Text := xResultado;
               end;
            if xExibeForm then
               FrmInfoAtu.ShowModal;
          end;
     end;

  if xExibeForm then
     FrmInfoAtu.Free
  else
     Result := xResultado;
end;

function PegaPermissoesUsuario(xUsuario: string; xIndice: integer; xMenu: TMenuItem; xForm: TForm): string;
var
   xInd, xPos : integer;
   xConteudo  : string;
   xSerie     : integer;
begin
   xInd := 0;

   try
      try
         if (xIndice > 0) then
            xInd := xIndice;

         if xUsuario = '' then
            xUsuario := gUsuario;

         if (xInd > 0) and (xInd <= 99999) then
            begin
               xSerie := StrToInt(Copy(IntToStr(xInd), 1, 2));

               if xUsuario = gUsuario then
                  begin
                     if (xSerie >= 10) and (xSerie <= 19) then
                        xConteudo := gPermissoes
                     else if (xSerie >= 20) and (xSerie <= 29) then
                        xConteudo := gPermissoes2;
                  end
               else
                  begin
                     if (xSerie >= 10) and (xSerie <= 19) then
                        xConteudo := Dm2.TbUsuariosAcesso.AsString
                     else if (xSerie >= 20) and (xSerie <= 29) then
                        xConteudo := Dm2.TbUsuariosAcesso2.AsString;
                  end;

               if Length(xConteudo) > 0 then
                  begin
                     xPos := StrToInt(Copy(IntToStr(xInd), 3, 3));
                     if xPos < Length(xConteudo) then
                        Result := Preenche('0', AsciiToBin(xConteudo[xPos]), 6, 'direita')
                     else
                        Result := '000000';
                  end
               else
                  Result := '000000';
            end
         else
            begin
               Result := '000000';
            end;

      except
         on e:exception do
            ShowMessage('Ocorreu um erro na execução da função PegaPermissoesUsuario!' + #13 + #13 + 'Erro.: ' + e.message);
      end;
   finally
      //
   end;
end;

function AsciiToBin(xAscii: string): string;
var
   xNum: integer;
begin
   Result := '';
   xNum := Ord(xAscii[1]) - 100;
   while xNum > 1 do
      begin
         Result := IntToStr(xNum mod 2) + Result;
         xNum := xNum div 2;
      end;
   Result := FloatToStr(xNum) + Result;
end;

function BinToAscii(xBin: string): string;
var
   i, n : integer;
   base, ascii : Extended;
begin
   Result := 'Z';
   ascii  := 0;
   base   := 2.0;
   n := Length(xBin);
   for i := 1 to n do
       ascii := ascii + StrToFloat(Copy(xBin, i, 1)) * IntPower(base, n - i);
   Result := Chr(StrToInt(FloatToStr(ascii + 100)));
end;

procedure GravaDiasUsuarioFiltro(nDias : integer);
var
  xGrava : boolean;
begin
  xGrava := true;

  if (AnsiLowerCase(dm2.TbUsuariosIdentificacao.AsString) <> AnsiLowerCase(gNomeUsuario)) and
     (AnsiLowerCase(dm2.TbUsuariosUsuario.AsString) <> AnsiLowerCase(gUsuario)) and
     (dm2.TbUsuariosFilial.AsString <> gFilialCorrente) then
     begin
       xGrava := dm2.TbUsuarios.Locate('Usuario', gUsuario, [loCaseInsensitive]);
     end;

  if xGrava then
     begin
       dm2.TbUsuarios.Edit;
       dm2.TbUsuariosNDiasFiltro.AsInteger := nDias;
       dm2.TbUsuarios.Post;
     end;
end;

function StatusCliente(xCgcClie, xStatus : string) : boolean;
var
  xTbClientes : TIBDataSet;
begin
  xTbClientes := TIBDataSet.Create(nil);
  Result := false;
  try
    try
      // Se necessário, configure as propriedades do xTbClientes (Database, Transaction, SelectSQL)
      if xTbClientes.Locate('CgcClie', xCgcClie, [loCaseInsensitive]) then
         begin
            if xTbClientes.FieldByName('Ativo').AsString = xStatus then
               Result := true;
         end;
    except
      On E:Exception do
         MessageDlg('Erro ao executar a rotina!' + #13 + #13 + e.message, mtError, [mbOk], 0);
    end;
  finally
    xTbClientes.Free;
  end;
end;

function SenhaCalculada: string;
var
  xDia : Word;
  xMes : Word;
  xAno : Word;

  sDia : string;
  sMes : string;
begin
  Result := '';
  try
    try
      DecodeDate(Date, xAno, xMes, xDia);

      sDia := FormatFloat('00', xDia * 3);
      sMes := FormatFloat('00', xMes * 3);

      Result := sDia + sMes + Copy(FormatFloat('00', xDia), 2, 1);

    except
      On E:Exception do
         MessageDlg('Erro ao executar a rotina!' + #13 + #13 + e.message, mtError, [mbOk], 0);
    end;
  finally
    {}
  end;
end;

end.
