program Grill2023;

uses
  Forms,
  SysUtils,
  Dialogs,
  WinProcs,
  Windows,
  Messages,
  Classes,
  Graphics,
  Controls,
  backup,
  StdCtrls,
  ExtCtrls,
  ComCtrls,
  Mask,
  ToolEdit,
  FileCtrl,
  lmdclass,
  LMDCustomComponent,
  LMDStarter,
  Buttons,
  Menus,
  SpeedBar,
  TimerLst,
  DB,
  DBClient,
  Grids,
  DBGrids,
  JvEditor,
  JvHLEditor,
  DBTables,
  Animate,
  GIFCtrl,
  RxMenus,
  HelpIntfs,
  ComObj,
  ImgList,
  BTOdeum,
  LMDControl,
  LMDBaseControl,
  LMDBaseGraphicControl,
  LMDBaseLabel,
  LMDCustomLabel,
  LMDLabel,
  MidasLib,
  Udm2 in 'source\Udm2.pas' {TDm2},
  UdmT in 'source\UdmT.pas' {TTMP},
  udm3 in 'source\udm3.pas' {TDm3},
  Grupos in 'source\Grupos.pas' {TfrmGrupos},
  Sedex in 'source\Sedex.pas' {TFrmCalcSedex},
  F2Cep in 'source\F2Cep.pas' {TFrmF2Cep},
  CadRap in 'source\CadRap.pas' {TFrmCadRapido},
  F2Geral in 'source\F2Geral.pas' {TFrmF2},
  F2Local in 'source\F2Local.pas' {TFrmF2SubLocal},
  UdmQ in 'source\UdmQ.pas' {TQe},
  Mens in 'source\Mens.pas' {TfrmMensagem},
  Conecta in 'source\Conecta.pas' {TfrmConecta},
  Login in 'source\Login.pas' {TfrmLogin},
  AltVar in 'source\AltVar.pas' {TFrmAlteraVariavel},
  Senha in 'source\Senha.pas' {TFrmSenha},
  F2Espe in 'source\F2Espe.pas' {TFrmF2Espec},
  F2PDV in 'source\F2PDV.pas' {TFrmF2PDV},
  DataTrab in 'source\DataTrab.pas' {TFrmDataTrabalho},
  MsgTEF in 'source\MsgTEF.pas' {TFrmMensagemTEF},
  Status in 'source\Status.pas' {TFrmStatus},
  ConfNum in 'source\ConfNum.pas' {TFrmConfirmaNumLcto},
  Udm4 in 'source\Udm4.pas' {TDm4},
  F2Preco in 'source\F2Preco.pas' {TFrmF2Preco},
  finaliza in 'source\finaliza.pas' {TFrmFinaliza},
  desconto in 'source\desconto.pas' {TFrmDesconto},
  dinheiro in 'source\dinheiro.pas' {TFrmFinalizaDinheiro},
  autoriza in 'source\autoriza.pas' {TFrmAutoriza},
  cancela in 'source\cancela.pas' {TFrmCancelaCupom},
  F2Item in 'source\F2Item.pas' {TFrmF2Item},
  cancite in 'source\cancite.pas' {TFrmCancelaItem},
  Params in 'source\Params.pas' {TFrmParametros},
  LeituraX in 'source\LeituraX.pas' {TFrmLeituraX},
  ReducaoZ in 'source\ReducaoZ.pas' {TFrmReducaoZ},
  MemFisc in 'source\MemFisc.pas' {TFrmLeituraMemoriaFiscal},
  horverao in 'source\horverao.pas' {TFrmHorarioVerao},
  aliq in 'source\aliq.pas' {TFrmAliquotas},
  Arredo in 'source\Arredo.pas' {TFrmArredondaTrunca},
  F2Prod in 'source\F2Prod.pas' {TFrmF2Prod},
  AdicProd in 'source\AdicProd.pas' {TfrmAdicionaProduto},
  deffunc in 'source\deffunc.pas' {TFrmDefFuncoes},
  FuncExp in 'source\FuncExp.pas' {TFrmImpExpFuncoes},
  F2Func in 'source\F2Func.pas' {TFrmF2Funcoes},
  Abre in 'source\Abre.pas' {TfrmAbre},
  CancProd in 'source\CancProd.pas' {TfrmCancelaProduto},
  MudaImp in 'source\MudaImp.pas' {TFrmMudaImpressora},
  conta in 'source\conta.pas' {TFrmConta},
  CGCCupom in 'source\CGCCupom.pas' {TFrmCgcCupom},
  Fecham in 'source\Fecham.pas' {TfrmFecha},
  Mesas in 'source\Mesas.pas' {TfrmMesas},
  CadMes in 'source\CadMes.pas' {TFrmCadMesas},
  GereItem in 'source\GereItem.pas' {TfrmGereItem},
  TransItem in 'source\TransItem.pas' {TFrmTransfere},
  Geren in 'source\Geren.pas' {TfrmGerenciador},
  ajupreco in 'source\ajupreco.pas' {TFrmAjustaPreco},
  TDescon in 'source\TDescon.pas' {TFrmTipoDesconto},
  tipoCob in 'source\tipoCob.pas' {TFrmTipoCobranca},
  acrescim in 'source\acrescim.pas' {TFrmAcrescimo},
  ImpLcto in 'source\ImpLcto.pas' {TFrmImporta},
  Tela1 in 'source\Tela1.pas' {TFrmVenda},
  SaidRel in 'source\SaidRel.pas' {TFrmSaidaRelatorio},
  F2Fontes in 'source\F2Fontes.pas' {TFrmF2Fontes},
  fontes in 'source\fontes.pas' {TFrmFontes},
  DefRel in 'source\DefRel.pas' {TFrmDefRelatorio},
  relator in 'source\relator.pas' {TFrmRelatoriosUsuario},
  F2Quant in 'source\F2Quant.pas' {TFrmF2Quantidade},
  udm1 in 'source\udm1.pas' {TDm1},
  infoatu in 'source\infoatu.pas' {TFrmInfoAtu},
  UdmC in 'source\UdmC.pas' {TDmC},
  sobre in 'source\sobre.pas' {TFrmSobre},
  sangsup in 'source\sangsup.pas' {TFrmSangSupr},
  Impress in 'source\Impress.pas' {TFrmImpressoras},
  ImpGrill in 'source\ImpGrill.pas' {TFrmImprGrill},
  WsNotas in 'source\WsNotas.pas' {TFrmWsNotas},
  Coman in 'source\Coman.pas' {TFrmGereComanda},
  Menu in 'source\Menu.pas' {frmPrincipal},
  Splash in 'source\Splash.pas' {FrmSplash},
  AdjustGrid in 'source\AdjustGrid.pas',
  funcoes in 'source\funcoes.pas',
  vGlobal in 'source\vGlobal.pas';
  
 var
  xContinua : boolean;

{$R *.RES}

begin
  Application.Initialize;
  FrmSplash := tFrmSplash.Create(Application);
  FrmSplash.Show;
  Application.ProcessMessages;
  Application.CreateForm(TDmC, DmC);
  Application.CreateForm(TDm1, Dm1);
  Application.CreateForm(TDm2, Dm2);
  Application.CreateForm(TDm3, Dm3);
  Application.CreateForm(TDm4, Dm4);
  Application.CreateForm(TTMP, TMP);
  Application.CreateForm(TQe, Qe);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  FrmSplash.Free;
  Application.ProcessMessages;

  xContinua := True;
  if not VerificaLogin then
    begin
      xContinua := false;
      Application.Terminate;
    end;

  if xContinua then
    Application.Run
  else
    Application.Terminate;
end.
