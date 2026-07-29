unit Menu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, JvComponentBase,
  JvBalloonHint, ExtCtrls, Menus, Buttons, ComCtrls;

type
  TfrmPrincipal = class(TForm)
    spPrincipal: TStatusBar;
    mnuPrincipal: TMainMenu;
    mnuCadastros: TMenuItem;
    mnuCadSair: TMenuItem;
    mnuUtilitarios: TMenuItem;
    mnuUtiParametros: TMenuItem;
    mnuAjuda: TMenuItem;
    mnuAjuSobre: TMenuItem;
    mnuCadMesas: TMenuItem;
    N1: TMenuItem;
    mnuRestaurante: TMenuItem;
    mnuResGerenciadorMesas: TMenuItem;
    mnuCadGrupos: TMenuItem;
    mnuResGerenciadorItens: TMenuItem;
    pnBotoes: TPanel;
    sbMesas: TSpeedButton;
    sbGrupos: TSpeedButton;
    sbGerenMesas: TSpeedButton;
    sbGerenItens: TSpeedButton;
    sbParametros: TSpeedButton;
    sbSair: TSpeedButton;
    tmPrincipal: TTimer;
    bhPrincipal: TJvBalloonHint;
    Impressora1: TMenuItem;
    LeituraX1: TMenuItem;
    ReduoZ1: TMenuItem;
    N2: TMenuItem;
    LeituradaMemriaFiscal1: TMenuItem;
    N3: TMenuItem;
    Sangria1: TMenuItem;
    Sumprimentos1: TMenuItem;
    Funes1: TMenuItem;
    N4: TMenuItem;
    HorriodeVero1: TMenuItem;
    ProgramaodeAlquotas1: TMenuItem;
    ArredondamentoTruncamento1: TMenuItem;
    N5: TMenuItem;
    VandaSimpes1: TMenuItem;
    rocadeUsurio1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    OutrasTabelas1: TMenuItem;
    Fontes1: TMenuItem;
    Impressoras1: TMenuItem;
    sbVendaSimples: TSpeedButton;
    Impressorar1: TMenuItem;
    VerficaAlquotas1: TMenuItem;
    Label1: TLabel;
    N8: TMenuItem;
    ConfBancodeDados1: TMenuItem;
    GerenciadordeComandas1: TMenuItem;

    { Assinaturas de eventos declaradas na interface }
    procedure mnuCadMesasClick(Sender: TObject);
    procedure mnuResGerenciadorMesasClick(Sender: TObject);
    procedure mnuCadGruposClick(Sender: TObject);
    procedure mnuResGerenciadorItensClick(Sender: TObject);
    procedure mnuCadSairClick(Sender: TObject);
    procedure mnuAjuSobreClick(Sender: TObject);
    procedure ReduoZ1Click(Sender: TObject);
    procedure LeituradaMemriaFiscal1Click(Sender: TObject);
    procedure mnuUtiParametrosClick(Sender: TObject);
    procedure VandaSimpes1Click(Sender: TObject);
    procedure GerenciadordeComandas1Click(Sender: TObject);
    procedure Fontes1Click(Sender: TObject);
    procedure Impressorar1Click(Sender: TObject);
    procedure LeituraX1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses 
  Mesas,
  Params,
  Tela1,
  sobre,
  Geren,
  Grupos,
  GereItem,
  ReducaoZ,
  MemFisc,
  Coman,
  fontes,
  Impress,
  LeituraX,
  funcoes;

{$R *.DFM}

procedure TfrmPrincipal.mnuCadMesasClick(Sender: TObject);
begin
  FrmMesas := TFrmMesas.Create(Self);
  try
    FrmMesas.ShowModal;
  finally
    FrmMesas.Free;
  end;
end;

procedure TfrmPrincipal.mnuResGerenciadorMesasClick(Sender: TObject);
begin
  frmGerenciador := TfrmGerenciador.Create(Self);
  try
    frmGerenciador.ShowModal;
  finally
    frmGerenciador.Free;
  end;
end;

procedure TfrmPrincipal.mnuCadGruposClick(Sender: TObject);
begin
  frmGrupos := TfrmGrupos.Create(Self);
  try
    frmGrupos.ShowModal;
  finally
    frmGrupos.Free;
  end;
end;

procedure TfrmPrincipal.mnuResGerenciadorItensClick(Sender: TObject);
begin
  frmGereItem := TfrmGereItem.Create(Self);
  try
    frmGereItem.ShowModal;
  finally
    frmGereItem.Free;
  end;
end;

procedure TfrmPrincipal.mnuCadSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.mnuAjuSobreClick(Sender: TObject);
begin
  FrmSobre := TFrmSobre.Create(Self);
  try
    FrmSobre.ShowModal;
  finally
    FrmSobre.Free;
  end;
end;

procedure TfrmPrincipal.ReduoZ1Click(Sender: TObject);
begin
  FrmReducaoZ := TFrmReducaoZ.Create(Self);
  try
    FrmReducaoZ.ShowModal;
  finally
    FrmReducaoZ.Free;
  end;
end;

procedure TfrmPrincipal.LeituradaMemriaFiscal1Click(Sender: TObject);
begin
  FrmLeituraMemoriaFiscal := TFrmLeituraMemoriaFiscal.Create(Self);
  try
    FrmLeituraMemoriaFiscal.ShowModal;
  finally
    FrmLeituraMemoriaFiscal.Free;
  end;
end;

procedure TfrmPrincipal.mnuUtiParametrosClick(Sender: TObject);
begin
  FrmParametros := TFrmParametros.Create(Self);
  try
    FrmParametros.ShowModal;
  finally
    FrmParametros.Free;
  end;
end;

procedure TfrmPrincipal.VandaSimpes1Click(Sender: TObject);
begin
  FrmVenda := TFrmVenda.Create(Self);
  try
    FrmVenda.ShowModal;
  finally
    FrmVenda.Free;
  end;
end;

procedure TfrmPrincipal.GerenciadordeComandas1Click(Sender: TObject);
begin
  FrmGereComanda := TFrmGereComanda.Create(Self);
  try
    FrmGereComanda.ShowModal;
  finally
    FrmGereComanda.Free;
  end;
end;

procedure TfrmPrincipal.Fontes1Click(Sender: TObject);
begin
  FrmFontes := TFrmFontes.Create(Self);
  try
    FrmFontes.ShowModal;
  finally
    FrmFontes.Free;
  end;
end;

procedure TfrmPrincipal.Impressorar1Click(Sender: TObject);
begin
  FrmImpressoras := TFrmImpressoras.Create(Self);
  try
    FrmImpressoras.ShowModal;
  finally
    FrmImpressoras.Free;
  end;
end;

procedure TfrmPrincipal.LeituraX1Click(Sender: TObject);
begin
  FrmLeituraX := TFrmLeituraX.Create(Self);
  try
    FrmLeituraX.ShowModal;
  finally
    FrmLeituraX.Free;
  end;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  AbreCadastros;
end;

end.
