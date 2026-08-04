unit Coman;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,
  ExtCtrls, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Buttons, Mask,
  JvExMask, JvToolEdit, DB;

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
    btCancelaItem: TBitBtn;
    btAdicionar: TBitBtn;
    edVlrTotal: TJvValidateEdit;
    Label5: TLabel;
    EdVlrUnit: TJvValidateEdit;
    Label4: TLabel;
    EdUnidMed: TJvComboEdit;
    Label8: TLabel;
    edQtdeLcto: TJvValidateEdit;
    Label3: TLabel;
    EdHistorico: TEdit;
    Label13: TLabel;
    BitBtn1: TBitBtn;
    sbCadastra: TSpeedButton;
    sbOk: TSpeedButton;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    edCgcClie: TJvComboEdit;
    sbCadClie: TSpeedButton;
    edCliente: TEdit;
    Label12: TLabel;
    edCodFunc: TJvComboEdit;
    edFuncionario: TEdit;
    procedure edCodProdButtonClick(Sender: TObject);
    procedure edCodProdChange(Sender: TObject);
    procedure btAdicionarClick(Sender: TObject);
    procedure btCancelaItemClick(Sender: TObject);
    procedure EdUnidMedButtonClick(Sender: TObject);
    procedure EdComandaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdComandaEnter(Sender: TObject);
    procedure EdComandaExit(Sender: TObject);
    procedure sbCadastraClick(Sender: TObject);
    procedure edCodProdEnter(Sender: TObject);
    procedure edCodProdExit(Sender: TObject);
    procedure sbOkClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure sbComandaClick(Sender: TObject);
    procedure dbgMesaItemGetCellParams(Sender: TObject; Field: TField; AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure edQtdeLctoChange(Sender: TObject);
    procedure edQtdeLctoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdHistoricoChange(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure sbCadClieClick(Sender: TObject);
    procedure edCgcClieButtonClick(Sender: TObject);
    procedure edCgcClieChange(Sender: TObject);
    procedure edCodFuncButtonClick(Sender: TObject);
    procedure edCodFuncChange(Sender: TObject);
    procedure edCgcClieExit(Sender: TObject);
    procedure edCodFuncExit(Sender: TObject);
    procedure EdComandaButtonClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure CarregaDetalhesComanda;
    procedure LimparCamposItem;
    procedure CalcularTotalItem;
    procedure ImprimirComanda;
  public
    { Public declarations }
  end;

var
  FrmGereComanda: TFrmGereComanda;

implementation

uses
  funcoes,
  UDm1,
  F2Geral,
  Fecham; // Unit da tela de fechamento de pagamento TfrmFecha

{$R *.DFM}

{ --- Métodos Auxiliares --- }

procedure TFrmGereComanda.CarregaDetalhesComanda;
var
  vNumLcto: string;
begin
  vNumLcto := Trim(EdComanda.Text);
  if vNumLcto = '' then Exit;

  // Alterna para a página principal de detalhes no Notebook
  if nbComanda.Pages.Count > 0 then
    nbComanda.PageIndex := 0;

  if Assigned(Dm1) then
  begin
    // 1. Busca os dados do cabeçalho do lançamento (MESALCTO)
    // Dm1.tbMesaLcto.Close;
    // Dm1.tbMesaLcto.SelectSQL.Text := 'SELECT * FROM MESALCTO WHERE NUMLCTO = ' + QuotedStr(vNumLcto);
    // Dm1.tbMesaLcto.Open;
    //
    // if not Dm1.tbMesaLcto.IsEmpty then
    // begin
    //   edCgcClie.Text     := Dm1.tbMesaLcto.FieldByName('CGCCLIE').AsString;
    //   edCliente.Text     := Dm1.GetNomeCliente(edCgcClie.Text);
    //   edCodFunc.Text     := Dm1.tbMesaLcto.FieldByName('CODFUNC').AsString;
    //   edFuncionario.Text := Dm1.GetNomeFuncionario(edCodFunc.Text);
    // end;

    // 2. Atualiza a Grid com os itens da comanda (MESAITEM)
    // Dm1.tbMesaItem.Close;
    // Dm1.tbMesaItem.SelectSQL.Text := 'SELECT * FROM MESAITEM WHERE NUMLCTO = ' + QuotedStr(vNumLcto);
    // Dm1.tbMesaItem.Open;

    // 3. Recalcula e exibe o valor total acumulado
    // lbVlrTotal.Caption := FormatFloat('R$ #,##0.00', Dm1.GetTotalComanda(vNumLcto));
  end;
end;

procedure TFrmGereComanda.CalcularTotalItem;
var
  vQtde, vUnit: Double;
begin
  vQtde := edQtdeLcto.Value;
  vUnit := EdVlrUnit.Value;
  edVlrTotal.Value := vQtde * vUnit;
end;

procedure TFrmGereComanda.LimparCamposItem;
begin
  edCodProd.Clear;
  edDescrProd.Clear;
  edQtdeLcto.Value := 1;
  EdUnidMed.Clear;
  EdVlrUnit.Value := 0;
  edVlrTotal.Value := 0;
  EdHistorico.Clear;
  edCodProd.SetFocus;
end;

procedure TFrmGereComanda.ImprimirComanda;
begin
  if Trim(EdComanda.Text) = '' then
  begin
    ShowMessage('Selecione uma comanda/lançamento para imprimir.');
    Exit;
  end;

  // Lógica de Impressão de Comprovante/Conferência
  // Exemplo: Dm1.ImprimirRelatorioComanda(EdComanda.Text);
end;

{ --- Eventos de Pesquisa (MontaF2Ind) --- }

procedure TFrmGereComanda.EdComandaButtonClick(Sender: TObject);
begin
  // Abre a tela de pesquisa (F2) passando os arrays de campos, títulos e índices.
  // xKey e xFocoCampo passam o valor atual do Edit para já filtrar/focar o campo 'NUMLCTO'.
  if MontaF2Ind(
       Dm1.TbMesaLcto,                     // tDataSet: TIBDataSet
       'NUMLCTO',                          // xCampoPesquisa: Campo chave para posicionamento
       ['NUMLCTO', 'CGCCLIE', 'CODFUNC'],  // xCampos: Colunas que aparecerão na query/grid
       ['Comanda', 'Cliente', 'Garçom'],   // xTitulos: Títulos das colunas na grid
       ['NUMLCTO'],                        // xIndices: Índice de ordenação inicial
       False,                              // xFiltraFilial: Se deve filtrar por filial
       EdComanda.Text,                     // xKey: Valor inicial digitado para buscar
       'NUMLCTO'                           // xFocoCampo: Campo onde o valor digitado será aplicado
     ) then
  begin
    // Se o usuário pressionou OK no F2, o DataSet Dm1.TbMesaLcto já está posicionado.
    // Atualizamos o Edit com o código retornado do registro ativo:
    EdComanda.Text := Dm1.TbMesaLcto.FieldByName('NUMLCTO').AsString;
    
    // Carrega os detalhes e itens da comanda
    CarregaDetalhesComanda;
  end;
end;

procedure TFrmGereComanda.edCodProdButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.tbProdutos,                       // TIBDataSet de Produtos
       'CODIGO',                             // Campo chave
       ['CODIGO', 'DESCRICAO', 'PRECO'],     // Campos da Grid
       ['Código', 'Descrição', 'Preço'],      // Títulos na Grid
       ['DESCRICAO', 'CODIGO'],              // Índices para ordenação
       False,                                // xFiltraFilial
       edCodProd.Text,                       // Valor digitado
       'CODIGO'                              // Campo com foco de busca
     ) then
  begin
    edCodProd.Text := Dm1.tbProdutos.FieldByName('CODIGO').AsString;
    edCodProdExit(Sender);
  end;
end;

procedure TFrmGereComanda.EdUnidMedButtonClick(Sender: TObject);
begin
//  if MontaF2Ind(
//       Dm1.tbUnidades,
//       'SIGLA',
//       ['SIGLA', 'DESCRICAO'],
//       ['Sigla', 'Descrição'],
//       ['SIGLA'],
//       False,
//       EdUnidMed.Text,
//       'SIGLA'
//     ) then
//  begin
//    EdUnidMed.Text := Dm1.tbUnidades.FieldByName('SIGLA').AsString;
//  end;
end;

procedure TFrmGereComanda.edCgcClieButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.tbClientes,
       'CPF_CNPJ',
       ['CPF_CNPJ', 'NOME', 'TELEFONE'],
       ['CPF/CNPJ', 'Nome do Cliente', 'Telefone'],
       ['NOME', 'CPF_CNPJ'],
       False,
       edCgcClie.Text,
       'CPF_CNPJ'
     ) then
  begin
    edCgcClie.Text := Dm1.tbClientes.FieldByName('CPF_CNPJ').AsString;
    edCgcClieExit(Sender);
  end;
end;

procedure TFrmGereComanda.edCodFuncButtonClick(Sender: TObject);
begin
  if MontaF2Ind(
       Dm1.tbFunc,
       'CODFUNC',
       ['CODFUNC', 'NOME'],
       ['Código', 'Nome do Funcionário'],
       ['NOME', 'CODIGO'],
       False,
       edCodFunc.Text,
       'CODFUNC'
     ) then
  begin
    edCodFunc.Text := Dm1.tbFunc.FieldByName('CODFUNC').AsString;
    edCodFuncExit(Sender);
  end;
end;

{ --- Eventos do Formulário e Edits --- }

procedure TFrmGereComanda.EdComandaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    CarregaDetalhesComanda;
end;

procedure TFrmGereComanda.EdComandaEnter(Sender: TObject);
begin
  EdComanda.SelectAll;
end;

procedure TFrmGereComanda.EdComandaExit(Sender: TObject);
begin
  if Trim(EdComanda.Text) <> '' then
    CarregaDetalhesComanda;
end;

procedure TFrmGereComanda.edCodProdEnter(Sender: TObject);
begin
  edCodProd.SelectAll;
end;

procedure TFrmGereComanda.edCodProdExit(Sender: TObject);
begin
  if Trim(edCodProd.Text) <> '' then
  begin
    // Preenche dados do produto selecionado
    // edDescrProd.Text := Dm1.GetNomeProduto(edCodProd.Text);
    // EdVlrUnit.Value   := Dm1.GetPrecoProduto(edCodProd.Text);
    CalcularTotalItem;
  end;
end;

procedure TFrmGereComanda.edCodProdChange(Sender: TObject);
begin
  if Trim(edCodProd.Text) = '' then
  begin
    edDescrProd.Clear;
    EdVlrUnit.Value := 0;
    edVlrTotal.Value := 0;
  end;
end;

procedure TFrmGereComanda.edQtdeLctoChange(Sender: TObject);
begin
  CalcularTotalItem;
end;

procedure TFrmGereComanda.edQtdeLctoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    EdVlrUnit.SetFocus;
end;

procedure TFrmGereComanda.edCgcClieChange(Sender: TObject);
begin
  if Trim(edCgcClie.Text) = '' then
    edCliente.Clear;
end;

procedure TFrmGereComanda.edCgcClieExit(Sender: TObject);
begin
  if (Trim(edCgcClie.Text) <> '') and Assigned(Dm1) then
  begin
    // edCliente.Text := Dm1.GetNomeCliente(edCgcClie.Text);
  end;
end;

procedure TFrmGereComanda.edCodFuncChange(Sender: TObject);
begin
  if Trim(edCodFunc.Text) = '' then
    edFuncionario.Clear;
end;

procedure TFrmGereComanda.edCodFuncExit(Sender: TObject);
begin
  if (Trim(edCodFunc.Text) <> '') and Assigned(Dm1) then
  begin
    // edFuncionario.Text := Dm1.GetNomeFuncionario(edCodCodFunc.Text);
  end;
end;

procedure TFrmGereComanda.EdHistoricoChange(Sender: TObject);
begin
  // Complemento/Observação do item
end;

{ --- Botões de Ação --- }

procedure TFrmGereComanda.btAdicionarClick(Sender: TObject);
begin
  if Trim(EdComanda.Text) = '' then
  begin
    ShowMessage('Informe ou selecione uma comanda antes de adicionar itens.');
    EdComanda.SetFocus;
    Exit;
  end;

  if Trim(edCodProd.Text) = '' then
  begin
    ShowMessage('Informe o código do produto!');
    edCodProd.SetFocus;
    Exit;
  end;

  if edQtdeLcto.Value <= 0 then
  begin
    ShowMessage('Informe uma quantidade válida!');
    edQtdeLcto.SetFocus;
    Exit;
  end;

  // Insere o item no banco de dados
  // Dm1.AdicionaItemComanda(EdComanda.Text, edCodProd.Text, edQtdeLcto.Value, EdVlrUnit.Value, EdHistorico.Text);

  LimparCamposItem;
  CarregaDetalhesComanda;
end;

procedure TFrmGereComanda.btCancelaItemClick(Sender: TObject);
begin
  // Estorno do item selecionado no grid
  // if not dbgMesaItem.DataSource.DataSet.IsEmpty then
  // begin
  //   Dm1.CancelaItemComanda(...);
  //   CarregaDetalhesComanda;
  // end;
end;

procedure TFrmGereComanda.BitBtn1Click(Sender: TObject);
begin
  // Botão Imprimir
  ImprimirComanda;
end;

procedure TFrmGereComanda.sbCadastraClick(Sender: TObject);
begin
  // Cadastro rápido
end;

procedure TFrmGereComanda.sbCadClieClick(Sender: TObject);
begin
  // Cadastro de clientes
end;

procedure TFrmGereComanda.sbComandaClick(Sender: TObject);
begin
  CarregaDetalhesComanda;
end;

procedure TFrmGereComanda.sbOkClick(Sender: TObject);
var
  FormFecha: TfrmFecha;
begin
  if Trim(EdComanda.Text) = '' then
  begin
    ShowMessage('Nenhum lançamento selecionado para fechar!');
    Exit;
  end;

  // 1. Grava as alterações do cabeçalho da comanda se houver
  // Dm1.SalvaDadosComanda(EdComanda.Text, edCgcClie.Text, edCodFunc.Text);

  // 2. Exibe o formulário de fechamento (TfrmFecha) para efetuar o pagamento
  FormFecha := TfrmFecha.Create(Self);
  try
    FormFecha.edCodMesa.Text := EdComanda.Text; // Transfere a comanda/mesa p/ o fechamento
    if FormFecha.ShowModal = mrOk then
    begin
      // Se o pagamento for concluído com sucesso, limpa a tela e fecha a venda
      EdComanda.Clear;
      edCgcClie.Clear;
      edCliente.Clear;
      edCodFunc.Clear;
      edFuncionario.Clear;
      LimparCamposItem;
      if nbComanda.Pages.Count > 0 then
        nbComanda.PageIndex := 0;
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

procedure TFrmGereComanda.dbgMesaItemGetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  // Destaca itens estornados/cancelados na grid
  // if dbgMesaItem.DataSource.DataSet.FieldByName('STATUS').AsString = 'C' then
  //   AFont.Color := clRed;
end;

procedure TFrmGereComanda.FormShow(Sender: TObject);
begin
  AbreTabela(dm1.TbMesas, False);
  AbreTabela(dm1.TbMesaLcto, False);
  AbreTabela(dm1.TbMesaItem, False);
  AbreTabela(dm1.TbFunc, False);
end;

end.
