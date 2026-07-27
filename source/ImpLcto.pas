unit ImpLcto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, LMDCustomComponent, LMDNativeHint,
  LMDCustomHint, LMDCustomShapeHint, LMDMessageHint, DB, DBTables,
  MemTable, Grids, DBGrids, RXDBCtrl, ToolEdit, CurrEdit, DBCtrls,
  ComCtrls, Mask, ExtCtrls, Buttons;
  
type
  TFrmImporta=class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    tbImporta: TMemoryTable;
    tbImportaNUMITEM: TIntegerField;
    tbImportaTIPO_REG: TStringField;
    tbImportaCGC_CLIE: TStringField;
    tbImportaNR_CUPOM: TIntegerField;
    tbImportaCOD_PROD: TStringField;
    tbImportaDESCRICAO: TStringField;
    tbImportaDESCR_RESU: TStringField;
    tbImportaQUANTIDADE: TStringField;
    tbImportaUNITARIO: TStringField;
    tbImportaTOTAL: TStringField;
    tbImportaTIPO_PGTO: TStringField;
    tbImportaCOD_CARD: TStringField;
    tbImportaNUM_BANCO: TStringField;
    tbImportaAGEN_BANCO: TStringField;
    tbImportaNUM_CHEQUE: TStringField;
    tbImportaCOD_BARRA: TStringField;
    tbImportaCOD_TRIB: TStringField;
    tbImportaEMISSOR: TStringField;
    tbImportaSENHA_AUT: TStringField;
    tbImportaTRIB: TStringField;
    tbImportaCOD_OBS1: TStringField;
    tbImportaCOD_OBS2: TStringField;
    tbImportaCOD_OBS3: TStringField;
    tbImportaCART_BANC: TStringField;
    tbImportaccProduto: TStringField;
    tbImportaCOD_PRODEC: TStringField;
    tbImportaUNID_MED: TStringField;
    DsImporta: TDataSource;
    tbImportaComando: TStringField;
    tbImportaDesconto: TFloatField;
    tbImportaCODSUBLOCAL: TStringField;
    tbImportaClassFisc: TStringField;
    nbTopo: TNotebook;
    Label2: TLabel;
    Bevel1: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EdSerie: TEdit;
    btSele: TBitBtn;
    EdFilial: TEdit;
    EdTipo: TEdit;
    EdEspecie: TComboEdit;
    nbLctos: TNotebook;
    GrProdutos: TRxDBGrid;
    EdCodVendedor: TEdit;
    EdVendedor: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    btSeleciona: TBitBtn;
    btRegistra: TBitBtn;
    btImporta: TBitBtn;
    Label10: TLabel;
    EdContribuinte: TEdit;
    tbImportaFILIAL: TStringField;
    tbImportaNATOPER: TStringField;
    btSenha: TBitBtn;
    btCancela: TBitBtn;
    EdCodPDV: TEdit;
    Label5: TLabel;
    Notebook1: TNotebook;
    nbSubTotal: TNotebook;
    lbTotalSFrete: TLabel;
    EdTotalSFrete: TCurrencyEdit;
    nbFrete: TNotebook;
    lbFrete: TLabel;
    EdFrete: TCurrencyEdit;
    nbIPI: TNotebook;
    lbIPI: TLabel;
    EdVlrIPI: TCurrencyEdit;
    nbICMS: TNotebook;
    lbICMS: TLabel;
    EdICMS: TCurrencyEdit;
    UpDown1: TUpDown;
    EdDias: TEdit;
    Label11: TLabel;
    ckVale: TCheckBox;
    tbImportaVLRCUSTO: TFloatField;
    tbImportaVLRTABELA: TFloatField;
    DBNavigator1: TDBNavigator;
    nbTotal: TNotebook;
    LbTotal: TLabel;
    EdTotal: TCurrencyEdit;
    btDinheiro: TBitBtn;
    sbImpressora: TSpeedButton;
    sbOpcoes: TSpeedButton;
    tbImportaDATA: TStringField;
    tbImportaDT_VENCTO: TStringField;
    tbImportaQtdeUnidMed: TFloatField;
    mHint: TLMDMessageHint;
    tbImportaComplEmbal: TStringField;
    EdLcto: TComboEdit;
    tbImportaHistorico: TStringField;
    Label13: TLabel;
    Label12: TLabel;
    Bevel2: TBevel;
    EdPorcent: TCurrencyEdit;
    EdNatOper: TComboEdit;
    EdNatureza: TEdit;
    EdCondPagto: TComboEdit;
    EdCondicao: TEdit;
    EdDtLcto: TDateEdit;
    Label14: TLabel;
    EdCgcClie: TComboEdit;
    EdRazaoClie: TEdit;
    procedure EdLctoEnter(Sender : TObject);
    procedure GrProdutosGetCellProps(Sender : TObject);
    procedure btSelecionaClick(Sender : TObject);
    procedure btImportaClick(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure FormCreate(Sender : TObject);
    procedure FormClose(Sender : TObject);
    procedure EdEspecieExit(Sender : TObject);
    procedure EdSerieExit(Sender : TObject);
    procedure btSeleClick(Sender : TObject);
    procedure EdEspecieButtonClick(Sender : TObject);
    procedure btRegistraClick(Sender : TObject);
    procedure btSenhaClick(Sender : TObject);
    procedure FormKeyDown(Sender : TObject);
    procedure btCancelaClick(Sender : TObject);
    procedure btDinheiroClick(Sender : TObject);
    procedure sbImpressoraClick(Sender : TObject);
    procedure ckValeClick(Sender : TObject);
    procedure sbOpcoesClick(Sender : TObject);
    procedure FormActivate(Sender : TObject);
    procedure GrProdutosMouseUp(Sender : TObject);
    procedure FormDeactivate(Sender : TObject);
    procedure EdLctoButtonClick(Sender : TObject);
    procedure EdNatOperButtonClick(Sender : TObject);
    procedure EdCondPagtoButtonClick(Sender : TObject);
    procedure EdNatOperChange(Sender : TObject);
    procedure EdCondPagtoChange(Sender : TObject);
    procedure EdCgcClieButtonClick(Sender : TObject);
    procedure EdCgcClieKeyPress(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrmImporta: TFrmImporta;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TFrmImporta.EdLctoEnter(Sender : TObject);
begin
(*
006DFC58   55                     push    ebp
006DFC59   8BEC                   mov     ebp, esp
006DFC5B   53                     push    ebx
006DFC5C   8BD8                   mov     ebx, eax

* Reference to control TFrmImporta.tbImporta : TMemoryTable
|
006DFC5E   8B8304030000           mov     eax, [ebx+$0304]

* Reference to: DB.TDataSet.Close(TDataSet);
|
006DFC64   E8F78CE0FF             call    004E8960
006DFC69   33D2                   xor     edx, edx

* Reference to control TFrmImporta.nbLctos : TNotebook
|
006DFC6B   8B83B8030000           mov     eax, [ebx+$03B8]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
006DFC71   E87639DBFF             call    004935EC
006DFC76   5B                     pop     ebx
006DFC77   5D                     pop     ebp
006DFC78   C3                     ret

*)
end;

procedure TFrmImporta.GrProdutosGetCellProps(Sender : TObject);
begin
(*
006E1050   55                     push    ebp
006E1051   8BEC                   mov     ebp, esp
006E1053   51                     push    ecx
006E1054   B907000000             mov     ecx, $00000007
006E1059   6A00                   push    $00
006E105B   6A00                   push    $00
006E105D   49                     dec     ecx
006E105E   75F9                   jnz     006E1059
006E1060   51                     push    ecx
006E1061   874DFC                 xchg    [ebp-$04], ecx
006E1064   53                     push    ebx
006E1065   56                     push    esi
006E1066   57                     push    edi
006E1067   8BF9                   mov     edi, ecx
006E1069   8BD8                   mov     ebx, eax
006E106B   8B750C                 mov     esi, [ebp+$0C]
006E106E   33C0                   xor     eax, eax
006E1070   55                     push    ebp
006E1071   6815146E00             push    $006E1415

***** TRY
|
006E1076   64FF30                 push    dword ptr fs:[eax]
006E1079   648920                 mov     fs:[eax], esp
006E107C   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmImporta.tbImportaTIPO_REG : TStringField
|
006E107F   8B830C030000           mov     eax, [ebx+$030C]
006E1085   8B08                   mov     ecx, [eax]

* Reference to method TStringField.GetAsString()
|
006E1087   FF5160                 call    dword ptr [ecx+$60]
006E108A   8B45FC                 mov     eax, [ebp-$04]
006E108D   BA30146E00             mov     edx, $006E1430

* Reference to: System.@LStrCmp;
|
006E1092   E81148D2FF             call    004058A8
006E1097   7554                   jnz     006E10ED
006E1099   8B4508                 mov     eax, [ebp+$08]
006E109C   C700FFFFFF00           mov     dword ptr [eax], $00FFFFFF
006E10A2   33D2                   xor     edx, edx
006E10A4   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E10A6   E8A509D5FF             call    00431A50

* Possible String Reference to: 'Times New Roman'
|
006E10AB   BA3C146E00             mov     edx, $006E143C
006E10B0   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetName(TFont;TFontName);
|
006E10B2   E8C10BD5FF             call    00431C78
006E10B7   BA08000000             mov     edx, $00000008
006E10BC   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetSize(TFont;Integer);
|
006E10BE   E82D0CD5FF             call    00431CF0

* Reference to control TFrmImporta.GrProdutos : TRxDBGrid
|
006E10C3   8B83BC030000           mov     eax, [ebx+$03BC]

* Reference to field TRxDBGrid.OFFS_02E4
|
006E10C9   8B80E4020000           mov     eax, [eax+$02E4]
006E10CF   BA01000000             mov     edx, $00000001

* Reference to: ActnMan.TActionListCollection.GetListItem(TActionListCollection;Integer):TActionListItem;
|
006E10D4   E8D3D8E3FF             call    0051E9AC

* Reference to: DBGrids.TColumn.GetFont(TColumn):TFont;
|
006E10D9   E8DECDE3FF             call    0051DEBC
006E10DE   BA08000000             mov     edx, $00000008

* Reference to: Graphics.TFont.SetSize(TFont;Integer);
|
006E10E3   E8080CD5FF             call    00431CF0
006E10E8   E90D030000             jmp     006E13FA
006E10ED   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmImporta.tbImportaTIPO_REG : TStringField
|
006E10F0   8B830C030000           mov     eax, [ebx+$030C]
006E10F6   8B08                   mov     ecx, [eax]

* Reference to method TStringField.GetAsString()
|
006E10F8   FF5160                 call    dword ptr [ecx+$60]
006E10FB   8B45F8                 mov     eax, [ebp-$08]
006E10FE   BA54146E00             mov     edx, $006E1454

* Reference to: System.@LStrCmp;
|
006E1103   E8A047D2FF             call    004058A8
006E1108   753C                   jnz     006E1146
006E110A   8D55F4                 lea     edx, [ebp-$0C]
006E110D   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006E1110   E84F94D2FF             call    0040A564
006E1115   8B45F4                 mov     eax, [ebp-$0C]

* Possible String Reference to: 'numitem'
|
006E1118   BA60146E00             mov     edx, $006E1460

* Reference to: System.@LStrCmp;
|
006E111D   E88647D2FF             call    004058A8
006E1122   7511                   jnz     006E1135
006E1124   8B5508                 mov     edx, [ebp+$08]
006E1127   8B12                   mov     edx, [edx]
006E1129   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E112B   E82009D5FF             call    00431A50
006E1130   E9C5020000             jmp     006E13FA
006E1135   BAFF000000             mov     edx, $000000FF
006E113A   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E113C   E80F09D5FF             call    00431A50
006E1141   E9B4020000             jmp     006E13FA
006E1146   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TFrmImporta.tbImportaTIPO_REG : TStringField
|
006E1149   8B830C030000           mov     eax, [ebx+$030C]
006E114F   8B08                   mov     ecx, [eax]

* Reference to method TStringField.GetAsString()
|
006E1151   FF5160                 call    dword ptr [ecx+$60]
006E1154   8B45F0                 mov     eax, [ebp-$10]
006E1157   BA70146E00             mov     edx, $006E1470

* Reference to: System.@LStrCmp;
|
006E115C   E84747D2FF             call    004058A8
006E1161   753C                   jnz     006E119F
006E1163   8D55EC                 lea     edx, [ebp-$14]
006E1166   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006E1169   E8F693D2FF             call    0040A564
006E116E   8B45EC                 mov     eax, [ebp-$14]

* Possible String Reference to: 'numitem'
|
006E1171   BA60146E00             mov     edx, $006E1460

* Reference to: System.@LStrCmp;
|
006E1176   E82D47D2FF             call    004058A8
006E117B   7511                   jnz     006E118E
006E117D   8B5508                 mov     edx, [ebp+$08]
006E1180   8B12                   mov     edx, [edx]
006E1182   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E1184   E8C708D5FF             call    00431A50
006E1189   E96C020000             jmp     006E13FA
006E118E   BAFF000000             mov     edx, $000000FF
006E1193   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E1195   E8B608D5FF             call    00431A50
006E119A   E95B020000             jmp     006E13FA
006E119F   8D55E8                 lea     edx, [ebp-$18]

* Reference to control TFrmImporta.tbImportaTIPO_REG : TStringField
|
006E11A2   8B830C030000           mov     eax, [ebx+$030C]
006E11A8   8B08                   mov     ecx, [eax]

* Reference to method TStringField.GetAsString()
|
006E11AA   FF5160                 call    dword ptr [ecx+$60]
006E11AD   8B45E8                 mov     eax, [ebp-$18]
006E11B0   BA7C146E00             mov     edx, $006E147C

* Reference to: System.@LStrCmp;
|
006E11B5   E8EE46D2FF             call    004058A8
006E11BA   7551                   jnz     006E120D
006E11BC   8B4508                 mov     eax, [ebp+$08]
006E11BF   C700FFFFFF00           mov     dword ptr [eax], $00FFFFFF
006E11C5   BA0000FF00             mov     edx, $00FF0000
006E11CA   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E11CC   E87F08D5FF             call    00431A50
006E11D1   8D55E4                 lea     edx, [ebp-$1C]
006E11D4   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006E11D7   E88893D2FF             call    0040A564
006E11DC   8B45E4                 mov     eax, [ebp-$1C]

* Possible String Reference to: 'numitem'
|
006E11DF   BA60146E00             mov     edx, $006E1460

* Reference to: System.@LStrCmp;
|
006E11E4   E8BF46D2FF             call    004058A8
006E11E9   7511                   jnz     006E11FC
006E11EB   8B5508                 mov     edx, [ebp+$08]
006E11EE   8B12                   mov     edx, [edx]
006E11F0   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E11F2   E85908D5FF             call    00431A50
006E11F7   E9FE010000             jmp     006E13FA
006E11FC   BA0000FF00             mov     edx, $00FF0000
006E1201   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E1203   E84808D5FF             call    00431A50
006E1208   E9ED010000             jmp     006E13FA
006E120D   8D55E0                 lea     edx, [ebp-$20]

* Reference to control TFrmImporta.tbImportaTIPO_REG : TStringField
|
006E1210   8B830C030000           mov     eax, [ebx+$030C]
006E1216   8B08                   mov     ecx, [eax]

* Reference to method TStringField.GetAsString()
|
006E1218   FF5160                 call    dword ptr [ecx+$60]
006E121B   8B45E0                 mov     eax, [ebp-$20]
006E121E   BA88146E00             mov     edx, $006E1488

* Reference to: System.@LStrCmp;
|
006E1223   E88046D2FF             call    004058A8
006E1228   7545                   jnz     006E126F
006E122A   8B4508                 mov     eax, [ebp+$08]
006E122D   C700FFFFFF00           mov     dword ptr [eax], $00FFFFFF
006E1233   8D55DC                 lea     edx, [ebp-$24]
006E1236   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006E1239   E82693D2FF             call    0040A564
006E123E   8B45DC                 mov     eax, [ebp-$24]

* Possible String Reference to: 'numitem'
|
006E1241   BA60146E00             mov     edx, $006E1460

* Reference to: System.@LStrCmp;
|
006E1246   E85D46D2FF             call    004058A8
006E124B   7511                   jnz     006E125E
006E124D   8B5508                 mov     edx, [ebp+$08]
006E1250   8B12                   mov     edx, [edx]
006E1252   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E1254   E8F707D5FF             call    00431A50
006E1259   E99C010000             jmp     006E13FA
006E125E   BA0000FF00             mov     edx, $00FF0000
006E1263   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E1265   E8E607D5FF             call    00431A50
006E126A   E98B010000             jmp     006E13FA
006E126F   8D55D8                 lea     edx, [ebp-$28]

* Reference to control TFrmImporta.tbImportaTIPO_REG : TStringField
|
006E1272   8B830C030000           mov     eax, [ebx+$030C]
006E1278   8B08                   mov     ecx, [eax]

* Reference to method TStringField.GetAsString()
|
006E127A   FF5160                 call    dword ptr [ecx+$60]
006E127D   8B45D8                 mov     eax, [ebp-$28]
006E1280   BA94146E00             mov     edx, $006E1494

* Reference to: System.@LStrCmp;
|
006E1285   E81E46D2FF             call    004058A8
006E128A   755B                   jnz     006E12E7
006E128C   8B4508                 mov     eax, [ebp+$08]
006E128F   C700FFFFFF00           mov     dword ptr [eax], $00FFFFFF
006E1295   8D55D4                 lea     edx, [ebp-$2C]
006E1298   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006E129B   E8C492D2FF             call    0040A564
006E12A0   8B45D4                 mov     eax, [ebp-$2C]

* Possible String Reference to: 'numitem'
|
006E12A3   BA60146E00             mov     edx, $006E1460

* Reference to: System.@LStrCmp;
|
006E12A8   E8FB45D2FF             call    004058A8
006E12AD   7511                   jnz     006E12C0
006E12AF   8B5508                 mov     edx, [ebp+$08]
006E12B2   8B12                   mov     edx, [edx]
006E12B4   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E12B6   E89507D5FF             call    00431A50
006E12BB   E93A010000             jmp     006E13FA
006E12C0   BA08000000             mov     edx, $00000008
006E12C5   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetSize(TFont;Integer);
|
006E12C7   E8240AD5FF             call    00431CF0
006E12CC   33D2                   xor     edx, edx
006E12CE   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E12D0   E87B07D5FF             call    00431A50
006E12D5   8A1598146E00           mov     dl, byte ptr [$006E1498]
006E12DB   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetStyle(TFont;TFontStyles);
|
006E12DD   E83A0AD5FF             call    00431D1C
006E12E2   E913010000             jmp     006E13FA
006E12E7   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TFrmImporta.tbImportaTIPO_REG : TStringField
|
006E12EA   8B830C030000           mov     eax, [ebx+$030C]
006E12F0   8B08                   mov     ecx, [eax]

* Reference to method TStringField.GetAsString()
|
006E12F2   FF5160                 call    dword ptr [ecx+$60]
006E12F5   8B45D0                 mov     eax, [ebp-$30]
006E12F8   BAA4146E00             mov     edx, $006E14A4

* Reference to: System.@LStrCmp;
|
006E12FD   E8A645D2FF             call    004058A8
006E1302   7542                   jnz     006E1346
006E1304   8B4508                 mov     eax, [ebp+$08]
006E1307   C700FFFFFF00           mov     dword ptr [eax], $00FFFFFF
006E130D   8D55CC                 lea     edx, [ebp-$34]
006E1310   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006E1313   E84C92D2FF             call    0040A564
006E1318   8B45CC                 mov     eax, [ebp-$34]

* Possible String Reference to: 'numitem'
|
006E131B   BA60146E00             mov     edx, $006E1460

* Reference to: System.@LStrCmp;
|
006E1320   E88345D2FF             call    004058A8
006E1325   7511                   jnz     006E1338
006E1327   8B5508                 mov     edx, [ebp+$08]
006E132A   8B12                   mov     edx, [edx]
006E132C   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E132E   E81D07D5FF             call    00431A50
006E1333   E9C2000000             jmp     006E13FA
006E1338   33D2                   xor     edx, edx
006E133A   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E133C   E80F07D5FF             call    00431A50
006E1341   E9B4000000             jmp     006E13FA
006E1346   8D55C8                 lea     edx, [ebp-$38]

* Reference to control TFrmImporta.tbImportaTIPO_REG : TStringField
|
006E1349   8B830C030000           mov     eax, [ebx+$030C]
006E134F   8B08                   mov     ecx, [eax]

* Reference to method TStringField.GetAsString()
|
006E1351   FF5160                 call    dword ptr [ecx+$60]
006E1354   8B45C8                 mov     eax, [ebp-$38]
006E1357   BAB0146E00             mov     edx, $006E14B0

* Reference to: System.@LStrCmp;
|
006E135C   E84745D2FF             call    004058A8
006E1361   7554                   jnz     006E13B7
006E1363   8B4508                 mov     eax, [ebp+$08]
006E1366   C700C0C0C000           mov     dword ptr [eax], $00C0C0C0
006E136C   8D55C4                 lea     edx, [ebp-$3C]
006E136F   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006E1372   E8ED91D2FF             call    0040A564
006E1377   8B45C4                 mov     eax, [ebp-$3C]

* Possible String Reference to: 'numitem'
|
006E137A   BA60146E00             mov     edx, $006E1460

* Reference to: System.@LStrCmp;
|
006E137F   E82445D2FF             call    004058A8
006E1384   750E                   jnz     006E1394
006E1386   8B5508                 mov     edx, [ebp+$08]
006E1389   8B12                   mov     edx, [edx]
006E138B   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E138D   E8BE06D5FF             call    00431A50
006E1392   EB66                   jmp     006E13FA

* Possible String Reference to: 'Arial'
|
006E1394   BABC146E00             mov     edx, $006E14BC
006E1399   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetName(TFont;TFontName);
|
006E139B   E8D808D5FF             call    00431C78
006E13A0   BA0A000000             mov     edx, $0000000A
006E13A5   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetSize(TFont;Integer);
|
006E13A7   E84409D5FF             call    00431CF0
006E13AC   33D2                   xor     edx, edx
006E13AE   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E13B0   E89B06D5FF             call    00431A50
006E13B5   EB43                   jmp     006E13FA
006E13B7   8B4508                 mov     eax, [ebp+$08]
006E13BA   C700FFFFFF00           mov     dword ptr [eax], $00FFFFFF
006E13C0   33D2                   xor     edx, edx
006E13C2   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E13C4   E88706D5FF             call    00431A50
006E13C9   8D55C0                 lea     edx, [ebp-$40]
006E13CC   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006E13CF   E89091D2FF             call    0040A564
006E13D4   8B45C0                 mov     eax, [ebp-$40]

* Possible String Reference to: 'numitem'
|
006E13D7   BA60146E00             mov     edx, $006E1460

* Reference to: System.@LStrCmp;
|
006E13DC   E8C744D2FF             call    004058A8
006E13E1   750E                   jnz     006E13F1
006E13E3   8B5508                 mov     edx, [ebp+$08]
006E13E6   8B12                   mov     edx, [edx]
006E13E8   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E13EA   E86106D5FF             call    00431A50
006E13EF   EB09                   jmp     006E13FA
006E13F1   33D2                   xor     edx, edx
006E13F3   8BC6                   mov     eax, esi

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006E13F5   E85606D5FF             call    00431A50
006E13FA   33C0                   xor     eax, eax
006E13FC   5A                     pop     edx
006E13FD   59                     pop     ecx
006E13FE   59                     pop     ecx
006E13FF   648910                 mov     fs:[eax], edx

****** FINALLY
|
006E1402   681C146E00             push    $006E141C
006E1407   8D45C0                 lea     eax, [ebp-$40]
006E140A   BA10000000             mov     edx, $00000010

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E140F   E8AC40D2FF             call    004054C0
006E1414   C3                     ret


* Reference to: System.@HandleFinally;
|
006E1415   E91E39D2FF             jmp     00404D38
006E141A   EBEB                   jmp     006E1407

****** END
|
006E141C   5F                     pop     edi
006E141D   5E                     pop     esi
006E141E   5B                     pop     ebx
006E141F   8BE5                   mov     esp, ebp
006E1421   5D                     pop     ebp
006E1422   C20800                 ret     $0008

*)
end;

procedure TFrmImporta.btSelecionaClick(Sender : TObject);
begin
(*
006E14C4   55                     push    ebp
006E14C5   8BEC                   mov     ebp, esp
006E14C7   53                     push    ebx
006E14C8   56                     push    esi
006E14C9   8BD8                   mov     ebx, eax
006E14CB   8B15DCAD7D00           mov     edx, [$007DADDC]
006E14D1   8B12                   mov     edx, [edx]

* Reference to control TFrmImporta.EdFilial : TEdit
|
006E14D3   8B83AC030000           mov     eax, [ebx+$03AC]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E14D9   E81E22DBFF             call    004936FC

* Possible String Reference to: 'VE'
|
006E14DE   BA54156E00             mov     edx, $006E1554

* Reference to control TFrmImporta.EdTipo : TEdit
|
006E14E3   8B83B0030000           mov     eax, [ebx+$03B0]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E14E9   E80E22DBFF             call    004936FC
006E14EE   33D2                   xor     edx, edx

* Reference to control TFrmImporta.EdSerie : TEdit
|
006E14F0   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E14F6   E80122DBFF             call    004936FC
006E14FB   33D2                   xor     edx, edx

* Reference to control TFrmImporta.EdEspecie : TComboEdit
|
006E14FD   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
006E1503   E8C8CAE1FF             call    004FDFD0
006E1508   33D2                   xor     edx, edx

* Reference to control TFrmImporta.EdLcto : TComboEdit
|
006E150A   8B8378040000           mov     eax, [ebx+$0478]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
006E1510   E8BBCAE1FF             call    004FDFD0
006E1515   B201                   mov     dl, $01

* Reference to control TFrmImporta.EdLcto : TComboEdit
|
006E1517   8B8378040000           mov     eax, [ebx+$0478]
006E151D   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TComboEdit.OFFS_64
|
006E151F   FF5164                 call    dword ptr [ecx+$64]

* Reference to control TFrmImporta.EdLcto : TComboEdit
|
006E1522   8B8378040000           mov     eax, [ebx+$0478]
006E1528   8B10                   mov     edx, [eax]

* Possible reference to virtual method TComboEdit.OFFS_00C4
|
006E152A   FF92C4000000           call    dword ptr [edx+$00C4]
006E1530   803DB8EE7D0000         cmp     byte ptr [$007DEEB8], $00
006E1537   740F                   jz      006E1548

* Reference to control TFrmImporta.btSenha : TBitBtn
|
006E1539   8B83EC030000           mov     eax, [ebx+$03EC]
006E153F   66BEEBFF               mov     si, $FFEB

* Reference to: System.@CallDynaInst;
|
006E1543   E85832D2FF             call    004047A0
006E1548   5E                     pop     esi
006E1549   5B                     pop     ebx
006E154A   5D                     pop     ebp
006E154B   C3                     ret

*)
end;

procedure TFrmImporta.btImportaClick(Sender : TObject);
begin
(*
006E23D0   55                     push    ebp
006E23D1   8BEC                   mov     ebp, esp
006E23D3   B909000000             mov     ecx, $00000009
006E23D8   6A00                   push    $00
006E23DA   6A00                   push    $00
006E23DC   49                     dec     ecx
006E23DD   75F9                   jnz     006E23D8
006E23DF   53                     push    ebx
006E23E0   8BD8                   mov     ebx, eax
006E23E2   33C0                   xor     eax, eax
006E23E4   55                     push    ebp
006E23E5   6860276E00             push    $006E2760

***** TRY
|
006E23EA   64FF30                 push    dword ptr fs:[eax]
006E23ED   648920                 mov     fs:[eax], esp
006E23F0   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TFrmImporta.EdCgcClie : TComboEdit
|
006E23F3   8B83A8040000           mov     eax, [ebx+$04A8]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006E23F9   E83EBBE1FF             call    004FDF3C
006E23FE   8B55EC                 mov     edx, [ebp-$14]
006E2401   A118A67D00             mov     eax, dword ptr [$007DA618]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006E2406   E8E530D2FF             call    004054F0
006E240B   6A00                   push    $00
006E240D   6A01                   push    $01
006E240F   6A01                   push    $01
006E2411   8B1518A67D00           mov     edx, [$007DA618]
006E2417   8B12                   mov     edx, [edx]
006E2419   A1C8AC7D00             mov     eax, dword ptr [$007DACC8]
006E241E   8B00                   mov     eax, [eax]
006E2420   33C9                   xor     ecx, ecx

* Reference to: SqlExpr.TSQLParams.ParseSelect(TSQLParams;AnsiString;Boolean):AnsiString;
|
006E2422   E899CF0000             call    006EF3C0
006E2427   8845FF                 mov     [ebp-$01], al
006E242A   A1E4AF7D00             mov     eax, dword ptr [$007DAFE4]
006E242F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtCaixa'
|
006E2431   BA74276E00             mov     edx, $006E2774

|
006E2436   E8E5550D00             call    007B7A20
006E243B   DD5DF0                 fstp    qword ptr [ebp-$10]
006E243E   9B                     wait
006E243F   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]
006E2444   8B00                   mov     eax, [eax]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
006E2446   E831D0D2FF             call    0040F47C
006E244B   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E2450   DD18                   fstp    qword ptr [eax]
006E2452   9B                     wait
006E2453   A134A67D00             mov     eax, dword ptr [$007DA634]
006E2458   803800                 cmp     byte ptr [eax], $00
006E245B   7428                   jz      006E2485
006E245D   A108AF7D00             mov     eax, dword ptr [$007DAF08]
006E2462   803800                 cmp     byte ptr [eax], $00
006E2465   741E                   jz      006E2485
006E2467   6A00                   push    $00
006E2469   668B0D7C276E00         mov     cx, word ptr [$006E277C]
006E2470   B202                   mov     dl, $02

* Possible String Reference to: 'Não é permitido efetuar uma operaçã
|                                o de devolução numa impressora fisc
|                                al!'
|
006E2472   B888276E00             mov     eax, $006E2788

|
006E2477   E8B016D6FF             call    00443B2C
006E247C   C645FF00               mov     byte ptr [ebp-$01], $00
006E2480   E98D010000             jmp     006E2612
006E2485   DD45F0                 fld     qword ptr [ebp-$10]
006E2488   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E248D   DC18                   fcomp   qword ptr [eax]
006E248F   DFE0                   fstsw   ax
006E2491   9E                     sahf
006E2492   754E                   jnz     006E24E2
006E2494   A1D4A27D00             mov     eax, dword ptr [$007DA2D4]
006E2499   8B00                   mov     eax, [eax]

|
006E249B   E878310D00             call    007B5618
006E24A0   84C0                   test    al, al
006E24A2   0F856A010000           jnz     006E2612
006E24A8   6A00                   push    $00

* Possible String Reference to: 'Atenção!O PDV '
|
006E24AA   68DC276E00             push    $006E27DC
006E24AF   A1D4A27D00             mov     eax, dword ptr [$007DA2D4]
006E24B4   FF30                   push    dword ptr [eax]

* Possible String Reference to: ' já está fechado! Selecione outro P
|                                DV!'
|
006E24B6   68F8276E00             push    $006E27F8
006E24BB   8D45E8                 lea     eax, [ebp-$18]
006E24BE   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006E24C3   E85433D2FF             call    0040581C
006E24C8   8B45E8                 mov     eax, [ebp-$18]
006E24CB   668B0D7C276E00         mov     cx, word ptr [$006E277C]
006E24D2   B202                   mov     dl, $02

|
006E24D4   E85316D6FF             call    00443B2C
006E24D9   C645FF00               mov     byte ptr [ebp-$01], $00
006E24DD   E930010000             jmp     006E2612
006E24E2   A180AC7D00             mov     eax, dword ptr [$007DAC80]
006E24E7   DD00                   fld     qword ptr [eax]
006E24E9   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E24EE   DC18                   fcomp   qword ptr [eax]
006E24F0   DFE0                   fstsw   ax
006E24F2   9E                     sahf
006E24F3   0F83A7000000           jnb     006E25A0
006E24F9   DD45F0                 fld     qword ptr [ebp-$10]
006E24FC   D81D20286E00           fcomp   dword ptr [$006E2820]
006E2502   DFE0                   fstsw   ax
006E2504   9E                     sahf
006E2505   7616                   jbe     006E251D
006E2507   8D4DF8                 lea     ecx, [ebp-$08]
006E250A   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
006E250F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodPdv'
|
006E2511   BA2C286E00             mov     edx, $006E282C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006E2516   E81D580D00             call    007B7D38
006E251B   EB10                   jmp     006E252D
006E251D   8D45F8                 lea     eax, [ebp-$08]
006E2520   8B15D4A27D00           mov     edx, [$007DA2D4]
006E2526   8B12                   mov     edx, [edx]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006E2528   E80730D2FF             call    00405534
006E252D   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E2532   FF7004                 push    dword ptr [eax+$04]
006E2535   FF30                   push    dword ptr [eax]
006E2537   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
006E253C   8B00                   mov     eax, [eax]
006E253E   8B55F8                 mov     edx, [ebp-$08]

|
006E2541   E892330D00             call    007B58D8
006E2546   84C0                   test    al, al
006E2548   0F85C4000000           jnz     006E2612
006E254E   6A00                   push    $00

* Possible String Reference to: 'Atenção!O caixa (PDV:'
|
006E2550   683C286E00             push    $006E283C
006E2555   FF75F8                 push    dword ptr [ebp-$08]

* Possible String Reference to: ') do dia '
|
006E2558   685C286E00             push    $006E285C
006E255D   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E2562   FF7004                 push    dword ptr [eax+$04]
006E2565   FF30                   push    dword ptr [eax]
006E2567   8D55E0                 lea     edx, [ebp-$20]

* Possible String Reference to: 'dd/mm/yyyy'
|
006E256A   B870286E00             mov     eax, $006E2870

|
006E256F   E864C3D2FF             call    0040E8D8
006E2574   FF75E0                 push    dword ptr [ebp-$20]

* Possible String Reference to: ' já foi fechado! Verifique...'
|
006E2577   6884286E00             push    $006E2884
006E257C   8D45E4                 lea     eax, [ebp-$1C]
006E257F   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
006E2584   E89332D2FF             call    0040581C
006E2589   8B45E4                 mov     eax, [ebp-$1C]
006E258C   668B0D7C276E00         mov     cx, word ptr [$006E277C]
006E2593   B202                   mov     dl, $02

|
006E2595   E89215D6FF             call    00443B2C
006E259A   C645FF00               mov     byte ptr [ebp-$01], $00
006E259E   EB72                   jmp     006E2612
006E25A0   DD45F0                 fld     qword ptr [ebp-$10]
006E25A3   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E25A8   DC18                   fcomp   qword ptr [eax]
006E25AA   DFE0                   fstsw   ax
006E25AC   9E                     sahf
006E25AD   7663                   jbe     006E2612
006E25AF   6A00                   push    $00

* Possible String Reference to: 'Atenção!A data deste lançamento ('
|
006E25B1   68AC286E00             push    $006E28AC
006E25B6   FF75F4                 push    dword ptr [ebp-$0C]
006E25B9   FF75F0                 push    dword ptr [ebp-$10]
006E25BC   8D55D8                 lea     edx, [ebp-$28]

* Possible String Reference to: 'dd/mm/yyyy'
|
006E25BF   B870286E00             mov     eax, $006E2870

|
006E25C4   E80FC3D2FF             call    0040E8D8
006E25C9   FF75D8                 push    dword ptr [ebp-$28]

* Possible String Reference to: ') é superior a data de trabalho ('
|
006E25CC   68D8286E00             push    $006E28D8
006E25D1   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E25D6   FF7004                 push    dword ptr [eax+$04]
006E25D9   FF30                   push    dword ptr [eax]
006E25DB   8D55D4                 lea     edx, [ebp-$2C]

* Possible String Reference to: 'dd/mm/yyyy'
|
006E25DE   B870286E00             mov     eax, $006E2870

|
006E25E3   E8F0C2D2FF             call    0040E8D8
006E25E8   FF75D4                 push    dword ptr [ebp-$2C]

* Possible String Reference to: ').'
|
006E25EB   6804296E00             push    $006E2904
006E25F0   8D45DC                 lea     eax, [ebp-$24]
006E25F3   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
006E25F8   E81F32D2FF             call    0040581C
006E25FD   8B45DC                 mov     eax, [ebp-$24]
006E2600   668B0D7C276E00         mov     cx, word ptr [$006E277C]
006E2607   B202                   mov     dl, $02

|
006E2609   E81E15D6FF             call    00443B2C
006E260E   C645FF00               mov     byte ptr [ebp-$01], $00
006E2612   8D4DCC                 lea     ecx, [ebp-$34]
006E2615   A1E4AF7D00             mov     eax, dword ptr [$007DAFE4]
006E261A   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Serie'
|
006E261C   BA10296E00             mov     edx, $006E2910

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006E2621   E812570D00             call    007B7D38
006E2626   8B45CC                 mov     eax, [ebp-$34]
006E2629   50                     push    eax
006E262A   8D4DC8                 lea     ecx, [ebp-$38]
006E262D   A1E4AF7D00             mov     eax, dword ptr [$007DAFE4]
006E2632   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Especie'
|
006E2634   BA20296E00             mov     edx, $006E2920

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006E2639   E8FA560D00             call    007B7D38
006E263E   8B45C8                 mov     eax, [ebp-$38]
006E2641   8D4DD0                 lea     ecx, [ebp-$30]
006E2644   5A                     pop     edx

|
006E2645   E8C6060D00             call    007B2D10
006E264A   8B45D0                 mov     eax, [ebp-$30]
006E264D   BA30296E00             mov     edx, $006E2930

* Reference to: System.@LStrCmp;
|
006E2652   E85132D2FF             call    004058A8
006E2657   751E                   jnz     006E2677
006E2659   6A00                   push    $00
006E265B   668B0D34296E00         mov     cx, word ptr [$006E2934]
006E2662   B203                   mov     dl, $03

* Possible String Reference to: 'Atenção, você está importando uma N
|                                ota Fiscal. Aborta a operação?'
|
006E2664   B840296E00             mov     eax, $006E2940

|
006E2669   E8BE14D6FF             call    00443B2C
006E266E   83F806                 cmp     eax, +$06
006E2671   7504                   jnz     006E2677
006E2673   C645FF00               mov     byte ptr [ebp-$01], $00
006E2677   8D55FF                 lea     edx, [ebp-$01]
006E267A   8BC3                   mov     eax, ebx

|
006E267C   E833210000             call    006E47B4
006E2681   807DFF00               cmp     byte ptr [ebp-$01], $00
006E2685   0F84A2000000           jz      006E272D

* Reference to : TFrmInfoAtu._PROC_007A3A08()
|
006E268B   E878130C00             call    007A3A08

|
006E2690   E8371B0000             call    006E41CC
006E2695   A164AA7D00             mov     eax, dword ptr [$007DAA64]
006E269A   C60001                 mov     byte ptr [eax], $01
006E269D   C605B0EE7D0000         mov     byte ptr [$007DEEB0], $00
006E26A4   8BC3                   mov     eax, ebx

|
006E26A6   E849F9FFFF             call    006E1FF4
006E26AB   803DB0EE7D0000         cmp     byte ptr [$007DEEB0], $00
006E26B2   745F                   jz      006E2713
006E26B4   8BC3                   mov     eax, ebx

* Reference to: Forms.TCustomForm.Hide(TCustomForm);
|
006E26B6   E8E9FEDCFF             call    004B25A4
006E26BB   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006E26C0   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006E26C2   E89936DDFF             call    004B5D60
006E26C7   8BC3                   mov     eax, ebx
006E26C9   8B10                   mov     edx, [eax]

* Reference to method TFrmImporta.Update()
|
006E26CB   FF9288000000           call    dword ptr [edx+$0088]
006E26D1   8BC3                   mov     eax, ebx

|
006E26D3   E8C0040000             call    006E2B98
006E26D8   A17C9E7D00             mov     eax, dword ptr [$007D9E7C]
006E26DD   C60001                 mov     byte ptr [eax], $01
006E26E0   8D45B8                 lea     eax, [ebp-$48]
006E26E3   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006E26E5   E8DA65D3FF             call    00418CC4
006E26EA   8D4DB8                 lea     ecx, [ebp-$48]
006E26ED   A1E4AF7D00             mov     eax, dword ptr [$007DAFE4]
006E26F2   8B00                   mov     eax, [eax]

* Possible String Reference to: 'ClieSenhaCaixa'
|
006E26F4   BA8C296E00             mov     edx, $006E298C

* Reference to : tArrayTable._PROC_007B767C()
|
006E26F9   E87E4F0D00             call    007B767C
006E26FE   A1E4AF7D00             mov     eax, dword ptr [$007DAFE4]
006E2703   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006E2705   E8D2760D00             call    007B9DDC
006E270A   8BC3                   mov     eax, ebx

* Reference to: Forms.TCustomForm.Close(TCustomForm);
|
006E270C   E8AFF9DCFF             call    004B20C0
006E2711   EB1A                   jmp     006E272D

* Reference to : TFrmInfoAtu._PROC_007A3A0C()
|
006E2713   E8F4120C00             call    007A3A0C
006E2718   6A00                   push    $00
006E271A   668B0D7C276E00         mov     cx, word ptr [$006E277C]
006E2721   B202                   mov     dl, $02

* Possible String Reference to: 'Atenção: Por algum motivo a impress
|                                ora não encerrou o cupom fiscal, po
|                                rtanto os dados não serão transferi
|                                dos do WinSATI para o Frente de Loj
|                                a. Procure solucionar o problema e 
|                                tente importar novamente.'
|
006E2723   B8A4296E00             mov     eax, $006E29A4

|
006E2728   E8FF13D6FF             call    00443B2C
006E272D   33C0                   xor     eax, eax
006E272F   5A                     pop     edx
006E2730   59                     pop     ecx
006E2731   59                     pop     ecx
006E2732   648910                 mov     fs:[eax], edx

****** FINALLY
|
006E2735   6867276E00             push    $006E2767
006E273A   8D45B8                 lea     eax, [ebp-$48]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006E273D   E8361ED3FF             call    00414578
006E2742   8D45C8                 lea     eax, [ebp-$38]
006E2745   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E274A   E8712DD2FF             call    004054C0
006E274F   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
006E2752   E8452DD2FF             call    0040549C
006E2757   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006E275A   E83D2DD2FF             call    0040549C
006E275F   C3                     ret


* Reference to: System.@HandleFinally;
|
006E2760   E9D325D2FF             jmp     00404D38
006E2765   EBD3                   jmp     006E273A

****** END
|
006E2767   5B                     pop     ebx
006E2768   8BE5                   mov     esp, ebp
006E276A   5D                     pop     ebp
006E276B   C3                     ret

*)
end;

procedure TFrmImporta.FormShow(Sender : TObject);
begin
(*
006E2A70   55                     push    ebp
006E2A71   8BEC                   mov     ebp, esp
006E2A73   6A00                   push    $00
006E2A75   53                     push    ebx
006E2A76   56                     push    esi
006E2A77   8BD8                   mov     ebx, eax
006E2A79   33C0                   xor     eax, eax
006E2A7B   55                     push    ebp

* Possible String Reference to: 'éµ!Òÿëð^[Y]Ã'
|
006E2A7C   687E2B6E00             push    $006E2B7E

***** TRY
|
006E2A81   64FF30                 push    dword ptr fs:[eax]
006E2A84   648920                 mov     fs:[eax], esp
006E2A87   8BC3                   mov     eax, ebx

|
006E2A89   E84ED0FFFF             call    006DFADC
006E2A8E   8B15D4A27D00           mov     edx, [$007DA2D4]
006E2A94   8B12                   mov     edx, [edx]

* Reference to control TFrmImporta.EdCodPDV : TEdit
|
006E2A96   8B83F4030000           mov     eax, [ebx+$03F4]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E2A9C   E85B0CDBFF             call    004936FC
006E2AA1   8B15DCAD7D00           mov     edx, [$007DADDC]
006E2AA7   8B12                   mov     edx, [edx]

* Reference to control TFrmImporta.EdFilial : TEdit
|
006E2AA9   8B83AC030000           mov     eax, [ebx+$03AC]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E2AAF   E8480CDBFF             call    004936FC

* Possible String Reference to: 'VE'
|
006E2AB4   BA942B6E00             mov     edx, $006E2B94

* Reference to control TFrmImporta.EdTipo : TEdit
|
006E2AB9   8B83B0030000           mov     eax, [ebx+$03B0]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E2ABF   E8380CDBFF             call    004936FC
006E2AC4   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
006E2AC9   8B00                   mov     eax, [eax]

|
006E2ACB   E8F8EA0C00             call    007B15C8
006E2AD0   84C0                   test    al, al
006E2AD2   744D                   jz      006E2B21
006E2AD4   8D55FC                 lea     edx, [ebp-$04]
006E2AD7   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006E2ADC   8B00                   mov     eax, [eax]
006E2ADE   8B80C0040000           mov     eax, [eax+$04C0]
006E2AE4   8B08                   mov     ecx, [eax]
006E2AE6   FF5160                 call    dword ptr [ecx+$60]
006E2AE9   837DFC00               cmp     dword ptr [ebp-$04], +$00
006E2AED   0F95C2                 setnz   dl

* Reference to control TFrmImporta.btSenha : TBitBtn
|
006E2AF0   8B83EC030000           mov     eax, [ebx+$03EC]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
006E2AF6   E8F10ADBFF             call    004935EC

* Reference to control TFrmImporta.btSenha : TBitBtn
|
006E2AFB   8BB3EC030000           mov     esi, [ebx+$03EC]

* Reference to field TBitBtn.OFFS_0057
|
006E2B01   807E5700               cmp     byte ptr [esi+$57], $00
006E2B05   740C                   jz      006E2B13
006E2B07   8BC6                   mov     eax, esi
006E2B09   8B10                   mov     edx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_00C4
|
006E2B0B   FF92C4000000           call    dword ptr [edx+$00C4]
006E2B11   EB0E                   jmp     006E2B21

* Reference to control TFrmImporta.EdLcto : TComboEdit
|
006E2B13   8B8378040000           mov     eax, [ebx+$0478]
006E2B19   8B10                   mov     edx, [eax]

* Possible reference to virtual method TComboEdit.OFFS_00C4
|
006E2B1B   FF92C4000000           call    dword ptr [edx+$00C4]
006E2B21   BA180000FF             mov     edx, $FF000018

* Reference to control TFrmImporta.EdNatOper : TComboEdit
|
006E2B26   8B8390040000           mov     eax, [ebx+$0490]

* Reference to: Controls.TControl.SetColor(TControl;TColor);
|
006E2B2C   E8530DDBFF             call    00493884
006E2B31   BA180000FF             mov     edx, $FF000018

* Reference to control TFrmImporta.EdCondPagto : TComboEdit
|
006E2B36   8B8398040000           mov     eax, [ebx+$0498]

* Reference to: Controls.TControl.SetColor(TControl;TColor);
|
006E2B3C   E8430DDBFF             call    00493884
006E2B41   B201                   mov     dl, $01

* Reference to control TFrmImporta.EdNatOper : TComboEdit
|
006E2B43   8B8390040000           mov     eax, [ebx+$0490]

* Reference to : TDateEdit._PROC_006258D4()
|
006E2B49   E8862DF4FF             call    006258D4
006E2B4E   B201                   mov     dl, $01

* Reference to control TFrmImporta.EdCondPagto : TComboEdit
|
006E2B50   8B8398040000           mov     eax, [ebx+$0498]

* Reference to : TDateEdit._PROC_006258D4()
|
006E2B56   E8792DF4FF             call    006258D4
006E2B5B   33D2                   xor     edx, edx

* Reference to control TFrmImporta.EdPorcent : TCurrencyEdit
|
006E2B5D   8B838C040000           mov     eax, [ebx+$048C]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
006E2B63   E8840ADBFF             call    004935EC
006E2B68   33C0                   xor     eax, eax
006E2B6A   5A                     pop     edx
006E2B6B   59                     pop     ecx
006E2B6C   59                     pop     ecx
006E2B6D   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[Y]Ã'
|
006E2B70   68852B6E00             push    $006E2B85
006E2B75   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006E2B78   E81F29D2FF             call    0040549C
006E2B7D   C3                     ret


* Reference to: System.@HandleFinally;
|
006E2B7E   E9B521D2FF             jmp     00404D38
006E2B83   EBF0                   jmp     006E2B75

****** END
|
006E2B85   5E                     pop     esi
006E2B86   5B                     pop     ebx
006E2B87   59                     pop     ecx
006E2B88   5D                     pop     ebp
006E2B89   C3                     ret

*)
end;

procedure TFrmImporta.FormCreate(Sender : TObject);
begin
(*
006E37E8   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006E37ED   8B00                   mov     eax, [eax]
006E37EF   33D2                   xor     edx, edx
006E37F1   8990D8000000           mov     [eax+$00D8], edx
006E37F7   8990DC000000           mov     [eax+$00DC], edx
006E37FD   C3                     ret

*)
end;

procedure TFrmImporta.FormClose(Sender : TObject);
begin
(*
006E3800   55                     push    ebp
006E3801   8BEC                   mov     ebp, esp

* Reference to control TFrmImporta.tbImporta : TMemoryTable
|
006E3803   8B8004030000           mov     eax, [eax+$0304]

* Reference to: DB.TDataSet.Close(TDataSet);
|
006E3809   E85251E0FF             call    004E8960
006E380E   5D                     pop     ebp
006E380F   C3                     ret

*)
end;

procedure TFrmImporta.EdEspecieExit(Sender : TObject);
begin
(*
006E3810   C3                     ret

*)
end;

procedure TFrmImporta.EdSerieExit(Sender : TObject);
begin
(*
006E3814   C3                     ret

*)
end;

procedure TFrmImporta.btSeleClick(Sender : TObject);
begin
(*
006E3818   55                     push    ebp
006E3819   8BEC                   mov     ebp, esp
006E381B   33C9                   xor     ecx, ecx
006E381D   51                     push    ecx
006E381E   51                     push    ecx
006E381F   51                     push    ecx
006E3820   51                     push    ecx
006E3821   51                     push    ecx
006E3822   51                     push    ecx
006E3823   53                     push    ebx
006E3824   8BD8                   mov     ebx, eax
006E3826   33C0                   xor     eax, eax
006E3828   55                     push    ebp
006E3829   685D396E00             push    $006E395D

***** TRY
|
006E382E   64FF30                 push    dword ptr fs:[eax]
006E3831   648920                 mov     fs:[eax], esp

* Reference to control TFrmImporta.EdDtLcto : TDateEdit
|
006E3834   8B83A0040000           mov     eax, [ebx+$04A0]

* Reference to : TDateEdit._PROC_00626C94()
|
006E383A   E85534F4FF             call    00626C94
006E383F   83C4F8                 add     esp, -$08
006E3842   DD1C24                 fstp    qword ptr [esp]
006E3845   9B                     wait
006E3846   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmImporta.EdEspecie : TComboEdit
|
006E3849   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006E384F   E8E8A6E1FF             call    004FDF3C
006E3854   8B45FC                 mov     eax, [ebp-$04]
006E3857   50                     push    eax
006E3858   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmImporta.EdSerie : TEdit
|
006E385B   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006E3861   E866FEDAFF             call    004936CC
006E3866   8B45F8                 mov     eax, [ebp-$08]
006E3869   50                     push    eax
006E386A   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TFrmImporta.EdLcto : TComboEdit
|
006E386D   8B8378040000           mov     eax, [ebx+$0478]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006E3873   E8C4A6E1FF             call    004FDF3C
006E3878   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006E387B   E85076D2FF             call    0040AED0
006E3880   50                     push    eax
006E3881   66A16C396E00           mov     ax, word ptr [$006E396C]
006E3887   50                     push    eax
006E3888   6A01                   push    $01
006E388A   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TFrmImporta.EdTipo : TEdit
|
006E388D   8B83B0030000           mov     eax, [ebx+$03B0]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006E3893   E834FEDAFF             call    004936CC
006E3898   8B45F0                 mov     eax, [ebp-$10]
006E389B   50                     push    eax
006E389C   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TFrmImporta.EdFilial : TEdit
|
006E389F   8B83AC030000           mov     eax, [ebx+$03AC]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006E38A5   E822FEDAFF             call    004936CC
006E38AA   8B55EC                 mov     edx, [ebp-$14]
006E38AD   33C0                   xor     eax, eax
006E38AF   59                     pop     ecx

|
006E38B0   E8ABA3F5FF             call    0063DC60
006E38B5   84C0                   test    al, al
006E38B7   7419                   jz      006E38D2
006E38B9   A1E4AF7D00             mov     eax, dword ptr [$007DAFE4]
006E38BE   8B00                   mov     eax, [eax]

* Reference to : tArrayTable._PROC_007B8B80()
|
006E38C0   E8BB520D00             call    007B8B80
006E38C5   85C0                   test    eax, eax
006E38C7   7E09                   jle     006E38D2
006E38C9   8BC3                   mov     eax, ebx

|
006E38CB   E858020000             call    006E3B28
006E38D0   EB50                   jmp     006E3922

* Possible String Reference to: 'Lançamento não localizado!!!!!'
|
006E38D2   B878396E00             mov     eax, $006E3978

* Reference to: Dialogs.ShowMessage(AnsiString);
|
006E38D7   E84803D6FF             call    00443C24
006E38DC   33D2                   xor     edx, edx

* Reference to control TFrmImporta.nbLctos : TNotebook
|
006E38DE   8B83B8030000           mov     eax, [ebx+$03B8]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
006E38E4   E803FDDAFF             call    004935EC
006E38E9   8D55E8                 lea     edx, [ebp-$18]
006E38EC   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006E38F1   8B00                   mov     eax, [eax]
006E38F3   8B80C0040000           mov     eax, [eax+$04C0]
006E38F9   8B08                   mov     ecx, [eax]
006E38FB   FF5160                 call    dword ptr [ecx+$60]
006E38FE   837DE800               cmp     dword ptr [ebp-$18], +$00
006E3902   7410                   jz      006E3914

* Reference to control TFrmImporta.btSenha : TBitBtn
|
006E3904   8B83EC030000           mov     eax, [ebx+$03EC]
006E390A   8B10                   mov     edx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_00C4
|
006E390C   FF92C4000000           call    dword ptr [edx+$00C4]
006E3912   EB0E                   jmp     006E3922

* Reference to control TFrmImporta.EdLcto : TComboEdit
|
006E3914   8B8378040000           mov     eax, [ebx+$0478]
006E391A   8B10                   mov     edx, [eax]

* Possible reference to virtual method TComboEdit.OFFS_00C4
|
006E391C   FF92C4000000           call    dword ptr [edx+$00C4]
006E3922   33C0                   xor     eax, eax
006E3924   5A                     pop     edx
006E3925   59                     pop     ecx
006E3926   59                     pop     ecx
006E3927   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[‹å]Ã'
|
006E392A   6864396E00             push    $006E3964
006E392F   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrClr(void;void);
|
006E3932   E8651BD2FF             call    0040549C
006E3937   8D45EC                 lea     eax, [ebp-$14]
006E393A   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E393F   E87C1BD2FF             call    004054C0
006E3944   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006E3947   E8501BD2FF             call    0040549C
006E394C   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006E394F   E8481BD2FF             call    0040549C
006E3954   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006E3957   E8401BD2FF             call    0040549C
006E395C   C3                     ret


* Reference to: System.@HandleFinally;
|
006E395D   E9D613D2FF             jmp     00404D38
006E3962   EBCB                   jmp     006E392F

****** END
|
006E3964   5B                     pop     ebx
006E3965   8BE5                   mov     esp, ebp
006E3967   5D                     pop     ebp
006E3968   C3                     ret

*)
end;

procedure TFrmImporta.EdEspecieButtonClick(Sender : TObject);
begin
(*
006E3998   55                     push    ebp
006E3999   8BEC                   mov     ebp, esp
006E399B   6A00                   push    $00
006E399D   6A00                   push    $00
006E399F   53                     push    ebx
006E39A0   8BD8                   mov     ebx, eax
006E39A2   33C0                   xor     eax, eax
006E39A4   55                     push    ebp
006E39A5   68FE396E00             push    $006E39FE

***** TRY
|
006E39AA   64FF30                 push    dword ptr fs:[eax]
006E39AD   648920                 mov     fs:[eax], esp
006E39B0   8D45FC                 lea     eax, [ebp-$04]
006E39B3   50                     push    eax
006E39B4   8D45F8                 lea     eax, [ebp-$08]
006E39B7   50                     push    eax
006E39B8   33C9                   xor     ecx, ecx
006E39BA   33D2                   xor     edx, edx
006E39BC   33C0                   xor     eax, eax

|
006E39BE   E8411CF7FF             call    00655604
006E39C3   84C0                   test    al, al
006E39C5   741C                   jz      006E39E3
006E39C7   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TFrmImporta.EdEspecie : TComboEdit
|
006E39CA   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
006E39D0   E8FBA5E1FF             call    004FDFD0
006E39D5   8B55F8                 mov     edx, [ebp-$08]

* Reference to control TFrmImporta.EdSerie : TEdit
|
006E39D8   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E39DE   E819FDDAFF             call    004936FC
006E39E3   33C0                   xor     eax, eax
006E39E5   5A                     pop     edx
006E39E6   59                     pop     ecx
006E39E7   59                     pop     ecx
006E39E8   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[YY]Ã‹ÀÃ@'
|
006E39EB   68053A6E00             push    $006E3A05
006E39F0   8D45F8                 lea     eax, [ebp-$08]
006E39F3   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E39F8   E8C31AD2FF             call    004054C0
006E39FD   C3                     ret


* Reference to: System.@HandleFinally;
|
006E39FE   E93513D2FF             jmp     00404D38
006E3A03   EBEB                   jmp     006E39F0

****** END
|
006E3A05   5B                     pop     ebx
006E3A06   59                     pop     ecx
006E3A07   59                     pop     ecx
006E3A08   5D                     pop     ebp
006E3A09   C3                     ret

*)
end;

procedure TFrmImporta.btRegistraClick(Sender : TObject);
begin
(*
006E3A0C   C3                     ret

*)
end;

procedure TFrmImporta.btSenhaClick(Sender : TObject);
begin
(*
006E3A10   55                     push    ebp
006E3A11   8BEC                   mov     ebp, esp
006E3A13   83C4E0                 add     esp, -$20
006E3A16   53                     push    ebx
006E3A17   56                     push    esi
006E3A18   57                     push    edi
006E3A19   33C9                   xor     ecx, ecx
006E3A1B   894DE0                 mov     [ebp-$20], ecx
006E3A1E   894DF4                 mov     [ebp-$0C], ecx
006E3A21   894DFC                 mov     [ebp-$04], ecx
006E3A24   894DF8                 mov     [ebp-$08], ecx
006E3A27   8BD8                   mov     ebx, eax
006E3A29   33C0                   xor     eax, eax
006E3A2B   55                     push    ebp
006E3A2C   68003B6E00             push    $006E3B00

***** TRY
|
006E3A31   64FF30                 push    dword ptr fs:[eax]
006E3A34   648920                 mov     fs:[eax], esp
006E3A37   33C0                   xor     eax, eax
006E3A39   55                     push    ebp
006E3A3A   689A3A6E00             push    $006E3A9A

***** TRY
|
006E3A3F   64FF30                 push    dword ptr fs:[eax]
006E3A42   648920                 mov     fs:[eax], esp
006E3A45   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TFrmImporta.EdDias : TEdit
|
006E3A48   8B8334040000           mov     eax, [ebx+$0434]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006E3A4E   E879FCDAFF             call    004936CC
006E3A53   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006E3A56   E87574D2FF             call    0040AED0
006E3A5B   8945F0                 mov     [ebp-$10], eax
006E3A5E   DB45F0                 fild    dword ptr [ebp-$10]
006E3A61   DB7DE4                 fstp    tbyte ptr [ebp-$1C]
006E3A64   9B                     wait
006E3A65   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]
006E3A6A   8B00                   mov     eax, [eax]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
006E3A6C   E80BBAD2FF             call    0040F47C
006E3A71   DB6DE4                 fld     tbyte ptr [ebp-$1C]
006E3A74   DEE9                   fsubp   st(1), st(0)
006E3A76   D805103B6E00           fadd    dword ptr [$006E3B10]
006E3A7C   83C4F8                 add     esp, -$08
006E3A7F   DD1C24                 fstp    qword ptr [esp]
006E3A82   9B                     wait
006E3A83   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: 'dd/mm/yyyy'
|
006E3A86   B81C3B6E00             mov     eax, $006E3B1C

|
006E3A8B   E848AED2FF             call    0040E8D8
006E3A90   33C0                   xor     eax, eax
006E3A92   5A                     pop     edx
006E3A93   59                     pop     ecx
006E3A94   59                     pop     ecx
006E3A95   648910                 mov     fs:[eax], edx
006E3A98   EB1A                   jmp     006E3AB4

* Reference to: System.@HandleAnyException;
|
006E3A9A   E9E50FD2FF             jmp     00404A84
006E3A9F   8D45F8                 lea     eax, [ebp-$08]
006E3AA2   8B15E4B27D00           mov     edx, [$007DB2E4]
006E3AA8   8B12                   mov     edx, [edx]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006E3AAA   E8851AD2FF             call    00405534

* Reference to: System.@DoneExcept;
|
006E3AAF   E8FC13D2FF             call    00404EB0

****** END
|
006E3AB4   8D45E0                 lea     eax, [ebp-$20]
006E3AB7   50                     push    eax
006E3AB8   B101                   mov     cl, $01
006E3ABA   33D2                   xor     edx, edx
006E3ABC   B802000000             mov     eax, $00000002

* Reference to : TFrmInfoAtu._PROC_007AFC64()
|
006E3AC1   E89EC10C00             call    007AFC64
006E3AC6   8B45E0                 mov     eax, [ebp-$20]
006E3AC9   8D55FC                 lea     edx, [ebp-$04]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
006E3ACC   E8976BD2FF             call    0040A668
006E3AD1   837DFC00               cmp     dword ptr [ebp-$04], +$00
006E3AD5   33C0                   xor     eax, eax
006E3AD7   5A                     pop     edx
006E3AD8   59                     pop     ecx
006E3AD9   59                     pop     ecx
006E3ADA   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006E3ADD   68073B6E00             push    $006E3B07
006E3AE2   8D45E0                 lea     eax, [ebp-$20]

* Reference to: System.@LStrClr(void;void);
|
006E3AE5   E8B219D2FF             call    0040549C
006E3AEA   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006E3AED   E8AA19D2FF             call    0040549C
006E3AF2   8D45F8                 lea     eax, [ebp-$08]
006E3AF5   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E3AFA   E8C119D2FF             call    004054C0
006E3AFF   C3                     ret


* Reference to: System.@HandleFinally;
|
006E3B00   E93312D2FF             jmp     00404D38
006E3B05   EBDB                   jmp     006E3AE2

****** END
|
006E3B07   5F                     pop     edi
006E3B08   5E                     pop     esi
006E3B09   5B                     pop     ebx
006E3B0A   8BE5                   mov     esp, ebp
006E3B0C   5D                     pop     ebp
006E3B0D   C3                     ret

*)
end;

procedure TFrmImporta.FormKeyDown(Sender : TObject);
begin
(*
006E3F78   55                     push    ebp
006E3F79   8BEC                   mov     ebp, esp
006E3F7B   5D                     pop     ebp
006E3F7C   C20400                 ret     $0004

*)
end;

procedure TFrmImporta.btCancelaClick(Sender : TObject);
begin
(*
006E3F80   C3                     ret

*)
end;

procedure TFrmImporta.btDinheiroClick(Sender : TObject);
begin
(*
006E47A0   C3                     ret

*)
end;

procedure TFrmImporta.sbImpressoraClick(Sender : TObject);
begin
(*
006E47A4   C3                     ret

*)
end;

procedure TFrmImporta.ckValeClick(Sender : TObject);
begin
(*
006E47A8   C3                     ret

*)
end;

procedure TFrmImporta.sbOpcoesClick(Sender : TObject);
begin
(*
006E47AC   C3                     ret

*)
end;

procedure TFrmImporta.FormActivate(Sender : TObject);
begin
(*
006E47B0   C3                     ret

*)
end;

procedure TFrmImporta.GrProdutosMouseUp(Sender : TObject);
begin
(*
006E47B8   55                     push    ebp
006E47B9   8BEC                   mov     ebp, esp
006E47BB   5D                     pop     ebp
006E47BC   C20C00                 ret     $000C

*)
end;

procedure TFrmImporta.FormDeactivate(Sender : TObject);
begin
(*
006E47C0   C3                     ret

*)
end;

procedure TFrmImporta.EdLctoButtonClick(Sender : TObject);
begin
(*
006E47C4   55                     push    ebp
006E47C5   8BEC                   mov     ebp, esp
006E47C7   B915000000             mov     ecx, $00000015
006E47CC   6A00                   push    $00
006E47CE   6A00                   push    $00
006E47D0   49                     dec     ecx
006E47D1   75F9                   jnz     006E47CC
006E47D3   51                     push    ecx
006E47D4   53                     push    ebx
006E47D5   56                     push    esi
006E47D6   57                     push    edi
006E47D7   8945FC                 mov     [ebp-$04], eax
006E47DA   33C0                   xor     eax, eax
006E47DC   55                     push    ebp

* Possible String Reference to: 'ér'
|
006E47DD   68C14C6E00             push    $006E4CC1

***** TRY
|
006E47E2   64FF30                 push    dword ptr fs:[eax]
006E47E5   648920                 mov     fs:[eax], esp
006E47E8   33D2                   xor     edx, edx
006E47EA   55                     push    ebp
006E47EB   682E4C6E00             push    $006E4C2E

***** TRY
|
006E47F0   64FF32                 push    dword ptr fs:[edx]
006E47F3   648922                 mov     fs:[edx], esp
006E47F6   33C0                   xor     eax, eax
006E47F8   55                     push    ebp
006E47F9   684E486E00             push    $006E484E

***** TRY
|
006E47FE   64FF30                 push    dword ptr fs:[eax]
006E4801   648920                 mov     fs:[eax], esp
006E4804   8D55F0                 lea     edx, [ebp-$10]
006E4807   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdDias : TEdit
|
006E480A   8B8034040000           mov     eax, [eax+$0434]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006E4810   E8B7EEDAFF             call    004936CC
006E4815   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006E4818   E8B366D2FF             call    0040AED0
006E481D   8945EC                 mov     [ebp-$14], eax
006E4820   DB45EC                 fild    dword ptr [ebp-$14]
006E4823   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E4828   DC28                   fsubr   qword ptr [eax]
006E482A   D805D04C6E00           fadd    dword ptr [$006E4CD0]
006E4830   83C4F8                 add     esp, -$08
006E4833   DD1C24                 fstp    qword ptr [esp]
006E4836   9B                     wait
006E4837   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: 'mm/dd/yyyy'
|
006E483A   B8DC4C6E00             mov     eax, $006E4CDC

|
006E483F   E894A0D2FF             call    0040E8D8
006E4844   33C0                   xor     eax, eax
006E4846   5A                     pop     edx
006E4847   59                     pop     ecx
006E4848   59                     pop     ecx
006E4849   648910                 mov     fs:[eax], edx
006E484C   EB21                   jmp     006E486F

* Reference to: System.@HandleAnyException;
|
006E484E   E93102D2FF             jmp     00404A84
006E4853   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E4858   FF7004                 push    dword ptr [eax+$04]
006E485B   FF30                   push    dword ptr [eax]
006E485D   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: 'mm/dd/yyyy'
|
006E4860   B8DC4C6E00             mov     eax, $006E4CDC

|
006E4865   E86EA0D2FF             call    0040E8D8

* Reference to: System.@DoneExcept;
|
006E486A   E84106D2FF             call    00404EB0

****** END
|
006E486F   6A01                   push    $01
006E4871   8D45F4                 lea     eax, [ebp-$0C]
006E4874   50                     push    eax
006E4875   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
006E487A   8B00                   mov     eax, [eax]
006E487C   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'VE'
|
006E487F   B8F04C6E00             mov     eax, $006E4CF0
006E4884   8945E8                 mov     [ebp-$18], eax
006E4887   8D45E4                 lea     eax, [ebp-$1C]
006E488A   50                     push    eax

* Possible String Reference to: 'FILIAL'
|
006E488B   B8FC4C6E00             mov     eax, $006E4CFC
006E4890   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'TIPOLCTO'
|
006E4893   B80C4D6E00             mov     eax, $006E4D0C
006E4898   8945E0                 mov     [ebp-$20], eax
006E489B   8D45DC                 lea     eax, [ebp-$24]
006E489E   BA01000000             mov     edx, $00000001
006E48A3   59                     pop     ecx

|
006E48A4   E817B60C00             call    007AFEC0
006E48A9   8D45D8                 lea     eax, [ebp-$28]
006E48AC   50                     push    eax

* Possible String Reference to: '((DTLCTO >= '
|
006E48AD   68204D6E00             push    $006E4D20
006E48B2   8D55D0                 lea     edx, [ebp-$30]
006E48B5   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006E48B8   E863F20B00             call    007A3B20
006E48BD   FF75D0                 push    dword ptr [ebp-$30]

* Possible String Reference to: ') AND (DTLCTO <= '
|
006E48C0   68384D6E00             push    $006E4D38
006E48C5   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006E48CA   FF7004                 push    dword ptr [eax+$04]
006E48CD   FF30                   push    dword ptr [eax]
006E48CF   8D55C8                 lea     edx, [ebp-$38]

* Possible String Reference to: 'mm/dd/yyyy'
|
006E48D2   B8DC4C6E00             mov     eax, $006E4CDC

|
006E48D7   E8FC9FD2FF             call    0040E8D8
006E48DC   8B45C8                 mov     eax, [ebp-$38]
006E48DF   8D55CC                 lea     edx, [ebp-$34]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006E48E2   E839F20B00             call    007A3B20
006E48E7   FF75CC                 push    dword ptr [ebp-$34]

* Possible String Reference to: '))'
|
006E48EA   68544D6E00             push    $006E4D54
006E48EF   8D45D4                 lea     eax, [ebp-$2C]
006E48F2   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
006E48F7   E8200FD2FF             call    0040581C
006E48FC   8B55D4                 mov     edx, [ebp-$2C]

* Possible String Reference to: 'AND'
|
006E48FF   B9604D6E00             mov     ecx, $006E4D60
006E4904   8B45F4                 mov     eax, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007AFE20()
|
006E4907   E814B50C00             call    007AFE20
006E490C   8B55D8                 mov     edx, [ebp-$28]
006E490F   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006E4912   E81D0CD2FF             call    00405534
006E4917   8D45C4                 lea     eax, [ebp-$3C]
006E491A   50                     push    eax

* Possible String Reference to: 'AND'
|
006E491B   B9604D6E00             mov     ecx, $006E4D60

* Possible String Reference to: '((STATUS <> 'C') OR (STATUS IS NULL
|                                ))'
|
006E4920   BA6C4D6E00             mov     edx, $006E4D6C
006E4925   8B45F4                 mov     eax, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007AFE20()
|
006E4928   E8F3B40C00             call    007AFE20
006E492D   8B55C4                 mov     edx, [ebp-$3C]
006E4930   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006E4933   E8FC0BD2FF             call    00405534
006E4938   8D55C0                 lea     edx, [ebp-$40]
006E493B   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdEspecie : TComboEdit
|
006E493E   8B80B4030000           mov     eax, [eax+$03B4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006E4944   E8F395E1FF             call    004FDF3C
006E4949   837DC000               cmp     dword ptr [ebp-$40], +$00
006E494D   0F8490000000           jz      006E49E3
006E4953   8D55BC                 lea     edx, [ebp-$44]
006E4956   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdSerie : TEdit
|
006E4959   8B80A4030000           mov     eax, [eax+$03A4]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006E495F   E868EDDAFF             call    004936CC
006E4964   837DBC00               cmp     dword ptr [ebp-$44], +$00
006E4968   7479                   jz      006E49E3
006E496A   8D45B8                 lea     eax, [ebp-$48]
006E496D   50                     push    eax

* Possible String Reference to: '((ESPECIE = '
|
006E496E   689C4D6E00             push    $006E4D9C
006E4973   8D55AC                 lea     edx, [ebp-$54]
006E4976   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdEspecie : TComboEdit
|
006E4979   8B80B4030000           mov     eax, [eax+$03B4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006E497F   E8B895E1FF             call    004FDF3C
006E4984   8B45AC                 mov     eax, [ebp-$54]
006E4987   8D55B0                 lea     edx, [ebp-$50]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006E498A   E891F10B00             call    007A3B20
006E498F   FF75B0                 push    dword ptr [ebp-$50]

* Possible String Reference to: ') AND (SERIE <= '
|
006E4992   68B44D6E00             push    $006E4DB4
006E4997   8D55A4                 lea     edx, [ebp-$5C]
006E499A   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdSerie : TEdit
|
006E499D   8B80A4030000           mov     eax, [eax+$03A4]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006E49A3   E824EDDAFF             call    004936CC
006E49A8   8B45A4                 mov     eax, [ebp-$5C]
006E49AB   8D55A8                 lea     edx, [ebp-$58]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006E49AE   E86DF10B00             call    007A3B20
006E49B3   FF75A8                 push    dword ptr [ebp-$58]

* Possible String Reference to: '))'
|
006E49B6   68544D6E00             push    $006E4D54
006E49BB   8D45B4                 lea     eax, [ebp-$4C]
006E49BE   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
006E49C3   E8540ED2FF             call    0040581C
006E49C8   8B55B4                 mov     edx, [ebp-$4C]

* Possible String Reference to: 'AND'
|
006E49CB   B9604D6E00             mov     ecx, $006E4D60
006E49D0   8B45F4                 mov     eax, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007AFE20()
|
006E49D3   E848B40C00             call    007AFE20
006E49D8   8B55B8                 mov     edx, [ebp-$48]
006E49DB   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006E49DE   E8510BD2FF             call    00405534
006E49E3   A1B0A87D00             mov     eax, dword ptr [$007DA8B0]
006E49E8   C60001                 mov     byte ptr [eax], $01
006E49EB   A1B4AE7D00             mov     eax, dword ptr [$007DAEB4]
006E49F0   8B55F4                 mov     edx, [ebp-$0C]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006E49F3   E8F80AD2FF             call    004054F0

* Possible String Reference to: 'Filial'
|
006E49F8   B8D04D6E00             mov     eax, $006E4DD0
006E49FD   894584                 mov     [ebp-$7C], eax

* Possible String Reference to: 'TipoLcto'
|
006E4A00   B8E04D6E00             mov     eax, $006E4DE0
006E4A05   894588                 mov     [ebp-$78], eax

* Possible String Reference to: 'DtLcto'
|
006E4A08   B8F44D6E00             mov     eax, $006E4DF4
006E4A0D   89458C                 mov     [ebp-$74], eax

* Possible String Reference to: 'Especie'
|
006E4A10   B8044E6E00             mov     eax, $006E4E04
006E4A15   894590                 mov     [ebp-$70], eax

* Possible String Reference to: 'Serie'
|
006E4A18   B8144E6E00             mov     eax, $006E4E14
006E4A1D   894594                 mov     [ebp-$6C], eax

* Possible String Reference to: 'NumLcto'
|
006E4A20   B8244E6E00             mov     eax, $006E4E24
006E4A25   894598                 mov     [ebp-$68], eax

* Possible String Reference to: 'VlrTotal'
|
006E4A28   B8344E6E00             mov     eax, $006E4E34
006E4A2D   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'ClieSenhaCaixa'
|
006E4A30   B8484E6E00             mov     eax, $006E4E48
006E4A35   8945A0                 mov     [ebp-$60], eax
006E4A38   8D4584                 lea     eax, [ebp-$7C]
006E4A3B   BA07000000             mov     edx, $00000007

|
006E4A40   E87371F5FF             call    0063BBB8
006E4A45   6A01                   push    $01

* Possible String Reference to: 'Valor'
|
006E4A47   B8604E6E00             mov     eax, $006E4E60
006E4A4C   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'Senha'
|
006E4A4F   B8704E6E00             mov     eax, $006E4E70
006E4A54   8945E8                 mov     [ebp-$18], eax
006E4A57   8D45E4                 lea     eax, [ebp-$1C]
006E4A5A   50                     push    eax

* Possible String Reference to: 'VlrTotal'
|
006E4A5B   B8344E6E00             mov     eax, $006E4E34
006E4A60   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'ClieSenhaCaixa'
|
006E4A63   B8484E6E00             mov     eax, $006E4E48
006E4A68   8945E0                 mov     [ebp-$20], eax
006E4A6B   8D45DC                 lea     eax, [ebp-$24]
006E4A6E   BA01000000             mov     edx, $00000001
006E4A73   59                     pop     ecx

|
006E4A74   E88F64F5FF             call    0063AF08

* Possible String Reference to: 'Especie'
|
006E4A79   B8044E6E00             mov     eax, $006E4E04
006E4A7E   898578FFFFFF           mov     [ebp+$FFFFFF78], eax

* Possible String Reference to: 'Série'
|
006E4A84   B8804E6E00             mov     eax, $006E4E80
006E4A89   89857CFFFFFF           mov     [ebp+$FFFFFF7C], eax

* Possible String Reference to: 'Num. Lcto'
|
006E4A8F   B8904E6E00             mov     eax, $006E4E90
006E4A94   894580                 mov     [ebp-$80], eax
006E4A97   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
006E4A9D   50                     push    eax
006E4A9E   6A02                   push    $02
006E4AA0   6A00                   push    $00

* Possible String Reference to: 'Especie'
|
006E4AA2   B8044E6E00             mov     eax, $006E4E04
006E4AA7   89856CFFFFFF           mov     [ebp+$FFFFFF6C], eax

* Possible String Reference to: 'Serie'
|
006E4AAD   B8144E6E00             mov     eax, $006E4E14
006E4AB2   898570FFFFFF           mov     [ebp+$FFFFFF70], eax

* Possible String Reference to: 'NumLcto'
|
006E4AB8   B8244E6E00             mov     eax, $006E4E24
006E4ABD   898574FFFFFF           mov     [ebp+$FFFFFF74], eax
006E4AC3   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
006E4AC9   B902000000             mov     ecx, $00000002

* Possible String Reference to: 'SAIDAS'
|
006E4ACE   B8A44E6E00             mov     eax, $006E4EA4

|
006E4AD3   E87C47F5FF             call    00639254
006E4AD8   84C0                   test    al, al
006E4ADA   0F8444010000           jz      006E4C24
006E4AE0   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006E4AE5   8B00                   mov     eax, [eax]
006E4AE7   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'Filial'
|
006E4AEA   BAD04D6E00             mov     edx, $006E4DD0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006E4AEF   E81051E0FF             call    004E9C04
006E4AF4   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]
006E4AFA   8B08                   mov     ecx, [eax]
006E4AFC   FF5160                 call    dword ptr [ecx+$60]
006E4AFF   8B9568FFFFFF           mov     edx, [ebp+$FFFFFF68]
006E4B05   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdFilial : TEdit
|
006E4B08   8B80AC030000           mov     eax, [eax+$03AC]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E4B0E   E8E9EBDAFF             call    004936FC
006E4B13   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006E4B18   8B00                   mov     eax, [eax]
006E4B1A   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'DtLcto'
|
006E4B1D   BAF44D6E00             mov     edx, $006E4DF4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006E4B22   E8DD50E0FF             call    004E9C04
006E4B27   8D9564FFFFFF           lea     edx, [ebp+$FFFFFF64]
006E4B2D   8B08                   mov     ecx, [eax]
006E4B2F   FF5160                 call    dword ptr [ecx+$60]
006E4B32   8B9564FFFFFF           mov     edx, [ebp+$FFFFFF64]
006E4B38   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdDtLcto : TDateEdit
|
006E4B3B   8B80A0040000           mov     eax, [eax+$04A0]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
006E4B41   E88A94E1FF             call    004FDFD0
006E4B46   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006E4B4B   8B00                   mov     eax, [eax]
006E4B4D   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'TipoLcto'
|
006E4B50   BAE04D6E00             mov     edx, $006E4DE0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006E4B55   E8AA50E0FF             call    004E9C04
006E4B5A   8D9560FFFFFF           lea     edx, [ebp+$FFFFFF60]
006E4B60   8B08                   mov     ecx, [eax]
006E4B62   FF5160                 call    dword ptr [ecx+$60]
006E4B65   8B9560FFFFFF           mov     edx, [ebp+$FFFFFF60]
006E4B6B   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdTipo : TEdit
|
006E4B6E   8B80B0030000           mov     eax, [eax+$03B0]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E4B74   E883EBDAFF             call    004936FC
006E4B79   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006E4B7E   8B00                   mov     eax, [eax]
006E4B80   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'Especie'
|
006E4B83   BA044E6E00             mov     edx, $006E4E04

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006E4B88   E87750E0FF             call    004E9C04
006E4B8D   8D955CFFFFFF           lea     edx, [ebp+$FFFFFF5C]
006E4B93   8B08                   mov     ecx, [eax]
006E4B95   FF5160                 call    dword ptr [ecx+$60]
006E4B98   8B955CFFFFFF           mov     edx, [ebp+$FFFFFF5C]
006E4B9E   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdEspecie : TComboEdit
|
006E4BA1   8B80B4030000           mov     eax, [eax+$03B4]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
006E4BA7   E82494E1FF             call    004FDFD0
006E4BAC   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006E4BB1   8B00                   mov     eax, [eax]
006E4BB3   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'Serie'
|
006E4BB6   BA144E6E00             mov     edx, $006E4E14

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006E4BBB   E84450E0FF             call    004E9C04
006E4BC0   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
006E4BC6   8B08                   mov     ecx, [eax]
006E4BC8   FF5160                 call    dword ptr [ecx+$60]
006E4BCB   8B9558FFFFFF           mov     edx, [ebp+$FFFFFF58]
006E4BD1   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdSerie : TEdit
|
006E4BD4   8B80A4030000           mov     eax, [eax+$03A4]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E4BDA   E81DEBDAFF             call    004936FC
006E4BDF   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006E4BE4   8B00                   mov     eax, [eax]
006E4BE6   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'NumLcto'
|
006E4BE9   BA244E6E00             mov     edx, $006E4E24

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006E4BEE   E81150E0FF             call    004E9C04
006E4BF3   8D9554FFFFFF           lea     edx, [ebp+$FFFFFF54]
006E4BF9   8B08                   mov     ecx, [eax]
006E4BFB   FF5160                 call    dword ptr [ecx+$60]
006E4BFE   8B9554FFFFFF           mov     edx, [ebp+$FFFFFF54]
006E4C04   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.EdLcto : TComboEdit
|
006E4C07   8B8078040000           mov     eax, [eax+$0478]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
006E4C0D   E8BE93E1FF             call    004FDFD0
006E4C12   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmImporta.btSele : TBitBtn
|
006E4C15   8B80A8030000           mov     eax, [eax+$03A8]
006E4C1B   66BEEBFF               mov     si, $FFEB

* Reference to: System.@CallDynaInst;
|
006E4C1F   E87CFBD1FF             call    004047A0
006E4C24   33C0                   xor     eax, eax
006E4C26   5A                     pop     edx
006E4C27   59                     pop     ecx
006E4C28   59                     pop     ecx
006E4C29   648910                 mov     fs:[eax], edx
006E4C2C   EB1E                   jmp     006E4C4C

* Reference to: System.@HandleOnException;
|
006E4C2E   E97DFFD1FF             jmp     00404BB0
006E4C33   0100                   add     [eax], eax
006E4C35   0000                   add     [eax], al
006E4C37   40                     inc     eax
006E4C38   95                     xchg    eax, ebp
006E4C39   40                     inc     eax
006E4C3A   003F                   add     [edi], bh
006E4C3C   4C                     dec     esp
006E4C3D   6E                     outsb
006E4C3E   008B4004E8DD           add     [ebx+$DDE80440], cl
006E4C44   EF                     out     dx, eax
006E4C45   D5                     aad
006E4C46   FFE8                   jmp     ax
006E4C48   6402D2                 add     dl, dl
006E4C4B   FF33                   push    dword ptr [ebx]
006E4C4D   C05A5959               rcr     byte ptr [edx+$59], $59
006E4C51   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006E4C54   68C84C6E00             push    $006E4CC8
006E4C59   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]
006E4C5F   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E4C64   E85708D2FF             call    004054C0
006E4C69   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: System.@LStrClr(void;void);
|
006E4C6C   E82B08D2FF             call    0040549C
006E4C71   8D45A8                 lea     eax, [ebp-$58]

* Reference to: System.@LStrClr(void;void);
|
006E4C74   E82308D2FF             call    0040549C
006E4C79   8D45AC                 lea     eax, [ebp-$54]

* Reference to: System.@LStrClr(void;void);
|
006E4C7C   E81B08D2FF             call    0040549C
006E4C81   8D45B0                 lea     eax, [ebp-$50]
006E4C84   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E4C89   E83208D2FF             call    004054C0
006E4C8E   8D45BC                 lea     eax, [ebp-$44]

* Reference to: System.@LStrClr(void;void);
|
006E4C91   E80608D2FF             call    0040549C
006E4C96   8D45C0                 lea     eax, [ebp-$40]

* Reference to: System.@LStrClr(void;void);
|
006E4C99   E8FE07D2FF             call    0040549C
006E4C9E   8D45C4                 lea     eax, [ebp-$3C]
006E4CA1   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E4CA6   E81508D2FF             call    004054C0
006E4CAB   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
006E4CAE   E8E907D2FF             call    0040549C
006E4CB3   8D45F4                 lea     eax, [ebp-$0C]
006E4CB6   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E4CBB   E80008D2FF             call    004054C0
006E4CC0   C3                     ret


* Reference to: System.@HandleFinally;
|
006E4CC1   E97200D2FF             jmp     00404D38
006E4CC6   EB91                   jmp     006E4C59

****** END
|
006E4CC8   5F                     pop     edi
006E4CC9   5E                     pop     esi
006E4CCA   5B                     pop     ebx
006E4CCB   8BE5                   mov     esp, ebp
006E4CCD   5D                     pop     ebp
006E4CCE   C3                     ret

*)
end;

procedure TFrmImporta.EdNatOperButtonClick(Sender : TObject);
begin
(*
006E4EAC   C3                     ret

*)
end;

procedure TFrmImporta.EdCondPagtoButtonClick(Sender : TObject);
begin
(*
006E4EB0   C3                     ret

*)
end;

procedure TFrmImporta.EdNatOperChange(Sender : TObject);
begin
(*
006E4EB4   55                     push    ebp
006E4EB5   8BEC                   mov     ebp, esp
006E4EB7   6A00                   push    $00
006E4EB9   6A00                   push    $00
006E4EBB   6A00                   push    $00
006E4EBD   53                     push    ebx
006E4EBE   8BD8                   mov     ebx, eax
006E4EC0   33C0                   xor     eax, eax
006E4EC2   55                     push    ebp

* Possible String Reference to: 'éâýÑÿëã[‹å]Ã@'
|
006E4EC3   68514F6E00             push    $006E4F51

***** TRY
|
006E4EC8   64FF30                 push    dword ptr fs:[eax]
006E4ECB   648920                 mov     fs:[eax], esp
006E4ECE   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmImporta.EdNatOper : TComboEdit
|
006E4ED1   8B8390040000           mov     eax, [ebx+$0490]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006E4ED7   E86090E1FF             call    004FDF3C
006E4EDC   837DFC00               cmp     dword ptr [ebp-$04], +$00
006E4EE0   743F                   jz      006E4F21
006E4EE2   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmImporta.EdNatOper : TComboEdit
|
006E4EE5   8B8390040000           mov     eax, [ebx+$0490]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006E4EEB   E84C90E1FF             call    004FDF3C
006E4EF0   8B45F8                 mov     eax, [ebp-$08]

|
006E4EF3   E8B8C10C00             call    007B10B0
006E4EF8   84C0                   test    al, al
006E4EFA   7425                   jz      006E4F21
006E4EFC   8D55F4                 lea     edx, [ebp-$0C]
006E4EFF   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006E4F04   8B00                   mov     eax, [eax]
006E4F06   8B8058090000           mov     eax, [eax+$0958]
006E4F0C   8B08                   mov     ecx, [eax]
006E4F0E   FF5160                 call    dword ptr [ecx+$60]
006E4F11   8B55F4                 mov     edx, [ebp-$0C]

* Reference to control TFrmImporta.EdNatureza : TEdit
|
006E4F14   8B8394040000           mov     eax, [ebx+$0494]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E4F1A   E8DDE7DAFF             call    004936FC
006E4F1F   EB0D                   jmp     006E4F2E
006E4F21   33D2                   xor     edx, edx

* Reference to control TFrmImporta.EdNatureza : TEdit
|
006E4F23   8B8394040000           mov     eax, [ebx+$0494]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E4F29   E8CEE7DAFF             call    004936FC
006E4F2E   33C0                   xor     eax, eax
006E4F30   5A                     pop     edx
006E4F31   59                     pop     ecx
006E4F32   59                     pop     ecx
006E4F33   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[‹å]Ã@'
|
006E4F36   68584F6E00             push    $006E4F58
006E4F3B   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006E4F3E   E85905D2FF             call    0040549C
006E4F43   8D45F8                 lea     eax, [ebp-$08]
006E4F46   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E4F4B   E87005D2FF             call    004054C0
006E4F50   C3                     ret


* Reference to: System.@HandleFinally;
|
006E4F51   E9E2FDD1FF             jmp     00404D38
006E4F56   EBE3                   jmp     006E4F3B

****** END
|
006E4F58   5B                     pop     ebx
006E4F59   8BE5                   mov     esp, ebp
006E4F5B   5D                     pop     ebp
006E4F5C   C3                     ret

*)
end;

procedure TFrmImporta.EdCondPagtoChange(Sender : TObject);
begin
(*
006E4F60   55                     push    ebp
006E4F61   8BEC                   mov     ebp, esp
006E4F63   6A00                   push    $00
006E4F65   6A00                   push    $00
006E4F67   6A00                   push    $00
006E4F69   53                     push    ebx
006E4F6A   8BD8                   mov     ebx, eax
006E4F6C   33C0                   xor     eax, eax
006E4F6E   55                     push    ebp

* Possible String Reference to: 'é/ýÑÿëã[‹å]ÃU‹ìƒÄÀS3É‰MÄ‰MÈ‰MÌ‰MÐ‰M
|                                À‰MÔ‰MØ‹Ø3ÀUh|Qn'
|
006E4F6F   6804506E00             push    $006E5004

***** TRY
|
006E4F74   64FF30                 push    dword ptr fs:[eax]
006E4F77   648920                 mov     fs:[eax], esp
006E4F7A   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmImporta.EdCondPagto : TComboEdit
|
006E4F7D   8B8398040000           mov     eax, [ebx+$0498]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006E4F83   E8B48FE1FF             call    004FDF3C
006E4F88   837DFC00               cmp     dword ptr [ebp-$04], +$00
006E4F8C   7446                   jz      006E4FD4
006E4F8E   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmImporta.EdCondPagto : TComboEdit
|
006E4F91   8B8398040000           mov     eax, [ebx+$0498]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006E4F97   E8A08FE1FF             call    004FDF3C
006E4F9C   8B55F8                 mov     edx, [ebp-$08]
006E4F9F   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
006E4FA4   8B00                   mov     eax, [eax]

|
006E4FA6   E8BDBB0C00             call    007B0B68
006E4FAB   84C0                   test    al, al
006E4FAD   7425                   jz      006E4FD4
006E4FAF   8D55F4                 lea     edx, [ebp-$0C]
006E4FB2   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
006E4FB7   8B00                   mov     eax, [eax]
006E4FB9   8B80A8060000           mov     eax, [eax+$06A8]
006E4FBF   8B08                   mov     ecx, [eax]
006E4FC1   FF5160                 call    dword ptr [ecx+$60]
006E4FC4   8B55F4                 mov     edx, [ebp-$0C]

* Reference to control TFrmImporta.EdCondicao : TEdit
|
006E4FC7   8B839C040000           mov     eax, [ebx+$049C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E4FCD   E82AE7DAFF             call    004936FC
006E4FD2   EB0D                   jmp     006E4FE1
006E4FD4   33D2                   xor     edx, edx

* Reference to control TFrmImporta.EdCondicao : TEdit
|
006E4FD6   8B839C040000           mov     eax, [ebx+$049C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E4FDC   E81BE7DAFF             call    004936FC
006E4FE1   33C0                   xor     eax, eax
006E4FE3   5A                     pop     edx
006E4FE4   59                     pop     ecx
006E4FE5   59                     pop     ecx
006E4FE6   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[‹å]ÃU‹ìƒÄÀS3É‰MÄ‰MÈ‰MÌ‰MÐ‰MÀ‰MÔ‰MØ
|                                ‹Ø3ÀUh|Qn'
|
006E4FE9   680B506E00             push    $006E500B
006E4FEE   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006E4FF1   E8A604D2FF             call    0040549C
006E4FF6   8D45F8                 lea     eax, [ebp-$08]
006E4FF9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E4FFE   E8BD04D2FF             call    004054C0
006E5003   C3                     ret


* Reference to: System.@HandleFinally;
|
006E5004   E92FFDD1FF             jmp     00404D38
006E5009   EBE3                   jmp     006E4FEE

****** END
|
006E500B   5B                     pop     ebx
006E500C   8BE5                   mov     esp, ebp
006E500E   5D                     pop     ebp
006E500F   C3                     ret

*)
end;

procedure TFrmImporta.EdCgcClieButtonClick(Sender : TObject);
begin
(*
006E5010   55                     push    ebp
006E5011   8BEC                   mov     ebp, esp
006E5013   83C4C0                 add     esp, -$40
006E5016   53                     push    ebx
006E5017   33C9                   xor     ecx, ecx
006E5019   894DC4                 mov     [ebp-$3C], ecx
006E501C   894DC8                 mov     [ebp-$38], ecx
006E501F   894DCC                 mov     [ebp-$34], ecx
006E5022   894DD0                 mov     [ebp-$30], ecx
006E5025   894DC0                 mov     [ebp-$40], ecx
006E5028   894DD4                 mov     [ebp-$2C], ecx
006E502B   894DD8                 mov     [ebp-$28], ecx
006E502E   8BD8                   mov     ebx, eax
006E5030   33C0                   xor     eax, eax
006E5032   55                     push    ebp

* Possible String Reference to: 'é·ûÑÿëÛ[‹å]Ãÿÿÿÿ'
|
006E5033   687C516E00             push    $006E517C

***** TRY
|
006E5038   64FF30                 push    dword ptr fs:[eax]
006E503B   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'Nome Fantasia'
|
006E503E   B890516E00             mov     eax, $006E5190
006E5043   8945F4                 mov     [ebp-$0C], eax

* Possible String Reference to: 'Razão Social'
|
006E5046   B8A8516E00             mov     eax, $006E51A8
006E504B   8945F8                 mov     [ebp-$08], eax

* Possible String Reference to: 'C.G.C.'
|
006E504E   B8C0516E00             mov     eax, $006E51C0
006E5053   8945FC                 mov     [ebp-$04], eax
006E5056   8D45F4                 lea     eax, [ebp-$0C]
006E5059   50                     push    eax
006E505A   6A02                   push    $02

* Possible String Reference to: 'Fantasia'
|
006E505C   B8D0516E00             mov     eax, $006E51D0
006E5061   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'Razao'
|
006E5064   B8E4516E00             mov     eax, $006E51E4
006E5069   8945EC                 mov     [ebp-$14], eax
006E506C   33C0                   xor     eax, eax
006E506E   8945F0                 mov     [ebp-$10], eax
006E5071   8D45E8                 lea     eax, [ebp-$18]
006E5074   50                     push    eax
006E5075   6A02                   push    $02
006E5077   6A00                   push    $00
006E5079   6A00                   push    $00
006E507B   6A00                   push    $00

* Possible String Reference to: 'Fantasia'
|
006E507D   B8D0516E00             mov     eax, $006E51D0
006E5082   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'Razao'
|
006E5085   B8E4516E00             mov     eax, $006E51E4
006E508A   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'CgcClie'
|
006E508D   B8F4516E00             mov     eax, $006E51F4
006E5092   8945E4                 mov     [ebp-$1C], eax
006E5095   8D55DC                 lea     edx, [ebp-$24]
006E5098   B902000000             mov     ecx, $00000002

* Possible String Reference to: 'CLIENTES'
|
006E509D   B804526E00             mov     eax, $006E5204

|
006E50A2   E8D142F5FF             call    00639378
006E50A7   84C0                   test    al, al
006E50A9   0F84A2000000           jz      006E5151
006E50AF   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006E50B4   8B00                   mov     eax, [eax]
006E50B6   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CgcClie'
|
006E50B9   BAF4516E00             mov     edx, $006E51F4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006E50BE   E8414BE0FF             call    004E9C04
006E50C3   8D55D8                 lea     edx, [ebp-$28]
006E50C6   8B08                   mov     ecx, [eax]
006E50C8   FF5160                 call    dword ptr [ecx+$60]
006E50CB   8B55D8                 mov     edx, [ebp-$28]

* Reference to control TFrmImporta.EdCgcClie : TComboEdit
|
006E50CE   8B83A8040000           mov     eax, [ebx+$04A8]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
006E50D4   E8F78EE1FF             call    004FDFD0
006E50D9   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006E50DE   8B00                   mov     eax, [eax]
006E50E0   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'Razao'
|
006E50E3   BAE4516E00             mov     edx, $006E51E4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006E50E8   E8174BE0FF             call    004E9C04
006E50ED   8D55D4                 lea     edx, [ebp-$2C]
006E50F0   8B08                   mov     ecx, [eax]
006E50F2   FF5160                 call    dword ptr [ecx+$60]
006E50F5   8B55D4                 mov     edx, [ebp-$2C]

* Reference to control TFrmImporta.EdRazaoClie : TEdit
|
006E50F8   8B83AC040000           mov     eax, [ebx+$04AC]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006E50FE   E8F9E5DAFF             call    004936FC
006E5103   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006E5108   8B00                   mov     eax, [eax]
006E510A   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CgcClie'
|
006E510D   BAF4516E00             mov     edx, $006E51F4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006E5112   E8ED4AE0FF             call    004E9C04
006E5117   8D55C0                 lea     edx, [ebp-$40]
006E511A   8B08                   mov     ecx, [eax]
006E511C   FF5160                 call    dword ptr [ecx+$60]
006E511F   8B55C0                 mov     edx, [ebp-$40]
006E5122   8D45C4                 lea     eax, [ebp-$3C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006E5125   E89A3BD3FF             call    00418CC4
006E512A   8D4DC4                 lea     ecx, [ebp-$3C]
006E512D   A1E4AF7D00             mov     eax, dword ptr [$007DAFE4]
006E5132   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CgcClie'
|
006E5134   BAF4516E00             mov     edx, $006E51F4

* Reference to : tArrayTable._PROC_007B767C()
|
006E5139   E83E250D00             call    007B767C
006E513E   A1E4AF7D00             mov     eax, dword ptr [$007DAFE4]
006E5143   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006E5145   E8924C0D00             call    007B9DDC
006E514A   8BC3                   mov     eax, ebx

|
006E514C   E823EEFFFF             call    006E3F74
006E5151   33C0                   xor     eax, eax
006E5153   5A                     pop     edx
006E5154   59                     pop     ecx
006E5155   59                     pop     ecx
006E5156   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[‹å]Ãÿÿÿÿ'
|
006E5159   6883516E00             push    $006E5183
006E515E   8D45C0                 lea     eax, [ebp-$40]

* Reference to: System.@LStrClr(void;void);
|
006E5161   E83603D2FF             call    0040549C
006E5166   8D45C4                 lea     eax, [ebp-$3C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006E5169   E80AF4D2FF             call    00414578
006E516E   8D45D4                 lea     eax, [ebp-$2C]
006E5171   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006E5176   E84503D2FF             call    004054C0
006E517B   C3                     ret


* Reference to: System.@HandleFinally;
|
006E517C   E9B7FBD1FF             jmp     00404D38
006E5181   EBDB                   jmp     006E515E

****** END
|
006E5183   5B                     pop     ebx
006E5184   8BE5                   mov     esp, ebp
006E5186   5D                     pop     ebp
006E5187   C3                     ret

*)
end;

procedure TFrmImporta.EdCgcClieKeyPress(Sender : TObject);
begin
(*
006E5210   C3                     ret

*)
end;

end.