unit Fecham;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet, ToolEdit,
  CurrEdit, JvToolEdit, ExtCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, Spin, Mask, JvExMask, AlignEd,
  Buttons;
  
type
  TfrmFecha=class(TForm)
    lbTitulo: TLabel;
    pnTopo: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edMesa: TEdit;
    edNumPessoa: TAlignEd;
    edVlrTotal: TAlignEd;
    edCodMesa: TJvComboEdit;
    edVlrPessoa: TAlignEd;
    dbgArecItem: TJvDBGrid;
    edDescrTipo: TEdit;
    edTipoPgto: TJvComboEdit;
    Label5: TLabel;
    Label6: TLabel;
    tbFecha: TIBDataSet;
    edTotPago: TJvValidateEdit;
    Label7: TLabel;
    LbDiferenca: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    EdTroco: TJvValidateEdit;
    sbNormal: TSpeedButton;
    ckPrcServ: TCheckBox;
    Bevel2: TBevel;
    Bevel3: TBevel;
    sbFechar: TSpeedButton;
    nbFormas: TNotebook;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    EdCodBanco: TJvComboEdit;
    EdBanco: TEdit;
    EdAgencia: TJvValidateEdit;
    EdContaCorr: TJvValidateEdit;
    EdNumero: TEdit;
    EdEmissor: TEdit;
    EdDtDataCheq: TJvDateEdit;
    Label14: TLabel;
    Label15: TLabel;
    EdCodCard: TJvComboEdit;
    EdCartao: TEdit;
    Label16: TLabel;
    EdAutorizacao: TEdit;
    Label17: TLabel;
    EdDtVencto: TJvDateEdit;
    EdVencto: TJvDateEdit;
    Label19: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    EdVlrMesa: TJvValidateEdit;
    EdImpressora: TJvComboEdit;
    Label18: TLabel;
    edVlrTipo: TCurrencyEdit;
    SpinButton1: TSpinButton;
    LbDesconto: TLabel;
    EdPrcDesc: TJvValidateEdit;
    EdVlrDesc: TJvValidateEdit;
    Label21: TLabel;
    EdVlrMerc: TJvValidateEdit;
    Label22: TLabel;
    Label23: TLabel;
    lbMais: TLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure FormClose(Sender : TObject);
    procedure edTipoPgtoButtonClick(Sender : TObject);
    procedure btAdicionarClick(Sender : TObject);
    procedure edVlrTipoKeyDown(Sender : TObject);
    procedure edCodMesaChange(Sender : TObject);
    procedure edTipoPgtoChange(Sender : TObject);
    procedure edVlrTipoEnter(Sender : TObject);
    procedure edVlrTipoExit(Sender : TObject);
    procedure edVlrTipoKeyPress(Sender : TObject);
    procedure edTipoPgtoExit(Sender : TObject);
    procedure sbNormalClick(Sender : TObject);
    procedure sbFecharClick(Sender : TObject);
    procedure EdCodBancoButtonClick(Sender : TObject);
    procedure EdCodBancoChange(Sender : TObject);
    procedure EdCodCardButtonClick(Sender : TObject);
    procedure EdCodCardChange(Sender : TObject);
    procedure ckPrcServClick(Sender : TObject);
    procedure SpeedButton1Click(Sender : TObject);
    procedure SpeedButton2Click(Sender : TObject);
    procedure EdImpressoraButtonClick(Sender : TObject);
    procedure SpinButton1DownClick(Sender : TObject);
    procedure SpinButton1UpClick(Sender : TObject);
    procedure EdPrcDescChange(Sender : TObject);
    procedure SpeedButton3Click(Sender : TObject);
    procedure SpeedButton4Click(Sender : TObject);
    procedure _PROC_00694EF6(Sender : TObject);
    procedure _PROC_00694F1A(Sender : TObject);
    procedure _PROC_00694F3D(Sender : TObject);
    procedure _PROC_0069533F(Sender : TObject);
    procedure _PROC_00695416(Sender : TObject);
    procedure _PROC_00695426(Sender : TObject);
    procedure _PROC_0069556D(Sender : TObject);
    procedure _PROC_00695668(Sender : TObject);
    procedure _PROC_006956BD(Sender : TObject);
    procedure _PROC_006957E8(Sender : TObject);
    procedure _PROC_00695845(Sender : TObject);
    procedure _PROC_00697946(Sender : TObject);
    procedure _PROC_006981C8(Sender : TObject);
    procedure _PROC_006981D5(Sender : TObject);
    procedure _PROC_006981F9(Sender : TObject);
    procedure _PROC_00698345(Sender : TObject);
    procedure _PROC_00698BA9(Sender : TObject);
    procedure _PROC_00699349(Sender : TObject);
    procedure _PROC_00699470(Sender : TObject);
    procedure _PROC_0069967D(Sender : TObject);
    procedure _PROC_00699764(Sender : TObject);
    procedure _PROC_006998B2(Sender : TObject);
    procedure _PROC_00699A55(Sender : TObject);
    procedure _PROC_0069AB02(Sender : TObject);
    procedure _PROC_0069AB81(Sender : TObject);
    procedure _PROC_0069AB9D(Sender : TObject);
    procedure _PROC_0069ACF1(Sender : TObject);
    procedure _PROC_0069B067(Sender : TObject);
    procedure _PROC_0069B08E(Sender : TObject);
    procedure _PROC_0069B12D(Sender : TObject);
    procedure _PROC_0069B2B5(Sender : TObject);
    procedure _PROC_0069B375(Sender : TObject);
    procedure _PROC_0069B6EE(Sender : TObject);
    procedure _PROC_0069B90D(Sender : TObject);
    procedure _PROC_0069B949(Sender : TObject);
    procedure _PROC_0069BA95(Sender : TObject);
    procedure _PROC_0069BADD(Sender : TObject);
    procedure _PROC_0069BE23(Sender : TObject);
    procedure _PROC_0069BE4C(Sender : TObject);
    procedure _PROC_0069BEF2(Sender : TObject);
    procedure _PROC_0069BF6D(Sender : TObject);
    procedure _PROC_0069C2D6(Sender : TObject);
    procedure _PROC_0069C33A(Sender : TObject);
    procedure _PROC_0069CA45(Sender : TObject);
    procedure _PROC_0069CAD9(Sender : TObject);
    procedure _PROC_0069CFAA(Sender : TObject);
    procedure _PROC_0069D0ED(Sender : TObject);
    procedure _PROC_0069D545(Sender : TObject);
    procedure _PROC_0069D576(Sender : TObject);
    procedure _PROC_0069D775(Sender : TObject);
    procedure _PROC_0069D7A6(Sender : TObject);
    procedure _PROC_0069D891(Sender : TObject);
    procedure _PROC_0069DAF4(Sender : TObject);
    procedure _PROC_0069DE84(Sender : TObject);
    procedure _PROC_0069DFC0(Sender : TObject);
    procedure _PROC_0069E0AC(Sender : TObject);
    procedure _PROC_0069E0F9(Sender : TObject);
    procedure _PROC_0069E128(Sender : TObject);
    procedure _PROC_0069E130(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  frmFecha: TfrmFecha;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TfrmFecha.FormCreate(Sender : TObject);
begin
(*
006985A8   55                     push    ebp
006985A9   8BEC                   mov     ebp, esp
006985AB   53                     push    ebx
006985AC   8BD8                   mov     ebx, eax
006985AE   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006985B3   8B00                   mov     eax, [eax]
006985B5   8B8094010000           mov     eax, [eax+$0194]
006985BB   8B10                   mov     edx, [eax]
006985BD   FF5244                 call    dword ptr [edx+$44]
006985C0   8BD0                   mov     edx, eax

* Reference to control TfrmFecha.ckPrcServ : TCheckBox
|
006985C2   8B8358030000           mov     eax, [ebx+$0358]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
006985C8   E81FB0DFFF             call    004935EC
006985CD   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006985D2   8B00                   mov     eax, [eax]
006985D4   8B8094010000           mov     eax, [eax+$0194]
006985DA   8B10                   mov     edx, [eax]
006985DC   FF5244                 call    dword ptr [edx+$44]
006985DF   8BD0                   mov     edx, eax

* Reference to control TfrmFecha.EdVlrMesa : TJvValidateEdit
|
006985E1   8B83CC030000           mov     eax, [ebx+$03CC]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
006985E7   E800B0DFFF             call    004935EC
006985EC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006985F1   8B00                   mov     eax, [eax]
006985F3   8B8094010000           mov     eax, [eax+$0194]
006985F9   8B10                   mov     edx, [eax]
006985FB   FF5244                 call    dword ptr [edx+$44]
006985FE   8BD0                   mov     edx, eax

* Reference to control TfrmFecha.lbMais : TLabel
|
00698600   8B83FC030000           mov     eax, [ebx+$03FC]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
00698606   E8E1AFDFFF             call    004935EC
0069860B   33D2                   xor     edx, edx

* Reference to control TfrmFecha.nbFormas : TNotebook
|
0069860D   8B8368030000           mov     eax, [ebx+$0368]

* Reference to: ExtCtrls.TNotebook.SetPageIndex(TNotebook;Integer);
|
00698613   E82C10DBFF             call    00449644
00698618   8BC3                   mov     eax, ebx

|
0069861A   E84DCFFFFF             call    0069556C
0069861F   A11CAF7D00             mov     eax, dword ptr [$007DAF1C]
00698624   33D2                   xor     edx, edx
00698626   8910                   mov     [eax], edx
00698628   5B                     pop     ebx
00698629   5D                     pop     ebp
0069862A   C3                     ret

*)
end;

procedure TfrmFecha.FormShow(Sender : TObject);
begin
(*
0069862C   55                     push    ebp
0069862D   8BEC                   mov     ebp, esp
0069862F   B904000000             mov     ecx, $00000004
00698634   6A00                   push    $00
00698636   6A00                   push    $00
00698638   49                     dec     ecx
00698639   75F9                   jnz     00698634
0069863B   51                     push    ecx
0069863C   53                     push    ebx
0069863D   8BD8                   mov     ebx, eax
0069863F   33C0                   xor     eax, eax
00698641   55                     push    ebp

* Possible String Reference to: 'È.∆÷ˇÎ›[ãÂ]√'
|
00698642   6805876900             push    $00698705

***** TRY
|
00698647   64FF30                 push    dword ptr fs:[eax]
0069864A   648920                 mov     fs:[eax], esp
0069864D   8BC3                   mov     eax, ebx

|
0069864F   E83C520000             call    0069D890
00698654   DDD8                   fstp    st(0)
00698656   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069865B   DB28                   fld     tbyte ptr [eax]
0069865D   8D45EC                 lea     eax, [ebp-$14]

* Reference to: Variants.@VarFromReal;
|
00698660   E82306D8FF             call    00418C88
00698665   8D45EC                 lea     eax, [ebp-$14]
00698668   50                     push    eax
00698669   8D55DC                 lea     edx, [ebp-$24]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
0069866C   8B833C030000           mov     eax, [ebx+$033C]

|
00698672   E841ABFBFF             call    006531B8
00698677   8D55DC                 lea     edx, [ebp-$24]
0069867A   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069867B   E8304AD8FF             call    0041D0B0
00698680   8D45EC                 lea     eax, [ebp-$14]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
00698683   E860E5D7FF             call    00416BE8
00698688   83C4F4                 add     esp, -$0C
0069868B   DB3C24                 fstp    tbyte ptr [esp]
0069868E   9B                     wait
0069868F   8D55FC                 lea     edx, [ebp-$04]

* Possible String Reference to: '###,###,##0.00'
|
00698692   B81C876900             mov     eax, $0069871C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
00698697   E8A04ED7FF             call    0040D53C
0069869C   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
0069869F   8B8344030000           mov     eax, [ebx+$0344]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006986A5   E852B0DFFF             call    004936FC
006986AA   8B15E4A07D00           mov     edx, [$007DA0E4]
006986B0   8B12                   mov     edx, [edx]

* Reference to control TfrmFecha.EdImpressora : TJvComboEdit
|
006986B2   8B83D0030000           mov     eax, [ebx+$03D0]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
006986B8   E81359E6FF             call    004FDFD0
006986BD   A130AE7D00             mov     eax, dword ptr [$007DAE30]
006986C2   8B00                   mov     eax, [eax]
006986C4   8B1554AE7D00           mov     edx, [$007DAE54]
006986CA   8B12                   mov     edx, [edx]
006986CC   8982DC000000           mov     [edx+$00DC], eax
006986D2   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
006986DC   33C0                   xor     eax, eax
006986DE   5A                     pop     edx
006986DF   59                     pop     ecx
006986E0   59                     pop     ecx
006986E1   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
006986E4   680C876900             push    $0069870C
006986E9   8D45DC                 lea     eax, [ebp-$24]

* Reference to object Variant
|
006986EC   8B1524114000           mov     edx, [$00401124]
006986F2   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006986F7   E8A0D9D6FF             call    0040609C
006986FC   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006986FF   E898CDD6FF             call    0040549C
00698704   C3                     ret


* Reference to: System.@HandleFinally;
|
00698705   E92EC6D6FF             jmp     00404D38
0069870A   EBDD                   jmp     006986E9

****** END
|
0069870C   5B                     pop     ebx
0069870D   8BE5                   mov     esp, ebp
0069870F   5D                     pop     ebp
00698710   C3                     ret

*)
end;

procedure TfrmFecha.FormClose(Sender : TObject);
begin
(*
0069872C   55                     push    ebp
0069872D   8BEC                   mov     ebp, esp
0069872F   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
00698734   8B15B4B67D00           mov     edx, [$007DB6B4]
0069873A   8B12                   mov     edx, [edx]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069873C   E8AFCDD6FF             call    004054F0
00698741   5D                     pop     ebp
00698742   C3                     ret

*)
end;

procedure TfrmFecha.edTipoPgtoButtonClick(Sender : TObject);
begin
(*
00698744   55                     push    ebp
00698745   8BEC                   mov     ebp, esp
00698747   83C4EC                 add     esp, -$14
0069874A   53                     push    ebx
0069874B   33C9                   xor     ecx, ecx
0069874D   894DEC                 mov     [ebp-$14], ecx
00698750   8BD8                   mov     ebx, eax
00698752   33C0                   xor     eax, eax
00698754   55                     push    ebp

* Possible String Reference to: 'ÈP≈÷ˇÎ[ãÂ]√'
|
00698755   68E3876900             push    $006987E3

***** TRY
|
0069875A   64FF30                 push    dword ptr fs:[eax]
0069875D   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'Forma'
|
00698760   B8F8876900             mov     eax, $006987F8
00698765   8945F8                 mov     [ebp-$08], eax

* Possible String Reference to: 'DescriÁ„o'
|
00698768   B808886900             mov     eax, $00698808
0069876D   8945FC                 mov     [ebp-$04], eax
00698770   8D45F8                 lea     eax, [ebp-$08]
00698773   50                     push    eax
00698774   6A01                   push    $01
00698776   6A00                   push    $00

* Possible String Reference to: 'TIPOPGTO'
|
00698778   B81C886900             mov     eax, $0069881C
0069877D   8945F0                 mov     [ebp-$10], eax

* Possible String Reference to: 'DESCRICAO'
|
00698780   B830886900             mov     eax, $00698830
00698785   8945F4                 mov     [ebp-$0C], eax
00698788   8D55F0                 lea     edx, [ebp-$10]
0069878B   B901000000             mov     ecx, $00000001

* Possible String Reference to: 'TIPOPGTO'
|
00698790   B81C886900             mov     eax, $0069881C

|
00698795   E8BA0AFAFF             call    00639254
0069879A   84C0                   test    al, al
0069879C   742F                   jz      006987CD
0069879E   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006987A3   8B00                   mov     eax, [eax]
006987A5   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'TIPOPGTO'
|
006987A8   BA1C886900             mov     edx, $0069881C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006987AD   E85214E5FF             call    004E9C04
006987B2   8D55EC                 lea     edx, [ebp-$14]
006987B5   8B08                   mov     ecx, [eax]
006987B7   FF5160                 call    dword ptr [ecx+$60]
006987BA   8B55EC                 mov     edx, [ebp-$14]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
006987BD   8B832C030000           mov     eax, [ebx+$032C]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
006987C3   E8A856E6FF             call    004FDE70

* Reference to : TFrmInfoAtu._PROC_007A600C()
|
006987C8   E83FD81000             call    007A600C
006987CD   33C0                   xor     eax, eax
006987CF   5A                     pop     edx
006987D0   59                     pop     ecx
006987D1   59                     pop     ecx
006987D2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
006987D5   68EA876900             push    $006987EA
006987DA   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
006987DD   E8BACCD6FF             call    0040549C
006987E2   C3                     ret


* Reference to: System.@HandleFinally;
|
006987E3   E950C5D6FF             jmp     00404D38
006987E8   EBF0                   jmp     006987DA

****** END
|
006987EA   5B                     pop     ebx
006987EB   8BE5                   mov     esp, ebp
006987ED   5D                     pop     ebp
006987EE   C3                     ret

*)
end;

procedure TfrmFecha.btAdicionarClick(Sender : TObject);
begin
(*
0069883C   55                     push    ebp
0069883D   8BEC                   mov     ebp, esp

|
0069883F   E864030000             call    00698BA8
00698844   5D                     pop     ebp
00698845   C3                     ret

*)
end;

procedure TfrmFecha.edVlrTipoKeyDown(Sender : TObject);
begin
(*
00698848   55                     push    ebp
00698849   8BEC                   mov     ebp, esp
0069884B   6683390D               cmp     word ptr [ecx], +$0D
0069884F   7507                   jnz     00698858

|
00698851   E852030000             call    00698BA8
00698856   EB11                   jmp     00698869
00698858   66833926               cmp     word ptr [ecx], +$26
0069885C   750B                   jnz     00698869

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
0069885E   8B802C030000           mov     eax, [eax+$032C]

|
00698864   E877D81000             call    007A60E0
00698869   5D                     pop     ebp
0069886A   C20400                 ret     $0004

*)
end;

procedure TfrmFecha.edCodMesaChange(Sender : TObject);
begin
(*
00698870   55                     push    ebp
00698871   8BEC                   mov     ebp, esp
00698873   33C9                   xor     ecx, ecx
00698875   51                     push    ecx
00698876   51                     push    ecx
00698877   51                     push    ecx
00698878   51                     push    ecx
00698879   51                     push    ecx
0069887A   53                     push    ebx
0069887B   8BD8                   mov     ebx, eax
0069887D   33C0                   xor     eax, eax
0069887F   55                     push    ebp
00698880   6828896900             push    $00698928

***** TRY
|
00698885   64FF30                 push    dword ptr fs:[eax]
00698888   648920                 mov     fs:[eax], esp
0069888B   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TfrmFecha.edCodMesa : TJvComboEdit
|
0069888E   8B831C030000           mov     eax, [ebx+$031C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00698894   E8A356E6FF             call    004FDF3C
00698899   837DFC00               cmp     dword ptr [ebp-$04], +$00
0069889D   7451                   jz      006988F0

* Possible String Reference to: 'DESCRICAO'
|
0069889F   683C896900             push    $0069893C
006988A4   8D45F8                 lea     eax, [ebp-$08]
006988A7   50                     push    eax
006988A8   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TfrmFecha.edCodMesa : TJvComboEdit
|
006988AB   8B831C030000           mov     eax, [ebx+$031C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006988B1   E88656E6FF             call    004FDF3C
006988B6   8B45EC                 mov     eax, [ebp-$14]
006988B9   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006988BC   E85FB21000             call    007A3B20
006988C1   8B4DF0                 mov     ecx, [ebp-$10]
006988C4   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODMESA = '
|
006988C7   BA50896900             mov     edx, $00698950

* Reference to: System.@LStrCat3;
|
006988CC   E8D7CED6FF             call    004057A8
006988D1   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'MESAS'
|
006988D4   BA64896900             mov     edx, $00698964
006988D9   33C0                   xor     eax, eax

|
006988DB   E8300A1100             call    007A9310
006988E0   8B55F8                 mov     edx, [ebp-$08]

* Reference to control TfrmFecha.edMesa : TEdit
|
006988E3   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006988E9   E80EAEDFFF             call    004936FC
006988EE   EB0D                   jmp     006988FD
006988F0   33D2                   xor     edx, edx

* Reference to control TfrmFecha.edMesa : TEdit
|
006988F2   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006988F8   E8FFADDFFF             call    004936FC
006988FD   33C0                   xor     eax, eax
006988FF   5A                     pop     edx
00698900   59                     pop     ecx
00698901   59                     pop     ecx
00698902   648910                 mov     fs:[eax], edx

****** FINALLY
|
00698905   682F896900             push    $0069892F
0069890A   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0069890D   E88ACBD6FF             call    0040549C
00698912   8D45F0                 lea     eax, [ebp-$10]
00698915   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069891A   E8A1CBD6FF             call    004054C0
0069891F   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00698922   E875CBD6FF             call    0040549C
00698927   C3                     ret


* Reference to: System.@HandleFinally;
|
00698928   E90BC4D6FF             jmp     00404D38
0069892D   EBDB                   jmp     0069890A

****** END
|
0069892F   5B                     pop     ebx
00698930   8BE5                   mov     esp, ebp
00698932   5D                     pop     ebp
00698933   C3                     ret

*)
end;

procedure TfrmFecha.edTipoPgtoChange(Sender : TObject);
begin
(*
0069896C   55                     push    ebp
0069896D   8BEC                   mov     ebp, esp
0069896F   33C9                   xor     ecx, ecx
00698971   51                     push    ecx
00698972   51                     push    ecx
00698973   51                     push    ecx
00698974   51                     push    ecx
00698975   51                     push    ecx
00698976   51                     push    ecx
00698977   51                     push    ecx
00698978   53                     push    ebx
00698979   8BD8                   mov     ebx, eax
0069897B   33C0                   xor     eax, eax
0069897D   55                     push    ebp

* Possible String Reference to: 'È!¬÷ˇÎÕ[ãÂ]√'
|
0069897E   68128B6900             push    $00698B12

***** TRY
|
00698983   64FF30                 push    dword ptr fs:[eax]
00698986   648920                 mov     fs:[eax], esp
00698989   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
0069898C   8B832C030000           mov     eax, [ebx+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00698992   E8A555E6FF             call    004FDF3C
00698997   837DF800               cmp     dword ptr [ebp-$08], +$00
0069899B   0F842B010000           jz      00698ACC
006989A1   6A00                   push    $00
006989A3   8D45FC                 lea     eax, [ebp-$04]
006989A6   B901000000             mov     ecx, $00000001

* Reference to object tLookup
|
006989AB   8B1514515D00           mov     edx, [$005D5114]

* Reference to: System.@DynArraySetLength;
|
006989B1   E8FAE1D6FF             call    00406BB0
006989B6   83C404                 add     esp, +$04

* Possible String Reference to: 'DESCRICAO'
|
006989B9   B8288B6900             mov     eax, $00698B28
006989BE   8945F0                 mov     [ebp-$10], eax

* Possible String Reference to: 'TIPO'
|
006989C1   B83C8B6900             mov     eax, $00698B3C
006989C6   8945F4                 mov     [ebp-$0C], eax
006989C9   8D45F0                 lea     eax, [ebp-$10]
006989CC   50                     push    eax
006989CD   6A01                   push    $01
006989CF   8D45FC                 lea     eax, [ebp-$04]
006989D2   50                     push    eax
006989D3   8D55E4                 lea     edx, [ebp-$1C]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
006989D6   8B832C030000           mov     eax, [ebx+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006989DC   E85B55E6FF             call    004FDF3C
006989E1   8B45E4                 mov     eax, [ebp-$1C]
006989E4   8D55E8                 lea     edx, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006989E7   E834B11000             call    007A3B20
006989EC   8B4DE8                 mov     ecx, [ebp-$18]
006989EF   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'TIPOPGTO = '
|
006989F2   BA4C8B6900             mov     edx, $00698B4C

* Reference to: System.@LStrCat3;
|
006989F7   E8ACCDD6FF             call    004057A8
006989FC   8B4DEC                 mov     ecx, [ebp-$14]

* Possible String Reference to: 'TIPOPGTO'
|
006989FF   BA608B6900             mov     edx, $00698B60
00698A04   33C0                   xor     eax, eax

* Reference to: IBSecurityEditor.TfrmIBSecurityEditor.AddParam(TfrmIBSecurityEditor;AnsiString;AnsiString);
|
00698A06   E8F50A1100             call    007A9500
00698A0B   8B45FC                 mov     eax, [ebp-$04]
00698A0E   8B10                   mov     edx, [eax]

* Reference to control TfrmFecha.edDescrTipo : TEdit
|
00698A10   8B8328030000           mov     eax, [ebx+$0328]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00698A16   E8E1ACDFFF             call    004936FC
00698A1B   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TEdit.Owner : TComponent
|
00698A1E   8B4004                 mov     eax, [eax+$04]
00698A21   BA748B6900             mov     edx, $00698B74

* Reference to: System.@LStrCmp;
|
00698A26   E87DCED6FF             call    004058A8
00698A2B   7512                   jnz     00698A3F
00698A2D   33D2                   xor     edx, edx

* Reference to control TfrmFecha.nbFormas : TNotebook
|
00698A2F   8B8368030000           mov     eax, [ebx+$0368]

* Reference to: ExtCtrls.TNotebook.SetPageIndex(TNotebook;Integer);
|
00698A35   E80A0CDBFF             call    00449644
00698A3A   E99A000000             jmp     00698AD9
00698A3F   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TNotebook.Owner : TComponent
|
00698A42   8B4004                 mov     eax, [eax+$04]
00698A45   BA808B6900             mov     edx, $00698B80

* Reference to: System.@LStrCmp;
|
00698A4A   E859CED6FF             call    004058A8
00698A4F   7412                   jz      00698A63
00698A51   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TComponent.Owner : TComponent
|
00698A54   8B4004                 mov     eax, [eax+$04]
00698A57   BA8C8B6900             mov     edx, $00698B8C

* Reference to: System.@LStrCmp;
|
00698A5C   E847CED6FF             call    004058A8
00698A61   7512                   jnz     00698A75
00698A63   BA01000000             mov     edx, $00000001

* Reference to control TfrmFecha.nbFormas : TNotebook
|
00698A68   8B8368030000           mov     eax, [ebx+$0368]

* Reference to: ExtCtrls.TNotebook.SetPageIndex(TNotebook;Integer);
|
00698A6E   E8D10BDBFF             call    00449644
00698A73   EB64                   jmp     00698AD9
00698A75   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TNotebook.Owner : TComponent
|
00698A78   8B4004                 mov     eax, [eax+$04]
00698A7B   BA988B6900             mov     edx, $00698B98

* Reference to: System.@LStrCmp;
|
00698A80   E823CED6FF             call    004058A8
00698A85   7512                   jnz     00698A99
00698A87   BA02000000             mov     edx, $00000002

* Reference to control TfrmFecha.nbFormas : TNotebook
|
00698A8C   8B8368030000           mov     eax, [ebx+$0368]

* Reference to: ExtCtrls.TNotebook.SetPageIndex(TNotebook;Integer);
|
00698A92   E8AD0BDBFF             call    00449644
00698A97   EB40                   jmp     00698AD9
00698A99   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TNotebook.Owner : TComponent
|
00698A9C   8B4004                 mov     eax, [eax+$04]
00698A9F   BAA48B6900             mov     edx, $00698BA4

* Reference to: System.@LStrCmp;
|
00698AA4   E8FFCDD6FF             call    004058A8
00698AA9   7512                   jnz     00698ABD
00698AAB   BA03000000             mov     edx, $00000003

* Reference to control TfrmFecha.nbFormas : TNotebook
|
00698AB0   8B8368030000           mov     eax, [ebx+$0368]

* Reference to: ExtCtrls.TNotebook.SetPageIndex(TNotebook;Integer);
|
00698AB6   E8890BDBFF             call    00449644
00698ABB   EB1C                   jmp     00698AD9
00698ABD   33D2                   xor     edx, edx

* Reference to control TfrmFecha.nbFormas : TNotebook
|
00698ABF   8B8368030000           mov     eax, [ebx+$0368]

* Reference to: ExtCtrls.TNotebook.SetPageIndex(TNotebook;Integer);
|
00698AC5   E87A0BDBFF             call    00449644
00698ACA   EB0D                   jmp     00698AD9
00698ACC   33D2                   xor     edx, edx

* Reference to control TfrmFecha.edDescrTipo : TEdit
|
00698ACE   8B8328030000           mov     eax, [ebx+$0328]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00698AD4   E823ACDFFF             call    004936FC
00698AD9   33C0                   xor     eax, eax
00698ADB   5A                     pop     edx
00698ADC   59                     pop     ecx
00698ADD   59                     pop     ecx
00698ADE   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
00698AE1   68198B6900             push    $00698B19
00698AE6   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrClr(void;void);
|
00698AE9   E8AEC9D6FF             call    0040549C
00698AEE   8D45E8                 lea     eax, [ebp-$18]
00698AF1   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00698AF6   E8C5C9D6FF             call    004054C0
00698AFB   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
00698AFE   E899C9D6FF             call    0040549C
00698B03   8D45FC                 lea     eax, [ebp-$04]

* Reference to object tLookup
|
00698B06   8B1514515D00           mov     edx, [$005D5114]

* Reference to: System.@DynArrayClear(Pointer;Pointer;Pointer);
|
00698B0C   E8BFE1D6FF             call    00406CD0
00698B11   C3                     ret


* Reference to: System.@HandleFinally;
|
00698B12   E921C2D6FF             jmp     00404D38
00698B17   EBCD                   jmp     00698AE6

****** END
|
00698B19   5B                     pop     ebx
00698B1A   8BE5                   mov     esp, ebp
00698B1C   5D                     pop     ebp
00698B1D   C3                     ret

*)
end;

procedure TfrmFecha.edVlrTipoEnter(Sender : TObject);
begin
(*
00699458   55                     push    ebp
00699459   8BEC                   mov     ebp, esp

|
0069945B   E8E0CA1000             call    007A5F40
00699460   5D                     pop     ebp
00699461   C3                     ret

*)
end;

procedure TfrmFecha.edVlrTipoExit(Sender : TObject);
begin
(*
00699464   55                     push    ebp
00699465   8BEC                   mov     ebp, esp

|
00699467   E8ECCA1000             call    007A5F58
0069946C   5D                     pop     ebp
0069946D   C3                     ret

*)
end;

procedure TfrmFecha.edVlrTipoKeyPress(Sender : TObject);
begin
(*
006996DC   55                     push    ebp
006996DD   8BEC                   mov     ebp, esp
006996DF   6A00                   push    $00
006996E1   6A00                   push    $00
006996E3   53                     push    ebx
006996E4   8BD8                   mov     ebx, eax
006996E6   33C0                   xor     eax, eax
006996E8   55                     push    ebp

* Possible String Reference to: 'Èﬁµ÷ˇÎË[YY]√ç@'
|
006996E9   6855976900             push    $00699755

***** TRY
|
006996EE   64FF30                 push    dword ptr fs:[eax]
006996F1   648920                 mov     fs:[eax], esp
006996F4   803974                 cmp     byte ptr [ecx], $74
006996F7   7405                   jz      006996FE
006996F9   803954                 cmp     byte ptr [ecx], $54
006996FC   7539                   jnz     00699737
006996FE   6A00                   push    $00
00699700   6A00                   push    $00
00699702   6A00                   push    $00
00699704   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
00699707   8B8344030000           mov     eax, [ebx+$0344]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069970D   E8BA9FDFFF             call    004936CC
00699712   8B45F8                 mov     eax, [ebp-$08]
00699715   8D55FC                 lea     edx, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
00699718   E867A11000             call    007A3884
0069971D   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.StrToFloatDef(AnsiString;Extended):Extended;overload;
|
00699720   E8033FD7FF             call    0040D628
00699725   83C4F4                 add     esp, -$0C
00699728   DB3C24                 fstp    tbyte ptr [esp]
0069972B   9B                     wait

* Reference to control TfrmFecha.edVlrTipo : TCurrencyEdit
|
0069972C   8B83D8030000           mov     eax, [ebx+$03D8]

* Reference to : TCurrencyEdit._PROC_006291C0()
|
00699732   E889FAF8FF             call    006291C0
00699737   33C0                   xor     eax, eax
00699739   5A                     pop     edx
0069973A   59                     pop     ecx
0069973B   59                     pop     ecx
0069973C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[YY]√ç@'
|
0069973F   685C976900             push    $0069975C
00699744   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
00699747   E850BDD6FF             call    0040549C
0069974C   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0069974F   E848BDD6FF             call    0040549C
00699754   C3                     ret


* Reference to: System.@HandleFinally;
|
00699755   E9DEB5D6FF             jmp     00404D38
0069975A   EBE8                   jmp     00699744

****** END
|
0069975C   5B                     pop     ebx
0069975D   59                     pop     ecx
0069975E   59                     pop     ecx
0069975F   5D                     pop     ebp
00699760   C3                     ret

*)
end;

procedure TfrmFecha.edTipoPgtoExit(Sender : TObject);
begin
(*
00699978   55                     push    ebp
00699979   8BEC                   mov     ebp, esp
0069997B   6A00                   push    $00
0069997D   6A00                   push    $00
0069997F   53                     push    ebx
00699980   8BD8                   mov     ebx, eax
00699982   33C0                   xor     eax, eax
00699984   55                     push    ebp

* Possible String Reference to: 'È:≥÷ˇÎË[YY]√'
|
00699985   68F9996900             push    $006999F9

***** TRY
|
0069998A   64FF30                 push    dword ptr fs:[eax]
0069998D   648920                 mov     fs:[eax], esp
00699990   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
00699993   8B832C030000           mov     eax, [ebx+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00699999   E89E45E6FF             call    004FDF3C
0069999E   837DFC00               cmp     dword ptr [ebp-$04], +$00
006999A2   7437                   jz      006999DB
006999A4   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmFecha.edDescrTipo : TEdit
|
006999A7   8B8328030000           mov     eax, [ebx+$0328]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006999AD   E81A9DDFFF             call    004936CC
006999B2   837DF800               cmp     dword ptr [ebp-$08], +$00
006999B6   7523                   jnz     006999DB
006999B8   6A00                   push    $00
006999BA   668B0D089A6900         mov     cx, word ptr [$00699A08]
006999C1   33D2                   xor     edx, edx

* Possible String Reference to: 'A forma de pagamento digitada n„o e
|                                xiste, por favor verifique!'
|
006999C3   B8149A6900             mov     eax, $00699A14

|
006999C8   E85FA1DAFF             call    00443B2C

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
006999CD   8B832C030000           mov     eax, [ebx+$032C]
006999D3   8B10                   mov     edx, [eax]

* Possible reference to virtual method TJvComboEdit.OFFS_00C4
|
006999D5   FF92C4000000           call    dword ptr [edx+$00C4]
006999DB   33C0                   xor     eax, eax
006999DD   5A                     pop     edx
006999DE   59                     pop     ecx
006999DF   59                     pop     ecx
006999E0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[YY]√'
|
006999E3   68009A6900             push    $00699A00
006999E8   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006999EB   E8ACBAD6FF             call    0040549C
006999F0   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006999F3   E8A4BAD6FF             call    0040549C
006999F8   C3                     ret


* Reference to: System.@HandleFinally;
|
006999F9   E93AB3D6FF             jmp     00404D38
006999FE   EBE8                   jmp     006999E8

****** END
|
00699A00   5B                     pop     ebx
00699A01   59                     pop     ecx
00699A02   59                     pop     ecx
00699A03   5D                     pop     ebp
00699A04   C3                     ret

*)
end;

procedure TfrmFecha.sbNormalClick(Sender : TObject);
begin
(*
0069B820   55                     push    ebp
0069B821   8BEC                   mov     ebp, esp
0069B823   83C4F8                 add     esp, -$08
0069B826   53                     push    ebx
0069B827   56                     push    esi
0069B828   57                     push    edi
0069B829   33C9                   xor     ecx, ecx
0069B82B   894DF8                 mov     [ebp-$08], ecx
0069B82E   8945FC                 mov     [ebp-$04], eax
0069B831   33C0                   xor     eax, eax
0069B833   55                     push    ebp

* Possible String Reference to: 'È&î÷ˇÎ_^[YY]√'
|
0069B834   680DB96900             push    $0069B90D

***** TRY
|
0069B839   64FF30                 push    dword ptr fs:[eax]
0069B83C   648920                 mov     fs:[eax], esp
0069B83F   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmFecha.sbNormal : TSpeedButton
|
0069B842   8B8054030000           mov     eax, [eax+$0354]
0069B848   33D2                   xor     edx, edx
0069B84A   8B08                   mov     ecx, [eax]

* Reference to method TSpeedButton.SetEnabled(Boolean)
|
0069B84C   FF5164                 call    dword ptr [ecx+$64]
0069B84F   33C0                   xor     eax, eax
0069B851   55                     push    ebp
0069B852   68F0B86900             push    $0069B8F0

***** TRY
|
0069B857   64FF30                 push    dword ptr fs:[eax]
0069B85A   648920                 mov     fs:[eax], esp
0069B85D   33C0                   xor     eax, eax
0069B85F   55                     push    ebp
0069B860   688FB86900             push    $0069B88F

***** TRY
|
0069B865   64FF30                 push    dword ptr fs:[eax]
0069B868   648920                 mov     fs:[eax], esp
0069B86B   A170AA7D00             mov     eax, dword ptr [$007DAA70]
0069B870   803800                 cmp     byte ptr [eax], $00
0069B873   7510                   jnz     0069B885
0069B875   A170AA7D00             mov     eax, dword ptr [$007DAA70]
0069B87A   C60001                 mov     byte ptr [eax], $01
0069B87D   8B45FC                 mov     eax, [ebp-$04]

|
0069B880   E86BF4FFFF             call    0069ACF0
0069B885   33C0                   xor     eax, eax
0069B887   5A                     pop     edx
0069B888   59                     pop     ecx
0069B889   59                     pop     ecx
0069B88A   648910                 mov     fs:[eax], edx
0069B88D   EB3B                   jmp     0069B8CA

* Reference to: System.@HandleOnException;
|
0069B88F   E91C93D6FF             jmp     00404BB0
0069B894   0100                   add     [eax], eax
0069B896   0000                   add     [eax], al
0069B898   40                     inc     eax
0069B899   95                     xchg    eax, ebp
0069B89A   40                     inc     eax
0069B89B   00A0B8690089           add     [eax+$890069B8], ah
0069B8A1   C3                     ret

0069B8A2   6A00                   push    $00
0069B8A4   8B4B04                 mov     ecx, [ebx+$04]
0069B8A7   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Erro ao fazer o fechamento!'
|
0069B8AA   BA24B96900             mov     edx, $0069B924

* Reference to: System.@LStrCat3;
|
0069B8AF   E8F49ED6FF             call    004057A8
0069B8B4   8B45F8                 mov     eax, [ebp-$08]
0069B8B7   668B0D44B96900         mov     cx, word ptr [$0069B944]
0069B8BE   B201                   mov     dl, $01

|
0069B8C0   E86782DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069B8C5   E8E695D6FF             call    00404EB0

****** END
|
0069B8CA   33C0                   xor     eax, eax
0069B8CC   5A                     pop     edx
0069B8CD   59                     pop     ecx
0069B8CE   59                     pop     ecx
0069B8CF   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069B8D2   68F7B86900             push    $0069B8F7
0069B8D7   A170AA7D00             mov     eax, dword ptr [$007DAA70]
0069B8DC   C60000                 mov     byte ptr [eax], $00
0069B8DF   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmFecha.sbNormal : TSpeedButton
|
0069B8E2   8B8054030000           mov     eax, [eax+$0354]
0069B8E8   B201                   mov     dl, $01
0069B8EA   8B08                   mov     ecx, [eax]

* Reference to method TSpeedButton.SetEnabled(Boolean)
|
0069B8EC   FF5164                 call    dword ptr [ecx+$64]
0069B8EF   C3                     ret


* Reference to: System.@HandleFinally;
|
0069B8F0   E94394D6FF             jmp     00404D38
0069B8F5   EBE0                   jmp     0069B8D7

****** END
|
0069B8F7   33C0                   xor     eax, eax
0069B8F9   5A                     pop     edx
0069B8FA   59                     pop     ecx
0069B8FB   59                     pop     ecx
0069B8FC   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[YY]√'
|
0069B8FF   6814B96900             push    $0069B914
0069B904   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0069B907   E8909BD6FF             call    0040549C
0069B90C   C3                     ret

*)
end;

procedure TfrmFecha.sbFecharClick(Sender : TObject);
begin
(*
0069C378   55                     push    ebp
0069C379   8BEC                   mov     ebp, esp

* Reference to: Forms.TCustomForm.Close(TCustomForm);
|
0069C37B   E8405DE1FF             call    004B20C0
0069C380   5D                     pop     ebp
0069C381   C3                     ret

*)
end;

procedure TfrmFecha.EdCodBancoButtonClick(Sender : TObject);
begin
(*
0069C384   55                     push    ebp
0069C385   8BEC                   mov     ebp, esp
0069C387   83C4EC                 add     esp, -$14
0069C38A   53                     push    ebx
0069C38B   33C9                   xor     ecx, ecx
0069C38D   894DEC                 mov     [ebp-$14], ecx
0069C390   8BD8                   mov     ebx, eax
0069C392   33C0                   xor     eax, eax
0069C394   55                     push    ebp
0069C395   681EC46900             push    $0069C41E

***** TRY
|
0069C39A   64FF30                 push    dword ptr fs:[eax]
0069C39D   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'CÛdigo'
|
0069C3A0   B834C46900             mov     eax, $0069C434
0069C3A5   8945F8                 mov     [ebp-$08], eax

* Possible String Reference to: 'Banco'
|
0069C3A8   B844C46900             mov     eax, $0069C444
0069C3AD   8945FC                 mov     [ebp-$04], eax
0069C3B0   8D45F8                 lea     eax, [ebp-$08]
0069C3B3   50                     push    eax
0069C3B4   6A01                   push    $01
0069C3B6   6A00                   push    $00

* Possible String Reference to: 'CODBANCO'
|
0069C3B8   B854C46900             mov     eax, $0069C454
0069C3BD   8945F0                 mov     [ebp-$10], eax

* Possible String Reference to: 'BANCO'
|
0069C3C0   B868C46900             mov     eax, $0069C468
0069C3C5   8945F4                 mov     [ebp-$0C], eax
0069C3C8   8D55F0                 lea     edx, [ebp-$10]
0069C3CB   B901000000             mov     ecx, $00000001

* Possible String Reference to: 'CHBANCOS'
|
0069C3D0   B878C46900             mov     eax, $0069C478

|
0069C3D5   E87ACEF9FF             call    00639254
0069C3DA   84C0                   test    al, al
0069C3DC   742A                   jz      0069C408
0069C3DE   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0069C3E3   8B00                   mov     eax, [eax]
0069C3E5   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CodBanco'
|
0069C3E8   BA8CC46900             mov     edx, $0069C48C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069C3ED   E812D8E4FF             call    004E9C04
0069C3F2   8D55EC                 lea     edx, [ebp-$14]
0069C3F5   8B08                   mov     ecx, [eax]
0069C3F7   FF5160                 call    dword ptr [ecx+$60]
0069C3FA   8B55EC                 mov     edx, [ebp-$14]

* Reference to control TfrmFecha.EdCodBanco : TJvComboEdit
|
0069C3FD   8B8380030000           mov     eax, [ebx+$0380]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
0069C403   E8C81BE6FF             call    004FDFD0
0069C408   33C0                   xor     eax, eax
0069C40A   5A                     pop     edx
0069C40B   59                     pop     ecx
0069C40C   59                     pop     ecx
0069C40D   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
0069C410   6825C46900             push    $0069C425
0069C415   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0069C418   E87F90D6FF             call    0040549C
0069C41D   C3                     ret


* Reference to: System.@HandleFinally;
|
0069C41E   E91589D6FF             jmp     00404D38
0069C423   EBF0                   jmp     0069C415

****** END
|
0069C425   5B                     pop     ebx
0069C426   8BE5                   mov     esp, ebp
0069C428   5D                     pop     ebp
0069C429   C3                     ret

*)
end;

procedure TfrmFecha.EdCodBancoChange(Sender : TObject);
begin
(*
0069C498   55                     push    ebp
0069C499   8BEC                   mov     ebp, esp
0069C49B   33C9                   xor     ecx, ecx
0069C49D   51                     push    ecx
0069C49E   51                     push    ecx
0069C49F   51                     push    ecx
0069C4A0   51                     push    ecx
0069C4A1   51                     push    ecx
0069C4A2   53                     push    ebx
0069C4A3   8BD8                   mov     ebx, eax
0069C4A5   33C0                   xor     eax, eax
0069C4A7   55                     push    ebp
0069C4A8   6850C56900             push    $0069C550

***** TRY
|
0069C4AD   64FF30                 push    dword ptr fs:[eax]
0069C4B0   648920                 mov     fs:[eax], esp
0069C4B3   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TfrmFecha.EdCodBanco : TJvComboEdit
|
0069C4B6   8B8380030000           mov     eax, [ebx+$0380]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0069C4BC   E87B1AE6FF             call    004FDF3C
0069C4C1   837DFC00               cmp     dword ptr [ebp-$04], +$00
0069C4C5   7451                   jz      0069C518

* Possible String Reference to: 'BANCO'
|
0069C4C7   6864C56900             push    $0069C564
0069C4CC   8D45F8                 lea     eax, [ebp-$08]
0069C4CF   50                     push    eax
0069C4D0   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TfrmFecha.EdCodBanco : TJvComboEdit
|
0069C4D3   8B8380030000           mov     eax, [ebx+$0380]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0069C4D9   E85E1AE6FF             call    004FDF3C
0069C4DE   8B45EC                 mov     eax, [ebp-$14]
0069C4E1   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0069C4E4   E837761000             call    007A3B20
0069C4E9   8B4DF0                 mov     ecx, [ebp-$10]
0069C4EC   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODBANCO = '
|
0069C4EF   BA74C56900             mov     edx, $0069C574

* Reference to: System.@LStrCat3;
|
0069C4F4   E8AF92D6FF             call    004057A8
0069C4F9   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'CHBANCOS'
|
0069C4FC   BA88C56900             mov     edx, $0069C588
0069C501   33C0                   xor     eax, eax

|
0069C503   E808CE1000             call    007A9310
0069C508   8B55F8                 mov     edx, [ebp-$08]

* Reference to control TfrmFecha.EdBanco : TEdit
|
0069C50B   8B8384030000           mov     eax, [ebx+$0384]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069C511   E8E671DFFF             call    004936FC
0069C516   EB0D                   jmp     0069C525
0069C518   33D2                   xor     edx, edx

* Reference to control TfrmFecha.EdBanco : TEdit
|
0069C51A   8B8384030000           mov     eax, [ebx+$0384]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069C520   E8D771DFFF             call    004936FC
0069C525   33C0                   xor     eax, eax
0069C527   5A                     pop     edx
0069C528   59                     pop     ecx
0069C529   59                     pop     ecx
0069C52A   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069C52D   6857C56900             push    $0069C557
0069C532   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0069C535   E8628FD6FF             call    0040549C
0069C53A   8D45F0                 lea     eax, [ebp-$10]
0069C53D   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069C542   E8798FD6FF             call    004054C0
0069C547   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0069C54A   E84D8FD6FF             call    0040549C
0069C54F   C3                     ret


* Reference to: System.@HandleFinally;
|
0069C550   E9E387D6FF             jmp     00404D38
0069C555   EBDB                   jmp     0069C532

****** END
|
0069C557   5B                     pop     ebx
0069C558   8BE5                   mov     esp, ebp
0069C55A   5D                     pop     ebp
0069C55B   C3                     ret

*)
end;

procedure TfrmFecha.EdCodCardButtonClick(Sender : TObject);
begin
(*
0069C594   55                     push    ebp
0069C595   8BEC                   mov     ebp, esp
0069C597   83C4EC                 add     esp, -$14
0069C59A   53                     push    ebx
0069C59B   33C9                   xor     ecx, ecx
0069C59D   894DEC                 mov     [ebp-$14], ecx
0069C5A0   8BD8                   mov     ebx, eax
0069C5A2   33C0                   xor     eax, eax
0069C5A4   55                     push    ebp
0069C5A5   682EC66900             push    $0069C62E

***** TRY
|
0069C5AA   64FF30                 push    dword ptr fs:[eax]
0069C5AD   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'CÛdigo'
|
0069C5B0   B844C66900             mov     eax, $0069C644
0069C5B5   8945F8                 mov     [ebp-$08], eax

* Possible String Reference to: 'DescriÁ„o'
|
0069C5B8   B854C66900             mov     eax, $0069C654
0069C5BD   8945FC                 mov     [ebp-$04], eax
0069C5C0   8D45F8                 lea     eax, [ebp-$08]
0069C5C3   50                     push    eax
0069C5C4   6A01                   push    $01
0069C5C6   6A01                   push    $01

* Possible String Reference to: 'CODCARD'
|
0069C5C8   B868C66900             mov     eax, $0069C668
0069C5CD   8945F0                 mov     [ebp-$10], eax

* Possible String Reference to: 'DESCRICAO'
|
0069C5D0   B878C66900             mov     eax, $0069C678
0069C5D5   8945F4                 mov     [ebp-$0C], eax
0069C5D8   8D55F0                 lea     edx, [ebp-$10]
0069C5DB   B901000000             mov     ecx, $00000001

* Possible String Reference to: 'CARTOES'
|
0069C5E0   B88CC66900             mov     eax, $0069C68C

|
0069C5E5   E86ACCF9FF             call    00639254
0069C5EA   84C0                   test    al, al
0069C5EC   742A                   jz      0069C618
0069C5EE   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0069C5F3   8B00                   mov     eax, [eax]
0069C5F5   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CodCard'
|
0069C5F8   BA9CC66900             mov     edx, $0069C69C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069C5FD   E802D6E4FF             call    004E9C04
0069C602   8D55EC                 lea     edx, [ebp-$14]
0069C605   8B08                   mov     ecx, [eax]
0069C607   FF5160                 call    dword ptr [ecx+$60]
0069C60A   8B55EC                 mov     edx, [ebp-$14]

* Reference to control TfrmFecha.EdCodCard : TJvComboEdit
|
0069C60D   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
0069C613   E8B819E6FF             call    004FDFD0
0069C618   33C0                   xor     eax, eax
0069C61A   5A                     pop     edx
0069C61B   59                     pop     ecx
0069C61C   59                     pop     ecx
0069C61D   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
0069C620   6835C66900             push    $0069C635
0069C625   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0069C628   E86F8ED6FF             call    0040549C
0069C62D   C3                     ret


* Reference to: System.@HandleFinally;
|
0069C62E   E90587D6FF             jmp     00404D38
0069C633   EBF0                   jmp     0069C625

****** END
|
0069C635   5B                     pop     ebx
0069C636   8BE5                   mov     esp, ebp
0069C638   5D                     pop     ebp
0069C639   C3                     ret

*)
end;

procedure TfrmFecha.EdCodCardChange(Sender : TObject);
begin
(*
0069C6A4   55                     push    ebp
0069C6A5   8BEC                   mov     ebp, esp
0069C6A7   33C9                   xor     ecx, ecx
0069C6A9   51                     push    ecx
0069C6AA   51                     push    ecx
0069C6AB   51                     push    ecx
0069C6AC   51                     push    ecx
0069C6AD   51                     push    ecx
0069C6AE   51                     push    ecx
0069C6AF   53                     push    ebx
0069C6B0   8BD8                   mov     ebx, eax
0069C6B2   33C0                   xor     eax, eax
0069C6B4   55                     push    ebp

* Possible String Reference to: 'ÈrÖ÷ˇÎ”[ãÂ]√'
|
0069C6B5   68C1C76900             push    $0069C7C1

***** TRY
|
0069C6BA   64FF30                 push    dword ptr fs:[eax]
0069C6BD   648920                 mov     fs:[eax], esp
0069C6C0   33D2                   xor     edx, edx

* Reference to control TfrmFecha.EdCartao : TEdit
|
0069C6C2   8B83A8030000           mov     eax, [ebx+$03A8]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069C6C8   E82F70DFFF             call    004936FC
0069C6CD   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TfrmFecha.EdCodCard : TJvComboEdit
|
0069C6D0   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0069C6D6   E86118E6FF             call    004FDF3C
0069C6DB   837DFC00               cmp     dword ptr [ebp-$04], +$00
0069C6DF   0F84A9000000           jz      0069C78E
0069C6E5   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmFecha.EdCodCard : TJvComboEdit
|
0069C6E8   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0069C6EE   E84918E6FF             call    004FDF3C
0069C6F3   8B45F0                 mov     eax, [ebp-$10]
0069C6F6   8D55F4                 lea     edx, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0069C6F9   E822741000             call    007A3B20
0069C6FE   8B4DF4                 mov     ecx, [ebp-$0C]
0069C701   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'CODCARD = '
|
0069C704   BAD8C76900             mov     edx, $0069C7D8

* Reference to: System.@LStrCat3;
|
0069C709   E89A90D6FF             call    004057A8
0069C70E   8B45F8                 mov     eax, [ebp-$08]
0069C711   50                     push    eax
0069C712   6A00                   push    $00
0069C714   B9ECC76900             mov     ecx, $0069C7EC

* Possible String Reference to: 'CARTOES'
|
0069C719   BAF8C76900             mov     edx, $0069C7F8
0069C71E   33C0                   xor     eax, eax

|
0069C720   E8CBC71000             call    007A8EF0
0069C725   84C0                   test    al, al
0069C727   7465                   jz      0069C78E
0069C729   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0069C72E   8B00                   mov     eax, [eax]
0069C730   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'Descricao'
|
0069C733   BA08C86900             mov     edx, $0069C808

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0069C738   E80F8FECFF             call    0056564C
0069C73D   8D55EC                 lea     edx, [ebp-$14]

* Reference to: IBSQL.TIBXSQLVAR.GetAsString(TIBXSQLVAR):AnsiString;
|
0069C740   E8FF68ECFF             call    00563044
0069C745   8B55EC                 mov     edx, [ebp-$14]

* Reference to control TfrmFecha.EdCartao : TEdit
|
0069C748   8B83A8030000           mov     eax, [ebx+$03A8]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069C74E   E8A96FDFFF             call    004936FC
0069C753   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0069C758   8B00                   mov     eax, [eax]
0069C75A   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'DiasPagto'
|
0069C75D   BA1CC86900             mov     edx, $0069C81C

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0069C762   E8E58EECFF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsLong(TIBXSQLVAR):Long;
|
0069C767   E8C866ECFF             call    00562E34
0069C76C   8945E8                 mov     [ebp-$18], eax
0069C76F   DB45E8                 fild    dword ptr [ebp-$18]
0069C772   A150AD7D00             mov     eax, dword ptr [$007DAD50]
0069C777   DC00                   fadd    qword ptr [eax]
0069C779   83C4F8                 add     esp, -$08
0069C77C   DD1C24                 fstp    qword ptr [esp]
0069C77F   9B                     wait

* Reference to control TfrmFecha.EdDtVencto : TJvDateEdit
|
0069C780   8B83B8030000           mov     eax, [ebx+$03B8]
0069C786   8B10                   mov     edx, [eax]

* Possible reference to virtual method TJvDateEdit.OFFS_0170
|
0069C788   FF9270010000           call    dword ptr [edx+$0170]
0069C78E   33C0                   xor     eax, eax
0069C790   5A                     pop     edx
0069C791   59                     pop     ecx
0069C792   59                     pop     ecx
0069C793   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
0069C796   68C8C76900             push    $0069C7C8
0069C79B   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0069C79E   E8F98CD6FF             call    0040549C
0069C7A3   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0069C7A6   E8F18CD6FF             call    0040549C
0069C7AB   8D45F4                 lea     eax, [ebp-$0C]
0069C7AE   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069C7B3   E8088DD6FF             call    004054C0
0069C7B8   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0069C7BB   E8DC8CD6FF             call    0040549C
0069C7C0   C3                     ret


* Reference to: System.@HandleFinally;
|
0069C7C1   E97285D6FF             jmp     00404D38
0069C7C6   EBD3                   jmp     0069C79B

****** END
|
0069C7C8   5B                     pop     ebx
0069C7C9   8BE5                   mov     esp, ebp
0069C7CB   5D                     pop     ebp
0069C7CC   C3                     ret

*)
end;

procedure TfrmFecha.ckPrcServClick(Sender : TObject);
begin
(*
0069C828   55                     push    ebp
0069C829   8BEC                   mov     ebp, esp
0069C82B   53                     push    ebx
0069C82C   56                     push    esi
0069C82D   8BD8                   mov     ebx, eax

* Reference to control TfrmFecha.ckPrcServ : TCheckBox
|
0069C82F   8B8358030000           mov     eax, [ebx+$0358]
0069C835   66BEB5FF               mov     si, $FFB5

* Reference to: System.@CallDynaInst;
|
0069C839   E8627FD6FF             call    004047A0
0069C83E   84C0                   test    al, al
0069C840   7407                   jz      0069C849
0069C842   8BC3                   mov     eax, ebx

|
0069C844   E823F7FFFF             call    0069BF6C
0069C849   5E                     pop     esi
0069C84A   5B                     pop     ebx
0069C84B   5D                     pop     ebp
0069C84C   C3                     ret

*)
end;

procedure TfrmFecha.SpeedButton1Click(Sender : TObject);
begin
(*
0069C850   55                     push    ebp
0069C851   8BEC                   mov     ebp, esp
0069C853   33C9                   xor     ecx, ecx
0069C855   51                     push    ecx
0069C856   51                     push    ecx
0069C857   51                     push    ecx
0069C858   51                     push    ecx
0069C859   53                     push    ebx
0069C85A   8BD8                   mov     ebx, eax
0069C85C   33C0                   xor     eax, eax
0069C85E   55                     push    ebp

* Possible String Reference to: 'ÈfÑ÷ˇÎ[ãÂ]√ç@'
|
0069C85F   68CDC86900             push    $0069C8CD

***** TRY
|
0069C864   64FF30                 push    dword ptr fs:[eax]
0069C867   648920                 mov     fs:[eax], esp
0069C86A   8D45F0                 lea     eax, [ebp-$10]
0069C86D   33D2                   xor     edx, edx
0069C86F   B101                   mov     cl, $01

|
0069C871   E8FAC1D7FF             call    00418A70
0069C876   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
0069C879   8B833C030000           mov     eax, [ebx+$033C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0069C87F   E80C6AFBFF             call    00653290
0069C884   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069C889   8B00                   mov     eax, [eax]
0069C88B   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DBClient.TCustomClientDataSet.EmptyDataSet(TCustomClientDataSet);
|
0069C891   E852A6E5FF             call    004F6EE8
0069C896   8BC3                   mov     eax, ebx

|
0069C898   E8CFF6FFFF             call    0069BF6C
0069C89D   B201                   mov     dl, $01

* Reference to control TfrmFecha.LbDesconto : TLabel
|
0069C89F   8B83E0030000           mov     eax, [ebx+$03E0]
0069C8A5   8B08                   mov     ecx, [eax]

* Reference to method TLabel.SetEnabled(Boolean)
|
0069C8A7   FF5164                 call    dword ptr [ecx+$64]
0069C8AA   B201                   mov     dl, $01

* Reference to control TfrmFecha.EdPrcDesc : TJvValidateEdit
|
0069C8AC   8B83E4030000           mov     eax, [ebx+$03E4]
0069C8B2   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TJvValidateEdit.OFFS_64
|
0069C8B4   FF5164                 call    dword ptr [ecx+$64]
0069C8B7   33C0                   xor     eax, eax
0069C8B9   5A                     pop     edx
0069C8BA   59                     pop     ecx
0069C8BB   59                     pop     ecx
0069C8BC   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√ç@'
|
0069C8BF   68D4C86900             push    $0069C8D4
0069C8C4   8D45F0                 lea     eax, [ebp-$10]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0069C8C7   E8AC7CD7FF             call    00414578
0069C8CC   C3                     ret


* Reference to: System.@HandleFinally;
|
0069C8CD   E96684D6FF             jmp     00404D38
0069C8D2   EBF0                   jmp     0069C8C4

****** END
|
0069C8D4   5B                     pop     ebx
0069C8D5   8BE5                   mov     esp, ebp
0069C8D7   5D                     pop     ebp
0069C8D8   C3                     ret

*)
end;

procedure TfrmFecha.SpeedButton2Click(Sender : TObject);
begin
(*
0069C8DC   55                     push    ebp
0069C8DD   8BEC                   mov     ebp, esp

* Reference to : TfrmFecha._PROC_00699470()
|
0069C8DF   E88CCBFFFF             call    00699470
0069C8E4   5D                     pop     ebp
0069C8E5   C3                     ret

*)
end;

procedure TfrmFecha.EdImpressoraButtonClick(Sender : TObject);
begin
(*
0069C8E8   55                     push    ebp
0069C8E9   8BEC                   mov     ebp, esp
0069C8EB   6A00                   push    $00
0069C8ED   53                     push    ebx
0069C8EE   56                     push    esi
0069C8EF   57                     push    edi
0069C8F0   8BD8                   mov     ebx, eax
0069C8F2   33C0                   xor     eax, eax
0069C8F4   55                     push    ebp

* Possible String Reference to: 'ÈÓÇ÷ˇÎ_^[Y]√'
|
0069C8F5   6845CA6900             push    $0069CA45

***** TRY
|
0069C8FA   64FF30                 push    dword ptr fs:[eax]
0069C8FD   648920                 mov     fs:[eax], esp
0069C900   33C9                   xor     ecx, ecx
0069C902   B201                   mov     dl, $01

* Reference to class TFrmMudaImpressora
|
0069C904   A154246900             mov     eax, dword ptr [$00692454]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
0069C909   E80216E1FF             call    004ADF10
0069C90E   8B1504AF7D00           mov     edx, [$007DAF04]
0069C914   8902                   mov     [edx], eax
0069C916   33C0                   xor     eax, eax
0069C918   55                     push    ebp
0069C919   6828CA6900             push    $0069CA28

***** TRY
|
0069C91E   64FF30                 push    dword ptr fs:[eax]
0069C921   648920                 mov     fs:[eax], esp
0069C924   33C0                   xor     eax, eax
0069C926   55                     push    ebp
0069C927   68DFC96900             push    $0069C9DF

***** TRY
|
0069C92C   64FF30                 push    dword ptr fs:[eax]
0069C92F   648920                 mov     fs:[eax], esp
0069C932   A104AF7D00             mov     eax, dword ptr [$007DAF04]
0069C937   8B00                   mov     eax, [eax]
0069C939   8B10                   mov     edx, [eax]
0069C93B   FF92EC000000           call    dword ptr [edx+$00EC]
0069C941   8B15E4A07D00           mov     edx, [$007DA0E4]
0069C947   8B12                   mov     edx, [edx]

* Reference to control TfrmFecha.EdImpressora : TJvComboEdit
|
0069C949   8B83D0030000           mov     eax, [ebx+$03D0]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
0069C94F   E87C16E6FF             call    004FDFD0
0069C954   A104AF7D00             mov     eax, dword ptr [$007DAF04]
0069C959   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
0069C95B   E83C7CD6FF             call    0040459C
0069C960   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069C965   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
0069C967   BA5CCA6900             mov     edx, $0069CA5C

* Reference to: System.@LStrCmp;
|
0069C96C   E8378FD6FF             call    004058A8
0069C971   7507                   jnz     0069C97A

|
0069C973   E8CC14FDFF             call    0066DE44
0069C978   EB5B                   jmp     0069C9D5
0069C97A   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069C97F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'daruma'
|
0069C981   BA70CA6900             mov     edx, $0069CA70

* Reference to: System.@LStrCmp;
|
0069C986   E81D8FD6FF             call    004058A8
0069C98B   7448                   jz      0069C9D5
0069C98D   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069C992   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
0069C994   BA80CA6900             mov     edx, $0069CA80

* Reference to: System.@LStrCmp;
|
0069C999   E80A8FD6FF             call    004058A8
0069C99E   7426                   jz      0069C9C6
0069C9A0   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069C9A5   8B00                   mov     eax, [eax]

* Possible String Reference to: 'nenhuma'
|
0069C9A7   BA90CA6900             mov     edx, $0069CA90

* Reference to: System.@LStrCmp;
|
0069C9AC   E8F78ED6FF             call    004058A8
0069C9B1   7413                   jz      0069C9C6
0069C9B3   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069C9B8   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
0069C9BA   BAA0CA6900             mov     edx, $0069CAA0

* Reference to: System.@LStrCmp;
|
0069C9BF   E8E48ED6FF             call    004058A8
0069C9C4   750F                   jnz     0069C9D5

* Reference to: SysUtils.Date:TDateTime;
|
0069C9C6   E83112D7FF             call    0040DBFC
0069C9CB   A150AD7D00             mov     eax, dword ptr [$007DAD50]
0069C9D0   DC18                   fcomp   qword ptr [eax]
0069C9D2   DFE0                   fstsw   ax
0069C9D4   9E                     sahf
0069C9D5   33C0                   xor     eax, eax
0069C9D7   5A                     pop     edx
0069C9D8   59                     pop     ecx
0069C9D9   59                     pop     ecx
0069C9DA   648910                 mov     fs:[eax], edx
0069C9DD   EB3B                   jmp     0069CA1A

* Reference to: System.@HandleOnException;
|
0069C9DF   E9CC81D6FF             jmp     00404BB0
0069C9E4   0100                   add     [eax], eax
0069C9E6   0000                   add     [eax], al
0069C9E8   40                     inc     eax
0069C9E9   95                     xchg    eax, ebp
0069C9EA   40                     inc     eax
0069C9EB   00F0                   add     al, dh
0069C9ED   C9                     leave
0069C9EE   690089C36A00           imul    eax, [eax], $006AC389

* Reference to field TfrmFecha.Owner : TComponent
|
0069C9F4   8B4B04                 mov     ecx, [ebx+$04]
0069C9F7   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'Erro ao trocar de impressora!'
|
0069C9FA   BAB4CA6900             mov     edx, $0069CAB4

* Reference to: System.@LStrCat3;
|
0069C9FF   E8A48DD6FF             call    004057A8
0069CA04   8B45FC                 mov     eax, [ebp-$04]
0069CA07   668B0DD4CA6900         mov     cx, word ptr [$0069CAD4]
0069CA0E   B201                   mov     dl, $01

|
0069CA10   E81771DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069CA15   E89684D6FF             call    00404EB0

****** END
|
0069CA1A   33C0                   xor     eax, eax
0069CA1C   5A                     pop     edx
0069CA1D   59                     pop     ecx
0069CA1E   59                     pop     ecx
0069CA1F   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069CA22   682FCA6900             push    $0069CA2F
0069CA27   C3                     ret


* Reference to: System.@HandleFinally;
|
0069CA28   E90B83D6FF             jmp     00404D38
0069CA2D   EBF8                   jmp     0069CA27

****** END
|
0069CA2F   33C0                   xor     eax, eax
0069CA31   5A                     pop     edx
0069CA32   59                     pop     ecx
0069CA33   59                     pop     ecx
0069CA34   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[Y]√'
|
0069CA37   684CCA6900             push    $0069CA4C
0069CA3C   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0069CA3F   E8588AD6FF             call    0040549C
0069CA44   C3                     ret


* Reference to: System.@HandleFinally;
|
0069CA45   E9EE82D6FF             jmp     00404D38
0069CA4A   EBF0                   jmp     0069CA3C

****** END
|
0069CA4C   5F                     pop     edi
0069CA4D   5E                     pop     esi
0069CA4E   5B                     pop     ebx
0069CA4F   59                     pop     ecx
0069CA50   5D                     pop     ebp
0069CA51   C3                     ret

*)
end;

procedure TfrmFecha.SpinButton1DownClick(Sender : TObject);
begin
(*
0069D33C   55                     push    ebp
0069D33D   8BEC                   mov     ebp, esp
0069D33F   B906000000             mov     ecx, $00000006
0069D344   6A00                   push    $00
0069D346   6A00                   push    $00
0069D348   49                     dec     ecx
0069D349   75F9                   jnz     0069D344
0069D34B   51                     push    ecx
0069D34C   53                     push    ebx
0069D34D   56                     push    esi
0069D34E   8BD8                   mov     ebx, eax
0069D350   33C0                   xor     eax, eax
0069D352   55                     push    ebp
0069D353   68EBD46900             push    $0069D4EB

***** TRY
|
0069D358   64FF30                 push    dword ptr fs:[eax]
0069D35B   648920                 mov     fs:[eax], esp
0069D35E   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmFecha.edNumPessoa : TAlignEd
|
0069D361   8B8314030000           mov     eax, [ebx+$0314]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069D367   E86063DFFF             call    004936CC
0069D36C   8B45F8                 mov     eax, [ebp-$08]
0069D36F   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
0069D371   E896DBD6FF             call    0040AF0C
0069D376   48                     dec     eax
0069D377   0F8E1B010000           jle     0069D498
0069D37D   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmFecha.edNumPessoa : TAlignEd
|
0069D380   8BB314030000           mov     esi, [ebx+$0314]
0069D386   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069D388   E83F63DFFF             call    004936CC
0069D38D   8B45F0                 mov     eax, [ebp-$10]
0069D390   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
0069D392   E875DBD6FF             call    0040AF0C
0069D397   48                     dec     eax
0069D398   8D55F4                 lea     edx, [ebp-$0C]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0069D39B   E8C4D9D6FF             call    0040AD64
0069D3A0   8B55F4                 mov     edx, [ebp-$0C]
0069D3A3   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069D3A5   E85263DFFF             call    004936FC
0069D3AA   8D55E8                 lea     edx, [ebp-$18]

* Reference to control TfrmFecha.edNumPessoa : TAlignEd
|
0069D3AD   8B8314030000           mov     eax, [ebx+$0314]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069D3B3   E81463DFFF             call    004936CC
0069D3B8   8B45E8                 mov     eax, [ebp-$18]
0069D3BB   BA01000000             mov     edx, $00000001

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
0069D3C0   E847DBD6FF             call    0040AF0C
0069D3C5   8945E4                 mov     [ebp-$1C], eax
0069D3C8   DB45E4                 fild    dword ptr [ebp-$1C]
0069D3CB   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069D3D0   DB28                   fld     tbyte ptr [eax]

* Reference to: System.@FSafeDivideR;
|
0069D3D2   E82161D6FF             call    004034F8
0069D3D7   83C4F4                 add     esp, -$0C
0069D3DA   DB3C24                 fstp    tbyte ptr [esp]
0069D3DD   9B                     wait
0069D3DE   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: '###,###,##0.00'
|
0069D3E1   B800D56900             mov     eax, $0069D500

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069D3E6   E85101D7FF             call    0040D53C
0069D3EB   8B55EC                 mov     edx, [ebp-$14]

* Reference to control TfrmFecha.edVlrPessoa : TAlignEd
|
0069D3EE   8B8320030000           mov     eax, [ebx+$0320]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069D3F4   E80363DFFF             call    004936FC

* Possible String Reference to: '(CODMESA = '
|
0069D3F9   6818D56900             push    $0069D518

* Possible String Reference to: 'CodMesa'
|
0069D3FE   BA2CD56900             mov     edx, $0069D52C

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069D403   8B8338030000           mov     eax, [ebx+$0338]

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069D409   E8F6C7E4FF             call    004E9C04
0069D40E   8D55DC                 lea     edx, [ebp-$24]
0069D411   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TIBDataSet.OFFS_60
|
0069D413   FF5160                 call    dword ptr [ecx+$60]
0069D416   8B45DC                 mov     eax, [ebp-$24]
0069D419   8D55E0                 lea     edx, [ebp-$20]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0069D41C   E8FF661000             call    007A3B20
0069D421   FF75E0                 push    dword ptr [ebp-$20]

* Possible String Reference to: ') AND (NUMLCTO = '
|
0069D424   683CD56900             push    $0069D53C

* Possible String Reference to: 'NumLcto'
|
0069D429   BA58D56900             mov     edx, $0069D558

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069D42E   8B8338030000           mov     eax, [ebx+$0338]

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069D434   E8CBC7E4FF             call    004E9C04
0069D439   8D55D4                 lea     edx, [ebp-$2C]
0069D43C   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TIBDataSet.OFFS_60
|
0069D43E   FF5160                 call    dword ptr [ecx+$60]
0069D441   8B45D4                 mov     eax, [ebp-$2C]
0069D444   8D55D8                 lea     edx, [ebp-$28]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0069D447   E8D4661000             call    007A3B20
0069D44C   FF75D8                 push    dword ptr [ebp-$28]
0069D44F   6868D56900             push    $0069D568
0069D454   8D45FC                 lea     eax, [ebp-$04]
0069D457   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
0069D45C   E8BB83D6FF             call    0040581C
0069D461   6A00                   push    $00
0069D463   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TfrmFecha.edNumPessoa : TAlignEd
|
0069D466   8B8314030000           mov     eax, [ebx+$0314]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069D46C   E85B62DFFF             call    004936CC
0069D471   8B45D0                 mov     eax, [ebp-$30]
0069D474   8945E4                 mov     [ebp-$1C], eax
0069D477   8D45E4                 lea     eax, [ebp-$1C]
0069D47A   50                     push    eax
0069D47B   6A00                   push    $00
0069D47D   8B45FC                 mov     eax, [ebp-$04]
0069D480   50                     push    eax

* Possible String Reference to: 'NUMPESSOAS'
|
0069D481   B874D56900             mov     eax, $0069D574
0069D486   8945CC                 mov     [ebp-$34], eax
0069D489   8D4DCC                 lea     ecx, [ebp-$34]

* Possible String Reference to: 'MESALCTO'
|
0069D48C   BA88D56900             mov     edx, $0069D588
0069D491   33C0                   xor     eax, eax

|
0069D493   E8BCCE1000             call    007AA354
0069D498   33C0                   xor     eax, eax
0069D49A   5A                     pop     edx
0069D49B   59                     pop     ecx
0069D49C   59                     pop     ecx
0069D49D   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069D4A0   68F2D46900             push    $0069D4F2
0069D4A5   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
0069D4A8   E8EF7FD6FF             call    0040549C
0069D4AD   8D45D4                 lea     eax, [ebp-$2C]
0069D4B0   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069D4B5   E80680D6FF             call    004054C0
0069D4BA   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrClr(void;void);
|
0069D4BD   E8DA7FD6FF             call    0040549C
0069D4C2   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0069D4C5   E8D27FD6FF             call    0040549C
0069D4CA   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0069D4CD   E8CA7FD6FF             call    0040549C
0069D4D2   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0069D4D5   E8C27FD6FF             call    0040549C
0069D4DA   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0069D4DD   E8BA7FD6FF             call    0040549C
0069D4E2   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0069D4E5   E8B27FD6FF             call    0040549C
0069D4EA   C3                     ret


* Reference to: System.@HandleFinally;
|
0069D4EB   E94878D6FF             jmp     00404D38
0069D4F0   EBB3                   jmp     0069D4A5

****** END
|
0069D4F2   5E                     pop     esi
0069D4F3   5B                     pop     ebx
0069D4F4   8BE5                   mov     esp, ebp
0069D4F6   5D                     pop     ebp
0069D4F7   C3                     ret

*)
end;

procedure TfrmFecha.SpinButton1UpClick(Sender : TObject);
begin
(*
0069D594   55                     push    ebp
0069D595   8BEC                   mov     ebp, esp
0069D597   B906000000             mov     ecx, $00000006
0069D59C   6A00                   push    $00
0069D59E   6A00                   push    $00
0069D5A0   49                     dec     ecx
0069D5A1   75F9                   jnz     0069D59C
0069D5A3   53                     push    ebx
0069D5A4   56                     push    esi
0069D5A5   8BD8                   mov     ebx, eax
0069D5A7   33C0                   xor     eax, eax
0069D5A9   55                     push    ebp
0069D5AA   6818D76900             push    $0069D718

***** TRY
|
0069D5AF   64FF30                 push    dword ptr fs:[eax]
0069D5B2   648920                 mov     fs:[eax], esp
0069D5B5   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TfrmFecha.edNumPessoa : TAlignEd
|
0069D5B8   8BB314030000           mov     esi, [ebx+$0314]
0069D5BE   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069D5C0   E80761DFFF             call    004936CC
0069D5C5   8B45F4                 mov     eax, [ebp-$0C]
0069D5C8   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
0069D5CA   E83DD9D6FF             call    0040AF0C
0069D5CF   40                     inc     eax
0069D5D0   8D55F8                 lea     edx, [ebp-$08]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0069D5D3   E88CD7D6FF             call    0040AD64
0069D5D8   8B55F8                 mov     edx, [ebp-$08]
0069D5DB   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069D5DD   E81A61DFFF             call    004936FC
0069D5E2   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TfrmFecha.edNumPessoa : TAlignEd
|
0069D5E5   8B8314030000           mov     eax, [ebx+$0314]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069D5EB   E8DC60DFFF             call    004936CC
0069D5F0   8B45EC                 mov     eax, [ebp-$14]
0069D5F3   BA01000000             mov     edx, $00000001

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
0069D5F8   E80FD9D6FF             call    0040AF0C
0069D5FD   8945E8                 mov     [ebp-$18], eax
0069D600   DB45E8                 fild    dword ptr [ebp-$18]
0069D603   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069D608   DB28                   fld     tbyte ptr [eax]

* Reference to: System.@FSafeDivideR;
|
0069D60A   E8E95ED6FF             call    004034F8
0069D60F   83C4F4                 add     esp, -$0C
0069D612   DB3C24                 fstp    tbyte ptr [esp]
0069D615   9B                     wait
0069D616   8D55F0                 lea     edx, [ebp-$10]

* Possible String Reference to: '###,###,##0.00'
|
0069D619   B830D76900             mov     eax, $0069D730

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069D61E   E819FFD6FF             call    0040D53C
0069D623   8B55F0                 mov     edx, [ebp-$10]

* Reference to control TfrmFecha.edVlrPessoa : TAlignEd
|
0069D626   8B8320030000           mov     eax, [ebx+$0320]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069D62C   E8CB60DFFF             call    004936FC

* Possible String Reference to: '(CODMESA = '
|
0069D631   6848D76900             push    $0069D748

* Possible String Reference to: 'CodMesa'
|
0069D636   BA5CD76900             mov     edx, $0069D75C

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069D63B   8B8338030000           mov     eax, [ebx+$0338]

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069D641   E8BEC5E4FF             call    004E9C04
0069D646   8D55E0                 lea     edx, [ebp-$20]
0069D649   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TIBDataSet.OFFS_60
|
0069D64B   FF5160                 call    dword ptr [ecx+$60]
0069D64E   8B45E0                 mov     eax, [ebp-$20]
0069D651   8D55E4                 lea     edx, [ebp-$1C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0069D654   E8C7641000             call    007A3B20
0069D659   FF75E4                 push    dword ptr [ebp-$1C]

* Possible String Reference to: ') AND (NUMLCTO = '
|
0069D65C   686CD76900             push    $0069D76C

* Possible String Reference to: 'NumLcto'
|
0069D661   BA88D76900             mov     edx, $0069D788

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069D666   8B8338030000           mov     eax, [ebx+$0338]

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069D66C   E893C5E4FF             call    004E9C04
0069D671   8D55D8                 lea     edx, [ebp-$28]
0069D674   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TIBDataSet.OFFS_60
|
0069D676   FF5160                 call    dword ptr [ecx+$60]
0069D679   8B45D8                 mov     eax, [ebp-$28]
0069D67C   8D55DC                 lea     edx, [ebp-$24]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0069D67F   E89C641000             call    007A3B20
0069D684   FF75DC                 push    dword ptr [ebp-$24]
0069D687   6898D76900             push    $0069D798
0069D68C   8D45FC                 lea     eax, [ebp-$04]
0069D68F   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
0069D694   E88381D6FF             call    0040581C
0069D699   6A00                   push    $00
0069D69B   8D55D4                 lea     edx, [ebp-$2C]

* Reference to control TfrmFecha.edNumPessoa : TAlignEd
|
0069D69E   8B8314030000           mov     eax, [ebx+$0314]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069D6A4   E82360DFFF             call    004936CC
0069D6A9   8B45D4                 mov     eax, [ebp-$2C]
0069D6AC   8945E8                 mov     [ebp-$18], eax
0069D6AF   8D45E8                 lea     eax, [ebp-$18]
0069D6B2   50                     push    eax
0069D6B3   6A00                   push    $00
0069D6B5   8B45FC                 mov     eax, [ebp-$04]
0069D6B8   50                     push    eax

* Possible String Reference to: 'NUMPESSOAS'
|
0069D6B9   B8A4D76900             mov     eax, $0069D7A4
0069D6BE   8945D0                 mov     [ebp-$30], eax
0069D6C1   8D4DD0                 lea     ecx, [ebp-$30]

* Possible String Reference to: 'MESALCTO'
|
0069D6C4   BAB8D76900             mov     edx, $0069D7B8
0069D6C9   33C0                   xor     eax, eax

|
0069D6CB   E884CC1000             call    007AA354
0069D6D0   33C0                   xor     eax, eax
0069D6D2   5A                     pop     edx
0069D6D3   59                     pop     ecx
0069D6D4   59                     pop     ecx
0069D6D5   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[ãÂ]√'
|
0069D6D8   681FD76900             push    $0069D71F
0069D6DD   8D45D4                 lea     eax, [ebp-$2C]

* Reference to: System.@LStrClr(void;void);
|
0069D6E0   E8B77DD6FF             call    0040549C
0069D6E5   8D45D8                 lea     eax, [ebp-$28]
0069D6E8   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069D6ED   E8CE7DD6FF             call    004054C0
0069D6F2   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0069D6F5   E8A27DD6FF             call    0040549C
0069D6FA   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0069D6FD   E89A7DD6FF             call    0040549C
0069D702   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0069D705   E8927DD6FF             call    0040549C
0069D70A   8D45F8                 lea     eax, [ebp-$08]
0069D70D   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069D712   E8A97DD6FF             call    004054C0
0069D717   C3                     ret


* Reference to: System.@HandleFinally;
|
0069D718   E91B76D6FF             jmp     00404D38
0069D71D   EBBE                   jmp     0069D6DD

****** END
|
0069D71F   5E                     pop     esi
0069D720   5B                     pop     ebx
0069D721   8BE5                   mov     esp, ebp
0069D723   5D                     pop     ebp
0069D724   C3                     ret

*)
end;

procedure TfrmFecha.EdPrcDescChange(Sender : TObject);
begin
(*
0069D7C4   55                     push    ebp
0069D7C5   8BEC                   mov     ebp, esp
0069D7C7   B904000000             mov     ecx, $00000004
0069D7CC   6A00                   push    $00
0069D7CE   6A00                   push    $00
0069D7D0   49                     dec     ecx
0069D7D1   75F9                   jnz     0069D7CC
0069D7D3   51                     push    ecx
0069D7D4   53                     push    ebx
0069D7D5   8BD8                   mov     ebx, eax
0069D7D7   33C0                   xor     eax, eax
0069D7D9   55                     push    ebp

* Possible String Reference to: 'È»t÷ˇÎ›[ãÂ]√'
|
0069D7DA   686BD86900             push    $0069D86B

***** TRY
|
0069D7DF   64FF30                 push    dword ptr fs:[eax]
0069D7E2   648920                 mov     fs:[eax], esp
0069D7E5   8BC3                   mov     eax, ebx

|
0069D7E7   E8A4000000             call    0069D890
0069D7EC   DDD8                   fstp    st(0)
0069D7EE   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069D7F3   DB28                   fld     tbyte ptr [eax]
0069D7F5   8D45EC                 lea     eax, [ebp-$14]

* Reference to: Variants.@VarFromReal;
|
0069D7F8   E88BB4D7FF             call    00418C88
0069D7FD   8D45EC                 lea     eax, [ebp-$14]
0069D800   50                     push    eax
0069D801   8D55DC                 lea     edx, [ebp-$24]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
0069D804   8B833C030000           mov     eax, [ebx+$033C]

|
0069D80A   E8A959FBFF             call    006531B8
0069D80F   8D55DC                 lea     edx, [ebp-$24]
0069D812   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069D813   E898F8D7FF             call    0041D0B0
0069D818   8D45EC                 lea     eax, [ebp-$14]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0069D81B   E8C893D7FF             call    00416BE8
0069D820   83C4F4                 add     esp, -$0C
0069D823   DB3C24                 fstp    tbyte ptr [esp]
0069D826   9B                     wait
0069D827   8D55FC                 lea     edx, [ebp-$04]

* Possible String Reference to: '###,###,##0.00'
|
0069D82A   B880D86900             mov     eax, $0069D880

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069D82F   E808FDD6FF             call    0040D53C
0069D834   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
0069D837   8B8344030000           mov     eax, [ebx+$0344]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069D83D   E8BA5EDFFF             call    004936FC
0069D842   33C0                   xor     eax, eax
0069D844   5A                     pop     edx
0069D845   59                     pop     ecx
0069D846   59                     pop     ecx
0069D847   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
0069D84A   6872D86900             push    $0069D872
0069D84F   8D45DC                 lea     eax, [ebp-$24]

* Reference to object Variant
|
0069D852   8B1524114000           mov     edx, [$00401124]
0069D858   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069D85D   E83A88D6FF             call    0040609C
0069D862   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0069D865   E8327CD6FF             call    0040549C
0069D86A   C3                     ret


* Reference to: System.@HandleFinally;
|
0069D86B   E9C874D6FF             jmp     00404D38
0069D870   EBDD                   jmp     0069D84F

****** END
|
0069D872   5B                     pop     ebx
0069D873   8BE5                   mov     esp, ebp
0069D875   5D                     pop     ebp
0069D876   C3                     ret

*)
end;

procedure TfrmFecha.SpeedButton3Click(Sender : TObject);
begin
(*
0069DAE8   55                     push    ebp
0069DAE9   8BEC                   mov     ebp, esp

|
0069DAEB   E800030100             call    006ADDF0
0069DAF0   5D                     pop     ebp
0069DAF1   C3                     ret

*)
end;

procedure TfrmFecha.SpeedButton4Click(Sender : TObject);
begin
(*
0069DFB4   55                     push    ebp
0069DFB5   8BEC                   mov     ebp, esp

* Reference to : TFrmCgcCupom._PROC_006941FC()
|
0069DFB7   E84062FFFF             call    006941FC
0069DFBC   5D                     pop     ebp
0069DFBD   C3                     ret

*)
end;

procedure TfrmFecha._PROC_00694EF6(Sender : TObject);
begin
(*
00694EF6   4D                     dec     ebp
00694EF7   4C                     dec     esp
00694EF8   43                     inc     ebx
00694EF9   54                     push    esp
00694EFA   4F                     dec     edi
00694EFB   00FF                   add     bh, bh
00694EFD   FFFF                   DB  $FF, $FF  //      
00694EFF   FF08                   dec     dword ptr [eax]
00694F01   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_00694F1A(Sender : TObject);
begin
(*
00694F1A   4D                     dec     ebp
00694F1B   50                     push    eax
00694F1C   45                     inc     ebp
00694F1D   53                     push    ebx
00694F1E   53                     push    ebx
00694F1F   4F                     dec     edi
00694F20   41                     inc     ecx
00694F21   53                     push    ebx
00694F22   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_00694F3D(Sender : TObject);
begin
(*
00694F3D   8BEC                   mov     ebp, esp
00694F3F   B907000000             mov     ecx, $00000007
00694F44   6A00                   push    $00
00694F46   6A00                   push    $00
00694F48   49                     dec     ecx
00694F49   75F9                   jnz     00694F44
00694F4B   53                     push    ebx
00694F4C   56                     push    esi
00694F4D   8945FC                 mov     [ebp-$04], eax
00694F50   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00694F53   E8F409D7FF             call    0040594C
00694F58   33C0                   xor     eax, eax
00694F5A   55                     push    ebp
00694F5B   682F536900             push    $0069532F

***** TRY
|
00694F60   64FF30                 push    dword ptr fs:[eax]
00694F63   648920                 mov     fs:[eax], esp
00694F66   C645FB00               mov     byte ptr [ebp-$05], $00
00694F6A   8B45FC                 mov     eax, [ebp-$04]

|
00694F6D   E8AE171200             call    007B6720
00694F72   83F804                 cmp     eax, +$04
00694F75   0F8789030000           jnbe    00695304
00694F7B   FF2485824F6900         jmp     dword ptr [$694F82+eax*4]
00694F82   96                     xchg    eax, esi
00694F83   4F                     dec     edi
00694F84   6900AA526900           imul    eax, [eax], $006952AA
00694F8A   C1526900               rcl     dword ptr [edx+$69], $00
00694F8E   D85269                 fcom    dword ptr [edx+$69]
00694F91   00EF                   add     bh, ch
00694F93   52                     push    edx
00694F94   690033C9B201           imul    eax, [eax], $01B2C933

* Reference to class TfrmFecha
|
00694F9A   A134446900             mov     eax, dword ptr [$00694434]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
00694F9F   E86C8FE1FF             call    004ADF10

* Reference to GlobalVar_007DED04
|
00694FA4   A304ED7D00             mov     dword ptr [$007DED04], eax
00694FA9   33C0                   xor     eax, eax
00694FAB   55                     push    ebp

* Possible String Reference to: 'Èê˙÷ˇÎÓj'
|
00694FAC   68A3526900             push    $006952A3

***** TRY
|
00694FB1   64FF30                 push    dword ptr fs:[eax]
00694FB4   648920                 mov     fs:[eax], esp
00694FB7   8B55FC                 mov     edx, [ebp-$04]
00694FBA   A104ED7D00             mov     eax, dword ptr [$007DED04]

|
00694FBF   E8F8060000             call    006956BC
00694FC4   84C0                   test    al, al
00694FC6   0F84BF020000           jz      0069528B
00694FCC   B301                   mov     bl, $01
00694FCE   A040536900             mov     al, byte ptr [$00695340]
00694FD3   50                     push    eax
00694FD4   B050                   mov     al, $50
00694FD6   8845E5                 mov     [ebp-$1B], al
00694FD9   C645E401               mov     byte ptr [ebp-$1C], $01
00694FDD   8D45E8                 lea     eax, [ebp-$18]
00694FE0   8D55E4                 lea     edx, [ebp-$1C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
00694FE3   E8083DD8FF             call    00418CF0
00694FE8   8D4DE8                 lea     ecx, [ebp-$18]
00694FEB   A104ED7D00             mov     eax, dword ptr [$007DED04]
00694FF0   8B8038030000           mov     eax, [eax+$0338]

* Possible String Reference to: 'Status'
|
00694FF6   BA4C536900             mov     edx, $0069534C
00694FFB   8B30                   mov     esi, [eax]
00694FFD   FF9644020000           call    dword ptr [esi+$0244]
00695003   84C0                   test    al, al
00695005   0F842A010000           jz      00695135
0069500B   6A00                   push    $00
0069500D   668B0D54536900         mov     cx, word ptr [$00695354]
00695014   B203                   mov     dl, $03

* Possible String Reference to: 'Existem itens pendentes nessa mesa,
|                                 deseja marcar todos os itens como 
|                                atendidos?'
|
00695016   B860536900             mov     eax, $00695360

|
0069501B   E80CEBDAFF             call    00443B2C
00695020   83F806                 cmp     eax, +$06
00695023   0F850A010000           jnz     00695133
00695029   8D55DC                 lea     edx, [ebp-$24]
0069502C   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0069502F   E8ECEA1000             call    007A3B20
00695034   8B4DDC                 mov     ecx, [ebp-$24]
00695037   8D45E0                 lea     eax, [ebp-$20]

* Possible String Reference to: 'CODMESA = '
|
0069503A   BABC536900             mov     edx, $006953BC

* Reference to: System.@LStrCat3;
|
0069503F   E86407D7FF             call    004057A8
00695044   8B45E0                 mov     eax, [ebp-$20]
00695047   50                     push    eax
00695048   6A00                   push    $00
0069504A   6A01                   push    $01
0069504C   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695051   8B00                   mov     eax, [eax]
00695053   8B4068                 mov     eax, [eax+$68]
00695056   B9D0536900             mov     ecx, $006953D0

* Possible String Reference to: 'MESAS'
|
0069505B   BADC536900             mov     edx, $006953DC

|
00695060   E8032A1100             call    007A7A68
00695065   84C0                   test    al, al
00695067   0F84C8000000           jz      00695135
0069506D   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695072   8B00                   mov     eax, [eax]
00695074   8B4070                 mov     eax, [eax+$70]

* Reference to : TFrmInfoAtu._PROC_007A66A4()
|
00695077   E828161100             call    007A66A4
0069507C   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695081   8B00                   mov     eax, [eax]
00695083   8B4074                 mov     eax, [eax+$74]

* Reference to : TFrmInfoAtu._PROC_007A66A4()
|
00695086   E819161100             call    007A66A4
0069508B   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695090   8B00                   mov     eax, [eax]
00695092   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.First(TDataSet);
|
00695095   E8925FE5FF             call    004EB02C
0069509A   EB6E                   jmp     0069510A
0069509C   8D55D8                 lea     edx, [ebp-$28]
0069509F   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006950A4   8B00                   mov     eax, [eax]
006950A6   8B80E0050000           mov     eax, [eax+$05E0]
006950AC   8B08                   mov     ecx, [eax]
006950AE   FF5160                 call    dword ptr [ecx+$60]
006950B1   8B45D8                 mov     eax, [ebp-$28]
006950B4   BAEC536900             mov     edx, $006953EC

* Reference to: System.@LStrCmp;
|
006950B9   E8EA07D7FF             call    004058A8
006950BE   743B                   jz      006950FB
006950C0   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006950C5   8B00                   mov     eax, [eax]
006950C7   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
006950CA   E86963E5FF             call    004EB438
006950CF   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006950D4   8B00                   mov     eax, [eax]
006950D6   8B80E0050000           mov     eax, [eax+$05E0]
006950DC   BAF8536900             mov     edx, $006953F8
006950E1   8B08                   mov     ecx, [eax]
006950E3   FF91B0000000           call    dword ptr [ecx+$00B0]
006950E9   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006950EE   8B00                   mov     eax, [eax]
006950F0   8B4074                 mov     eax, [eax+$74]
006950F3   8B10                   mov     edx, [eax]
006950F5   FF924C020000           call    dword ptr [edx+$024C]
006950FB   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695100   8B00                   mov     eax, [eax]
00695102   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Next(TDataSet);
|
00695105   E83A62E5FF             call    004EB344
0069510A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0069510F   8B00                   mov     eax, [eax]
00695111   8B4074                 mov     eax, [eax+$74]
00695114   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0069511B   0F847BFFFFFF           jz      0069509C
00695121   A104ED7D00             mov     eax, dword ptr [$007DED04]
00695126   8B8038030000           mov     eax, [eax+$0338]

* Reference to : TFrmInfoAtu._PROC_007A66A4()
|
0069512C   E873151100             call    007A66A4
00695131   EB02                   jmp     00695135
00695133   33DB                   xor     ebx, ebx
00695135   84DB                   test    bl, bl
00695137   0F844E010000           jz      0069528B
0069513D   A104ED7D00             mov     eax, dword ptr [$007DED04]
00695142   8B8038030000           mov     eax, [eax+$0338]

* Possible String Reference to: 'CODMESA'
|
00695148   BA04546900             mov     edx, $00695404

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069514D   E8B24AE5FF             call    004E9C04
00695152   8B10                   mov     edx, [eax]
00695154   FF5258                 call    dword ptr [edx+$58]
00695157   8B1518AC7D00           mov     edx, [$007DAC18]
0069515D   8902                   mov     [edx], eax
0069515F   A104ED7D00             mov     eax, dword ptr [$007DED04]
00695164   8B8038030000           mov     eax, [eax+$0338]

* Possible String Reference to: 'NUMLCTO'
|
0069516A   BA14546900             mov     edx, $00695414

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069516F   E8904AE5FF             call    004E9C04
00695174   8B10                   mov     edx, [eax]
00695176   FF5258                 call    dword ptr [edx+$58]
00695179   8B1564A87D00           mov     edx, [$007DA864]
0069517F   8902                   mov     [edx], eax
00695181   A104ED7D00             mov     eax, dword ptr [$007DED04]

|
00695186   E8E16D0000             call    0069BF6C
0069518B   A104ED7D00             mov     eax, dword ptr [$007DED04]
00695190   8B8038030000           mov     eax, [eax+$0338]

* Possible String Reference to: 'CODMESA'
|
00695196   BA04546900             mov     edx, $00695404

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069519B   E8644AE5FF             call    004E9C04
006951A0   8D55D4                 lea     edx, [ebp-$2C]
006951A3   8B08                   mov     ecx, [eax]
006951A5   FF5160                 call    dword ptr [ecx+$60]
006951A8   8B55D4                 mov     edx, [ebp-$2C]
006951AB   A104ED7D00             mov     eax, dword ptr [$007DED04]
006951B0   8B801C030000           mov     eax, [eax+$031C]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
006951B6   E8B58CE6FF             call    004FDE70
006951BB   A104ED7D00             mov     eax, dword ptr [$007DED04]
006951C0   8B8038030000           mov     eax, [eax+$0338]

* Possible String Reference to: 'NUMPESSOAS'
|
006951C6   BA24546900             mov     edx, $00695424

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006951CB   E8344AE5FF             call    004E9C04
006951D0   8D55D0                 lea     edx, [ebp-$30]
006951D3   8B08                   mov     ecx, [eax]
006951D5   FF5160                 call    dword ptr [ecx+$60]
006951D8   8B55D0                 mov     edx, [ebp-$30]
006951DB   A104ED7D00             mov     eax, dword ptr [$007DED04]
006951E0   8B8014030000           mov     eax, [eax+$0314]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006951E6   E811E5DFFF             call    004936FC
006951EB   A104ED7D00             mov     eax, dword ptr [$007DED04]
006951F0   8B8038030000           mov     eax, [eax+$0338]

* Possible String Reference to: 'CgcClie'
|
006951F6   BA38546900             mov     edx, $00695438

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006951FB   E8044AE5FF             call    004E9C04
00695200   8D55CC                 lea     edx, [ebp-$34]
00695203   8B08                   mov     ecx, [eax]
00695205   FF5160                 call    dword ptr [ecx+$60]
00695208   8B55CC                 mov     edx, [ebp-$34]
0069520B   A118A67D00             mov     eax, dword ptr [$007DA618]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00695210   E8DB02D7FF             call    004054F0
00695215   A104ED7D00             mov     eax, dword ptr [$007DED04]
0069521A   8B8038030000           mov     eax, [eax+$0338]

* Possible String Reference to: 'CodFunc'
|
00695220   BA48546900             mov     edx, $00695448

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00695225   E8DA49E5FF             call    004E9C04
0069522A   8D55C8                 lea     edx, [ebp-$38]
0069522D   8B08                   mov     ecx, [eax]
0069522F   FF5160                 call    dword ptr [ecx+$60]
00695232   8B55C8                 mov     edx, [ebp-$38]
00695235   A1D0B07D00             mov     eax, dword ptr [$007DB0D0]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069523A   E8B102D7FF             call    004054F0
0069523F   BA04000000             mov     edx, $00000004
00695244   8B45FC                 mov     eax, [ebp-$04]

|
00695247   E828131200             call    007B6574
0069524C   33C0                   xor     eax, eax
0069524E   55                     push    ebp
0069524F   6884526900             push    $00695284

***** TRY
|
00695254   64FF30                 push    dword ptr fs:[eax]
00695257   648920                 mov     fs:[eax], esp
0069525A   A104ED7D00             mov     eax, dword ptr [$007DED04]
0069525F   8B10                   mov     edx, [eax]
00695261   FF92EC000000           call    dword ptr [edx+$00EC]
00695267   48                     dec     eax
00695268   0F9445FB               setz    byte ptr [ebp-$05]
0069526C   33C0                   xor     eax, eax
0069526E   5A                     pop     edx
0069526F   59                     pop     ecx
00695270   59                     pop     ecx
00695271   648910                 mov     fs:[eax], edx

****** FINALLY
|
00695274   688B526900             push    $0069528B
00695279   33D2                   xor     edx, edx
0069527B   8B45FC                 mov     eax, [ebp-$04]

|
0069527E   E8F1121200             call    007B6574
00695283   C3                     ret


* Reference to: System.@HandleFinally;
|
00695284   E9AFFAD6FF             jmp     00404D38
00695289   EBEE                   jmp     00695279

****** END
|
0069528B   33C0                   xor     eax, eax
0069528D   5A                     pop     edx
0069528E   59                     pop     ecx
0069528F   59                     pop     ecx
00695290   648910                 mov     fs:[eax], edx

****** FINALLY
|
00695293   6804536900             push    $00695304
00695298   A104ED7D00             mov     eax, dword ptr [$007DED04]

* Reference to: System.TObject.Free(TObject);
|
0069529D   E8FAF2D6FF             call    0040459C
006952A2   C3                     ret


* Reference to: System.@HandleFinally;
|
006952A3   E990FAD6FF             jmp     00404D38
006952A8   EBEE                   jmp     00695298
006952AA   6A00                   push    $00
006952AC   668B0D50546900         mov     cx, word ptr [$00695450]
006952B3   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel fechar a mesa porque
|                                 outro terminal ja est· adicionando
|                                 itens!'
|
006952B5   B85C546900             mov     eax, $0069545C

|
006952BA   E86DE8DAFF             call    00443B2C
006952BF   EB43                   jmp     00695304
006952C1   6A00                   push    $00
006952C3   668B0D50546900         mov     cx, word ptr [$00695450]
006952CA   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel fechar a mesa porque
|                                 outro terminal est· transferindo i
|                                tens dessa mesa!'
|
006952CC   B8B4546900             mov     eax, $006954B4

|
006952D1   E856E8DAFF             call    00443B2C
006952D6   EB2C                   jmp     00695304
006952D8   6A00                   push    $00
006952DA   668B0D50546900         mov     cx, word ptr [$00695450]
006952E1   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel fechar a mesa porque
|                                 outro terminal est· cancelando ite
|                                ns dessa mesa!'
|
006952E3   B814556900             mov     eax, $00695514

|
006952E8   E83FE8DAFF             call    00443B2C
006952ED   EB15                   jmp     00695304
006952EF   6A00                   push    $00
006952F1   668B0D50546900         mov     cx, word ptr [$00695450]
006952F8   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel fechar a mesa porque
|                                 outro terminal est· transferindo i
|                                tens dessa mesa!'
|
006952FA   B8B4546900             mov     eax, $006954B4

|
006952FF   E828E8DAFF             call    00443B2C

****** END
|
00695304   33C0                   xor     eax, eax
00695306   5A                     pop     edx
00695307   59                     pop     ecx
00695308   59                     pop     ecx
00695309   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚^[ãÂ]√'
|
0069530C   6836536900             push    $00695336
00695311   8D45C8                 lea     eax, [ebp-$38]
00695314   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00695319   E8A201D7FF             call    004054C0
0069531E   8D45E8                 lea     eax, [ebp-$18]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00695321   E852F2D7FF             call    00414578
00695326   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00695329   E86E01D7FF             call    0040549C
0069532E   C3                     ret


* Reference to: System.@HandleFinally;
|
0069532F   E904FAD6FF             jmp     00404D38
00695334   EBDB                   jmp     00695311

****** END
|
00695336   8A45FB                 mov     al, byte ptr [ebp-$05]
00695339   5E                     pop     esi
0069533A   5B                     pop     ebx
0069533B   8BE5                   mov     esp, ebp
0069533D   5D                     pop     ebp
0069533E   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069533F(Sender : TObject);
begin
(*
0069533F   0001                   add     [ecx], al
00695341   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_00695416(Sender : TObject);
begin
(*
00695416   4D                     dec     ebp
00695417   4C                     dec     esp
00695418   43                     inc     ebx
00695419   54                     push    esp
0069541A   4F                     dec     edi
0069541B   00FF                   add     bh, bh
0069541D   FFFF                   DB  $FF, $FF  //      
0069541F   FF0A                   dec     dword ptr [edx]
00695421   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_00695426(Sender : TObject);
begin
(*
00695426   4D                     dec     ebp
00695427   50                     push    eax
00695428   45                     inc     ebp
00695429   53                     push    ebx
0069542A   53                     push    ebx
0069542B   4F                     dec     edi
0069542C   41                     inc     ecx
0069542D   53                     push    ebx
0069542E   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069556D(Sender : TObject);
begin
(*
0069556D   8BEC                   mov     ebp, esp
0069556F   83C4F8                 add     esp, -$08
00695572   53                     push    ebx
00695573   56                     push    esi
00695574   57                     push    edi
00695575   33D2                   xor     edx, edx
00695577   8955F8                 mov     [ebp-$08], edx
0069557A   33C0                   xor     eax, eax
0069557C   55                     push    ebp

* Possible String Reference to: 'ÈÀˆ÷ˇÎäEˇ_^[YY]√'
|
0069557D   6868566900             push    $00695668

***** TRY
|
00695582   64FF30                 push    dword ptr fs:[eax]
00695585   648920                 mov     fs:[eax], esp
00695588   C645FF00               mov     byte ptr [ebp-$01], $00
0069558C   33C0                   xor     eax, eax
0069558E   55                     push    ebp
0069558F   684B566900             push    $0069564B

***** TRY
|
00695594   64FF30                 push    dword ptr fs:[eax]
00695597   648920                 mov     fs:[eax], esp
0069559A   33C0                   xor     eax, eax
0069559C   55                     push    ebp
0069559D   6802566900             push    $00695602

***** TRY
|
006955A2   64FF30                 push    dword ptr fs:[eax]
006955A5   648920                 mov     fs:[eax], esp
006955A8   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006955AD   8B00                   mov     eax, [eax]
006955AF   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
006955B5   E8E634E5FF             call    004E8AA0
006955BA   84C0                   test    al, al
006955BC   7412                   jz      006955D0
006955BE   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006955C3   8B00                   mov     eax, [eax]
006955C5   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DB.TDataSet.Close(TDataSet);
|
006955CB   E89033E5FF             call    004E8960
006955D0   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006955D5   8B00                   mov     eax, [eax]
006955D7   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DBClient.TCustomClientDataSet.CreateDataSet(TCustomClientDataSet);
|
006955DD   E89A17E6FF             call    004F6D7C
006955E2   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006955E7   8B00                   mov     eax, [eax]
006955E9   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DB.TDataSet.Open(TDataSet);
|
006955EF   E86033E5FF             call    004E8954
006955F4   C645FF01               mov     byte ptr [ebp-$01], $01
006955F8   33C0                   xor     eax, eax
006955FA   5A                     pop     edx
006955FB   59                     pop     ecx
006955FC   59                     pop     ecx
006955FD   648910                 mov     fs:[eax], edx
00695600   EB3B                   jmp     0069563D

* Reference to: System.@HandleOnException;
|
00695602   E9A9F5D6FF             jmp     00404BB0
00695607   0100                   add     [eax], eax
00695609   0000                   add     [eax], al
0069560B   40                     inc     eax
0069560C   95                     xchg    eax, ebp
0069560D   40                     inc     eax
0069560E   0013                   add     [ebx], dl
00695610   56                     push    esi
00695611   690089C36A00           imul    eax, [eax], $006AC389
00695617   8B4B04                 mov     ecx, [ebx+$04]
0069561A   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Ocorreu um erro ao executar a funÁ„
|                                o AbreTabTemp.'
|
0069561D   BA84566900             mov     edx, $00695684

* Reference to: System.@LStrCat3;
|
00695622   E88101D7FF             call    004057A8
00695627   8B45F8                 mov     eax, [ebp-$08]
0069562A   668B0DB8566900         mov     cx, word ptr [$006956B8]
00695631   B201                   mov     dl, $01

|
00695633   E8F4E4DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00695638   E873F8D6FF             call    00404EB0

****** END
|
0069563D   33C0                   xor     eax, eax
0069563F   5A                     pop     edx
00695640   59                     pop     ecx
00695641   59                     pop     ecx
00695642   648910                 mov     fs:[eax], edx

****** FINALLY
|
00695645   6852566900             push    $00695652
0069564A   C3                     ret


* Reference to: System.@HandleFinally;
|
0069564B   E9E8F6D6FF             jmp     00404D38
00695650   EBF8                   jmp     0069564A

****** END
|
00695652   33C0                   xor     eax, eax
00695654   5A                     pop     edx
00695655   59                     pop     ecx
00695656   59                     pop     ecx
00695657   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[YY]√'
|
0069565A   686F566900             push    $0069566F
0069565F   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
00695662   E835FED6FF             call    0040549C
00695667   C3                     ret


* Reference to: System.@HandleFinally;
|
00695668   E9CBF6D6FF             jmp     00404D38
0069566D   EBF0                   jmp     0069565F

****** END
|
0069566F   8A45FF                 mov     al, byte ptr [ebp-$01]
00695672   5F                     pop     edi
00695673   5E                     pop     esi
00695674   5B                     pop     ebx
00695675   59                     pop     ecx
00695676   59                     pop     ecx
00695677   5D                     pop     ebp
00695678   C3                     ret

*)
end;

procedure TfrmFecha._PROC_00695668(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00695668   E9CBF6D6FF             jmp     00404D38

|
0069566D   EBF0                   jmp     0069565F
0069566F   8A45FF                 mov     al, byte ptr [ebp-$01]
00695672   5F                     pop     edi
00695673   5E                     pop     esi
00695674   5B                     pop     ebx
00695675   59                     pop     ecx
00695676   59                     pop     ecx
00695677   5D                     pop     ebp
00695678   C3                     ret

*)
end;

procedure TfrmFecha._PROC_006956BD(Sender : TObject);
begin
(*
006956BD   8BEC                   mov     ebp, esp
006956BF   83C4F4                 add     esp, -$0C
006956C2   53                     push    ebx
006956C3   56                     push    esi
006956C4   57                     push    edi
006956C5   33C9                   xor     ecx, ecx
006956C7   894DF4                 mov     [ebp-$0C], ecx
006956CA   8955FC                 mov     [ebp-$04], edx
006956CD   8BD8                   mov     ebx, eax
006956CF   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006956D2   E87502D7FF             call    0040594C
006956D7   33C0                   xor     eax, eax
006956D9   55                     push    ebp

* Possible String Reference to: 'ÈKı÷ˇÎËäE˚_^[ãÂ]√'
|
006956DA   68E8576900             push    $006957E8

***** TRY
|
006956DF   64FF30                 push    dword ptr fs:[eax]
006956E2   648920                 mov     fs:[eax], esp
006956E5   C645FB00               mov     byte ptr [ebp-$05], $00
006956E9   33C0                   xor     eax, eax
006956EB   55                     push    ebp
006956EC   68C3576900             push    $006957C3

***** TRY
|
006956F1   64FF30                 push    dword ptr fs:[eax]
006956F4   648920                 mov     fs:[eax], esp
006956F7   33C0                   xor     eax, eax
006956F9   55                     push    ebp
006956FA   687A576900             push    $0069577A

***** TRY
|
006956FF   64FF30                 push    dword ptr fs:[eax]
00695702   648920                 mov     fs:[eax], esp

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
00695705   8B8338030000           mov     eax, [ebx+$0338]

|
0069570B   E8880F1100             call    007A6698

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
00695710   8B8338030000           mov     eax, [ebx+$0338]

* Possible String Reference to: 'CODMESA'
|
00695716   BA04586900             mov     edx, $00695804

* Reference to: IBCustomDataSet.TIBDataSet.ParamByName(TIBDataSet;AnsiString):TIBXSQLVAR;
|
0069571B   E8ECB9ECFF             call    0056110C
00695720   50                     push    eax
00695721   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
00695724   E8A757D7FF             call    0040AED0
00695729   8BD0                   mov     edx, eax
0069572B   58                     pop     eax

* Reference to: IBSQL.TIBXSQLVAR.SetAsLong(TIBXSQLVAR;Long);
|
0069572C   E85BE6ECFF             call    00563D8C

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
00695731   8B8338030000           mov     eax, [ebx+$0338]

|
00695737   E8CC0D1100             call    007A6508

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069573C   8B8338030000           mov     eax, [ebx+$0338]

* Reference to: DB.TDataSet.Last(TDataSet);
|
00695742   E8BD59E5FF             call    004EB104

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
00695747   8B8338030000           mov     eax, [ebx+$0338]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
0069574D   E84E33E5FF             call    004E8AA0
00695752   84C0                   test    al, al
00695754   7411                   jz      00695767

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
00695756   8B8338030000           mov     eax, [ebx+$0338]
0069575C   8B10                   mov     edx, [eax]

* Possible reference to virtual method TIBDataSet.OFFS_014C
|
0069575E   FF924C010000           call    dword ptr [edx+$014C]
00695764   48                     dec     eax
00695765   7D04                   jnl     0069576B
00695767   33C0                   xor     eax, eax
00695769   EB02                   jmp     0069576D
0069576B   B001                   mov     al, $01
0069576D   8845FB                 mov     [ebp-$05], al
00695770   33C0                   xor     eax, eax
00695772   5A                     pop     edx
00695773   59                     pop     ecx
00695774   59                     pop     ecx
00695775   648910                 mov     fs:[eax], edx
00695778   EB3B                   jmp     006957B5

* Reference to: System.@HandleOnException;
|
0069577A   E931F4D6FF             jmp     00404BB0
0069577F   0100                   add     [eax], eax
00695781   0000                   add     [eax], al
00695783   40                     inc     eax
00695784   95                     xchg    eax, ebp
00695785   40                     inc     eax
00695786   008B57690089           add     [ebx+$89006957], cl
0069578C   C3                     ret

0069578D   6A00                   push    $00

* Reference to field TfrmFecha.Owner : TComponent
|
0069578F   8B4B04                 mov     ecx, [ebx+$04]
00695792   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'Ocorreu um erro na funÁ„o VerificaM
|                                esa.'
|
00695795   BA14586900             mov     edx, $00695814

* Reference to: System.@LStrCat3;
|
0069579A   E80900D7FF             call    004057A8
0069579F   8B45F4                 mov     eax, [ebp-$0C]
006957A2   668B0D40586900         mov     cx, word ptr [$00695840]
006957A9   B201                   mov     dl, $01

|
006957AB   E87CE3DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006957B0   E8FBF6D6FF             call    00404EB0

****** END
|
006957B5   33C0                   xor     eax, eax
006957B7   5A                     pop     edx
006957B8   59                     pop     ecx
006957B9   59                     pop     ecx
006957BA   648910                 mov     fs:[eax], edx

****** FINALLY
|
006957BD   68CA576900             push    $006957CA
006957C2   C3                     ret


* Reference to: System.@HandleFinally;
|
006957C3   E970F5D6FF             jmp     00404D38
006957C8   EBF8                   jmp     006957C2

****** END
|
006957CA   33C0                   xor     eax, eax
006957CC   5A                     pop     edx
006957CD   59                     pop     ecx
006957CE   59                     pop     ecx
006957CF   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]√'
|
006957D2   68EF576900             push    $006957EF
006957D7   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006957DA   E8BDFCD6FF             call    0040549C
006957DF   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006957E2   E8B5FCD6FF             call    0040549C
006957E7   C3                     ret

*)
end;

procedure TfrmFecha._PROC_006957E8(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006957E8   E94BF5D6FF             jmp     00404D38

|
006957ED   EBE8                   jmp     006957D7
006957EF   8A45FB                 mov     al, byte ptr [ebp-$05]
006957F2   5F                     pop     edi
006957F3   5E                     pop     esi
006957F4   5B                     pop     ebx
006957F5   8BE5                   mov     esp, ebp
006957F7   5D                     pop     ebp
006957F8   C3                     ret

*)
end;

procedure TfrmFecha._PROC_00695845(Sender : TObject);
begin
(*
00695845   8BEC                   mov     ebp, esp
00695847   51                     push    ecx
00695848   B91B010000             mov     ecx, $0000011B
0069584D   6A00                   push    $00
0069584F   6A00                   push    $00
00695851   49                     dec     ecx
00695852   75F9                   jnz     0069584D
00695854   51                     push    ecx
00695855   874DFC                 xchg    [ebp-$04], ecx
00695858   53                     push    ebx
00695859   56                     push    esi
0069585A   57                     push    edi
0069585B   894DF8                 mov     [ebp-$08], ecx
0069585E   8955FC                 mov     [ebp-$04], edx
00695861   8BF0                   mov     esi, eax
00695863   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00695866   E8E100D7FF             call    0040594C
0069586B   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0069586E   E8D900D7FF             call    0040594C
00695873   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00695876   E8D100D7FF             call    0040594C
0069587B   8B4510                 mov     eax, [ebp+$10]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0069587E   E8C900D7FF             call    0040594C
00695883   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00695886   E8C100D7FF             call    0040594C
0069588B   8B1DE4AF7D00           mov     ebx, [$007DAFE4]
00695891   8B3D48A87D00           mov     edi, [$007DA848]
00695897   33C0                   xor     eax, eax
00695899   55                     push    ebp
0069589A   68B27E6900             push    $00697EB2

***** TRY
|
0069589F   64FF30                 push    dword ptr fs:[eax]
006958A2   648920                 mov     fs:[eax], esp
006958A5   C645F701               mov     byte ptr [ebp-$09], $01
006958A9   33D2                   xor     edx, edx
006958AB   55                     push    ebp
006958AC   6846796900             push    $00697946

***** TRY
|
006958B1   64FF32                 push    dword ptr fs:[edx]
006958B4   648922                 mov     fs:[edx], esp
006958B7   33D2                   xor     edx, edx
006958B9   55                     push    ebp
006958BA   680C796900             push    $0069790C

***** TRY
|
006958BF   64FF32                 push    dword ptr fs:[edx]
006958C2   648922                 mov     fs:[edx], esp
006958C5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006958CA   8B00                   mov     eax, [eax]
006958CC   8B80AC010000           mov     eax, [eax+$01AC]
006958D2   8B10                   mov     edx, [eax]
006958D4   FF5244                 call    dword ptr [edx+$44]
006958D7   84C0                   test    al, al
006958D9   0F8423200000           jz      00697902
006958DF   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006958E4   FF7004                 push    dword ptr [eax+$04]
006958E7   FF30                   push    dword ptr [eax]
006958E9   A154A37D00             mov     eax, dword ptr [$007DA354]
006958EE   8B00                   mov     eax, [eax]
006958F0   50                     push    eax
006958F1   A138B07D00             mov     eax, dword ptr [$007DB038]
006958F6   8B00                   mov     eax, [eax]
006958F8   50                     push    eax
006958F9   6A00                   push    $00
006958FB   66A1C87E6900           mov     ax, word ptr [$00697EC8]
00695901   50                     push    eax
00695902   6A00                   push    $00
00695904   8B0D64A07D00           mov     ecx, [$007DA064]
0069590A   8B09                   mov     ecx, [ecx]
0069590C   8B15DCAD7D00           mov     edx, [$007DADDC]
00695912   8B12                   mov     edx, [edx]
00695914   33C0                   xor     eax, eax

|
00695916   E84583FAFF             call    0063DC60
0069591B   A118A67D00             mov     eax, dword ptr [$007DA618]
00695920   8B00                   mov     eax, [eax]

|
00695922   E839AE1100             call    007B0760
00695927   84C0                   test    al, al
00695929   0F84C91F0000           jz      006978F8
0069592F   33C0                   xor     eax, eax
00695931   8945E8                 mov     [ebp-$18], eax
00695934   8945EC                 mov     [ebp-$14], eax
00695937   668945F0               mov     [ebp-$10], ax
0069593B   33C0                   xor     eax, eax
0069593D   8945D8                 mov     [ebp-$28], eax
00695940   8945DC                 mov     [ebp-$24], eax
00695943   668945E0               mov     [ebp-$20], ax
00695947   33C0                   xor     eax, eax
00695949   8945C8                 mov     [ebp-$38], eax
0069594C   8945CC                 mov     [ebp-$34], eax
0069594F   668945D0               mov     [ebp-$30], ax
00695953   C645C700               mov     byte ptr [ebp-$39], $00
00695957   A164A07D00             mov     eax, dword ptr [$007DA064]

* Possible String Reference to: 'VE'
|
0069595C   BAD47E6900             mov     edx, $00697ED4

* Reference to: System.@LStrAsg(void;void;void;void);
|
00695961   E88AFBD6FF             call    004054F0
00695966   A154AE7D00             mov     eax, dword ptr [$007DAE54]
0069596B   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
0069596D   E8EE03E2FF             call    004B5D60
00695972   8B03                   mov     eax, [ebx]

|
00695974   E8FB181200             call    007B7274
00695979   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]
0069597F   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695982   E83D33D8FF             call    00418CC4
00695987   8D8D50FFFFFF           lea     ecx, [ebp+$FFFFFF50]
0069598D   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Filial'
|
0069598F   BAE07E6900             mov     edx, $00697EE0

* Reference to : tArrayTable._PROC_007B767C()
|
00695994   E8E31C1200             call    007B767C
00695999   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]
0069599F   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006959A2   E81D33D8FF             call    00418CC4
006959A7   8D8D40FFFFFF           lea     ecx, [ebp+$FFFFFF40]
006959AD   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'TipoLcto'
|
006959AF   BAF07E6900             mov     edx, $00697EF0

* Reference to : tArrayTable._PROC_007B767C()
|
006959B4   E8C31C1200             call    007B767C
006959B9   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006959BE   FF7004                 push    dword ptr [eax+$04]
006959C1   FF30                   push    dword ptr [eax]
006959C3   8B4514                 mov     eax, [ebp+$14]

|
006959C6   E8E59AD7FF             call    0040F4B0
006959CB   83C4F8                 add     esp, -$08
006959CE   DD1C24                 fstp    qword ptr [esp]
006959D1   9B                     wait
006959D2   8D952CFFFFFF           lea     edx, [ebp+$FFFFFF2C]

* Possible String Reference to: 'mm/dd/yyyy'
|
006959D8   B8047F6900             mov     eax, $00697F04

|
006959DD   E8F68ED7FF             call    0040E8D8
006959E2   8B952CFFFFFF           mov     edx, [ebp+$FFFFFF2C]
006959E8   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006959EE   E8D132D8FF             call    00418CC4
006959F3   8D8D30FFFFFF           lea     ecx, [ebp+$FFFFFF30]
006959F9   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'DtLcto'
|
006959FB   BA187F6900             mov     edx, $00697F18

* Reference to : tArrayTable._PROC_007B767C()
|
00695A00   E8771C1200             call    007B767C
00695A05   8D851CFFFFFF           lea     eax, [ebp+$FFFFFF1C]
00695A0B   8B5510                 mov     edx, [ebp+$10]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695A0E   E8B132D8FF             call    00418CC4
00695A13   8D8D1CFFFFFF           lea     ecx, [ebp+$FFFFFF1C]
00695A19   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Especie'
|
00695A1B   BA287F6900             mov     edx, $00697F28

* Reference to : tArrayTable._PROC_007B767C()
|
00695A20   E8571C1200             call    007B767C
00695A25   8D850CFFFFFF           lea     eax, [ebp+$FFFFFF0C]
00695A2B   8B550C                 mov     edx, [ebp+$0C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695A2E   E89132D8FF             call    00418CC4
00695A33   8D8D0CFFFFFF           lea     ecx, [ebp+$FFFFFF0C]
00695A39   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Serie'
|
00695A3B   BA387F6900             mov     edx, $00697F38

* Reference to : tArrayTable._PROC_007B767C()
|
00695A40   E8371C1200             call    007B767C
00695A45   8D85FCFEFFFF           lea     eax, [ebp+$FFFFFEFC]
00695A4B   8B5508                 mov     edx, [ebp+$08]
00695A4E   B1FC                   mov     cl, $FC

|
00695A50   E81B30D8FF             call    00418A70
00695A55   8D8DFCFEFFFF           lea     ecx, [ebp+$FFFFFEFC]
00695A5B   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NumLcto'
|
00695A5D   BA487F6900             mov     edx, $00697F48

* Reference to : tArrayTable._PROC_007B767C()
|
00695A62   E8151C1200             call    007B767C
00695A67   8D85ECFEFFFF           lea     eax, [ebp+$FFFFFEEC]
00695A6D   8B1518A67D00           mov     edx, [$007DA618]
00695A73   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695A75   E84A32D8FF             call    00418CC4
00695A7A   8D8DECFEFFFF           lea     ecx, [ebp+$FFFFFEEC]
00695A80   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
00695A82   BA587F6900             mov     edx, $00697F58

* Reference to : tArrayTable._PROC_007B767C()
|
00695A87   E8F01B1200             call    007B767C
00695A8C   8D85DCFEFFFF           lea     eax, [ebp+$FFFFFEDC]
00695A92   8B1540A37D00           mov     edx, [$007DA340]
00695A98   8A12                   mov     dl, byte ptr [edx]

* Reference to: Variants.@VarFromBool(TVarData;TVarData;Boolean);
|
00695A9A   E8C131D8FF             call    00418C60
00695A9F   8D8DDCFEFFFF           lea     ecx, [ebp+$FFFFFEDC]
00695AA5   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Contabiliza'
|
00695AA7   BA687F6900             mov     edx, $00697F68

* Reference to : tArrayTable._PROC_007B767C()
|
00695AAC   E8CB1B1200             call    007B767C
00695AB1   8D85CCFEFFFF           lea     eax, [ebp+$FFFFFECC]
00695AB7   8B1558B57D00           mov     edx, [$007DB558]
00695ABD   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695ABF   E80032D8FF             call    00418CC4
00695AC4   8D8DCCFEFFFF           lea     ecx, [ebp+$FFFFFECC]
00695ACA   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodMoeda'
|
00695ACC   BA7C7F6900             mov     edx, $00697F7C

* Reference to : tArrayTable._PROC_007B767C()
|
00695AD1   E8A61B1200             call    007B767C
00695AD6   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]
00695ADC   33D2                   xor     edx, edx
00695ADE   B101                   mov     cl, $01

|
00695AE0   E88B2FD8FF             call    00418A70
00695AE5   8D8DBCFEFFFF           lea     ecx, [ebp+$FFFFFEBC]
00695AEB   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NumPedido'
|
00695AED   BA907F6900             mov     edx, $00697F90

* Reference to : tArrayTable._PROC_007B767C()
|
00695AF2   E8851B1200             call    007B767C
00695AF7   A180AC7D00             mov     eax, dword ptr [$007DAC80]
00695AFC   FF7004                 push    dword ptr [eax+$04]
00695AFF   FF30                   push    dword ptr [eax]
00695B01   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to : TFrmInfoAtu._PROC_007A6208()
|
00695B07   E8FC061100             call    007A6208
00695B0C   8B95A8FEFFFF           mov     edx, [ebp+$FFFFFEA8]
00695B12   8D85ACFEFFFF           lea     eax, [ebp+$FFFFFEAC]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695B18   E8A731D8FF             call    00418CC4
00695B1D   8D8DACFEFFFF           lea     ecx, [ebp+$FFFFFEAC]
00695B23   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'DtCaixa'
|
00695B25   BAA47F6900             mov     edx, $00697FA4

* Reference to : tArrayTable._PROC_007B767C()
|
00695B2A   E84D1B1200             call    007B767C
00695B2F   B04E                   mov     al, $4E
00695B31   888595FEFFFF           mov     [ebp+$FFFFFE95], al
00695B37   C68594FEFFFF01         mov     byte ptr [ebp+$FFFFFE94], $01
00695B3E   8D8598FEFFFF           lea     eax, [ebp+$FFFFFE98]
00695B44   8D9594FEFFFF           lea     edx, [ebp+$FFFFFE94]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
00695B4A   E8A131D8FF             call    00418CF0
00695B4F   8D8D98FEFFFF           lea     ecx, [ebp+$FFFFFE98]
00695B55   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Status'
|
00695B57   BAB47F6900             mov     edx, $00697FB4

* Reference to : tArrayTable._PROC_007B767C()
|
00695B5C   E81B1B1200             call    007B767C
00695B61   8D9580FEFFFF           lea     edx, [ebp+$FFFFFE80]

* Reference to control TfrmFecha.edCodMesa : TJvComboEdit
|
00695B67   8B861C030000           mov     eax, [esi+$031C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00695B6D   E8CA83E6FF             call    004FDF3C
00695B72   8B9580FEFFFF           mov     edx, [ebp+$FFFFFE80]
00695B78   8D8584FEFFFF           lea     eax, [ebp+$FFFFFE84]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695B7E   E84131D8FF             call    00418CC4
00695B83   8D8D84FEFFFF           lea     ecx, [ebp+$FFFFFE84]
00695B89   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'OrigemLcto'
|
00695B8B   BAC47F6900             mov     edx, $00697FC4

* Reference to : tArrayTable._PROC_007B767C()
|
00695B90   E8E71A1200             call    007B767C
00695B95   8D956CFEFFFF           lea     edx, [ebp+$FFFFFE6C]
00695B9B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00695BA0   8B00                   mov     eax, [eax]
00695BA2   8B8010020000           mov     eax, [eax+$0210]
00695BA8   8B08                   mov     ecx, [eax]
00695BAA   FF5160                 call    dword ptr [ecx+$60]
00695BAD   8B956CFEFFFF           mov     edx, [ebp+$FFFFFE6C]
00695BB3   8D8570FEFFFF           lea     eax, [ebp+$FFFFFE70]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695BB9   E80631D8FF             call    00418CC4
00695BBE   8D8D70FEFFFF           lea     ecx, [ebp+$FFFFFE70]
00695BC4   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NatOper'
|
00695BC6   BAD87F6900             mov     edx, $00697FD8

* Reference to : tArrayTable._PROC_007B767C()
|
00695BCB   E8AC1A1200             call    007B767C
00695BD0   8D8D68FEFFFF           lea     ecx, [ebp+$FFFFFE68]
00695BD6   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CondPagto'
|
00695BD8   BAE87F6900             mov     edx, $00697FE8

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00695BDD   E856211200             call    007B7D38
00695BE2   83BD68FEFFFF00         cmp     dword ptr [ebp+$FFFFFE68], +$00
00695BE9   0F8597000000           jnz     00695C86
00695BEF   8D9554FEFFFF           lea     edx, [ebp+$FFFFFE54]
00695BF5   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695BFA   8B00                   mov     eax, [eax]
00695BFC   8B80E80A0000           mov     eax, [eax+$0AE8]
00695C02   8B08                   mov     ecx, [eax]
00695C04   FF5160                 call    dword ptr [ecx+$60]
00695C07   8B9554FEFFFF           mov     edx, [ebp+$FFFFFE54]
00695C0D   8D8558FEFFFF           lea     eax, [ebp+$FFFFFE58]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695C13   E8AC30D8FF             call    00418CC4
00695C18   8D8D58FEFFFF           lea     ecx, [ebp+$FFFFFE58]
00695C1E   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CondPagto'
|
00695C20   BAE87F6900             mov     edx, $00697FE8

* Reference to : tArrayTable._PROC_007B767C()
|
00695C25   E8521A1200             call    007B767C
00695C2A   8D9550FEFFFF           lea     edx, [ebp+$FFFFFE50]
00695C30   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695C35   8B00                   mov     eax, [eax]
00695C37   8B80E80A0000           mov     eax, [eax+$0AE8]
00695C3D   8B08                   mov     ecx, [eax]
00695C3F   FF5160                 call    dword ptr [ecx+$60]
00695C42   83BD50FEFFFF00         cmp     dword ptr [ebp+$FFFFFE50], +$00
00695C49   753B                   jnz     00695C86
00695C4B   8D953CFEFFFF           lea     edx, [ebp+$FFFFFE3C]
00695C51   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00695C56   8B00                   mov     eax, [eax]
00695C58   8B8038060000           mov     eax, [eax+$0638]
00695C5E   8B08                   mov     ecx, [eax]
00695C60   FF5160                 call    dword ptr [ecx+$60]
00695C63   8B953CFEFFFF           mov     edx, [ebp+$FFFFFE3C]
00695C69   8D8540FEFFFF           lea     eax, [ebp+$FFFFFE40]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695C6F   E85030D8FF             call    00418CC4
00695C74   8D8D40FEFFFF           lea     ecx, [ebp+$FFFFFE40]
00695C7A   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CondPagto'
|
00695C7C   BAE87F6900             mov     edx, $00697FE8

* Reference to : tArrayTable._PROC_007B767C()
|
00695C81   E8F6191200             call    007B767C
00695C86   8D9528FEFFFF           lea     edx, [ebp+$FFFFFE28]
00695C8C   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00695C91   8B00                   mov     eax, [eax]
00695C93   8B8000020000           mov     eax, [eax+$0200]
00695C99   8B08                   mov     ecx, [eax]
00695C9B   FF5160                 call    dword ptr [ecx+$60]
00695C9E   8B9528FEFFFF           mov     edx, [ebp+$FFFFFE28]
00695CA4   8D852CFEFFFF           lea     eax, [ebp+$FFFFFE2C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695CAA   E81530D8FF             call    00418CC4
00695CAF   8D8D2CFEFFFF           lea     ecx, [ebp+$FFFFFE2C]
00695CB5   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ContaContabil'
|
00695CB7   BAFC7F6900             mov     edx, $00697FFC

* Reference to : tArrayTable._PROC_007B767C()
|
00695CBC   E8BB191200             call    007B767C
00695CC1   8D9514FEFFFF           lea     edx, [ebp+$FFFFFE14]
00695CC7   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695CCC   8B00                   mov     eax, [eax]
00695CCE   8B80040B0000           mov     eax, [eax+$0B04]
00695CD4   8B08                   mov     ecx, [eax]
00695CD6   FF5160                 call    dword ptr [ecx+$60]
00695CD9   8B9514FEFFFF           mov     edx, [ebp+$FFFFFE14]
00695CDF   8D8518FEFFFF           lea     eax, [ebp+$FFFFFE18]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695CE5   E8DA2FD8FF             call    00418CC4
00695CEA   8D8D18FEFFFF           lea     ecx, [ebp+$FFFFFE18]
00695CF0   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodBanco'
|
00695CF2   BA14806900             mov     edx, $00698014

* Reference to : tArrayTable._PROC_007B767C()
|
00695CF7   E880191200             call    007B767C
00695CFC   8D8D10FEFFFF           lea     ecx, [ebp+$FFFFFE10]
00695D02   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodBanco'
|
00695D04   BA14806900             mov     edx, $00698014

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00695D09   E82A201200             call    007B7D38
00695D0E   83BD10FEFFFF00         cmp     dword ptr [ebp+$FFFFFE10], +$00
00695D15   0F85A3000000           jnz     00695DBE
00695D1B   8D95FCFDFFFF           lea     edx, [ebp+$FFFFFDFC]
00695D21   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695D26   8B00                   mov     eax, [eax]
00695D28   8B80B4040000           mov     eax, [eax+$04B4]
00695D2E   8B08                   mov     ecx, [eax]
00695D30   FF5160                 call    dword ptr [ecx+$60]
00695D33   8B95FCFDFFFF           mov     edx, [ebp+$FFFFFDFC]
00695D39   8D8500FEFFFF           lea     eax, [ebp+$FFFFFE00]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695D3F   E8802FD8FF             call    00418CC4
00695D44   8D8D00FEFFFF           lea     ecx, [ebp+$FFFFFE00]
00695D4A   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodBanco'
|
00695D4C   BA14806900             mov     edx, $00698014

* Reference to : tArrayTable._PROC_007B767C()
|
00695D51   E826191200             call    007B767C
00695D56   8D8DF8FDFFFF           lea     ecx, [ebp+$FFFFFDF8]
00695D5C   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodBanco'
|
00695D5E   BA14806900             mov     edx, $00698014

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00695D63   E8D01F1200             call    007B7D38
00695D68   83BDF8FDFFFF00         cmp     dword ptr [ebp+$FFFFFDF8], +$00
00695D6F   754D                   jnz     00695DBE
00695D71   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695D76   8B00                   mov     eax, [eax]
00695D78   8B8030020000           mov     eax, [eax+$0230]

* Reference to: DB.TDataSet.First(TDataSet);
|
00695D7E   E8A952E5FF             call    004EB02C
00695D83   8D95E4FDFFFF           lea     edx, [ebp+$FFFFFDE4]
00695D89   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00695D8E   8B00                   mov     eax, [eax]
00695D90   8B8034020000           mov     eax, [eax+$0234]
00695D96   8B08                   mov     ecx, [eax]
00695D98   FF5160                 call    dword ptr [ecx+$60]
00695D9B   8B95E4FDFFFF           mov     edx, [ebp+$FFFFFDE4]
00695DA1   8D85E8FDFFFF           lea     eax, [ebp+$FFFFFDE8]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695DA7   E8182FD8FF             call    00418CC4
00695DAC   8D8DE8FDFFFF           lea     ecx, [ebp+$FFFFFDE8]
00695DB2   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodBanco'
|
00695DB4   BA14806900             mov     edx, $00698014

* Reference to : tArrayTable._PROC_007B767C()
|
00695DB9   E8BE181200             call    007B767C
00695DBE   A12CA27D00             mov     eax, dword ptr [$007DA22C]
00695DC3   DB28                   fld     tbyte ptr [eax]
00695DC5   83C4F8                 add     esp, -$08
00695DC8   DD1C24                 fstp    qword ptr [esp]
00695DCB   9B                     wait
00695DCC   B802000000             mov     eax, $00000002

|
00695DD1   E82EB51000             call    007A1304
00695DD6   8D85D4FDFFFF           lea     eax, [ebp+$FFFFFDD4]

* Reference to: Variants.@VarFromReal;
|
00695DDC   E8A72ED8FF             call    00418C88
00695DE1   8D8DD4FDFFFF           lea     ecx, [ebp+$FFFFFDD4]
00695DE7   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrTotal'
|
00695DE9   BA28806900             mov     edx, $00698028

* Reference to : tArrayTable._PROC_007B767C()
|
00695DEE   E889181200             call    007B767C
00695DF3   8D85C4FDFFFF           lea     eax, [ebp+$FFFFFDC4]
00695DF9   8B15D0B07D00           mov     edx, [$007DB0D0]
00695DFF   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695E01   E8BE2ED8FF             call    00418CC4
00695E06   8D8DC4FDFFFF           lea     ecx, [ebp+$FFFFFDC4]
00695E0C   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodFunc'
|
00695E0E   BA3C806900             mov     edx, $0069803C

* Reference to : tArrayTable._PROC_007B767C()
|
00695E13   E864181200             call    007B767C
00695E18   8D85B4FDFFFF           lea     eax, [ebp+$FFFFFDB4]
00695E1E   8B15ACAC7D00           mov     edx, [$007DACAC]
00695E24   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695E26   E8992ED8FF             call    00418CC4
00695E2B   8D8DB4FDFFFF           lea     ecx, [ebp+$FFFFFDB4]
00695E31   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CGCCupom'
|
00695E33   BA4C806900             mov     edx, $0069804C

* Reference to : tArrayTable._PROC_007B767C()
|
00695E38   E83F181200             call    007B767C
00695E3D   8D85A4FDFFFF           lea     eax, [ebp+$FFFFFDA4]
00695E43   8B1580AB7D00           mov     edx, [$007DAB80]
00695E49   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695E4B   E8742ED8FF             call    00418CC4
00695E50   8D8DA4FDFFFF           lea     ecx, [ebp+$FFFFFDA4]
00695E56   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'RazaoCupom'
|
00695E58   BA60806900             mov     edx, $00698060

* Reference to : tArrayTable._PROC_007B767C()
|
00695E5D   E81A181200             call    007B767C
00695E62   8D8594FDFFFF           lea     eax, [ebp+$FFFFFD94]
00695E68   33D2                   xor     edx, edx
00695E6A   B101                   mov     cl, $01

|
00695E6C   E8FF2BD8FF             call    00418A70
00695E71   8D8D94FDFFFF           lea     ecx, [ebp+$FFFFFD94]
00695E77   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrFrete'
|
00695E79   BA74806900             mov     edx, $00698074

* Reference to : tArrayTable._PROC_007B767C()
|
00695E7E   E8F9171200             call    007B767C
00695E83   8D8584FDFFFF           lea     eax, [ebp+$FFFFFD84]
00695E89   33D2                   xor     edx, edx
00695E8B   B101                   mov     cl, $01

|
00695E8D   E8DE2BD8FF             call    00418A70
00695E92   8D8D84FDFFFF           lea     ecx, [ebp+$FFFFFD84]
00695E98   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrSeguro'
|
00695E9A   BA88806900             mov     edx, $00698088

* Reference to : tArrayTable._PROC_007B767C()
|
00695E9F   E8D8171200             call    007B767C
00695EA4   8D8574FDFFFF           lea     eax, [ebp+$FFFFFD74]
00695EAA   33D2                   xor     edx, edx
00695EAC   B101                   mov     cl, $01

|
00695EAE   E8BD2BD8FF             call    00418A70
00695EB3   8D8D74FDFFFF           lea     ecx, [ebp+$FFFFFD74]
00695EB9   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrDespAcess'
|
00695EBB   BA9C806900             mov     edx, $0069809C

* Reference to : tArrayTable._PROC_007B767C()
|
00695EC0   E8B7171200             call    007B767C
00695EC5   8D8564FDFFFF           lea     eax, [ebp+$FFFFFD64]
00695ECB   33D2                   xor     edx, edx
00695ECD   B101                   mov     cl, $01

|
00695ECF   E89C2BD8FF             call    00418A70
00695ED4   8D8D64FDFFFF           lea     ecx, [ebp+$FFFFFD64]
00695EDA   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NumPedido'
|
00695EDC   BA907F6900             mov     edx, $00697F90

* Reference to : tArrayTable._PROC_007B767C()
|
00695EE1   E896171200             call    007B767C
00695EE6   8D8554FDFFFF           lea     eax, [ebp+$FFFFFD54]
00695EEC   33D2                   xor     edx, edx
00695EEE   B101                   mov     cl, $01

|
00695EF0   E87B2BD8FF             call    00418A70
00695EF5   8D8D54FDFFFF           lea     ecx, [ebp+$FFFFFD54]
00695EFB   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NumNotas'
|
00695EFD   BAB4806900             mov     edx, $006980B4

* Reference to : tArrayTable._PROC_007B767C()
|
00695F02   E875171200             call    007B767C
00695F07   8D8544FDFFFF           lea     eax, [ebp+$FFFFFD44]
00695F0D   33D2                   xor     edx, edx
00695F0F   B101                   mov     cl, $01

|
00695F11   E85A2BD8FF             call    00418A70
00695F16   8D8D44FDFFFF           lea     ecx, [ebp+$FFFFFD44]
00695F1C   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NumFormul'
|
00695F1E   BAC8806900             mov     edx, $006980C8

* Reference to : tArrayTable._PROC_007B767C()
|
00695F23   E854171200             call    007B767C
00695F28   8D8534FDFFFF           lea     eax, [ebp+$FFFFFD34]
00695F2E   33D2                   xor     edx, edx
00695F30   B101                   mov     cl, $01

|
00695F32   E8392BD8FF             call    00418A70
00695F37   8D8D34FDFFFF           lea     ecx, [ebp+$FFFFFD34]
00695F3D   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'PNLcto'
|
00695F3F   BADC806900             mov     edx, $006980DC

* Reference to : tArrayTable._PROC_007B767C()
|
00695F44   E833171200             call    007B767C
00695F49   8D8524FDFFFF           lea     eax, [ebp+$FFFFFD24]
00695F4F   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695F51   E86E2DD8FF             call    00418CC4
00695F56   8D8D24FDFFFF           lea     ecx, [ebp+$FFFFFD24]
00695F5C   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'PNEspec'
|
00695F5E   BAEC806900             mov     edx, $006980EC

* Reference to : tArrayTable._PROC_007B767C()
|
00695F63   E814171200             call    007B767C
00695F68   8D8514FDFFFF           lea     eax, [ebp+$FFFFFD14]
00695F6E   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695F70   E84F2DD8FF             call    00418CC4
00695F75   8D8D14FDFFFF           lea     ecx, [ebp+$FFFFFD14]
00695F7B   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'PNSerie'
|
00695F7D   BAFC806900             mov     edx, $006980FC

* Reference to : tArrayTable._PROC_007B767C()
|
00695F82   E8F5161200             call    007B767C
00695F87   8D8504FDFFFF           lea     eax, [ebp+$FFFFFD04]
00695F8D   33D2                   xor     edx, edx
00695F8F   B101                   mov     cl, $01

|
00695F91   E8DA2AD8FF             call    00418A70
00695F96   8D8D04FDFFFF           lea     ecx, [ebp+$FFFFFD04]
00695F9C   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'DVLcto'
|
00695F9E   BA0C816900             mov     edx, $0069810C

* Reference to : tArrayTable._PROC_007B767C()
|
00695FA3   E8D4161200             call    007B767C
00695FA8   8D85F4FCFFFF           lea     eax, [ebp+$FFFFFCF4]
00695FAE   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695FB0   E80F2DD8FF             call    00418CC4
00695FB5   8D8DF4FCFFFF           lea     ecx, [ebp+$FFFFFCF4]
00695FBB   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'DVEspecie'
|
00695FBD   BA1C816900             mov     edx, $0069811C

* Reference to : tArrayTable._PROC_007B767C()
|
00695FC2   E8B5161200             call    007B767C
00695FC7   8D85E4FCFFFF           lea     eax, [ebp+$FFFFFCE4]
00695FCD   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00695FCF   E8F02CD8FF             call    00418CC4
00695FD4   8D8DE4FCFFFF           lea     ecx, [ebp+$FFFFFCE4]
00695FDA   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'DVSerie'
|
00695FDC   BA30816900             mov     edx, $00698130

* Reference to : tArrayTable._PROC_007B767C()
|
00695FE1   E896161200             call    007B767C
00695FE6   8D85D4FCFFFF           lea     eax, [ebp+$FFFFFCD4]
00695FEC   33D2                   xor     edx, edx
00695FEE   B101                   mov     cl, $01

|
00695FF0   E87B2AD8FF             call    00418A70
00695FF5   8D8DD4FCFFFF           lea     ecx, [ebp+$FFFFFCD4]
00695FFB   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrPedagio'
|
00695FFD   BA40816900             mov     edx, $00698140

* Reference to : tArrayTable._PROC_007B767C()
|
00696002   E875161200             call    007B767C
00696007   8D85C4FCFFFF           lea     eax, [ebp+$FFFFFCC4]
0069600D   33D2                   xor     edx, edx
0069600F   B101                   mov     cl, $01

|
00696011   E85A2AD8FF             call    00418A70
00696016   8D8DC4FCFFFF           lea     ecx, [ebp+$FFFFFCC4]
0069601C   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrDespacho'
|
0069601E   BA54816900             mov     edx, $00698154

* Reference to : tArrayTable._PROC_007B767C()
|
00696023   E854161200             call    007B767C
00696028   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0069602A   E8AD3D1200             call    007B9DDC
0069602F   A1ACAC7D00             mov     eax, dword ptr [$007DACAC]

* Reference to: System.@LStrClr(void;void);
|
00696034   E863F4D6FF             call    0040549C
00696039   A180AB7D00             mov     eax, dword ptr [$007DAB80]

* Reference to: System.@LStrClr(void;void);
|
0069603E   E859F4D6FF             call    0040549C
00696043   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696048   8B00                   mov     eax, [eax]
0069604A   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.DisableControls(TDataSet);
|
00696050   E82745E5FF             call    004EA57C
00696055   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069605A   8B00                   mov     eax, [eax]
0069605C   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.First(TDataSet);
|
00696062   E8C54FE5FF             call    004EB02C
00696067   C745C001000000         mov     dword ptr [ebp-$40], $00000001
0069606E   33F6                   xor     esi, esi
00696070   E906150000             jmp     0069757B
00696075   8D95C0FCFFFF           lea     edx, [ebp+$FFFFFCC0]
0069607B   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696080   8B00                   mov     eax, [eax]
00696082   8B80D4000000           mov     eax, [eax+$00D4]
00696088   8B08                   mov     ecx, [eax]
0069608A   FF5160                 call    dword ptr [ecx+$60]
0069608D   8B85C0FCFFFF           mov     eax, [ebp+$FFFFFCC0]
00696093   BA68816900             mov     edx, $00698168

* Reference to: System.@LStrCmp;
|
00696098   E80BF8D6FF             call    004058A8
0069609D   0F85BD070000           jnz     00696860
006960A3   8D95BCFCFFFF           lea     edx, [ebp+$FFFFFCBC]
006960A9   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006960AE   8B00                   mov     eax, [eax]
006960B0   8B8048010000           mov     eax, [eax+$0148]
006960B6   8B08                   mov     ecx, [eax]
006960B8   FF5160                 call    dword ptr [ecx+$60]
006960BB   8B85BCFCFFFF           mov     eax, [ebp+$FFFFFCBC]
006960C1   BA74816900             mov     edx, $00698174

* Reference to: System.@LStrCmp;
|
006960C6   E8DDF7D6FF             call    004058A8
006960CB   0F8450070000           jz      00696821
006960D1   46                     inc     esi
006960D2   8B07                   mov     eax, [edi]

|
006960D4   E89B111200             call    007B7274
006960D9   8D85ACFCFFFF           lea     eax, [ebp+$FFFFFCAC]
006960DF   8BD6                   mov     edx, esi
006960E1   B1FC                   mov     cl, $FC

|
006960E3   E88829D8FF             call    00418A70
006960E8   8D8DACFCFFFF           lea     ecx, [ebp+$FFFFFCAC]
006960EE   8B07                   mov     eax, [edi]

* Possible String Reference to: 'Item'
|
006960F0   BA80816900             mov     edx, $00698180

* Reference to : tArrayTable._PROC_007B767C()
|
006960F5   E882151200             call    007B767C
006960FA   8D95A8FCFFFF           lea     edx, [ebp+$FFFFFCA8]
00696100   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696105   8B00                   mov     eax, [eax]
00696107   8B80E8000000           mov     eax, [eax+$00E8]
0069610D   8B08                   mov     ecx, [eax]
0069610F   FF5160                 call    dword ptr [ecx+$60]
00696112   8B85A8FCFFFF           mov     eax, [ebp+$FFFFFCA8]
00696118   8B157CAB7D00           mov     edx, [$007DAB7C]
0069611E   8B12                   mov     edx, [edx]

* Reference to: System.@LStrCmp;
|
00696120   E883F7D6FF             call    004058A8
00696125   743B                   jz      00696162
00696127   8D9594FCFFFF           lea     edx, [ebp+$FFFFFC94]
0069612D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696132   8B00                   mov     eax, [eax]
00696134   8B80E8000000           mov     eax, [eax+$00E8]
0069613A   8B08                   mov     ecx, [eax]
0069613C   FF5160                 call    dword ptr [ecx+$60]
0069613F   8B9594FCFFFF           mov     edx, [ebp+$FFFFFC94]
00696145   8D8598FCFFFF           lea     eax, [ebp+$FFFFFC98]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069614B   E8742BD8FF             call    00418CC4
00696150   8D8D98FCFFFF           lea     ecx, [ebp+$FFFFFC98]
00696156   8B07                   mov     eax, [edi]

* Possible String Reference to: 'CodProd'
|
00696158   BA90816900             mov     edx, $00698190

* Reference to : tArrayTable._PROC_007B767C()
|
0069615D   E81A151200             call    007B767C
00696162   8D9580FCFFFF           lea     edx, [ebp+$FFFFFC80]
00696168   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069616D   8B00                   mov     eax, [eax]
0069616F   8B80CC000000           mov     eax, [eax+$00CC]
00696175   8B08                   mov     ecx, [eax]
00696177   FF5160                 call    dword ptr [ecx+$60]
0069617A   8B9580FCFFFF           mov     edx, [ebp+$FFFFFC80]
00696180   8D8584FCFFFF           lea     eax, [ebp+$FFFFFC84]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696186   E8392BD8FF             call    00418CC4
0069618B   8D8D84FCFFFF           lea     ecx, [ebp+$FFFFFC84]
00696191   8B07                   mov     eax, [edi]

* Possible String Reference to: 'Descricao'
|
00696193   BAA0816900             mov     edx, $006981A0

* Reference to : tArrayTable._PROC_007B767C()
|
00696198   E8DF141200             call    007B767C
0069619D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006961A2   8B00                   mov     eax, [eax]
006961A4   8B80F4000000           mov     eax, [eax+$00F4]
006961AA   8B10                   mov     edx, [eax]
006961AC   FF5254                 call    dword ptr [edx+$54]
006961AF   8D8570FCFFFF           lea     eax, [ebp+$FFFFFC70]

* Reference to: Variants.@VarFromReal;
|
006961B5   E8CE2AD8FF             call    00418C88
006961BA   8D8D70FCFFFF           lea     ecx, [ebp+$FFFFFC70]
006961C0   8B07                   mov     eax, [edi]

* Possible String Reference to: 'QtdLcto'
|
006961C2   BAB4816900             mov     edx, $006981B4

* Reference to : tArrayTable._PROC_007B767C()
|
006961C7   E8B0141200             call    007B767C
006961CC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006961D1   8B00                   mov     eax, [eax]
006961D3   8B80F8000000           mov     eax, [eax+$00F8]
006961D9   8B10                   mov     edx, [eax]
006961DB   FF5254                 call    dword ptr [edx+$54]
006961DE   8D8560FCFFFF           lea     eax, [ebp+$FFFFFC60]

* Reference to: Variants.@VarFromReal;
|
006961E4   E89F2AD8FF             call    00418C88
006961E9   8D8D60FCFFFF           lea     ecx, [ebp+$FFFFFC60]
006961EF   8B07                   mov     eax, [edi]

* Possible String Reference to: 'VlrUnit'
|
006961F1   BAC4816900             mov     edx, $006981C4

* Reference to : tArrayTable._PROC_007B767C()
|
006961F6   E881141200             call    007B767C
006961FB   8D954CFCFFFF           lea     edx, [ebp+$FFFFFC4C]
00696201   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696206   8B00                   mov     eax, [eax]
00696208   8B8020010000           mov     eax, [eax+$0120]
0069620E   8B08                   mov     ecx, [eax]
00696210   FF5160                 call    dword ptr [ecx+$60]
00696213   8B954CFCFFFF           mov     edx, [ebp+$FFFFFC4C]
00696219   8D8550FCFFFF           lea     eax, [ebp+$FFFFFC50]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069621F   E8A02AD8FF             call    00418CC4
00696224   8D8D50FCFFFF           lea     ecx, [ebp+$FFFFFC50]
0069622A   8B07                   mov     eax, [edi]

* Possible String Reference to: 'UnidMed'
|
0069622C   BAD4816900             mov     edx, $006981D4

* Reference to : tArrayTable._PROC_007B767C()
|
00696231   E846141200             call    007B767C
00696236   8D9538FCFFFF           lea     edx, [ebp+$FFFFFC38]
0069623C   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696241   8B00                   mov     eax, [eax]
00696243   8B8040010000           mov     eax, [eax+$0140]
00696249   8B08                   mov     ecx, [eax]
0069624B   FF5160                 call    dword ptr [ecx+$60]
0069624E   8B9538FCFFFF           mov     edx, [ebp+$FFFFFC38]
00696254   8D853CFCFFFF           lea     eax, [ebp+$FFFFFC3C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069625A   E8652AD8FF             call    00418CC4
0069625F   8D8D3CFCFFFF           lea     ecx, [ebp+$FFFFFC3C]
00696265   8B07                   mov     eax, [edi]

* Possible String Reference to: 'SitTrib'
|
00696267   BAE4816900             mov     edx, $006981E4

* Reference to : tArrayTable._PROC_007B767C()
|
0069626C   E80B141200             call    007B767C
00696271   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696276   8B00                   mov     eax, [eax]
00696278   8B8024010000           mov     eax, [eax+$0124]
0069627E   8B10                   mov     edx, [eax]
00696280   FF5254                 call    dword ptr [edx+$54]
00696283   8D8528FCFFFF           lea     eax, [ebp+$FFFFFC28]

* Reference to: Variants.@VarFromReal;
|
00696289   E8FA29D8FF             call    00418C88
0069628E   8D8D28FCFFFF           lea     ecx, [ebp+$FFFFFC28]
00696294   8B07                   mov     eax, [edi]

* Possible String Reference to: 'QtdeUnidMed'
|
00696296   BAF4816900             mov     edx, $006981F4

* Reference to : tArrayTable._PROC_007B767C()
|
0069629B   E8DC131200             call    007B767C
006962A0   8D9514FCFFFF           lea     edx, [ebp+$FFFFFC14]
006962A6   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006962AB   8B00                   mov     eax, [eax]
006962AD   8B8028010000           mov     eax, [eax+$0128]
006962B3   8B08                   mov     ecx, [eax]
006962B5   FF5160                 call    dword ptr [ecx+$60]
006962B8   8B9514FCFFFF           mov     edx, [ebp+$FFFFFC14]
006962BE   8D8518FCFFFF           lea     eax, [ebp+$FFFFFC18]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006962C4   E8FB29D8FF             call    00418CC4
006962C9   8D8D18FCFFFF           lea     ecx, [ebp+$FFFFFC18]
006962CF   8B07                   mov     eax, [edi]

* Possible String Reference to: 'ComplEmbal'
|
006962D1   BA08826900             mov     edx, $00698208

* Reference to : tArrayTable._PROC_007B767C()
|
006962D6   E8A1131200             call    007B767C
006962DB   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006962E0   8B00                   mov     eax, [eax]
006962E2   8B802C010000           mov     eax, [eax+$012C]
006962E8   8B10                   mov     edx, [eax]
006962EA   FF5254                 call    dword ptr [edx+$54]
006962ED   8D8504FCFFFF           lea     eax, [ebp+$FFFFFC04]

* Reference to: Variants.@VarFromReal;
|
006962F3   E89029D8FF             call    00418C88
006962F8   8D8D04FCFFFF           lea     ecx, [ebp+$FFFFFC04]
006962FE   8B07                   mov     eax, [edi]

* Possible String Reference to: 'VlrCusto'
|
00696300   BA1C826900             mov     edx, $0069821C

* Reference to : tArrayTable._PROC_007B767C()
|
00696305   E872131200             call    007B767C
0069630A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069630F   8B00                   mov     eax, [eax]
00696311   8B8030010000           mov     eax, [eax+$0130]
00696317   8B10                   mov     edx, [eax]
00696319   FF5254                 call    dword ptr [edx+$54]
0069631C   8D85F4FBFFFF           lea     eax, [ebp+$FFFFFBF4]

* Reference to: Variants.@VarFromReal;
|
00696322   E86129D8FF             call    00418C88
00696327   8D8DF4FBFFFF           lea     ecx, [ebp+$FFFFFBF4]
0069632D   8B07                   mov     eax, [edi]

* Possible String Reference to: 'VlrTabela'
|
0069632F   BA30826900             mov     edx, $00698230

* Reference to : tArrayTable._PROC_007B767C()
|
00696334   E843131200             call    007B767C
00696339   8D95E0FBFFFF           lea     edx, [ebp+$FFFFFBE0]
0069633F   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696344   8B00                   mov     eax, [eax]
00696346   8B8044010000           mov     eax, [eax+$0144]
0069634C   8B08                   mov     ecx, [eax]
0069634E   FF5160                 call    dword ptr [ecx+$60]
00696351   8B95E0FBFFFF           mov     edx, [ebp+$FFFFFBE0]
00696357   8D85E4FBFFFF           lea     eax, [ebp+$FFFFFBE4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069635D   E86229D8FF             call    00418CC4
00696362   8D8DE4FBFFFF           lea     ecx, [ebp+$FFFFFBE4]
00696368   8B07                   mov     eax, [edi]

* Possible String Reference to: 'ClassFisc'
|
0069636A   BA44826900             mov     edx, $00698244

* Reference to : tArrayTable._PROC_007B767C()
|
0069636F   E808131200             call    007B767C
00696374   8D95CCFBFFFF           lea     edx, [ebp+$FFFFFBCC]
0069637A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069637F   8B00                   mov     eax, [eax]
00696381   8B8098010000           mov     eax, [eax+$0198]
00696387   8B08                   mov     ecx, [eax]
00696389   FF5160                 call    dword ptr [ecx+$60]
0069638C   8B95CCFBFFFF           mov     edx, [ebp+$FFFFFBCC]
00696392   8D85D0FBFFFF           lea     eax, [ebp+$FFFFFBD0]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696398   E82729D8FF             call    00418CC4
0069639D   8D8DD0FBFFFF           lea     ecx, [ebp+$FFFFFBD0]
006963A3   8B07                   mov     eax, [edi]

* Possible String Reference to: 'CodSubLocal'
|
006963A5   BA58826900             mov     edx, $00698258

* Reference to : tArrayTable._PROC_007B767C()
|
006963AA   E8CD121200             call    007B767C
006963AF   8D95B8FBFFFF           lea     edx, [ebp+$FFFFFBB8]
006963B5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006963BA   8B00                   mov     eax, [eax]
006963BC   8B80A4010000           mov     eax, [eax+$01A4]
006963C2   8B08                   mov     ecx, [eax]
006963C4   FF5160                 call    dword ptr [ecx+$60]
006963C7   8B95B8FBFFFF           mov     edx, [ebp+$FFFFFBB8]
006963CD   8D85BCFBFFFF           lea     eax, [ebp+$FFFFFBBC]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006963D3   E8EC28D8FF             call    00418CC4
006963D8   8D8DBCFBFFFF           lea     ecx, [ebp+$FFFFFBBC]
006963DE   8B07                   mov     eax, [edi]

* Possible String Reference to: 'Historico'
|
006963E0   BA6C826900             mov     edx, $0069826C

* Reference to : tArrayTable._PROC_007B767C()
|
006963E5   E892121200             call    007B767C
006963EA   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006963EF   8B00                   mov     eax, [eax]
006963F1   8B802C020000           mov     eax, [eax+$022C]
006963F7   8B10                   mov     edx, [eax]
006963F9   FF5254                 call    dword ptr [edx+$54]
006963FC   8D85A8FBFFFF           lea     eax, [ebp+$FFFFFBA8]

* Reference to: Variants.@VarFromReal;
|
00696402   E88128D8FF             call    00418C88
00696407   8D8DA8FBFFFF           lea     ecx, [ebp+$FFFFFBA8]
0069640D   8B07                   mov     eax, [edi]

* Possible String Reference to: 'VlrDesc'
|
0069640F   BA80826900             mov     edx, $00698280

* Reference to : tArrayTable._PROC_007B767C()
|
00696414   E863121200             call    007B767C
00696419   8D8598FBFFFF           lea     eax, [ebp+$FFFFFB98]
0069641F   33D2                   xor     edx, edx
00696421   B101                   mov     cl, $01

|
00696423   E84826D8FF             call    00418A70
00696428   8D8D98FBFFFF           lea     ecx, [ebp+$FFFFFB98]
0069642E   8B07                   mov     eax, [edi]

* Possible String Reference to: 'QtdDevol'
|
00696430   BA90826900             mov     edx, $00698290

* Reference to : tArrayTable._PROC_007B767C()
|
00696435   E842121200             call    007B767C
0069643A   8D8588FBFFFF           lea     eax, [ebp+$FFFFFB88]
00696440   33D2                   xor     edx, edx
00696442   B101                   mov     cl, $01

|
00696444   E82726D8FF             call    00418A70
00696449   8D8D88FBFFFF           lea     ecx, [ebp+$FFFFFB88]
0069644F   8B07                   mov     eax, [edi]

* Possible String Reference to: 'QtdInven'
|
00696451   BAA4826900             mov     edx, $006982A4

* Reference to : tArrayTable._PROC_007B767C()
|
00696456   E821121200             call    007B767C
0069645B   8D8578FBFFFF           lea     eax, [ebp+$FFFFFB78]
00696461   33D2                   xor     edx, edx
00696463   B101                   mov     cl, $01

|
00696465   E80626D8FF             call    00418A70
0069646A   8D8D78FBFFFF           lea     ecx, [ebp+$FFFFFB78]
00696470   8B07                   mov     eax, [edi]

* Possible String Reference to: 'Frete'
|
00696472   BAB8826900             mov     edx, $006982B8

* Reference to : tArrayTable._PROC_007B767C()
|
00696477   E800121200             call    007B767C
0069647C   8D8568FBFFFF           lea     eax, [ebp+$FFFFFB68]
00696482   33D2                   xor     edx, edx
00696484   B101                   mov     cl, $01

|
00696486   E8E525D8FF             call    00418A70
0069648B   8D8D68FBFFFF           lea     ecx, [ebp+$FFFFFB68]
00696491   8B07                   mov     eax, [edi]

* Possible String Reference to: 'VlrSeguro'
|
00696493   BA88806900             mov     edx, $00698088

* Reference to : tArrayTable._PROC_007B767C()
|
00696498   E8DF111200             call    007B767C
0069649D   8D8558FBFFFF           lea     eax, [ebp+$FFFFFB58]
006964A3   33D2                   xor     edx, edx
006964A5   B101                   mov     cl, $01

|
006964A7   E8C425D8FF             call    00418A70
006964AC   8D8D58FBFFFF           lea     ecx, [ebp+$FFFFFB58]
006964B2   8B07                   mov     eax, [edi]

* Possible String Reference to: 'DespAcess'
|
006964B4   BAC8826900             mov     edx, $006982C8

* Reference to : tArrayTable._PROC_007B767C()
|
006964B9   E8BE111200             call    007B767C
006964BE   8D8548FBFFFF           lea     eax, [ebp+$FFFFFB48]
006964C4   33D2                   xor     edx, edx
006964C6   B101                   mov     cl, $01

|
006964C8   E8A325D8FF             call    00418A70
006964CD   8D8D48FBFFFF           lea     ecx, [ebp+$FFFFFB48]
006964D3   8B07                   mov     eax, [edi]

* Possible String Reference to: 'NumPedido'
|
006964D5   BA907F6900             mov     edx, $00697F90

* Reference to : tArrayTable._PROC_007B767C()
|
006964DA   E89D111200             call    007B767C
006964DF   8D8538FBFFFF           lea     eax, [ebp+$FFFFFB38]
006964E5   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006964E7   E8D827D8FF             call    00418CC4
006964EC   8D8D38FBFFFF           lea     ecx, [ebp+$FFFFFB38]
006964F2   8B07                   mov     eax, [edi]

* Possible String Reference to: 'NatOper'
|
006964F4   BAD87F6900             mov     edx, $00697FD8

* Reference to : tArrayTable._PROC_007B767C()
|
006964F9   E87E111200             call    007B767C
006964FE   8B07                   mov     eax, [edi]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00696500   E8D7381200             call    007B9DDC
00696505   8D9534FBFFFF           lea     edx, [ebp+$FFFFFB34]
0069650B   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696510   8B00                   mov     eax, [eax]
00696512   8B80E8000000           mov     eax, [eax+$00E8]
00696518   8B08                   mov     ecx, [eax]
0069651A   FF5160                 call    dword ptr [ecx+$60]
0069651D   8B8534FBFFFF           mov     eax, [ebp+$FFFFFB34]
00696523   8B157CAB7D00           mov     edx, [$007DAB7C]
00696529   8B12                   mov     edx, [edx]

* Reference to: System.@LStrCmp;
|
0069652B   E878F3D6FF             call    004058A8
00696530   0F8442010000           jz      00696678
00696536   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069653B   8B00                   mov     eax, [eax]
0069653D   8B80A8010000           mov     eax, [eax+$01A8]
00696543   8B10                   mov     edx, [eax]
00696545   FF5244                 call    dword ptr [edx+$44]
00696548   84C0                   test    al, al
0069654A   0F8428010000           jz      00696678
00696550   8D8D30FBFFFF           lea     ecx, [ebp+$FFFFFB30]
00696556   8B07                   mov     eax, [edi]

* Possible String Reference to: 'CodProd'
|
00696558   BA90816900             mov     edx, $00698190

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0069655D   E8D6171200             call    007B7D38
00696562   8B8530FBFFFF           mov     eax, [ebp+$FFFFFB30]
00696568   50                     push    eax
00696569   8D8D2CFBFFFF           lea     ecx, [ebp+$FFFFFB2C]
0069656F   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NatOper'
|
00696571   BAD87F6900             mov     edx, $00697FD8

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696576   E8BD171200             call    007B7D38
0069657B   8B852CFBFFFF           mov     eax, [ebp+$FFFFFB2C]
00696581   50                     push    eax
00696582   A150AD7D00             mov     eax, dword ptr [$007DAD50]
00696587   FF7004                 push    dword ptr [eax+$04]
0069658A   FF30                   push    dword ptr [eax]
0069658C   8D8D28FBFFFF           lea     ecx, [ebp+$FFFFFB28]
00696592   8B07                   mov     eax, [edi]

* Possible String Reference to: 'DtLcto'
|
00696594   BA187F6900             mov     edx, $00697F18

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696599   E89A171200             call    007B7D38
0069659E   8B8528FBFFFF           mov     eax, [ebp+$FFFFFB28]

|
006965A4   E8078FD7FF             call    0040F4B0
006965A9   83C4F8                 add     esp, -$08
006965AC   DD1C24                 fstp    qword ptr [esp]
006965AF   9B                     wait
006965B0   8D8D24FBFFFF           lea     ecx, [ebp+$FFFFFB24]
006965B6   8B07                   mov     eax, [edi]

* Possible String Reference to: 'UnidMed'
|
006965B8   BAD4816900             mov     edx, $006981D4

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006965BD   E876171200             call    007B7D38
006965C2   8B8524FBFFFF           mov     eax, [ebp+$FFFFFB24]
006965C8   50                     push    eax
006965C9   8B07                   mov     eax, [edi]

* Possible String Reference to: 'QtdeUnidMed'
|
006965CB   BAF4816900             mov     edx, $006981F4

|
006965D0   E853151200             call    007B7B28
006965D5   83C4F4                 add     esp, -$0C
006965D8   DB3C24                 fstp    tbyte ptr [esp]
006965DB   9B                     wait
006965DC   8B07                   mov     eax, [edi]

* Possible String Reference to: 'QtdLcto'
|
006965DE   BAB4816900             mov     edx, $006981B4

|
006965E3   E840151200             call    007B7B28
006965E8   83C4F4                 add     esp, -$0C
006965EB   DB3C24                 fstp    tbyte ptr [esp]
006965EE   9B                     wait
006965EF   8B07                   mov     eax, [edi]

* Possible String Reference to: 'VlrUnit'
|
006965F1   BAC4816900             mov     edx, $006981C4

|
006965F6   E82D151200             call    007B7B28
006965FB   83C4F4                 add     esp, -$0C
006965FE   DB3C24                 fstp    tbyte ptr [esp]
00696601   9B                     wait
00696602   68DC826900             push    $006982DC
00696607   8D8D20FBFFFF           lea     ecx, [ebp+$FFFFFB20]
0069660D   8B07                   mov     eax, [edi]

* Possible String Reference to: 'CodSubLocal'
|
0069660F   BA58826900             mov     edx, $00698258

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696614   E81F171200             call    007B7D38
00696619   8B8520FBFFFF           mov     eax, [ebp+$FFFFFB20]
0069661F   50                     push    eax
00696620   57                     push    edi
00696621   A154A67D00             mov     eax, dword ptr [$007DA654]
00696626   50                     push    eax
00696627   8D8D1CFBFFFF           lea     ecx, [ebp+$FFFFFB1C]
0069662D   8B07                   mov     eax, [edi]

* Possible String Reference to: 'Serie'
|
0069662F   BA387F6900             mov     edx, $00697F38

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696634   E8FF161200             call    007B7D38
00696639   8B851CFBFFFF           mov     eax, [ebp+$FFFFFB1C]
0069663F   50                     push    eax
00696640   8D8D18FBFFFF           lea     ecx, [ebp+$FFFFFB18]
00696646   8B07                   mov     eax, [edi]

* Possible String Reference to: 'Especie'
|
00696648   BA287F6900             mov     edx, $00697F28

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0069664D   E8E6161200             call    007B7D38
00696652   8B8518FBFFFF           mov     eax, [ebp+$FFFFFB18]
00696658   50                     push    eax
00696659   8D8D14FBFFFF           lea     ecx, [ebp+$FFFFFB14]
0069665F   8B07                   mov     eax, [edi]

* Possible String Reference to: 'Filial'
|
00696661   BAE07E6900             mov     edx, $00697EE0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696666   E8CD161200             call    007B7D38
0069666B   8B8514FBFFFF           mov     eax, [ebp+$FFFFFB14]
00696671   5A                     pop     edx
00696672   59                     pop     ecx

|
00696673   E868DFFAFF             call    006445E0
00696678   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0069667D   8B00                   mov     eax, [eax]
0069667F   8B80CC030000           mov     eax, [eax+$03CC]
00696685   8B10                   mov     edx, [eax]
00696687   FF5244                 call    dword ptr [edx+$44]
0069668A   84C0                   test    al, al
0069668C   742C                   jz      006966BA
0069668E   6A00                   push    $00
00696690   6A00                   push    $00
00696692   6A00                   push    $00
00696694   8D8D10FBFFFF           lea     ecx, [ebp+$FFFFFB10]
0069669A   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodFunc'
|
0069669C   BA3C806900             mov     edx, $0069803C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006966A1   E892161200             call    007B7D38
006966A6   8B9510FBFFFF           mov     edx, [ebp+$FFFFFB10]
006966AC   A1E09F7D00             mov     eax, dword ptr [$007D9FE0]
006966B1   8B00                   mov     eax, [eax]

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckValueChange(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer):System.Boolean;
|
006966B3   E834D7FAFF             call    00643DEC
006966B8   EB2A                   jmp     006966E4
006966BA   6A00                   push    $00
006966BC   6A00                   push    $00
006966BE   6A00                   push    $00
006966C0   8D8D0CFBFFFF           lea     ecx, [ebp+$FFFFFB0C]
006966C6   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodFunc'
|
006966C8   BA3C806900             mov     edx, $0069803C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006966CD   E866161200             call    007B7D38
006966D2   8B950CFBFFFF           mov     edx, [ebp+$FFFFFB0C]
006966D8   A138A67D00             mov     eax, dword ptr [$007DA638]
006966DD   8B00                   mov     eax, [eax]

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckValueChange(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer):System.Boolean;
|
006966DF   E808D7FAFF             call    00643DEC
006966E4   8D8D08FBFFFF           lea     ecx, [ebp+$FFFFFB08]
006966EA   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
006966EC   BA587F6900             mov     edx, $00697F58

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006966F1   E842161200             call    007B7D38
006966F6   8B8508FBFFFF           mov     eax, [ebp+$FFFFFB08]
006966FC   50                     push    eax
006966FD   8D8D04FBFFFF           lea     ecx, [ebp+$FFFFFB04]
00696703   8B07                   mov     eax, [edi]

* Possible String Reference to: 'SitTrib'
|
00696705   BAE4816900             mov     edx, $006981E4

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0069670A   E829161200             call    007B7D38
0069670F   8B8504FBFFFF           mov     eax, [ebp+$FFFFFB04]
00696715   50                     push    eax
00696716   8D8D00FBFFFF           lea     ecx, [ebp+$FFFFFB00]
0069671C   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NatOper'
|
0069671E   BAD87F6900             mov     edx, $00697FD8

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696723   E810161200             call    007B7D38
00696728   8B8500FBFFFF           mov     eax, [ebp+$FFFFFB00]
0069672E   50                     push    eax
0069672F   A1ECA47D00             mov     eax, dword ptr [$007DA4EC]
00696734   50                     push    eax
00696735   57                     push    edi
00696736   8B07                   mov     eax, [edi]

* Possible String Reference to: 'ccTotal'
|
00696738   BAE8826900             mov     edx, $006982E8

|
0069673D   E8E6131200             call    007B7B28
00696742   83C4F4                 add     esp, -$0C
00696745   DB3C24                 fstp    tbyte ptr [esp]
00696748   9B                     wait
00696749   6A00                   push    $00
0069674B   6A00                   push    $00
0069674D   6A00                   push    $00
0069674F   A108AF7D00             mov     eax, dword ptr [$007DAF08]
00696754   8A00                   mov     al, byte ptr [eax]
00696756   3401                   xor     al, $01
00696758   50                     push    eax
00696759   8D8DFCFAFFFF           lea     ecx, [ebp+$FFFFFAFC]
0069675F   8B07                   mov     eax, [edi]

* Possible String Reference to: 'CodProd'
|
00696761   BA90816900             mov     edx, $00698190

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696766   E8CD151200             call    007B7D38
0069676B   8B85FCFAFFFF           mov     eax, [ebp+$FFFFFAFC]
00696771   50                     push    eax
00696772   8D8DF8FAFFFF           lea     ecx, [ebp+$FFFFFAF8]
00696778   8B07                   mov     eax, [edi]

* Possible String Reference to: 'Filial'
|
0069677A   BAE07E6900             mov     edx, $00697EE0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0069677F   E8B4151200             call    007B7D38
00696784   8B95F8FAFFFF           mov     edx, [ebp+$FFFFFAF8]
0069678A   B8F8826900             mov     eax, $006982F8
0069678F   59                     pop     ecx

|
00696790   E8D3C9FAFF             call    00643168
00696795   A1ECA47D00             mov     eax, dword ptr [$007DA4EC]
0069679A   8B00                   mov     eax, [eax]
0069679C   50                     push    eax
0069679D   A1D8AB7D00             mov     eax, dword ptr [$007DABD8]
006967A2   8B00                   mov     eax, [eax]
006967A4   50                     push    eax
006967A5   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrTotal'
|
006967A7   BA28806900             mov     edx, $00698028

|
006967AC   E877131200             call    007B7B28
006967B1   83C4F4                 add     esp, -$0C
006967B4   DB3C24                 fstp    tbyte ptr [esp]
006967B7   9B                     wait
006967B8   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrAcresc'
|
006967BA   BA04836900             mov     edx, $00698304

|
006967BF   E864131200             call    007B7B28
006967C4   DBBDECFAFFFF           fstp    tbyte ptr [ebp+$FFFFFAEC]
006967CA   9B                     wait
006967CB   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrDesc'
|
006967CD   BA80826900             mov     edx, $00698280

|
006967D2   E851131200             call    007B7B28
006967D7   DBADECFAFFFF           fld     tbyte ptr [ebp+$FFFFFAEC]
006967DD   DEE1                   fsubrp  st(1), st(0)
006967DF   83C4F4                 add     esp, -$0C
006967E2   DB3C24                 fstp    tbyte ptr [esp]
006967E5   9B                     wait
006967E6   6A00                   push    $00
006967E8   6A00                   push    $00
006967EA   6A00                   push    $00
006967EC   8D8DE8FAFFFF           lea     ecx, [ebp+$FFFFFAE8]
006967F2   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
006967F4   BA587F6900             mov     edx, $00697F58

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006967F9   E83A151200             call    007B7D38
006967FE   8B95E8FAFFFF           mov     edx, [ebp+$FFFFFAE8]
00696804   8B0F                   mov     ecx, [edi]
00696806   B8F8826900             mov     eax, $006982F8

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckValueChange(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer):System.Boolean;
|
0069680B   E8ACD5FAFF             call    00643DBC
00696810   A154AE7D00             mov     eax, dword ptr [$007DAE54]
00696815   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00696817   E844F5E1FF             call    004B5D60
0069681C   E9480D0000             jmp     00697569
00696821   8D95E4FAFFFF           lea     edx, [ebp+$FFFFFAE4]
00696827   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069682C   8B00                   mov     eax, [eax]
0069682E   8B8048010000           mov     eax, [eax+$0148]
00696834   8B08                   mov     ecx, [eax]
00696836   FF5160                 call    dword ptr [ecx+$60]
00696839   8B85E4FAFFFF           mov     eax, [ebp+$FFFFFAE4]
0069683F   BA74816900             mov     edx, $00698174

* Reference to: System.@LStrCmp;
|
00696844   E85FF0D6FF             call    004058A8
00696849   0F851A0D0000           jnz     00697569
0069684F   A154AE7D00             mov     eax, dword ptr [$007DAE54]
00696854   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00696856   E805F5E1FF             call    004B5D60
0069685B   E9090D0000             jmp     00697569
00696860   8D95E0FAFFFF           lea     edx, [ebp+$FFFFFAE0]
00696866   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069686B   8B00                   mov     eax, [eax]
0069686D   8B80D4000000           mov     eax, [eax+$00D4]
00696873   8B08                   mov     ecx, [eax]
00696875   FF5160                 call    dword ptr [ecx+$60]
00696878   8B85E0FAFFFF           mov     eax, [ebp+$FFFFFAE0]
0069687E   BA18836900             mov     edx, $00698318

* Reference to: System.@LStrCmp;
|
00696883   E820F0D6FF             call    004058A8
00696888   0F85ED0A0000           jnz     0069737B
0069688E   A154AE7D00             mov     eax, dword ptr [$007DAE54]
00696893   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00696895   E8C6F4E1FF             call    004B5D60
0069689A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069689F   8B00                   mov     eax, [eax]
006968A1   8B80C0010000           mov     eax, [eax+$01C0]
006968A7   8B10                   mov     edx, [eax]
006968A9   FF5254                 call    dword ptr [edx+$54]
006968AC   D81DC87E6900           fcomp   dword ptr [$00697EC8]
006968B2   DFE0                   fstsw   ax
006968B4   9E                     sahf
006968B5   0F86AE0C0000           jbe     00697569
006968BB   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
006968C0   8B00                   mov     eax, [eax]

|
006968C2   E8AD091200             call    007B7274
006968C7   8D85C8FAFFFF           lea     eax, [ebp+$FFFFFAC8]
006968CD   50                     push    eax
006968CE   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NumLcto'
|
006968D0   BA487F6900             mov     edx, $00697F48

|
006968D5   E84E121200             call    007B7B28
006968DA   8D85B8FAFFFF           lea     eax, [ebp+$FFFFFAB8]

* Reference to: Variants.@VarFromReal;
|
006968E0   E8A323D8FF             call    00418C88
006968E5   8D85B8FAFFFF           lea     eax, [ebp+$FFFFFAB8]
006968EB   33C9                   xor     ecx, ecx
006968ED   BA06000000             mov     edx, $00000006

* Reference to : TFrmInfoAtu._PROC_007A05B8()
|
006968F2   E8C19C1000             call    007A05B8
006968F7   FFB5C8FAFFFF           push    dword ptr [ebp+$FFFFFAC8]
006968FD   6824836900             push    $00698324
00696902   8D85B4FAFFFF           lea     eax, [ebp+$FFFFFAB4]
00696908   50                     push    eax
00696909   B901000000             mov     ecx, $00000001
0069690E   8B55C0                 mov     edx, [ebp-$40]

* Possible String Reference to: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
|
00696911   B830836900             mov     eax, $00698330

* Reference to: System.@LStrCopy;
|
00696916   E8A1F0D6FF             call    004059BC
0069691B   FFB5B4FAFFFF           push    dword ptr [ebp+$FFFFFAB4]
00696921   8D85CCFAFFFF           lea     eax, [ebp+$FFFFFACC]
00696927   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0069692C   E8EBEED6FF             call    0040581C
00696931   8B95CCFAFFFF           mov     edx, [ebp+$FFFFFACC]
00696937   8D85D0FAFFFF           lea     eax, [ebp+$FFFFFAD0]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069693D   E88223D8FF             call    00418CC4
00696942   8D8DD0FAFFFF           lea     ecx, [ebp+$FFFFFAD0]
00696948   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
0069694D   8B00                   mov     eax, [eax]

* Possible String Reference to: 'NumDupl'
|
0069694F   BA54836900             mov     edx, $00698354

* Reference to : tArrayTable._PROC_007B767C()
|
00696954   E8230D1200             call    007B767C
00696959   FF45C0                 inc     dword ptr [ebp-$40]
0069695C   8D95A0FAFFFF           lea     edx, [ebp+$FFFFFAA0]
00696962   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696967   8B00                   mov     eax, [eax]
00696969   8B80E0000000           mov     eax, [eax+$00E0]
0069696F   8B08                   mov     ecx, [eax]
00696971   FF5160                 call    dword ptr [ecx+$60]
00696974   8B95A0FAFFFF           mov     edx, [ebp+$FFFFFAA0]
0069697A   8D85A4FAFFFF           lea     eax, [ebp+$FFFFFAA4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696980   E83F23D8FF             call    00418CC4
00696985   8D8DA4FAFFFF           lea     ecx, [ebp+$FFFFFAA4]
0069698B   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696990   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Cgc'
|
00696992   BA64836900             mov     edx, $00698364

* Reference to : tArrayTable._PROC_007B767C()
|
00696997   E8E00C1200             call    007B767C
0069699C   8D8590FAFFFF           lea     eax, [ebp+$FFFFFA90]
006969A2   8B1558B57D00           mov     edx, [$007DB558]
006969A8   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006969AA   E81523D8FF             call    00418CC4
006969AF   8D8D90FAFFFF           lea     ecx, [ebp+$FFFFFA90]
006969B5   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
006969BA   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodMoeda'
|
006969BC   BA7C7F6900             mov     edx, $00697F7C

* Reference to : tArrayTable._PROC_007B767C()
|
006969C1   E8B60C1200             call    007B767C
006969C6   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006969CB   8B00                   mov     eax, [eax]
006969CD   8B80C0010000           mov     eax, [eax+$01C0]
006969D3   8B10                   mov     edx, [eax]
006969D5   FF5254                 call    dword ptr [edx+$54]
006969D8   83C4F8                 add     esp, -$08
006969DB   DD1C24                 fstp    qword ptr [esp]
006969DE   9B                     wait
006969DF   B802000000             mov     eax, $00000002

|
006969E4   E81BA91000             call    007A1304
006969E9   8D8580FAFFFF           lea     eax, [ebp+$FFFFFA80]

* Reference to: Variants.@VarFromReal;
|
006969EF   E89422D8FF             call    00418C88
006969F4   8D8D80FAFFFF           lea     ecx, [ebp+$FFFFFA80]
006969FA   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
006969FF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrDupl'
|
00696A01   BA70836900             mov     edx, $00698370

* Reference to : tArrayTable._PROC_007B767C()
|
00696A06   E8710C1200             call    007B767C
00696A0B   8D8570FAFFFF           lea     eax, [ebp+$FFFFFA70]
00696A11   8B1540A37D00           mov     edx, [$007DA340]
00696A17   8A12                   mov     dl, byte ptr [edx]

* Reference to: Variants.@VarFromBool(TVarData;TVarData;Boolean);
|
00696A19   E84222D8FF             call    00418C60
00696A1E   8D8D70FAFFFF           lea     ecx, [ebp+$FFFFFA70]
00696A24   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696A29   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Contabiliza'
|
00696A2B   BA687F6900             mov     edx, $00697F68

* Reference to : tArrayTable._PROC_007B767C()
|
00696A30   E8470C1200             call    007B767C
00696A35   8D8560FAFFFF           lea     eax, [ebp+$FFFFFA60]
00696A3B   8B15D4A27D00           mov     edx, [$007DA2D4]
00696A41   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696A43   E87C22D8FF             call    00418CC4
00696A48   8D8D60FAFFFF           lea     ecx, [ebp+$FFFFFA60]
00696A4E   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696A53   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodPdv'
|
00696A55   BA80836900             mov     edx, $00698380

* Reference to : tArrayTable._PROC_007B767C()
|
00696A5A   E81D0C1200             call    007B767C
00696A5F   A180AC7D00             mov     eax, dword ptr [$007DAC80]
00696A64   FF7004                 push    dword ptr [eax+$04]
00696A67   FF30                   push    dword ptr [eax]
00696A69   8D854CFAFFFF           lea     eax, [ebp+$FFFFFA4C]

* Reference to : TFrmInfoAtu._PROC_007A6208()
|
00696A6F   E894F71000             call    007A6208
00696A74   8B954CFAFFFF           mov     edx, [ebp+$FFFFFA4C]
00696A7A   8D8550FAFFFF           lea     eax, [ebp+$FFFFFA50]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696A80   E83F22D8FF             call    00418CC4
00696A85   8D8D50FAFFFF           lea     ecx, [ebp+$FFFFFA50]
00696A8B   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696A90   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtCaixa'
|
00696A92   BAA47F6900             mov     edx, $00697FA4

* Reference to : tArrayTable._PROC_007B767C()
|
00696A97   E8E00B1200             call    007B767C
00696A9C   8D9538FAFFFF           lea     edx, [ebp+$FFFFFA38]
00696AA2   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00696AA7   8B00                   mov     eax, [eax]
00696AA9   8B80040B0000           mov     eax, [eax+$0B04]
00696AAF   8B08                   mov     ecx, [eax]
00696AB1   FF5160                 call    dword ptr [ecx+$60]
00696AB4   8B9538FAFFFF           mov     edx, [ebp+$FFFFFA38]
00696ABA   8D853CFAFFFF           lea     eax, [ebp+$FFFFFA3C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696AC0   E8FF21D8FF             call    00418CC4
00696AC5   8D8D3CFAFFFF           lea     ecx, [ebp+$FFFFFA3C]
00696ACB   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696AD0   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodBanco'
|
00696AD2   BA14806900             mov     edx, $00698014

* Reference to : tArrayTable._PROC_007B767C()
|
00696AD7   E8A00B1200             call    007B767C
00696ADC   8D8D34FAFFFF           lea     ecx, [ebp+$FFFFFA34]
00696AE2   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696AE7   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodBanco'
|
00696AE9   BA14806900             mov     edx, $00698014

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696AEE   E845121200             call    007B7D38
00696AF3   83BD34FAFFFF00         cmp     dword ptr [ebp+$FFFFFA34], +$00
00696AFA   0F85B2000000           jnz     00696BB2
00696B00   8D9520FAFFFF           lea     edx, [ebp+$FFFFFA20]
00696B06   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00696B0B   8B00                   mov     eax, [eax]
00696B0D   8B80B4040000           mov     eax, [eax+$04B4]
00696B13   8B08                   mov     ecx, [eax]
00696B15   FF5160                 call    dword ptr [ecx+$60]
00696B18   8B9520FAFFFF           mov     edx, [ebp+$FFFFFA20]
00696B1E   8D8524FAFFFF           lea     eax, [ebp+$FFFFFA24]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696B24   E89B21D8FF             call    00418CC4
00696B29   8D8D24FAFFFF           lea     ecx, [ebp+$FFFFFA24]
00696B2F   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696B34   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodBanco'
|
00696B36   BA14806900             mov     edx, $00698014

* Reference to : tArrayTable._PROC_007B767C()
|
00696B3B   E83C0B1200             call    007B767C
00696B40   8D8D1CFAFFFF           lea     ecx, [ebp+$FFFFFA1C]
00696B46   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696B4B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodBanco'
|
00696B4D   BA14806900             mov     edx, $00698014

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696B52   E8E1111200             call    007B7D38
00696B57   83BD1CFAFFFF00         cmp     dword ptr [ebp+$FFFFFA1C], +$00
00696B5E   7552                   jnz     00696BB2
00696B60   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00696B65   8B00                   mov     eax, [eax]
00696B67   8B8030020000           mov     eax, [eax+$0230]

* Reference to: DB.TDataSet.First(TDataSet);
|
00696B6D   E8BA44E5FF             call    004EB02C
00696B72   8D9508FAFFFF           lea     edx, [ebp+$FFFFFA08]
00696B78   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00696B7D   8B00                   mov     eax, [eax]
00696B7F   8B8034020000           mov     eax, [eax+$0234]
00696B85   8B08                   mov     ecx, [eax]
00696B87   FF5160                 call    dword ptr [ecx+$60]
00696B8A   8B9508FAFFFF           mov     edx, [ebp+$FFFFFA08]
00696B90   8D850CFAFFFF           lea     eax, [ebp+$FFFFFA0C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696B96   E82921D8FF             call    00418CC4
00696B9B   8D8D0CFAFFFF           lea     ecx, [ebp+$FFFFFA0C]
00696BA1   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696BA6   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodBanco'
|
00696BA8   BA14806900             mov     edx, $00698014

* Reference to : tArrayTable._PROC_007B767C()
|
00696BAD   E8CA0A1200             call    007B767C
00696BB2   B043                   mov     al, $43
00696BB4   888595FEFFFF           mov     [ebp+$FFFFFE95], al
00696BBA   C68594FEFFFF01         mov     byte ptr [ebp+$FFFFFE94], $01
00696BC1   8D85F8F9FFFF           lea     eax, [ebp+$FFFFF9F8]
00696BC7   8D9594FEFFFF           lea     edx, [ebp+$FFFFFE94]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
00696BCD   E81E21D8FF             call    00418CF0
00696BD2   8D8DF8F9FFFF           lea     ecx, [ebp+$FFFFF9F8]
00696BD8   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696BDD   8B00                   mov     eax, [eax]

* Possible String Reference to: 'ClieFunc'
|
00696BDF   BA90836900             mov     edx, $00698390

* Reference to : tArrayTable._PROC_007B767C()
|
00696BE4   E8930A1200             call    007B767C
00696BE9   8D95F4F9FFFF           lea     edx, [ebp+$FFFFF9F4]
00696BEF   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696BF4   8B00                   mov     eax, [eax]
00696BF6   8B8064010000           mov     eax, [eax+$0164]
00696BFC   8B08                   mov     ecx, [eax]
00696BFE   FF5160                 call    dword ptr [ecx+$60]
00696C01   83BDF4F9FFFF00         cmp     dword ptr [ebp+$FFFFF9F4], +$00
00696C08   7451                   jz      00696C5B
00696C0A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696C0F   8B00                   mov     eax, [eax]
00696C11   8B8064010000           mov     eax, [eax+$0164]
00696C17   8B10                   mov     edx, [eax]
00696C19   FF5250                 call    dword ptr [edx+$50]
00696C1C   83C4F8                 add     esp, -$08
00696C1F   DD1C24                 fstp    qword ptr [esp]
00696C22   9B                     wait
00696C23   8D95E0F9FFFF           lea     edx, [ebp+$FFFFF9E0]

* Possible String Reference to: 'mm/dd/yyyy'
|
00696C29   B8047F6900             mov     eax, $00697F04

|
00696C2E   E8A57CD7FF             call    0040E8D8
00696C33   8B95E0F9FFFF           mov     edx, [ebp+$FFFFF9E0]
00696C39   8D85E4F9FFFF           lea     eax, [ebp+$FFFFF9E4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696C3F   E88020D8FF             call    00418CC4
00696C44   8D8DE4F9FFFF           lea     ecx, [ebp+$FFFFF9E4]
00696C4A   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696C4F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtVencto'
|
00696C51   BAA4836900             mov     edx, $006983A4

* Reference to : tArrayTable._PROC_007B767C()
|
00696C56   E8210A1200             call    007B767C
00696C5B   8D8DDCF9FFFF           lea     ecx, [ebp+$FFFFF9DC]
00696C61   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696C66   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtVencto'
|
00696C68   BAA4836900             mov     edx, $006983A4

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696C6D   E8C6101200             call    007B7D38
00696C72   83BDDCF9FFFF00         cmp     dword ptr [ebp+$FFFFF9DC], +$00
00696C79   7452                   jz      00696CCD
00696C7B   8D8DD8F9FFFF           lea     ecx, [ebp+$FFFFF9D8]
00696C81   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696C86   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtVencto'
|
00696C88   BAA4836900             mov     edx, $006983A4

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696C8D   E8A6101200             call    007B7D38
00696C92   8B85D8F9FFFF           mov     eax, [ebp+$FFFFF9D8]

* Possible String Reference to: '00/00/0000'
|
00696C98   BAB8836900             mov     edx, $006983B8

* Reference to: System.@LStrCmp;
|
00696C9D   E806ECD6FF             call    004058A8
00696CA2   7429                   jz      00696CCD
00696CA4   8D8DD4F9FFFF           lea     ecx, [ebp+$FFFFF9D4]
00696CAA   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696CAF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtVencto'
|
00696CB1   BAA4836900             mov     edx, $006983A4

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00696CB6   E87D101200             call    007B7D38
00696CBB   8B85D4F9FFFF           mov     eax, [ebp+$FFFFF9D4]

* Possible String Reference to: '00/00/00'
|
00696CC1   BACC836900             mov     edx, $006983CC

* Reference to: System.@LStrCmp;
|
00696CC6   E8DDEBD6FF             call    004058A8
00696CCB   7542                   jnz     00696D0F
00696CCD   A150AD7D00             mov     eax, dword ptr [$007DAD50]
00696CD2   FF7004                 push    dword ptr [eax+$04]
00696CD5   FF30                   push    dword ptr [eax]
00696CD7   8D95C0F9FFFF           lea     edx, [ebp+$FFFFF9C0]

* Possible String Reference to: 'mm/dd/yyyy'
|
00696CDD   B8047F6900             mov     eax, $00697F04

|
00696CE2   E8F17BD7FF             call    0040E8D8
00696CE7   8B95C0F9FFFF           mov     edx, [ebp+$FFFFF9C0]
00696CED   8D85C4F9FFFF           lea     eax, [ebp+$FFFFF9C4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696CF3   E8CC1FD8FF             call    00418CC4
00696CF8   8D8DC4F9FFFF           lea     ecx, [ebp+$FFFFF9C4]
00696CFE   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696D03   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtVencto'
|
00696D05   BAA4836900             mov     edx, $006983A4

* Reference to : tArrayTable._PROC_007B767C()
|
00696D0A   E86D091200             call    007B767C
00696D0F   8D95BCF9FFFF           lea     edx, [ebp+$FFFFF9BC]
00696D15   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696D1A   8B00                   mov     eax, [eax]
00696D1C   8B80FC000000           mov     eax, [eax+$00FC]
00696D22   8B08                   mov     ecx, [eax]
00696D24   FF5160                 call    dword ptr [ecx+$60]
00696D27   8B85BCF9FFFF           mov     eax, [ebp+$FFFFF9BC]
00696D2D   BAE0836900             mov     edx, $006983E0

* Reference to: System.@LStrCmp;
|
00696D32   E871EBD6FF             call    004058A8
00696D37   7542                   jnz     00696D7B
00696D39   A150AD7D00             mov     eax, dword ptr [$007DAD50]
00696D3E   FF7004                 push    dword ptr [eax+$04]
00696D41   FF30                   push    dword ptr [eax]
00696D43   8D95A8F9FFFF           lea     edx, [ebp+$FFFFF9A8]

* Possible String Reference to: 'mm/dd/yyyy'
|
00696D49   B8047F6900             mov     eax, $00697F04

|
00696D4E   E8857BD7FF             call    0040E8D8
00696D53   8B95A8F9FFFF           mov     edx, [ebp+$FFFFF9A8]
00696D59   8D85ACF9FFFF           lea     eax, [ebp+$FFFFF9AC]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696D5F   E8601FD8FF             call    00418CC4
00696D64   8D8DACF9FFFF           lea     ecx, [ebp+$FFFFF9AC]
00696D6A   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696D6F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtPagto'
|
00696D71   BAEC836900             mov     edx, $006983EC

* Reference to : tArrayTable._PROC_007B767C()
|
00696D76   E801091200             call    007B767C
00696D7B   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696D80   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00696D82   E855301200             call    007B9DDC
00696D87   8D8D98F9FFFF           lea     ecx, [ebp+$FFFFF998]
00696D8D   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696D92   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtPagto'
|
00696D94   BAEC836900             mov     edx, $006983EC

|
00696D99   E8A2101200             call    007B7E40
00696D9E   8D8598F9FFFF           lea     eax, [ebp+$FFFFF998]
00696DA4   50                     push    eax
00696DA5   8D8588F9FFFF           lea     eax, [ebp+$FFFFF988]

* Reference to: ActiveX.PROPSETHDR_OSVER_KIND(DWORD):Word;
|
00696DAB   E8EC62D8FF             call    0041D09C
00696DB0   8D9588F9FFFF           lea     edx, [ebp+$FFFFF988]
00696DB6   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
00696DB7   E85863D8FF             call    0041D114
00696DBC   8D9584F9FFFF           lea     edx, [ebp+$FFFFF984]
00696DC2   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696DC7   8B00                   mov     eax, [eax]
00696DC9   8B80FC000000           mov     eax, [eax+$00FC]
00696DCF   8B08                   mov     ecx, [eax]
00696DD1   FF5160                 call    dword ptr [ecx+$60]
00696DD4   8B8584F9FFFF           mov     eax, [ebp+$FFFFF984]
00696DDA   BAE0836900             mov     edx, $006983E0

* Reference to: System.@LStrCmp;
|
00696DDF   E8C4EAD6FF             call    004058A8
00696DE4   7510                   jnz     00696DF6
00696DE6   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00696DEB   8B00                   mov     eax, [eax]

|
00696DED   E866311200             call    007B9F58
00696DF2   C645C701               mov     byte ptr [ebp-$39], $01
00696DF6   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00696DFB   8B00                   mov     eax, [eax]

|
00696DFD   E872041200             call    007B7274
00696E02   8D8574F9FFFF           lea     eax, [ebp+$FFFFF974]
00696E08   BA01000000             mov     edx, $00000001
00696E0D   B101                   mov     cl, $01

|
00696E0F   E85C1CD8FF             call    00418A70
00696E14   8D8D74F9FFFF           lea     ecx, [ebp+$FFFFF974]
00696E1A   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00696E1F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Item'
|
00696E21   BA80816900             mov     edx, $00698180

* Reference to : tArrayTable._PROC_007B767C()
|
00696E26   E851081200             call    007B767C
00696E2B   8D9560F9FFFF           lea     edx, [ebp+$FFFFF960]
00696E31   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696E36   8B00                   mov     eax, [eax]
00696E38   8B80FC000000           mov     eax, [eax+$00FC]
00696E3E   8B08                   mov     ecx, [eax]
00696E40   FF5160                 call    dword ptr [ecx+$60]
00696E43   8B9560F9FFFF           mov     edx, [ebp+$FFFFF960]
00696E49   8D8564F9FFFF           lea     eax, [ebp+$FFFFF964]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696E4F   E8701ED8FF             call    00418CC4
00696E54   8D8D64F9FFFF           lea     ecx, [ebp+$FFFFF964]
00696E5A   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00696E5F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'TipoPgto'
|
00696E61   BAFC836900             mov     edx, $006983FC

* Reference to : tArrayTable._PROC_007B767C()
|
00696E66   E811081200             call    007B767C
00696E6B   8D954CF9FFFF           lea     edx, [ebp+$FFFFF94C]
00696E71   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696E76   8B00                   mov     eax, [eax]
00696E78   8B8000010000           mov     eax, [eax+$0100]
00696E7E   8B08                   mov     ecx, [eax]
00696E80   FF5160                 call    dword ptr [ecx+$60]
00696E83   8B954CF9FFFF           mov     edx, [ebp+$FFFFF94C]
00696E89   8D8550F9FFFF           lea     eax, [ebp+$FFFFF950]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696E8F   E8301ED8FF             call    00418CC4
00696E94   8D8D50F9FFFF           lea     ecx, [ebp+$FFFFF950]
00696E9A   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00696E9F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'NumBanco'
|
00696EA1   BA10846900             mov     edx, $00698410

* Reference to : tArrayTable._PROC_007B767C()
|
00696EA6   E8D1071200             call    007B767C
00696EAB   8D9538F9FFFF           lea     edx, [ebp+$FFFFF938]
00696EB1   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696EB6   8B00                   mov     eax, [eax]
00696EB8   8B8004010000           mov     eax, [eax+$0104]
00696EBE   8B08                   mov     ecx, [eax]
00696EC0   FF5160                 call    dword ptr [ecx+$60]
00696EC3   8B9538F9FFFF           mov     edx, [ebp+$FFFFF938]
00696EC9   8D853CF9FFFF           lea     eax, [ebp+$FFFFF93C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696ECF   E8F01DD8FF             call    00418CC4
00696ED4   8D8D3CF9FFFF           lea     ecx, [ebp+$FFFFF93C]
00696EDA   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00696EDF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'NumAgencia'
|
00696EE1   BA24846900             mov     edx, $00698424

* Reference to : tArrayTable._PROC_007B767C()
|
00696EE6   E891071200             call    007B767C
00696EEB   8D9524F9FFFF           lea     edx, [ebp+$FFFFF924]
00696EF1   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696EF6   8B00                   mov     eax, [eax]
00696EF8   8B8008010000           mov     eax, [eax+$0108]
00696EFE   8B08                   mov     ecx, [eax]
00696F00   FF5160                 call    dword ptr [ecx+$60]
00696F03   8B9524F9FFFF           mov     edx, [ebp+$FFFFF924]
00696F09   8D8528F9FFFF           lea     eax, [ebp+$FFFFF928]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696F0F   E8B01DD8FF             call    00418CC4
00696F14   8D8D28F9FFFF           lea     ecx, [ebp+$FFFFF928]
00696F1A   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00696F1F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'NumCheque'
|
00696F21   BA38846900             mov     edx, $00698438

* Reference to : tArrayTable._PROC_007B767C()
|
00696F26   E851071200             call    007B767C
00696F2B   8D9510F9FFFF           lea     edx, [ebp+$FFFFF910]
00696F31   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696F36   8B00                   mov     eax, [eax]
00696F38   8B8010010000           mov     eax, [eax+$0110]
00696F3E   8B08                   mov     ecx, [eax]
00696F40   FF5160                 call    dword ptr [ecx+$60]
00696F43   8B9510F9FFFF           mov     edx, [ebp+$FFFFF910]
00696F49   8D8514F9FFFF           lea     eax, [ebp+$FFFFF914]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696F4F   E8701DD8FF             call    00418CC4
00696F54   8D8D14F9FFFF           lea     ecx, [ebp+$FFFFF914]
00696F5A   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00696F5F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Emitente'
|
00696F61   BA4C846900             mov     edx, $0069844C

* Reference to : tArrayTable._PROC_007B767C()
|
00696F66   E811071200             call    007B767C
00696F6B   8D95FCF8FFFF           lea     edx, [ebp+$FFFFF8FC]
00696F71   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696F76   8B00                   mov     eax, [eax]
00696F78   8B800C010000           mov     eax, [eax+$010C]
00696F7E   8B08                   mov     ecx, [eax]
00696F80   FF5160                 call    dword ptr [ecx+$60]
00696F83   8B95FCF8FFFF           mov     edx, [ebp+$FFFFF8FC]
00696F89   8D8500F9FFFF           lea     eax, [ebp+$FFFFF900]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696F8F   E8301DD8FF             call    00418CC4
00696F94   8D8D00F9FFFF           lea     ecx, [ebp+$FFFFF900]
00696F9A   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00696F9F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'ContaCorr'
|
00696FA1   BA60846900             mov     edx, $00698460

* Reference to : tArrayTable._PROC_007B767C()
|
00696FA6   E8D1061200             call    007B767C
00696FAB   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00696FB0   8B00                   mov     eax, [eax]
00696FB2   8B8064010000           mov     eax, [eax+$0164]
00696FB8   8B10                   mov     edx, [eax]
00696FBA   FF5250                 call    dword ptr [edx+$50]
00696FBD   83C4F8                 add     esp, -$08
00696FC0   DD1C24                 fstp    qword ptr [esp]
00696FC3   9B                     wait
00696FC4   8D95E8F8FFFF           lea     edx, [ebp+$FFFFF8E8]

* Possible String Reference to: 'mm/dd/yyyy'
|
00696FCA   B8047F6900             mov     eax, $00697F04

|
00696FCF   E80479D7FF             call    0040E8D8
00696FD4   8B95E8F8FFFF           mov     edx, [ebp+$FFFFF8E8]
00696FDA   8D85ECF8FFFF           lea     eax, [ebp+$FFFFF8EC]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00696FE0   E8DF1CD8FF             call    00418CC4
00696FE5   8D8DECF8FFFF           lea     ecx, [ebp+$FFFFF8EC]
00696FEB   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00696FF0   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtVencto'
|
00696FF2   BAA4836900             mov     edx, $006983A4

* Reference to : tArrayTable._PROC_007B767C()
|
00696FF7   E880061200             call    007B767C
00696FFC   8D95E4F8FFFF           lea     edx, [ebp+$FFFFF8E4]
00697002   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697007   8B00                   mov     eax, [eax]
00697009   8B80FC000000           mov     eax, [eax+$00FC]
0069700F   8B08                   mov     ecx, [eax]
00697011   FF5160                 call    dword ptr [ecx+$60]
00697014   8B85E4F8FFFF           mov     eax, [ebp+$FFFFF8E4]
0069701A   BAE0836900             mov     edx, $006983E0

* Reference to: System.@LStrCmp;
|
0069701F   E884E8D6FF             call    004058A8
00697024   7542                   jnz     00697068
00697026   A150AD7D00             mov     eax, dword ptr [$007DAD50]
0069702B   FF7004                 push    dword ptr [eax+$04]
0069702E   FF30                   push    dword ptr [eax]
00697030   8D95D0F8FFFF           lea     edx, [ebp+$FFFFF8D0]

* Possible String Reference to: 'mm/dd/yyyy'
|
00697036   B8047F6900             mov     eax, $00697F04

|
0069703B   E89878D7FF             call    0040E8D8
00697040   8B95D0F8FFFF           mov     edx, [ebp+$FFFFF8D0]
00697046   8D85D4F8FFFF           lea     eax, [ebp+$FFFFF8D4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069704C   E8731CD8FF             call    00418CC4
00697051   8D8DD4F8FFFF           lea     ecx, [ebp+$FFFFF8D4]
00697057   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
0069705C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtPagto'
|
0069705E   BAEC836900             mov     edx, $006983EC

* Reference to : tArrayTable._PROC_007B767C()
|
00697063   E814061200             call    007B767C
00697068   8D95C4F8FFFF           lea     edx, [ebp+$FFFFF8C4]
0069706E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697073   8B00                   mov     eax, [eax]
00697075   8B8014010000           mov     eax, [eax+$0114]
0069707B   8B08                   mov     ecx, [eax]
0069707D   FF5160                 call    dword ptr [ecx+$60]
00697080   8B85C4F8FFFF           mov     eax, [ebp+$FFFFF8C4]
00697086   8D95C8F8FFFF           lea     edx, [ebp+$FFFFF8C8]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0069708C   E88FCA1000             call    007A3B20
00697091   8B8DC8F8FFFF           mov     ecx, [ebp+$FFFFF8C8]
00697097   8D85CCF8FFFF           lea     eax, [ebp+$FFFFF8CC]

* Possible String Reference to: 'CODCARD = '
|
0069709D   BA74846900             mov     edx, $00698474

* Reference to: System.@LStrCat3;
|
006970A2   E801E7D6FF             call    004057A8
006970A7   8B85CCF8FFFF           mov     eax, [ebp+$FFFFF8CC]
006970AD   50                     push    eax
006970AE   6A01                   push    $01
006970B0   B988846900             mov     ecx, $00698488

* Possible String Reference to: 'CARTOES'
|
006970B5   BA94846900             mov     edx, $00698494
006970BA   33C0                   xor     eax, eax

|
006970BC   E82F1E1100             call    007A8EF0
006970C1   84C0                   test    al, al
006970C3   7442                   jz      00697107
006970C5   8D95B0F8FFFF           lea     edx, [ebp+$FFFFF8B0]
006970CB   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006970D0   8B00                   mov     eax, [eax]
006970D2   8B8014010000           mov     eax, [eax+$0114]
006970D8   8B08                   mov     ecx, [eax]
006970DA   FF5160                 call    dword ptr [ecx+$60]
006970DD   8B95B0F8FFFF           mov     edx, [ebp+$FFFFF8B0]
006970E3   8D85B4F8FFFF           lea     eax, [ebp+$FFFFF8B4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006970E9   E8D61BD8FF             call    00418CC4
006970EE   8D8DB4F8FFFF           lea     ecx, [ebp+$FFFFF8B4]
006970F4   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
006970F9   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodCard'
|
006970FB   BAA4846900             mov     edx, $006984A4

* Reference to : tArrayTable._PROC_007B767C()
|
00697100   E877051200             call    007B767C
00697105   EB51                   jmp     00697158
00697107   8D9598F8FFFF           lea     edx, [ebp+$FFFFF898]
0069710D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697112   8B00                   mov     eax, [eax]
00697114   8B8014010000           mov     eax, [eax+$0114]
0069711A   8B08                   mov     ecx, [eax]
0069711C   FF5160                 call    dword ptr [ecx+$60]
0069711F   8B8598F8FFFF           mov     eax, [ebp+$FFFFF898]
00697125   8D959CF8FFFF           lea     edx, [ebp+$FFFFF89C]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
0069712B   E83835D7FF             call    0040A668
00697130   8B959CF8FFFF           mov     edx, [ebp+$FFFFF89C]
00697136   8D85A0F8FFFF           lea     eax, [ebp+$FFFFF8A0]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069713C   E8831BD8FF             call    00418CC4
00697141   8D8DA0F8FFFF           lea     ecx, [ebp+$FFFFF8A0]
00697147   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
0069714C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodCard'
|
0069714E   BAA4846900             mov     edx, $006984A4

* Reference to : tArrayTable._PROC_007B767C()
|
00697153   E824051200             call    007B767C
00697158   8D9584F8FFFF           lea     edx, [ebp+$FFFFF884]
0069715E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697163   8B00                   mov     eax, [eax]
00697165   8B8018010000           mov     eax, [eax+$0118]
0069716B   8B08                   mov     ecx, [eax]
0069716D   FF5160                 call    dword ptr [ecx+$60]
00697170   8B9584F8FFFF           mov     edx, [ebp+$FFFFF884]
00697176   8D8588F8FFFF           lea     eax, [ebp+$FFFFF888]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069717C   E8431BD8FF             call    00418CC4
00697181   8D8D88F8FFFF           lea     ecx, [ebp+$FFFFF888]
00697187   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
0069718C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'SenhaAutoriza'
|
0069718E   BAB4846900             mov     edx, $006984B4

* Reference to : tArrayTable._PROC_007B767C()
|
00697193   E8E4041200             call    007B767C
00697198   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069719D   8B00                   mov     eax, [eax]
0069719F   8B80C0010000           mov     eax, [eax+$01C0]
006971A5   8B10                   mov     edx, [eax]
006971A7   FF5254                 call    dword ptr [edx+$54]
006971AA   83C4F8                 add     esp, -$08
006971AD   DD1C24                 fstp    qword ptr [esp]
006971B0   9B                     wait
006971B1   B802000000             mov     eax, $00000002

|
006971B6   E849A11000             call    007A1304
006971BB   8D8574F8FFFF           lea     eax, [ebp+$FFFFF874]

* Reference to: Variants.@VarFromReal;
|
006971C1   E8C21AD8FF             call    00418C88
006971C6   8D8D74F8FFFF           lea     ecx, [ebp+$FFFFF874]
006971CC   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
006971D1   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Valor'
|
006971D3   BACC846900             mov     edx, $006984CC

* Reference to : tArrayTable._PROC_007B767C()
|
006971D8   E89F041200             call    007B767C
006971DD   8D8564F8FFFF           lea     eax, [ebp+$FFFFF864]
006971E3   8B15D4A27D00           mov     edx, [$007DA2D4]
006971E9   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006971EB   E8D41AD8FF             call    00418CC4
006971F0   8D8D64F8FFFF           lea     ecx, [ebp+$FFFFF864]
006971F6   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
006971FB   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodPdv'
|
006971FD   BA80836900             mov     edx, $00698380

* Reference to : tArrayTable._PROC_007B767C()
|
00697202   E875041200             call    007B767C
00697207   A180AC7D00             mov     eax, dword ptr [$007DAC80]
0069720C   FF7004                 push    dword ptr [eax+$04]
0069720F   FF30                   push    dword ptr [eax]
00697211   8D8550F8FFFF           lea     eax, [ebp+$FFFFF850]

* Reference to : TFrmInfoAtu._PROC_007A6208()
|
00697217   E8ECEF1000             call    007A6208
0069721C   8B9550F8FFFF           mov     edx, [ebp+$FFFFF850]
00697222   8D8554F8FFFF           lea     eax, [ebp+$FFFFF854]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00697228   E8971AD8FF             call    00418CC4
0069722D   8D8D54F8FFFF           lea     ecx, [ebp+$FFFFF854]
00697233   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00697238   8B00                   mov     eax, [eax]

* Possible String Reference to: 'DtCaixa'
|
0069723A   BAA47F6900             mov     edx, $00697FA4

* Reference to : tArrayTable._PROC_007B767C()
|
0069723F   E838041200             call    007B767C
00697244   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00697249   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0069724B   E88C2B1200             call    007B9DDC
00697250   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00697255   8B00                   mov     eax, [eax]

* Reference to : TFrmF2SubLocal._PROC_00643E1C()
|
00697257   E8C0CBFAFF             call    00643E1C
0069725C   83C4F8                 add     esp, -$08
0069725F   DD1C24                 fstp    qword ptr [esp]
00697262   9B                     wait
00697263   B802000000             mov     eax, $00000002

|
00697268   E897A01000             call    007A1304
0069726D   DBBD70FFFFFF           fstp    tbyte ptr [ebp+$FFFFFF70]
00697273   9B                     wait
00697274   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00697279   8B00                   mov     eax, [eax]

|
0069727B   E8A0CEFAFF             call    00644120
00697280   83C4F8                 add     esp, -$08
00697283   DD1C24                 fstp    qword ptr [esp]
00697286   9B                     wait
00697287   B802000000             mov     eax, $00000002

|
0069728C   E873A01000             call    007A1304
00697291   DBBD60FFFFFF           fstp    tbyte ptr [ebp+$FFFFFF60]
00697297   9B                     wait
00697298   DBAD70FFFFFF           fld     tbyte ptr [ebp+$FFFFFF70]
0069729E   D81DC87E6900           fcomp   dword ptr [$00697EC8]
006972A4   DFE0                   fstsw   ax
006972A6   9E                     sahf
006972A7   7715                   jnbe    006972BE
006972A9   DBAD60FFFFFF           fld     tbyte ptr [ebp+$FFFFFF60]
006972AF   D81DC87E6900           fcomp   dword ptr [$00697EC8]
006972B5   DFE0                   fstsw   ax
006972B7   9E                     sahf
006972B8   0F86AB020000           jbe     00697569
006972BE   DBAD70FFFFFF           fld     tbyte ptr [ebp+$FFFFFF70]
006972C4   8D8540F8FFFF           lea     eax, [ebp+$FFFFF840]

* Reference to: Variants.@VarFromReal;
|
006972CA   E8B919D8FF             call    00418C88
006972CF   8D8D40F8FFFF           lea     ecx, [ebp+$FFFFF840]
006972D5   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
006972DA   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrDeduc'
|
006972DC   BADC846900             mov     edx, $006984DC

* Reference to : tArrayTable._PROC_007B767C()
|
006972E1   E896031200             call    007B767C
006972E6   DBAD60FFFFFF           fld     tbyte ptr [ebp+$FFFFFF60]
006972EC   8D8530F8FFFF           lea     eax, [ebp+$FFFFF830]

* Reference to: Variants.@VarFromReal;
|
006972F2   E89119D8FF             call    00418C88
006972F7   8D8D30F8FFFF           lea     ecx, [ebp+$FFFFF830]
006972FD   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00697302   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrAcresc'
|
00697304   BA04836900             mov     edx, $00698304

* Reference to : tArrayTable._PROC_007B767C()
|
00697309   E86E031200             call    007B767C
0069730E   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00697313   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00697315   E8C22A1200             call    007B9DDC
0069731A   DBAD70FFFFFF           fld     tbyte ptr [ebp+$FFFFFF70]
00697320   8D8520F8FFFF           lea     eax, [ebp+$FFFFF820]

* Reference to: Variants.@VarFromReal;
|
00697326   E85D19D8FF             call    00418C88
0069732B   8D8D20F8FFFF           lea     ecx, [ebp+$FFFFF820]
00697331   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00697336   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrDeduc'
|
00697338   BADC846900             mov     edx, $006984DC

* Reference to : tArrayTable._PROC_007B767C()
|
0069733D   E83A031200             call    007B767C
00697342   DBAD60FFFFFF           fld     tbyte ptr [ebp+$FFFFFF60]
00697348   8D8510F8FFFF           lea     eax, [ebp+$FFFFF810]

* Reference to: Variants.@VarFromReal;
|
0069734E   E83519D8FF             call    00418C88
00697353   8D8D10F8FFFF           lea     ecx, [ebp+$FFFFF810]
00697359   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
0069735E   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrAcresc'
|
00697360   BA04836900             mov     edx, $00698304

* Reference to : tArrayTable._PROC_007B767C()
|
00697365   E812031200             call    007B767C
0069736A   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
0069736F   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00697371   E8662A1200             call    007B9DDC
00697376   E9EE010000             jmp     00697569
0069737B   8D950CF8FFFF           lea     edx, [ebp+$FFFFF80C]
00697381   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697386   8B00                   mov     eax, [eax]
00697388   8B80D4000000           mov     eax, [eax+$00D4]
0069738E   8B08                   mov     ecx, [eax]
00697390   FF5160                 call    dword ptr [ecx+$60]
00697393   8B850CF8FFFF           mov     eax, [ebp+$FFFFF80C]
00697399   BA74816900             mov     edx, $00698174

* Reference to: System.@LStrCmp;
|
0069739E   E805E5D6FF             call    004058A8
006973A3   7531                   jnz     006973D6
006973A5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006973AA   8B00                   mov     eax, [eax]
006973AC   8B80C0010000           mov     eax, [eax+$01C0]
006973B2   8B10                   mov     edx, [eax]
006973B4   FF5254                 call    dword ptr [edx+$54]
006973B7   83C4F8                 add     esp, -$08
006973BA   DD1C24                 fstp    qword ptr [esp]
006973BD   9B                     wait
006973BE   B802000000             mov     eax, $00000002

|
006973C3   E83C9F1000             call    007A1304
006973C8   DB6DE8                 fld     tbyte ptr [ebp-$18]
006973CB   DEC1                   faddp   st(1), st(0)
006973CD   DB7DE8                 fstp    tbyte ptr [ebp-$18]
006973D0   9B                     wait
006973D1   E993010000             jmp     00697569
006973D6   8D9508F8FFFF           lea     edx, [ebp+$FFFFF808]
006973DC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006973E1   8B00                   mov     eax, [eax]
006973E3   8B80D4000000           mov     eax, [eax+$00D4]
006973E9   8B08                   mov     ecx, [eax]
006973EB   FF5160                 call    dword ptr [ecx+$60]
006973EE   8B8508F8FFFF           mov     eax, [ebp+$FFFFF808]
006973F4   BAF0846900             mov     edx, $006984F0

* Reference to: System.@LStrCmp;
|
006973F9   E8AAE4D6FF             call    004058A8
006973FE   7531                   jnz     00697431
00697400   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697405   8B00                   mov     eax, [eax]
00697407   8B80C0010000           mov     eax, [eax+$01C0]
0069740D   8B10                   mov     edx, [eax]
0069740F   FF5254                 call    dword ptr [edx+$54]
00697412   83C4F8                 add     esp, -$08
00697415   DD1C24                 fstp    qword ptr [esp]
00697418   9B                     wait
00697419   B802000000             mov     eax, $00000002

|
0069741E   E8E19E1000             call    007A1304
00697423   DB6DD8                 fld     tbyte ptr [ebp-$28]
00697426   DEC1                   faddp   st(1), st(0)
00697428   DB7DD8                 fstp    tbyte ptr [ebp-$28]
0069742B   9B                     wait
0069742C   E938010000             jmp     00697569
00697431   8D9504F8FFFF           lea     edx, [ebp+$FFFFF804]
00697437   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069743C   8B00                   mov     eax, [eax]
0069743E   8B80D4000000           mov     eax, [eax+$00D4]
00697444   8B08                   mov     ecx, [eax]
00697446   FF5160                 call    dword ptr [ecx+$60]
00697449   8B8504F8FFFF           mov     eax, [ebp+$FFFFF804]
0069744F   BAFC846900             mov     edx, $006984FC

* Reference to: System.@LStrCmp;
|
00697454   E84FE4D6FF             call    004058A8
00697459   0F85CA000000           jnz     00697529
0069745F   A154AE7D00             mov     eax, dword ptr [$007DAE54]
00697464   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00697466   E8F5E8E1FF             call    004B5D60
0069746B   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697470   8B00                   mov     eax, [eax]
00697472   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Prior(TDataSet);
|
00697478   E8EF3EE5FF             call    004EB36C
0069747D   8D9500F8FFFF           lea     edx, [ebp+$FFFFF800]
00697483   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697488   8B00                   mov     eax, [eax]
0069748A   8B8048010000           mov     eax, [eax+$0148]
00697490   8B08                   mov     ecx, [eax]
00697492   FF5160                 call    dword ptr [ecx+$60]
00697495   8B8500F8FFFF           mov     eax, [ebp+$FFFFF800]
0069749B   BA74816900             mov     edx, $00698174

* Reference to: System.@LStrCmp;
|
006974A0   E803E4D6FF             call    004058A8
006974A5   746E                   jz      00697515
006974A7   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006974AC   8B00                   mov     eax, [eax]
006974AE   8B80F4000000           mov     eax, [eax+$00F4]
006974B4   8B10                   mov     edx, [eax]
006974B6   FF5254                 call    dword ptr [edx+$54]
006974B9   DB7DB0                 fstp    tbyte ptr [ebp-$50]
006974BC   9B                     wait
006974BD   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006974C2   8B00                   mov     eax, [eax]
006974C4   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
006974CA   E8753EE5FF             call    004EB344
006974CF   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006974D4   8B00                   mov     eax, [eax]
006974D6   8B80C0010000           mov     eax, [eax+$01C0]
006974DC   8B10                   mov     edx, [eax]
006974DE   FF5254                 call    dword ptr [edx+$54]
006974E1   D80D00856900           fmul    dword ptr [$00698500]
006974E7   DB6DB0                 fld     tbyte ptr [ebp-$50]

* Reference to: System.@FSafeDivide;
|
006974EA   E811C0D6FF             call    00403500
006974EF   8D85F0F7FFFF           lea     eax, [ebp+$FFFFF7F0]

* Reference to: Variants.@VarFromReal;
|
006974F5   E88E17D8FF             call    00418C88
006974FA   8D8DF0F7FFFF           lea     ecx, [ebp+$FFFFF7F0]
00697500   8B07                   mov     eax, [edi]

* Possible String Reference to: 'VlrDesc'
|
00697502   BA80826900             mov     edx, $00698280

* Reference to : tArrayTable._PROC_007B767C()
|
00697507   E870011200             call    007B767C
0069750C   8B07                   mov     eax, [edi]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0069750E   E8C9281200             call    007B9DDC
00697513   EB54                   jmp     00697569
00697515   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069751A   8B00                   mov     eax, [eax]
0069751C   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
00697522   E81D3EE5FF             call    004EB344
00697527   EB40                   jmp     00697569
00697529   8D95ECF7FFFF           lea     edx, [ebp+$FFFFF7EC]
0069752F   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697534   8B00                   mov     eax, [eax]
00697536   8B80D4000000           mov     eax, [eax+$00D4]
0069753C   8B08                   mov     ecx, [eax]
0069753E   FF5160                 call    dword ptr [ecx+$60]
00697541   8B85ECF7FFFF           mov     eax, [ebp+$FFFFF7EC]
00697547   BA0C856900             mov     edx, $0069850C

* Reference to: System.@LStrCmp;
|
0069754C   E857E3D6FF             call    004058A8
00697551   7516                   jnz     00697569
00697553   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697558   8B00                   mov     eax, [eax]
0069755A   8B80C0010000           mov     eax, [eax+$01C0]
00697560   8B10                   mov     edx, [eax]
00697562   FF5254                 call    dword ptr [edx+$54]
00697565   DB7DC8                 fstp    tbyte ptr [ebp-$38]
00697568   9B                     wait
00697569   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069756E   8B00                   mov     eax, [eax]
00697570   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
00697576   E8C93DE5FF             call    004EB344
0069757B   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697580   8B00                   mov     eax, [eax]
00697582   8B80C0000000           mov     eax, [eax+$00C0]
00697588   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0069758F   0F84E0EAFFFF           jz      00696075
00697595   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069759A   8B00                   mov     eax, [eax]
0069759C   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.EnableControls(TDataSet);
|
006975A2   E8F52FE5FF             call    004EA59C
006975A7   DB6DC8                 fld     tbyte ptr [ebp-$38]
006975AA   D81DC87E6900           fcomp   dword ptr [$00697EC8]
006975B0   DFE0                   fstsw   ax
006975B2   9E                     sahf
006975B3   0F86A0000000           jbe     00697659
006975B9   807DC700               cmp     byte ptr [ebp-$39], $00
006975BD   0F8496000000           jz      00697659
006975C3   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
006975C8   8B00                   mov     eax, [eax]

|
006975CA   E891291200             call    007B9F60
006975CF   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
006975D4   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrDupl'
|
006975D6   BA70836900             mov     edx, $00698370

|
006975DB   E848051200             call    007B7B28
006975E0   DB6DC8                 fld     tbyte ptr [ebp-$38]
006975E3   DEE9                   fsubp   st(1), st(0)
006975E5   8D85DCF7FFFF           lea     eax, [ebp+$FFFFF7DC]

* Reference to: Variants.@VarFromReal;
|
006975EB   E89816D8FF             call    00418C88
006975F0   8D8DDCF7FFFF           lea     ecx, [ebp+$FFFFF7DC]
006975F6   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
006975FB   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrDupl'
|
006975FD   BA70836900             mov     edx, $00698370

* Reference to : tArrayTable._PROC_007B767C()
|
00697602   E875001200             call    007B767C
00697607   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
0069760C   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0069760E   E8C9271200             call    007B9DDC
00697613   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00697618   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Valor'
|
0069761A   BACC846900             mov     edx, $006984CC

|
0069761F   E804051200             call    007B7B28
00697624   DB6DC8                 fld     tbyte ptr [ebp-$38]
00697627   DEE9                   fsubp   st(1), st(0)
00697629   8D85CCF7FFFF           lea     eax, [ebp+$FFFFF7CC]

* Reference to: Variants.@VarFromReal;
|
0069762F   E85416D8FF             call    00418C88
00697634   8D8DCCF7FFFF           lea     ecx, [ebp+$FFFFF7CC]
0069763A   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
0069763F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Valor'
|
00697641   BACC846900             mov     edx, $006984CC

* Reference to : tArrayTable._PROC_007B767C()
|
00697646   E831001200             call    007B767C
0069764B   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
00697650   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00697652   E885271200             call    007B9DDC
00697657   EB70                   jmp     006976C9
00697659   DB6DC8                 fld     tbyte ptr [ebp-$38]
0069765C   D81DC87E6900           fcomp   dword ptr [$00697EC8]
00697662   DFE0                   fstsw   ax
00697664   9E                     sahf
00697665   7662                   jbe     006976C9
00697667   DB6DC8                 fld     tbyte ptr [ebp-$38]
0069766A   8D85BCF7FFFF           lea     eax, [ebp+$FFFFF7BC]

* Reference to: Variants.@VarFromReal;
|
00697670   E81316D8FF             call    00418C88
00697675   8D8DBCF7FFFF           lea     ecx, [ebp+$FFFFF7BC]
0069767B   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00697680   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrDeduc'
|
00697682   BADC846900             mov     edx, $006984DC

* Reference to : tArrayTable._PROC_007B767C()
|
00697687   E8F0FF1100             call    007B767C
0069768C   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
00697691   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00697693   E844271200             call    007B9DDC
00697698   DB6DC8                 fld     tbyte ptr [ebp-$38]
0069769B   8D85ACF7FFFF           lea     eax, [ebp+$FFFFF7AC]

* Reference to: Variants.@VarFromReal;
|
006976A1   E8E215D8FF             call    00418C88
006976A6   8D8DACF7FFFF           lea     ecx, [ebp+$FFFFF7AC]
006976AC   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
006976B1   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrDeduc'
|
006976B3   BADC846900             mov     edx, $006984DC

* Reference to : tArrayTable._PROC_007B767C()
|
006976B8   E8BFFF1100             call    007B767C
006976BD   A1A4A27D00             mov     eax, dword ptr [$007DA2A4]
006976C2   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006976C4   E813271200             call    007B9DDC
006976C9   DB6DE8                 fld     tbyte ptr [ebp-$18]
006976CC   D80D00856900           fmul    dword ptr [$00698500]
006976D2   DB7DA0                 fstp    tbyte ptr [ebp-$60]
006976D5   9B                     wait
006976D6   DB6DA0                 fld     tbyte ptr [ebp-$60]
006976D9   D81DC87E6900           fcomp   dword ptr [$00697EC8]
006976DF   DFE0                   fstsw   ax
006976E1   9E                     sahf
006976E2   0F8684000000           jbe     0069776C
006976E8   A12CA27D00             mov     eax, dword ptr [$007DA22C]
006976ED   DB28                   fld     tbyte ptr [eax]
006976EF   DB6DE8                 fld     tbyte ptr [ebp-$18]
006976F2   DEE9                   fsubp   st(1), st(0)
006976F4   DB6DD8                 fld     tbyte ptr [ebp-$28]
006976F7   DEE9                   fsubp   st(1), st(0)
006976F9   DB7D90                 fstp    tbyte ptr [ebp-$70]
006976FC   9B                     wait
006976FD   DB6DA0                 fld     tbyte ptr [ebp-$60]
00697700   D80D10856900           fmul    dword ptr [$00698510]
00697706   DB6D90                 fld     tbyte ptr [ebp-$70]

* Reference to: System.@FSafeDivide;
|
00697709   E8F2BDD6FF             call    00403500
0069770E   DB7D80                 fstp    tbyte ptr [ebp-$80]
00697711   9B                     wait
00697712   8D859CF7FFFF           lea     eax, [ebp+$FFFFF79C]
00697718   BA01000000             mov     edx, $00000001
0069771D   B101                   mov     cl, $01

|
0069771F   E84C13D8FF             call    00418A70
00697724   8D8D9CF7FFFF           lea     ecx, [ebp+$FFFFF79C]
0069772A   A154B67D00             mov     eax, dword ptr [$007DB654]
0069772F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'IncrDesc'
|
00697731   BA1C856900             mov     edx, $0069851C

* Reference to : tArrayTable._PROC_007B767C()
|
00697736   E841FF1100             call    007B767C
0069773B   DB6D80                 fld     tbyte ptr [ebp-$80]
0069773E   8D858CF7FFFF           lea     eax, [ebp+$FFFFF78C]

* Reference to: Variants.@VarFromReal;
|
00697744   E83F15D8FF             call    00418C88
00697749   8D8D8CF7FFFF           lea     ecx, [ebp+$FFFFF78C]
0069774F   A154B67D00             mov     eax, dword ptr [$007DB654]
00697754   8B00                   mov     eax, [eax]

* Possible String Reference to: 'PrcDesc'
|
00697756   BA30856900             mov     edx, $00698530

* Reference to : tArrayTable._PROC_007B767C()
|
0069775B   E81CFF1100             call    007B767C
00697760   A154B67D00             mov     eax, dword ptr [$007DB654]
00697765   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00697767   E870261200             call    007B9DDC
0069776C   8D857CF7FFFF           lea     eax, [ebp+$FFFFF77C]
00697772   8B15D0B07D00           mov     edx, [$007DB0D0]
00697778   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069777A   E84515D8FF             call    00418CC4
0069777F   8D8D7CF7FFFF           lea     ecx, [ebp+$FFFFF77C]
00697785   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodFunc'
|
00697787   BA3C806900             mov     edx, $0069803C

* Reference to : tArrayTable._PROC_007B767C()
|
0069778C   E8EBFE1100             call    007B767C
00697791   DB6DA0                 fld     tbyte ptr [ebp-$60]
00697794   8D856CF7FFFF           lea     eax, [ebp+$FFFFF76C]

* Reference to: Variants.@VarFromReal;
|
0069779A   E8E914D8FF             call    00418C88
0069779F   8D8D6CF7FFFF           lea     ecx, [ebp+$FFFFF76C]
006977A5   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrDesc'
|
006977A7   BA80826900             mov     edx, $00698280

* Reference to : tArrayTable._PROC_007B767C()
|
006977AC   E8CBFE1100             call    007B767C
006977B1   A12CA27D00             mov     eax, dword ptr [$007DA22C]
006977B6   DB28                   fld     tbyte ptr [eax]
006977B8   DB6DA0                 fld     tbyte ptr [ebp-$60]
006977BB   DEC1                   faddp   st(1), st(0)
006977BD   DB6DD8                 fld     tbyte ptr [ebp-$28]
006977C0   DEE9                   fsubp   st(1), st(0)
006977C2   8D855CF7FFFF           lea     eax, [ebp+$FFFFF75C]

* Reference to: Variants.@VarFromReal;
|
006977C8   E8BB14D8FF             call    00418C88
006977CD   8D8D5CF7FFFF           lea     ecx, [ebp+$FFFFF75C]
006977D3   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrMerc'
|
006977D5   BA40856900             mov     edx, $00698540

* Reference to : tArrayTable._PROC_007B767C()
|
006977DA   E89DFE1100             call    007B767C
006977DF   A12CA27D00             mov     eax, dword ptr [$007DA22C]
006977E4   DB28                   fld     tbyte ptr [eax]
006977E6   DB6DA0                 fld     tbyte ptr [ebp-$60]
006977E9   DEC1                   faddp   st(1), st(0)
006977EB   DB6DD8                 fld     tbyte ptr [ebp-$28]
006977EE   DEE9                   fsubp   st(1), st(0)
006977F0   8D854CF7FFFF           lea     eax, [ebp+$FFFFF74C]

* Reference to: Variants.@VarFromReal;
|
006977F6   E88D14D8FF             call    00418C88
006977FB   8D8D4CF7FFFF           lea     ecx, [ebp+$FFFFF74C]
00697801   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'BaseCalculo'
|
00697803   BA50856900             mov     edx, $00698550

* Reference to : tArrayTable._PROC_007B767C()
|
00697808   E86FFE1100             call    007B767C
0069780D   DB6DD8                 fld     tbyte ptr [ebp-$28]
00697810   8D853CF7FFFF           lea     eax, [ebp+$FFFFF73C]

* Reference to: Variants.@VarFromReal;
|
00697816   E86D14D8FF             call    00418C88
0069781B   8D8D3CF7FFFF           lea     ecx, [ebp+$FFFFF73C]
00697821   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrAcresc'
|
00697823   BA04836900             mov     edx, $00698304

* Reference to : tArrayTable._PROC_007B767C()
|
00697828   E84FFE1100             call    007B767C
0069782D   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0069782F   E8A8251200             call    007B9DDC
00697834   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00697839   8B00                   mov     eax, [eax]
0069783B   8B802C090000           mov     eax, [eax+$092C]
00697841   8B10                   mov     edx, [eax]
00697843   FF5250                 call    dword ptr [edx+$50]
00697846   83C4F8                 add     esp, -$08
00697849   DD1C24                 fstp    qword ptr [esp]
0069784C   9B                     wait
0069784D   8D9524F7FFFF           lea     edx, [ebp+$FFFFF724]

* Possible String Reference to: 'HH:MM'
|
00697853   B864856900             mov     eax, $00698564

|
00697858   E87B70D7FF             call    0040E8D8
0069785D   FFB524F7FFFF           push    dword ptr [ebp+$FFFFF724]

* Possible String Reference to: ' - '
|
00697863   6874856900             push    $00698574
00697868   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0069786D   8B00                   mov     eax, [eax]
0069786F   8B8030090000           mov     eax, [eax+$0930]
00697875   8B10                   mov     edx, [eax]
00697877   FF5250                 call    dword ptr [edx+$50]
0069787A   83C4F8                 add     esp, -$08
0069787D   DD1C24                 fstp    qword ptr [esp]
00697880   9B                     wait
00697881   8D9520F7FFFF           lea     edx, [ebp+$FFFFF720]

* Possible String Reference to: 'HH:MM'
|
00697887   B864856900             mov     eax, $00698564

|
0069788C   E84770D7FF             call    0040E8D8
00697891   FFB520F7FFFF           push    dword ptr [ebp+$FFFFF720]
00697897   8D8528F7FFFF           lea     eax, [ebp+$FFFFF728]
0069789D   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006978A2   E875DFD6FF             call    0040581C
006978A7   8B9528F7FFFF           mov     edx, [ebp+$FFFFF728]
006978AD   8D852CF7FFFF           lea     eax, [ebp+$FFFFF72C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006978B3   E80C14D8FF             call    00418CC4
006978B8   8D8D2CF7FFFF           lea     ecx, [ebp+$FFFFF72C]
006978BE   A1CCB37D00             mov     eax, dword ptr [$007DB3CC]
006978C3   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Obs'
|
006978C5   BA80856900             mov     edx, $00698580

* Reference to : tArrayTable._PROC_007B767C()
|
006978CA   E8ADFD1100             call    007B767C
006978CF   A1CCB37D00             mov     eax, dword ptr [$007DB3CC]
006978D4   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006978D6   E801251200             call    007B9DDC
006978DB   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006978E0   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006978E2   E879E4E1FF             call    004B5D60
006978E7   33D2                   xor     edx, edx
006978E9   A084856900             mov     al, byte ptr [$00698584]

|
006978EE   E8A57DFAFF             call    0063F698
006978F3   8845F7                 mov     [ebp-$09], al
006978F6   EB0A                   jmp     00697902

* Possible String Reference to: 'Cliente n„o localizado!'
|
006978F8   B890856900             mov     eax, $00698590

* Reference to: Dialogs.ShowMessage(AnsiString);
|
006978FD   E822C3DAFF             call    00443C24
00697902   33C0                   xor     eax, eax
00697904   5A                     pop     edx
00697905   59                     pop     ecx
00697906   59                     pop     ecx
00697907   648910                 mov     fs:[eax], edx
0069790A   EB1A                   jmp     00697926

* Reference to: System.@HandleOnException;
|
0069790C   E99FD2D6FF             jmp     00404BB0
00697911   0100                   add     [eax], eax
00697913   0000                   add     [eax], al
00697915   40                     inc     eax
00697916   95                     xchg    eax, ebp
00697917   40                     inc     eax
00697918   001D796900C6           add     [$C6006979], bl
0069791E   45                     inc     ebp
0069791F   F700E88AD5D6           test    dword ptr [eax], $D6D58AE8 
00697925   FF33                   push    dword ptr [ebx]
00697927   C05A5959               rcr     byte ptr [edx+$59], $59
0069792B   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069792E   684D796900             push    $0069794D
00697933   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00697938   8B00                   mov     eax, [eax]
0069793A   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.EnableControls(TDataSet);
|
00697940   E8572CE5FF             call    004EA59C
00697945   C3                     ret


* Reference to: System.@HandleFinally;
|
00697946   E9EDD3D6FF             jmp     00404D38
0069794B   EBE6                   jmp     00697933

****** END
|
0069794D   33C0                   xor     eax, eax
0069794F   5A                     pop     edx
00697950   59                     pop     ecx
00697951   59                     pop     ecx
00697952   648910                 mov     fs:[eax], edx

****** FINALLY
|
00697955   68BC7E6900             push    $00697EBC
0069795A   8D8520F7FFFF           lea     eax, [ebp+$FFFFF720]
00697960   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697965   E856DBD6FF             call    004054C0
0069796A   8D852CF7FFFF           lea     eax, [ebp+$FFFFF72C]

* Reference to object Variant
|
00697970   8B1524114000           mov     edx, [$00401124]
00697976   B90C000000             mov     ecx, $0000000C

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069797B   E81CE7D6FF             call    0040609C
00697980   8D85ECF7FFFF           lea     eax, [ebp+$FFFFF7EC]

* Reference to: System.@LStrClr(void;void);
|
00697986   E811DBD6FF             call    0040549C
0069798B   8D85F0F7FFFF           lea     eax, [ebp+$FFFFF7F0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697991   E8E2CBD7FF             call    00414578
00697996   8D8500F8FFFF           lea     eax, [ebp+$FFFFF800]
0069799C   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006979A1   E81ADBD6FF             call    004054C0
006979A6   8D8510F8FFFF           lea     eax, [ebp+$FFFFF810]

* Reference to object Variant
|
006979AC   8B1524114000           mov     edx, [$00401124]
006979B2   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006979B7   E8E0E6D6FF             call    0040609C
006979BC   8D8550F8FFFF           lea     eax, [ebp+$FFFFF850]

* Reference to: System.@LStrClr(void;void);
|
006979C2   E8D5DAD6FF             call    0040549C
006979C7   8D8554F8FFFF           lea     eax, [ebp+$FFFFF854]

* Reference to object Variant
|
006979CD   8B1524114000           mov     edx, [$00401124]
006979D3   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006979D8   E8BFE6D6FF             call    0040609C
006979DD   8D8584F8FFFF           lea     eax, [ebp+$FFFFF884]

* Reference to: System.@LStrClr(void;void);
|
006979E3   E8B4DAD6FF             call    0040549C
006979E8   8D8588F8FFFF           lea     eax, [ebp+$FFFFF888]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006979EE   E885CBD7FF             call    00414578
006979F3   8D8598F8FFFF           lea     eax, [ebp+$FFFFF898]
006979F9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006979FE   E8BDDAD6FF             call    004054C0
00697A03   8D85A0F8FFFF           lea     eax, [ebp+$FFFFF8A0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A09   E86ACBD7FF             call    00414578
00697A0E   8D85B0F8FFFF           lea     eax, [ebp+$FFFFF8B0]

* Reference to: System.@LStrClr(void;void);
|
00697A14   E883DAD6FF             call    0040549C
00697A19   8D85B4F8FFFF           lea     eax, [ebp+$FFFFF8B4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A1F   E854CBD7FF             call    00414578
00697A24   8D85C4F8FFFF           lea     eax, [ebp+$FFFFF8C4]
00697A2A   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697A2F   E88CDAD6FF             call    004054C0
00697A34   8D85D4F8FFFF           lea     eax, [ebp+$FFFFF8D4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A3A   E839CBD7FF             call    00414578
00697A3F   8D85E4F8FFFF           lea     eax, [ebp+$FFFFF8E4]
00697A45   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697A4A   E871DAD6FF             call    004054C0
00697A4F   8D85ECF8FFFF           lea     eax, [ebp+$FFFFF8EC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A55   E81ECBD7FF             call    00414578
00697A5A   8D85FCF8FFFF           lea     eax, [ebp+$FFFFF8FC]

* Reference to: System.@LStrClr(void;void);
|
00697A60   E837DAD6FF             call    0040549C
00697A65   8D8500F9FFFF           lea     eax, [ebp+$FFFFF900]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A6B   E808CBD7FF             call    00414578
00697A70   8D8510F9FFFF           lea     eax, [ebp+$FFFFF910]

* Reference to: System.@LStrClr(void;void);
|
00697A76   E821DAD6FF             call    0040549C
00697A7B   8D8514F9FFFF           lea     eax, [ebp+$FFFFF914]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A81   E8F2CAD7FF             call    00414578
00697A86   8D8524F9FFFF           lea     eax, [ebp+$FFFFF924]

* Reference to: System.@LStrClr(void;void);
|
00697A8C   E80BDAD6FF             call    0040549C
00697A91   8D8528F9FFFF           lea     eax, [ebp+$FFFFF928]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A97   E8DCCAD7FF             call    00414578
00697A9C   8D8538F9FFFF           lea     eax, [ebp+$FFFFF938]

* Reference to: System.@LStrClr(void;void);
|
00697AA2   E8F5D9D6FF             call    0040549C
00697AA7   8D853CF9FFFF           lea     eax, [ebp+$FFFFF93C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697AAD   E8C6CAD7FF             call    00414578
00697AB2   8D854CF9FFFF           lea     eax, [ebp+$FFFFF94C]

* Reference to: System.@LStrClr(void;void);
|
00697AB8   E8DFD9D6FF             call    0040549C
00697ABD   8D8550F9FFFF           lea     eax, [ebp+$FFFFF950]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697AC3   E8B0CAD7FF             call    00414578
00697AC8   8D8560F9FFFF           lea     eax, [ebp+$FFFFF960]

* Reference to: System.@LStrClr(void;void);
|
00697ACE   E8C9D9D6FF             call    0040549C
00697AD3   8D8564F9FFFF           lea     eax, [ebp+$FFFFF964]

* Reference to object Variant
|
00697AD9   8B1524114000           mov     edx, [$00401124]
00697ADF   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697AE4   E8B3E5D6FF             call    0040609C
00697AE9   8D8584F9FFFF           lea     eax, [ebp+$FFFFF984]

* Reference to: System.@LStrClr(void;void);
|
00697AEF   E8A8D9D6FF             call    0040549C
00697AF4   8D8588F9FFFF           lea     eax, [ebp+$FFFFF988]

* Reference to object Variant
|
00697AFA   8B1524114000           mov     edx, [$00401124]
00697B00   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697B05   E892E5D6FF             call    0040609C
00697B0A   8D85A8F9FFFF           lea     eax, [ebp+$FFFFF9A8]

* Reference to: System.@LStrClr(void;void);
|
00697B10   E887D9D6FF             call    0040549C
00697B15   8D85ACF9FFFF           lea     eax, [ebp+$FFFFF9AC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B1B   E858CAD7FF             call    00414578
00697B20   8D85BCF9FFFF           lea     eax, [ebp+$FFFFF9BC]
00697B26   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697B2B   E890D9D6FF             call    004054C0
00697B30   8D85C4F9FFFF           lea     eax, [ebp+$FFFFF9C4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B36   E83DCAD7FF             call    00414578
00697B3B   8D85D4F9FFFF           lea     eax, [ebp+$FFFFF9D4]
00697B41   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697B46   E875D9D6FF             call    004054C0
00697B4B   8D85E4F9FFFF           lea     eax, [ebp+$FFFFF9E4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B51   E822CAD7FF             call    00414578
00697B56   8D85F4F9FFFF           lea     eax, [ebp+$FFFFF9F4]

* Reference to: System.@LStrClr(void;void);
|
00697B5C   E83BD9D6FF             call    0040549C
00697B61   8D85F8F9FFFF           lea     eax, [ebp+$FFFFF9F8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B67   E80CCAD7FF             call    00414578
00697B6C   8D8508FAFFFF           lea     eax, [ebp+$FFFFFA08]

* Reference to: System.@LStrClr(void;void);
|
00697B72   E825D9D6FF             call    0040549C
00697B77   8D850CFAFFFF           lea     eax, [ebp+$FFFFFA0C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B7D   E8F6C9D7FF             call    00414578
00697B82   8D851CFAFFFF           lea     eax, [ebp+$FFFFFA1C]
00697B88   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697B8D   E82ED9D6FF             call    004054C0
00697B92   8D8524FAFFFF           lea     eax, [ebp+$FFFFFA24]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B98   E8DBC9D7FF             call    00414578
00697B9D   8D8534FAFFFF           lea     eax, [ebp+$FFFFFA34]
00697BA3   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697BA8   E813D9D6FF             call    004054C0
00697BAD   8D853CFAFFFF           lea     eax, [ebp+$FFFFFA3C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697BB3   E8C0C9D7FF             call    00414578
00697BB8   8D854CFAFFFF           lea     eax, [ebp+$FFFFFA4C]

* Reference to: System.@LStrClr(void;void);
|
00697BBE   E8D9D8D6FF             call    0040549C
00697BC3   8D8550FAFFFF           lea     eax, [ebp+$FFFFFA50]

* Reference to object Variant
|
00697BC9   8B1524114000           mov     edx, [$00401124]
00697BCF   B905000000             mov     ecx, $00000005

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697BD4   E8C3E4D6FF             call    0040609C
00697BD9   8D85A0FAFFFF           lea     eax, [ebp+$FFFFFAA0]

* Reference to: System.@LStrClr(void;void);
|
00697BDF   E8B8D8D6FF             call    0040549C
00697BE4   8D85A4FAFFFF           lea     eax, [ebp+$FFFFFAA4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697BEA   E889C9D7FF             call    00414578
00697BEF   8D85B4FAFFFF           lea     eax, [ebp+$FFFFFAB4]

* Reference to: System.@LStrClr(void;void);
|
00697BF5   E8A2D8D6FF             call    0040549C
00697BFA   8D85B8FAFFFF           lea     eax, [ebp+$FFFFFAB8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697C00   E873C9D7FF             call    00414578
00697C05   8D85C8FAFFFF           lea     eax, [ebp+$FFFFFAC8]
00697C0B   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697C10   E8ABD8D6FF             call    004054C0
00697C15   8D85D0FAFFFF           lea     eax, [ebp+$FFFFFAD0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697C1B   E858C9D7FF             call    00414578
00697C20   8D85E0FAFFFF           lea     eax, [ebp+$FFFFFAE0]
00697C26   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697C2B   E890D8D6FF             call    004054C0
00697C30   8D85FCFAFFFF           lea     eax, [ebp+$FFFFFAFC]
00697C36   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697C3B   E880D8D6FF             call    004054C0
00697C40   8D85F8FAFFFF           lea     eax, [ebp+$FFFFFAF8]

* Reference to: System.@LStrClr(void;void);
|
00697C46   E851D8D6FF             call    0040549C
00697C4B   8D850CFBFFFF           lea     eax, [ebp+$FFFFFB0C]
00697C51   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697C56   E865D8D6FF             call    004054C0
00697C5B   8D8538FBFFFF           lea     eax, [ebp+$FFFFFB38]

* Reference to object Variant
|
00697C61   8B1524114000           mov     edx, [$00401124]
00697C67   B908000000             mov     ecx, $00000008

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697C6C   E82BE4D6FF             call    0040609C
00697C71   8D85B8FBFFFF           lea     eax, [ebp+$FFFFFBB8]

* Reference to: System.@LStrClr(void;void);
|
00697C77   E820D8D6FF             call    0040549C
00697C7C   8D85BCFBFFFF           lea     eax, [ebp+$FFFFFBBC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697C82   E8F1C8D7FF             call    00414578
00697C87   8D85CCFBFFFF           lea     eax, [ebp+$FFFFFBCC]

* Reference to: System.@LStrClr(void;void);
|
00697C8D   E80AD8D6FF             call    0040549C
00697C92   8D85D0FBFFFF           lea     eax, [ebp+$FFFFFBD0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697C98   E8DBC8D7FF             call    00414578
00697C9D   8D85E0FBFFFF           lea     eax, [ebp+$FFFFFBE0]

* Reference to: System.@LStrClr(void;void);
|
00697CA3   E8F4D7D6FF             call    0040549C
00697CA8   8D85E4FBFFFF           lea     eax, [ebp+$FFFFFBE4]

* Reference to object Variant
|
00697CAE   8B1524114000           mov     edx, [$00401124]
00697CB4   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697CB9   E8DEE3D6FF             call    0040609C
00697CBE   8D8514FCFFFF           lea     eax, [ebp+$FFFFFC14]

* Reference to: System.@LStrClr(void;void);
|
00697CC4   E8D3D7D6FF             call    0040549C
00697CC9   8D8518FCFFFF           lea     eax, [ebp+$FFFFFC18]

* Reference to object Variant
|
00697CCF   8B1524114000           mov     edx, [$00401124]
00697CD5   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697CDA   E8BDE3D6FF             call    0040609C
00697CDF   8D8538FCFFFF           lea     eax, [ebp+$FFFFFC38]

* Reference to: System.@LStrClr(void;void);
|
00697CE5   E8B2D7D6FF             call    0040549C
00697CEA   8D853CFCFFFF           lea     eax, [ebp+$FFFFFC3C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697CF0   E883C8D7FF             call    00414578
00697CF5   8D854CFCFFFF           lea     eax, [ebp+$FFFFFC4C]

* Reference to: System.@LStrClr(void;void);
|
00697CFB   E89CD7D6FF             call    0040549C
00697D00   8D8550FCFFFF           lea     eax, [ebp+$FFFFFC50]

* Reference to object Variant
|
00697D06   8B1524114000           mov     edx, [$00401124]
00697D0C   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697D11   E886E3D6FF             call    0040609C
00697D16   8D8580FCFFFF           lea     eax, [ebp+$FFFFFC80]

* Reference to: System.@LStrClr(void;void);
|
00697D1C   E87BD7D6FF             call    0040549C
00697D21   8D8584FCFFFF           lea     eax, [ebp+$FFFFFC84]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697D27   E84CC8D7FF             call    00414578
00697D2C   8D8594FCFFFF           lea     eax, [ebp+$FFFFFC94]

* Reference to: System.@LStrClr(void;void);
|
00697D32   E865D7D6FF             call    0040549C
00697D37   8D8598FCFFFF           lea     eax, [ebp+$FFFFFC98]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697D3D   E836C8D7FF             call    00414578
00697D42   8D85A8FCFFFF           lea     eax, [ebp+$FFFFFCA8]

* Reference to: System.@LStrClr(void;void);
|
00697D48   E84FD7D6FF             call    0040549C
00697D4D   8D85ACFCFFFF           lea     eax, [ebp+$FFFFFCAC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697D53   E820C8D7FF             call    00414578
00697D58   8D85BCFCFFFF           lea     eax, [ebp+$FFFFFCBC]
00697D5E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697D63   E858D7D6FF             call    004054C0
00697D68   8D85C4FCFFFF           lea     eax, [ebp+$FFFFFCC4]

* Reference to object Variant
|
00697D6E   8B1524114000           mov     edx, [$00401124]
00697D74   B912000000             mov     ecx, $00000012

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697D79   E81EE3D6FF             call    0040609C
00697D7E   8D85E4FDFFFF           lea     eax, [ebp+$FFFFFDE4]

* Reference to: System.@LStrClr(void;void);
|
00697D84   E813D7D6FF             call    0040549C
00697D89   8D85E8FDFFFF           lea     eax, [ebp+$FFFFFDE8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697D8F   E8E4C7D7FF             call    00414578
00697D94   8D85F8FDFFFF           lea     eax, [ebp+$FFFFFDF8]
00697D9A   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697D9F   E81CD7D6FF             call    004054C0
00697DA4   8D8500FEFFFF           lea     eax, [ebp+$FFFFFE00]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697DAA   E8C9C7D7FF             call    00414578
00697DAF   8D8510FEFFFF           lea     eax, [ebp+$FFFFFE10]
00697DB5   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697DBA   E801D7D6FF             call    004054C0
00697DBF   8D8518FEFFFF           lea     eax, [ebp+$FFFFFE18]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697DC5   E8AEC7D7FF             call    00414578
00697DCA   8D8528FEFFFF           lea     eax, [ebp+$FFFFFE28]

* Reference to: System.@LStrClr(void;void);
|
00697DD0   E8C7D6D6FF             call    0040549C
00697DD5   8D852CFEFFFF           lea     eax, [ebp+$FFFFFE2C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697DDB   E898C7D7FF             call    00414578
00697DE0   8D853CFEFFFF           lea     eax, [ebp+$FFFFFE3C]

* Reference to: System.@LStrClr(void;void);
|
00697DE6   E8B1D6D6FF             call    0040549C
00697DEB   8D8540FEFFFF           lea     eax, [ebp+$FFFFFE40]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697DF1   E882C7D7FF             call    00414578
00697DF6   8D8550FEFFFF           lea     eax, [ebp+$FFFFFE50]
00697DFC   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697E01   E8BAD6D6FF             call    004054C0
00697E06   8D8558FEFFFF           lea     eax, [ebp+$FFFFFE58]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697E0C   E867C7D7FF             call    00414578
00697E11   8D8568FEFFFF           lea     eax, [ebp+$FFFFFE68]
00697E17   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697E1C   E89FD6D6FF             call    004054C0
00697E21   8D8570FEFFFF           lea     eax, [ebp+$FFFFFE70]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697E27   E84CC7D7FF             call    00414578
00697E2C   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]

* Reference to: System.@LStrClr(void;void);
|
00697E32   E865D6D6FF             call    0040549C
00697E37   8D8584FEFFFF           lea     eax, [ebp+$FFFFFE84]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697E3D   E836C7D7FF             call    00414578
00697E42   8D8598FEFFFF           lea     eax, [ebp+$FFFFFE98]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697E48   E82BC7D7FF             call    00414578
00697E4D   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to: System.@LStrClr(void;void);
|
00697E53   E844D6D6FF             call    0040549C
00697E58   8D85ACFEFFFF           lea     eax, [ebp+$FFFFFEAC]

* Reference to object Variant
|
00697E5E   8B1524114000           mov     edx, [$00401124]
00697E64   B908000000             mov     ecx, $00000008

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697E69   E82EE2D6FF             call    0040609C
00697E6E   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: System.@LStrClr(void;void);
|
00697E74   E823D6D6FF             call    0040549C
00697E79   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]

* Reference to object Variant
|
00697E7F   8B1524114000           mov     edx, [$00401124]
00697E85   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697E8A   E80DE2D6FF             call    0040609C
00697E8F   8D45F8                 lea     eax, [ebp-$08]
00697E92   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697E97   E824D6D6FF             call    004054C0
00697E9C   8D4514                 lea     eax, [ebp+$14]

* Reference to: System.@LStrClr(void;void);
|
00697E9F   E8F8D5D6FF             call    0040549C
00697EA4   8D450C                 lea     eax, [ebp+$0C]
00697EA7   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697EAC   E80FD6D6FF             call    004054C0
00697EB1   C3                     ret


* Reference to: System.@HandleFinally;
|
00697EB2   E981CED6FF             jmp     00404D38
00697EB7   E99EFAFFFF             jmp     0069795A

****** END
|
00697EBC   8A45F7                 mov     al, byte ptr [ebp-$09]
00697EBF   5F                     pop     edi
00697EC0   5E                     pop     esi
00697EC1   5B                     pop     ebx
00697EC2   8BE5                   mov     esp, ebp
00697EC4   5D                     pop     ebp
00697EC5   C21000                 ret     $0010

*)
end;

procedure TfrmFecha._PROC_00697946(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00697946   E9EDD3D6FF             jmp     00404D38

|
0069794B   EBE6                   jmp     00697933
0069794D   33C0                   xor     eax, eax
0069794F   5A                     pop     edx
00697950   59                     pop     ecx
00697951   59                     pop     ecx
00697952   648910                 mov     fs:[eax], edx

****** FINALLY
|
00697955   68BC7E6900             push    $00697EBC
0069795A   8D8520F7FFFF           lea     eax, [ebp+$FFFFF720]
00697960   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697965   E856DBD6FF             call    004054C0
0069796A   8D852CF7FFFF           lea     eax, [ebp+$FFFFF72C]

* Reference to object Variant
|
00697970   8B1524114000           mov     edx, [$00401124]
00697976   B90C000000             mov     ecx, $0000000C

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069797B   E81CE7D6FF             call    0040609C
00697980   8D85ECF7FFFF           lea     eax, [ebp+$FFFFF7EC]

* Reference to: System.@LStrClr(void;void);
|
00697986   E811DBD6FF             call    0040549C
0069798B   8D85F0F7FFFF           lea     eax, [ebp+$FFFFF7F0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697991   E8E2CBD7FF             call    00414578
00697996   8D8500F8FFFF           lea     eax, [ebp+$FFFFF800]
0069799C   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006979A1   E81ADBD6FF             call    004054C0
006979A6   8D8510F8FFFF           lea     eax, [ebp+$FFFFF810]

* Reference to object Variant
|
006979AC   8B1524114000           mov     edx, [$00401124]
006979B2   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006979B7   E8E0E6D6FF             call    0040609C
006979BC   8D8550F8FFFF           lea     eax, [ebp+$FFFFF850]

* Reference to: System.@LStrClr(void;void);
|
006979C2   E8D5DAD6FF             call    0040549C
006979C7   8D8554F8FFFF           lea     eax, [ebp+$FFFFF854]

* Reference to object Variant
|
006979CD   8B1524114000           mov     edx, [$00401124]
006979D3   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006979D8   E8BFE6D6FF             call    0040609C
006979DD   8D8584F8FFFF           lea     eax, [ebp+$FFFFF884]

* Reference to: System.@LStrClr(void;void);
|
006979E3   E8B4DAD6FF             call    0040549C
006979E8   8D8588F8FFFF           lea     eax, [ebp+$FFFFF888]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006979EE   E885CBD7FF             call    00414578
006979F3   8D8598F8FFFF           lea     eax, [ebp+$FFFFF898]
006979F9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006979FE   E8BDDAD6FF             call    004054C0
00697A03   8D85A0F8FFFF           lea     eax, [ebp+$FFFFF8A0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A09   E86ACBD7FF             call    00414578
00697A0E   8D85B0F8FFFF           lea     eax, [ebp+$FFFFF8B0]

* Reference to: System.@LStrClr(void;void);
|
00697A14   E883DAD6FF             call    0040549C
00697A19   8D85B4F8FFFF           lea     eax, [ebp+$FFFFF8B4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A1F   E854CBD7FF             call    00414578
00697A24   8D85C4F8FFFF           lea     eax, [ebp+$FFFFF8C4]
00697A2A   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697A2F   E88CDAD6FF             call    004054C0
00697A34   8D85D4F8FFFF           lea     eax, [ebp+$FFFFF8D4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A3A   E839CBD7FF             call    00414578
00697A3F   8D85E4F8FFFF           lea     eax, [ebp+$FFFFF8E4]
00697A45   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697A4A   E871DAD6FF             call    004054C0
00697A4F   8D85ECF8FFFF           lea     eax, [ebp+$FFFFF8EC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A55   E81ECBD7FF             call    00414578
00697A5A   8D85FCF8FFFF           lea     eax, [ebp+$FFFFF8FC]

* Reference to: System.@LStrClr(void;void);
|
00697A60   E837DAD6FF             call    0040549C
00697A65   8D8500F9FFFF           lea     eax, [ebp+$FFFFF900]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A6B   E808CBD7FF             call    00414578
00697A70   8D8510F9FFFF           lea     eax, [ebp+$FFFFF910]

* Reference to: System.@LStrClr(void;void);
|
00697A76   E821DAD6FF             call    0040549C
00697A7B   8D8514F9FFFF           lea     eax, [ebp+$FFFFF914]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A81   E8F2CAD7FF             call    00414578
00697A86   8D8524F9FFFF           lea     eax, [ebp+$FFFFF924]

* Reference to: System.@LStrClr(void;void);
|
00697A8C   E80BDAD6FF             call    0040549C
00697A91   8D8528F9FFFF           lea     eax, [ebp+$FFFFF928]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697A97   E8DCCAD7FF             call    00414578
00697A9C   8D8538F9FFFF           lea     eax, [ebp+$FFFFF938]

* Reference to: System.@LStrClr(void;void);
|
00697AA2   E8F5D9D6FF             call    0040549C
00697AA7   8D853CF9FFFF           lea     eax, [ebp+$FFFFF93C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697AAD   E8C6CAD7FF             call    00414578
00697AB2   8D854CF9FFFF           lea     eax, [ebp+$FFFFF94C]

* Reference to: System.@LStrClr(void;void);
|
00697AB8   E8DFD9D6FF             call    0040549C
00697ABD   8D8550F9FFFF           lea     eax, [ebp+$FFFFF950]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697AC3   E8B0CAD7FF             call    00414578
00697AC8   8D8560F9FFFF           lea     eax, [ebp+$FFFFF960]

* Reference to: System.@LStrClr(void;void);
|
00697ACE   E8C9D9D6FF             call    0040549C
00697AD3   8D8564F9FFFF           lea     eax, [ebp+$FFFFF964]

* Reference to object Variant
|
00697AD9   8B1524114000           mov     edx, [$00401124]
00697ADF   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697AE4   E8B3E5D6FF             call    0040609C
00697AE9   8D8584F9FFFF           lea     eax, [ebp+$FFFFF984]

* Reference to: System.@LStrClr(void;void);
|
00697AEF   E8A8D9D6FF             call    0040549C
00697AF4   8D8588F9FFFF           lea     eax, [ebp+$FFFFF988]

* Reference to object Variant
|
00697AFA   8B1524114000           mov     edx, [$00401124]
00697B00   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697B05   E892E5D6FF             call    0040609C
00697B0A   8D85A8F9FFFF           lea     eax, [ebp+$FFFFF9A8]

* Reference to: System.@LStrClr(void;void);
|
00697B10   E887D9D6FF             call    0040549C
00697B15   8D85ACF9FFFF           lea     eax, [ebp+$FFFFF9AC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B1B   E858CAD7FF             call    00414578
00697B20   8D85BCF9FFFF           lea     eax, [ebp+$FFFFF9BC]
00697B26   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697B2B   E890D9D6FF             call    004054C0
00697B30   8D85C4F9FFFF           lea     eax, [ebp+$FFFFF9C4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B36   E83DCAD7FF             call    00414578
00697B3B   8D85D4F9FFFF           lea     eax, [ebp+$FFFFF9D4]
00697B41   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697B46   E875D9D6FF             call    004054C0
00697B4B   8D85E4F9FFFF           lea     eax, [ebp+$FFFFF9E4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B51   E822CAD7FF             call    00414578
00697B56   8D85F4F9FFFF           lea     eax, [ebp+$FFFFF9F4]

* Reference to: System.@LStrClr(void;void);
|
00697B5C   E83BD9D6FF             call    0040549C
00697B61   8D85F8F9FFFF           lea     eax, [ebp+$FFFFF9F8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B67   E80CCAD7FF             call    00414578
00697B6C   8D8508FAFFFF           lea     eax, [ebp+$FFFFFA08]

* Reference to: System.@LStrClr(void;void);
|
00697B72   E825D9D6FF             call    0040549C
00697B77   8D850CFAFFFF           lea     eax, [ebp+$FFFFFA0C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B7D   E8F6C9D7FF             call    00414578
00697B82   8D851CFAFFFF           lea     eax, [ebp+$FFFFFA1C]
00697B88   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697B8D   E82ED9D6FF             call    004054C0
00697B92   8D8524FAFFFF           lea     eax, [ebp+$FFFFFA24]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697B98   E8DBC9D7FF             call    00414578
00697B9D   8D8534FAFFFF           lea     eax, [ebp+$FFFFFA34]
00697BA3   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697BA8   E813D9D6FF             call    004054C0
00697BAD   8D853CFAFFFF           lea     eax, [ebp+$FFFFFA3C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697BB3   E8C0C9D7FF             call    00414578
00697BB8   8D854CFAFFFF           lea     eax, [ebp+$FFFFFA4C]

* Reference to: System.@LStrClr(void;void);
|
00697BBE   E8D9D8D6FF             call    0040549C
00697BC3   8D8550FAFFFF           lea     eax, [ebp+$FFFFFA50]

* Reference to object Variant
|
00697BC9   8B1524114000           mov     edx, [$00401124]
00697BCF   B905000000             mov     ecx, $00000005

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697BD4   E8C3E4D6FF             call    0040609C
00697BD9   8D85A0FAFFFF           lea     eax, [ebp+$FFFFFAA0]

* Reference to: System.@LStrClr(void;void);
|
00697BDF   E8B8D8D6FF             call    0040549C
00697BE4   8D85A4FAFFFF           lea     eax, [ebp+$FFFFFAA4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697BEA   E889C9D7FF             call    00414578
00697BEF   8D85B4FAFFFF           lea     eax, [ebp+$FFFFFAB4]

* Reference to: System.@LStrClr(void;void);
|
00697BF5   E8A2D8D6FF             call    0040549C
00697BFA   8D85B8FAFFFF           lea     eax, [ebp+$FFFFFAB8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697C00   E873C9D7FF             call    00414578
00697C05   8D85C8FAFFFF           lea     eax, [ebp+$FFFFFAC8]
00697C0B   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697C10   E8ABD8D6FF             call    004054C0
00697C15   8D85D0FAFFFF           lea     eax, [ebp+$FFFFFAD0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697C1B   E858C9D7FF             call    00414578
00697C20   8D85E0FAFFFF           lea     eax, [ebp+$FFFFFAE0]
00697C26   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697C2B   E890D8D6FF             call    004054C0
00697C30   8D85FCFAFFFF           lea     eax, [ebp+$FFFFFAFC]
00697C36   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697C3B   E880D8D6FF             call    004054C0
00697C40   8D85F8FAFFFF           lea     eax, [ebp+$FFFFFAF8]

* Reference to: System.@LStrClr(void;void);
|
00697C46   E851D8D6FF             call    0040549C
00697C4B   8D850CFBFFFF           lea     eax, [ebp+$FFFFFB0C]
00697C51   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697C56   E865D8D6FF             call    004054C0
00697C5B   8D8538FBFFFF           lea     eax, [ebp+$FFFFFB38]

* Reference to object Variant
|
00697C61   8B1524114000           mov     edx, [$00401124]
00697C67   B908000000             mov     ecx, $00000008

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697C6C   E82BE4D6FF             call    0040609C
00697C71   8D85B8FBFFFF           lea     eax, [ebp+$FFFFFBB8]

* Reference to: System.@LStrClr(void;void);
|
00697C77   E820D8D6FF             call    0040549C
00697C7C   8D85BCFBFFFF           lea     eax, [ebp+$FFFFFBBC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697C82   E8F1C8D7FF             call    00414578
00697C87   8D85CCFBFFFF           lea     eax, [ebp+$FFFFFBCC]

* Reference to: System.@LStrClr(void;void);
|
00697C8D   E80AD8D6FF             call    0040549C
00697C92   8D85D0FBFFFF           lea     eax, [ebp+$FFFFFBD0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697C98   E8DBC8D7FF             call    00414578
00697C9D   8D85E0FBFFFF           lea     eax, [ebp+$FFFFFBE0]

* Reference to: System.@LStrClr(void;void);
|
00697CA3   E8F4D7D6FF             call    0040549C
00697CA8   8D85E4FBFFFF           lea     eax, [ebp+$FFFFFBE4]

* Reference to object Variant
|
00697CAE   8B1524114000           mov     edx, [$00401124]
00697CB4   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697CB9   E8DEE3D6FF             call    0040609C
00697CBE   8D8514FCFFFF           lea     eax, [ebp+$FFFFFC14]

* Reference to: System.@LStrClr(void;void);
|
00697CC4   E8D3D7D6FF             call    0040549C
00697CC9   8D8518FCFFFF           lea     eax, [ebp+$FFFFFC18]

* Reference to object Variant
|
00697CCF   8B1524114000           mov     edx, [$00401124]
00697CD5   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697CDA   E8BDE3D6FF             call    0040609C
00697CDF   8D8538FCFFFF           lea     eax, [ebp+$FFFFFC38]

* Reference to: System.@LStrClr(void;void);
|
00697CE5   E8B2D7D6FF             call    0040549C
00697CEA   8D853CFCFFFF           lea     eax, [ebp+$FFFFFC3C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697CF0   E883C8D7FF             call    00414578
00697CF5   8D854CFCFFFF           lea     eax, [ebp+$FFFFFC4C]

* Reference to: System.@LStrClr(void;void);
|
00697CFB   E89CD7D6FF             call    0040549C
00697D00   8D8550FCFFFF           lea     eax, [ebp+$FFFFFC50]

* Reference to object Variant
|
00697D06   8B1524114000           mov     edx, [$00401124]
00697D0C   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697D11   E886E3D6FF             call    0040609C
00697D16   8D8580FCFFFF           lea     eax, [ebp+$FFFFFC80]

* Reference to: System.@LStrClr(void;void);
|
00697D1C   E87BD7D6FF             call    0040549C
00697D21   8D8584FCFFFF           lea     eax, [ebp+$FFFFFC84]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697D27   E84CC8D7FF             call    00414578
00697D2C   8D8594FCFFFF           lea     eax, [ebp+$FFFFFC94]

* Reference to: System.@LStrClr(void;void);
|
00697D32   E865D7D6FF             call    0040549C
00697D37   8D8598FCFFFF           lea     eax, [ebp+$FFFFFC98]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697D3D   E836C8D7FF             call    00414578
00697D42   8D85A8FCFFFF           lea     eax, [ebp+$FFFFFCA8]

* Reference to: System.@LStrClr(void;void);
|
00697D48   E84FD7D6FF             call    0040549C
00697D4D   8D85ACFCFFFF           lea     eax, [ebp+$FFFFFCAC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697D53   E820C8D7FF             call    00414578
00697D58   8D85BCFCFFFF           lea     eax, [ebp+$FFFFFCBC]
00697D5E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697D63   E858D7D6FF             call    004054C0
00697D68   8D85C4FCFFFF           lea     eax, [ebp+$FFFFFCC4]

* Reference to object Variant
|
00697D6E   8B1524114000           mov     edx, [$00401124]
00697D74   B912000000             mov     ecx, $00000012

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697D79   E81EE3D6FF             call    0040609C
00697D7E   8D85E4FDFFFF           lea     eax, [ebp+$FFFFFDE4]

* Reference to: System.@LStrClr(void;void);
|
00697D84   E813D7D6FF             call    0040549C
00697D89   8D85E8FDFFFF           lea     eax, [ebp+$FFFFFDE8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697D8F   E8E4C7D7FF             call    00414578
00697D94   8D85F8FDFFFF           lea     eax, [ebp+$FFFFFDF8]
00697D9A   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697D9F   E81CD7D6FF             call    004054C0
00697DA4   8D8500FEFFFF           lea     eax, [ebp+$FFFFFE00]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697DAA   E8C9C7D7FF             call    00414578
00697DAF   8D8510FEFFFF           lea     eax, [ebp+$FFFFFE10]
00697DB5   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697DBA   E801D7D6FF             call    004054C0
00697DBF   8D8518FEFFFF           lea     eax, [ebp+$FFFFFE18]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697DC5   E8AEC7D7FF             call    00414578
00697DCA   8D8528FEFFFF           lea     eax, [ebp+$FFFFFE28]

* Reference to: System.@LStrClr(void;void);
|
00697DD0   E8C7D6D6FF             call    0040549C
00697DD5   8D852CFEFFFF           lea     eax, [ebp+$FFFFFE2C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697DDB   E898C7D7FF             call    00414578
00697DE0   8D853CFEFFFF           lea     eax, [ebp+$FFFFFE3C]

* Reference to: System.@LStrClr(void;void);
|
00697DE6   E8B1D6D6FF             call    0040549C
00697DEB   8D8540FEFFFF           lea     eax, [ebp+$FFFFFE40]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697DF1   E882C7D7FF             call    00414578
00697DF6   8D8550FEFFFF           lea     eax, [ebp+$FFFFFE50]
00697DFC   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697E01   E8BAD6D6FF             call    004054C0
00697E06   8D8558FEFFFF           lea     eax, [ebp+$FFFFFE58]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697E0C   E867C7D7FF             call    00414578
00697E11   8D8568FEFFFF           lea     eax, [ebp+$FFFFFE68]
00697E17   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697E1C   E89FD6D6FF             call    004054C0
00697E21   8D8570FEFFFF           lea     eax, [ebp+$FFFFFE70]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697E27   E84CC7D7FF             call    00414578
00697E2C   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]

* Reference to: System.@LStrClr(void;void);
|
00697E32   E865D6D6FF             call    0040549C
00697E37   8D8584FEFFFF           lea     eax, [ebp+$FFFFFE84]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697E3D   E836C7D7FF             call    00414578
00697E42   8D8598FEFFFF           lea     eax, [ebp+$FFFFFE98]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00697E48   E82BC7D7FF             call    00414578
00697E4D   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to: System.@LStrClr(void;void);
|
00697E53   E844D6D6FF             call    0040549C
00697E58   8D85ACFEFFFF           lea     eax, [ebp+$FFFFFEAC]

* Reference to object Variant
|
00697E5E   8B1524114000           mov     edx, [$00401124]
00697E64   B908000000             mov     ecx, $00000008

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697E69   E82EE2D6FF             call    0040609C
00697E6E   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: System.@LStrClr(void;void);
|
00697E74   E823D6D6FF             call    0040549C
00697E79   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]

* Reference to object Variant
|
00697E7F   8B1524114000           mov     edx, [$00401124]
00697E85   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00697E8A   E80DE2D6FF             call    0040609C
00697E8F   8D45F8                 lea     eax, [ebp-$08]
00697E92   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697E97   E824D6D6FF             call    004054C0
00697E9C   8D4514                 lea     eax, [ebp+$14]

* Reference to: System.@LStrClr(void;void);
|
00697E9F   E8F8D5D6FF             call    0040549C
00697EA4   8D450C                 lea     eax, [ebp+$0C]
00697EA7   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00697EAC   E80FD6D6FF             call    004054C0
00697EB1   C3                     ret


* Reference to: System.@HandleFinally;
|
00697EB2   E981CED6FF             jmp     00404D38
00697EB7   E99EFAFFFF             jmp     0069795A

****** END
|
00697EBC   8A45F7                 mov     al, byte ptr [ebp-$09]
00697EBF   5F                     pop     edi
00697EC0   5E                     pop     esi
00697EC1   5B                     pop     ebx
00697EC2   8BE5                   mov     esp, ebp
00697EC4   5D                     pop     ebp
00697EC5   C21000                 ret     $0010

*)
end;

procedure TfrmFecha._PROC_006981C8(Sender : TObject);
begin
(*
006981C8   6E                     outsb
006981C9   697400FFFFFFFF07       imul    esi, [eax+eax-$01], $07FFFFFF
006981D1   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_006981D5(Sender : TObject);
begin
(*
006981D5   6E                     outsb
006981D6   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
006981DE   FFFF                   DB  $FF, $FF  //      
006981E0   07                     pop     es
006981E1   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_006981F9(Sender : TObject);
begin
(*
006981F9   6E                     outsb
006981FA   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
00698202   FFFF                   DB  $FF, $FF  //      
00698204   0A00                   or      al, byte ptr [eax]
00698206   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_00698345(Sender : TObject);
begin
(*
00698345   56                     push    esi
00698346   57                     push    edi
00698347   58                     pop     eax
00698348   59                     pop     ecx
00698349   5A                     pop     edx
0069834A   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_00698BA9(Sender : TObject);
begin
(*
00698BA9   8BEC                   mov     ebp, esp
00698BAB   B920000000             mov     ecx, $00000020
00698BB0   6A00                   push    $00
00698BB2   6A00                   push    $00
00698BB4   49                     dec     ecx
00698BB5   75F9                   jnz     00698BB0
00698BB7   53                     push    ebx
00698BB8   56                     push    esi
00698BB9   57                     push    edi
00698BBA   8BF0                   mov     esi, eax
00698BBC   33C0                   xor     eax, eax
00698BBE   55                     push    ebp

* Possible String Reference to: 'ÈÍπ÷ˇÈ#ˇˇˇäEˇ_^[ãÂ]√'
|
00698BBF   6849936900             push    $00699349

***** TRY
|
00698BC4   64FF30                 push    dword ptr fs:[eax]
00698BC7   648920                 mov     fs:[eax], esp
00698BCA   C645FF00               mov     byte ptr [ebp-$01], $00
00698BCE   33C0                   xor     eax, eax
00698BD0   55                     push    ebp
00698BD1   6862926900             push    $00699262

***** TRY
|
00698BD6   64FF30                 push    dword ptr fs:[eax]
00698BD9   648920                 mov     fs:[eax], esp
00698BDC   33C0                   xor     eax, eax
00698BDE   55                     push    ebp
00698BDF   6813926900             push    $00699213

***** TRY
|
00698BE4   64FF30                 push    dword ptr fs:[eax]
00698BE7   648920                 mov     fs:[eax], esp

* Reference to control TfrmFecha.edVlrTipo : TCurrencyEdit
|
00698BEA   8B86D8030000           mov     eax, [esi+$03D8]

* Reference to : TCurrencyEdit._PROC_00629128()
|
00698BF0   E83305F9FF             call    00629128
00698BF5   83C4F4                 add     esp, -$0C
00698BF8   DB3C24                 fstp    tbyte ptr [esp]
00698BFB   9B                     wait
00698BFC   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
00698BFF   8B862C030000           mov     eax, [esi+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00698C05   E83253E6FF             call    004FDF3C
00698C0A   8B55F4                 mov     edx, [ebp-$0C]
00698C0D   8BC6                   mov     eax, esi

* Reference to : TfrmFecha._PROC_00699764()
|
00698C0F   E8500B0000             call    00699764
00698C14   84C0                   test    al, al
00698C16   0F84ED050000           jz      00699209
00698C1C   A060936900             mov     al, byte ptr [$00699360]
00698C21   50                     push    eax
00698C22   8D55E0                 lea     edx, [ebp-$20]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
00698C25   8B862C030000           mov     eax, [esi+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00698C2B   E80C53E6FF             call    004FDF3C
00698C30   8B55E0                 mov     edx, [ebp-$20]
00698C33   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00698C36   E88900D8FF             call    00418CC4
00698C3B   8D4DE4                 lea     ecx, [ebp-$1C]
00698C3E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698C43   8B00                   mov     eax, [eax]
00698C45   8B804C010000           mov     eax, [eax+$014C]

* Possible String Reference to: 'TipoPagto'
|
00698C4B   BA6C936900             mov     edx, $0069936C
00698C50   8B18                   mov     ebx, [eax]
00698C52   FF9344020000           call    dword ptr [ebx+$0244]
00698C58   84C0                   test    al, al
00698C5A   7421                   jz      00698C7D
00698C5C   8D55DC                 lea     edx, [ebp-$24]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
00698C5F   8B862C030000           mov     eax, [esi+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00698C65   E8D252E6FF             call    004FDF3C
00698C6A   8B45DC                 mov     eax, [ebp-$24]
00698C6D   BA80936900             mov     edx, $00699380

* Reference to: System.@LStrCmp;
|
00698C72   E831CCD6FF             call    004058A8
00698C77   0F8427030000           jz      00698FA4
00698C7D   A11CAF7D00             mov     eax, dword ptr [$007DAF1C]
00698C82   FF00                   inc     dword ptr [eax]
00698C84   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698C89   8B00                   mov     eax, [eax]
00698C8B   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DB.TDataSet.Append(TDataSet);
|
00698C91   E8E628E5FF             call    004EB57C
00698C96   8B151CAF7D00           mov     edx, [$007DAF1C]
00698C9C   8B12                   mov     edx, [edx]
00698C9E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698CA3   8B00                   mov     eax, [eax]
00698CA5   8B8050010000           mov     eax, [eax+$0150]
00698CAB   8B08                   mov     ecx, [eax]
00698CAD   FF91A8000000           call    dword ptr [ecx+$00A8]
00698CB3   8D55D8                 lea     edx, [ebp-$28]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
00698CB6   8B862C030000           mov     eax, [esi+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00698CBC   E87B52E6FF             call    004FDF3C
00698CC1   8B55D8                 mov     edx, [ebp-$28]
00698CC4   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698CC9   8B00                   mov     eax, [eax]
00698CCB   8B8054010000           mov     eax, [eax+$0154]
00698CD1   8B08                   mov     ecx, [eax]
00698CD3   FF91B0000000           call    dword ptr [ecx+$00B0]
00698CD9   8D55D4                 lea     edx, [ebp-$2C]

* Reference to control TfrmFecha.edDescrTipo : TEdit
|
00698CDC   8B8628030000           mov     eax, [esi+$0328]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
00698CE2   E8E5A9DFFF             call    004936CC
00698CE7   8B55D4                 mov     edx, [ebp-$2C]
00698CEA   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698CEF   8B00                   mov     eax, [eax]
00698CF1   8B8058010000           mov     eax, [eax+$0158]
00698CF7   8B08                   mov     ecx, [eax]
00698CF9   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to control TfrmFecha.edVlrTipo : TCurrencyEdit
|
00698CFF   8B86D8030000           mov     eax, [esi+$03D8]

* Reference to : TCurrencyEdit._PROC_00629128()
|
00698D05   E81E04F9FF             call    00629128
00698D0A   83C4F8                 add     esp, -$08
00698D0D   DD1C24                 fstp    qword ptr [esp]
00698D10   9B                     wait
00698D11   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698D16   8B00                   mov     eax, [eax]
00698D18   8B805C010000           mov     eax, [eax+$015C]
00698D1E   8B10                   mov     edx, [eax]
00698D20   FF92A4000000           call    dword ptr [edx+$00A4]

* Possible String Reference to: 'TIPO'
|
00698D26   688C936900             push    $0069938C
00698D2B   8D45F8                 lea     eax, [ebp-$08]
00698D2E   50                     push    eax
00698D2F   8D55C8                 lea     edx, [ebp-$38]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
00698D32   8B862C030000           mov     eax, [esi+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00698D38   E8FF51E6FF             call    004FDF3C
00698D3D   8B45C8                 mov     eax, [ebp-$38]
00698D40   8D55CC                 lea     edx, [ebp-$34]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00698D43   E8D8AD1000             call    007A3B20
00698D48   8B4DCC                 mov     ecx, [ebp-$34]
00698D4B   8D45D0                 lea     eax, [ebp-$30]

* Possible String Reference to: 'TIPOPGTO = '
|
00698D4E   BA9C936900             mov     edx, $0069939C

* Reference to: System.@LStrCat3;
|
00698D53   E850CAD6FF             call    004057A8
00698D58   8B4DD0                 mov     ecx, [ebp-$30]

* Possible String Reference to: 'TIPOPGTO'
|
00698D5B   BAB0936900             mov     edx, $006993B0
00698D60   33C0                   xor     eax, eax

|
00698D62   E8A9051100             call    007A9310
00698D67   BA01000000             mov     edx, $00000001
00698D6C   8B45F8                 mov     eax, [ebp-$08]

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
00698D6F   E89821D7FF             call    0040AF0C
00698D74   8945C0                 mov     [ebp-$40], eax
00698D77   DB45C0                 fild    dword ptr [ebp-$40]
00698D7A   83C4F4                 add     esp, -$0C
00698D7D   DB3C24                 fstp    tbyte ptr [esp]
00698D80   9B                     wait
00698D81   8D55C4                 lea     edx, [ebp-$3C]

* Possible String Reference to: '00'
|
00698D84   B8C4936900             mov     eax, $006993C4

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
00698D89   E8AE47D7FF             call    0040D53C
00698D8E   8B55C4                 mov     edx, [ebp-$3C]
00698D91   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698D96   8B00                   mov     eax, [eax]
00698D98   8B80B8010000           mov     eax, [eax+$01B8]
00698D9E   8B08                   mov     ecx, [eax]
00698DA0   FF91B0000000           call    dword ptr [ecx+$00B0]
00698DA6   8B45F8                 mov     eax, [ebp-$08]
00698DA9   BAD0936900             mov     edx, $006993D0

* Reference to: System.@LStrCmp;
|
00698DAE   E8F5CAD6FF             call    004058A8
00698DB3   7413                   jz      00698DC8
00698DB5   8B45F8                 mov     eax, [ebp-$08]
00698DB8   BADC936900             mov     edx, $006993DC

* Reference to: System.@LStrCmp;
|
00698DBD   E8E6CAD6FF             call    004058A8
00698DC2   0F850B010000           jnz     00698ED3
00698DC8   8D55BC                 lea     edx, [ebp-$44]

* Reference to control TfrmFecha.EdCodBanco : TJvComboEdit
|
00698DCB   8B8680030000           mov     eax, [esi+$0380]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00698DD1   E86651E6FF             call    004FDF3C
00698DD6   8B45BC                 mov     eax, [ebp-$44]
00698DD9   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
00698DDB   E82C21D7FF             call    0040AF0C
00698DE0   8BD0                   mov     edx, eax
00698DE2   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698DE7   8B00                   mov     eax, [eax]
00698DE9   8B8068010000           mov     eax, [eax+$0168]
00698DEF   8B08                   mov     ecx, [eax]
00698DF1   FF91A8000000           call    dword ptr [ecx+$00A8]
00698DF7   8D55B8                 lea     edx, [ebp-$48]

* Reference to control TfrmFecha.EdAgencia : TJvValidateEdit
|
00698DFA   8B8688030000           mov     eax, [esi+$0388]
00698E00   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TJvValidateEdit.OFFS_0104
|
00698E02   FF9104010000           call    dword ptr [ecx+$0104]
00698E08   8B45B8                 mov     eax, [ebp-$48]
00698E0B   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
00698E0D   E8FA20D7FF             call    0040AF0C
00698E12   8BD0                   mov     edx, eax
00698E14   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698E19   8B00                   mov     eax, [eax]
00698E1B   8B806C010000           mov     eax, [eax+$016C]
00698E21   8B08                   mov     ecx, [eax]
00698E23   FF91A8000000           call    dword ptr [ecx+$00A8]
00698E29   8D55B4                 lea     edx, [ebp-$4C]

* Reference to control TfrmFecha.EdContaCorr : TJvValidateEdit
|
00698E2C   8B868C030000           mov     eax, [esi+$038C]
00698E32   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TJvValidateEdit.OFFS_0104
|
00698E34   FF9104010000           call    dword ptr [ecx+$0104]
00698E3A   8B55B4                 mov     edx, [ebp-$4C]
00698E3D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698E42   8B00                   mov     eax, [eax]
00698E44   8B8074010000           mov     eax, [eax+$0174]
00698E4A   8B08                   mov     ecx, [eax]
00698E4C   FF91B0000000           call    dword ptr [ecx+$00B0]
00698E52   8D55B0                 lea     edx, [ebp-$50]

* Reference to control TfrmFecha.EdNumero : TEdit
|
00698E55   8B8690030000           mov     eax, [esi+$0390]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
00698E5B   E86CA8DFFF             call    004936CC
00698E60   8B45B0                 mov     eax, [ebp-$50]
00698E63   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
00698E65   E8A220D7FF             call    0040AF0C
00698E6A   8BD0                   mov     edx, eax
00698E6C   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698E71   8B00                   mov     eax, [eax]
00698E73   8B8070010000           mov     eax, [eax+$0170]
00698E79   8B08                   mov     ecx, [eax]
00698E7B   FF91A8000000           call    dword ptr [ecx+$00A8]
00698E81   8D55AC                 lea     edx, [ebp-$54]

* Reference to control TfrmFecha.EdEmissor : TEdit
|
00698E84   8B8694030000           mov     eax, [esi+$0394]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
00698E8A   E83DA8DFFF             call    004936CC
00698E8F   8B55AC                 mov     edx, [ebp-$54]
00698E92   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698E97   8B00                   mov     eax, [eax]
00698E99   8B807C010000           mov     eax, [eax+$017C]
00698E9F   8B08                   mov     ecx, [eax]
00698EA1   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to control TfrmFecha.EdDtDataCheq : TJvDateEdit
|
00698EA7   8B8698030000           mov     eax, [esi+$0398]

|
00698EAD   E82AD6EFFF             call    005964DC
00698EB2   83C4F8                 add     esp, -$08
00698EB5   DD1C24                 fstp    qword ptr [esp]
00698EB8   9B                     wait
00698EB9   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698EBE   8B00                   mov     eax, [eax]
00698EC0   8B8078010000           mov     eax, [eax+$0178]
00698EC6   8B10                   mov     edx, [eax]
00698EC8   FF92A0000000           call    dword ptr [edx+$00A0]
00698ECE   E9BA000000             jmp     00698F8D
00698ED3   8B45F8                 mov     eax, [ebp-$08]
00698ED6   BAE8936900             mov     edx, $006993E8

* Reference to: System.@LStrCmp;
|
00698EDB   E8C8C9D6FF             call    004058A8
00698EE0   7575                   jnz     00698F57
00698EE2   8D55A8                 lea     edx, [ebp-$58]

* Reference to control TfrmFecha.EdCodCard : TJvComboEdit
|
00698EE5   8B86A4030000           mov     eax, [esi+$03A4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00698EEB   E84C50E6FF             call    004FDF3C
00698EF0   8B55A8                 mov     edx, [ebp-$58]
00698EF3   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698EF8   8B00                   mov     eax, [eax]
00698EFA   8B8080010000           mov     eax, [eax+$0180]
00698F00   8B08                   mov     ecx, [eax]
00698F02   FF91B0000000           call    dword ptr [ecx+$00B0]
00698F08   8D55A4                 lea     edx, [ebp-$5C]

* Reference to control TfrmFecha.EdAutorizacao : TEdit
|
00698F0B   8B86B0030000           mov     eax, [esi+$03B0]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
00698F11   E8B6A7DFFF             call    004936CC
00698F16   8B55A4                 mov     edx, [ebp-$5C]
00698F19   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698F1E   8B00                   mov     eax, [eax]
00698F20   8B8088010000           mov     eax, [eax+$0188]
00698F26   8B08                   mov     ecx, [eax]
00698F28   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to control TfrmFecha.EdDtVencto : TJvDateEdit
|
00698F2E   8B86B8030000           mov     eax, [esi+$03B8]

|
00698F34   E8A3D5EFFF             call    005964DC
00698F39   83C4F8                 add     esp, -$08
00698F3C   DD1C24                 fstp    qword ptr [esp]
00698F3F   9B                     wait
00698F40   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698F45   8B00                   mov     eax, [eax]
00698F47   8B8078010000           mov     eax, [eax+$0178]
00698F4D   8B10                   mov     edx, [eax]
00698F4F   FF92A0000000           call    dword ptr [edx+$00A0]
00698F55   EB36                   jmp     00698F8D
00698F57   8B45F8                 mov     eax, [ebp-$08]
00698F5A   BAF4936900             mov     edx, $006993F4

* Reference to: System.@LStrCmp;
|
00698F5F   E844C9D6FF             call    004058A8
00698F64   7527                   jnz     00698F8D

* Reference to control TfrmFecha.EdVencto : TJvDateEdit
|
00698F66   8B86BC030000           mov     eax, [esi+$03BC]

|
00698F6C   E86BD5EFFF             call    005964DC
00698F71   83C4F8                 add     esp, -$08
00698F74   DD1C24                 fstp    qword ptr [esp]
00698F77   9B                     wait
00698F78   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698F7D   8B00                   mov     eax, [eax]
00698F7F   8B8078010000           mov     eax, [eax+$0178]
00698F85   8B10                   mov     edx, [eax]
00698F87   FF92A0000000           call    dword ptr [edx+$00A0]
00698F8D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698F92   8B00                   mov     eax, [eax]
00698F94   8B804C010000           mov     eax, [eax+$014C]
00698F9A   8B10                   mov     edx, [eax]
00698F9C   FF924C020000           call    dword ptr [edx+$024C]
00698FA2   EB63                   jmp     00699007
00698FA4   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698FA9   8B00                   mov     eax, [eax]
00698FAB   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
00698FB1   E88224E5FF             call    004EB438
00698FB6   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698FBB   8B00                   mov     eax, [eax]
00698FBD   8BB85C010000           mov     edi, [eax+$015C]
00698FC3   8BC7                   mov     eax, edi
00698FC5   8B10                   mov     edx, [eax]
00698FC7   FF5254                 call    dword ptr [edx+$54]
00698FCA   DD5D9C                 fstp    qword ptr [ebp-$64]
00698FCD   9B                     wait

* Reference to control TfrmFecha.edVlrTipo : TCurrencyEdit
|
00698FCE   8B86D8030000           mov     eax, [esi+$03D8]

* Reference to : TCurrencyEdit._PROC_00629128()
|
00698FD4   E84F01F9FF             call    00629128
00698FD9   DC459C                 fadd    qword ptr [ebp-$64]
00698FDC   83C4F8                 add     esp, -$08
00698FDF   DD1C24                 fstp    qword ptr [esp]
00698FE2   9B                     wait
00698FE3   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698FE8   8BC7                   mov     eax, edi
00698FEA   8B10                   mov     edx, [eax]
00698FEC   FF92A4000000           call    dword ptr [edx+$00A4]
00698FF2   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00698FF7   8B00                   mov     eax, [eax]
00698FF9   8B804C010000           mov     eax, [eax+$014C]
00698FFF   8B10                   mov     edx, [eax]
00699001   FF924C020000           call    dword ptr [edx+$024C]
00699007   8D558C                 lea     edx, [ebp-$74]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
0069900A   8B9E3C030000           mov     ebx, [esi+$033C]
00699010   8BC3                   mov     eax, ebx

|
00699012   E8A1A1FBFF             call    006531B8
00699017   8D458C                 lea     eax, [ebp-$74]
0069901A   50                     push    eax

* Reference to control TfrmFecha.edVlrTipo : TCurrencyEdit
|
0069901B   8B86D8030000           mov     eax, [esi+$03D8]

* Reference to : TCurrencyEdit._PROC_00629128()
|
00699021   E80201F9FF             call    00629128
00699026   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]

* Reference to: Variants.@VarFromReal;
|
0069902C   E857FCD7FF             call    00418C88
00699031   8D957CFFFFFF           lea     edx, [ebp+$FFFFFF7C]
00699037   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
00699038   E86740D8FF             call    0041D0A4
0069903D   8D558C                 lea     edx, [ebp-$74]
00699040   8BC3                   mov     eax, ebx

* Reference to : TJvValidateEdit._PROC_00653290()
|
00699042   E849A2FBFF             call    00653290
00699047   8BC6                   mov     eax, esi

|
00699049   E842480000             call    0069D890
0069904E   DDD8                   fstp    st(0)
00699050   A12CA27D00             mov     eax, dword ptr [$007DA22C]
00699055   DB28                   fld     tbyte ptr [eax]
00699057   83C4F8                 add     esp, -$08
0069905A   DD1C24                 fstp    qword ptr [esp]
0069905D   9B                     wait
0069905E   B802000000             mov     eax, $00000002

|
00699063   E89C821000             call    007A1304
00699068   DD5D9C                 fstp    qword ptr [ebp-$64]
0069906B   9B                     wait
0069906C   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
00699072   8B863C030000           mov     eax, [esi+$033C]

|
00699078   E83BA1FBFF             call    006531B8
0069907D   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
00699083   E860DBD7FF             call    00416BE8
00699088   83C4F8                 add     esp, -$08
0069908B   DD1C24                 fstp    qword ptr [esp]
0069908E   9B                     wait
0069908F   B802000000             mov     eax, $00000002

|
00699094   E86B821000             call    007A1304
00699099   DC5D9C                 fcomp   qword ptr [ebp-$64]
0069909C   DFE0                   fstsw   ax
0069909E   9E                     sahf
0069909F   736B                   jnb     0069910C
006990A1   A12CA27D00             mov     eax, dword ptr [$007DA22C]
006990A6   DB28                   fld     tbyte ptr [eax]
006990A8   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]

* Reference to: Variants.@VarFromReal;
|
006990AE   E8D5FBD7FF             call    00418C88
006990B3   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
006990B9   50                     push    eax
006990BA   8D9548FFFFFF           lea     edx, [ebp+$FFFFFF48]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
006990C0   8B863C030000           mov     eax, [esi+$033C]

|
006990C6   E8EDA0FBFF             call    006531B8
006990CB   8D9548FFFFFF           lea     edx, [ebp+$FFFFFF48]
006990D1   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
006990D2   E8D93FD8FF             call    0041D0B0
006990D7   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
006990DD   E806DBD7FF             call    00416BE8
006990E2   83C4F4                 add     esp, -$0C
006990E5   DB3C24                 fstp    tbyte ptr [esp]
006990E8   9B                     wait
006990E9   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]

* Possible String Reference to: '###,###,##0.00'
|
006990EF   B800946900             mov     eax, $00699400

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006990F4   E84344D7FF             call    0040D53C
006990F9   8B9568FFFFFF           mov     edx, [ebp+$FFFFFF68]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
006990FF   8B8644030000           mov     eax, [esi+$0344]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00699105   E8F2A5DFFF             call    004936FC
0069910A   EB27                   jmp     00699133
0069910C   6A00                   push    $00
0069910E   6A00                   push    $00
00699110   6A00                   push    $00
00699112   8D9544FFFFFF           lea     edx, [ebp+$FFFFFF44]

* Possible String Reference to: '###,##0.00'
|
00699118   B818946900             mov     eax, $00699418

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069911D   E81A44D7FF             call    0040D53C
00699122   8B9544FFFFFF           mov     edx, [ebp+$FFFFFF44]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
00699128   8B8644030000           mov     eax, [esi+$0344]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069912E   E8C9A5DFFF             call    004936FC
00699133   8D9534FFFFFF           lea     edx, [ebp+$FFFFFF34]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
00699139   8B863C030000           mov     eax, [esi+$033C]

|
0069913F   E874A0FBFF             call    006531B8
00699144   8D8534FFFFFF           lea     eax, [ebp+$FFFFFF34]
0069914A   50                     push    eax
0069914B   A12CA27D00             mov     eax, dword ptr [$007DA22C]
00699150   DB28                   fld     tbyte ptr [eax]
00699152   8D8524FFFFFF           lea     eax, [ebp+$FFFFFF24]

* Reference to: Variants.@VarFromReal;
|
00699158   E82BFBD7FF             call    00418C88
0069915D   8D9524FFFFFF           lea     edx, [ebp+$FFFFFF24]
00699163   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
00699164   E8DB3FD8FF             call    0041D144
00699169   7E47                   jle     006991B2
0069916B   8D9514FFFFFF           lea     edx, [ebp+$FFFFFF14]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
00699171   8B863C030000           mov     eax, [esi+$033C]

|
00699177   E83CA0FBFF             call    006531B8
0069917C   8D8514FFFFFF           lea     eax, [ebp+$FFFFFF14]
00699182   50                     push    eax
00699183   A12CA27D00             mov     eax, dword ptr [$007DA22C]
00699188   DB28                   fld     tbyte ptr [eax]
0069918A   8D8504FFFFFF           lea     eax, [ebp+$FFFFFF04]

* Reference to: Variants.@VarFromReal;
|
00699190   E8F3FAD7FF             call    00418C88
00699195   8D9504FFFFFF           lea     edx, [ebp+$FFFFFF04]
0069919B   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069919C   E80F3FD8FF             call    0041D0B0
006991A1   8D9514FFFFFF           lea     edx, [ebp+$FFFFFF14]

* Reference to control TfrmFecha.EdTroco : TJvValidateEdit
|
006991A7   8B8650030000           mov     eax, [esi+$0350]

* Reference to : TJvValidateEdit._PROC_00653290()
|
006991AD   E8DEA0FBFF             call    00653290

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
006991B2   8B862C030000           mov     eax, [esi+$032C]
006991B8   33D2                   xor     edx, edx

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
006991BA   E8B14CE6FF             call    004FDE70

* Reference to control TfrmFecha.edDescrTipo : TEdit
|
006991BF   8B8628030000           mov     eax, [esi+$0328]
006991C5   33D2                   xor     edx, edx

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006991C7   E830A5DFFF             call    004936FC
006991CC   6A00                   push    $00
006991CE   6A00                   push    $00
006991D0   6A00                   push    $00

* Reference to control TfrmFecha.edVlrTipo : TCurrencyEdit
|
006991D2   8B86D8030000           mov     eax, [esi+$03D8]

* Reference to : TCurrencyEdit._PROC_006291C0()
|
006991D8   E8E3FFF8FF             call    006291C0

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
006991DD   8B862C030000           mov     eax, [esi+$032C]
006991E3   8B10                   mov     edx, [eax]

* Possible reference to virtual method TJvComboEdit.OFFS_00C4
|
006991E5   FF92C4000000           call    dword ptr [edx+$00C4]

* Reference to control TfrmFecha.LbDesconto : TLabel
|
006991EB   8B86E0030000           mov     eax, [esi+$03E0]
006991F1   33D2                   xor     edx, edx
006991F3   8B08                   mov     ecx, [eax]

* Reference to method TLabel.SetEnabled(Boolean)
|
006991F5   FF5164                 call    dword ptr [ecx+$64]

* Reference to control TfrmFecha.EdPrcDesc : TJvValidateEdit
|
006991F8   8B86E4030000           mov     eax, [esi+$03E4]
006991FE   33D2                   xor     edx, edx
00699200   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TJvValidateEdit.OFFS_64
|
00699202   FF5164                 call    dword ptr [ecx+$64]
00699205   C645FF01               mov     byte ptr [ebp-$01], $01
00699209   33C0                   xor     eax, eax
0069920B   5A                     pop     edx
0069920C   59                     pop     ecx
0069920D   59                     pop     ecx
0069920E   648910                 mov     fs:[eax], edx
00699211   EB41                   jmp     00699254

* Reference to: System.@HandleOnException;
|
00699213   E998B9D6FF             jmp     00404BB0
00699218   0100                   add     [eax], eax
0069921A   0000                   add     [eax], al
0069921C   40                     inc     eax
0069921D   95                     xchg    eax, ebp
0069921E   40                     inc     eax
0069921F   002492                 add     [edx+edx*4], ah
00699222   690089C36A00           imul    eax, [eax], $006AC389

* Reference to field TJvValidateEdit.OFFS_0004
|
00699228   8B4B04                 mov     ecx, [ebx+$04]
0069922B   8D8500FFFFFF           lea     eax, [ebp+$FFFFFF00]

* Possible String Reference to: 'Erro ao Inserir o item de pagamento
|                                !'
|
00699231   BA2C946900             mov     edx, $0069942C

* Reference to: System.@LStrCat3;
|
00699236   E86DC5D6FF             call    004057A8
0069923B   8B8500FFFFFF           mov     eax, [ebp+$FFFFFF00]
00699241   668B0D54946900         mov     cx, word ptr [$00699454]
00699248   B201                   mov     dl, $01

|
0069924A   E8DDA8DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069924F   E85CBCD6FF             call    00404EB0

****** END
|
00699254   33C0                   xor     eax, eax
00699256   5A                     pop     edx
00699257   59                     pop     ecx
00699258   59                     pop     ecx
00699259   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069925C   6869926900             push    $00699269
00699261   C3                     ret


* Reference to: System.@HandleFinally;
|
00699262   E9D1BAD6FF             jmp     00404D38
00699267   EBF8                   jmp     00699261

****** END
|
00699269   33C0                   xor     eax, eax
0069926B   5A                     pop     edx
0069926C   59                     pop     ecx
0069926D   59                     pop     ecx
0069926E   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
00699271   6853936900             push    $00699353
00699276   8D8500FFFFFF           lea     eax, [ebp+$FFFFFF00]

* Reference to: System.@LStrClr(void;void);
|
0069927C   E81BC2D6FF             call    0040549C
00699281   8D8504FFFFFF           lea     eax, [ebp+$FFFFFF04]

* Reference to object Variant
|
00699287   8B1524114000           mov     edx, [$00401124]
0069928D   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00699292   E805CED6FF             call    0040609C
00699297   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Reference to: System.@LStrClr(void;void);
|
0069929D   E8FAC1D6FF             call    0040549C
006992A2   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]

* Reference to object Variant
|
006992A8   8B1524114000           mov     edx, [$00401124]
006992AE   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006992B3   E8E4CDD6FF             call    0040609C
006992B8   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Reference to: System.@LStrClr(void;void);
|
006992BE   E8D9C1D6FF             call    0040549C
006992C3   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Reference to object Variant
|
006992C9   8B1524114000           mov     edx, [$00401124]
006992CF   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006992D4   E8C3CDD6FF             call    0040609C
006992D9   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: System.@LStrClr(void;void);
|
006992DC   E8BBC1D6FF             call    0040549C
006992E1   8D45A8                 lea     eax, [ebp-$58]

* Reference to: System.@LStrClr(void;void);
|
006992E4   E8B3C1D6FF             call    0040549C
006992E9   8D45AC                 lea     eax, [ebp-$54]
006992EC   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006992F1   E8CAC1D6FF             call    004054C0
006992F6   8D45BC                 lea     eax, [ebp-$44]

* Reference to: System.@LStrClr(void;void);
|
006992F9   E89EC1D6FF             call    0040549C
006992FE   8D45C4                 lea     eax, [ebp-$3C]

* Reference to: System.@LStrClr(void;void);
|
00699301   E896C1D6FF             call    0040549C
00699306   8D45C8                 lea     eax, [ebp-$38]

* Reference to: System.@LStrClr(void;void);
|
00699309   E88EC1D6FF             call    0040549C
0069930E   8D45CC                 lea     eax, [ebp-$34]
00699311   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00699316   E8A5C1D6FF             call    004054C0
0069931B   8D45D4                 lea     eax, [ebp-$2C]

* Reference to: System.@LStrClr(void;void);
|
0069931E   E879C1D6FF             call    0040549C
00699323   8D45D8                 lea     eax, [ebp-$28]
00699326   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069932B   E890C1D6FF             call    004054C0
00699330   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00699333   E840B2D7FF             call    00414578
00699338   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0069933B   E85CC1D6FF             call    0040549C
00699340   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
00699343   E854C1D6FF             call    0040549C
00699348   C3                     ret


* Reference to: System.@HandleFinally;
|
00699349   E9EAB9D6FF             jmp     00404D38
0069934E   E923FFFFFF             jmp     00699276

****** END
|
00699353   8A45FF                 mov     al, byte ptr [ebp-$01]
00699356   5F                     pop     edi
00699357   5E                     pop     esi
00699358   5B                     pop     ebx
00699359   8BE5                   mov     esp, ebp
0069935B   5D                     pop     ebp
0069935C   C3                     ret

*)
end;

procedure TfrmFecha._PROC_00699349(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00699349   E9EAB9D6FF             jmp     00404D38

|
0069934E   E923FFFFFF             jmp     00699276
00699353   8A45FF                 mov     al, byte ptr [ebp-$01]
00699356   5F                     pop     edi
00699357   5E                     pop     esi
00699358   5B                     pop     ebx
00699359   8BE5                   mov     esp, ebp
0069935B   5D                     pop     ebp
0069935C   C3                     ret

*)
end;

procedure TfrmFecha._PROC_00699470(Sender : TObject);
begin
(*
00699470   55                     push    ebp
00699471   8BEC                   mov     ebp, esp
00699473   B911000000             mov     ecx, $00000011
00699478   6A00                   push    $00
0069947A   6A00                   push    $00
0069947C   49                     dec     ecx
0069947D   75F9                   jnz     00699478
0069947F   51                     push    ecx
00699480   53                     push    ebx
00699481   56                     push    esi
00699482   57                     push    edi
00699483   8BD8                   mov     ebx, eax
00699485   33C0                   xor     eax, eax
00699487   55                     push    ebp

* Possible String Reference to: 'È∂∂÷ˇÎºäEˇ_^[ãÂ]√'
|
00699488   687D966900             push    $0069967D

***** TRY
|
0069948D   64FF30                 push    dword ptr fs:[eax]
00699490   648920                 mov     fs:[eax], esp
00699493   C645FF00               mov     byte ptr [ebp-$01], $00
00699497   33C0                   xor     eax, eax
00699499   55                     push    ebp
0069949A   682C966900             push    $0069962C

***** TRY
|
0069949F   64FF30                 push    dword ptr fs:[eax]
006994A2   648920                 mov     fs:[eax], esp
006994A5   33C0                   xor     eax, eax
006994A7   55                     push    ebp
006994A8   68DD956900             push    $006995DD

***** TRY
|
006994AD   64FF30                 push    dword ptr fs:[eax]
006994B0   648920                 mov     fs:[eax], esp
006994B3   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
006994B6   8BB33C030000           mov     esi, [ebx+$033C]
006994BC   8BC6                   mov     eax, esi

|
006994BE   E8F59CFBFF             call    006531B8
006994C3   8D45EC                 lea     eax, [ebp-$14]
006994C6   50                     push    eax
006994C7   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006994CC   8B00                   mov     eax, [eax]
006994CE   8B805C010000           mov     eax, [eax+$015C]
006994D4   8B10                   mov     edx, [eax]
006994D6   FF5254                 call    dword ptr [edx+$54]
006994D9   8D45DC                 lea     eax, [ebp-$24]

* Reference to: Variants.@VarFromReal;
|
006994DC   E8A7F7D7FF             call    00418C88
006994E1   8D55DC                 lea     edx, [ebp-$24]
006994E4   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
006994E5   E8C63BD8FF             call    0041D0B0
006994EA   8D55EC                 lea     edx, [ebp-$14]
006994ED   8BC6                   mov     eax, esi

* Reference to : TJvValidateEdit._PROC_00653290()
|
006994EF   E89C9DFBFF             call    00653290
006994F4   A12CA27D00             mov     eax, dword ptr [$007DA22C]
006994F9   DB28                   fld     tbyte ptr [eax]
006994FB   8D45CC                 lea     eax, [ebp-$34]

* Reference to: Variants.@VarFromReal;
|
006994FE   E885F7D7FF             call    00418C88
00699503   8D45CC                 lea     eax, [ebp-$34]
00699506   50                     push    eax
00699507   8D55BC                 lea     edx, [ebp-$44]

* Reference to control TfrmFecha.EdPrcDesc : TJvValidateEdit
|
0069950A   8B83E4030000           mov     eax, [ebx+$03E4]

|
00699510   E8A39CFBFF             call    006531B8
00699515   8D55BC                 lea     edx, [ebp-$44]
00699518   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
00699519   E89E3BD8FF             call    0041D0BC
0069951E   8D45CC                 lea     eax, [ebp-$34]
00699521   50                     push    eax
00699522   8D45AC                 lea     eax, [ebp-$54]
00699525   BA64000000             mov     edx, $00000064
0069952A   B101                   mov     cl, $01

|
0069952C   E83FF5D7FF             call    00418A70
00699531   8D55AC                 lea     edx, [ebp-$54]
00699534   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
00699535   E8BE3BD8FF             call    0041D0F8
0069953A   8D55CC                 lea     edx, [ebp-$34]

* Reference to control TfrmFecha.EdVlrDesc : TJvValidateEdit
|
0069953D   8B83E8030000           mov     eax, [ebx+$03E8]

* Reference to : TJvValidateEdit._PROC_00653290()
|
00699543   E8489DFBFF             call    00653290
00699548   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069954D   DB28                   fld     tbyte ptr [eax]
0069954F   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarFromReal;
|
00699552   E831F7D7FF             call    00418C88
00699557   8D4598                 lea     eax, [ebp-$68]
0069955A   50                     push    eax
0069955B   8D5588                 lea     edx, [ebp-$78]

* Reference to control TfrmFecha.EdVlrDesc : TJvValidateEdit
|
0069955E   8B83E8030000           mov     eax, [ebx+$03E8]

|
00699564   E84F9CFBFF             call    006531B8
00699569   8D5588                 lea     edx, [ebp-$78]
0069956C   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069956D   E83E3BD8FF             call    0041D0B0
00699572   8D4598                 lea     eax, [ebp-$68]
00699575   50                     push    eax
00699576   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
0069957C   8B833C030000           mov     eax, [ebx+$033C]

|
00699582   E8319CFBFF             call    006531B8
00699587   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
0069958D   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069958E   E81D3BD8FF             call    0041D0B0
00699593   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
00699596   E84DD6D7FF             call    00416BE8
0069959B   83C4F4                 add     esp, -$0C
0069959E   DB3C24                 fstp    tbyte ptr [esp]
006995A1   9B                     wait
006995A2   8D55A8                 lea     edx, [ebp-$58]

* Possible String Reference to: '###,###,##0.00'
|
006995A5   B898966900             mov     eax, $00699698

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006995AA   E88D3FD7FF             call    0040D53C
006995AF   8B55A8                 mov     edx, [ebp-$58]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
006995B2   8B8344030000           mov     eax, [ebx+$0344]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006995B8   E83FA1DFFF             call    004936FC
006995BD   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006995C2   8B00                   mov     eax, [eax]
006995C4   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DB.TDataSet.Delete(TDataSet);
|
006995CA   E8A121E5FF             call    004EB770
006995CF   C645FF01               mov     byte ptr [ebp-$01], $01
006995D3   33C0                   xor     eax, eax
006995D5   5A                     pop     edx
006995D6   59                     pop     ecx
006995D7   59                     pop     ecx
006995D8   648910                 mov     fs:[eax], edx
006995DB   EB41                   jmp     0069961E

* Reference to: System.@HandleOnException;
|
006995DD   E9CEB5D6FF             jmp     00404BB0
006995E2   0100                   add     [eax], eax
006995E4   0000                   add     [eax], al
006995E6   40                     inc     eax
006995E7   95                     xchg    eax, ebp
006995E8   40                     inc     eax
006995E9   00EE                   add     dh, ch
006995EB   95                     xchg    eax, ebp
006995EC   690089C36A00           imul    eax, [eax], $006AC389

* Reference to field TfrmFecha.Owner : TComponent
|
006995F2   8B4B04                 mov     ecx, [ebx+$04]
006995F5   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]

* Possible String Reference to: 'Erro ao remover o item de pagamento
|                                !'
|
006995FB   BAB0966900             mov     edx, $006996B0

* Reference to: System.@LStrCat3;
|
00699600   E8A3C1D6FF             call    004057A8
00699605   8B8574FFFFFF           mov     eax, [ebp+$FFFFFF74]
0069960B   668B0DD8966900         mov     cx, word ptr [$006996D8]
00699612   B201                   mov     dl, $01

|
00699614   E813A5DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00699619   E892B8D6FF             call    00404EB0

****** END
|
0069961E   33C0                   xor     eax, eax
00699620   5A                     pop     edx
00699621   59                     pop     ecx
00699622   59                     pop     ecx
00699623   648910                 mov     fs:[eax], edx

****** FINALLY
|
00699626   6833966900             push    $00699633
0069962B   C3                     ret


* Reference to: System.@HandleFinally;
|
0069962C   E907B7D6FF             jmp     00404D38
00699631   EBF8                   jmp     0069962B

****** END
|
00699633   33C0                   xor     eax, eax
00699635   5A                     pop     edx
00699636   59                     pop     ecx
00699637   59                     pop     ecx
00699638   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0069963B   6884966900             push    $00699684
00699640   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]

* Reference to: System.@LStrClr(void;void);
|
00699646   E851BED6FF             call    0040549C
0069964B   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]

* Reference to object Variant
|
00699651   8B1524114000           mov     edx, [$00401124]
00699657   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069965C   E83BCAD6FF             call    0040609C
00699661   8D45A8                 lea     eax, [ebp-$58]

* Reference to: System.@LStrClr(void;void);
|
00699664   E833BED6FF             call    0040549C
00699669   8D45AC                 lea     eax, [ebp-$54]

* Reference to object Variant
|
0069966C   8B1524114000           mov     edx, [$00401124]
00699672   B905000000             mov     ecx, $00000005

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00699677   E820CAD6FF             call    0040609C
0069967C   C3                     ret


* Reference to: System.@HandleFinally;
|
0069967D   E9B6B6D6FF             jmp     00404D38
00699682   EBBC                   jmp     00699640

****** END
|
00699684   8A45FF                 mov     al, byte ptr [ebp-$01]
00699687   5F                     pop     edi
00699688   5E                     pop     esi
00699689   5B                     pop     ebx
0069968A   8BE5                   mov     esp, ebp
0069968C   5D                     pop     ebp
0069968D   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069967D(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069967D   E9B6B6D6FF             jmp     00404D38

|
00699682   EBBC                   jmp     00699640
00699684   8A45FF                 mov     al, byte ptr [ebp-$01]
00699687   5F                     pop     edi
00699688   5E                     pop     esi
00699689   5B                     pop     ebx
0069968A   8BE5                   mov     esp, ebp
0069968C   5D                     pop     ebp
0069968D   C3                     ret

*)
end;

procedure TfrmFecha._PROC_00699764(Sender : TObject);
begin
(*
00699764   55                     push    ebp
00699765   8BEC                   mov     ebp, esp
00699767   33C9                   xor     ecx, ecx
00699769   51                     push    ecx
0069976A   51                     push    ecx
0069976B   51                     push    ecx
0069976C   51                     push    ecx
0069976D   51                     push    ecx
0069976E   51                     push    ecx
0069976F   53                     push    ebx
00699770   56                     push    esi
00699771   57                     push    edi
00699772   8BD8                   mov     ebx, eax
00699774   33C0                   xor     eax, eax
00699776   55                     push    ebp
00699777   68B2986900             push    $006998B2

***** TRY
|
0069977C   64FF30                 push    dword ptr fs:[eax]
0069977F   648920                 mov     fs:[eax], esp
00699782   C645FF01               mov     byte ptr [ebp-$01], $01
00699786   33C0                   xor     eax, eax
00699788   55                     push    ebp
00699789   687B986900             push    $0069987B

***** TRY
|
0069978E   64FF30                 push    dword ptr fs:[eax]
00699791   648920                 mov     fs:[eax], esp
00699794   33C0                   xor     eax, eax
00699796   55                     push    ebp
00699797   6832986900             push    $00699832

***** TRY
|
0069979C   64FF30                 push    dword ptr fs:[eax]
0069979F   648920                 mov     fs:[eax], esp
006997A2   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
006997A5   8B832C030000           mov     eax, [ebx+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006997AB   E88C47E6FF             call    004FDF3C
006997B0   8B45F0                 mov     eax, [ebp-$10]
006997B3   8D55F4                 lea     edx, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006997B6   E865A31000             call    007A3B20
006997BB   8B4DF4                 mov     ecx, [ebp-$0C]
006997BE   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'TIPOPGTO = '
|
006997C1   BAD0986900             mov     edx, $006998D0

* Reference to: System.@LStrCat3;
|
006997C6   E8DDBFD6FF             call    004057A8
006997CB   8B45F8                 mov     eax, [ebp-$08]
006997CE   50                     push    eax
006997CF   6A01                   push    $01

* Possible String Reference to: 'TIPOPGTO'
|
006997D1   B9E4986900             mov     ecx, $006998E4

* Possible String Reference to: 'TIPOPGTO'
|
006997D6   BAE4986900             mov     edx, $006998E4
006997DB   33C0                   xor     eax, eax

|
006997DD   E80EF71000             call    007A8EF0
006997E2   84C0                   test    al, al
006997E4   751B                   jnz     00699801
006997E6   6A00                   push    $00
006997E8   668B0DF0986900         mov     cx, word ptr [$006998F0]
006997EF   33D2                   xor     edx, edx

* Possible String Reference to: 'A forma de pagamento digitada n„o e
|                                xiste, por favor verifique!'
|
006997F1   B8FC986900             mov     eax, $006998FC

|
006997F6   E831A3DAFF             call    00443B2C
006997FB   C645FF00               mov     byte ptr [ebp-$01], $00
006997FF   EB27                   jmp     00699828
00699801   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
00699804   8B832C030000           mov     eax, [ebx+$032C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0069980A   E82D47E6FF             call    004FDF3C
0069980F   8B45EC                 mov     eax, [ebp-$14]
00699812   BA44996900             mov     edx, $00699944

* Reference to: System.@LStrCmp;
|
00699817   E88CC0D6FF             call    004058A8
0069981C   750A                   jnz     00699828
0069981E   8BC3                   mov     eax, ebx

* Reference to : TfrmFecha._PROC_0069DFC0()
|
00699820   E89B470000             call    0069DFC0
00699825   8845FF                 mov     [ebp-$01], al
00699828   33C0                   xor     eax, eax
0069982A   5A                     pop     edx
0069982B   59                     pop     ecx
0069982C   59                     pop     ecx
0069982D   648910                 mov     fs:[eax], edx
00699830   EB3B                   jmp     0069986D

* Reference to: System.@HandleOnException;
|
00699832   E979B3D6FF             jmp     00404BB0
00699837   0100                   add     [eax], eax
00699839   0000                   add     [eax], al
0069983B   40                     inc     eax
0069983C   95                     xchg    eax, ebp
0069983D   40                     inc     eax
0069983E   004398                 add     [ebx-$68], al
00699841   690089C36A00           imul    eax, [eax], $006AC389

* Reference to field TfrmFecha.Owner : TComponent
|
00699847   8B4B04                 mov     ecx, [ebx+$04]
0069984A   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Erro ao validar a forma de pagament
|                                o!'
|
0069984D   BA50996900             mov     edx, $00699950

* Reference to: System.@LStrCat3;
|
00699852   E851BFD6FF             call    004057A8
00699857   8B45E8                 mov     eax, [ebp-$18]
0069985A   668B0DF0986900         mov     cx, word ptr [$006998F0]
00699861   B201                   mov     dl, $01

|
00699863   E8C4A2DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00699868   E843B6D6FF             call    00404EB0

****** END
|
0069986D   33C0                   xor     eax, eax
0069986F   5A                     pop     edx
00699870   59                     pop     ecx
00699871   59                     pop     ecx
00699872   648910                 mov     fs:[eax], edx

****** FINALLY
|
00699875   6882986900             push    $00699882
0069987A   C3                     ret


* Reference to: System.@HandleFinally;
|
0069987B   E9B8B4D6FF             jmp     00404D38
00699880   EBF8                   jmp     0069987A

****** END
|
00699882   33C0                   xor     eax, eax
00699884   5A                     pop     edx
00699885   59                     pop     ecx
00699886   59                     pop     ecx
00699887   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069988A   68B9986900             push    $006998B9
0069988F   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrClr(void;void);
|
00699892   E805BCD6FF             call    0040549C
00699897   8D45EC                 lea     eax, [ebp-$14]
0069989A   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069989F   E81CBCD6FF             call    004054C0
006998A4   8D45F4                 lea     eax, [ebp-$0C]
006998A7   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006998AC   E80FBCD6FF             call    004054C0
006998B1   C3                     ret


* Reference to: System.@HandleFinally;
|
006998B2   E981B4D6FF             jmp     00404D38
006998B7   EBD6                   jmp     0069988F

****** END
|
006998B9   8A45FF                 mov     al, byte ptr [ebp-$01]
006998BC   5F                     pop     edi
006998BD   5E                     pop     esi
006998BE   5B                     pop     ebx
006998BF   8BE5                   mov     esp, ebp
006998C1   5D                     pop     ebp
006998C2   C20C00                 ret     $000C

*)
end;

procedure TfrmFecha._PROC_006998B2(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006998B2   E981B4D6FF             jmp     00404D38

|
006998B7   EBD6                   jmp     0069988F
006998B9   8A45FF                 mov     al, byte ptr [ebp-$01]
006998BC   5F                     pop     edi
006998BD   5E                     pop     esi
006998BE   5B                     pop     ebx
006998BF   8BE5                   mov     esp, ebp
006998C1   5D                     pop     ebp
006998C2   C20C00                 ret     $000C

*)
end;

procedure TfrmFecha._PROC_00699A55(Sender : TObject);
begin
(*
00699A55   8BEC                   mov     ebp, esp
00699A57   B934000000             mov     ecx, $00000034
00699A5C   6A00                   push    $00
00699A5E   6A00                   push    $00
00699A60   49                     dec     ecx
00699A61   75F9                   jnz     00699A5C
00699A63   51                     push    ecx
00699A64   53                     push    ebx
00699A65   56                     push    esi
00699A66   57                     push    edi
00699A67   8945FC                 mov     [ebp-$04], eax
00699A6A   8B357CB37D00           mov     esi, [$007DB37C]
00699A70   8B3D8CA97D00           mov     edi, [$007DA98C]
00699A76   33C0                   xor     eax, eax
00699A78   55                     push    ebp
00699A79   6802AB6900             push    $0069AB02

***** TRY
|
00699A7E   64FF30                 push    dword ptr fs:[eax]
00699A81   648920                 mov     fs:[eax], esp
00699A84   C645FB00               mov     byte ptr [ebp-$05], $00
00699A88   33C0                   xor     eax, eax
00699A8A   55                     push    ebp
00699A8B   6810AA6900             push    $0069AA10

***** TRY
|
00699A90   64FF30                 push    dword ptr fs:[eax]
00699A93   648920                 mov     fs:[eax], esp
00699A96   33C0                   xor     eax, eax
00699A98   55                     push    ebp
00699A99   68C1A96900             push    $0069A9C1

***** TRY
|
00699A9E   64FF30                 push    dword ptr fs:[eax]
00699AA1   648920                 mov     fs:[eax], esp
00699AA4   8D55D4                 lea     edx, [ebp-$2C]
00699AA7   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmFecha.edCodMesa : TJvComboEdit
|
00699AAA   8B801C030000           mov     eax, [eax+$031C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00699AB0   E88744E6FF             call    004FDF3C
00699AB5   8B45D4                 mov     eax, [ebp-$2C]
00699AB8   8D55D8                 lea     edx, [ebp-$28]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00699ABB   E860A01000             call    007A3B20
00699AC0   8B4DD8                 mov     ecx, [ebp-$28]
00699AC3   8D45DC                 lea     eax, [ebp-$24]

* Possible String Reference to: 'CODMESA = '
|
00699AC6   BA20AB6900             mov     edx, $0069AB20

* Reference to: System.@LStrCat3;
|
00699ACB   E8D8BCD6FF             call    004057A8
00699AD0   8B45DC                 mov     eax, [ebp-$24]
00699AD3   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
00699AD4   6834AB6900             push    $0069AB34
00699AD9   6A01                   push    $01
00699ADB   8B07                   mov     eax, [edi]
00699ADD   8B4068                 mov     eax, [eax+$68]
00699AE0   B944AB6900             mov     ecx, $0069AB44

* Possible String Reference to: 'MESAS'
|
00699AE5   BA50AB6900             mov     edx, $0069AB50

|
00699AEA   E879DF1000             call    007A7A68
00699AEF   84C0                   test    al, al
00699AF1   0F84C00E0000           jz      0069A9B7
00699AF7   8B07                   mov     eax, [edi]
00699AF9   8B4070                 mov     eax, [eax+$70]

* Reference to : TFrmInfoAtu._PROC_007A66A4()
|
00699AFC   E8A3CB1000             call    007A66A4
00699B01   8B07                   mov     eax, [edi]
00699B03   8B4074                 mov     eax, [eax+$74]

* Reference to : TFrmInfoAtu._PROC_007A66A4()
|
00699B06   E899CB1000             call    007A66A4
00699B0B   A130B57D00             mov     eax, dword ptr [$007DB530]
00699B10   33D2                   xor     edx, edx
00699B12   8910                   mov     [eax], edx
00699B14   895004                 mov     [eax+$04], edx
00699B17   66895008               mov     [eax+$08], dx
00699B1B   33C0                   xor     eax, eax
00699B1D   8945E0                 mov     [ebp-$20], eax
00699B20   8945E4                 mov     [ebp-$1C], eax
00699B23   668945E8               mov     [ebp-$18], ax
00699B27   8B06                   mov     eax, [esi]
00699B29   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DBClient.TCustomClientDataSet.EmptyDataSet(TCustomClientDataSet);
|
00699B2F   E8B4D3E5FF             call    004F6EE8
00699B34   8D55D0                 lea     edx, [ebp-$30]
00699B37   8B07                   mov     eax, [edi]
00699B39   8B8034090000           mov     eax, [eax+$0934]
00699B3F   8B08                   mov     ecx, [eax]
00699B41   FF5160                 call    dword ptr [ecx+$60]
00699B44   8B55D0                 mov     edx, [ebp-$30]
00699B47   A118A67D00             mov     eax, dword ptr [$007DA618]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00699B4C   E89FB9D6FF             call    004054F0
00699B51   8D55CC                 lea     edx, [ebp-$34]
00699B54   8B07                   mov     eax, [edi]
00699B56   8B8038090000           mov     eax, [eax+$0938]
00699B5C   8B08                   mov     ecx, [eax]
00699B5E   FF5160                 call    dword ptr [ecx+$60]
00699B61   8B55CC                 mov     edx, [ebp-$34]
00699B64   A1D0B07D00             mov     eax, dword ptr [$007DB0D0]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00699B69   E882B9D6FF             call    004054F0
00699B6E   33C0                   xor     eax, eax
00699B70   8945F0                 mov     [ebp-$10], eax
00699B73   8945F4                 mov     [ebp-$0C], eax
00699B76   668945F8               mov     [ebp-$08], ax
00699B7A   8B07                   mov     eax, [edi]
00699B7C   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.First(TDataSet);
|
00699B7F   E8A814E5FF             call    004EB02C
00699B84   E90A090000             jmp     0069A493
00699B89   8D55C8                 lea     edx, [ebp-$38]
00699B8C   8B07                   mov     eax, [edi]
00699B8E   8B80E0050000           mov     eax, [eax+$05E0]
00699B94   8B08                   mov     ecx, [eax]
00699B96   FF5160                 call    dword ptr [ecx+$60]
00699B99   8B45C8                 mov     eax, [ebp-$38]
00699B9C   BA60AB6900             mov     edx, $0069AB60

* Reference to: System.@LStrCmp;
|
00699BA1   E802BDD6FF             call    004058A8
00699BA6   0F84DD080000           jz      0069A489
00699BAC   8D55C4                 lea     edx, [ebp-$3C]
00699BAF   8B07                   mov     eax, [edi]
00699BB1   8B80C0050000           mov     eax, [eax+$05C0]
00699BB7   8B08                   mov     ecx, [eax]
00699BB9   FF5160                 call    dword ptr [ecx+$60]
00699BBC   8B45C4                 mov     eax, [ebp-$3C]

|
00699BBF   E8646D1100             call    007B0928
00699BC4   84C0                   test    al, al
00699BC6   0F84BD080000           jz      0069A489
00699BCC   DB6D08                 fld     tbyte ptr [ebp+$08]
00699BCF   D81D64AB6900           fcomp   dword ptr [$0069AB64]
00699BD5   DFE0                   fstsw   ax
00699BD7   9E                     sahf
00699BD8   7669                   jbe     00699C43
00699BDA   8B07                   mov     eax, [edi]
00699BDC   8B80D8050000           mov     eax, [eax+$05D8]
00699BE2   8B10                   mov     edx, [eax]
00699BE4   FF5254                 call    dword ptr [edx+$54]
00699BE7   DB6D08                 fld     tbyte ptr [ebp+$08]
00699BEA   DEC9                   fmulp   st(1), st(0)
00699BEC   D90568AB6900           fld     dword ptr [$0069AB68]

* Reference to: System.@FSafeDivide;
|
00699BF2   E80999D6FF             call    00403500
00699BF7   83C4F8                 add     esp, -$08
00699BFA   DD1C24                 fstp    qword ptr [esp]
00699BFD   9B                     wait
00699BFE   B802000000             mov     eax, $00000002

|
00699C03   E8FC761000             call    007A1304
00699C08   DB6DE0                 fld     tbyte ptr [ebp-$20]
00699C0B   DEC1                   faddp   st(1), st(0)
00699C0D   DB7DE0                 fstp    tbyte ptr [ebp-$20]
00699C10   9B                     wait
00699C11   8B07                   mov     eax, [edi]
00699C13   8B80D8050000           mov     eax, [eax+$05D8]
00699C19   8B10                   mov     edx, [eax]
00699C1B   FF5254                 call    dword ptr [edx+$54]
00699C1E   DB6D08                 fld     tbyte ptr [ebp+$08]
00699C21   DEC9                   fmulp   st(1), st(0)
00699C23   D90568AB6900           fld     dword ptr [$0069AB68]

* Reference to: System.@FSafeDivide;
|
00699C29   E8D298D6FF             call    00403500
00699C2E   83C4F8                 add     esp, -$08
00699C31   DD1C24                 fstp    qword ptr [esp]
00699C34   9B                     wait
00699C35   B802000000             mov     eax, $00000002

|
00699C3A   E8C5761000             call    007A1304
00699C3F   DB7DF0                 fstp    tbyte ptr [ebp-$10]
00699C42   9B                     wait
00699C43   A06CAB6900             mov     al, byte ptr [$0069AB6C]
00699C48   50                     push    eax
00699C49   8D5580                 lea     edx, [ebp-$80]
00699C4C   8B07                   mov     eax, [edi]
00699C4E   8B80C0050000           mov     eax, [eax+$05C0]
00699C54   8B08                   mov     ecx, [eax]
00699C56   FF5160                 call    dword ptr [ecx+$60]
00699C59   8B5580                 mov     edx, [ebp-$80]
00699C5C   8D4584                 lea     eax, [ebp-$7C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00699C5F   E860F0D7FF             call    00418CC4
00699C64   56                     push    esi
00699C65   57                     push    edi
00699C66   8D7584                 lea     esi, [ebp-$7C]
00699C69   8D7D94                 lea     edi, [ebp-$6C]
00699C6C   A5                     movsd
00699C6D   A5                     movsd
00699C6E   A5                     movsd
00699C6F   A5                     movsd
00699C70   5F                     pop     edi
00699C71   5E                     pop     esi
00699C72   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
00699C78   8B07                   mov     eax, [edi]
00699C7A   8B80C8050000           mov     eax, [eax+$05C8]
00699C80   8B08                   mov     ecx, [eax]
00699C82   FF5160                 call    dword ptr [ecx+$60]
00699C85   8B956CFFFFFF           mov     edx, [ebp+$FFFFFF6C]
00699C8B   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00699C91   E82EF0D7FF             call    00418CC4
00699C96   56                     push    esi
00699C97   57                     push    edi
00699C98   8DB570FFFFFF           lea     esi, [ebp+$FFFFFF70]
00699C9E   8D7DA4                 lea     edi, [ebp-$5C]
00699CA1   A5                     movsd
00699CA2   A5                     movsd
00699CA3   A5                     movsd
00699CA4   A5                     movsd
00699CA5   5F                     pop     edi
00699CA6   5E                     pop     esi
00699CA7   8D4594                 lea     eax, [ebp-$6C]
00699CAA   8D4DB4                 lea     ecx, [ebp-$4C]
00699CAD   BA01000000             mov     edx, $00000001

* Reference to: Variants.VarArrayOf(arrayofVariant;arrayofVariant;0..-1):Variant;
|
00699CB2   E85519D8FF             call    0041B60C
00699CB7   8D4DB4                 lea     ecx, [ebp-$4C]
00699CBA   8B06                   mov     eax, [esi]
00699CBC   8B80C0000000           mov     eax, [eax+$00C0]

* Possible String Reference to: 'CodProd;UnidMed'
|
00699CC2   BA78AB6900             mov     edx, $0069AB78
00699CC7   8B18                   mov     ebx, [eax]
00699CC9   FF9344020000           call    dword ptr [ebx+$0244]
00699CCF   84C0                   test    al, al
00699CD1   0F85DC050000           jnz     0069A2B3
00699CD7   8B06                   mov     eax, [esi]
00699CD9   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Append(TDataSet);
|
00699CDF   E89818E5FF             call    004EB57C
00699CE4   8B06                   mov     eax, [esi]
00699CE6   8B80D4000000           mov     eax, [eax+$00D4]
00699CEC   BA90AB6900             mov     edx, $0069AB90
00699CF1   8B08                   mov     ecx, [eax]
00699CF3   FF91B0000000           call    dword ptr [ecx+$00B0]
00699CF9   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]
00699CFF   8B07                   mov     eax, [edi]
00699D01   8B8034090000           mov     eax, [eax+$0934]
00699D07   8B08                   mov     ecx, [eax]
00699D09   FF5160                 call    dword ptr [ecx+$60]
00699D0C   8B9568FFFFFF           mov     edx, [ebp+$FFFFFF68]
00699D12   8B06                   mov     eax, [esi]
00699D14   8B80E0000000           mov     eax, [eax+$00E0]
00699D1A   8B08                   mov     ecx, [eax]
00699D1C   FF91B0000000           call    dword ptr [ecx+$00B0]
00699D22   8D9564FFFFFF           lea     edx, [ebp+$FFFFFF64]
00699D28   8B07                   mov     eax, [edi]
00699D2A   8B8038090000           mov     eax, [eax+$0938]
00699D30   8B08                   mov     ecx, [eax]
00699D32   FF5160                 call    dword ptr [ecx+$60]
00699D35   8B9564FFFFFF           mov     edx, [ebp+$FFFFFF64]
00699D3B   8B06                   mov     eax, [esi]
00699D3D   8B8034010000           mov     eax, [eax+$0134]
00699D43   8B08                   mov     ecx, [eax]
00699D45   FF91B0000000           call    dword ptr [ecx+$00B0]
00699D4B   8B07                   mov     eax, [edi]
00699D4D   8B8028090000           mov     eax, [eax+$0928]
00699D53   8B10                   mov     edx, [eax]
00699D55   FF5258                 call    dword ptr [edx+$58]
00699D58   8BD0                   mov     edx, eax
00699D5A   8B06                   mov     eax, [esi]
00699D5C   8B80E4000000           mov     eax, [eax+$00E4]
00699D62   8B08                   mov     ecx, [eax]
00699D64   FF91A8000000           call    dword ptr [ecx+$00A8]
00699D6A   8B06                   mov     eax, [esi]
00699D6C   8B8038010000           mov     eax, [eax+$0138]
00699D72   33D2                   xor     edx, edx
00699D74   8B08                   mov     ecx, [eax]
00699D76   FF91B0000000           call    dword ptr [ecx+$00B0]
00699D7C   8B06                   mov     eax, [esi]
00699D7E   8B803C010000           mov     eax, [eax+$013C]
00699D84   33D2                   xor     edx, edx
00699D86   8B08                   mov     ecx, [eax]
00699D88   FF91B0000000           call    dword ptr [ecx+$00B0]
00699D8E   8D9560FFFFFF           lea     edx, [ebp+$FFFFFF60]
00699D94   8B07                   mov     eax, [edi]
00699D96   8B80C0050000           mov     eax, [eax+$05C0]
00699D9C   8B08                   mov     ecx, [eax]
00699D9E   FF5160                 call    dword ptr [ecx+$60]
00699DA1   8B9560FFFFFF           mov     edx, [ebp+$FFFFFF60]
00699DA7   8B06                   mov     eax, [esi]
00699DA9   8B80E8000000           mov     eax, [eax+$00E8]
00699DAF   8B08                   mov     ecx, [eax]
00699DB1   FF91B0000000           call    dword ptr [ecx+$00B0]
00699DB7   8D955CFFFFFF           lea     edx, [ebp+$FFFFFF5C]
00699DBD   8B07                   mov     eax, [edi]
00699DBF   8B801C060000           mov     eax, [eax+$061C]
00699DC5   8B08                   mov     ecx, [eax]
00699DC7   FF5160                 call    dword ptr [ecx+$60]
00699DCA   8B955CFFFFFF           mov     edx, [ebp+$FFFFFF5C]
00699DD0   8B06                   mov     eax, [esi]
00699DD2   8B80EC000000           mov     eax, [eax+$00EC]
00699DD8   8B08                   mov     ecx, [eax]
00699DDA   FF91B0000000           call    dword ptr [ecx+$00B0]
00699DE0   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
00699DE6   8B07                   mov     eax, [edi]
00699DE8   8B8014060000           mov     eax, [eax+$0614]
00699DEE   8B08                   mov     ecx, [eax]
00699DF0   FF5160                 call    dword ptr [ecx+$60]
00699DF3   8B9558FFFFFF           mov     edx, [ebp+$FFFFFF58]
00699DF9   8B06                   mov     eax, [esi]
00699DFB   8B80CC000000           mov     eax, [eax+$00CC]
00699E01   8B08                   mov     ecx, [eax]
00699E03   FF91B0000000           call    dword ptr [ecx+$00B0]
00699E09   8D9554FFFFFF           lea     edx, [ebp+$FFFFFF54]
00699E0F   8B07                   mov     eax, [edi]
00699E11   8B8018060000           mov     eax, [eax+$0618]
00699E17   8B08                   mov     ecx, [eax]
00699E19   FF5160                 call    dword ptr [ecx+$60]
00699E1C   8B9554FFFFFF           mov     edx, [ebp+$FFFFFF54]
00699E22   8B06                   mov     eax, [esi]
00699E24   8B80F0000000           mov     eax, [eax+$00F0]
00699E2A   8B08                   mov     ecx, [eax]
00699E2C   FF91B0000000           call    dword ptr [ecx+$00B0]
00699E32   8D9550FFFFFF           lea     edx, [ebp+$FFFFFF50]
00699E38   8B07                   mov     eax, [edi]
00699E3A   8B80C8050000           mov     eax, [eax+$05C8]
00699E40   8B08                   mov     ecx, [eax]
00699E42   FF5160                 call    dword ptr [ecx+$60]
00699E45   8B9550FFFFFF           mov     edx, [ebp+$FFFFFF50]
00699E4B   8B06                   mov     eax, [esi]
00699E4D   8B8020010000           mov     eax, [eax+$0120]
00699E53   8B08                   mov     ecx, [eax]
00699E55   FF91B0000000           call    dword ptr [ecx+$00B0]
00699E5B   8B07                   mov     eax, [edi]
00699E5D   8B80CC050000           mov     eax, [eax+$05CC]
00699E63   8B10                   mov     edx, [eax]
00699E65   FF5254                 call    dword ptr [edx+$54]
00699E68   83C4F8                 add     esp, -$08
00699E6B   DD1C24                 fstp    qword ptr [esp]
00699E6E   9B                     wait
00699E6F   8B06                   mov     eax, [esi]
00699E71   8B8024010000           mov     eax, [eax+$0124]
00699E77   8B10                   mov     edx, [eax]
00699E79   FF92A4000000           call    dword ptr [edx+$00A4]
00699E7F   8B07                   mov     eax, [edi]
00699E81   8B80D0050000           mov     eax, [eax+$05D0]
00699E87   8B10                   mov     edx, [eax]
00699E89   FF5254                 call    dword ptr [edx+$54]
00699E8C   83C4F8                 add     esp, -$08
00699E8F   DD1C24                 fstp    qword ptr [esp]
00699E92   9B                     wait
00699E93   8B06                   mov     eax, [esi]
00699E95   8B80F4000000           mov     eax, [eax+$00F4]
00699E9B   8B10                   mov     edx, [eax]
00699E9D   FF92A4000000           call    dword ptr [edx+$00A4]
00699EA3   8B07                   mov     eax, [edi]
00699EA5   8B80D4050000           mov     eax, [eax+$05D4]
00699EAB   8B10                   mov     edx, [eax]
00699EAD   FF5254                 call    dword ptr [edx+$54]
00699EB0   83C4F8                 add     esp, -$08
00699EB3   DD1C24                 fstp    qword ptr [esp]
00699EB6   9B                     wait
00699EB7   8B06                   mov     eax, [esi]
00699EB9   8B80F8000000           mov     eax, [eax+$00F8]
00699EBF   8B10                   mov     edx, [eax]
00699EC1   FF92A4000000           call    dword ptr [edx+$00A4]
00699EC7   8B07                   mov     eax, [edi]
00699EC9   8B80A40C0000           mov     eax, [eax+$0CA4]
00699ECF   8B10                   mov     edx, [eax]
00699ED1   FF5254                 call    dword ptr [edx+$54]
00699ED4   83C4F8                 add     esp, -$08
00699ED7   DD1C24                 fstp    qword ptr [esp]
00699EDA   9B                     wait
00699EDB   8B06                   mov     eax, [esi]
00699EDD   8B8030010000           mov     eax, [eax+$0130]
00699EE3   8B10                   mov     edx, [eax]
00699EE5   FF92A4000000           call    dword ptr [edx+$00A4]
00699EEB   8B07                   mov     eax, [edi]
00699EED   8B80A80C0000           mov     eax, [eax+$0CA8]
00699EF3   8B10                   mov     edx, [eax]
00699EF5   FF5254                 call    dword ptr [edx+$54]
00699EF8   83C4F8                 add     esp, -$08
00699EFB   DD1C24                 fstp    qword ptr [esp]
00699EFE   9B                     wait
00699EFF   8B06                   mov     eax, [esi]
00699F01   8B802C010000           mov     eax, [eax+$012C]
00699F07   8B10                   mov     edx, [eax]
00699F09   FF92A4000000           call    dword ptr [edx+$00A4]
00699F0F   8B07                   mov     eax, [edi]
00699F11   8B80D8050000           mov     eax, [eax+$05D8]
00699F17   8B10                   mov     edx, [eax]
00699F19   FF5254                 call    dword ptr [edx+$54]
00699F1C   83C4F8                 add     esp, -$08
00699F1F   DD1C24                 fstp    qword ptr [esp]
00699F22   9B                     wait
00699F23   8B06                   mov     eax, [esi]
00699F25   8B80C0010000           mov     eax, [eax+$01C0]
00699F2B   8B10                   mov     edx, [eax]
00699F2D   FF92A4000000           call    dword ptr [edx+$00A4]
00699F33   DB6D08                 fld     tbyte ptr [ebp+$08]
00699F36   83C4F8                 add     esp, -$08
00699F39   DD1C24                 fstp    qword ptr [esp]
00699F3C   9B                     wait
00699F3D   8B06                   mov     eax, [esi]
00699F3F   8B8028020000           mov     eax, [eax+$0228]
00699F45   8B10                   mov     edx, [eax]
00699F47   FF92A4000000           call    dword ptr [edx+$00A4]
00699F4D   DB6DF0                 fld     tbyte ptr [ebp-$10]
00699F50   83C4F8                 add     esp, -$08
00699F53   DD1C24                 fstp    qword ptr [esp]
00699F56   9B                     wait
00699F57   8B06                   mov     eax, [esi]
00699F59   8B802C020000           mov     eax, [eax+$022C]
00699F5F   8B10                   mov     edx, [eax]
00699F61   FF92A4000000           call    dword ptr [edx+$00A4]
00699F67   A06CAB6900             mov     al, byte ptr [$0069AB6C]
00699F6C   50                     push    eax
00699F6D   8D952CFFFFFF           lea     edx, [ebp+$FFFFFF2C]
00699F73   8B07                   mov     eax, [edi]
00699F75   8B80C8050000           mov     eax, [eax+$05C8]
00699F7B   8B08                   mov     ecx, [eax]
00699F7D   FF5160                 call    dword ptr [ecx+$60]
00699F80   8B952CFFFFFF           mov     edx, [ebp+$FFFFFF2C]
00699F86   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00699F8C   E833EDD7FF             call    00418CC4
00699F91   56                     push    esi
00699F92   57                     push    edi
00699F93   8DB530FFFFFF           lea     esi, [ebp+$FFFFFF30]
00699F99   8D7D94                 lea     edi, [ebp-$6C]
00699F9C   A5                     movsd
00699F9D   A5                     movsd
00699F9E   A5                     movsd
00699F9F   A5                     movsd
00699FA0   5F                     pop     edi
00699FA1   5E                     pop     esi
00699FA2   8D9518FFFFFF           lea     edx, [ebp+$FFFFFF18]
00699FA8   8B07                   mov     eax, [edi]
00699FAA   8B80CC050000           mov     eax, [eax+$05CC]
00699FB0   8B08                   mov     ecx, [eax]
00699FB2   FF5160                 call    dword ptr [ecx+$60]
00699FB5   8B9518FFFFFF           mov     edx, [ebp+$FFFFFF18]
00699FBB   8D851CFFFFFF           lea     eax, [ebp+$FFFFFF1C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00699FC1   E8FEECD7FF             call    00418CC4
00699FC6   56                     push    esi
00699FC7   57                     push    edi
00699FC8   8DB51CFFFFFF           lea     esi, [ebp+$FFFFFF1C]
00699FCE   8D7DA4                 lea     edi, [ebp-$5C]
00699FD1   A5                     movsd
00699FD2   A5                     movsd
00699FD3   A5                     movsd
00699FD4   A5                     movsd
00699FD5   5F                     pop     edi
00699FD6   5E                     pop     esi
00699FD7   8D4594                 lea     eax, [ebp-$6C]
00699FDA   8D8D40FFFFFF           lea     ecx, [ebp+$FFFFFF40]
00699FE0   BA01000000             mov     edx, $00000001

* Reference to: Variants.VarArrayOf(arrayofVariant;arrayofVariant;0..-1):Variant;
|
00699FE5   E82216D8FF             call    0041B60C
00699FEA   8D8D40FFFFFF           lea     ecx, [ebp+$FFFFFF40]
00699FF0   8B07                   mov     eax, [edi]
00699FF2   8B8044070000           mov     eax, [eax+$0744]

* Possible String Reference to: 'UnidMed;QtdeUnidMed'
|
00699FF8   BA9CAB6900             mov     edx, $0069AB9C

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
00699FFD   E8F6E31000             call    007A83F8
0069A002   84C0                   test    al, al
0069A004   7471                   jz      0069A077
0069A006   8D9514FFFFFF           lea     edx, [ebp+$FFFFFF14]
0069A00C   8B07                   mov     eax, [edi]
0069A00E   8B8060070000           mov     eax, [eax+$0760]
0069A014   8B08                   mov     ecx, [eax]
0069A016   FF5160                 call    dword ptr [ecx+$60]
0069A019   8B9514FFFFFF           mov     edx, [ebp+$FFFFFF14]
0069A01F   8B06                   mov     eax, [esi]
0069A021   8B8028010000           mov     eax, [eax+$0128]
0069A027   8B08                   mov     ecx, [eax]
0069A029   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A02F   8B07                   mov     eax, [edi]
0069A031   8B806C070000           mov     eax, [eax+$076C]
0069A037   8B10                   mov     edx, [eax]
0069A039   FF5254                 call    dword ptr [edx+$54]
0069A03C   83C4F8                 add     esp, -$08
0069A03F   DD1C24                 fstp    qword ptr [esp]
0069A042   9B                     wait
0069A043   8B06                   mov     eax, [esi]
0069A045   8B802C010000           mov     eax, [eax+$012C]
0069A04B   8B10                   mov     edx, [eax]
0069A04D   FF92A4000000           call    dword ptr [edx+$00A4]
0069A053   8B07                   mov     eax, [edi]
0069A055   8B8068070000           mov     eax, [eax+$0768]
0069A05B   8B10                   mov     edx, [eax]
0069A05D   FF5254                 call    dword ptr [edx+$54]
0069A060   83C4F8                 add     esp, -$08
0069A063   DD1C24                 fstp    qword ptr [esp]
0069A066   9B                     wait
0069A067   8B06                   mov     eax, [esi]
0069A069   8B8030010000           mov     eax, [eax+$0130]
0069A06F   8B10                   mov     edx, [eax]
0069A071   FF92A4000000           call    dword ptr [edx+$00A4]
0069A077   8D9510FFFFFF           lea     edx, [ebp+$FFFFFF10]
0069A07D   8B07                   mov     eax, [edi]
0069A07F   8B8010070000           mov     eax, [eax+$0710]
0069A085   8B08                   mov     ecx, [eax]
0069A087   FF5160                 call    dword ptr [ecx+$60]
0069A08A   83BD10FFFFFF00         cmp     dword ptr [ebp+$FFFFFF10], +$00
0069A091   742B                   jz      0069A0BE
0069A093   8D950CFFFFFF           lea     edx, [ebp+$FFFFFF0C]
0069A099   8B07                   mov     eax, [edi]
0069A09B   8B8010070000           mov     eax, [eax+$0710]
0069A0A1   8B08                   mov     ecx, [eax]
0069A0A3   FF5160                 call    dword ptr [ecx+$60]
0069A0A6   8B950CFFFFFF           mov     edx, [ebp+$FFFFFF0C]
0069A0AC   8B06                   mov     eax, [esi]
0069A0AE   8B801C010000           mov     eax, [eax+$011C]
0069A0B4   8B08                   mov     ecx, [eax]
0069A0B6   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A0BC   EB15                   jmp     0069A0D3
0069A0BE   8B06                   mov     eax, [esi]
0069A0C0   8B801C010000           mov     eax, [eax+$011C]
0069A0C6   BA90AB6900             mov     edx, $0069AB90
0069A0CB   8B08                   mov     ecx, [eax]
0069A0CD   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A0D3   8D9504FFFFFF           lea     edx, [ebp+$FFFFFF04]
0069A0D9   8B07                   mov     eax, [edi]
0069A0DB   8B800C060000           mov     eax, [eax+$060C]
0069A0E1   8B08                   mov     ecx, [eax]
0069A0E3   FF5160                 call    dword ptr [ecx+$60]
0069A0E6   8B8504FFFFFF           mov     eax, [ebp+$FFFFFF04]
0069A0EC   8D9508FFFFFF           lea     edx, [ebp+$FFFFFF08]

|
0069A0F2   E805501100             call    007AF0FC
0069A0F7   8B9508FFFFFF           mov     edx, [ebp+$FFFFFF08]
0069A0FD   8B06                   mov     eax, [esi]
0069A0FF   8B8044010000           mov     eax, [eax+$0144]
0069A105   8B08                   mov     ecx, [eax]
0069A107   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A10D   8D8500FFFFFF           lea     eax, [ebp+$FFFFFF00]
0069A113   50                     push    eax
0069A114   8D95FCFEFFFF           lea     edx, [ebp+$FFFFFEFC]
0069A11A   8B07                   mov     eax, [edi]
0069A11C   8B800C060000           mov     eax, [eax+$060C]
0069A122   8B08                   mov     ecx, [eax]
0069A124   FF5160                 call    dword ptr [ecx+$60]
0069A127   8B85FCFEFFFF           mov     eax, [ebp+$FFFFFEFC]
0069A12D   50                     push    eax
0069A12E   8D95F8FEFFFF           lea     edx, [ebp+$FFFFFEF8]
0069A134   8B07                   mov     eax, [edi]
0069A136   8B8034090000           mov     eax, [eax+$0934]
0069A13C   8B08                   mov     ecx, [eax]
0069A13E   FF5160                 call    dword ptr [ecx+$60]
0069A141   8B95F8FEFFFF           mov     edx, [ebp+$FFFFFEF8]
0069A147   B8B8AB6900             mov     eax, $0069ABB8
0069A14C   59                     pop     ecx

|
0069A14D   E8E64D1100             call    007AEF38
0069A152   8B9500FFFFFF           mov     edx, [ebp+$FFFFFF00]
0069A158   8B06                   mov     eax, [esi]
0069A15A   8B8040010000           mov     eax, [eax+$0140]
0069A160   8B08                   mov     ecx, [eax]
0069A162   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A168   8B06                   mov     eax, [esi]
0069A16A   8B80C0000000           mov     eax, [eax+$00C0]
0069A170   8B10                   mov     edx, [eax]
0069A172   FF924C020000           call    dword ptr [edx+$024C]
0069A178   8B06                   mov     eax, [esi]
0069A17A   8B80C0010000           mov     eax, [eax+$01C0]
0069A180   8B10                   mov     edx, [eax]
0069A182   FF5254                 call    dword ptr [edx+$54]
0069A185   A130B57D00             mov     eax, dword ptr [$007DB530]
0069A18A   DB28                   fld     tbyte ptr [eax]
0069A18C   DEC1                   faddp   st(1), st(0)
0069A18E   A130B57D00             mov     eax, dword ptr [$007DB530]
0069A193   DB38                   fstp    tbyte ptr [eax]
0069A195   9B                     wait
0069A196   DB6DF0                 fld     tbyte ptr [ebp-$10]
0069A199   D81D64AB6900           fcomp   dword ptr [$0069AB64]
0069A19F   DFE0                   fstsw   ax
0069A1A1   9E                     sahf
0069A1A2   0F86E1020000           jbe     0069A489
0069A1A8   8B06                   mov     eax, [esi]
0069A1AA   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Append(TDataSet);
|
0069A1B0   E8C713E5FF             call    004EB57C
0069A1B5   8B06                   mov     eax, [esi]
0069A1B7   8B80D4000000           mov     eax, [eax+$00D4]
0069A1BD   BAC4AB6900             mov     edx, $0069ABC4
0069A1C2   8B08                   mov     ecx, [eax]
0069A1C4   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A1CA   DB6DF0                 fld     tbyte ptr [ebp-$10]
0069A1CD   83C4F8                 add     esp, -$08
0069A1D0   DD1C24                 fstp    qword ptr [esp]
0069A1D3   9B                     wait
0069A1D4   A1F0AD7D00             mov     eax, dword ptr [$007DADF0]
0069A1D9   DB28                   fld     tbyte ptr [eax]
0069A1DB   83C4F8                 add     esp, -$08
0069A1DE   DD1C24                 fstp    qword ptr [esp]
0069A1E1   9B                     wait
0069A1E2   8D85F0FEFFFF           lea     eax, [ebp+$FFFFFEF0]

|
0069A1E8   E8FB9D1100             call    007B3FE8
0069A1ED   8B8DF0FEFFFF           mov     ecx, [ebp+$FFFFFEF0]
0069A1F3   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]

* Possible String Reference to: 'DESC.ITEM ANTER.'
|
0069A1F9   BAD0AB6900             mov     edx, $0069ABD0

* Reference to: System.@LStrCat3;
|
0069A1FE   E8A5B5D6FF             call    004057A8
0069A203   8B95F4FEFFFF           mov     edx, [ebp+$FFFFFEF4]
0069A209   8B06                   mov     eax, [esi]
0069A20B   8B80F0000000           mov     eax, [eax+$00F0]
0069A211   8B08                   mov     ecx, [eax]
0069A213   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A219   DB6DF0                 fld     tbyte ptr [ebp-$10]
0069A21C   83C4F8                 add     esp, -$08
0069A21F   DD1C24                 fstp    qword ptr [esp]
0069A222   9B                     wait
0069A223   A1F0AD7D00             mov     eax, dword ptr [$007DADF0]
0069A228   DB28                   fld     tbyte ptr [eax]
0069A22A   83C4F8                 add     esp, -$08
0069A22D   DD1C24                 fstp    qword ptr [esp]
0069A230   9B                     wait
0069A231   8D85E8FEFFFF           lea     eax, [ebp+$FFFFFEE8]

|
0069A237   E8AC9D1100             call    007B3FE8
0069A23C   8B8DE8FEFFFF           mov     ecx, [ebp+$FFFFFEE8]
0069A242   8D85ECFEFFFF           lea     eax, [ebp+$FFFFFEEC]

* Possible String Reference to: 'DESC.S/ITEM ANTER. '
|
0069A248   BAECAB6900             mov     edx, $0069ABEC

* Reference to: System.@LStrCat3;
|
0069A24D   E856B5D6FF             call    004057A8
0069A252   8B95ECFEFFFF           mov     edx, [ebp+$FFFFFEEC]
0069A258   8B06                   mov     eax, [esi]
0069A25A   8B80CC000000           mov     eax, [eax+$00CC]
0069A260   8B08                   mov     ecx, [eax]
0069A262   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A268   DB6DF0                 fld     tbyte ptr [ebp-$10]
0069A26B   D80D00AC6900           fmul    dword ptr [$0069AC00]
0069A271   83C4F4                 add     esp, -$0C
0069A274   DB3C24                 fstp    tbyte ptr [esp]
0069A277   9B                     wait
0069A278   8D95E4FEFFFF           lea     edx, [ebp+$FFFFFEE4]

* Possible String Reference to: '###,###,###,###,##0.00'
|
0069A27E   B80CAC6900             mov     eax, $0069AC0C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069A283   E8B432D7FF             call    0040D53C
0069A288   8B95E4FEFFFF           mov     edx, [ebp+$FFFFFEE4]
0069A28E   8B06                   mov     eax, [esi]
0069A290   8B80C0010000           mov     eax, [eax+$01C0]
0069A296   8B08                   mov     ecx, [eax]
0069A298   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A29E   8B06                   mov     eax, [esi]
0069A2A0   8B80C0000000           mov     eax, [eax+$00C0]
0069A2A6   8B10                   mov     edx, [eax]
0069A2A8   FF924C020000           call    dword ptr [edx+$024C]
0069A2AE   E9D6010000             jmp     0069A489
0069A2B3   8B06                   mov     eax, [esi]
0069A2B5   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
0069A2BB   E87811E5FF             call    004EB438
0069A2C0   8B06                   mov     eax, [esi]
0069A2C2   8B80F4000000           mov     eax, [eax+$00F4]
0069A2C8   8B10                   mov     edx, [eax]
0069A2CA   FF5254                 call    dword ptr [edx+$54]
0069A2CD   DD9DDCFEFFFF           fstp    qword ptr [ebp+$FFFFFEDC]
0069A2D3   9B                     wait
0069A2D4   8B07                   mov     eax, [edi]
0069A2D6   8B80D0050000           mov     eax, [eax+$05D0]
0069A2DC   8B10                   mov     edx, [eax]
0069A2DE   FF5254                 call    dword ptr [edx+$54]
0069A2E1   DC85DCFEFFFF           fadd    qword ptr [ebp+$FFFFFEDC]
0069A2E7   83C4F8                 add     esp, -$08
0069A2EA   DD1C24                 fstp    qword ptr [esp]
0069A2ED   9B                     wait
0069A2EE   B802000000             mov     eax, $00000002

|
0069A2F3   E80C701000             call    007A1304
0069A2F8   83C4F8                 add     esp, -$08
0069A2FB   DD1C24                 fstp    qword ptr [esp]
0069A2FE   9B                     wait
0069A2FF   8B06                   mov     eax, [esi]
0069A301   8B80F4000000           mov     eax, [eax+$00F4]
0069A307   8B10                   mov     edx, [eax]
0069A309   FF92A4000000           call    dword ptr [edx+$00A4]
0069A30F   8B06                   mov     eax, [esi]
0069A311   8B80C0010000           mov     eax, [eax+$01C0]
0069A317   8B10                   mov     edx, [eax]
0069A319   FF5254                 call    dword ptr [edx+$54]
0069A31C   DD9DDCFEFFFF           fstp    qword ptr [ebp+$FFFFFEDC]
0069A322   9B                     wait
0069A323   8B07                   mov     eax, [edi]
0069A325   8B80D8050000           mov     eax, [eax+$05D8]
0069A32B   8B10                   mov     edx, [eax]
0069A32D   FF5254                 call    dword ptr [edx+$54]
0069A330   DC85DCFEFFFF           fadd    qword ptr [ebp+$FFFFFEDC]
0069A336   83C4F8                 add     esp, -$08
0069A339   DD1C24                 fstp    qword ptr [esp]
0069A33C   9B                     wait
0069A33D   B802000000             mov     eax, $00000002

|
0069A342   E8BD6F1000             call    007A1304
0069A347   83C4F8                 add     esp, -$08
0069A34A   DD1C24                 fstp    qword ptr [esp]
0069A34D   9B                     wait
0069A34E   8B06                   mov     eax, [esi]
0069A350   8B80C0010000           mov     eax, [eax+$01C0]
0069A356   8B10                   mov     edx, [eax]
0069A358   FF92A4000000           call    dword ptr [edx+$00A4]
0069A35E   8B06                   mov     eax, [esi]
0069A360   8B802C020000           mov     eax, [eax+$022C]
0069A366   8B10                   mov     edx, [eax]
0069A368   FF5254                 call    dword ptr [edx+$54]
0069A36B   DB6DF0                 fld     tbyte ptr [ebp-$10]
0069A36E   DEC1                   faddp   st(1), st(0)
0069A370   83C4F8                 add     esp, -$08
0069A373   DD1C24                 fstp    qword ptr [esp]
0069A376   9B                     wait
0069A377   B802000000             mov     eax, $00000002

|
0069A37C   E8836F1000             call    007A1304
0069A381   83C4F8                 add     esp, -$08
0069A384   DD1C24                 fstp    qword ptr [esp]
0069A387   9B                     wait
0069A388   8B06                   mov     eax, [esi]
0069A38A   8B802C020000           mov     eax, [eax+$022C]
0069A390   8B10                   mov     edx, [eax]
0069A392   FF92A4000000           call    dword ptr [edx+$00A4]
0069A398   8B06                   mov     eax, [esi]
0069A39A   8B80C0000000           mov     eax, [eax+$00C0]
0069A3A0   8B10                   mov     edx, [eax]
0069A3A2   FF924C020000           call    dword ptr [edx+$024C]
0069A3A8   8B07                   mov     eax, [edi]
0069A3AA   8B80D8050000           mov     eax, [eax+$05D8]
0069A3B0   8B10                   mov     edx, [eax]
0069A3B2   FF5254                 call    dword ptr [edx+$54]
0069A3B5   A130B57D00             mov     eax, dword ptr [$007DB530]
0069A3BA   DB28                   fld     tbyte ptr [eax]
0069A3BC   DEC1                   faddp   st(1), st(0)
0069A3BE   A130B57D00             mov     eax, dword ptr [$007DB530]
0069A3C3   DB38                   fstp    tbyte ptr [eax]
0069A3C5   9B                     wait
0069A3C6   DB6D08                 fld     tbyte ptr [ebp+$08]
0069A3C9   D81D64AB6900           fcomp   dword ptr [$0069AB64]
0069A3CF   DFE0                   fstsw   ax
0069A3D1   9E                     sahf
0069A3D2   7611                   jbe     0069A3E5
0069A3D4   8B06                   mov     eax, [esi]
0069A3D6   8B802C020000           mov     eax, [eax+$022C]
0069A3DC   8B10                   mov     edx, [eax]
0069A3DE   FF5254                 call    dword ptr [edx+$54]
0069A3E1   DB7DF0                 fstp    tbyte ptr [ebp-$10]
0069A3E4   9B                     wait
0069A3E5   DB6DF0                 fld     tbyte ptr [ebp-$10]
0069A3E8   D81D64AB6900           fcomp   dword ptr [$0069AB64]
0069A3EE   DFE0                   fstsw   ax
0069A3F0   9E                     sahf
0069A3F1   0F8685000000           jbe     0069A47C
0069A3F7   8B06                   mov     eax, [esi]
0069A3F9   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0069A3FF   E8400FE5FF             call    004EB344
0069A404   8D95D8FEFFFF           lea     edx, [ebp+$FFFFFED8]
0069A40A   8B06                   mov     eax, [esi]
0069A40C   8B80D4000000           mov     eax, [eax+$00D4]
0069A412   8B08                   mov     ecx, [eax]
0069A414   FF5160                 call    dword ptr [ecx+$60]
0069A417   8B85D8FEFFFF           mov     eax, [ebp+$FFFFFED8]
0069A41D   BAC4AB6900             mov     edx, $0069ABC4

* Reference to: System.@LStrCmp;
|
0069A422   E881B4D6FF             call    004058A8
0069A427   7553                   jnz     0069A47C
0069A429   8B06                   mov     eax, [esi]
0069A42B   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
0069A431   E80210E5FF             call    004EB438
0069A436   DB6DF0                 fld     tbyte ptr [ebp-$10]
0069A439   D80D00AC6900           fmul    dword ptr [$0069AC00]
0069A43F   83C4F4                 add     esp, -$0C
0069A442   DB3C24                 fstp    tbyte ptr [esp]
0069A445   9B                     wait
0069A446   8D95D4FEFFFF           lea     edx, [ebp+$FFFFFED4]

* Possible String Reference to: '###,###,###,###,##0.00'
|
0069A44C   B80CAC6900             mov     eax, $0069AC0C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069A451   E8E630D7FF             call    0040D53C
0069A456   8B95D4FEFFFF           mov     edx, [ebp+$FFFFFED4]
0069A45C   8B06                   mov     eax, [esi]
0069A45E   8B80C0010000           mov     eax, [eax+$01C0]
0069A464   8B08                   mov     ecx, [eax]
0069A466   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A46C   8B06                   mov     eax, [esi]
0069A46E   8B80C0000000           mov     eax, [eax+$00C0]
0069A474   8B10                   mov     edx, [eax]
0069A476   FF924C020000           call    dword ptr [edx+$024C]
0069A47C   8B06                   mov     eax, [esi]
0069A47E   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Prior(TDataSet);
|
0069A484   E8E30EE5FF             call    004EB36C
0069A489   8B07                   mov     eax, [edi]
0069A48B   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0069A48E   E8B10EE5FF             call    004EB344
0069A493   8B07                   mov     eax, [edi]
0069A495   8B4074                 mov     eax, [eax+$74]
0069A498   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0069A49F   0F84E4F6FFFF           jz      00699B89
0069A4A5   A130B57D00             mov     eax, dword ptr [$007DB530]
0069A4AA   DB28                   fld     tbyte ptr [eax]
0069A4AC   DB6DE0                 fld     tbyte ptr [ebp-$20]
0069A4AF   DEE9                   fsubp   st(1), st(0)
0069A4B1   A130B57D00             mov     eax, dword ptr [$007DB530]
0069A4B6   DB38                   fstp    tbyte ptr [eax]
0069A4B8   9B                     wait
0069A4B9   8B06                   mov     eax, [esi]
0069A4BB   8B8090010000           mov     eax, [eax+$0190]
0069A4C1   8B10                   mov     edx, [eax]
0069A4C3   FF5254                 call    dword ptr [edx+$54]
0069A4C6   8B45FC                 mov     eax, [ebp-$04]
0069A4C9   DBB810040000           fstp    tbyte ptr [eax+$0410]
0069A4CF   9B                     wait
0069A4D0   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmFecha.ckPrcServ : TCheckBox
|
0069A4D3   8B8058030000           mov     eax, [eax+$0358]
0069A4D9   8B10                   mov     edx, [eax]

* Reference to method TCheckBox.GetChecked()
|
0069A4DB   FF92C8000000           call    dword ptr [edx+$00C8]
0069A4E1   84C0                   test    al, al
0069A4E3   0F84EE000000           jz      0069A5D7
0069A4E9   8B45FC                 mov     eax, [ebp-$04]
0069A4EC   DBA810040000           fld     tbyte ptr [eax+$0410]
0069A4F2   D81D64AB6900           fcomp   dword ptr [$0069AB64]
0069A4F8   DFE0                   fstsw   ax
0069A4FA   9E                     sahf
0069A4FB   0F86D6000000           jbe     0069A5D7
0069A501   8B45FC                 mov     eax, [ebp-$04]
0069A504   DBA810040000           fld     tbyte ptr [eax+$0410]
0069A50A   D90568AB6900           fld     dword ptr [$0069AB68]

* Reference to: System.@FSafeDivide;
|
0069A510   E8EB8FD6FF             call    00403500
0069A515   A130B57D00             mov     eax, dword ptr [$007DB530]
0069A51A   DB28                   fld     tbyte ptr [eax]
0069A51C   DEC9                   fmulp   st(1), st(0)
0069A51E   8B45FC                 mov     eax, [ebp-$04]
0069A521   DBB820040000           fstp    tbyte ptr [eax+$0420]
0069A527   9B                     wait
0069A528   8B06                   mov     eax, [esi]
0069A52A   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Append(TDataSet);
|
0069A530   E84710E5FF             call    004EB57C
0069A535   8B06                   mov     eax, [esi]
0069A537   8B80D4000000           mov     eax, [eax+$00D4]
0069A53D   BA2CAC6900             mov     edx, $0069AC2C
0069A542   8B08                   mov     ecx, [eax]
0069A544   FF91B0000000           call    dword ptr [ecx+$00B0]

* Possible String Reference to: 'SERVICO DE MESA ('
|
0069A54A   6838AC6900             push    $0069AC38
0069A54F   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TfrmFecha.OFFS_0418
|
0069A552   668B9018040000         mov     dx, word ptr [eax+$0418]
0069A559   52                     push    edx
0069A55A   FFB014040000           push    dword ptr [eax+$0414]
0069A560   FFB010040000           push    dword ptr [eax+$0410]
0069A566   8D95CCFEFFFF           lea     edx, [ebp+$FFFFFECC]

* Possible String Reference to: '#0.## %'
|
0069A56C   B854AC6900             mov     eax, $0069AC54

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069A571   E8C62FD7FF             call    0040D53C
0069A576   FFB5CCFEFFFF           push    dword ptr [ebp+$FFFFFECC]
0069A57C   6864AC6900             push    $0069AC64
0069A581   8D85D0FEFFFF           lea     eax, [ebp+$FFFFFED0]
0069A587   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0069A58C   E88BB2D6FF             call    0040581C
0069A591   8B95D0FEFFFF           mov     edx, [ebp+$FFFFFED0]
0069A597   8B06                   mov     eax, [esi]
0069A599   8B80CC000000           mov     eax, [eax+$00CC]
0069A59F   8B08                   mov     ecx, [eax]
0069A5A1   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A5A7   8B45FC                 mov     eax, [ebp-$04]
0069A5AA   DBA820040000           fld     tbyte ptr [eax+$0420]
0069A5B0   83C4F8                 add     esp, -$08
0069A5B3   DD1C24                 fstp    qword ptr [esp]
0069A5B6   9B                     wait
0069A5B7   8B06                   mov     eax, [esi]
0069A5B9   8B80C0010000           mov     eax, [eax+$01C0]
0069A5BF   8B10                   mov     edx, [eax]
0069A5C1   FF92A4000000           call    dword ptr [edx+$00A4]
0069A5C7   8B06                   mov     eax, [esi]
0069A5C9   8B80C0000000           mov     eax, [eax+$00C0]
0069A5CF   8B10                   mov     edx, [eax]
0069A5D1   FF924C020000           call    dword ptr [edx+$024C]
0069A5D7   8B06                   mov     eax, [esi]
0069A5D9   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Append(TDataSet);
|
0069A5DF   E8980FE5FF             call    004EB57C
0069A5E4   8B06                   mov     eax, [esi]
0069A5E6   8B80D4000000           mov     eax, [eax+$00D4]
0069A5EC   BA70AC6900             mov     edx, $0069AC70
0069A5F1   8B08                   mov     ecx, [eax]
0069A5F3   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A5F9   8B06                   mov     eax, [esi]
0069A5FB   8B80CC000000           mov     eax, [eax+$00CC]

* Possible String Reference to: 'TOTAL GERAL'
|
0069A601   BA7CAC6900             mov     edx, $0069AC7C
0069A606   8B08                   mov     ecx, [eax]
0069A608   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A60E   A130B57D00             mov     eax, dword ptr [$007DB530]
0069A613   DB28                   fld     tbyte ptr [eax]
0069A615   8B45FC                 mov     eax, [ebp-$04]
0069A618   DBA820040000           fld     tbyte ptr [eax+$0420]
0069A61E   DEC1                   faddp   st(1), st(0)
0069A620   83C4F8                 add     esp, -$08
0069A623   DD1C24                 fstp    qword ptr [esp]
0069A626   9B                     wait
0069A627   8B06                   mov     eax, [esi]
0069A629   8B80C0010000           mov     eax, [eax+$01C0]
0069A62F   8B10                   mov     edx, [eax]
0069A631   FF92A4000000           call    dword ptr [edx+$00A4]
0069A637   8B06                   mov     eax, [esi]
0069A639   8B80C0000000           mov     eax, [eax+$00C0]
0069A63F   8B10                   mov     edx, [eax]
0069A641   FF924C020000           call    dword ptr [edx+$024C]
0069A647   8B06                   mov     eax, [esi]
0069A649   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DB.TDataSet.First(TDataSet);
|
0069A64F   E8D809E5FF             call    004EB02C
0069A654   E990020000             jmp     0069A8E9
0069A659   8B06                   mov     eax, [esi]
0069A65B   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Append(TDataSet);
|
0069A661   E8160FE5FF             call    004EB57C
0069A666   8B06                   mov     eax, [esi]
0069A668   8B80D4000000           mov     eax, [eax+$00D4]
0069A66E   BA90AC6900             mov     edx, $0069AC90
0069A673   8B08                   mov     ecx, [eax]
0069A675   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A67B   8D95C8FEFFFF           lea     edx, [ebp+$FFFFFEC8]
0069A681   8B06                   mov     eax, [esi]
0069A683   8B8054010000           mov     eax, [eax+$0154]
0069A689   8B08                   mov     ecx, [eax]
0069A68B   FF5160                 call    dword ptr [ecx+$60]
0069A68E   8B95C8FEFFFF           mov     edx, [ebp+$FFFFFEC8]
0069A694   8B06                   mov     eax, [esi]
0069A696   8B80FC000000           mov     eax, [eax+$00FC]
0069A69C   8B08                   mov     ecx, [eax]
0069A69E   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A6A4   8D95C4FEFFFF           lea     edx, [ebp+$FFFFFEC4]
0069A6AA   8B06                   mov     eax, [esi]
0069A6AC   8B80B8010000           mov     eax, [eax+$01B8]
0069A6B2   8B08                   mov     ecx, [eax]
0069A6B4   FF5160                 call    dword ptr [ecx+$60]
0069A6B7   8B95C4FEFFFF           mov     edx, [ebp+$FFFFFEC4]
0069A6BD   8B06                   mov     eax, [esi]
0069A6BF   8B80B4010000           mov     eax, [eax+$01B4]
0069A6C5   8B08                   mov     ecx, [eax]
0069A6C7   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A6CD   A06CAB6900             mov     al, byte ptr [$0069AB6C]
0069A6D2   50                     push    eax
0069A6D3   8D95B0FEFFFF           lea     edx, [ebp+$FFFFFEB0]
0069A6D9   8B06                   mov     eax, [esi]
0069A6DB   8B80FC000000           mov     eax, [eax+$00FC]
0069A6E1   8B08                   mov     ecx, [eax]
0069A6E3   FF5160                 call    dword ptr [ecx+$60]
0069A6E6   8B95B0FEFFFF           mov     edx, [ebp+$FFFFFEB0]
0069A6EC   8D85B4FEFFFF           lea     eax, [ebp+$FFFFFEB4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0069A6F2   E8CDE5D7FF             call    00418CC4
0069A6F7   8D8DB4FEFFFF           lea     ecx, [ebp+$FFFFFEB4]
0069A6FD   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0069A702   8B00                   mov     eax, [eax]
0069A704   8B8068050000           mov     eax, [eax+$0568]

* Possible String Reference to: 'TIPOPGTO'
|
0069A70A   BA9CAC6900             mov     edx, $0069AC9C

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
0069A70F   E8E4DC1000             call    007A83F8
0069A714   84C0                   test    al, al
0069A716   745C                   jz      0069A774
0069A718   8D95ACFEFFFF           lea     edx, [ebp+$FFFFFEAC]
0069A71E   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0069A723   8B00                   mov     eax, [eax]
0069A725   8B8070050000           mov     eax, [eax+$0570]
0069A72B   8B08                   mov     ecx, [eax]
0069A72D   FF5160                 call    dword ptr [ecx+$60]
0069A730   8B95ACFEFFFF           mov     edx, [ebp+$FFFFFEAC]
0069A736   8B06                   mov     eax, [esi]
0069A738   8B80CC000000           mov     eax, [eax+$00CC]
0069A73E   8B08                   mov     ecx, [eax]
0069A740   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A746   8D95A8FEFFFF           lea     edx, [ebp+$FFFFFEA8]
0069A74C   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0069A751   8B00                   mov     eax, [eax]
0069A753   8B8070050000           mov     eax, [eax+$0570]
0069A759   8B08                   mov     ecx, [eax]
0069A75B   FF5160                 call    dword ptr [ecx+$60]
0069A75E   8B95A8FEFFFF           mov     edx, [ebp+$FFFFFEA8]
0069A764   8B06                   mov     eax, [esi]
0069A766   8B80F0000000           mov     eax, [eax+$00F0]
0069A76C   8B08                   mov     ecx, [eax]
0069A76E   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A774   8B06                   mov     eax, [esi]
0069A776   8B8068010000           mov     eax, [eax+$0168]
0069A77C   8B10                   mov     edx, [eax]
0069A77E   FF5258                 call    dword ptr [edx+$58]
0069A781   8BD0                   mov     edx, eax
0069A783   8B06                   mov     eax, [esi]
0069A785   8B8000010000           mov     eax, [eax+$0100]
0069A78B   8B08                   mov     ecx, [eax]
0069A78D   FF91A8000000           call    dword ptr [ecx+$00A8]
0069A793   8B06                   mov     eax, [esi]
0069A795   8B806C010000           mov     eax, [eax+$016C]
0069A79B   8B10                   mov     edx, [eax]
0069A79D   FF5258                 call    dword ptr [edx+$58]
0069A7A0   8BD0                   mov     edx, eax
0069A7A2   8B06                   mov     eax, [esi]
0069A7A4   8B8004010000           mov     eax, [eax+$0104]
0069A7AA   8B08                   mov     ecx, [eax]
0069A7AC   FF91A8000000           call    dword ptr [ecx+$00A8]
0069A7B2   8D95A4FEFFFF           lea     edx, [ebp+$FFFFFEA4]
0069A7B8   8B06                   mov     eax, [esi]
0069A7BA   8B8074010000           mov     eax, [eax+$0174]
0069A7C0   8B08                   mov     ecx, [eax]
0069A7C2   FF5160                 call    dword ptr [ecx+$60]
0069A7C5   8B95A4FEFFFF           mov     edx, [ebp+$FFFFFEA4]
0069A7CB   8B06                   mov     eax, [esi]
0069A7CD   8B800C010000           mov     eax, [eax+$010C]
0069A7D3   8B08                   mov     ecx, [eax]
0069A7D5   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A7DB   8D95A0FEFFFF           lea     edx, [ebp+$FFFFFEA0]
0069A7E1   8B06                   mov     eax, [esi]
0069A7E3   8B8070010000           mov     eax, [eax+$0170]
0069A7E9   8B08                   mov     ecx, [eax]
0069A7EB   FF5160                 call    dword ptr [ecx+$60]
0069A7EE   8B95A0FEFFFF           mov     edx, [ebp+$FFFFFEA0]
0069A7F4   8B06                   mov     eax, [esi]
0069A7F6   8B8008010000           mov     eax, [eax+$0108]
0069A7FC   8B08                   mov     ecx, [eax]
0069A7FE   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A804   8D959CFEFFFF           lea     edx, [ebp+$FFFFFE9C]
0069A80A   8B06                   mov     eax, [esi]
0069A80C   8B807C010000           mov     eax, [eax+$017C]
0069A812   8B08                   mov     ecx, [eax]
0069A814   FF5160                 call    dword ptr [ecx+$60]
0069A817   8B959CFEFFFF           mov     edx, [ebp+$FFFFFE9C]
0069A81D   8B06                   mov     eax, [esi]
0069A81F   8B8010010000           mov     eax, [eax+$0110]
0069A825   8B08                   mov     ecx, [eax]
0069A827   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A82D   8D9598FEFFFF           lea     edx, [ebp+$FFFFFE98]
0069A833   8B06                   mov     eax, [esi]
0069A835   8B8078010000           mov     eax, [eax+$0178]
0069A83B   8B08                   mov     ecx, [eax]
0069A83D   FF5160                 call    dword ptr [ecx+$60]
0069A840   8B9598FEFFFF           mov     edx, [ebp+$FFFFFE98]
0069A846   8B06                   mov     eax, [esi]
0069A848   8B8064010000           mov     eax, [eax+$0164]
0069A84E   8B08                   mov     ecx, [eax]
0069A850   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A856   8D9594FEFFFF           lea     edx, [ebp+$FFFFFE94]
0069A85C   8B06                   mov     eax, [esi]
0069A85E   8B8080010000           mov     eax, [eax+$0180]
0069A864   8B08                   mov     ecx, [eax]
0069A866   FF5160                 call    dword ptr [ecx+$60]
0069A869   8B9594FEFFFF           mov     edx, [ebp+$FFFFFE94]
0069A86F   8B06                   mov     eax, [esi]
0069A871   8B8014010000           mov     eax, [eax+$0114]
0069A877   8B08                   mov     ecx, [eax]
0069A879   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A87F   8D9590FEFFFF           lea     edx, [ebp+$FFFFFE90]
0069A885   8B06                   mov     eax, [esi]
0069A887   8B8088010000           mov     eax, [eax+$0188]
0069A88D   8B08                   mov     ecx, [eax]
0069A88F   FF5160                 call    dword ptr [ecx+$60]
0069A892   8B9590FEFFFF           mov     edx, [ebp+$FFFFFE90]
0069A898   8B06                   mov     eax, [esi]
0069A89A   8B8018010000           mov     eax, [eax+$0118]
0069A8A0   8B08                   mov     ecx, [eax]
0069A8A2   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A8A8   8B06                   mov     eax, [esi]
0069A8AA   8B805C010000           mov     eax, [eax+$015C]
0069A8B0   8B10                   mov     edx, [eax]
0069A8B2   FF5254                 call    dword ptr [edx+$54]
0069A8B5   83C4F8                 add     esp, -$08
0069A8B8   DD1C24                 fstp    qword ptr [esp]
0069A8BB   9B                     wait
0069A8BC   8B06                   mov     eax, [esi]
0069A8BE   8B80C0010000           mov     eax, [eax+$01C0]
0069A8C4   8B10                   mov     edx, [eax]
0069A8C6   FF92A4000000           call    dword ptr [edx+$00A4]
0069A8CC   8B06                   mov     eax, [esi]
0069A8CE   8B80C0000000           mov     eax, [eax+$00C0]
0069A8D4   8B10                   mov     edx, [eax]
0069A8D6   FF924C020000           call    dword ptr [edx+$024C]
0069A8DC   8B06                   mov     eax, [esi]
0069A8DE   8B804C010000           mov     eax, [eax+$014C]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0069A8E4   E85B0AE5FF             call    004EB344
0069A8E9   8B06                   mov     eax, [esi]
0069A8EB   8B804C010000           mov     eax, [eax+$014C]
0069A8F1   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0069A8F8   0F845BFDFFFF           jz      0069A659
0069A8FE   8D9580FEFFFF           lea     edx, [ebp+$FFFFFE80]
0069A904   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmFecha.EdTroco : TJvValidateEdit
|
0069A907   8B8050030000           mov     eax, [eax+$0350]

|
0069A90D   E8A688FBFF             call    006531B8
0069A912   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]
0069A918   50                     push    eax
0069A919   8D8570FEFFFF           lea     eax, [ebp+$FFFFFE70]
0069A91F   33D2                   xor     edx, edx
0069A921   B101                   mov     cl, $01

|
0069A923   E848E1D7FF             call    00418A70
0069A928   8D9570FEFFFF           lea     edx, [ebp+$FFFFFE70]
0069A92E   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
0069A92F   E81028D8FF             call    0041D144
0069A934   7E7D                   jle     0069A9B3
0069A936   8B06                   mov     eax, [esi]
0069A938   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Append(TDataSet);
|
0069A93E   E8390CE5FF             call    004EB57C
0069A943   8B06                   mov     eax, [esi]
0069A945   8B80D4000000           mov     eax, [eax+$00D4]
0069A94B   BAB0AC6900             mov     edx, $0069ACB0
0069A950   8B08                   mov     ecx, [eax]
0069A952   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A958   8B06                   mov     eax, [esi]
0069A95A   8B80CC000000           mov     eax, [eax+$00CC]

* Possible String Reference to: 'TROCO'
|
0069A960   BABCAC6900             mov     edx, $0069ACBC
0069A965   8B08                   mov     ecx, [eax]
0069A967   FF91B0000000           call    dword ptr [ecx+$00B0]
0069A96D   8D9560FEFFFF           lea     edx, [ebp+$FFFFFE60]
0069A973   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmFecha.EdTroco : TJvValidateEdit
|
0069A976   8B8050030000           mov     eax, [eax+$0350]

|
0069A97C   E83788FBFF             call    006531B8
0069A981   8D8560FEFFFF           lea     eax, [ebp+$FFFFFE60]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0069A987   E85CC2D7FF             call    00416BE8
0069A98C   83C4F8                 add     esp, -$08
0069A98F   DD1C24                 fstp    qword ptr [esp]
0069A992   9B                     wait
0069A993   8B06                   mov     eax, [esi]
0069A995   8B80C0010000           mov     eax, [eax+$01C0]
0069A99B   8B10                   mov     edx, [eax]
0069A99D   FF92A4000000           call    dword ptr [edx+$00A4]
0069A9A3   8B06                   mov     eax, [esi]
0069A9A5   8B80C0000000           mov     eax, [eax+$00C0]
0069A9AB   8B10                   mov     edx, [eax]
0069A9AD   FF924C020000           call    dword ptr [edx+$024C]
0069A9B3   C645FB01               mov     byte ptr [ebp-$05], $01
0069A9B7   33C0                   xor     eax, eax
0069A9B9   5A                     pop     edx
0069A9BA   59                     pop     ecx
0069A9BB   59                     pop     ecx
0069A9BC   648910                 mov     fs:[eax], edx
0069A9BF   EB41                   jmp     0069AA02

* Reference to: System.@HandleOnException;
|
0069A9C1   E9EAA1D6FF             jmp     00404BB0
0069A9C6   0100                   add     [eax], eax
0069A9C8   0000                   add     [eax], al
0069A9CA   40                     inc     eax
0069A9CB   95                     xchg    eax, ebp
0069A9CC   40                     inc     eax
0069A9CD   00D2                   add     dl, dl
0069A9CF   A9690089C3             test    eax, $C3890069
0069A9D4   6A00                   push    $00
0069A9D6   8B4B04                 mov     ecx, [ebx+$04]
0069A9D9   8D855CFEFFFF           lea     eax, [ebp+$FFFFFE5C]

* Possible String Reference to: 'Erro ao Preencher o Cupom!'
|
0069A9DF   BACCAC6900             mov     edx, $0069ACCC

* Reference to: System.@LStrCat3;
|
0069A9E4   E8BFADD6FF             call    004057A8
0069A9E9   8B855CFEFFFF           mov     eax, [ebp+$FFFFFE5C]
0069A9EF   668B0DECAC6900         mov     cx, word ptr [$0069ACEC]
0069A9F6   B201                   mov     dl, $01

|
0069A9F8   E82F91DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069A9FD   E8AEA4D6FF             call    00404EB0

****** END
|
0069AA02   33C0                   xor     eax, eax
0069AA04   5A                     pop     edx
0069AA05   59                     pop     ecx
0069AA06   59                     pop     ecx
0069AA07   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069AA0A   6817AA6900             push    $0069AA17
0069AA0F   C3                     ret


* Reference to: System.@HandleFinally;
|
0069AA10   E923A3D6FF             jmp     00404D38
0069AA15   EBF8                   jmp     0069AA0F

****** END
|
0069AA17   33C0                   xor     eax, eax
0069AA19   5A                     pop     edx
0069AA1A   59                     pop     ecx
0069AA1B   59                     pop     ecx
0069AA1C   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069AA1F   680CAB6900             push    $0069AB0C
0069AA24   8D855CFEFFFF           lea     eax, [ebp+$FFFFFE5C]

* Reference to: System.@LStrClr(void;void);
|
0069AA2A   E86DAAD6FF             call    0040549C
0069AA2F   8D8560FEFFFF           lea     eax, [ebp+$FFFFFE60]

* Reference to object Variant
|
0069AA35   8B1524114000           mov     edx, [$00401124]
0069AA3B   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069AA40   E857B6D6FF             call    0040609C
0069AA45   8D8590FEFFFF           lea     eax, [ebp+$FFFFFE90]
0069AA4B   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069AA50   E86BAAD6FF             call    004054C0
0069AA55   8D85B4FEFFFF           lea     eax, [ebp+$FFFFFEB4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0069AA5B   E8189BD7FF             call    00414578
0069AA60   8D85C4FEFFFF           lea     eax, [ebp+$FFFFFEC4]
0069AA66   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069AA6B   E850AAD6FF             call    004054C0
0069AA70   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]
0069AA76   BA0E000000             mov     edx, $0000000E

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069AA7B   E840AAD6FF             call    004054C0
0069AA80   8D851CFFFFFF           lea     eax, [ebp+$FFFFFF1C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0069AA86   E8ED9AD7FF             call    00414578
0069AA8B   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: System.@LStrClr(void;void);
|
0069AA91   E806AAD6FF             call    0040549C
0069AA96   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]

* Reference to object Variant
|
0069AA9C   8B1524114000           mov     edx, [$00401124]
0069AAA2   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069AAA7   E8F0B5D6FF             call    0040609C
0069AAAC   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]
0069AAB2   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069AAB7   E804AAD6FF             call    004054C0
0069AABC   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0069AAC2   E8B19AD7FF             call    00414578
0069AAC7   8D4580                 lea     eax, [ebp-$80]

* Reference to: System.@LStrClr(void;void);
|
0069AACA   E8CDA9D6FF             call    0040549C
0069AACF   8D4584                 lea     eax, [ebp-$7C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0069AAD2   E8A19AD7FF             call    00414578
0069AAD7   8D45B4                 lea     eax, [ebp-$4C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0069AADA   E8999AD7FF             call    00414578
0069AADF   8D45C4                 lea     eax, [ebp-$3C]
0069AAE2   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069AAE7   E8D4A9D6FF             call    004054C0
0069AAEC   8D45D4                 lea     eax, [ebp-$2C]

* Reference to: System.@LStrClr(void;void);
|
0069AAEF   E8A8A9D6FF             call    0040549C
0069AAF4   8D45D8                 lea     eax, [ebp-$28]
0069AAF7   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069AAFC   E8BFA9D6FF             call    004054C0
0069AB01   C3                     ret


* Reference to: System.@HandleFinally;
|
0069AB02   E931A2D6FF             jmp     00404D38
0069AB07   E918FFFFFF             jmp     0069AA24

****** END
|
0069AB0C   8A45FB                 mov     al, byte ptr [ebp-$05]
0069AB0F   5F                     pop     edi
0069AB10   5E                     pop     esi
0069AB11   5B                     pop     ebx
0069AB12   8BE5                   mov     esp, ebp
0069AB14   5D                     pop     ebp
0069AB15   C20C00                 ret     $000C

*)
end;

procedure TfrmFecha._PROC_0069AB02(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069AB02   E931A2D6FF             jmp     00404D38

|
0069AB07   E918FFFFFF             jmp     0069AA24
0069AB0C   8A45FB                 mov     al, byte ptr [ebp-$05]
0069AB0F   5F                     pop     edi
0069AB10   5E                     pop     esi
0069AB11   5B                     pop     ebx
0069AB12   8BE5                   mov     esp, ebp
0069AB14   5D                     pop     ebp
0069AB15   C20C00                 ret     $000C

*)
end;

procedure TfrmFecha._PROC_0069AB81(Sender : TObject);
begin
(*
0069AB81   6E                     outsb
0069AB82   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
0069AB8A   FFFF                   DB  $FF, $FF  //      
0069AB8C   0100                   add     [eax], eax
0069AB8E   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069AB9D(Sender : TObject);
begin
(*
0069AB9D   6E                     outsb
0069AB9E   69644D65643B5174       imul    esp, [ebp+ecx*2+$65], $74513B64
0069ABA6   646555                 push    ebp
0069ABA9   6E                     outsb
0069ABAA   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
0069ABB2   FFFF                   DB  $FF, $FF  //      
0069ABB4   0100                   add     [eax], eax
0069ABB6   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069ACF1(Sender : TObject);
begin
(*
0069ACF1   8BEC                   mov     ebp, esp
0069ACF3   B90A000000             mov     ecx, $0000000A
0069ACF8   6A00                   push    $00
0069ACFA   6A00                   push    $00
0069ACFC   49                     dec     ecx
0069ACFD   75F9                   jnz     0069ACF8
0069ACFF   53                     push    ebx
0069AD00   56                     push    esi
0069AD01   57                     push    edi
0069AD02   8BF0                   mov     esi, eax
0069AD04   33C0                   xor     eax, eax
0069AD06   55                     push    ebp
0069AD07   6867B06900             push    $0069B067

***** TRY
|
0069AD0C   64FF30                 push    dword ptr fs:[eax]
0069AD0F   648920                 mov     fs:[eax], esp
0069AD12   C645FF00               mov     byte ptr [ebp-$01], $00

|
0069AD16   E8FDAD1000             call    007A5B18
0069AD1B   33C0                   xor     eax, eax
0069AD1D   55                     push    ebp
0069AD1E   6823B06900             push    $0069B023

***** TRY
|
0069AD23   64FF30                 push    dword ptr fs:[eax]
0069AD26   648920                 mov     fs:[eax], esp
0069AD29   33C0                   xor     eax, eax
0069AD2B   55                     push    ebp
0069AD2C   68D5AF6900             push    $0069AFD5

***** TRY
|
0069AD31   64FF30                 push    dword ptr fs:[eax]
0069AD34   648920                 mov     fs:[eax], esp
0069AD37   8BC6                   mov     eax, esi

|
0069AD39   E8EE030000             call    0069B12C
0069AD3E   84C0                   test    al, al
0069AD40   0F8485020000           jz      0069AFCB
0069AD46   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TfrmFecha.EdPrcDesc : TJvValidateEdit
|
0069AD49   8B86E4030000           mov     eax, [esi+$03E4]

|
0069AD4F   E86484FBFF             call    006531B8
0069AD54   8D45D0                 lea     eax, [ebp-$30]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0069AD57   E88CBED7FF             call    00416BE8
0069AD5C   83C4F4                 add     esp, -$0C
0069AD5F   DB3C24                 fstp    tbyte ptr [esp]
0069AD62   9B                     wait
0069AD63   8BC6                   mov     eax, esi

|
0069AD65   E8EAECFFFF             call    00699A54
0069AD6A   84C0                   test    al, al
0069AD6C   0F8459020000           jz      0069AFCB
0069AD72   8D45F8                 lea     eax, [ebp-$08]
0069AD75   8B15DCAD7D00           mov     edx, [$007DADDC]
0069AD7B   8B12                   mov     edx, [edx]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
0069AD7D   E8B2A7D6FF             call    00405534
0069AD82   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'VE'
|
0069AD85   BA80B06900             mov     edx, $0069B080

* Reference to: System.@LStrLAsg(void;void;void;void);
|
0069AD8A   E8A5A7D6FF             call    00405534
0069AD8F   A150AD7D00             mov     eax, dword ptr [$007DAD50]
0069AD94   8B10                   mov     edx, [eax]
0069AD96   8955E8                 mov     [ebp-$18], edx
0069AD99   8B5004                 mov     edx, [eax+$04]
0069AD9C   8955EC                 mov     [ebp-$14], edx
0069AD9F   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'CUPOM'
|
0069ADA2   BA8CB06900             mov     edx, $0069B08C

* Reference to: System.@LStrLAsg(void;void;void;void);
|
0069ADA7   E888A7D6FF             call    00405534
0069ADAC   8D45E0                 lea     eax, [ebp-$20]

|
0069ADAF   E8982C0100             call    006ADA4C
0069ADB4   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]
0069ADB9   BA9CB06900             mov     edx, $0069B09C

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069ADBE   E82DA7D6FF             call    004054F0
0069ADC3   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069ADC8   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
0069ADCA   BAA8B06900             mov     edx, $0069B0A8

* Reference to: System.@LStrCmp;
|
0069ADCF   E8D4AAD6FF             call    004058A8
0069ADD4   A108AF7D00             mov     eax, dword ptr [$007DAF08]
0069ADD9   0F9400                 setz    byte ptr [eax]

|
0069ADDC   E8670E0100             call    006ABC48
0069ADE1   33DB                   xor     ebx, ebx
0069ADE3   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069ADE8   8B00                   mov     eax, [eax]

* Possible String Reference to: 'nenhuma'
|
0069ADEA   BABCB06900             mov     edx, $0069B0BC

* Reference to: System.@LStrCmp;
|
0069ADEF   E8B4AAD6FF             call    004058A8
0069ADF4   7558                   jnz     0069AE4E
0069ADF6   8B45E4                 mov     eax, [ebp-$1C]
0069ADF9   50                     push    eax
0069ADFA   8B45E0                 mov     eax, [ebp-$20]
0069ADFD   50                     push    eax
0069ADFE   6A00                   push    $00
0069AE00   FF75EC                 push    dword ptr [ebp-$14]
0069AE03   FF75E8                 push    dword ptr [ebp-$18]
0069AE06   8D55C8                 lea     edx, [ebp-$38]

* Possible String Reference to: 'dd/mm/yyyy'
|
0069AE09   B8CCB06900             mov     eax, $0069B0CC

|
0069AE0E   E8C53AD7FF             call    0040E8D8
0069AE13   8B4DC8                 mov     ecx, [ebp-$38]
0069AE16   8B55F4                 mov     edx, [ebp-$0C]
0069AE19   8B45F8                 mov     eax, [ebp-$08]

|
0069AE1C   E8D36F1100             call    007B1DF4
0069AE21   8D55CC                 lea     edx, [ebp-$34]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0069AE24   E83BFFD6FF             call    0040AD64
0069AE29   8B55CC                 mov     edx, [ebp-$34]
0069AE2C   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069AE31   E8BAA6D6FF             call    004054F0
0069AE36   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]
0069AE3B   8B00                   mov     eax, [eax]
0069AE3D   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
0069AE3F   E8C800D7FF             call    0040AF0C
0069AE44   85C0                   test    eax, eax
0069AE46   0F9FC3                 setnle  bl
0069AE49   E908010000             jmp     0069AF56
0069AE4E   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069AE53   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
0069AE55   BAE0B06900             mov     edx, $0069B0E0

* Reference to: System.@LStrCmp;
|
0069AE5A   E849AAD6FF             call    004058A8
0069AE5F   7564                   jnz     0069AEC5
0069AE61   8B45E4                 mov     eax, [ebp-$1C]
0069AE64   50                     push    eax
0069AE65   8B45E0                 mov     eax, [ebp-$20]
0069AE68   50                     push    eax
0069AE69   6A00                   push    $00
0069AE6B   FF75EC                 push    dword ptr [ebp-$14]
0069AE6E   FF75E8                 push    dword ptr [ebp-$18]
0069AE71   8D55C0                 lea     edx, [ebp-$40]

* Possible String Reference to: 'dd/mm/yyyy'
|
0069AE74   B8CCB06900             mov     eax, $0069B0CC

|
0069AE79   E85A3AD7FF             call    0040E8D8
0069AE7E   8B4DC0                 mov     ecx, [ebp-$40]
0069AE81   8B55F4                 mov     edx, [ebp-$0C]
0069AE84   8B45F8                 mov     eax, [ebp-$08]

|
0069AE87   E8686F1100             call    007B1DF4
0069AE8C   8D55C4                 lea     edx, [ebp-$3C]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0069AE8F   E8D0FED6FF             call    0040AD64
0069AE94   8B55C4                 mov     edx, [ebp-$3C]
0069AE97   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069AE9C   E84FA6D6FF             call    004054F0
0069AEA1   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]
0069AEA6   8B00                   mov     eax, [eax]
0069AEA8   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
0069AEAA   E85D00D7FF             call    0040AF0C
0069AEAF   85C0                   test    eax, eax
0069AEB1   0F8E9F000000           jle     0069AF56
0069AEB7   8BC6                   mov     eax, esi

|
0069AEB9   E8B6040000             call    0069B374
0069AEBE   8BD8                   mov     ebx, eax
0069AEC0   E991000000             jmp     0069AF56
0069AEC5   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069AECA   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
0069AECC   BAF0B06900             mov     edx, $0069B0F0

* Reference to: System.@LStrCmp;
|
0069AED1   E8D2A9D6FF             call    004058A8
0069AED6   755D                   jnz     0069AF35
0069AED8   8B45E4                 mov     eax, [ebp-$1C]
0069AEDB   50                     push    eax
0069AEDC   8B45E0                 mov     eax, [ebp-$20]
0069AEDF   50                     push    eax
0069AEE0   6A00                   push    $00
0069AEE2   FF75EC                 push    dword ptr [ebp-$14]
0069AEE5   FF75E8                 push    dword ptr [ebp-$18]
0069AEE8   8D55B8                 lea     edx, [ebp-$48]

* Possible String Reference to: 'dd/mm/yyyy'
|
0069AEEB   B8CCB06900             mov     eax, $0069B0CC

|
0069AEF0   E8E339D7FF             call    0040E8D8
0069AEF5   8B4DB8                 mov     ecx, [ebp-$48]
0069AEF8   8B55F4                 mov     edx, [ebp-$0C]
0069AEFB   8B45F8                 mov     eax, [ebp-$08]

|
0069AEFE   E8F16E1100             call    007B1DF4
0069AF03   8D55BC                 lea     edx, [ebp-$44]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0069AF06   E859FED6FF             call    0040AD64
0069AF0B   8B55BC                 mov     edx, [ebp-$44]
0069AF0E   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069AF13   E8D8A5D6FF             call    004054F0
0069AF18   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]
0069AF1D   8B00                   mov     eax, [eax]
0069AF1F   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
0069AF21   E8E6FFD6FF             call    0040AF0C
0069AF26   85C0                   test    eax, eax
0069AF28   7E2C                   jle     0069AF56
0069AF2A   8BC6                   mov     eax, esi

* Reference to : TfrmFecha._PROC_0069DAF4()
|
0069AF2C   E8C32B0000             call    0069DAF4
0069AF31   8BD8                   mov     ebx, eax
0069AF33   EB21                   jmp     0069AF56
0069AF35   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
0069AF3A   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
0069AF3C   BAA8B06900             mov     edx, $0069B0A8

* Reference to: System.@LStrCmp;
|
0069AF41   E862A9D6FF             call    004058A8
0069AF46   750E                   jnz     0069AF56
0069AF48   8BC6                   mov     eax, esi

|
0069AF4A   E8891B0000             call    0069CAD8
0069AF4F   8BD8                   mov     ebx, eax

|
0069AF51   E8F20C0100             call    006ABC48
0069AF56   84DB                   test    bl, bl
0069AF58   7471                   jz      0069AFCB
0069AF5A   FF75EC                 push    dword ptr [ebp-$14]
0069AF5D   FF75E8                 push    dword ptr [ebp-$18]
0069AF60   8D55B4                 lea     edx, [ebp-$4C]

* Possible String Reference to: 'dd/mm/yyyy'
|
0069AF63   B8CCB06900             mov     eax, $0069B0CC

|
0069AF68   E86B39D7FF             call    0040E8D8
0069AF6D   8B45B4                 mov     eax, [ebp-$4C]
0069AF70   50                     push    eax
0069AF71   8B45E4                 mov     eax, [ebp-$1C]
0069AF74   50                     push    eax
0069AF75   8B45E0                 mov     eax, [ebp-$20]
0069AF78   50                     push    eax
0069AF79   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]
0069AF7E   8B00                   mov     eax, [eax]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0069AF80   E84BFFD6FF             call    0040AED0
0069AF85   50                     push    eax
0069AF86   8B4DF4                 mov     ecx, [ebp-$0C]
0069AF89   8B55F8                 mov     edx, [ebp-$08]
0069AF8C   8BC6                   mov     eax, esi

|
0069AF8E   E8B1A8FFFF             call    00695844
0069AF93   84C0                   test    al, al
0069AF95   7434                   jz      0069AFCB
0069AF97   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]
0069AF9C   8B00                   mov     eax, [eax]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0069AF9E   E82DFFD6FF             call    0040AED0
0069AFA3   50                     push    eax
0069AFA4   8B4DE0                 mov     ecx, [ebp-$20]
0069AFA7   8B55E4                 mov     edx, [ebp-$1C]
0069AFAA   8BC6                   mov     eax, esi

|
0069AFAC   E83B210000             call    0069D0EC
0069AFB1   84C0                   test    al, al
0069AFB3   7416                   jz      0069AFCB
0069AFB5   A198A57D00             mov     eax, dword ptr [$007DA598]
0069AFBA   803800                 cmp     byte ptr [eax], $00
0069AFBD   7405                   jz      0069AFC4

|
0069AFBF   E82C2E0100             call    006ADDF0
0069AFC4   8BC6                   mov     eax, esi

* Reference to: Forms.TCustomForm.Close(TCustomForm);
|
0069AFC6   E8F570E1FF             call    004B20C0
0069AFCB   33C0                   xor     eax, eax
0069AFCD   5A                     pop     edx
0069AFCE   59                     pop     ecx
0069AFCF   59                     pop     ecx
0069AFD0   648910                 mov     fs:[eax], edx
0069AFD3   EB3B                   jmp     0069B010

* Reference to: System.@HandleOnException;
|
0069AFD5   E9D69BD6FF             jmp     00404BB0
0069AFDA   0100                   add     [eax], eax
0069AFDC   0000                   add     [eax], al
0069AFDE   40                     inc     eax
0069AFDF   95                     xchg    eax, ebp
0069AFE0   40                     inc     eax
0069AFE1   00E6                   add     dh, ah
0069AFE3   AF                     scasd
0069AFE4   690089C36A00           imul    eax, [eax], $006AC389

* Reference to field TfrmFecha.Owner : TComponent
|
0069AFEA   8B4B04                 mov     ecx, [ebx+$04]
0069AFED   8D45B0                 lea     eax, [ebp-$50]

* Possible String Reference to: 'Erro ao efetuar o fechamento simple
|                                s!'
|
0069AFF0   BA00B16900             mov     edx, $0069B100

* Reference to: System.@LStrCat3;
|
0069AFF5   E8AEA7D6FF             call    004057A8
0069AFFA   8B45B0                 mov     eax, [ebp-$50]
0069AFFD   668B0D28B16900         mov     cx, word ptr [$0069B128]
0069B004   B201                   mov     dl, $01

|
0069B006   E8218BDAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069B00B   E8A09ED6FF             call    00404EB0

****** END
|
0069B010   33C0                   xor     eax, eax
0069B012   5A                     pop     edx
0069B013   59                     pop     ecx
0069B014   59                     pop     ecx
0069B015   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069B018   682AB06900             push    $0069B02A

|
0069B01D   E8A6801100             call    007B30C8
0069B022   C3                     ret


* Reference to: System.@HandleFinally;
|
0069B023   E9109DD6FF             jmp     00404D38
0069B028   EBF3                   jmp     0069B01D

****** END
|
0069B02A   33C0                   xor     eax, eax
0069B02C   5A                     pop     edx
0069B02D   59                     pop     ecx
0069B02E   59                     pop     ecx
0069B02F   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069B032   686EB06900             push    $0069B06E
0069B037   8D45B0                 lea     eax, [ebp-$50]
0069B03A   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069B03F   E87CA4D6FF             call    004054C0
0069B044   8D45D0                 lea     eax, [ebp-$30]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0069B047   E82C95D7FF             call    00414578
0069B04C   8D45E0                 lea     eax, [ebp-$20]
0069B04F   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069B054   E867A4D6FF             call    004054C0
0069B059   8D45F4                 lea     eax, [ebp-$0C]
0069B05C   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069B061   E85AA4D6FF             call    004054C0
0069B066   C3                     ret


* Reference to: System.@HandleFinally;
|
0069B067   E9CC9CD6FF             jmp     00404D38
0069B06C   EBC9                   jmp     0069B037

****** END
|
0069B06E   8A45FF                 mov     al, byte ptr [ebp-$01]
0069B071   5F                     pop     edi
0069B072   5E                     pop     esi
0069B073   5B                     pop     ebx
0069B074   8BE5                   mov     esp, ebp
0069B076   5D                     pop     ebp
0069B077   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069B067(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069B067   E9CC9CD6FF             jmp     00404D38

|
0069B06C   EBC9                   jmp     0069B037
0069B06E   8A45FF                 mov     al, byte ptr [ebp-$01]
0069B071   5F                     pop     edi
0069B072   5E                     pop     esi
0069B073   5B                     pop     ebx
0069B074   8BE5                   mov     esp, ebp
0069B076   5D                     pop     ebp
0069B077   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069B08E(Sender : TObject);
begin
(*
0069B08E   50                     push    eax
0069B08F   4F                     dec     edi
0069B090   4D                     dec     ebp
0069B091   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069B12D(Sender : TObject);
begin
(*
0069B12D   8BEC                   mov     ebp, esp
0069B12F   33C9                   xor     ecx, ecx
0069B131   51                     push    ecx
0069B132   51                     push    ecx
0069B133   51                     push    ecx
0069B134   51                     push    ecx
0069B135   51                     push    ecx
0069B136   51                     push    ecx
0069B137   53                     push    ebx
0069B138   56                     push    esi
0069B139   57                     push    edi
0069B13A   8BD8                   mov     ebx, eax
0069B13C   33C0                   xor     eax, eax
0069B13E   55                     push    ebp

* Possible String Reference to: 'È~ö÷ˇÎ–äEˇ_^[ãÂ]√'
|
0069B13F   68B5B26900             push    $0069B2B5

***** TRY
|
0069B144   64FF30                 push    dword ptr fs:[eax]
0069B147   648920                 mov     fs:[eax], esp
0069B14A   C645FF01               mov     byte ptr [ebp-$01], $01
0069B14E   33C0                   xor     eax, eax
0069B150   55                     push    ebp
0069B151   6878B26900             push    $0069B278

***** TRY
|
0069B156   64FF30                 push    dword ptr fs:[eax]
0069B159   648920                 mov     fs:[eax], esp
0069B15C   33C0                   xor     eax, eax
0069B15E   55                     push    ebp
0069B15F   682FB26900             push    $0069B22F

***** TRY
|
0069B164   64FF30                 push    dword ptr fs:[eax]
0069B167   648920                 mov     fs:[eax], esp
0069B16A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069B16F   8B00                   mov     eax, [eax]
0069B171   8B804C010000           mov     eax, [eax+$014C]
0069B177   8B10                   mov     edx, [eax]
0069B179   FF924C010000           call    dword ptr [edx+$014C]
0069B17F   85C0                   test    eax, eax
0069B181   7F26                   jnle    0069B1A9
0069B183   6A00                   push    $00
0069B185   668B0DC8B26900         mov     cx, word ptr [$0069B2C8]
0069B18C   33D2                   xor     edx, edx

* Possible String Reference to: 'Falta informar as formas de pagamen
|                                to!'
|
0069B18E   B8D4B26900             mov     eax, $0069B2D4

|
0069B193   E89489DAFF             call    00443B2C

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
0069B198   8B832C030000           mov     eax, [ebx+$032C]

|
0069B19E   E83DAF1000             call    007A60E0
0069B1A3   C645FF00               mov     byte ptr [ebp-$01], $00
0069B1A7   EB7C                   jmp     0069B225
0069B1A9   6A00                   push    $00
0069B1AB   6A00                   push    $00
0069B1AD   6A00                   push    $00
0069B1AF   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
0069B1B2   8B8344030000           mov     eax, [ebx+$0344]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069B1B8   E80F85DFFF             call    004936CC
0069B1BD   8B45F4                 mov     eax, [ebp-$0C]
0069B1C0   8D55F8                 lea     edx, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
0069B1C3   E8BC861000             call    007A3884
0069B1C8   8B45F8                 mov     eax, [ebp-$08]

* Reference to: SysUtils.StrToFloatDef(AnsiString;Extended):Extended;overload;
|
0069B1CB   E85824D7FF             call    0040D628
0069B1D0   D81DFCB26900           fcomp   dword ptr [$0069B2FC]
0069B1D6   DFE0                   fstsw   ax
0069B1D8   9E                     sahf
0069B1D9   764A                   jbe     0069B225
0069B1DB   6A00                   push    $00

* Possible String Reference to: 'H· uma diferenÁa de R$ '
|
0069B1DD   6808B36900             push    $0069B308
0069B1E2   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
0069B1E5   8B8344030000           mov     eax, [ebx+$0344]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069B1EB   E8DC84DFFF             call    004936CC
0069B1F0   FF75EC                 push    dword ptr [ebp-$14]

* Possible String Reference to: ' a ser lanÁada. Verifique!'
|
0069B1F3   6828B36900             push    $0069B328
0069B1F8   8D45F0                 lea     eax, [ebp-$10]
0069B1FB   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0069B200   E817A6D6FF             call    0040581C
0069B205   8B45F0                 mov     eax, [ebp-$10]
0069B208   668B0DC8B26900         mov     cx, word ptr [$0069B2C8]
0069B20F   33D2                   xor     edx, edx

|
0069B211   E81689DAFF             call    00443B2C

* Reference to control TfrmFecha.edTipoPgto : TJvComboEdit
|
0069B216   8B832C030000           mov     eax, [ebx+$032C]

|
0069B21C   E8BFAE1000             call    007A60E0
0069B221   C645FF00               mov     byte ptr [ebp-$01], $00
0069B225   33C0                   xor     eax, eax
0069B227   5A                     pop     edx
0069B228   59                     pop     ecx
0069B229   59                     pop     ecx
0069B22A   648910                 mov     fs:[eax], edx
0069B22D   EB3B                   jmp     0069B26A

* Reference to: System.@HandleOnException;
|
0069B22F   E97C99D6FF             jmp     00404BB0
0069B234   0100                   add     [eax], eax
0069B236   0000                   add     [eax], al
0069B238   40                     inc     eax
0069B239   95                     xchg    eax, ebp
0069B23A   40                     inc     eax
0069B23B   0040B2                 add     [eax-$4E], al
0069B23E   690089C36A00           imul    eax, [eax], $006AC389

* Reference to field TfrmFecha.Owner : TComponent
|
0069B244   8B4B04                 mov     ecx, [ebx+$04]
0069B247   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Erro ao validar o fechamento da mes
|                                a!'
|
0069B24A   BA4CB36900             mov     edx, $0069B34C

* Reference to: System.@LStrCat3;
|
0069B24F   E854A5D6FF             call    004057A8
0069B254   8B45E8                 mov     eax, [ebp-$18]
0069B257   668B0DC8B26900         mov     cx, word ptr [$0069B2C8]
0069B25E   B201                   mov     dl, $01

|
0069B260   E8C788DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069B265   E8469CD6FF             call    00404EB0

****** END
|
0069B26A   33C0                   xor     eax, eax
0069B26C   5A                     pop     edx
0069B26D   59                     pop     ecx
0069B26E   59                     pop     ecx
0069B26F   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069B272   687FB26900             push    $0069B27F
0069B277   C3                     ret


* Reference to: System.@HandleFinally;
|
0069B278   E9BB9AD6FF             jmp     00404D38
0069B27D   EBF8                   jmp     0069B277

****** END
|
0069B27F   33C0                   xor     eax, eax
0069B281   5A                     pop     edx
0069B282   59                     pop     ecx
0069B283   59                     pop     ecx
0069B284   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0069B287   68BCB26900             push    $0069B2BC
0069B28C   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrClr(void;void);
|
0069B28F   E808A2D6FF             call    0040549C
0069B294   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0069B297   E800A2D6FF             call    0040549C
0069B29C   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0069B29F   E8F8A1D6FF             call    0040549C
0069B2A4   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0069B2A7   E8F0A1D6FF             call    0040549C
0069B2AC   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0069B2AF   E8E8A1D6FF             call    0040549C
0069B2B4   C3                     ret


* Reference to: System.@HandleFinally;
|
0069B2B5   E97E9AD6FF             jmp     00404D38
0069B2BA   EBD0                   jmp     0069B28C

****** END
|
0069B2BC   8A45FF                 mov     al, byte ptr [ebp-$01]
0069B2BF   5F                     pop     edi
0069B2C0   5E                     pop     esi
0069B2C1   5B                     pop     ebx
0069B2C2   8BE5                   mov     esp, ebp
0069B2C4   5D                     pop     ebp
0069B2C5   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069B2B5(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069B2B5   E97E9AD6FF             jmp     00404D38

|
0069B2BA   EBD0                   jmp     0069B28C
0069B2BC   8A45FF                 mov     al, byte ptr [ebp-$01]
0069B2BF   5F                     pop     edi
0069B2C0   5E                     pop     esi
0069B2C1   5B                     pop     ebx
0069B2C2   8BE5                   mov     esp, ebp
0069B2C4   5D                     pop     ebp
0069B2C5   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069B375(Sender : TObject);
begin
(*
0069B375   8BEC                   mov     ebp, esp
0069B377   B90E000000             mov     ecx, $0000000E
0069B37C   6A00                   push    $00
0069B37E   6A00                   push    $00
0069B380   49                     dec     ecx
0069B381   75F9                   jnz     0069B37C
0069B383   51                     push    ecx
0069B384   53                     push    ebx
0069B385   56                     push    esi
0069B386   57                     push    edi
0069B387   8BF8                   mov     edi, eax
0069B389   8B357CB37D00           mov     esi, [$007DB37C]
0069B38F   33C0                   xor     eax, eax
0069B391   55                     push    ebp

* Possible String Reference to: 'È˛ï÷ˇÎ∆äEˇ_^[ãÂ]√'
|
0069B392   6835B76900             push    $0069B735

***** TRY
|
0069B397   64FF30                 push    dword ptr fs:[eax]
0069B39A   648920                 mov     fs:[eax], esp
0069B39D   C645FF00               mov     byte ptr [ebp-$01], $00
0069B3A1   33D2                   xor     edx, edx
0069B3A3   55                     push    ebp
0069B3A4   68EEB66900             push    $0069B6EE

***** TRY
|
0069B3A9   64FF32                 push    dword ptr fs:[edx]
0069B3AC   648922                 mov     fs:[edx], esp
0069B3AF   33D2                   xor     edx, edx
0069B3B1   55                     push    ebp
0069B3B2   68A5B66900             push    $0069B6A5

***** TRY
|
0069B3B7   64FF32                 push    dword ptr fs:[edx]
0069B3BA   648922                 mov     fs:[edx], esp
0069B3BD   8B06                   mov     eax, [esi]
0069B3BF   8B80E8010000           mov     eax, [eax+$01E8]
0069B3C5   8B10                   mov     edx, [eax]
0069B3C7   FF5258                 call    dword ptr [edx+$58]

|
0069B3CA   E8F1931100             call    007B47C0

|
0069B3CF   E8C0360100             call    006AEA94
0069B3D4   8B06                   mov     eax, [esi]
0069B3D6   8B4068                 mov     eax, [eax+$68]
0069B3D9   8B10                   mov     edx, [eax]
0069B3DB   FF5258                 call    dword ptr [edx+$58]
0069B3DE   8BD8                   mov     ebx, eax
0069B3E0   85DB                   test    ebx, ebx
0069B3E2   7E26                   jle     0069B40A

|
0069B3E4   E84B370100             call    006AEB34

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
0069B3E9   E876370100             call    006AEB64
0069B3EE   8D0440                 lea     eax, [eax+eax*2]
0069B3F1   8B1558B17D00           mov     edx, [$007DB158]
0069B3F7   8B12                   mov     edx, [edx]
0069B3F9   8D448204               lea     eax, [edx+eax*4+$04]
0069B3FD   BA50B76900             mov     edx, $0069B750

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069B402   E8E9A0D6FF             call    004054F0
0069B407   4B                     dec     ebx
0069B408   75DA                   jnz     0069B3E4
0069B40A   6A00                   push    $00
0069B40C   A158B17D00             mov     eax, dword ptr [$007DB158]
0069B411   B901000000             mov     ecx, $00000001
0069B416   8B157CE86A00           mov     edx, [$006AE87C]

* Reference to: System.@DynArraySetLength;
|
0069B41C   E88FB7D6FF             call    00406BB0
0069B421   83C404                 add     esp, +$04
0069B424   8D45F8                 lea     eax, [ebp-$08]

|
0069B427   E8603D0100             call    006AF18C
0069B42C   33DB                   xor     ebx, ebx
0069B42E   8B06                   mov     eax, [esi]
0069B430   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.First(TDataSet);
|
0069B436   E8F1FBE4FF             call    004EB02C
0069B43B   E959010000             jmp     0069B599
0069B440   8D55F4                 lea     edx, [ebp-$0C]
0069B443   8B06                   mov     eax, [esi]
0069B445   8B80D4000000           mov     eax, [eax+$00D4]
0069B44B   8B08                   mov     ecx, [eax]
0069B44D   FF5160                 call    dword ptr [ecx+$60]
0069B450   8B45F4                 mov     eax, [ebp-$0C]
0069B453   BA5CB76900             mov     edx, $0069B75C

* Reference to: System.@LStrCmp;
|
0069B458   E84BA4D6FF             call    004058A8
0069B45D   751C                   jnz     0069B47B
0069B45F   8B06                   mov     eax, [esi]
0069B461   8B80C8000000           mov     eax, [eax+$00C8]
0069B467   8B10                   mov     edx, [eax]
0069B469   FF5258                 call    dword ptr [edx+$58]
0069B46C   8BD8                   mov     ebx, eax
0069B46E   8D45F0                 lea     eax, [ebp-$10]

|
0069B471   E80E420100             call    006AF684
0069B476   E911010000             jmp     0069B58C
0069B47B   8D55EC                 lea     edx, [ebp-$14]
0069B47E   8B06                   mov     eax, [esi]
0069B480   8B80D4000000           mov     eax, [eax+$00D4]
0069B486   8B08                   mov     ecx, [eax]
0069B488   FF5160                 call    dword ptr [ecx+$60]
0069B48B   8B45EC                 mov     eax, [ebp-$14]
0069B48E   BA68B76900             mov     edx, $0069B768

* Reference to: System.@LStrCmp;
|
0069B493   E810A4D6FF             call    004058A8
0069B498   750F                   jnz     0069B4A9
0069B49A   8D55E8                 lea     edx, [ebp-$18]
0069B49D   8BC3                   mov     eax, ebx

|
0069B49F   E8DC4C0100             call    006B0180
0069B4A4   E9E3000000             jmp     0069B58C
0069B4A9   8D55E4                 lea     edx, [ebp-$1C]
0069B4AC   8B06                   mov     eax, [esi]
0069B4AE   8B80D4000000           mov     eax, [eax+$00D4]
0069B4B4   8B08                   mov     ecx, [eax]
0069B4B6   FF5160                 call    dword ptr [ecx+$60]
0069B4B9   8B45E4                 mov     eax, [ebp-$1C]
0069B4BC   BA74B76900             mov     edx, $0069B774

* Reference to: System.@LStrCmp;
|
0069B4C1   E8E2A3D6FF             call    004058A8
0069B4C6   7515                   jnz     0069B4DD
0069B4C8   8D45E0                 lea     eax, [ebp-$20]

|
0069B4CB   E884610100             call    006B1654
0069B4D0   8D45DC                 lea     eax, [ebp-$24]

|
0069B4D3   E8D8500100             call    006B05B0
0069B4D8   E9AF000000             jmp     0069B58C
0069B4DD   8D55D8                 lea     edx, [ebp-$28]
0069B4E0   8B06                   mov     eax, [esi]
0069B4E2   8B80D4000000           mov     eax, [eax+$00D4]
0069B4E8   8B08                   mov     ecx, [eax]
0069B4EA   FF5160                 call    dword ptr [ecx+$60]
0069B4ED   8B45D8                 mov     eax, [ebp-$28]
0069B4F0   BA80B76900             mov     edx, $0069B780

* Reference to: System.@LStrCmp;
|
0069B4F5   E8AEA3D6FF             call    004058A8
0069B4FA   7517                   jnz     0069B513
0069B4FC   8D45D4                 lea     eax, [ebp-$2C]

|
0069B4FF   E850610100             call    006B1654
0069B504   8D45D0                 lea     eax, [ebp-$30]

|
0069B507   E8E0520100             call    006B07EC

* Reference to : TfrmGerenciador._PROC_006AEB74()
|
0069B50C   E863360100             call    006AEB74
0069B511   EB79                   jmp     0069B58C
0069B513   8D55CC                 lea     edx, [ebp-$34]
0069B516   8B06                   mov     eax, [esi]
0069B518   8B80D4000000           mov     eax, [eax+$00D4]
0069B51E   8B08                   mov     ecx, [eax]
0069B520   FF5160                 call    dword ptr [ecx+$60]
0069B523   8B45CC                 mov     eax, [ebp-$34]
0069B526   BA68B76900             mov     edx, $0069B768

* Reference to: System.@LStrCmp;
|
0069B52B   E878A3D6FF             call    004058A8
0069B530   750A                   jnz     0069B53C
0069B532   8D45C8                 lea     eax, [ebp-$38]

|
0069B535   E82E4E0100             call    006B0368
0069B53A   EB50                   jmp     0069B58C
0069B53C   8D55C4                 lea     edx, [ebp-$3C]
0069B53F   8B06                   mov     eax, [esi]
0069B541   8B80D4000000           mov     eax, [eax+$00D4]
0069B547   8B08                   mov     ecx, [eax]
0069B549   FF5160                 call    dword ptr [ecx+$60]
0069B54C   8B45C4                 mov     eax, [ebp-$3C]
0069B54F   BA8CB76900             mov     edx, $0069B78C

* Reference to: System.@LStrCmp;
|
0069B554   E84FA3D6FF             call    004058A8
0069B559   750A                   jnz     0069B565
0069B55B   8D45C0                 lea     eax, [ebp-$40]

|
0069B55E   E80D560100             call    006B0B70
0069B563   EB27                   jmp     0069B58C
0069B565   8D55BC                 lea     edx, [ebp-$44]
0069B568   8B06                   mov     eax, [esi]
0069B56A   8B80D4000000           mov     eax, [eax+$00D4]
0069B570   8B08                   mov     ecx, [eax]
0069B572   FF5160                 call    dword ptr [ecx+$60]
0069B575   8B45BC                 mov     eax, [ebp-$44]
0069B578   BA98B76900             mov     edx, $0069B798

* Reference to: System.@LStrCmp;
|
0069B57D   E826A3D6FF             call    004058A8
0069B582   7508                   jnz     0069B58C
0069B584   8D45B8                 lea     eax, [ebp-$48]

|
0069B587   E8E4550100             call    006B0B70
0069B58C   8B06                   mov     eax, [esi]
0069B58E   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0069B594   E8ABFDE4FF             call    004EB344
0069B599   8B06                   mov     eax, [esi]
0069B59B   8B80C0000000           mov     eax, [eax+$00C0]
0069B5A1   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0069B5A8   0F8492FEFFFF           jz      0069B440

* Reference to : TfrmGerenciador._PROC_006AEB74()
|
0069B5AE   E8C1350100             call    006AEB74
0069B5B3   8D45B4                 lea     eax, [ebp-$4C]
0069B5B6   50                     push    eax
0069B5B7   8D55A8                 lea     edx, [ebp-$58]
0069B5BA   8B8720030000           mov     eax, [edi+$0320]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069B5C0   E80781DFFF             call    004936CC
0069B5C5   8B45A8                 mov     eax, [ebp-$58]
0069B5C8   8D55AC                 lea     edx, [ebp-$54]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
0069B5CB   E8B4821000             call    007A3884
0069B5D0   8B45AC                 mov     eax, [ebp-$54]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
0069B5D3   E81420D7FF             call    0040D5EC
0069B5D8   83C4F4                 add     esp, -$0C
0069B5DB   DB3C24                 fstp    tbyte ptr [esp]
0069B5DE   9B                     wait
0069B5DF   8D55B0                 lea     edx, [ebp-$50]

* Possible String Reference to: '#,###,###,##0.00'
|
0069B5E2   B8A4B76900             mov     eax, $0069B7A4

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069B5E7   E8501FD7FF             call    0040D53C
0069B5EC   8B45B0                 mov     eax, [ebp-$50]
0069B5EF   50                     push    eax

* Possible String Reference to: '* VALOR POR PESSOA ('
|
0069B5F0   68C0B76900             push    $0069B7C0
0069B5F5   8D55A0                 lea     edx, [ebp-$60]
0069B5F8   8B8714030000           mov     eax, [edi+$0314]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069B5FE   E8C980DFFF             call    004936CC
0069B603   FF75A0                 push    dword ptr [ebp-$60]
0069B606   68E0B76900             push    $0069B7E0
0069B60B   8D45A4                 lea     eax, [ebp-$5C]
0069B60E   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0069B613   E804A2D6FF             call    0040581C
0069B618   8B55A4                 mov     edx, [ebp-$5C]
0069B61B   33C0                   xor     eax, eax
0069B61D   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
0069B61E   E879390100             call    006AEF9C
0069B623   8D459C                 lea     eax, [ebp-$64]

|
0069B626   E869590100             call    006B0F94
0069B62B   8B06                   mov     eax, [esi]
0069B62D   8B406C                 mov     eax, [eax+$6C]
0069B630   8B10                   mov     edx, [eax]
0069B632   FF5258                 call    dword ptr [edx+$58]
0069B635   8BD8                   mov     ebx, eax
0069B637   85DB                   test    ebx, ebx
0069B639   7E50                   jle     0069B68B

|
0069B63B   E8F4340100             call    006AEB34

* Possible String Reference to: 'esquerda'
|
0069B640   68ECB76900             push    $0069B7EC
0069B645   8D4598                 lea     eax, [ebp-$68]
0069B648   50                     push    eax
0069B649   B914000000             mov     ecx, $00000014
0069B64E   BA50B76900             mov     edx, $0069B750
0069B653   B850B76900             mov     eax, $0069B750

|
0069B658   E86B701000             call    007A26C8
0069B65D   8B4598                 mov     eax, [ebp-$68]
0069B660   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
0069B661   E8FE340100             call    006AEB64
0069B666   8D0440                 lea     eax, [eax+eax*2]
0069B669   8B1558B17D00           mov     edx, [$007DB158]
0069B66F   8B12                   mov     edx, [edx]
0069B671   8D448204               lea     eax, [edx+eax*4+$04]
0069B675   50                     push    eax
0069B676   8D4594                 lea     eax, [ebp-$6C]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
0069B679   E81A350100             call    006AEB98
0069B67E   8B5594                 mov     edx, [ebp-$6C]
0069B681   58                     pop     eax
0069B682   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
0069B683   E820A1D6FF             call    004057A8
0069B688   4B                     dec     ebx
0069B689   75B0                   jnz     0069B63B
0069B68B   8D4D90                 lea     ecx, [ebp-$70]
0069B68E   33D2                   xor     edx, edx
0069B690   33C0                   xor     eax, eax

|
0069B692   E8CD5B0100             call    006B1264
0069B697   C645FF01               mov     byte ptr [ebp-$01], $01
0069B69B   33C0                   xor     eax, eax
0069B69D   5A                     pop     edx
0069B69E   59                     pop     ecx
0069B69F   59                     pop     ecx
0069B6A0   648910                 mov     fs:[eax], edx
0069B6A3   EB3B                   jmp     0069B6E0

* Reference to: System.@HandleOnException;
|
0069B6A5   E90695D6FF             jmp     00404BB0
0069B6AA   0100                   add     [eax], eax
0069B6AC   0000                   add     [eax], al
0069B6AE   40                     inc     eax
0069B6AF   95                     xchg    eax, ebp
0069B6B0   40                     inc     eax
0069B6B1   00B6B6690089           add     [esi+$890069B6], dh
0069B6B7   C3                     ret

0069B6B8   6A00                   push    $00
0069B6BA   8B4B04                 mov     ecx, [ebx+$04]
0069B6BD   8D458C                 lea     eax, [ebp-$74]

* Possible String Reference to: 'Erro ao imprimir o cupom!'
|
0069B6C0   BA00B86900             mov     edx, $0069B800

* Reference to: System.@LStrCat3;
|
0069B6C5   E8DEA0D6FF             call    004057A8
0069B6CA   8B458C                 mov     eax, [ebp-$74]
0069B6CD   668B0D1CB86900         mov     cx, word ptr [$0069B81C]
0069B6D4   B201                   mov     dl, $01

|
0069B6D6   E85184DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069B6DB   E8D097D6FF             call    00404EB0

****** END
|
0069B6E0   33C0                   xor     eax, eax
0069B6E2   5A                     pop     edx
0069B6E3   59                     pop     ecx
0069B6E4   59                     pop     ecx
0069B6E5   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069B6E8   68F5B66900             push    $0069B6F5
0069B6ED   C3                     ret


* Reference to: System.@HandleFinally;
|
0069B6EE   E94596D6FF             jmp     00404D38
0069B6F3   EBF8                   jmp     0069B6ED

****** END
|
0069B6F5   33C0                   xor     eax, eax
0069B6F7   5A                     pop     edx
0069B6F8   59                     pop     ecx
0069B6F9   59                     pop     ecx
0069B6FA   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0069B6FD   683CB76900             push    $0069B73C
0069B702   8D458C                 lea     eax, [ebp-$74]
0069B705   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069B70A   E8B19DD6FF             call    004054C0
0069B70F   8D45A0                 lea     eax, [ebp-$60]

* Reference to: System.@LStrClr(void;void);
|
0069B712   E8859DD6FF             call    0040549C
0069B717   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: System.@LStrClr(void;void);
|
0069B71A   E87D9DD6FF             call    0040549C
0069B71F   8D45A8                 lea     eax, [ebp-$58]

* Reference to: System.@LStrClr(void;void);
|
0069B722   E8759DD6FF             call    0040549C
0069B727   8D45AC                 lea     eax, [ebp-$54]
0069B72A   BA14000000             mov     edx, $00000014

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069B72F   E88C9DD6FF             call    004054C0
0069B734   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069B6EE(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069B6EE   E94596D6FF             jmp     00404D38

|
0069B6F3   EBF8                   jmp     0069B6ED
0069B6F5   33C0                   xor     eax, eax
0069B6F7   5A                     pop     edx
0069B6F8   59                     pop     ecx
0069B6F9   59                     pop     ecx
0069B6FA   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0069B6FD   683CB76900             push    $0069B73C
0069B702   8D458C                 lea     eax, [ebp-$74]
0069B705   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069B70A   E8B19DD6FF             call    004054C0
0069B70F   8D45A0                 lea     eax, [ebp-$60]

* Reference to: System.@LStrClr(void;void);
|
0069B712   E8859DD6FF             call    0040549C
0069B717   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: System.@LStrClr(void;void);
|
0069B71A   E87D9DD6FF             call    0040549C
0069B71F   8D45A8                 lea     eax, [ebp-$58]

* Reference to: System.@LStrClr(void;void);
|
0069B722   E8759DD6FF             call    0040549C
0069B727   8D45AC                 lea     eax, [ebp-$54]
0069B72A   BA14000000             mov     edx, $00000014

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069B72F   E88C9DD6FF             call    004054C0
0069B734   C3                     ret


* Reference to: System.@HandleFinally;
|
0069B735   E9FE95D6FF             jmp     00404D38
0069B73A   EBC6                   jmp     0069B702

****** END
|
0069B73C   8A45FF                 mov     al, byte ptr [ebp-$01]
0069B73F   5F                     pop     edi
0069B740   5E                     pop     esi
0069B741   5B                     pop     ebx
0069B742   8BE5                   mov     esp, ebp
0069B744   5D                     pop     ebp
0069B745   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069B90D(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069B90D   E92694D6FF             jmp     00404D38

|
0069B912   EBF0                   jmp     0069B904
0069B914   5F                     pop     edi
0069B915   5E                     pop     esi
0069B916   5B                     pop     ebx
0069B917   59                     pop     ecx
0069B918   59                     pop     ecx
0069B919   5D                     pop     ebp
0069B91A   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069B949(Sender : TObject);
begin
(*
0069B949   8BEC                   mov     ebp, esp
0069B94B   83C4F8                 add     esp, -$08
0069B94E   53                     push    ebx
0069B94F   56                     push    esi
0069B950   57                     push    edi
0069B951   33D2                   xor     edx, edx
0069B953   8955F8                 mov     [ebp-$08], edx
0069B956   8BD8                   mov     ebx, eax
0069B958   33C0                   xor     eax, eax
0069B95A   55                     push    ebp
0069B95B   6895BA6900             push    $0069BA95

***** TRY
|
0069B960   64FF30                 push    dword ptr fs:[eax]
0069B963   648920                 mov     fs:[eax], esp
0069B966   C645FF00               mov     byte ptr [ebp-$01], $00
0069B96A   33C0                   xor     eax, eax
0069B96C   55                     push    ebp
0069B96D   6878BA6900             push    $0069BA78

***** TRY
|
0069B972   64FF30                 push    dword ptr fs:[eax]
0069B975   648920                 mov     fs:[eax], esp
0069B978   33C0                   xor     eax, eax
0069B97A   55                     push    ebp
0069B97B   682FBA6900             push    $0069BA2F

***** TRY
|
0069B980   64FF30                 push    dword ptr fs:[eax]
0069B983   648920                 mov     fs:[eax], esp
0069B986   668B4510               mov     ax, word ptr [ebp+$10]
0069B98A   50                     push    eax
0069B98B   FF750C                 push    dword ptr [ebp+$0C]
0069B98E   FF7508                 push    dword ptr [ebp+$08]
0069B991   8BC3                   mov     eax, ebx

|
0069B993   E8BCE0FFFF             call    00699A54
0069B998   84C0                   test    al, al
0069B99A   0F8485000000           jz      0069BA25
0069B9A0   8BC3                   mov     eax, ebx

|
0069B9A2   E835010000             call    0069BADC
0069B9A7   84C0                   test    al, al
0069B9A9   747A                   jz      0069BA25
0069B9AB   A13CA37D00             mov     eax, dword ptr [$007DA33C]
0069B9B0   803800                 cmp     byte ptr [eax], $00
0069B9B3   7564                   jnz     0069BA19
0069B9B5   A13CA37D00             mov     eax, dword ptr [$007DA33C]
0069B9BA   C60001                 mov     byte ptr [eax], $01
0069B9BD   33C9                   xor     ecx, ecx
0069B9BF   B201                   mov     dl, $01

* Reference to class TFrmConta
|
0069B9C1   A1E82D6900             mov     eax, dword ptr [$00692DE8]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
0069B9C6   E84525E1FF             call    004ADF10
0069B9CB   8B1500A17D00           mov     edx, [$007DA100]
0069B9D1   8902                   mov     [edx], eax
0069B9D3   33C0                   xor     eax, eax
0069B9D5   55                     push    ebp

* Possible String Reference to: 'È!ì÷ˇÎ‰°'
|
0069B9D6   6812BA6900             push    $0069BA12

***** TRY
|
0069B9DB   64FF30                 push    dword ptr fs:[eax]
0069B9DE   648920                 mov     fs:[eax], esp
0069B9E1   A100A17D00             mov     eax, dword ptr [$007DA100]
0069B9E6   8B00                   mov     eax, [eax]
0069B9E8   8B10                   mov     edx, [eax]
0069B9EA   FF92EC000000           call    dword ptr [edx+$00EC]
0069B9F0   33C0                   xor     eax, eax
0069B9F2   5A                     pop     edx
0069B9F3   59                     pop     ecx
0069B9F4   59                     pop     ecx
0069B9F5   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069B9F8   6825BA6900             push    $0069BA25
0069B9FD   A13CA37D00             mov     eax, dword ptr [$007DA33C]
0069BA02   C60000                 mov     byte ptr [eax], $00
0069BA05   A100A17D00             mov     eax, dword ptr [$007DA100]
0069BA0A   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
0069BA0C   E88B8BD6FF             call    0040459C
0069BA11   C3                     ret


* Reference to: System.@HandleFinally;
|
0069BA12   E92193D6FF             jmp     00404D38
0069BA17   EBE4                   jmp     0069B9FD
0069BA19   A100A17D00             mov     eax, dword ptr [$007DA100]
0069BA1E   8B00                   mov     eax, [eax]

* Reference to: InTCPServer.TIdPeerThread.Run(TIdPeerThread);
|
0069BA20   E80776FFFF             call    0069302C

****** END
|
0069BA25   33C0                   xor     eax, eax
0069BA27   5A                     pop     edx
0069BA28   59                     pop     ecx
0069BA29   59                     pop     ecx
0069BA2A   648910                 mov     fs:[eax], edx
0069BA2D   EB3B                   jmp     0069BA6A

* Reference to: System.@HandleOnException;
|
0069BA2F   E97C91D6FF             jmp     00404BB0
0069BA34   0100                   add     [eax], eax
0069BA36   0000                   add     [eax], al
0069BA38   40                     inc     eax
0069BA39   95                     xchg    eax, ebp
0069BA3A   40                     inc     eax
0069BA3B   0040BA                 add     [eax-$46], al
0069BA3E   690089C36A00           imul    eax, [eax], $006AC389

* Reference to field TfrmFecha.Owner : TComponent
|
0069BA44   8B4B04                 mov     ecx, [ebx+$04]
0069BA47   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Erro ao efetuar o fechamento simple
|                                s!'
|
0069BA4A   BAB0BA6900             mov     edx, $0069BAB0

* Reference to: System.@LStrCat3;
|
0069BA4F   E8549DD6FF             call    004057A8
0069BA54   8B45F8                 mov     eax, [ebp-$08]
0069BA57   668B0DD8BA6900         mov     cx, word ptr [$0069BAD8]
0069BA5E   B201                   mov     dl, $01

|
0069BA60   E8C780DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069BA65   E84694D6FF             call    00404EB0

****** END
|
0069BA6A   33C0                   xor     eax, eax
0069BA6C   5A                     pop     edx
0069BA6D   59                     pop     ecx
0069BA6E   59                     pop     ecx
0069BA6F   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069BA72   687FBA6900             push    $0069BA7F
0069BA77   C3                     ret


* Reference to: System.@HandleFinally;
|
0069BA78   E9BB92D6FF             jmp     00404D38
0069BA7D   EBF8                   jmp     0069BA77

****** END
|
0069BA7F   33C0                   xor     eax, eax
0069BA81   5A                     pop     edx
0069BA82   59                     pop     ecx
0069BA83   59                     pop     ecx
0069BA84   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069BA87   689CBA6900             push    $0069BA9C
0069BA8C   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0069BA8F   E8089AD6FF             call    0040549C
0069BA94   C3                     ret


* Reference to: System.@HandleFinally;
|
0069BA95   E99E92D6FF             jmp     00404D38
0069BA9A   EBF0                   jmp     0069BA8C

****** END
|
0069BA9C   8A45FF                 mov     al, byte ptr [ebp-$01]
0069BA9F   5F                     pop     edi
0069BAA0   5E                     pop     esi
0069BAA1   5B                     pop     ebx
0069BAA2   59                     pop     ecx
0069BAA3   59                     pop     ecx
0069BAA4   5D                     pop     ebp
0069BAA5   C20C00                 ret     $000C

*)
end;

procedure TfrmFecha._PROC_0069BA95(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069BA95   E99E92D6FF             jmp     00404D38

|
0069BA9A   EBF0                   jmp     0069BA8C
0069BA9C   8A45FF                 mov     al, byte ptr [ebp-$01]
0069BA9F   5F                     pop     edi
0069BAA0   5E                     pop     esi
0069BAA1   5B                     pop     ebx
0069BAA2   59                     pop     ecx
0069BAA3   59                     pop     ecx
0069BAA4   5D                     pop     ebp
0069BAA5   C20C00                 ret     $000C

*)
end;

procedure TfrmFecha._PROC_0069BADD(Sender : TObject);
begin
(*
0069BADD   8BEC                   mov     ebp, esp
0069BADF   B90E000000             mov     ecx, $0000000E
0069BAE4   6A00                   push    $00
0069BAE6   6A00                   push    $00
0069BAE8   49                     dec     ecx
0069BAE9   75F9                   jnz     0069BAE4
0069BAEB   53                     push    ebx
0069BAEC   56                     push    esi
0069BAED   57                     push    edi
0069BAEE   8BF8                   mov     edi, eax
0069BAF0   8B1D7CB37D00           mov     ebx, [$007DB37C]
0069BAF6   33C0                   xor     eax, eax
0069BAF8   55                     push    ebp
0069BAF9   6823BE6900             push    $0069BE23

***** TRY
|
0069BAFE   64FF30                 push    dword ptr fs:[eax]
0069BB01   648920                 mov     fs:[eax], esp
0069BB04   C645FF00               mov     byte ptr [ebp-$01], $00
0069BB08   33C0                   xor     eax, eax
0069BB0A   55                     push    ebp
0069BB0B   68E9BD6900             push    $0069BDE9

***** TRY
|
0069BB10   64FF30                 push    dword ptr fs:[eax]
0069BB13   648920                 mov     fs:[eax], esp
0069BB16   33C0                   xor     eax, eax
0069BB18   55                     push    ebp
0069BB19   68A0BD6900             push    $0069BDA0

***** TRY
|
0069BB1E   64FF30                 push    dword ptr fs:[eax]
0069BB21   648920                 mov     fs:[eax], esp
0069BB24   6A00                   push    $00
0069BB26   A158B17D00             mov     eax, dword ptr [$007DB158]
0069BB2B   B901000000             mov     ecx, $00000001
0069BB30   8B157CE86A00           mov     edx, [$006AE87C]

* Reference to: System.@DynArraySetLength;
|
0069BB36   E875B0D6FF             call    00406BB0
0069BB3B   83C404                 add     esp, +$04
0069BB3E   8D45F8                 lea     eax, [ebp-$08]

|
0069BB41   E80E5B0100             call    006B1654
0069BB46   A118AC7D00             mov     eax, dword ptr [$007DAC18]
0069BB4B   DB00                   fild    dword ptr [eax]
0069BB4D   83C4F4                 add     esp, -$0C
0069BB50   DB3C24                 fstp    tbyte ptr [esp]
0069BB53   9B                     wait
0069BB54   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: '000'
|
0069BB57   B83CBE6900             mov     eax, $0069BE3C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069BB5C   E8DB19D7FF             call    0040D53C
0069BB61   8B4DEC                 mov     ecx, [ebp-$14]
0069BB64   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'RESUMO DA MESA '
|
0069BB67   BA48BE6900             mov     edx, $0069BE48

* Reference to: System.@LStrCat3;
|
0069BB6C   E8379CD6FF             call    004057A8
0069BB71   8B55F0                 mov     edx, [ebp-$10]
0069BB74   8D4DF4                 lea     ecx, [ebp-$0C]
0069BB77   33C0                   xor     eax, eax

|
0069BB79   E882300100             call    006AEC00

* Possible String Reference to: 'DATA:'
|
0069BB7E   6860BE6900             push    $0069BE60

* Reference to: SysUtils.Date:TDateTime;
|
0069BB83   E87420D7FF             call    0040DBFC
0069BB88   83C4F8                 add     esp, -$08
0069BB8B   DD1C24                 fstp    qword ptr [esp]
0069BB8E   9B                     wait
0069BB8F   8D55E0                 lea     edx, [ebp-$20]

* Possible String Reference to: 'dd/mm/yyyy'
|
0069BB92   B870BE6900             mov     eax, $0069BE70

|
0069BB97   E83C2DD7FF             call    0040E8D8
0069BB9C   FF75E0                 push    dword ptr [ebp-$20]

* Possible String Reference to: '            HORA:'
|
0069BB9F   6884BE6900             push    $0069BE84

* Reference to: SysUtils.Now:TDateTime;
|
0069BBA4   E8B320D7FF             call    0040DC5C
0069BBA9   83C4F8                 add     esp, -$08
0069BBAC   DD1C24                 fstp    qword ptr [esp]
0069BBAF   9B                     wait
0069BBB0   8D55DC                 lea     edx, [ebp-$24]

* Possible String Reference to: 'hh:mm:ss'
|
0069BBB3   B8A0BE6900             mov     eax, $0069BEA0

|
0069BBB8   E81B2DD7FF             call    0040E8D8
0069BBBD   FF75DC                 push    dword ptr [ebp-$24]
0069BBC0   8D45E4                 lea     eax, [ebp-$1C]
0069BBC3   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
0069BBC8   E84F9CD6FF             call    0040581C
0069BBCD   8B55E4                 mov     edx, [ebp-$1C]
0069BBD0   8D4DE8                 lea     ecx, [ebp-$18]
0069BBD3   33C0                   xor     eax, eax

|
0069BBD5   E826300100             call    006AEC00
0069BBDA   8D45D8                 lea     eax, [ebp-$28]

|
0069BBDD   E8725A0100             call    006B1654
0069BBE2   33F6                   xor     esi, esi
0069BBE4   8B03                   mov     eax, [ebx]
0069BBE6   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.First(TDataSet);
|
0069BBEC   E83BF4E4FF             call    004EB02C
0069BBF1   E904010000             jmp     0069BCFA
0069BBF6   8D55D4                 lea     edx, [ebp-$2C]
0069BBF9   8B03                   mov     eax, [ebx]
0069BBFB   8B80D4000000           mov     eax, [eax+$00D4]
0069BC01   8B08                   mov     ecx, [eax]
0069BC03   FF5160                 call    dword ptr [ecx+$60]
0069BC06   8B45D4                 mov     eax, [ebp-$2C]
0069BC09   BAB4BE6900             mov     edx, $0069BEB4

* Reference to: System.@LStrCmp;
|
0069BC0E   E8959CD6FF             call    004058A8
0069BC13   751C                   jnz     0069BC31
0069BC15   8B03                   mov     eax, [ebx]
0069BC17   8B80C8000000           mov     eax, [eax+$00C8]
0069BC1D   8B10                   mov     edx, [eax]
0069BC1F   FF5258                 call    dword ptr [edx+$58]
0069BC22   8BF0                   mov     esi, eax
0069BC24   8D45D0                 lea     eax, [ebp-$30]

|
0069BC27   E8583A0100             call    006AF684
0069BC2C   E9BC000000             jmp     0069BCED
0069BC31   8D55CC                 lea     edx, [ebp-$34]
0069BC34   8B03                   mov     eax, [ebx]
0069BC36   8B80D4000000           mov     eax, [eax+$00D4]
0069BC3C   8B08                   mov     ecx, [eax]
0069BC3E   FF5160                 call    dword ptr [ecx+$60]
0069BC41   8B45CC                 mov     eax, [ebp-$34]
0069BC44   BAC0BE6900             mov     edx, $0069BEC0

* Reference to: System.@LStrCmp;
|
0069BC49   E85A9CD6FF             call    004058A8
0069BC4E   750F                   jnz     0069BC5F
0069BC50   8D55C8                 lea     edx, [ebp-$38]
0069BC53   8BC6                   mov     eax, esi

|
0069BC55   E826450100             call    006B0180
0069BC5A   E98E000000             jmp     0069BCED
0069BC5F   8D55C4                 lea     edx, [ebp-$3C]
0069BC62   8B03                   mov     eax, [ebx]
0069BC64   8B80D4000000           mov     eax, [eax+$00D4]
0069BC6A   8B08                   mov     ecx, [eax]
0069BC6C   FF5160                 call    dword ptr [ecx+$60]
0069BC6F   8B45C4                 mov     eax, [ebp-$3C]
0069BC72   BACCBE6900             mov     edx, $0069BECC

* Reference to: System.@LStrCmp;
|
0069BC77   E82C9CD6FF             call    004058A8
0069BC7C   7512                   jnz     0069BC90
0069BC7E   8D45C0                 lea     eax, [ebp-$40]

|
0069BC81   E8CE590100             call    006B1654
0069BC86   8D45BC                 lea     eax, [ebp-$44]

|
0069BC89   E822490100             call    006B05B0
0069BC8E   EB5D                   jmp     0069BCED
0069BC90   8D55B8                 lea     edx, [ebp-$48]
0069BC93   8B03                   mov     eax, [ebx]
0069BC95   8B80D4000000           mov     eax, [eax+$00D4]
0069BC9B   8B08                   mov     ecx, [eax]
0069BC9D   FF5160                 call    dword ptr [ecx+$60]
0069BCA0   8B45B8                 mov     eax, [ebp-$48]
0069BCA3   BAD8BE6900             mov     edx, $0069BED8

* Reference to: System.@LStrCmp;
|
0069BCA8   E8FB9BD6FF             call    004058A8
0069BCAD   7517                   jnz     0069BCC6
0069BCAF   8D45B4                 lea     eax, [ebp-$4C]

|
0069BCB2   E89D590100             call    006B1654
0069BCB7   8D45B0                 lea     eax, [ebp-$50]

|
0069BCBA   E82D4B0100             call    006B07EC

* Reference to : TfrmGerenciador._PROC_006AEB74()
|
0069BCBF   E8B02E0100             call    006AEB74
0069BCC4   EB27                   jmp     0069BCED
0069BCC6   8D55AC                 lea     edx, [ebp-$54]
0069BCC9   8B03                   mov     eax, [ebx]
0069BCCB   8B80D4000000           mov     eax, [eax+$00D4]
0069BCD1   8B08                   mov     ecx, [eax]
0069BCD3   FF5160                 call    dword ptr [ecx+$60]
0069BCD6   8B45AC                 mov     eax, [ebp-$54]
0069BCD9   BAE4BE6900             mov     edx, $0069BEE4

* Reference to: System.@LStrCmp;
|
0069BCDE   E8C59BD6FF             call    004058A8
0069BCE3   7508                   jnz     0069BCED
0069BCE5   8D45A8                 lea     eax, [ebp-$58]

|
0069BCE8   E8834E0100             call    006B0B70
0069BCED   8B03                   mov     eax, [ebx]
0069BCEF   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0069BCF5   E84AF6E4FF             call    004EB344
0069BCFA   8B03                   mov     eax, [ebx]
0069BCFC   8B80C0000000           mov     eax, [eax+$00C0]
0069BD02   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0069BD09   0F84E7FEFFFF           jz      0069BBF6

* Reference to : TfrmGerenciador._PROC_006AEB74()
|
0069BD0F   E8602E0100             call    006AEB74
0069BD14   8D45A4                 lea     eax, [ebp-$5C]
0069BD17   50                     push    eax
0069BD18   8B8738030000           mov     eax, [edi+$0338]

* Possible String Reference to: 'NUMPESSOAS'
|
0069BD1E   BAF0BE6900             mov     edx, $0069BEF0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069BD23   E8DCDEE4FF             call    004E9C04
0069BD28   8B10                   mov     edx, [eax]
0069BD2A   FF5258                 call    dword ptr [edx+$58]
0069BD2D   89459C                 mov     [ebp-$64], eax
0069BD30   DB459C                 fild    dword ptr [ebp-$64]
0069BD33   A130B57D00             mov     eax, dword ptr [$007DB530]
0069BD38   DB28                   fld     tbyte ptr [eax]
0069BD3A   DBAF20040000           fld     tbyte ptr [edi+$0420]
0069BD40   DEC1                   faddp   st(1), st(0)

* Reference to: System.@FSafeDivideR;
|
0069BD42   E8B177D6FF             call    004034F8
0069BD47   83C4F4                 add     esp, -$0C
0069BD4A   DB3C24                 fstp    tbyte ptr [esp]
0069BD4D   9B                     wait
0069BD4E   8D55A0                 lea     edx, [ebp-$60]

* Possible String Reference to: '#,###,###,##0.00'
|
0069BD51   B804BF6900             mov     eax, $0069BF04

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069BD56   E8E117D7FF             call    0040D53C
0069BD5B   8B45A0                 mov     eax, [ebp-$60]
0069BD5E   50                     push    eax

* Possible String Reference to: '* VALOR POR PESSOA ('
|
0069BD5F   6820BF6900             push    $0069BF20
0069BD64   8D5594                 lea     edx, [ebp-$6C]
0069BD67   8B8714030000           mov     eax, [edi+$0314]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069BD6D   E85A79DFFF             call    004936CC
0069BD72   FF7594                 push    dword ptr [ebp-$6C]
0069BD75   6840BF6900             push    $0069BF40
0069BD7A   8D4598                 lea     eax, [ebp-$68]
0069BD7D   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0069BD82   E8959AD6FF             call    0040581C
0069BD87   8B5598                 mov     edx, [ebp-$68]
0069BD8A   33C0                   xor     eax, eax
0069BD8C   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
0069BD8D   E80A320100             call    006AEF9C
0069BD92   C645FF01               mov     byte ptr [ebp-$01], $01
0069BD96   33C0                   xor     eax, eax
0069BD98   5A                     pop     edx
0069BD99   59                     pop     ecx
0069BD9A   59                     pop     ecx
0069BD9B   648910                 mov     fs:[eax], edx
0069BD9E   EB3B                   jmp     0069BDDB

* Reference to: System.@HandleOnException;
|
0069BDA0   E90B8ED6FF             jmp     00404BB0
0069BDA5   0100                   add     [eax], eax
0069BDA7   0000                   add     [eax], al
0069BDA9   40                     inc     eax
0069BDAA   95                     xchg    eax, ebp
0069BDAB   40                     inc     eax
0069BDAC   00B1BD690089           add     [ecx+$890069BD], dh
0069BDB2   C3                     ret

0069BDB3   6A00                   push    $00
0069BDB5   8B4B04                 mov     ecx, [ebx+$04]
0069BDB8   8D4590                 lea     eax, [ebp-$70]

* Possible String Reference to: 'Erro ao imprimir o cupom!'
|
0069BDBB   BA4CBF6900             mov     edx, $0069BF4C

* Reference to: System.@LStrCat3;
|
0069BDC0   E8E399D6FF             call    004057A8
0069BDC5   8B4590                 mov     eax, [ebp-$70]
0069BDC8   668B0D68BF6900         mov     cx, word ptr [$0069BF68]
0069BDCF   B201                   mov     dl, $01

|
0069BDD1   E8567DDAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069BDD6   E8D590D6FF             call    00404EB0

****** END
|
0069BDDB   33C0                   xor     eax, eax
0069BDDD   5A                     pop     edx
0069BDDE   59                     pop     ecx
0069BDDF   59                     pop     ecx
0069BDE0   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069BDE3   68F0BD6900             push    $0069BDF0
0069BDE8   C3                     ret


* Reference to: System.@HandleFinally;
|
0069BDE9   E94A8FD6FF             jmp     00404D38
0069BDEE   EBF8                   jmp     0069BDE8

****** END
|
0069BDF0   33C0                   xor     eax, eax
0069BDF2   5A                     pop     edx
0069BDF3   59                     pop     ecx
0069BDF4   59                     pop     ecx
0069BDF5   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069BDF8   682ABE6900             push    $0069BE2A
0069BDFD   8D4590                 lea     eax, [ebp-$70]

* Reference to: System.@LStrClr(void;void);
|
0069BE00   E89796D6FF             call    0040549C
0069BE05   8D4594                 lea     eax, [ebp-$6C]

* Reference to: System.@LStrClr(void;void);
|
0069BE08   E88F96D6FF             call    0040549C
0069BE0D   8D4598                 lea     eax, [ebp-$68]

* Reference to: System.@LStrClr(void;void);
|
0069BE10   E88796D6FF             call    0040549C
0069BE15   8D45A0                 lea     eax, [ebp-$60]
0069BE18   BA17000000             mov     edx, $00000017

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069BE1D   E89E96D6FF             call    004054C0
0069BE22   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069BE23(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069BE23   E9108FD6FF             jmp     00404D38

|
0069BE28   EBD3                   jmp     0069BDFD
0069BE2A   8A45FF                 mov     al, byte ptr [ebp-$01]
0069BE2D   5F                     pop     edi
0069BE2E   5E                     pop     esi
0069BE2F   5B                     pop     ebx
0069BE30   8BE5                   mov     esp, ebp
0069BE32   5D                     pop     ebp
0069BE33   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069BE4C(Sender : TObject);
begin
(*
0069BE4C   4D                     dec     ebp
0069BE4D   4F                     dec     edi
0069BE4E   20444120               and     [ecx+eax*2+$20], al
0069BE52   4D                     dec     ebp
0069BE53   45                     inc     ebp
0069BE54   53                     push    ebx
0069BE55   41                     inc     ecx
0069BE56   2000                   and     [eax], al
0069BE58   FFFF                   DB  $FF, $FF  //      
0069BE5A   FFFF                   DB  $FF, $FF  //      
0069BE5C   0500000044             add     eax, +$44000000
0069BE61   41                     inc     ecx
0069BE62   54                     push    esp
0069BE63   41                     inc     ecx
0069BE64   3A00                   cmp     al, byte ptr [eax]
0069BE66   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069BEF2(Sender : TObject);
begin
(*
0069BEF2   4D                     dec     ebp
0069BEF3   50                     push    eax
0069BEF4   45                     inc     ebp
0069BEF5   53                     push    ebx
0069BEF6   53                     push    ebx
0069BEF7   4F                     dec     edi
0069BEF8   41                     inc     ecx
0069BEF9   53                     push    ebx
0069BEFA   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069BF6D(Sender : TObject);
begin
(*
0069BF6D   8BEC                   mov     ebp, esp
0069BF6F   B915000000             mov     ecx, $00000015
0069BF74   6A00                   push    $00
0069BF76   6A00                   push    $00
0069BF78   49                     dec     ecx
0069BF79   75F9                   jnz     0069BF74
0069BF7B   51                     push    ecx
0069BF7C   53                     push    ebx
0069BF7D   56                     push    esi
0069BF7E   57                     push    edi
0069BF7F   8BD8                   mov     ebx, eax
0069BF81   8B3D2CA27D00           mov     edi, [$007DA22C]
0069BF87   33C0                   xor     eax, eax
0069BF89   55                     push    ebp

* Possible String Reference to: 'È]ä÷ˇÎîäEˇ_^[ãÂ]√'
|
0069BF8A   68D6C26900             push    $0069C2D6

***** TRY
|
0069BF8F   64FF30                 push    dword ptr fs:[eax]
0069BF92   648920                 mov     fs:[eax], esp
0069BF95   C645FF00               mov     byte ptr [ebp-$01], $00
0069BF99   33C0                   xor     eax, eax
0069BF9B   55                     push    ebp
0069BF9C   685DC26900             push    $0069C25D

***** TRY
|
0069BFA1   64FF30                 push    dword ptr fs:[eax]
0069BFA4   648920                 mov     fs:[eax], esp
0069BFA7   33C0                   xor     eax, eax
0069BFA9   55                     push    ebp
0069BFAA   680EC26900             push    $0069C20E

***** TRY
|
0069BFAF   64FF30                 push    dword ptr fs:[eax]
0069BFB2   648920                 mov     fs:[eax], esp
0069BFB5   33C0                   xor     eax, eax
0069BFB7   8907                   mov     [edi], eax
0069BFB9   894704                 mov     [edi+$04], eax
0069BFBC   66894708               mov     [edi+$08], ax
0069BFC0   A158B47D00             mov     eax, dword ptr [$007DB458]
0069BFC5   33D2                   xor     edx, edx
0069BFC7   8910                   mov     [eax], edx
0069BFC9   895004                 mov     [eax+$04], edx
0069BFCC   66895008               mov     [eax+$08], dx
0069BFD0   33C0                   xor     eax, eax

* Reference to field TfrmFecha.OFFS_0410
|
0069BFD2   898310040000           mov     [ebx+$0410], eax

* Reference to field TfrmFecha.OFFS_0414
|
0069BFD8   C78314040000000000A0   mov     dword ptr [ebx+$0414], $A0000000

* Reference to field TfrmFecha.OFFS_0418
|
0069BFE2   66C783180400000240     mov     word ptr [ebx+$0418], $4002
0069BFEB   33C0                   xor     eax, eax

* Reference to field TfrmFecha.OFFS_0420
|
0069BFED   898320040000           mov     [ebx+$0420], eax

* Reference to field TfrmFecha.OFFS_0424
|
0069BFF3   898324040000           mov     [ebx+$0424], eax

* Reference to field TfrmFecha.OFFS_0428
|
0069BFF9   66898328040000         mov     [ebx+$0428], ax

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069C000   8B8338030000           mov     eax, [ebx+$0338]

* Reference to: DB.TDataSet.First(TDataSet);
|
0069C006   E821F0E4FF             call    004EB02C
0069C00B   EB54                   jmp     0069C061
0069C00D   8BC6                   mov     eax, esi

* Possible String Reference to: 'Status'
|
0069C00F   BAF0C26900             mov     edx, $0069C2F0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069C014   E8EBDBE4FF             call    004E9C04
0069C019   8D55F8                 lea     edx, [ebp-$08]
0069C01C   8B08                   mov     ecx, [eax]
0069C01E   FF5160                 call    dword ptr [ecx+$60]
0069C021   8B45F8                 mov     eax, [ebp-$08]
0069C024   BA00C36900             mov     edx, $0069C300

* Reference to: System.@LStrCmp;
|
0069C029   E87A98D6FF             call    004058A8
0069C02E   7426                   jz      0069C056

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069C030   8B8338030000           mov     eax, [ebx+$0338]

* Possible String Reference to: 'VLRTOTAL'
|
0069C036   BA0CC36900             mov     edx, $0069C30C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069C03B   E8C4DBE4FF             call    004E9C04
0069C040   8B10                   mov     edx, [eax]

* Possible reference to virtual method TIBDataSet.OFFS_54
|
0069C042   FF5254                 call    dword ptr [edx+$54]
0069C045   A158B47D00             mov     eax, dword ptr [$007DB458]
0069C04A   DB28                   fld     tbyte ptr [eax]
0069C04C   DEC1                   faddp   st(1), st(0)
0069C04E   A158B47D00             mov     eax, dword ptr [$007DB458]
0069C053   DB38                   fstp    tbyte ptr [eax]
0069C055   9B                     wait

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069C056   8B8338030000           mov     eax, [ebx+$0338]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0069C05C   E8E3F2E4FF             call    004EB344

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069C061   8BB338030000           mov     esi, [ebx+$0338]

* Reference to field TIBDataSet.OFFS_00A1
|
0069C067   80BEA100000000         cmp     byte ptr [esi+$00A1], $00
0069C06E   749D                   jz      0069C00D
0069C070   8BC3                   mov     eax, ebx

|
0069C072   E819180000             call    0069D890
0069C077   DDD8                   fstp    st(0)
0069C079   C645FF01               mov     byte ptr [ebp-$01], $01
0069C07D   668B4708               mov     ax, word ptr [edi+$08]
0069C081   50                     push    eax
0069C082   FF7704                 push    dword ptr [edi+$04]
0069C085   FF37                   push    dword ptr [edi]
0069C087   8D55F4                 lea     edx, [ebp-$0C]

* Possible String Reference to: '###,###,##0.00'
|
0069C08A   B820C36900             mov     eax, $0069C320

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069C08F   E8A814D7FF             call    0040D53C
0069C094   8B55F4                 mov     edx, [ebp-$0C]

* Reference to control TfrmFecha.edVlrTotal : TAlignEd
|
0069C097   8B8318030000           mov     eax, [ebx+$0318]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069C09D   E85A76DFFF             call    004936FC

* Reference to control TfrmFecha.tbFecha : TIBDataSet
|
0069C0A2   8B8338030000           mov     eax, [ebx+$0338]

* Possible String Reference to: 'NUMPESSOAS'
|
0069C0A8   BA38C36900             mov     edx, $0069C338

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0069C0AD   E852DBE4FF             call    004E9C04
0069C0B2   8B10                   mov     edx, [eax]

* Possible reference to virtual method TIBDataSet.OFFS_54
|
0069C0B4   FF5254                 call    dword ptr [edx+$54]
0069C0B7   DB2F                   fld     tbyte ptr [edi]

* Reference to: System.@FSafeDivideR;
|
0069C0B9   E83A74D6FF             call    004034F8
0069C0BE   83C4F4                 add     esp, -$0C
0069C0C1   DB3C24                 fstp    tbyte ptr [esp]
0069C0C4   9B                     wait
0069C0C5   8D55F0                 lea     edx, [ebp-$10]

* Possible String Reference to: '###,###,##0.00'
|
0069C0C8   B820C36900             mov     eax, $0069C320

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069C0CD   E86A14D7FF             call    0040D53C
0069C0D2   8B55F0                 mov     edx, [ebp-$10]

* Reference to control TfrmFecha.edVlrPessoa : TAlignEd
|
0069C0D5   8B8320030000           mov     eax, [ebx+$0320]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069C0DB   E81C76DFFF             call    004936FC
0069C0E0   DB2F                   fld     tbyte ptr [edi]
0069C0E2   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarFromReal;
|
0069C0E5   E89ECBD7FF             call    00418C88
0069C0EA   8D45E0                 lea     eax, [ebp-$20]
0069C0ED   50                     push    eax
0069C0EE   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
0069C0F1   8B833C030000           mov     eax, [ebx+$033C]

|
0069C0F7   E8BC70FBFF             call    006531B8
0069C0FC   8D55D0                 lea     edx, [ebp-$30]
0069C0FF   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
0069C100   E84F10D8FF             call    0041D154
0069C105   7C51                   jl      0069C158
0069C107   DB2F                   fld     tbyte ptr [edi]
0069C109   8D45BC                 lea     eax, [ebp-$44]

* Reference to: Variants.@VarFromReal;
|
0069C10C   E877CBD7FF             call    00418C88
0069C111   8D45BC                 lea     eax, [ebp-$44]
0069C114   50                     push    eax
0069C115   8D55AC                 lea     edx, [ebp-$54]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
0069C118   8B833C030000           mov     eax, [ebx+$033C]

|
0069C11E   E89570FBFF             call    006531B8
0069C123   8D55AC                 lea     edx, [ebp-$54]
0069C126   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069C127   E8840FD8FF             call    0041D0B0
0069C12C   8D45BC                 lea     eax, [ebp-$44]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0069C12F   E8B4AAD7FF             call    00416BE8
0069C134   83C4F4                 add     esp, -$0C
0069C137   DB3C24                 fstp    tbyte ptr [esp]
0069C13A   9B                     wait
0069C13B   8D55CC                 lea     edx, [ebp-$34]

* Possible String Reference to: '###,###,##0.00'
|
0069C13E   B820C36900             mov     eax, $0069C320

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069C143   E8F413D7FF             call    0040D53C
0069C148   8B55CC                 mov     edx, [ebp-$34]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
0069C14B   8B8344030000           mov     eax, [ebx+$0344]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069C151   E8A675DFFF             call    004936FC
0069C156   EB21                   jmp     0069C179
0069C158   6A00                   push    $00
0069C15A   6A00                   push    $00
0069C15C   6A00                   push    $00
0069C15E   8D55A8                 lea     edx, [ebp-$58]

* Possible String Reference to: '###,###,##0.00'
|
0069C161   B820C36900             mov     eax, $0069C320

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069C166   E8D113D7FF             call    0040D53C
0069C16B   8B55A8                 mov     edx, [ebp-$58]

* Reference to control TfrmFecha.LbDiferenca : TLabel
|
0069C16E   8B8344030000           mov     eax, [ebx+$0344]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0069C174   E88375DFFF             call    004936FC
0069C179   8D5598                 lea     edx, [ebp-$68]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
0069C17C   8B833C030000           mov     eax, [ebx+$033C]

|
0069C182   E83170FBFF             call    006531B8
0069C187   8D4598                 lea     eax, [ebp-$68]
0069C18A   50                     push    eax
0069C18B   DB2F                   fld     tbyte ptr [edi]
0069C18D   8D4588                 lea     eax, [ebp-$78]

* Reference to: Variants.@VarFromReal;
|
0069C190   E8F3CAD7FF             call    00418C88
0069C195   8D5588                 lea     edx, [ebp-$78]
0069C198   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
0069C199   E8A60FD8FF             call    0041D144
0069C19E   7E44                   jle     0069C1E4
0069C1A0   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]

* Reference to control TfrmFecha.edTotPago : TJvValidateEdit
|
0069C1A6   8B833C030000           mov     eax, [ebx+$033C]

|
0069C1AC   E80770FBFF             call    006531B8
0069C1B1   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
0069C1B7   50                     push    eax
0069C1B8   DB2F                   fld     tbyte ptr [edi]
0069C1BA   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Reference to: Variants.@VarFromReal;
|
0069C1C0   E8C3CAD7FF             call    00418C88
0069C1C5   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]
0069C1CB   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069C1CC   E8DF0ED8FF             call    0041D0B0
0069C1D1   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]

* Reference to control TfrmFecha.EdTroco : TJvValidateEdit
|
0069C1D7   8B8350030000           mov     eax, [ebx+$0350]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0069C1DD   E8AE70FBFF             call    00653290
0069C1E2   EB20                   jmp     0069C204
0069C1E4   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
0069C1EA   33D2                   xor     edx, edx
0069C1EC   B101                   mov     cl, $01

|
0069C1EE   E87DC8D7FF             call    00418A70
0069C1F3   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]

* Reference to control TfrmFecha.EdTroco : TJvValidateEdit
|
0069C1F9   8B8350030000           mov     eax, [ebx+$0350]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0069C1FF   E88C70FBFF             call    00653290
0069C204   33C0                   xor     eax, eax
0069C206   5A                     pop     edx
0069C207   59                     pop     ecx
0069C208   59                     pop     ecx
0069C209   648910                 mov     fs:[eax], edx
0069C20C   EB41                   jmp     0069C24F

* Reference to: System.@HandleOnException;
|
0069C20E   E99D89D6FF             jmp     00404BB0
0069C213   0100                   add     [eax], eax
0069C215   0000                   add     [eax], al
0069C217   40                     inc     eax
0069C218   95                     xchg    eax, ebp
0069C219   40                     inc     eax
0069C21A   001F                   add     [edi], bl
0069C21C   C26900                 ret     $0069

0069C21F   89C3                   mov     ebx, eax
0069C221   6A00                   push    $00
0069C223   8B4B04                 mov     ecx, [ebx+$04]
0069C226   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]

* Possible String Reference to: 'Erro ao recalcular o valor da mesa!'
|
0069C22C   BA4CC36900             mov     edx, $0069C34C

* Reference to: System.@LStrCat3;
|
0069C231   E87295D6FF             call    004057A8
0069C236   8B8554FFFFFF           mov     eax, [ebp+$FFFFFF54]
0069C23C   668B0D74C36900         mov     cx, word ptr [$0069C374]
0069C243   B201                   mov     dl, $01

|
0069C245   E8E278DAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069C24A   E8618CD6FF             call    00404EB0

****** END
|
0069C24F   33C0                   xor     eax, eax
0069C251   5A                     pop     edx
0069C252   59                     pop     ecx
0069C253   59                     pop     ecx
0069C254   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069C257   6864C26900             push    $0069C264
0069C25C   C3                     ret


* Reference to: System.@HandleFinally;
|
0069C25D   E9D68AD6FF             jmp     00404D38
0069C262   EBF8                   jmp     0069C25C

****** END
|
0069C264   33C0                   xor     eax, eax
0069C266   5A                     pop     edx
0069C267   59                     pop     ecx
0069C268   59                     pop     ecx
0069C269   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0069C26C   68DDC26900             push    $0069C2DD
0069C271   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]

* Reference to: System.@LStrClr(void;void);
|
0069C277   E82092D6FF             call    0040549C
0069C27C   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]

* Reference to object Variant
|
0069C282   8B1524114000           mov     edx, [$00401124]
0069C288   B905000000             mov     ecx, $00000005

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069C28D   E80A9ED6FF             call    0040609C
0069C292   8D45A8                 lea     eax, [ebp-$58]

* Reference to: System.@LStrClr(void;void);
|
0069C295   E80292D6FF             call    0040549C
0069C29A   8D45AC                 lea     eax, [ebp-$54]

* Reference to object Variant
|
0069C29D   8B1524114000           mov     edx, [$00401124]
0069C2A3   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069C2A8   E8EF9DD6FF             call    0040609C
0069C2AD   8D45CC                 lea     eax, [ebp-$34]

* Reference to: System.@LStrClr(void;void);
|
0069C2B0   E8E791D6FF             call    0040549C
0069C2B5   8D45D0                 lea     eax, [ebp-$30]

* Reference to object Variant
|
0069C2B8   8B1524114000           mov     edx, [$00401124]
0069C2BE   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069C2C3   E8D49DD6FF             call    0040609C
0069C2C8   8D45F0                 lea     eax, [ebp-$10]
0069C2CB   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069C2D0   E8EB91D6FF             call    004054C0
0069C2D5   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069C2D6(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069C2D6   E95D8AD6FF             jmp     00404D38

|
0069C2DB   EB94                   jmp     0069C271
0069C2DD   8A45FF                 mov     al, byte ptr [ebp-$01]
0069C2E0   5F                     pop     edi
0069C2E1   5E                     pop     esi
0069C2E2   5B                     pop     ebx
0069C2E3   8BE5                   mov     esp, ebp
0069C2E5   5D                     pop     ebp
0069C2E6   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069C33A(Sender : TObject);
begin
(*
0069C33A   4D                     dec     ebp
0069C33B   50                     push    eax
0069C33C   45                     inc     ebp
0069C33D   53                     push    ebx
0069C33E   53                     push    ebx
0069C33F   4F                     dec     edi
0069C340   41                     inc     ecx
0069C341   53                     push    ebx
0069C342   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069CA45(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069CA45   E9EE82D6FF             jmp     00404D38

|
0069CA4A   EBF0                   jmp     0069CA3C
0069CA4C   5F                     pop     edi
0069CA4D   5E                     pop     esi
0069CA4E   5B                     pop     ebx
0069CA4F   59                     pop     ecx
0069CA50   5D                     pop     ebp
0069CA51   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069CAD9(Sender : TObject);
begin
(*
0069CAD9   8BEC                   mov     ebp, esp
0069CADB   B90F000000             mov     ecx, $0000000F
0069CAE0   6A00                   push    $00
0069CAE2   6A00                   push    $00
0069CAE4   49                     dec     ecx
0069CAE5   75F9                   jnz     0069CAE0
0069CAE7   53                     push    ebx
0069CAE8   56                     push    esi
0069CAE9   57                     push    edi
0069CAEA   8BF8                   mov     edi, eax
0069CAEC   8B357CB37D00           mov     esi, [$007DB37C]
0069CAF2   33C0                   xor     eax, eax
0069CAF4   55                     push    ebp

* Possible String Reference to: 'Èâ}÷ˇÎÎäEˇ_^[ãÂ]√'
|
0069CAF5   68AACF6900             push    $0069CFAA

***** TRY
|
0069CAFA   64FF30                 push    dword ptr fs:[eax]
0069CAFD   648920                 mov     fs:[eax], esp
0069CB00   C645FF00               mov     byte ptr [ebp-$01], $00
0069CB04   33C0                   xor     eax, eax
0069CB06   55                     push    ebp
0069CB07   6888CF6900             push    $0069CF88

***** TRY
|
0069CB0C   64FF30                 push    dword ptr fs:[eax]
0069CB0F   648920                 mov     fs:[eax], esp
0069CB12   33C0                   xor     eax, eax
0069CB14   55                     push    ebp
0069CB15   683FCF6900             push    $0069CF3F

***** TRY
|
0069CB1A   64FF30                 push    dword ptr fs:[eax]
0069CB1D   648920                 mov     fs:[eax], esp
0069CB20   33DB                   xor     ebx, ebx
0069CB22   A118A67D00             mov     eax, dword ptr [$007DA618]
0069CB27   8B00                   mov     eax, [eax]

|
0069CB29   E8E2E90000             call    006AB510
0069CB2E   84C0                   test    al, al
0069CB30   0F84D7030000           jz      0069CF0D
0069CB36   6A64                   push    $64

* Reference to: kernel32.Sleep()
|
0069CB38   E83F50D7FF             call    00411B7C
0069CB3D   8D45F0                 lea     eax, [ebp-$10]

|
0069CB40   E8430AFDFF             call    0066D588
0069CB45   8B55F0                 mov     edx, [ebp-$10]
0069CB48   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CB4D   E89E89D6FF             call    004054F0
0069CB52   8B06                   mov     eax, [esi]
0069CB54   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.First(TDataSet);
|
0069CB5A   E8CDE4E4FF             call    004EB02C
0069CB5F   E984030000             jmp     0069CEE8
0069CB64   8D55EC                 lea     edx, [ebp-$14]
0069CB67   8B06                   mov     eax, [esi]
0069CB69   8B80D4000000           mov     eax, [eax+$00D4]
0069CB6F   8B08                   mov     ecx, [eax]
0069CB71   FF5160                 call    dword ptr [ecx+$60]
0069CB74   8B45EC                 mov     eax, [ebp-$14]
0069CB77   BAC4CF6900             mov     edx, $0069CFC4

* Reference to: System.@LStrCmp;
|
0069CB7C   E8278DD6FF             call    004058A8
0069CB81   0F85CE010000           jnz     0069CD55
0069CB87   A1B8B47D00             mov     eax, dword ptr [$007DB4B8]
0069CB8C   803800                 cmp     byte ptr [eax], $00
0069CB8F   7435                   jz      0069CBC6
0069CB91   8D55E8                 lea     edx, [ebp-$18]
0069CB94   8B06                   mov     eax, [esi]
0069CB96   8B80EC000000           mov     eax, [eax+$00EC]
0069CB9C   8B08                   mov     ecx, [eax]
0069CB9E   FF5160                 call    dword ptr [ecx+$60]
0069CBA1   837DE800               cmp     dword ptr [ebp-$18], +$00
0069CBA5   741F                   jz      0069CBC6
0069CBA7   8D55E4                 lea     edx, [ebp-$1C]
0069CBAA   8B06                   mov     eax, [esi]
0069CBAC   8B80EC000000           mov     eax, [eax+$00EC]
0069CBB2   8B08                   mov     ecx, [eax]
0069CBB4   FF5160                 call    dword ptr [ecx+$60]
0069CBB7   8B55E4                 mov     edx, [ebp-$1C]
0069CBBA   A1C4A77D00             mov     eax, dword ptr [$007DA7C4]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CBBF   E82C89D6FF             call    004054F0
0069CBC4   EB1D                   jmp     0069CBE3
0069CBC6   8D55E0                 lea     edx, [ebp-$20]
0069CBC9   8B06                   mov     eax, [esi]
0069CBCB   8B80E8000000           mov     eax, [eax+$00E8]
0069CBD1   8B08                   mov     ecx, [eax]
0069CBD3   FF5160                 call    dword ptr [ecx+$60]
0069CBD6   8B55E0                 mov     edx, [ebp-$20]
0069CBD9   A1C4A77D00             mov     eax, dword ptr [$007DA7C4]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CBDE   E80D89D6FF             call    004054F0
0069CBE3   8D55DC                 lea     edx, [ebp-$24]
0069CBE6   8B06                   mov     eax, [esi]
0069CBE8   8B8020010000           mov     eax, [eax+$0120]
0069CBEE   8B08                   mov     ecx, [eax]
0069CBF0   FF5160                 call    dword ptr [ecx+$60]
0069CBF3   8B55DC                 mov     edx, [ebp-$24]
0069CBF6   A1CCA47D00             mov     eax, dword ptr [$007DA4CC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CBFB   E8F088D6FF             call    004054F0
0069CC00   8D55D8                 lea     edx, [ebp-$28]
0069CC03   8B06                   mov     eax, [esi]
0069CC05   8B80F4000000           mov     eax, [eax+$00F4]
0069CC0B   8B08                   mov     ecx, [eax]
0069CC0D   FF5160                 call    dword ptr [ecx+$60]
0069CC10   8B55D8                 mov     edx, [ebp-$28]
0069CC13   A1A8AA7D00             mov     eax, dword ptr [$007DAAA8]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CC18   E8D388D6FF             call    004054F0
0069CC1D   8D55CC                 lea     edx, [ebp-$34]
0069CC20   8B06                   mov     eax, [esi]
0069CC22   8B80F8000000           mov     eax, [eax+$00F8]
0069CC28   8B08                   mov     ecx, [eax]
0069CC2A   FF5160                 call    dword ptr [ecx+$60]
0069CC2D   8B45CC                 mov     eax, [ebp-$34]
0069CC30   8D55D0                 lea     edx, [ebp-$30]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
0069CC33   E84C6C1000             call    007A3884
0069CC38   8B45D0                 mov     eax, [ebp-$30]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
0069CC3B   E8AC09D7FF             call    0040D5EC
0069CC40   83C4F4                 add     esp, -$0C
0069CC43   DB3C24                 fstp    tbyte ptr [esp]
0069CC46   9B                     wait
0069CC47   8D55D4                 lea     edx, [ebp-$2C]

* Possible String Reference to: '#############0.00'
|
0069CC4A   B8D0CF6900             mov     eax, $0069CFD0

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069CC4F   E8E808D7FF             call    0040D53C
0069CC54   8B55D4                 mov     edx, [ebp-$2C]
0069CC57   A1A8B57D00             mov     eax, dword ptr [$007DB5A8]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CC5C   E88F88D6FF             call    004054F0
0069CC61   8D55C4                 lea     edx, [ebp-$3C]
0069CC64   8B06                   mov     eax, [esi]
0069CC66   8B801C010000           mov     eax, [eax+$011C]
0069CC6C   8B08                   mov     ecx, [eax]
0069CC6E   FF5160                 call    dword ptr [ecx+$60]
0069CC71   8B45C4                 mov     eax, [ebp-$3C]
0069CC74   8D55C8                 lea     edx, [ebp-$38]

|
0069CC77   E8700BFDFF             call    0066D7EC
0069CC7C   8B55C8                 mov     edx, [ebp-$38]
0069CC7F   A114B77D00             mov     eax, dword ptr [$007DB714]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CC84   E86788D6FF             call    004054F0
0069CC89   8D55C0                 lea     edx, [ebp-$40]
0069CC8C   8B06                   mov     eax, [esi]
0069CC8E   8B80CC000000           mov     eax, [eax+$00CC]
0069CC94   8B08                   mov     ecx, [eax]
0069CC96   FF5160                 call    dword ptr [ecx+$60]
0069CC99   8B55C0                 mov     edx, [ebp-$40]
0069CC9C   A1E0A87D00             mov     eax, dword ptr [$007DA8E0]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CCA1   E84A88D6FF             call    004054F0
0069CCA6   8B06                   mov     eax, [esi]
0069CCA8   8B8028020000           mov     eax, [eax+$0228]
0069CCAE   8B10                   mov     edx, [eax]
0069CCB0   FF5254                 call    dword ptr [edx+$54]
0069CCB3   D81DE4CF6900           fcomp   dword ptr [$0069CFE4]
0069CCB9   DFE0                   fstsw   ax
0069CCBB   9E                     sahf
0069CCBC   7640                   jbe     0069CCFE
0069CCBE   8B06                   mov     eax, [esi]
0069CCC0   8B802C020000           mov     eax, [eax+$022C]
0069CCC6   8B10                   mov     edx, [eax]
0069CCC8   FF5254                 call    dword ptr [edx+$54]
0069CCCB   83C4F4                 add     esp, -$0C
0069CCCE   DB3C24                 fstp    tbyte ptr [esp]
0069CCD1   9B                     wait
0069CCD2   8D55B8                 lea     edx, [ebp-$48]

* Possible String Reference to: '###,##0.00'
|
0069CCD5   B8F0CF6900             mov     eax, $0069CFF0

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069CCDA   E85D08D7FF             call    0040D53C
0069CCDF   8B45B8                 mov     eax, [ebp-$48]
0069CCE2   8D4DBC                 lea     ecx, [ebp-$44]
0069CCE5   BA04D06900             mov     edx, $0069D004

* Reference to : TFrmInfoAtu._PROC_007A09AC()
|
0069CCEA   E8BD3C1000             call    007A09AC
0069CCEF   8B55BC                 mov     edx, [ebp-$44]
0069CCF2   A134B57D00             mov     eax, dword ptr [$007DB534]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CCF7   E8F487D6FF             call    004054F0
0069CCFC   EB0F                   jmp     0069CD0D
0069CCFE   A134B57D00             mov     eax, dword ptr [$007DB534]

* Possible String Reference to: '0000'
|
0069CD03   BA10D06900             mov     edx, $0069D010

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069CD08   E8E387D6FF             call    004054F0
0069CD0D   A1A8AA7D00             mov     eax, dword ptr [$007DAAA8]
0069CD12   8B00                   mov     eax, [eax]
0069CD14   50                     push    eax
0069CD15   A1A8B57D00             mov     eax, dword ptr [$007DB5A8]
0069CD1A   8B00                   mov     eax, [eax]
0069CD1C   50                     push    eax
0069CD1D   A134B57D00             mov     eax, dword ptr [$007DB534]
0069CD22   8B00                   mov     eax, [eax]
0069CD24   50                     push    eax
0069CD25   A1CCA47D00             mov     eax, dword ptr [$007DA4CC]
0069CD2A   8B00                   mov     eax, [eax]
0069CD2C   50                     push    eax
0069CD2D   8B0D14B77D00           mov     ecx, [$007DB714]
0069CD33   8B09                   mov     ecx, [ecx]
0069CD35   8B15E0A87D00           mov     edx, [$007DA8E0]
0069CD3B   8B12                   mov     edx, [edx]
0069CD3D   A1C4A77D00             mov     eax, dword ptr [$007DA7C4]
0069CD42   8B00                   mov     eax, [eax]

|
0069CD44   E813E90000             call    006AB65C
0069CD49   6A32                   push    $32

* Reference to: kernel32.Sleep()
|
0069CD4B   E82C4ED7FF             call    00411B7C
0069CD50   E986010000             jmp     0069CEDB
0069CD55   8D55B4                 lea     edx, [ebp-$4C]
0069CD58   8B06                   mov     eax, [esi]
0069CD5A   8B80D4000000           mov     eax, [eax+$00D4]
0069CD60   8B08                   mov     ecx, [eax]
0069CD62   FF5160                 call    dword ptr [ecx+$60]
0069CD65   8B45B4                 mov     eax, [ebp-$4C]
0069CD68   BA20D06900             mov     edx, $0069D020

* Reference to: System.@LStrCmp;
|
0069CD6D   E8368BD6FF             call    004058A8
0069CD72   756D                   jnz     0069CDE1

* Possible String Reference to: 'direita'
|
0069CD74   682CD06900             push    $0069D02C
0069CD79   8D45F4                 lea     eax, [ebp-$0C]
0069CD7C   50                     push    eax
0069CD7D   668B8728040000         mov     ax, word ptr [edi+$0428]
0069CD84   50                     push    eax
0069CD85   FFB724040000           push    dword ptr [edi+$0424]
0069CD8B   FFB720040000           push    dword ptr [edi+$0420]
0069CD91   8D55AC                 lea     edx, [ebp-$54]

* Possible String Reference to: '###,##0.00'
|
0069CD94   B8F0CF6900             mov     eax, $0069CFF0

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069CD99   E89E07D7FF             call    0040D53C
0069CD9E   8B45AC                 mov     eax, [ebp-$54]
0069CDA1   8D55B0                 lea     edx, [ebp-$50]

|
0069CDA4   E8875B1000             call    007A2930
0069CDA9   8B55B0                 mov     edx, [ebp-$50]
0069CDAC   B908000000             mov     ecx, $00000008
0069CDB1   B83CD06900             mov     eax, $0069D03C

|
0069CDB6   E80D591000             call    007A26C8
0069CDBB   8D45F8                 lea     eax, [ebp-$08]
0069CDBE   BA20D06900             mov     edx, $0069D020

* Reference to: System.@LStrLAsg(void;void;void;void);
|
0069CDC3   E86C87D6FF             call    00405534
0069CDC8   8B55F4                 mov     edx, [ebp-$0C]
0069CDCB   8B45F8                 mov     eax, [ebp-$08]

|
0069CDCE   E871EA0000             call    006AB844
0069CDD3   8BD8                   mov     ebx, eax
0069CDD5   6A64                   push    $64

* Reference to: kernel32.Sleep()
|
0069CDD7   E8A04DD7FF             call    00411B7C
0069CDDC   E9FA000000             jmp     0069CEDB
0069CDE1   8D55A8                 lea     edx, [ebp-$58]
0069CDE4   8B06                   mov     eax, [esi]
0069CDE6   8B80D4000000           mov     eax, [eax+$00D4]
0069CDEC   8B08                   mov     ecx, [eax]
0069CDEE   FF5160                 call    dword ptr [ecx+$60]
0069CDF1   8B45A8                 mov     eax, [ebp-$58]
0069CDF4   BA48D06900             mov     edx, $0069D048

* Reference to: System.@LStrCmp;
|
0069CDF9   E8AA8AD6FF             call    004058A8
0069CDFE   7562                   jnz     0069CE62
0069CE00   84DB                   test    bl, bl
0069CE02   0F85D3000000           jnz     0069CEDB

* Possible String Reference to: 'direita'
|
0069CE08   682CD06900             push    $0069D02C
0069CE0D   8D45F4                 lea     eax, [ebp-$0C]
0069CE10   50                     push    eax
0069CE11   6A00                   push    $00
0069CE13   6A00                   push    $00
0069CE15   6A00                   push    $00
0069CE17   8D55A0                 lea     edx, [ebp-$60]

* Possible String Reference to: '###,##0.00'
|
0069CE1A   B8F0CF6900             mov     eax, $0069CFF0

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069CE1F   E81807D7FF             call    0040D53C
0069CE24   8B45A0                 mov     eax, [ebp-$60]
0069CE27   8D55A4                 lea     edx, [ebp-$5C]

|
0069CE2A   E8015B1000             call    007A2930
0069CE2F   8B55A4                 mov     edx, [ebp-$5C]
0069CE32   B908000000             mov     ecx, $00000008
0069CE37   B83CD06900             mov     eax, $0069D03C

|
0069CE3C   E887581000             call    007A26C8
0069CE41   8D45F8                 lea     eax, [ebp-$08]
0069CE44   BA54D06900             mov     edx, $0069D054

* Reference to: System.@LStrLAsg(void;void;void;void);
|
0069CE49   E8E686D6FF             call    00405534
0069CE4E   8B55F4                 mov     edx, [ebp-$0C]
0069CE51   8B45F8                 mov     eax, [ebp-$08]

|
0069CE54   E8EBE90000             call    006AB844
0069CE59   6A64                   push    $64

* Reference to: kernel32.Sleep()
|
0069CE5B   E81C4DD7FF             call    00411B7C
0069CE60   EB79                   jmp     0069CEDB
0069CE62   8D559C                 lea     edx, [ebp-$64]
0069CE65   8B06                   mov     eax, [esi]
0069CE67   8B80D4000000           mov     eax, [eax+$00D4]
0069CE6D   8B08                   mov     ecx, [eax]
0069CE6F   FF5160                 call    dword ptr [ecx+$60]
0069CE72   8B459C                 mov     eax, [ebp-$64]
0069CE75   BA60D06900             mov     edx, $0069D060

* Reference to: System.@LStrCmp;
|
0069CE7A   E8298AD6FF             call    004058A8
0069CE7F   755A                   jnz     0069CEDB
0069CE81   8D5598                 lea     edx, [ebp-$68]
0069CE84   8B06                   mov     eax, [esi]
0069CE86   8B80D8000000           mov     eax, [eax+$00D8]
0069CE8C   8B08                   mov     ecx, [eax]
0069CE8E   FF5160                 call    dword ptr [ecx+$60]
0069CE91   8B4598                 mov     eax, [ebp-$68]
0069CE94   50                     push    eax
0069CE95   8D5594                 lea     edx, [ebp-$6C]
0069CE98   8B06                   mov     eax, [esi]
0069CE9A   8B80B4010000           mov     eax, [eax+$01B4]
0069CEA0   8B08                   mov     ecx, [eax]
0069CEA2   FF5160                 call    dword ptr [ecx+$60]
0069CEA5   8B4594                 mov     eax, [ebp-$6C]
0069CEA8   50                     push    eax
0069CEA9   8B06                   mov     eax, [esi]
0069CEAB   8B80C0010000           mov     eax, [eax+$01C0]
0069CEB1   8B10                   mov     edx, [eax]
0069CEB3   FF5254                 call    dword ptr [edx+$54]
0069CEB6   83C4F4                 add     esp, -$0C
0069CEB9   DB3C24                 fstp    tbyte ptr [esp]
0069CEBC   9B                     wait
0069CEBD   8D5590                 lea     edx, [ebp-$70]

* Possible String Reference to: '###,###,##0.00'
|
0069CEC0   B86CD06900             mov     eax, $0069D06C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069CEC5   E87206D7FF             call    0040D53C
0069CECA   8B5590                 mov     edx, [ebp-$70]
0069CECD   58                     pop     eax
0069CECE   59                     pop     ecx

|
0069CECF   E8D0EA0000             call    006AB9A4
0069CED4   6A64                   push    $64

* Reference to: kernel32.Sleep()
|
0069CED6   E8A14CD7FF             call    00411B7C
0069CEDB   8B06                   mov     eax, [esi]
0069CEDD   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0069CEE3   E85CE4E4FF             call    004EB344
0069CEE8   8B06                   mov     eax, [esi]
0069CEEA   8B80C0000000           mov     eax, [eax+$00C0]
0069CEF0   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0069CEF7   0F8467FCFFFF           jz      0069CB64

* Possible String Reference to: 'Obrigado. Volte Sempre!'
|
0069CEFD   B884D06900             mov     eax, $0069D084

|
0069CF02   E80DEC0000             call    006ABB14
0069CF07   C645FF01               mov     byte ptr [ebp-$01], $01
0069CF0B   EB28                   jmp     0069CF35
0069CF0D   6A00                   push    $00
0069CF0F   8B0D7CA47D00           mov     ecx, [$007DA47C]
0069CF15   8B09                   mov     ecx, [ecx]
0069CF17   8D458C                 lea     eax, [ebp-$74]

* Possible String Reference to: 'O cupom n„o pode ser aberto!'
|
0069CF1A   BAA4D06900             mov     edx, $0069D0A4

* Reference to: System.@LStrCat3;
|
0069CF1F   E88488D6FF             call    004057A8
0069CF24   8B458C                 mov     eax, [ebp-$74]
0069CF27   668B0DC4D06900         mov     cx, word ptr [$0069D0C4]
0069CF2E   33D2                   xor     edx, edx

|
0069CF30   E8F76BDAFF             call    00443B2C
0069CF35   33C0                   xor     eax, eax
0069CF37   5A                     pop     edx
0069CF38   59                     pop     ecx
0069CF39   59                     pop     ecx
0069CF3A   648910                 mov     fs:[eax], edx
0069CF3D   EB3B                   jmp     0069CF7A

* Reference to: System.@HandleOnException;
|
0069CF3F   E96C7CD6FF             jmp     00404BB0
0069CF44   0100                   add     [eax], eax
0069CF46   0000                   add     [eax], al
0069CF48   40                     inc     eax
0069CF49   95                     xchg    eax, ebp
0069CF4A   40                     inc     eax
0069CF4B   0050CF                 add     [eax-$31], dl
0069CF4E   690089C36A00           imul    eax, [eax], $006AC389
0069CF54   8B4B04                 mov     ecx, [ebx+$04]
0069CF57   8D4588                 lea     eax, [ebp-$78]

* Possible String Reference to: 'Erro ao imprimir o cupom!'
|
0069CF5A   BAD0D06900             mov     edx, $0069D0D0

* Reference to: System.@LStrCat3;
|
0069CF5F   E84488D6FF             call    004057A8
0069CF64   8B4588                 mov     eax, [ebp-$78]
0069CF67   668B0DC4D06900         mov     cx, word ptr [$0069D0C4]
0069CF6E   B201                   mov     dl, $01

|
0069CF70   E8B76BDAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069CF75   E8367FD6FF             call    00404EB0

****** END
|
0069CF7A   33C0                   xor     eax, eax
0069CF7C   5A                     pop     edx
0069CF7D   59                     pop     ecx
0069CF7E   59                     pop     ecx
0069CF7F   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069CF82   688FCF6900             push    $0069CF8F
0069CF87   C3                     ret


* Reference to: System.@HandleFinally;
|
0069CF88   E9AB7DD6FF             jmp     00404D38
0069CF8D   EBF8                   jmp     0069CF87

****** END
|
0069CF8F   33C0                   xor     eax, eax
0069CF91   5A                     pop     edx
0069CF92   59                     pop     ecx
0069CF93   59                     pop     ecx
0069CF94   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0069CF97   68B1CF6900             push    $0069CFB1
0069CF9C   8D4588                 lea     eax, [ebp-$78]
0069CF9F   BA1D000000             mov     edx, $0000001D

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069CFA4   E81785D6FF             call    004054C0
0069CFA9   C3                     ret


* Reference to: System.@HandleFinally;
|
0069CFAA   E9897DD6FF             jmp     00404D38
0069CFAF   EBEB                   jmp     0069CF9C

****** END
|
0069CFB1   8A45FF                 mov     al, byte ptr [ebp-$01]
0069CFB4   5F                     pop     edi
0069CFB5   5E                     pop     esi
0069CFB6   5B                     pop     ebx
0069CFB7   8BE5                   mov     esp, ebp
0069CFB9   5D                     pop     ebp
0069CFBA   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069CFAA(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069CFAA   E9897DD6FF             jmp     00404D38

|
0069CFAF   EBEB                   jmp     0069CF9C
0069CFB1   8A45FF                 mov     al, byte ptr [ebp-$01]
0069CFB4   5F                     pop     edi
0069CFB5   5E                     pop     esi
0069CFB6   5B                     pop     ebx
0069CFB7   8BE5                   mov     esp, ebp
0069CFB9   5D                     pop     ebp
0069CFBA   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069D0ED(Sender : TObject);
begin
(*
0069D0ED   8BEC                   mov     ebp, esp
0069D0EF   83C4EC                 add     esp, -$14
0069D0F2   53                     push    ebx
0069D0F3   56                     push    esi
0069D0F4   57                     push    edi
0069D0F5   33DB                   xor     ebx, ebx
0069D0F7   895DF0                 mov     [ebp-$10], ebx
0069D0FA   895DEC                 mov     [ebp-$14], ebx
0069D0FD   894DF8                 mov     [ebp-$08], ecx
0069D100   8955FC                 mov     [ebp-$04], edx
0069D103   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0069D106   E84188D6FF             call    0040594C
0069D10B   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0069D10E   E83988D6FF             call    0040594C
0069D113   8B358CA97D00           mov     esi, [$007DA98C]
0069D119   33C0                   xor     eax, eax
0069D11B   55                     push    ebp
0069D11C   68E1D26900             push    $0069D2E1

***** TRY
|
0069D121   64FF30                 push    dword ptr fs:[eax]
0069D124   648920                 mov     fs:[eax], esp
0069D127   C645F700               mov     byte ptr [ebp-$09], $00
0069D12B   33D2                   xor     edx, edx
0069D12D   55                     push    ebp
0069D12E   68B2D26900             push    $0069D2B2

***** TRY
|
0069D133   64FF32                 push    dword ptr fs:[edx]
0069D136   648922                 mov     fs:[edx], esp
0069D139   33D2                   xor     edx, edx
0069D13B   55                     push    ebp
0069D13C   689AD26900             push    $0069D29A

***** TRY
|
0069D141   64FF32                 push    dword ptr fs:[edx]
0069D144   648922                 mov     fs:[edx], esp
0069D147   8D55EC                 lea     edx, [ebp-$14]
0069D14A   A118AC7D00             mov     eax, dword ptr [$007DAC18]
0069D14F   8B00                   mov     eax, [eax]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0069D151   E80EDCD6FF             call    0040AD64
0069D156   8B4DEC                 mov     ecx, [ebp-$14]
0069D159   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'CODMESA = '
|
0069D15C   BAFCD26900             mov     edx, $0069D2FC

* Reference to: System.@LStrCat3;
|
0069D161   E84286D6FF             call    004057A8
0069D166   8B45F0                 mov     eax, [ebp-$10]
0069D169   50                     push    eax
0069D16A   6A00                   push    $00
0069D16C   6A01                   push    $01
0069D16E   8B06                   mov     eax, [esi]
0069D170   8B4068                 mov     eax, [eax+$68]
0069D173   B910D36900             mov     ecx, $0069D310

* Possible String Reference to: 'MESAS'
|
0069D178   BA1CD36900             mov     edx, $0069D31C

|
0069D17D   E8E6A81000             call    007A7A68
0069D182   84C0                   test    al, al
0069D184   0F8406010000           jz      0069D290
0069D18A   8B06                   mov     eax, [esi]
0069D18C   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.First(TDataSet);
|
0069D18F   E898DEE4FF             call    004EB02C
0069D194   EB31                   jmp     0069D1C7

* Reference to: DB.TDataSet.Edit(TDataSet);
|
0069D196   E89DE2E4FF             call    004EB438
0069D19B   8B06                   mov     eax, [esi]
0069D19D   8B80C4090000           mov     eax, [eax+$09C4]
0069D1A3   BA2CD36900             mov     edx, $0069D32C
0069D1A8   8B08                   mov     ecx, [eax]
0069D1AA   FF91B0000000           call    dword ptr [ecx+$00B0]
0069D1B0   8B06                   mov     eax, [esi]
0069D1B2   8B4074                 mov     eax, [eax+$74]
0069D1B5   8B10                   mov     edx, [eax]
0069D1B7   FF924C020000           call    dword ptr [edx+$024C]
0069D1BD   8B06                   mov     eax, [esi]
0069D1BF   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0069D1C2   E87DE1E4FF             call    004EB344
0069D1C7   8B06                   mov     eax, [esi]
0069D1C9   8B4074                 mov     eax, [eax+$74]
0069D1CC   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0069D1D3   74C1                   jz      0069D196
0069D1D5   8B06                   mov     eax, [esi]
0069D1D7   8B4070                 mov     eax, [eax+$70]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
0069D1DA   E859E2E4FF             call    004EB438

* Reference to: SysUtils.Now:TDateTime;
|
0069D1DF   E8780AD7FF             call    0040DC5C
0069D1E4   83C4F8                 add     esp, -$08
0069D1E7   DD1C24                 fstp    qword ptr [esp]
0069D1EA   9B                     wait
0069D1EB   8B06                   mov     eax, [esi]
0069D1ED   8B8030090000           mov     eax, [eax+$0930]
0069D1F3   8B10                   mov     edx, [eax]
0069D1F5   FF92A0000000           call    dword ptr [edx+$00A0]
0069D1FB   8B06                   mov     eax, [esi]
0069D1FD   8B80C0090000           mov     eax, [eax+$09C0]
0069D203   BA2CD36900             mov     edx, $0069D32C
0069D208   8B08                   mov     ecx, [eax]
0069D20A   FF91B0000000           call    dword ptr [ecx+$00B0]
0069D210   8B06                   mov     eax, [esi]
0069D212   8B80CC090000           mov     eax, [eax+$09CC]
0069D218   8B55FC                 mov     edx, [ebp-$04]
0069D21B   8B08                   mov     ecx, [eax]
0069D21D   FF91B0000000           call    dword ptr [ecx+$00B0]
0069D223   8B06                   mov     eax, [esi]
0069D225   8B80D0090000           mov     eax, [eax+$09D0]
0069D22B   8B55F8                 mov     edx, [ebp-$08]
0069D22E   8B08                   mov     ecx, [eax]
0069D230   FF91B0000000           call    dword ptr [ecx+$00B0]
0069D236   8B06                   mov     eax, [esi]
0069D238   8B80C8090000           mov     eax, [eax+$09C8]
0069D23E   8B5508                 mov     edx, [ebp+$08]
0069D241   8B08                   mov     ecx, [eax]
0069D243   FF91A8000000           call    dword ptr [ecx+$00A8]
0069D249   8B06                   mov     eax, [esi]
0069D24B   8B4070                 mov     eax, [eax+$70]
0069D24E   8B10                   mov     edx, [eax]
0069D250   FF924C020000           call    dword ptr [edx+$024C]
0069D256   8B06                   mov     eax, [esi]
0069D258   8B4070                 mov     eax, [eax+$70]

* Reference to: DB.TDataSet.Refresh(TDataSet);
|
0069D25B   E818E1E4FF             call    004EB378
0069D260   8B06                   mov     eax, [esi]
0069D262   8B4068                 mov     eax, [eax+$68]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
0069D265   E8CEE1E4FF             call    004EB438
0069D26A   8B06                   mov     eax, [esi]
0069D26C   8B800C020000           mov     eax, [eax+$020C]
0069D272   BA38D36900             mov     edx, $0069D338
0069D277   8B08                   mov     ecx, [eax]
0069D279   FF91B0000000           call    dword ptr [ecx+$00B0]
0069D27F   8B06                   mov     eax, [esi]
0069D281   8B4068                 mov     eax, [eax+$68]
0069D284   8B10                   mov     edx, [eax]
0069D286   FF924C020000           call    dword ptr [edx+$024C]
0069D28C   C645F701               mov     byte ptr [ebp-$09], $01
0069D290   33C0                   xor     eax, eax
0069D292   5A                     pop     edx
0069D293   59                     pop     ecx
0069D294   59                     pop     ecx
0069D295   648910                 mov     fs:[eax], edx
0069D298   EB0A                   jmp     0069D2A4

* Reference to: System.@HandleAnyException;
|
0069D29A   E9E577D6FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
0069D29F   E80C7CD6FF             call    00404EB0

****** END
|
0069D2A4   33C0                   xor     eax, eax
0069D2A6   5A                     pop     edx
0069D2A7   59                     pop     ecx
0069D2A8   59                     pop     ecx
0069D2A9   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069D2AC   68B9D26900             push    $0069D2B9
0069D2B1   C3                     ret


* Reference to: System.@HandleFinally;
|
0069D2B2   E9817AD6FF             jmp     00404D38
0069D2B7   EBF8                   jmp     0069D2B1

****** END
|
0069D2B9   33C0                   xor     eax, eax
0069D2BB   5A                     pop     edx
0069D2BC   59                     pop     ecx
0069D2BD   59                     pop     ecx
0069D2BE   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069D2C1   68E8D26900             push    $0069D2E8
0069D2C6   8D45EC                 lea     eax, [ebp-$14]
0069D2C9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069D2CE   E8ED81D6FF             call    004054C0
0069D2D3   8D45F8                 lea     eax, [ebp-$08]
0069D2D6   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069D2DB   E8E081D6FF             call    004054C0
0069D2E0   C3                     ret


* Reference to: System.@HandleFinally;
|
0069D2E1   E9527AD6FF             jmp     00404D38
0069D2E6   EBDE                   jmp     0069D2C6

****** END
|
0069D2E8   8A45F7                 mov     al, byte ptr [ebp-$09]
0069D2EB   5F                     pop     edi
0069D2EC   5E                     pop     esi
0069D2ED   5B                     pop     ebx
0069D2EE   8BE5                   mov     esp, ebp
0069D2F0   5D                     pop     ebp
0069D2F1   C20400                 ret     $0004

*)
end;

procedure TfrmFecha._PROC_0069D545(Sender : TObject);
begin
(*
0069D545   4D                     dec     ebp
0069D546   4C                     dec     esp
0069D547   43                     inc     ebx
0069D548   54                     push    esp
0069D549   4F                     dec     edi
0069D54A   203D20000000           and     [$00000020], bh
0069D550   FFFF                   DB  $FF, $FF  //      
0069D552   FFFF                   DB  $FF, $FF  //      
0069D554   07                     pop     es
0069D555   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069D576(Sender : TObject);
begin
(*
0069D576   4D                     dec     ebp
0069D577   50                     push    eax
0069D578   45                     inc     ebp
0069D579   53                     push    ebx
0069D57A   53                     push    ebx
0069D57B   4F                     dec     edi
0069D57C   41                     inc     ecx
0069D57D   53                     push    ebx
0069D57E   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069D775(Sender : TObject);
begin
(*
0069D775   4D                     dec     ebp
0069D776   4C                     dec     esp
0069D777   43                     inc     ebx
0069D778   54                     push    esp
0069D779   4F                     dec     edi
0069D77A   203D20000000           and     [$00000020], bh
0069D780   FFFF                   DB  $FF, $FF  //      
0069D782   FFFF                   DB  $FF, $FF  //      
0069D784   07                     pop     es
0069D785   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069D7A6(Sender : TObject);
begin
(*
0069D7A6   4D                     dec     ebp
0069D7A7   50                     push    eax
0069D7A8   45                     inc     ebp
0069D7A9   53                     push    ebx
0069D7AA   53                     push    ebx
0069D7AB   4F                     dec     edi
0069D7AC   41                     inc     ecx
0069D7AD   53                     push    ebx
0069D7AE   0000                   add     [eax], al

*)
end;

procedure TfrmFecha._PROC_0069D891(Sender : TObject);
begin
(*
0069D891   8BEC                   mov     ebp, esp
0069D893   B918000000             mov     ecx, $00000018
0069D898   6A00                   push    $00
0069D89A   6A00                   push    $00
0069D89C   49                     dec     ecx
0069D89D   75F9                   jnz     0069D898
0069D89F   53                     push    ebx
0069D8A0   8BD8                   mov     ebx, eax
0069D8A2   33C0                   xor     eax, eax
0069D8A4   55                     push    ebp

* Possible String Reference to: 'Èdr÷ˇÎ‚€m[ãÂ]√'
|
0069D8A5   68CFDA6900             push    $0069DACF

***** TRY
|
0069D8AA   64FF30                 push    dword ptr fs:[eax]
0069D8AD   648920                 mov     fs:[eax], esp
0069D8B0   A158B47D00             mov     eax, dword ptr [$007DB458]
0069D8B5   DB28                   fld     tbyte ptr [eax]
0069D8B7   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarFromReal;
|
0069D8BA   E8C9B3D7FF             call    00418C88
0069D8BF   8D55E0                 lea     edx, [ebp-$20]

* Reference to control TfrmFecha.EdVlrMerc : TJvValidateEdit
|
0069D8C2   8B83F0030000           mov     eax, [ebx+$03F0]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0069D8C8   E8C359FBFF             call    00653290
0069D8CD   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TfrmFecha.EdPrcDesc : TJvValidateEdit
|
0069D8D0   8B83E4030000           mov     eax, [ebx+$03E4]

|
0069D8D6   E8DD58FBFF             call    006531B8
0069D8DB   8D45D0                 lea     eax, [ebp-$30]
0069D8DE   50                     push    eax
0069D8DF   8D45C0                 lea     eax, [ebp-$40]
0069D8E2   33D2                   xor     edx, edx
0069D8E4   B101                   mov     cl, $01

|
0069D8E6   E885B1D7FF             call    00418A70
0069D8EB   8D55C0                 lea     edx, [ebp-$40]
0069D8EE   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
0069D8EF   E850F8D7FF             call    0041D144
0069D8F4   7E77                   jle     0069D96D
0069D8F6   A158B47D00             mov     eax, dword ptr [$007DB458]
0069D8FB   DB28                   fld     tbyte ptr [eax]
0069D8FD   8D45A0                 lea     eax, [ebp-$60]

* Reference to: Variants.@VarFromReal;
|
0069D900   E883B3D7FF             call    00418C88
0069D905   8D45A0                 lea     eax, [ebp-$60]
0069D908   50                     push    eax
0069D909   8D5590                 lea     edx, [ebp-$70]

* Reference to control TfrmFecha.EdPrcDesc : TJvValidateEdit
|
0069D90C   8B83E4030000           mov     eax, [ebx+$03E4]

|
0069D912   E8A158FBFF             call    006531B8
0069D917   8D5590                 lea     edx, [ebp-$70]
0069D91A   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069D91B   E89CF7D7FF             call    0041D0BC
0069D920   8D45A0                 lea     eax, [ebp-$60]
0069D923   50                     push    eax
0069D924   8D4580                 lea     eax, [ebp-$80]
0069D927   BA64000000             mov     edx, $00000064
0069D92C   B101                   mov     cl, $01

|
0069D92E   E83DB1D7FF             call    00418A70
0069D933   8D5580                 lea     edx, [ebp-$80]
0069D936   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069D937   E8BCF7D7FF             call    0041D0F8
0069D93C   8D45A0                 lea     eax, [ebp-$60]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0069D93F   E8A492D7FF             call    00416BE8
0069D944   83C4F8                 add     esp, -$08
0069D947   DD1C24                 fstp    qword ptr [esp]
0069D94A   9B                     wait
0069D94B   B802000000             mov     eax, $00000002

|
0069D950   E8AF391000             call    007A1304
0069D955   8D45B0                 lea     eax, [ebp-$50]

* Reference to: Variants.@VarFromReal;
|
0069D958   E82BB3D7FF             call    00418C88
0069D95D   8D55B0                 lea     edx, [ebp-$50]

* Reference to control TfrmFecha.EdVlrDesc : TJvValidateEdit
|
0069D960   8B83E8030000           mov     eax, [ebx+$03E8]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0069D966   E82559FBFF             call    00653290
0069D96B   EB20                   jmp     0069D98D
0069D96D   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]
0069D973   33D2                   xor     edx, edx
0069D975   B101                   mov     cl, $01

|
0069D977   E8F4B0D7FF             call    00418A70
0069D97C   8D9570FFFFFF           lea     edx, [ebp+$FFFFFF70]

* Reference to control TfrmFecha.EdVlrDesc : TJvValidateEdit
|
0069D982   8B83E8030000           mov     eax, [ebx+$03E8]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0069D988   E80359FBFF             call    00653290
0069D98D   A158B47D00             mov     eax, dword ptr [$007DB458]
0069D992   DB28                   fld     tbyte ptr [eax]
0069D994   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Reference to: Variants.@VarFromReal;
|
0069D99A   E8E9B2D7FF             call    00418C88
0069D99F   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
0069D9A5   50                     push    eax
0069D9A6   8D9550FFFFFF           lea     edx, [ebp+$FFFFFF50]

* Reference to control TfrmFecha.EdVlrDesc : TJvValidateEdit
|
0069D9AC   8B83E8030000           mov     eax, [ebx+$03E8]

|
0069D9B2   E80158FBFF             call    006531B8
0069D9B7   8D9550FFFFFF           lea     edx, [ebp+$FFFFFF50]
0069D9BD   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0069D9BE   E8EDF6D7FF             call    0041D0B0
0069D9C3   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0069D9C9   E81A92D7FF             call    00416BE8
0069D9CE   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069D9D3   DB38                   fstp    tbyte ptr [eax]
0069D9D5   9B                     wait

* Reference to control TfrmFecha.ckPrcServ : TCheckBox
|
0069D9D6   8B8358030000           mov     eax, [ebx+$0358]
0069D9DC   8B10                   mov     edx, [eax]

* Reference to method TCheckBox.GetChecked()
|
0069D9DE   FF92C8000000           call    dword ptr [edx+$00C8]
0069D9E4   84C0                   test    al, al
0069D9E6   745D                   jz      0069DA45
0069D9E8   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069D9ED   8B00                   mov     eax, [eax]
0069D9EF   8B8090010000           mov     eax, [eax+$0190]
0069D9F5   8B10                   mov     edx, [eax]
0069D9F7   FF5254                 call    dword ptr [edx+$54]
0069D9FA   D81DE0DA6900           fcomp   dword ptr [$0069DAE0]
0069DA00   DFE0                   fstsw   ax
0069DA02   9E                     sahf
0069DA03   7640                   jbe     0069DA45
0069DA05   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0069DA0A   8B00                   mov     eax, [eax]
0069DA0C   8B8090010000           mov     eax, [eax+$0190]
0069DA12   8B10                   mov     edx, [eax]
0069DA14   FF5254                 call    dword ptr [edx+$54]
0069DA17   D905E4DA6900           fld     dword ptr [$0069DAE4]

* Reference to: System.@FSafeDivide;
|
0069DA1D   E8DE5AD6FF             call    00403500
0069DA22   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069DA27   DB28                   fld     tbyte ptr [eax]
0069DA29   DEC9                   fmulp   st(1), st(0)
0069DA2B   83C4F8                 add     esp, -$08
0069DA2E   DD1C24                 fstp    qword ptr [esp]
0069DA31   9B                     wait
0069DA32   B802000000             mov     eax, $00000002

|
0069DA37   E8C8381000             call    007A1304
0069DA3C   DBBB20040000           fstp    tbyte ptr [ebx+$0420]
0069DA42   9B                     wait
0069DA43   EB15                   jmp     0069DA5A
0069DA45   33C0                   xor     eax, eax

* Reference to field TfrmFecha.OFFS_0420
|
0069DA47   898320040000           mov     [ebx+$0420], eax

* Reference to field TfrmFecha.OFFS_0424
|
0069DA4D   898324040000           mov     [ebx+$0424], eax

* Reference to field TfrmFecha.OFFS_0428
|
0069DA53   66898328040000         mov     [ebx+$0428], ax
0069DA5A   DBAB20040000           fld     tbyte ptr [ebx+$0420]
0069DA60   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]

* Reference to: Variants.@VarFromReal;
|
0069DA66   E81DB2D7FF             call    00418C88
0069DA6B   8D9540FFFFFF           lea     edx, [ebp+$FFFFFF40]

* Reference to control TfrmFecha.EdVlrMesa : TJvValidateEdit
|
0069DA71   8B83CC030000           mov     eax, [ebx+$03CC]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0069DA77   E81458FBFF             call    00653290
0069DA7C   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069DA81   DB28                   fld     tbyte ptr [eax]
0069DA83   DBAB20040000           fld     tbyte ptr [ebx+$0420]
0069DA89   DEC1                   faddp   st(1), st(0)
0069DA8B   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069DA90   DB38                   fstp    tbyte ptr [eax]
0069DA92   9B                     wait
0069DA93   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0069DA98   8B10                   mov     edx, [eax]
0069DA9A   8955F0                 mov     [ebp-$10], edx
0069DA9D   8B5004                 mov     edx, [eax+$04]
0069DAA0   8955F4                 mov     [ebp-$0C], edx
0069DAA3   668B5008               mov     dx, word ptr [eax+$08]
0069DAA7   668955F8               mov     [ebp-$08], dx
0069DAAB   33C0                   xor     eax, eax
0069DAAD   5A                     pop     edx
0069DAAE   59                     pop     ecx
0069DAAF   59                     pop     ecx
0069DAB0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '€m[ãÂ]√'
|
0069DAB3   68D6DA6900             push    $0069DAD6
0069DAB8   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]

* Reference to object Variant
|
0069DABE   8B1524114000           mov     edx, [$00401124]
0069DAC4   B90B000000             mov     ecx, $0000000B

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0069DAC9   E8CE85D6FF             call    0040609C
0069DACE   C3                     ret


* Reference to: System.@HandleFinally;
|
0069DACF   E96472D6FF             jmp     00404D38
0069DAD4   EBE2                   jmp     0069DAB8

****** END
|
0069DAD6   DB6DF0                 fld     tbyte ptr [ebp-$10]
0069DAD9   5B                     pop     ebx
0069DADA   8BE5                   mov     esp, ebp
0069DADC   5D                     pop     ebp
0069DADD   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069DAF4(Sender : TObject);
begin
(*
0069DAF4   55                     push    ebp
0069DAF5   8BEC                   mov     ebp, esp
0069DAF7   B90E000000             mov     ecx, $0000000E
0069DAFC   6A00                   push    $00
0069DAFE   6A00                   push    $00
0069DB00   49                     dec     ecx
0069DB01   75F9                   jnz     0069DAFC
0069DB03   53                     push    ebx
0069DB04   56                     push    esi
0069DB05   57                     push    edi
0069DB06   8BF8                   mov     edi, eax
0069DB08   8B357CB37D00           mov     esi, [$007DB37C]
0069DB0E   33C0                   xor     eax, eax
0069DB10   55                     push    ebp
0069DB11   68CBDE6900             push    $0069DECB

***** TRY
|
0069DB16   64FF30                 push    dword ptr fs:[eax]
0069DB19   648920                 mov     fs:[eax], esp
0069DB1C   C645FF00               mov     byte ptr [ebp-$01], $00
0069DB20   33D2                   xor     edx, edx
0069DB22   55                     push    ebp
0069DB23   6884DE6900             push    $0069DE84

***** TRY
|
0069DB28   64FF32                 push    dword ptr fs:[edx]
0069DB2B   648922                 mov     fs:[edx], esp
0069DB2E   33D2                   xor     edx, edx
0069DB30   55                     push    ebp
0069DB31   683BDE6900             push    $0069DE3B

***** TRY
|
0069DB36   64FF32                 push    dword ptr fs:[edx]
0069DB39   648922                 mov     fs:[edx], esp

|
0069DB3C   E853AE0000             call    006A8994
0069DB41   8B06                   mov     eax, [esi]
0069DB43   8B8048020000           mov     eax, [eax+$0248]
0069DB49   8B10                   mov     edx, [eax]
0069DB4B   FF5258                 call    dword ptr [edx+$58]

|
0069DB4E   E879B50000             call    006A90CC
0069DB53   84C0                   test    al, al
0069DB55   0F84D2020000           jz      0069DE2D
0069DB5B   8B06                   mov     eax, [esi]
0069DB5D   8B80E8010000           mov     eax, [eax+$01E8]
0069DB63   8B10                   mov     edx, [eax]
0069DB65   FF5258                 call    dword ptr [edx+$58]

|
0069DB68   E8536C1100             call    007B47C0
0069DB6D   8B06                   mov     eax, [esi]
0069DB6F   8B4068                 mov     eax, [eax+$68]
0069DB72   8B10                   mov     edx, [eax]
0069DB74   FF5258                 call    dword ptr [edx+$58]
0069DB77   8BD8                   mov     ebx, eax
0069DB79   85DB                   test    ebx, ebx
0069DB7B   7E26                   jle     0069DBA3

|
0069DB7D   E81EA60000             call    006A81A0

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
0069DB82   E849A60000             call    006A81D0
0069DB87   8D0440                 lea     eax, [eax+eax*2]
0069DB8A   8B15BCA37D00           mov     edx, [$007DA3BC]
0069DB90   8B12                   mov     edx, [edx]
0069DB92   8D448204               lea     eax, [edx+eax*4+$04]
0069DB96   BAE4DE6900             mov     edx, $0069DEE4

* Reference to: System.@LStrAsg(void;void;void;void);
|
0069DB9B   E85079D6FF             call    004054F0
0069DBA0   4B                     dec     ebx
0069DBA1   75DA                   jnz     0069DB7D
0069DBA3   6A00                   push    $00
0069DBA5   A1BCA37D00             mov     eax, dword ptr [$007DA3BC]
0069DBAA   B901000000             mov     ecx, $00000001

* Reference to class mp20ci
|
0069DBAF   8B1580816A00           mov     edx, [$006A8180]

* Reference to: System.@DynArraySetLength;
|
0069DBB5   E8F68FD6FF             call    00406BB0
0069DBBA   83C404                 add     esp, +$04

|
0069DBBD   E8C6B00000             call    006A8C88
0069DBC2   33DB                   xor     ebx, ebx
0069DBC4   8B06                   mov     eax, [esi]
0069DBC6   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.First(TDataSet);
|
0069DBCC   E85BD4E4FF             call    004EB02C
0069DBD1   E959010000             jmp     0069DD2F
0069DBD6   8D55F8                 lea     edx, [ebp-$08]
0069DBD9   8B06                   mov     eax, [esi]
0069DBDB   8B80D4000000           mov     eax, [eax+$00D4]
0069DBE1   8B08                   mov     ecx, [eax]
0069DBE3   FF5160                 call    dword ptr [ecx+$60]
0069DBE6   8B45F8                 mov     eax, [ebp-$08]
0069DBE9   BAF0DE6900             mov     edx, $0069DEF0

* Reference to: System.@LStrCmp;
|
0069DBEE   E8B57CD6FF             call    004058A8
0069DBF3   751C                   jnz     0069DC11
0069DBF5   8B06                   mov     eax, [esi]
0069DBF7   8B80C8000000           mov     eax, [eax+$00C8]
0069DBFD   8B10                   mov     edx, [eax]
0069DBFF   FF5258                 call    dword ptr [edx+$58]
0069DC02   8BD8                   mov     ebx, eax
0069DC04   8D45F4                 lea     eax, [ebp-$0C]

|
0069DC07   E8D0B80000             call    006A94DC
0069DC0C   E911010000             jmp     0069DD22
0069DC11   8D55F0                 lea     edx, [ebp-$10]
0069DC14   8B06                   mov     eax, [esi]
0069DC16   8B80D4000000           mov     eax, [eax+$00D4]
0069DC1C   8B08                   mov     ecx, [eax]
0069DC1E   FF5160                 call    dword ptr [ecx+$60]
0069DC21   8B45F0                 mov     eax, [ebp-$10]
0069DC24   BAFCDE6900             mov     edx, $0069DEFC

* Reference to: System.@LStrCmp;
|
0069DC29   E87A7CD6FF             call    004058A8
0069DC2E   750F                   jnz     0069DC3F
0069DC30   8D55EC                 lea     edx, [ebp-$14]
0069DC33   8BC3                   mov     eax, ebx

|
0069DC35   E83EC30000             call    006A9F78
0069DC3A   E9E3000000             jmp     0069DD22
0069DC3F   8D55E8                 lea     edx, [ebp-$18]
0069DC42   8B06                   mov     eax, [esi]
0069DC44   8B80D4000000           mov     eax, [eax+$00D4]
0069DC4A   8B08                   mov     ecx, [eax]
0069DC4C   FF5160                 call    dword ptr [ecx+$60]
0069DC4F   8B45E8                 mov     eax, [ebp-$18]
0069DC52   BA08DF6900             mov     edx, $0069DF08

* Reference to: System.@LStrCmp;
|
0069DC57   E84C7CD6FF             call    004058A8
0069DC5C   7515                   jnz     0069DC73
0069DC5E   8D45E4                 lea     eax, [ebp-$1C]

|
0069DC61   E892AB0000             call    006A87F8
0069DC66   8D45E0                 lea     eax, [ebp-$20]

|
0069DC69   E80EC70000             call    006AA37C
0069DC6E   E9AF000000             jmp     0069DD22
0069DC73   8D55DC                 lea     edx, [ebp-$24]
0069DC76   8B06                   mov     eax, [esi]
0069DC78   8B80D4000000           mov     eax, [eax+$00D4]
0069DC7E   8B08                   mov     ecx, [eax]
0069DC80   FF5160                 call    dword ptr [ecx+$60]
0069DC83   8B45DC                 mov     eax, [ebp-$24]
0069DC86   BA14DF6900             mov     edx, $0069DF14

* Reference to: System.@LStrCmp;
|
0069DC8B   E8187CD6FF             call    004058A8
0069DC90   7517                   jnz     0069DCA9
0069DC92   8D45D8                 lea     eax, [ebp-$28]

|
0069DC95   E85EAB0000             call    006A87F8
0069DC9A   8D45D4                 lea     eax, [ebp-$2C]

|
0069DC9D   E802C90000             call    006AA5A4

* Reference to : TfrmGerenciador._PROC_006A81E0()
|
0069DCA2   E839A50000             call    006A81E0
0069DCA7   EB79                   jmp     0069DD22
0069DCA9   8D55D0                 lea     edx, [ebp-$30]
0069DCAC   8B06                   mov     eax, [esi]
0069DCAE   8B80D4000000           mov     eax, [eax+$00D4]
0069DCB4   8B08                   mov     ecx, [eax]
0069DCB6   FF5160                 call    dword ptr [ecx+$60]
0069DCB9   8B45D0                 mov     eax, [ebp-$30]
0069DCBC   BAFCDE6900             mov     edx, $0069DEFC

* Reference to: System.@LStrCmp;
|
0069DCC1   E8E27BD6FF             call    004058A8
0069DCC6   750A                   jnz     0069DCD2
0069DCC8   8D45CC                 lea     eax, [ebp-$34]

|
0069DCCB   E878C40000             call    006AA148
0069DCD0   EB50                   jmp     0069DD22
0069DCD2   8D55C8                 lea     edx, [ebp-$38]
0069DCD5   8B06                   mov     eax, [esi]
0069DCD7   8B80D4000000           mov     eax, [eax+$00D4]
0069DCDD   8B08                   mov     ecx, [eax]
0069DCDF   FF5160                 call    dword ptr [ecx+$60]
0069DCE2   8B45C8                 mov     eax, [ebp-$38]
0069DCE5   BA20DF6900             mov     edx, $0069DF20

* Reference to: System.@LStrCmp;
|
0069DCEA   E8B97BD6FF             call    004058A8
0069DCEF   750A                   jnz     0069DCFB
0069DCF1   8D45C4                 lea     eax, [ebp-$3C]

|
0069DCF4   E8F3CB0000             call    006AA8EC
0069DCF9   EB27                   jmp     0069DD22
0069DCFB   8D55C0                 lea     edx, [ebp-$40]
0069DCFE   8B06                   mov     eax, [esi]
0069DD00   8B80D4000000           mov     eax, [eax+$00D4]
0069DD06   8B08                   mov     ecx, [eax]
0069DD08   FF5160                 call    dword ptr [ecx+$60]
0069DD0B   8B45C0                 mov     eax, [ebp-$40]
0069DD0E   BA2CDF6900             mov     edx, $0069DF2C

* Reference to: System.@LStrCmp;
|
0069DD13   E8907BD6FF             call    004058A8
0069DD18   7508                   jnz     0069DD22
0069DD1A   8D45BC                 lea     eax, [ebp-$44]

|
0069DD1D   E8CACB0000             call    006AA8EC
0069DD22   8B06                   mov     eax, [esi]
0069DD24   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0069DD2A   E815D6E4FF             call    004EB344
0069DD2F   8B06                   mov     eax, [esi]
0069DD31   8B80C0000000           mov     eax, [eax+$00C0]
0069DD37   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0069DD3E   0F8492FEFFFF           jz      0069DBD6

* Reference to : TfrmGerenciador._PROC_006A81E0()
|
0069DD44   E897A40000             call    006A81E0
0069DD49   8D45B8                 lea     eax, [ebp-$48]
0069DD4C   50                     push    eax
0069DD4D   8D55AC                 lea     edx, [ebp-$54]
0069DD50   8B8720030000           mov     eax, [edi+$0320]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069DD56   E87159DFFF             call    004936CC
0069DD5B   8B45AC                 mov     eax, [ebp-$54]
0069DD5E   8D55B0                 lea     edx, [ebp-$50]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
0069DD61   E81E5B1000             call    007A3884
0069DD66   8B45B0                 mov     eax, [ebp-$50]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
0069DD69   E87EF8D6FF             call    0040D5EC
0069DD6E   83C4F4                 add     esp, -$0C
0069DD71   DB3C24                 fstp    tbyte ptr [esp]
0069DD74   9B                     wait
0069DD75   8D55B4                 lea     edx, [ebp-$4C]

* Possible String Reference to: '#,###,###,##0.00'
|
0069DD78   B838DF6900             mov     eax, $0069DF38

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0069DD7D   E8BAF7D6FF             call    0040D53C
0069DD82   8B45B4                 mov     eax, [ebp-$4C]
0069DD85   50                     push    eax

* Possible String Reference to: '* VALOR POR PESSOA ('
|
0069DD86   6854DF6900             push    $0069DF54
0069DD8B   8D55A4                 lea     edx, [ebp-$5C]
0069DD8E   8B8714030000           mov     eax, [edi+$0314]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0069DD94   E83359DFFF             call    004936CC
0069DD99   FF75A4                 push    dword ptr [ebp-$5C]
0069DD9C   6874DF6900             push    $0069DF74
0069DDA1   8D45A8                 lea     eax, [ebp-$58]
0069DDA4   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0069DDA9   E86E7AD6FF             call    0040581C
0069DDAE   8B55A8                 mov     edx, [ebp-$58]
0069DDB1   33C0                   xor     eax, eax
0069DDB3   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
0069DDB4   E84FA80000             call    006A8608
0069DDB9   8D45A0                 lea     eax, [ebp-$60]

|
0069DDBC   E80BCF0000             call    006AACCC
0069DDC1   8B06                   mov     eax, [esi]
0069DDC3   8B406C                 mov     eax, [eax+$6C]
0069DDC6   8B10                   mov     edx, [eax]
0069DDC8   FF5258                 call    dword ptr [edx+$58]
0069DDCB   8BD8                   mov     ebx, eax
0069DDCD   85DB                   test    ebx, ebx
0069DDCF   7E50                   jle     0069DE21

|
0069DDD1   E8CAA30000             call    006A81A0

* Possible String Reference to: 'esquerda'
|
0069DDD6   6880DF6900             push    $0069DF80
0069DDDB   8D459C                 lea     eax, [ebp-$64]
0069DDDE   50                     push    eax
0069DDDF   B914000000             mov     ecx, $00000014
0069DDE4   BAE4DE6900             mov     edx, $0069DEE4
0069DDE9   B8E4DE6900             mov     eax, $0069DEE4

|
0069DDEE   E8D5481000             call    007A26C8
0069DDF3   8B459C                 mov     eax, [ebp-$64]
0069DDF6   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
0069DDF7   E8D4A30000             call    006A81D0
0069DDFC   8D0440                 lea     eax, [eax+eax*2]
0069DDFF   8B15BCA37D00           mov     edx, [$007DA3BC]
0069DE05   8B12                   mov     edx, [edx]
0069DE07   8D448204               lea     eax, [edx+eax*4+$04]
0069DE0B   50                     push    eax
0069DE0C   8D4598                 lea     eax, [ebp-$68]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
0069DE0F   E8F0A30000             call    006A8204
0069DE14   8B5598                 mov     edx, [ebp-$68]
0069DE17   58                     pop     eax
0069DE18   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
0069DE19   E88A79D6FF             call    004057A8
0069DE1E   4B                     dec     ebx
0069DE1F   75B0                   jnz     0069DDD1
0069DE21   8D4D94                 lea     ecx, [ebp-$6C]
0069DE24   33D2                   xor     edx, edx
0069DE26   33C0                   xor     eax, eax

|
0069DE28   E837D10000             call    006AAF64
0069DE2D   C645FF01               mov     byte ptr [ebp-$01], $01
0069DE31   33C0                   xor     eax, eax
0069DE33   5A                     pop     edx
0069DE34   59                     pop     ecx
0069DE35   59                     pop     ecx
0069DE36   648910                 mov     fs:[eax], edx
0069DE39   EB3B                   jmp     0069DE76

* Reference to: System.@HandleOnException;
|
0069DE3B   E9706DD6FF             jmp     00404BB0
0069DE40   0100                   add     [eax], eax
0069DE42   0000                   add     [eax], al
0069DE44   40                     inc     eax
0069DE45   95                     xchg    eax, ebp
0069DE46   40                     inc     eax
0069DE47   004CDE69               add     [esi+ebx*8+$69], cl
0069DE4B   0089C36A008B           add     [ecx+$8B006AC3], cl
0069DE51   4B                     dec     ebx
0069DE52   048D                   add     al, -$73
0069DE54   45                     inc     ebp
0069DE55   90                     nop

* Possible String Reference to: 'Erro ao imprimir o cupom!'
|
0069DE56   BA94DF6900             mov     edx, $0069DF94

* Reference to: System.@LStrCat3;
|
0069DE5B   E84879D6FF             call    004057A8
0069DE60   8B4590                 mov     eax, [ebp-$70]
0069DE63   668B0DB0DF6900         mov     cx, word ptr [$0069DFB0]
0069DE6A   B201                   mov     dl, $01

|
0069DE6C   E8BB5CDAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069DE71   E83A70D6FF             call    00404EB0

****** END
|
0069DE76   33C0                   xor     eax, eax
0069DE78   5A                     pop     edx
0069DE79   59                     pop     ecx
0069DE7A   59                     pop     ecx
0069DE7B   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069DE7E   688BDE6900             push    $0069DE8B
0069DE83   C3                     ret


* Reference to: System.@HandleFinally;
|
0069DE84   E9AF6ED6FF             jmp     00404D38
0069DE89   EBF8                   jmp     0069DE83

****** END
|
0069DE8B   33C0                   xor     eax, eax
0069DE8D   5A                     pop     edx
0069DE8E   59                     pop     ecx
0069DE8F   59                     pop     ecx
0069DE90   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069DE93   68D2DE6900             push    $0069DED2
0069DE98   8D4590                 lea     eax, [ebp-$70]
0069DE9B   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069DEA0   E81B76D6FF             call    004054C0
0069DEA5   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: System.@LStrClr(void;void);
|
0069DEA8   E8EF75D6FF             call    0040549C
0069DEAD   8D45A8                 lea     eax, [ebp-$58]

* Reference to: System.@LStrClr(void;void);
|
0069DEB0   E8E775D6FF             call    0040549C
0069DEB5   8D45AC                 lea     eax, [ebp-$54]

* Reference to: System.@LStrClr(void;void);
|
0069DEB8   E8DF75D6FF             call    0040549C
0069DEBD   8D45B0                 lea     eax, [ebp-$50]
0069DEC0   BA13000000             mov     edx, $00000013

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069DEC5   E8F675D6FF             call    004054C0
0069DECA   C3                     ret


* Reference to: System.@HandleFinally;
|
0069DECB   E9686ED6FF             jmp     00404D38
0069DED0   EBC6                   jmp     0069DE98

****** END
|
0069DED2   8A45FF                 mov     al, byte ptr [ebp-$01]
0069DED5   5F                     pop     edi
0069DED6   5E                     pop     esi
0069DED7   5B                     pop     ebx
0069DED8   8BE5                   mov     esp, ebp
0069DEDA   5D                     pop     ebp
0069DEDB   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069DE84(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069DE84   E9AF6ED6FF             jmp     00404D38

|
0069DE89   EBF8                   jmp     0069DE83
0069DE8B   33C0                   xor     eax, eax
0069DE8D   5A                     pop     edx
0069DE8E   59                     pop     ecx
0069DE8F   59                     pop     ecx
0069DE90   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069DE93   68D2DE6900             push    $0069DED2
0069DE98   8D4590                 lea     eax, [ebp-$70]
0069DE9B   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069DEA0   E81B76D6FF             call    004054C0
0069DEA5   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: System.@LStrClr(void;void);
|
0069DEA8   E8EF75D6FF             call    0040549C
0069DEAD   8D45A8                 lea     eax, [ebp-$58]

* Reference to: System.@LStrClr(void;void);
|
0069DEB0   E8E775D6FF             call    0040549C
0069DEB5   8D45AC                 lea     eax, [ebp-$54]

* Reference to: System.@LStrClr(void;void);
|
0069DEB8   E8DF75D6FF             call    0040549C
0069DEBD   8D45B0                 lea     eax, [ebp-$50]
0069DEC0   BA13000000             mov     edx, $00000013

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0069DEC5   E8F675D6FF             call    004054C0
0069DECA   C3                     ret


* Reference to: System.@HandleFinally;
|
0069DECB   E9686ED6FF             jmp     00404D38
0069DED0   EBC6                   jmp     0069DE98

****** END
|
0069DED2   8A45FF                 mov     al, byte ptr [ebp-$01]
0069DED5   5F                     pop     edi
0069DED6   5E                     pop     esi
0069DED7   5B                     pop     ebx
0069DED8   8BE5                   mov     esp, ebp
0069DEDA   5D                     pop     ebp
0069DEDB   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069DFC0(Sender : TObject);
begin
(*
0069DFC0   55                     push    ebp
0069DFC1   8BEC                   mov     ebp, esp
0069DFC3   6A00                   push    $00
0069DFC5   6A00                   push    $00
0069DFC7   6A00                   push    $00
0069DFC9   53                     push    ebx
0069DFCA   56                     push    esi
0069DFCB   57                     push    edi
0069DFCC   8BD8                   mov     ebx, eax
0069DFCE   33C0                   xor     eax, eax
0069DFD0   55                     push    ebp

* Possible String Reference to: 'Èál÷ˇÎËäEˇ_^[ãÂ]√'
|
0069DFD1   68ACE06900             push    $0069E0AC

***** TRY
|
0069DFD6   64FF30                 push    dword ptr fs:[eax]
0069DFD9   648920                 mov     fs:[eax], esp
0069DFDC   C645FF01               mov     byte ptr [ebp-$01], $01
0069DFE0   33C0                   xor     eax, eax
0069DFE2   55                     push    ebp
0069DFE3   6887E06900             push    $0069E087

***** TRY
|
0069DFE8   64FF30                 push    dword ptr fs:[eax]
0069DFEB   648920                 mov     fs:[eax], esp
0069DFEE   33C0                   xor     eax, eax
0069DFF0   55                     push    ebp
0069DFF1   683EE06900             push    $0069E03E

***** TRY
|
0069DFF6   64FF30                 push    dword ptr fs:[eax]
0069DFF9   648920                 mov     fs:[eax], esp
0069DFFC   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmFecha.EdCodCard : TJvComboEdit
|
0069DFFF   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0069E005   E832FFE5FF             call    004FDF3C
0069E00A   837DF800               cmp     dword ptr [ebp-$08], +$00
0069E00E   7524                   jnz     0069E034
0069E010   6A00                   push    $00
0069E012   668B0DC0E06900         mov     cx, word ptr [$0069E0C0]
0069E019   33D2                   xor     edx, edx

* Possible String Reference to: 'Informe o cart„o utilizado!'
|
0069E01B   B8CCE06900             mov     eax, $0069E0CC

|
0069E020   E8075BDAFF             call    00443B2C

* Reference to control TfrmFecha.EdCodCard : TJvComboEdit
|
0069E025   8B83A4030000           mov     eax, [ebx+$03A4]

|
0069E02B   E8B0801000             call    007A60E0
0069E030   C645FF00               mov     byte ptr [ebp-$01], $00
0069E034   33C0                   xor     eax, eax
0069E036   5A                     pop     edx
0069E037   59                     pop     ecx
0069E038   59                     pop     ecx
0069E039   648910                 mov     fs:[eax], edx
0069E03C   EB3B                   jmp     0069E079

* Reference to: System.@HandleOnException;
|
0069E03E   E96D6BD6FF             jmp     00404BB0
0069E043   0100                   add     [eax], eax
0069E045   0000                   add     [eax], al
0069E047   40                     inc     eax
0069E048   95                     xchg    eax, ebp
0069E049   40                     inc     eax
0069E04A   004FE0                 add     [edi-$20], cl
0069E04D   690089C36A00           imul    eax, [eax], $006AC389

* Reference to field TfrmFecha.Owner : TComponent
|
0069E053   8B4B04                 mov     ecx, [ebx+$04]
0069E056   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'Erro:'
|
0069E059   BAF0E06900             mov     edx, $0069E0F0

* Reference to: System.@LStrCat3;
|
0069E05E   E84577D6FF             call    004057A8
0069E063   8B45F4                 mov     eax, [ebp-$0C]
0069E066   668B0DC0E06900         mov     cx, word ptr [$0069E0C0]
0069E06D   B201                   mov     dl, $01

|
0069E06F   E8B85ADAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0069E074   E8376ED6FF             call    00404EB0

****** END
|
0069E079   33C0                   xor     eax, eax
0069E07B   5A                     pop     edx
0069E07C   59                     pop     ecx
0069E07D   59                     pop     ecx
0069E07E   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069E081   688EE06900             push    $0069E08E
0069E086   C3                     ret


* Reference to: System.@HandleFinally;
|
0069E087   E9AC6CD6FF             jmp     00404D38
0069E08C   EBF8                   jmp     0069E086

****** END
|
0069E08E   33C0                   xor     eax, eax
0069E090   5A                     pop     edx
0069E091   59                     pop     ecx
0069E092   59                     pop     ecx
0069E093   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0069E096   68B3E06900             push    $0069E0B3
0069E09B   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0069E09E   E8F973D6FF             call    0040549C
0069E0A3   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0069E0A6   E8F173D6FF             call    0040549C
0069E0AB   C3                     ret


* Reference to: System.@HandleFinally;
|
0069E0AC   E9876CD6FF             jmp     00404D38
0069E0B1   EBE8                   jmp     0069E09B

****** END
|
0069E0B3   8A45FF                 mov     al, byte ptr [ebp-$01]
0069E0B6   5F                     pop     edi
0069E0B7   5E                     pop     esi
0069E0B8   5B                     pop     ebx
0069E0B9   8BE5                   mov     esp, ebp
0069E0BB   5D                     pop     ebp
0069E0BC   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069E0AC(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0069E0AC   E9876CD6FF             jmp     00404D38

|
0069E0B1   EBE8                   jmp     0069E09B
0069E0B3   8A45FF                 mov     al, byte ptr [ebp-$01]
0069E0B6   5F                     pop     edi
0069E0B7   5E                     pop     esi
0069E0B8   5B                     pop     ebx
0069E0B9   8BE5                   mov     esp, ebp
0069E0BB   5D                     pop     ebp
0069E0BC   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069E0F9(Sender : TObject);
begin
(*
0069E0F9   8BEC                   mov     ebp, esp
0069E0FB   33C0                   xor     eax, eax
0069E0FD   55                     push    ebp
0069E0FE   681DE16900             push    $0069E11D

***** TRY
|
0069E103   64FF30                 push    dword ptr fs:[eax]
0069E106   648920                 mov     fs:[eax], esp
0069E109   FF0508ED7D00           inc     dword ptr [$007DED08]
0069E10F   33C0                   xor     eax, eax
0069E111   5A                     pop     edx
0069E112   59                     pop     ecx
0069E113   59                     pop     ecx
0069E114   648910                 mov     fs:[eax], edx

****** FINALLY
|
0069E117   6824E16900             push    $0069E124
0069E11C   C3                     ret


* Reference to: System.@HandleFinally;
|
0069E11D   E9166CD6FF             jmp     00404D38
0069E122   EBF8                   jmp     0069E11C

****** END
|
0069E124   5D                     pop     ebp
0069E125   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069E128(Sender : TObject);
begin
(*
0069E128   832D08ED7D0001         sub     dword ptr [$007DED08], +$01
0069E12F   C3                     ret

*)
end;

procedure TfrmFecha._PROC_0069E130(Sender : TObject);
begin
(*
0069E130   7CE1                   jl      0069E113
0069E132   690000000000           imul    eax, [eax], $00000000
0069E138   0000                   add     [eax], al

*)
end;

end.