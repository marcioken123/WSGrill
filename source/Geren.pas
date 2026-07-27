unit Geren;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, ActnList, ImgList, ExtCtrls, Menus,
  Mask, ToolEdit, CurrEdit, ComCtrls, ToolWin;
  
type
  TfrmGerenciador=class(TForm)
    pmAtendimento: TPopupMenu;
    mnuResumo: TMenuItem;
    N1: TMenuItem;
    mnuFechamento: TMenuItem;
    mnuAtendido: TMenuItem;
    mnuCancelarItem: TMenuItem;
    mnuInserirItem: TMenuItem;
    tmrGeren: TTimer;
    N3: TMenuItem;
    N4: TMenuItem;
    pmGerenciador: TPopupMenu;
    Sair1: TMenuItem;
    N2: TMenuItem;
    TransferirItens: TMenuItem;
    baGeren: TToolBar;
    imGeren: TImageList;
    ActionList1: TActionList;
    acCadRapMesas: TAction;
    acAtualizaTela: TAction;
    CadastroRpidodeMesas1: TMenuItem;
    AtualizarTela1: TMenuItem;
    acSair: TAction;
    ToolButton1: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    acGerenciadorItens: TAction;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    acLeituraX: TAction;
    acReducaoZ: TAction;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    GerenciamentodeItens1: TMenuItem;
    acLimpaMovimento: TAction;
    ToolButton10: TToolButton;
    ToolButton12: TToolButton;
    acVenda: TAction;
    mCancelaMesa: TMenuItem;
    N5: TMenuItem;
    LbMesa: TLabel;
    tmGeren: TTimer;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    acLimpaStatus: TAction;
    Panel1: TPanel;
    Label1: TLabel;
    EdMesa: TCurrencyEdit;
    ckMouse: TCheckBox;
    ToolButton16: TToolButton;
    ToolButton2: TToolButton;
    ToolButton11: TToolButton;
    sbMesas: TScrollBox;
    procedure FormShow(Sender : TObject);
    procedure FormCloseQuery(Sender : TObject);
    procedure FormClose(Sender : TObject);
    procedure mnuAtendidoClick(Sender : TObject);
    procedure tmrGerenTimer(Sender : TObject);
    procedure mnuInserirItemClick(Sender : TObject);
    procedure mnuCancelarItemClick(Sender : TObject);
    procedure mnuFechamentoClick(Sender : TObject);
    procedure FormDragOver(Sender : TObject);
    procedure FormDragDrop(Sender : TObject);
    procedure FormCreate(Sender : TObject);
    procedure mnuResumoClick(Sender : TObject);
    procedure acCadRapMesasExecute(Sender : TObject);
    procedure acAtualizaTelaExecute(Sender : TObject);
    procedure acSairExecute(Sender : TObject);
    procedure acGerenciadorItensExecute(Sender : TObject);
    procedure acLeituraXExecute(Sender : TObject);
    procedure acReducaoZExecute(Sender : TObject);
    procedure GerenciamentodeItens1Click(Sender : TObject);
    procedure acLimpaMovimentoExecute(Sender : TObject);
    procedure acVendaExecute(Sender : TObject);
    procedure mCancelaMesaClick(Sender : TObject);
    procedure TransferirItensClick(Sender : TObject);
    procedure tmGerenTimer(Sender : TObject);
    procedure acLimpaStatusExecute(Sender : TObject);
    procedure EdMesaEnter(Sender : TObject);
    procedure ckMouseEnter(Sender : TObject);
    procedure ToolButton16Click(Sender : TObject);
    procedure _PROC_006A5271(Sender : TObject);
    procedure _PROC_006A5291(Sender : TObject);
    procedure _PROC_006A53D1(Sender : TObject);
    procedure _PROC_006A5430(Sender : TObject);
    procedure _PROC_006A5438(Sender : TObject);
    procedure _PROC_006A5979(Sender : TObject);
    procedure _PROC_006A598C(Sender : TObject);
    procedure _PROC_006A5A3D(Sender : TObject);
    procedure _PROC_006A5BDF(Sender : TObject);
    procedure _PROC_006A5C3D(Sender : TObject);
    procedure _PROC_006A5C8D(Sender : TObject);
    procedure _PROC_006A5EFC(Sender : TObject);
    procedure _PROC_006A5FA7(Sender : TObject);
    procedure _PROC_006A601D(Sender : TObject);
    procedure _PROC_006A62B4(Sender : TObject);
    procedure _PROC_006A6304(Sender : TObject);
    procedure _PROC_006A6315(Sender : TObject);
    procedure _PROC_006A6365(Sender : TObject);
    procedure _PROC_006A6374(Sender : TObject);
    procedure _PROC_006A665C(Sender : TObject);
    procedure _PROC_006A671C(Sender : TObject);
    procedure _PROC_006A67F5(Sender : TObject);
    procedure _PROC_006A685D(Sender : TObject);
    procedure _PROC_006A69F8(Sender : TObject);
    procedure _PROC_006A6A3E(Sender : TObject);
    procedure _PROC_006A6A4E(Sender : TObject);
    procedure _PROC_006A6D40(Sender : TObject);
    procedure _PROC_006A6DA0(Sender : TObject);
    procedure _PROC_006A6E48(Sender : TObject);
    procedure _PROC_006A6F77(Sender : TObject);
    procedure _PROC_006A6F88(Sender : TObject);
    procedure _PROC_006A7001(Sender : TObject);
    procedure _PROC_006A70E8(Sender : TObject);
    procedure _PROC_006A737D(Sender : TObject);
    procedure _PROC_006A7465(Sender : TObject);
    procedure _PROC_006A7681(Sender : TObject);
    procedure _PROC_006A77B9(Sender : TObject);
    procedure _PROC_006A7805(Sender : TObject);
    procedure _PROC_006A7969(Sender : TObject);
    procedure _PROC_006A7E18(Sender : TObject);
    procedure _PROC_006A805A(Sender : TObject);
    procedure _PROC_006A8118(Sender : TObject);
    procedure _PROC_006A8148(Sender : TObject);
    procedure _PROC_006A81A1(Sender : TObject);
    procedure _PROC_006A81D0(Sender : TObject);
    procedure _PROC_006A81E0(Sender : TObject);
    procedure _PROC_006A8204(Sender : TObject);
    procedure _PROC_006A826D(Sender : TObject);
    procedure _PROC_006A834D(Sender : TObject);
    procedure _PROC_006A8609(Sender : TObject);
    procedure _PROC_006A87F9(Sender : TObject);
    procedure _PROC_006A8995(Sender : TObject);
    procedure _PROC_006A8C89(Sender : TObject);
    procedure _PROC_006A9061(Sender : TObject);
    procedure _PROC_006A906D(Sender : TObject);
    procedure _PROC_006A924F(Sender : TObject);
    procedure _PROC_006A9325(Sender : TObject);
    procedure _PROC_006A9391(Sender : TObject);
    procedure _PROC_006A9443(Sender : TObject);
    procedure _PROC_006A94DD(Sender : TObject);
    procedure _PROC_006A9A7D(Sender : TObject);
    procedure _PROC_006A9A90(Sender : TObject);
    procedure _PROC_006A9CD9(Sender : TObject);
    procedure _PROC_006A9F2E(Sender : TObject);
    procedure _PROC_006A9F79(Sender : TObject);
    procedure _PROC_006AA149(Sender : TObject);
    procedure _PROC_006AA346(Sender : TObject);
    procedure _PROC_006AA37D(Sender : TObject);
    procedure _PROC_006AA56E(Sender : TObject);
    procedure _PROC_006AA5A5(Sender : TObject);
    procedure _PROC_006AA881(Sender : TObject);
    procedure _PROC_006AA8ED(Sender : TObject);
    procedure _PROC_006AACCD(Sender : TObject);
    procedure _PROC_006AAF06(Sender : TObject);
    procedure _PROC_006AAF65(Sender : TObject);
    procedure _PROC_006AB0C5(Sender : TObject);
    procedure _PROC_006AB299(Sender : TObject);
    procedure _PROC_006AB2D8(Sender : TObject);
    procedure _PROC_006AB2FD(Sender : TObject);
    procedure _PROC_006AB359(Sender : TObject);
    procedure _PROC_006AB400(Sender : TObject);
    procedure _PROC_006AB465(Sender : TObject);
    procedure _PROC_006AB4A4(Sender : TObject);
    procedure _PROC_006AB4AC(Sender : TObject);
    procedure _PROC_006AB511(Sender : TObject);
    procedure _PROC_006AB602(Sender : TObject);
    procedure _PROC_006AB65D(Sender : TObject);
    procedure _PROC_006AB7DA(Sender : TObject);
    procedure _PROC_006AB845(Sender : TObject);
    procedure _PROC_006AB949(Sender : TObject);
    procedure _PROC_006AB9A5(Sender : TObject);
    procedure _PROC_006ABAB8(Sender : TObject);
    procedure _PROC_006ABB15(Sender : TObject);
    procedure _PROC_006ABBED(Sender : TObject);
    procedure _PROC_006ABC49(Sender : TObject);
    procedure _PROC_006ABFC3(Sender : TObject);
    procedure _PROC_006AC09D(Sender : TObject);
    procedure _PROC_006AC352(Sender : TObject);
    procedure _PROC_006AC363(Sender : TObject);
    procedure _PROC_006AC389(Sender : TObject);
    procedure _PROC_006AC4C9(Sender : TObject);
    procedure _PROC_006AC511(Sender : TObject);
    procedure _PROC_006AC805(Sender : TObject);
    procedure _PROC_006ACA61(Sender : TObject);
    procedure _PROC_006ACC21(Sender : TObject);
    procedure _PROC_006ACDA1(Sender : TObject);
    procedure _PROC_006ACDD8(Sender : TObject);
    procedure _PROC_006ACE00(Sender : TObject);
    procedure _PROC_006AD7EA(Sender : TObject);
    procedure _PROC_006AD815(Sender : TObject);
    procedure _PROC_006AD826(Sender : TObject);
    procedure _PROC_006AD865(Sender : TObject);
    procedure _PROC_006AD876(Sender : TObject);
    procedure _PROC_006ADA4D(Sender : TObject);
    procedure _PROC_006ADD7D(Sender : TObject);
    procedure _PROC_006ADDF1(Sender : TObject);
    procedure _PROC_006AE1EA(Sender : TObject);
    procedure _PROC_006AE301(Sender : TObject);
    procedure _PROC_006AE41F(Sender : TObject);
    procedure _PROC_006AE4D9(Sender : TObject);
    procedure _PROC_006AE729(Sender : TObject);
    procedure _PROC_006AE845(Sender : TObject);
    procedure _PROC_006AE874(Sender : TObject);
    procedure _PROC_006AE87C(Sender : TObject);
    procedure _PROC_006AE89D(Sender : TObject);
    procedure _PROC_006AE8D0(Sender : TObject);
    procedure _PROC_006AEA3B(Sender : TObject);
    procedure _PROC_006AEA95(Sender : TObject);
    procedure _PROC_006AEB04(Sender : TObject);
    procedure _PROC_006AEB35(Sender : TObject);
    procedure _PROC_006AEB64(Sender : TObject);
    procedure _PROC_006AEB74(Sender : TObject);
    procedure _PROC_006AEB98(Sender : TObject);
    procedure _PROC_006AEC01(Sender : TObject);
    procedure _PROC_006AECE1(Sender : TObject);
    procedure _PROC_006AEF9D(Sender : TObject);
    procedure _PROC_006AF18D(Sender : TObject);
    procedure _PROC_006AF5B1(Sender : TObject);
    procedure _PROC_006AF5BD(Sender : TObject);
    procedure _PROC_006AFB27(Sender : TObject);
    procedure _PROC_006AFC35(Sender : TObject);
    procedure _PROC_006AFC48(Sender : TObject);
    procedure _PROC_006AFECD(Sender : TObject);
    procedure _PROC_006B012A(Sender : TObject);
    procedure _PROC_006B0181(Sender : TObject);
    procedure _PROC_006B0369(Sender : TObject);
    procedure _PROC_006B056E(Sender : TObject);
    procedure _PROC_006B05B1(Sender : TObject);
    procedure _PROC_006B07AA(Sender : TObject);
    procedure _PROC_006B07ED(Sender : TObject);
    procedure _PROC_006B0AA9(Sender : TObject);
    procedure _PROC_006B0B68(Sender : TObject);
    procedure _PROC_006B0F95(Sender : TObject);
    procedure _PROC_006B11FA(Sender : TObject);
    procedure _PROC_006B1265(Sender : TObject);
    procedure _PROC_006B147D(Sender : TObject);
    procedure _PROC_006B1655(Sender : TObject);
    procedure _PROC_006B1805(Sender : TObject);
    procedure _PROC_006B1844(Sender : TObject);
    procedure _PROC_006B184C(Sender : TObject);
    procedure _PROC_006B187C(Sender : TObject);
    procedure _PROC_006B1884(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  frmGerenciador: TfrmGerenciador;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TfrmGerenciador.FormShow(Sender : TObject);
begin
(*
006A63B4   55                     push    ebp
006A63B5   8BEC                   mov     ebp, esp
006A63B7   B907000000             mov     ecx, $00000007
006A63BC   6A00                   push    $00
006A63BE   6A00                   push    $00
006A63C0   49                     dec     ecx
006A63C1   75F9                   jnz     006A63BC
006A63C3   53                     push    ebx
006A63C4   8BD8                   mov     ebx, eax
006A63C6   33C0                   xor     eax, eax
006A63C8   55                     push    ebp

* Possible String Reference to: 'érèÕÿëÐ[‹å]Ã'
|
006A63C9   68C1646A00             push    $006A64C1

***** TRY
|
006A63CE   64FF30                 push    dword ptr fs:[eax]
006A63D1   648920                 mov     fs:[eax], esp
006A63D4   8BC3                   mov     eax, ebx

|
006A63D6   E841FCFFFF             call    006A601C
006A63DB   8B153CAB7D00           mov     edx, [$007DAB3C]
006A63E1   8B12                   mov     edx, [edx]

* Reference to control TfrmGerenciador.tmrGeren : TTimer
|
006A63E3   8B8314030000           mov     eax, [ebx+$0314]

* Reference to: ExtCtrls.TTimer.SetInterval(TTimer;Cardinal);
|
006A63E9   E81E25DAFF             call    0044890C
006A63EE   8D45F0                 lea     eax, [ebp-$10]
006A63F1   50                     push    eax
006A63F2   8D45EC                 lea     eax, [ebp-$14]
006A63F5   50                     push    eax
006A63F6   6A00                   push    $00
006A63F8   8D45E8                 lea     eax, [ebp-$18]
006A63FB   50                     push    eax
006A63FC   A1A4AF7D00             mov     eax, dword ptr [$007DAFA4]
006A6401   8B00                   mov     eax, [eax]
006A6403   33C9                   xor     ecx, ecx
006A6405   BA2E330000             mov     edx, $0000332E

|
006A640A   E881931000             call    007AF790
006A640F   8B45E8                 mov     eax, [ebp-$18]
006A6412   B901000000             mov     ecx, $00000001
006A6417   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCopy;
|
006A641C   E89BF5D5FF             call    004059BC
006A6421   8B45EC                 mov     eax, [ebp-$14]
006A6424   BAD8646A00             mov     edx, $006A64D8

* Reference to: System.@LStrCmp;
|
006A6429   E87AF4D5FF             call    004058A8
006A642E   0F94C0                 setz    al
006A6431   50                     push    eax
006A6432   8D45D8                 lea     eax, [ebp-$28]
006A6435   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromBool(TVarData;TVarData;Boolean);
|
006A6437   E82428D7FF             call    00418C60
006A643C   8D45D8                 lea     eax, [ebp-$28]
006A643F   50                     push    eax
006A6440   8D45C8                 lea     eax, [ebp-$38]
006A6443   B201                   mov     dl, $01

* Reference to: Variants.@VarFromBool(TVarData;TVarData;Boolean);
|
006A6445   E81628D7FF             call    00418C60
006A644A   8D55C8                 lea     edx, [ebp-$38]
006A644D   59                     pop     ecx
006A644E   58                     pop     eax

|
006A644F   E8189F0F00             call    007A036C
006A6454   8D45F0                 lea     eax, [ebp-$10]

* Reference to: Variants.@VarToBool(TVarData;TVarData):LongBool;
|
006A6457   E84402D7FF             call    004166A0
006A645C   8BD0                   mov     edx, eax

* Reference to control TfrmGerenciador.mCancelaMesa : TMenuItem
|
006A645E   8B8390030000           mov     eax, [ebx+$0390]

* Reference to: Menus.TMenuItem.SetEnabled(TMenuItem;Boolean);
|
006A6464   E8B309E0FF             call    004A6E1C
006A6469   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A646E   8B00                   mov     eax, [eax]
006A6470   8B803C020000           mov     eax, [eax+$023C]
006A6476   8B10                   mov     edx, [eax]
006A6478   FF5244                 call    dword ptr [edx+$44]
006A647B   8BD0                   mov     edx, eax

* Reference to control TfrmGerenciador.ckMouse : TCheckBox
|
006A647D   8B83B8030000           mov     eax, [ebx+$03B8]
006A6483   8B08                   mov     ecx, [eax]

* Reference to method TCheckBox.SetChecked(Boolean)
|
006A6485   FF91CC000000           call    dword ptr [ecx+$00CC]
006A648B   33C0                   xor     eax, eax
006A648D   5A                     pop     edx
006A648E   59                     pop     ecx
006A648F   59                     pop     ecx
006A6490   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[‹å]Ã'
|
006A6493   68C8646A00             push    $006A64C8
006A6498   8D45C8                 lea     eax, [ebp-$38]

* Reference to object Variant
|
006A649B   8B1524114000           mov     edx, [$00401124]
006A64A1   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006A64A6   E8F1FBD5FF             call    0040609C
006A64AB   8D45E8                 lea     eax, [ebp-$18]
006A64AE   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A64B3   E808F0D5FF             call    004054C0
006A64B8   8D45F0                 lea     eax, [ebp-$10]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006A64BB   E8B8E0D6FF             call    00414578
006A64C0   C3                     ret


* Reference to: System.@HandleFinally;
|
006A64C1   E972E8D5FF             jmp     00404D38
006A64C6   EBD0                   jmp     006A6498

****** END
|
006A64C8   5B                     pop     ebx
006A64C9   8BE5                   mov     esp, ebp
006A64CB   5D                     pop     ebp
006A64CC   C3                     ret

*)
end;

procedure TfrmGerenciador.FormCloseQuery(Sender : TObject);
begin
(*
006A64DC   C3                     ret

*)
end;

procedure TfrmGerenciador.FormClose(Sender : TObject);
begin
(*
006A64E0   55                     push    ebp
006A64E1   8BEC                   mov     ebp, esp
006A64E3   53                     push    ebx
006A64E4   8BD8                   mov     ebx, eax
006A64E6   A158A37D00             mov     eax, dword ptr [$007DA358]
006A64EB   C60000                 mov     byte ptr [eax], $00
006A64EE   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A64F3   8B00                   mov     eax, [eax]
006A64F5   8B4064                 mov     eax, [eax+$64]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
006A64F8   E83B4FE4FF             call    004EB438

* Reference to control TfrmGerenciador.ckMouse : TCheckBox
|
006A64FD   8B83B8030000           mov     eax, [ebx+$03B8]
006A6503   8B10                   mov     edx, [eax]

* Reference to method TCheckBox.GetChecked()
|
006A6505   FF92C8000000           call    dword ptr [edx+$00C8]
006A650B   8BD0                   mov     edx, eax
006A650D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A6512   8B00                   mov     eax, [eax]
006A6514   8B803C020000           mov     eax, [eax+$023C]
006A651A   8B08                   mov     ecx, [eax]
006A651C   FF9194000000           call    dword ptr [ecx+$0094]
006A6522   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A6527   8B00                   mov     eax, [eax]
006A6529   8B4064                 mov     eax, [eax+$64]
006A652C   8B10                   mov     edx, [eax]
006A652E   FF924C020000           call    dword ptr [edx+$024C]
006A6534   5B                     pop     ebx
006A6535   5D                     pop     ebp
006A6536   C3                     ret

*)
end;

procedure TfrmGerenciador.mnuAtendidoClick(Sender : TObject);
begin
(*
006A6538   55                     push    ebp
006A6539   8BEC                   mov     ebp, esp
006A653B   53                     push    ebx
006A653C   8BD8                   mov     ebx, eax
006A653E   33C0                   xor     eax, eax
006A6540   55                     push    ebp
006A6541   6882656A00             push    $006A6582

***** TRY
|
006A6546   64FF30                 push    dword ptr fs:[eax]
006A6549   648920                 mov     fs:[eax], esp
006A654C   A108B57D00             mov     eax, dword ptr [$007DB508]
006A6551   C60001                 mov     byte ptr [eax], $01
006A6554   6894656A00             push    $006A6594

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A6559   8B93DC030000           mov     edx, [ebx+$03DC]
006A655F   B101                   mov     cl, $01
006A6561   8BC3                   mov     eax, ebx

|
006A6563   E824F7FFFF             call    006A5C8C
006A6568   8BC3                   mov     eax, ebx

|
006A656A   E8ADFAFFFF             call    006A601C
006A656F   33C0                   xor     eax, eax
006A6571   5A                     pop     edx
006A6572   59                     pop     ecx
006A6573   59                     pop     ecx
006A6574   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A6577   6889656A00             push    $006A6589

|
006A657C   E8D7F90F00             call    007A5F58
006A6581   C3                     ret


* Reference to: System.@HandleFinally;
|
006A6582   E9B1E7D5FF             jmp     00404D38
006A6587   EBF3                   jmp     006A657C

****** END
|
006A6589   5B                     pop     ebx
006A658A   5D                     pop     ebp
006A658B   C3                     ret

*)
end;

procedure TfrmGerenciador.tmrGerenTimer(Sender : TObject);
begin
(*
006A6598   55                     push    ebp
006A6599   8BEC                   mov     ebp, esp

|
006A659B   E87CFAFFFF             call    006A601C
006A65A0   5D                     pop     ebp
006A65A1   C3                     ret

*)
end;

procedure TfrmGerenciador.mnuInserirItemClick(Sender : TObject);
begin
(*
006A65A4   55                     push    ebp
006A65A5   8BEC                   mov     ebp, esp
006A65A7   8BD0                   mov     edx, eax

|
006A65A9   E806E9FFFF             call    006A4EB4
006A65AE   5D                     pop     ebp
006A65AF   C3                     ret

*)
end;

procedure TfrmGerenciador.mnuCancelarItemClick(Sender : TObject);
begin
(*
006A65B0   55                     push    ebp
006A65B1   8BEC                   mov     ebp, esp
006A65B3   53                     push    ebx
006A65B4   8BD8                   mov     ebx, eax
006A65B6   33C0                   xor     eax, eax
006A65B8   55                     push    ebp

* Possible String Reference to: 'é6çÕÿëó[]Ã'
|
006A65B9   68FD656A00             push    $006A65FD

***** TRY
|
006A65BE   64FF30                 push    dword ptr fs:[eax]
006A65C1   648920                 mov     fs:[eax], esp

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A65C4   8B83DC030000           mov     eax, [ebx+$03DC]

|
006A65CA   E885A6FEFF             call    00690C54
006A65CF   6810666A00             push    $006A6610

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A65D4   8B93DC030000           mov     edx, [ebx+$03DC]
006A65DA   33C9                   xor     ecx, ecx
006A65DC   8BC3                   mov     eax, ebx

|
006A65DE   E8A9F6FFFF             call    006A5C8C
006A65E3   8BC3                   mov     eax, ebx

|
006A65E5   E832FAFFFF             call    006A601C
006A65EA   33C0                   xor     eax, eax
006A65EC   5A                     pop     edx
006A65ED   59                     pop     ecx
006A65EE   59                     pop     ecx
006A65EF   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[]Ã'
|
006A65F2   6804666A00             push    $006A6604

|
006A65F7   E85CF90F00             call    007A5F58
006A65FC   C3                     ret


* Reference to: System.@HandleFinally;
|
006A65FD   E936E7D5FF             jmp     00404D38
006A6602   EBF3                   jmp     006A65F7

****** END
|
006A6604   5B                     pop     ebx
006A6605   5D                     pop     ebp
006A6606   C3                     ret

*)
end;

procedure TfrmGerenciador.mnuFechamentoClick(Sender : TObject);
begin
(*
006A6614   55                     push    ebp
006A6615   8BEC                   mov     ebp, esp
006A6617   53                     push    ebx
006A6618   8BD8                   mov     ebx, eax
006A661A   A1D4A27D00             mov     eax, dword ptr [$007DA2D4]
006A661F   8B00                   mov     eax, [eax]

|
006A6621   E8F2EF1000             call    007B5618
006A6626   84C0                   test    al, al
006A6628   741A                   jz      006A6644

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A662A   8B83DC030000           mov     eax, [ebx+$03DC]

|
006A6630   E807E9FEFF             call    00694F3C
006A6635   8BC3                   mov     eax, ebx

|
006A6637   E8E0F9FFFF             call    006A601C

|
006A663C   E817F90F00             call    007A5F58
006A6641   5B                     pop     ebx
006A6642   5D                     pop     ebp
006A6643   C3                     ret

006A6644   6A00                   push    $00
006A6646   668B0D5C666A00         mov     cx, word ptr [$006A665C]
006A664D   33D2                   xor     edx, edx

* Possible String Reference to: 'O PDV atual foi Fechado!Por favor s
|                                elecione outro PDV (F6)'
|
006A664F   B868666A00             mov     eax, $006A6668

|
006A6654   E8D3D4D9FF             call    00443B2C
006A6659   5B                     pop     ebx
006A665A   5D                     pop     ebp
006A665B   C3                     ret

*)
end;

procedure TfrmGerenciador.FormDragOver(Sender : TObject);
begin
(*
006A66A4   55                     push    ebp
006A66A5   8BEC                   mov     ebp, esp
006A66A7   53                     push    ebx
006A66A8   56                     push    esi
006A66A9   8BF1                   mov     esi, ecx
006A66AB   8B5D08                 mov     ebx, [ebp+$08]
006A66AE   8BC6                   mov     eax, esi

* Reference to class TJvPanel
|
006A66B0   8B15B8696700           mov     edx, [$006769B8]

* Reference to: System.@IsClass(TObject;TClass):Boolean;
|
006A66B6   E875E0D5FF             call    00404730
006A66BB   8803                   mov     [ebx], al
006A66BD   803B00                 cmp     byte ptr [ebx], $00
006A66C0   7423                   jz      006A66E5
006A66C2   8BC6                   mov     eax, esi

* Reference to class TJvPanel
|
006A66C4   8B15B8696700           mov     edx, [$006769B8]

* Reference to: System.@AsClass(TObject;TClass):TObject;
|
006A66CA   E885E0D5FF             call    00404754
006A66CF   8BD8                   mov     ebx, eax
006A66D1   8B5510                 mov     edx, [ebp+$10]
006A66D4   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetTop(TControl;Integer);
|
006A66D6   E85DC7DEFF             call    00492E38
006A66DB   8B5514                 mov     edx, [ebp+$14]
006A66DE   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetLeft(TControl;Integer);
|
006A66E0   E82FC7DEFF             call    00492E14
006A66E5   5E                     pop     esi
006A66E6   5B                     pop     ebx
006A66E7   5D                     pop     ebp
006A66E8   C21000                 ret     $0010

*)
end;

procedure TfrmGerenciador.FormDragDrop(Sender : TObject);
begin
(*
006A66EC   55                     push    ebp
006A66ED   8BEC                   mov     ebp, esp
006A66EF   53                     push    ebx
006A66F0   8BD9                   mov     ebx, ecx
006A66F2   8BC3                   mov     eax, ebx

* Reference to class TJvPanel
|
006A66F4   8B15B8696700           mov     edx, [$006769B8]

* Reference to: System.@AsClass(TObject;TClass):TObject;
|
006A66FA   E855E0D5FF             call    00404754
006A66FF   8BD8                   mov     ebx, eax
006A6701   8B5508                 mov     edx, [ebp+$08]
006A6704   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetTop(TControl;Integer);
|
006A6706   E82DC7DEFF             call    00492E38
006A670B   8B550C                 mov     edx, [ebp+$0C]
006A670E   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetLeft(TControl;Integer);
|
006A6710   E8FFC6DEFF             call    00492E14
006A6715   5B                     pop     ebx
006A6716   5D                     pop     ebp
006A6717   C20800                 ret     $0008

*)
end;

procedure TfrmGerenciador.FormCreate(Sender : TObject);
begin
(*
006A6A9C   55                     push    ebp
006A6A9D   8BEC                   mov     ebp, esp
006A6A9F   53                     push    ebx
006A6AA0   8BD8                   mov     ebx, eax
006A6AA2   B201                   mov     dl, $01

* Reference to class TStringList
|
006A6AA4   A1D4044200             mov     eax, dword ptr [$004204D4]

* Reference to: System.TObject.Create(TObject;Boolean);
|
006A6AA9   E8BEDAD5FF             call    0040456C

* Reference to field TfrmGerenciador.OFFS_03D4 : TStringList
|
006A6AAE   8983D4030000           mov     [ebx+$03D4], eax
006A6AB4   A158A37D00             mov     eax, dword ptr [$007DA358]
006A6AB9   C60001                 mov     byte ptr [eax], $01
006A6ABC   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006A6AC1   8B00                   mov     eax, [eax]
006A6AC3   8998DC000000           mov     [eax+$00DC], ebx
006A6AC9   C780D800000068796A00   mov     dword ptr [eax+$00D8], $006A7968
006A6AD3   5B                     pop     ebx
006A6AD4   5D                     pop     ebp
006A6AD5   C3                     ret

*)
end;

procedure TfrmGerenciador.mnuResumoClick(Sender : TObject);
begin
(*
006A6AD8   55                     push    ebp
006A6AD9   8BEC                   mov     ebp, esp
006A6ADB   53                     push    ebx
006A6ADC   8BD8                   mov     ebx, eax
006A6ADE   33C0                   xor     eax, eax
006A6AE0   55                     push    ebp

* Possible String Reference to: 'éôáÕÿëó[]Ã'
|
006A6AE1   683F6B6A00             push    $006A6B3F

***** TRY
|
006A6AE6   64FF30                 push    dword ptr fs:[eax]
006A6AE9   648920                 mov     fs:[eax], esp
006A6AEC   A128B57D00             mov     eax, dword ptr [$007DB528]
006A6AF1   C60000                 mov     byte ptr [eax], $00

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A6AF4   8B83DC030000           mov     eax, [ebx+$03DC]

|
006A6AFA   E881E1FEFF             call    00694C80
006A6AFF   A128B57D00             mov     eax, dword ptr [$007DB528]
006A6B04   803800                 cmp     byte ptr [eax], $00
006A6B07   741C                   jz      006A6B25
006A6B09   A108B57D00             mov     eax, dword ptr [$007DB508]
006A6B0E   C60001                 mov     byte ptr [eax], $01
006A6B11   68546B6A00             push    $006A6B54

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A6B16   8B93DC030000           mov     edx, [ebx+$03DC]
006A6B1C   33C9                   xor     ecx, ecx
006A6B1E   8BC3                   mov     eax, ebx

|
006A6B20   E867F1FFFF             call    006A5C8C
006A6B25   8BC3                   mov     eax, ebx

|
006A6B27   E8F0F4FFFF             call    006A601C
006A6B2C   33C0                   xor     eax, eax
006A6B2E   5A                     pop     edx
006A6B2F   59                     pop     ecx
006A6B30   59                     pop     ecx
006A6B31   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[]Ã'
|
006A6B34   68466B6A00             push    $006A6B46

|
006A6B39   E81AF40F00             call    007A5F58
006A6B3E   C3                     ret


* Reference to: System.@HandleFinally;
|
006A6B3F   E9F4E1D5FF             jmp     00404D38
006A6B44   EBF3                   jmp     006A6B39

****** END
|
006A6B46   5B                     pop     ebx
006A6B47   5D                     pop     ebp
006A6B48   C3                     ret

*)
end;

procedure TfrmGerenciador.acCadRapMesasExecute(Sender : TObject);
begin
(*
006A6B58   55                     push    ebp
006A6B59   8BEC                   mov     ebp, esp
006A6B5B   51                     push    ecx
006A6B5C   53                     push    ebx
006A6B5D   8945FC                 mov     [ebp-$04], eax

* Possible String Reference to: 'qwaszx'
|
006A6B60   B8886C6A00             mov     eax, $006A6C88

* Reference to : TFrmInfoAtu._PROC_007AFBA0()
|
006A6B65   E836901000             call    007AFBA0
006A6B6A   84C0                   test    al, al
006A6B6C   0F8407010000           jz      006A6C79
006A6B72   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmGerenciador.tmrGeren : TTimer
|
006A6B75   8B8014030000           mov     eax, [eax+$0314]
006A6B7B   33D2                   xor     edx, edx

* Reference to: ExtCtrls.TTimer.SetEnabled(TTimer;Boolean);
|
006A6B7D   E87A1DDAFF             call    004488FC
006A6B82   A130AE7D00             mov     eax, dword ptr [$007DAE30]
006A6B87   8B00                   mov     eax, [eax]
006A6B89   8B1554AE7D00           mov     edx, [$007DAE54]
006A6B8F   8B12                   mov     edx, [edx]
006A6B91   8982DC000000           mov     [edx+$00DC], eax
006A6B97   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
006A6BA1   33C0                   xor     eax, eax
006A6BA3   55                     push    ebp

* Possible String Reference to: 'éÁàÕÿëÎ[Y]Ã'
|
006A6BA4   68726C6A00             push    $006A6C72

***** TRY
|
006A6BA9   64FF30                 push    dword ptr fs:[eax]
006A6BAC   648920                 mov     fs:[eax], esp
006A6BAF   33C9                   xor     ecx, ecx
006A6BB1   B201                   mov     dl, $01

* Reference to class TFrmCadMesas
|
006A6BB3   A1E4EC6900             mov     eax, dword ptr [$0069ECE4]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006A6BB8   E85373E0FF             call    004ADF10
006A6BBD   8B152CB37D00           mov     edx, [$007DB32C]
006A6BC3   8902                   mov     [edx], eax
006A6BC5   A12CB37D00             mov     eax, dword ptr [$007DB32C]
006A6BCA   8B00                   mov     eax, [eax]
006A6BCC   8B10                   mov     edx, [eax]
006A6BCE   FF92EC000000           call    dword ptr [edx+$00EC]
006A6BD4   A12CB37D00             mov     eax, dword ptr [$007DB32C]
006A6BD9   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006A6BDB   E8BCD9D5FF             call    0040459C
006A6BE0   A140ED7D00             mov     eax, dword ptr [$007DED40]

* Reference to: Classes.TComponent.GetComponentCount(TComponent):Integer;
|
006A6BE5   E81677D8FF             call    0042E300
006A6BEA   8BD8                   mov     ebx, eax
006A6BEC   4B                     dec     ebx
006A6BED   83FB00                 cmp     ebx, +$00
006A6BF0   7C32                   jl      006A6C24
006A6BF2   8BD3                   mov     edx, ebx
006A6BF4   A140ED7D00             mov     eax, dword ptr [$007DED40]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
006A6BF9   E8D676D8FF             call    0042E2D4

* Reference to class TJvPanel
|
006A6BFE   8B15B8696700           mov     edx, [$006769B8]

* Reference to: System.@IsClass(TObject;TClass):Boolean;
|
006A6C04   E827DBD5FF             call    00404730
006A6C09   84C0                   test    al, al
006A6C0B   7411                   jz      006A6C1E
006A6C0D   8BD3                   mov     edx, ebx
006A6C0F   A140ED7D00             mov     eax, dword ptr [$007DED40]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
006A6C14   E8BB76D8FF             call    0042E2D4

* Reference to: System.TObject.Free(TObject);
|
006A6C19   E87ED9D5FF             call    0040459C
006A6C1E   4B                     dec     ebx
006A6C1F   83FBFF                 cmp     ebx, -$01
006A6C22   75CE                   jnz     006A6BF2
006A6C24   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TfrmGerenciador.OFFS_03D4 : TStringList
|
006A6C27   8B80D4030000           mov     eax, [eax+$03D4]
006A6C2D   8B10                   mov     edx, [eax]

* Reference to method TStringList.Clear()
|
006A6C2F   FF5244                 call    dword ptr [edx+$44]
006A6C32   8B45FC                 mov     eax, [ebp-$04]

|
006A6C35   E8E2F3FFFF             call    006A601C
006A6C3A   33C0                   xor     eax, eax
006A6C3C   5A                     pop     edx
006A6C3D   59                     pop     ecx
006A6C3E   59                     pop     ecx
006A6C3F   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[Y]Ã'
|
006A6C42   68796C6A00             push    $006A6C79
006A6C47   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmGerenciador.tmrGeren : TTimer
|
006A6C4A   8B8014030000           mov     eax, [eax+$0314]
006A6C50   B201                   mov     dl, $01

* Reference to: ExtCtrls.TTimer.SetEnabled(TTimer;Boolean);
|
006A6C52   E8A51CDAFF             call    004488FC
006A6C57   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006A6C5C   8B00                   mov     eax, [eax]
006A6C5E   8B55FC                 mov     edx, [ebp-$04]
006A6C61   8990DC000000           mov     [eax+$00DC], edx
006A6C67   C780D800000068796A00   mov     dword ptr [eax+$00D8], $006A7968
006A6C71   C3                     ret


* Reference to: System.@HandleFinally;
|
006A6C72   E9C1E0D5FF             jmp     00404D38
006A6C77   EBCE                   jmp     006A6C47

****** END
|
006A6C79   5B                     pop     ebx
006A6C7A   59                     pop     ecx
006A6C7B   5D                     pop     ebp
006A6C7C   C3                     ret

*)
end;

procedure TfrmGerenciador.acAtualizaTelaExecute(Sender : TObject);
begin
(*
006A6C90   55                     push    ebp
006A6C91   8BEC                   mov     ebp, esp

|
006A6C93   E884F3FFFF             call    006A601C
006A6C98   5D                     pop     ebp
006A6C99   C3                     ret

*)
end;

procedure TfrmGerenciador.acSairExecute(Sender : TObject);
begin
(*
006A6C9C   55                     push    ebp
006A6C9D   8BEC                   mov     ebp, esp

* Reference to: Forms.TCustomForm.Close(TCustomForm);
|
006A6C9F   E81CB4E0FF             call    004B20C0
006A6CA4   5D                     pop     ebp
006A6CA5   C3                     ret

*)
end;

procedure TfrmGerenciador.acGerenciadorItensExecute(Sender : TObject);
begin
(*
006A6CA8   55                     push    ebp
006A6CA9   8BEC                   mov     ebp, esp
006A6CAB   51                     push    ecx
006A6CAC   8945FC                 mov     [ebp-$04], eax
006A6CAF   A130AE7D00             mov     eax, dword ptr [$007DAE30]
006A6CB4   8B00                   mov     eax, [eax]
006A6CB6   8B1554AE7D00           mov     edx, [$007DAE54]
006A6CBC   8B12                   mov     edx, [edx]
006A6CBE   8982DC000000           mov     [edx+$00DC], eax
006A6CC4   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
006A6CCE   33C9                   xor     ecx, ecx
006A6CD0   B201                   mov     dl, $01

* Reference to class TfrmGereItem
|
006A6CD2   A174006A00             mov     eax, dword ptr [$006A0074]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006A6CD7   E83472E0FF             call    004ADF10
006A6CDC   8B15E4B07D00           mov     edx, [$007DB0E4]
006A6CE2   8902                   mov     [edx], eax
006A6CE4   33C0                   xor     eax, eax
006A6CE6   55                     push    ebp
006A6CE7   68356D6A00             push    $006A6D35

***** TRY
|
006A6CEC   64FF30                 push    dword ptr fs:[eax]
006A6CEF   648920                 mov     fs:[eax], esp
006A6CF2   A1E4B07D00             mov     eax, dword ptr [$007DB0E4]
006A6CF7   8B00                   mov     eax, [eax]
006A6CF9   8B10                   mov     edx, [eax]
006A6CFB   FF92EC000000           call    dword ptr [edx+$00EC]
006A6D01   33C0                   xor     eax, eax
006A6D03   5A                     pop     edx
006A6D04   59                     pop     ecx
006A6D05   59                     pop     ecx
006A6D06   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A6D09   683C6D6A00             push    $006A6D3C
006A6D0E   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006A6D13   8B00                   mov     eax, [eax]
006A6D15   8B55FC                 mov     edx, [ebp-$04]
006A6D18   8990DC000000           mov     [eax+$00DC], edx
006A6D1E   C780D800000068796A00   mov     dword ptr [eax+$00D8], $006A7968
006A6D28   A1E4B07D00             mov     eax, dword ptr [$007DB0E4]
006A6D2D   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006A6D2F   E868D8D5FF             call    0040459C
006A6D34   C3                     ret


* Reference to: System.@HandleFinally;
|
006A6D35   E9FEDFD5FF             jmp     00404D38
006A6D3A   EBD2                   jmp     006A6D0E

****** END
|
006A6D3C   59                     pop     ecx
006A6D3D   5D                     pop     ebp
006A6D3E   C3                     ret

*)
end;

procedure TfrmGerenciador.acLeituraXExecute(Sender : TObject);
begin
(*
006A6DA4   55                     push    ebp
006A6DA5   8BEC                   mov     ebp, esp

|
006A6DA7   E82C560000             call    006AC3D8
006A6DAC   5D                     pop     ebp
006A6DAD   C3                     ret

*)
end;

procedure TfrmGerenciador.acReducaoZExecute(Sender : TObject);
begin
(*
006A6DB0   55                     push    ebp
006A6DB1   8BEC                   mov     ebp, esp

|
006A6DB3   E858570000             call    006AC510
006A6DB8   5D                     pop     ebp
006A6DB9   C3                     ret

*)
end;

procedure TfrmGerenciador.GerenciamentodeItens1Click(Sender : TObject);
begin
(*
006A6DBC   55                     push    ebp
006A6DBD   8BEC                   mov     ebp, esp
006A6DBF   53                     push    ebx
006A6DC0   8BD8                   mov     ebx, eax
006A6DC2   33C9                   xor     ecx, ecx
006A6DC4   B201                   mov     dl, $01

* Reference to class TfrmGereItem
|
006A6DC6   A174006A00             mov     eax, dword ptr [$006A0074]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006A6DCB   E84071E0FF             call    004ADF10
006A6DD0   8B15E4B07D00           mov     edx, [$007DB0E4]
006A6DD6   8902                   mov     [edx], eax
006A6DD8   33C0                   xor     eax, eax
006A6DDA   55                     push    ebp

* Possible String Reference to: 'éõÞÕÿëì[]ÃU‹ìƒÄðSVW3Ò‰Uð‹Ø3ÀUhwoj'
|
006A6DDB   683E6E6A00             push    $006A6E3E

***** TRY
|
006A6DE0   64FF30                 push    dword ptr fs:[eax]
006A6DE3   648920                 mov     fs:[eax], esp

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A6DE6   8B93DC030000           mov     edx, [ebx+$03DC]
006A6DEC   A1E4B07D00             mov     eax, dword ptr [$007DB0E4]
006A6DF1   8B00                   mov     eax, [eax]
006A6DF3   8B8028030000           mov     eax, [eax+$0328]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
006A6DF9   E8D271E5FF             call    004FDFD0
006A6DFE   A1E4B07D00             mov     eax, dword ptr [$007DB0E4]
006A6E03   8B00                   mov     eax, [eax]
006A6E05   8B10                   mov     edx, [eax]
006A6E07   FF92EC000000           call    dword ptr [edx+$00EC]
006A6E0D   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006A6E12   8B00                   mov     eax, [eax]
006A6E14   8998DC000000           mov     [eax+$00DC], ebx
006A6E1A   C780D800000068796A00   mov     dword ptr [eax+$00D8], $006A7968
006A6E24   33C0                   xor     eax, eax
006A6E26   5A                     pop     edx
006A6E27   59                     pop     ecx
006A6E28   59                     pop     ecx
006A6E29   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[]ÃU‹ìƒÄðSVW3Ò‰Uð‹Ø3ÀUhwoj'
|
006A6E2C   68456E6A00             push    $006A6E45
006A6E31   A1E4B07D00             mov     eax, dword ptr [$007DB0E4]
006A6E36   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006A6E38   E85FD7D5FF             call    0040459C
006A6E3D   C3                     ret


* Reference to: System.@HandleFinally;
|
006A6E3E   E9F5DED5FF             jmp     00404D38
006A6E43   EBEC                   jmp     006A6E31

****** END
|
006A6E45   5B                     pop     ebx
006A6E46   5D                     pop     ebp
006A6E47   C3                     ret

*)
end;

procedure TfrmGerenciador.acLimpaMovimentoExecute(Sender : TObject);
begin
(*
006A7040   55                     push    ebp
006A7041   8BEC                   mov     ebp, esp

* Reference to : TfrmGerenciador._PROC_006A6E48()
|
006A7043   E800FEFFFF             call    006A6E48
006A7048   5D                     pop     ebp
006A7049   C3                     ret

*)
end;

procedure TfrmGerenciador.acVendaExecute(Sender : TObject);
begin
(*
006A704C   55                     push    ebp
006A704D   8BEC                   mov     ebp, esp
006A704F   A1D4A27D00             mov     eax, dword ptr [$007DA2D4]
006A7054   8B00                   mov     eax, [eax]

|
006A7056   E8BDE51000             call    007B5618
006A705B   84C0                   test    al, al
006A705D   7472                   jz      006A70D1

* Reference to : TfrmGerenciador._PROC_006AB4AC()
|
006A705F   E848440000             call    006AB4AC
006A7064   84C0                   test    al, al
006A7066   747E                   jz      006A70E6
006A7068   A158A37D00             mov     eax, dword ptr [$007DA358]
006A706D   C60000                 mov     byte ptr [eax], $00
006A7070   33C0                   xor     eax, eax
006A7072   55                     push    ebp

* Possible String Reference to: 'éiÜÕÿëëj'
|
006A7073   68CA706A00             push    $006A70CA

***** TRY
|
006A7078   64FF30                 push    dword ptr fs:[eax]
006A707B   648920                 mov     fs:[eax], esp
006A707E   33C9                   xor     ecx, ecx
006A7080   B201                   mov     dl, $01

* Reference to class TFrmVenda
|
006A7082   A15C526E00             mov     eax, dword ptr [$006E525C]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006A7087   E8846EE0FF             call    004ADF10
006A708C   8B15C8AC7D00           mov     edx, [$007DACC8]
006A7092   8902                   mov     [edx], eax
006A7094   A1C8AC7D00             mov     eax, dword ptr [$007DACC8]
006A7099   8B00                   mov     eax, [eax]
006A709B   8B10                   mov     edx, [eax]
006A709D   FF92EC000000           call    dword ptr [edx+$00EC]
006A70A3   A1C8AC7D00             mov     eax, dword ptr [$007DACC8]
006A70A8   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006A70AA   E8EDD4D5FF             call    0040459C
006A70AF   33C0                   xor     eax, eax
006A70B1   5A                     pop     edx
006A70B2   59                     pop     ecx
006A70B3   59                     pop     ecx
006A70B4   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A70B7   68E6706A00             push    $006A70E6
006A70BC   A158A37D00             mov     eax, dword ptr [$007DA358]
006A70C1   C60001                 mov     byte ptr [eax], $01

|
006A70C4   E88FEE0F00             call    007A5F58
006A70C9   C3                     ret


* Reference to: System.@HandleFinally;
|
006A70CA   E969DCD5FF             jmp     00404D38
006A70CF   EBEB                   jmp     006A70BC
006A70D1   6A00                   push    $00
006A70D3   668B0DE8706A00         mov     cx, word ptr [$006A70E8]
006A70DA   33D2                   xor     edx, edx

* Possible String Reference to: 'O PDV atual foi Fechado!Por favor s
|                                elecione outro PDV (F6)'
|
006A70DC   B8F4706A00             mov     eax, $006A70F4

|
006A70E1   E846CAD9FF             call    00443B2C

****** END
|
006A70E6   5D                     pop     ebp
006A70E7   C3                     ret

*)
end;

procedure TfrmGerenciador.mCancelaMesaClick(Sender : TObject);
begin
(*
006A7130   55                     push    ebp
006A7131   8BEC                   mov     ebp, esp
006A7133   B906000000             mov     ecx, $00000006
006A7138   6A00                   push    $00
006A713A   6A00                   push    $00
006A713C   49                     dec     ecx
006A713D   75F9                   jnz     006A7138
006A713F   53                     push    ebx
006A7140   56                     push    esi
006A7141   57                     push    edi
006A7142   8BD8                   mov     ebx, eax
006A7144   33C0                   xor     eax, eax
006A7146   55                     push    ebp

* Possible String Reference to: 'éÙÕÿëÖ_^[‹å]Ã'
|
006A7147   68B4736A00             push    $006A73B4

***** TRY
|
006A714C   64FF30                 push    dword ptr fs:[eax]
006A714F   648920                 mov     fs:[eax], esp
006A7152   33D2                   xor     edx, edx
006A7154   55                     push    ebp
006A7155   687D736A00             push    $006A737D

***** TRY
|
006A715A   64FF32                 push    dword ptr fs:[edx]
006A715D   648922                 mov     fs:[edx], esp
006A7160   33D2                   xor     edx, edx
006A7162   55                     push    ebp
006A7163   682F736A00             push    $006A732F

***** TRY
|
006A7168   64FF32                 push    dword ptr fs:[edx]
006A716B   648922                 mov     fs:[edx], esp
006A716E   8D55F8                 lea     edx, [ebp-$08]
006A7171   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A7176   8B00                   mov     eax, [eax]
006A7178   8B80D8010000           mov     eax, [eax+$01D8]
006A717E   8B08                   mov     ecx, [eax]
006A7180   FF5160                 call    dword ptr [ecx+$60]
006A7183   8B45F8                 mov     eax, [ebp-$08]
006A7186   8D55FC                 lea     edx, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3638()
|
006A7189   E8AAC40F00             call    007A3638

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A718E   8B83DC030000           mov     eax, [ebx+$03DC]

|
006A7194   E887F51000             call    007B6720
006A7199   83F804                 cmp     eax, +$04
006A719C   0F8783010000           jnbe    006A7325
006A71A2   FF2485A9716A00         jmp     dword ptr [$6A71A9+eax*4]
006A71A9   BD716A00CB             mov     ebp, $CB006A71
006A71AE   726A                   jb      006A721A
006A71B0   00E2                   add     dl, ah
006A71B2   726A                   jb      006A721E
006A71B4   00F9                   add     cl, bh
006A71B6   726A                   jb      006A7222
006A71B8   0010                   add     [eax], dl
006A71BA   736A                   jnb     006A7226
006A71BC   008B45FCE8DB           add     [ebx+$DBE8FC45], cl
006A71C2   8910                   mov     [eax], edx
006A71C4   0084C00F845801         add     [eax+eax*8+$158840F], al
006A71CB   0000                   add     [eax], al
006A71CD   6A00                   push    $00

* Possible String Reference to: 'Tem certeza que deseja limpar o mov
|                                imento da mesa '
|
006A71CF   68CC736A00             push    $006A73CC
006A71D4   FFB3DC030000           push    dword ptr [ebx+$03DC]
006A71DA   6808746A00             push    $006A7408
006A71DF   8D45F4                 lea     eax, [ebp-$0C]
006A71E2   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A71E7   E830E6D5FF             call    0040581C
006A71EC   8B45F4                 mov     eax, [ebp-$0C]
006A71EF   668B0D0C746A00         mov     cx, word ptr [$006A740C]
006A71F6   B203                   mov     dl, $03

|
006A71F8   E82FC9D9FF             call    00443B2C
006A71FD   83F806                 cmp     eax, +$06
006A7200   0F851F010000           jnz     006A7325
006A7206   8D55EC                 lea     edx, [ebp-$14]
006A7209   8B83DC030000           mov     eax, [ebx+$03DC]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006A720F   E80CC90F00             call    007A3B20
006A7214   8B4DEC                 mov     ecx, [ebp-$14]
006A7217   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'CODMESA = '
|
006A721A   BA18746A00             mov     edx, $006A7418

* Reference to: System.@LStrCat3;
|
006A721F   E884E5D5FF             call    004057A8
006A7224   8B45F0                 mov     eax, [ebp-$10]
006A7227   50                     push    eax

* Possible String Reference to: 'MESAITEM'
|
006A7228   B82C746A00             mov     eax, $006A742C
006A722D   8945E8                 mov     [ebp-$18], eax
006A7230   8D55E8                 lea     edx, [ebp-$18]
006A7233   33C9                   xor     ecx, ecx
006A7235   33C0                   xor     eax, eax

|
006A7237   E8F0351000             call    007AA82C
006A723C   8D55E0                 lea     edx, [ebp-$20]
006A723F   8B83DC030000           mov     eax, [ebx+$03DC]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006A7245   E8D6C80F00             call    007A3B20
006A724A   8B4DE0                 mov     ecx, [ebp-$20]
006A724D   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'CODMESA = '
|
006A7250   BA18746A00             mov     edx, $006A7418

* Reference to: System.@LStrCat3;
|
006A7255   E84EE5D5FF             call    004057A8
006A725A   8B45E4                 mov     eax, [ebp-$1C]
006A725D   50                     push    eax

* Possible String Reference to: 'MESALCTO'
|
006A725E   B840746A00             mov     eax, $006A7440
006A7263   8945E8                 mov     [ebp-$18], eax
006A7266   8D55E8                 lea     edx, [ebp-$18]
006A7269   33C9                   xor     ecx, ecx
006A726B   33C0                   xor     eax, eax

|
006A726D   E8BA351000             call    007AA82C
006A7272   6A00                   push    $00
006A7274   B854746A00             mov     eax, $006A7454
006A7279   8945E8                 mov     [ebp-$18], eax
006A727C   8D45E8                 lea     eax, [ebp-$18]
006A727F   50                     push    eax
006A7280   6A00                   push    $00
006A7282   8D55D8                 lea     edx, [ebp-$28]
006A7285   8B83DC030000           mov     eax, [ebx+$03DC]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006A728B   E890C80F00             call    007A3B20
006A7290   8B4DD8                 mov     ecx, [ebp-$28]
006A7293   8D45DC                 lea     eax, [ebp-$24]

* Possible String Reference to: 'CODMESA = '
|
006A7296   BA18746A00             mov     edx, $006A7418

* Reference to: System.@LStrCat3;
|
006A729B   E808E5D5FF             call    004057A8
006A72A0   8B45DC                 mov     eax, [ebp-$24]
006A72A3   50                     push    eax

* Possible String Reference to: 'STATUS'
|
006A72A4   B860746A00             mov     eax, $006A7460
006A72A9   8945D4                 mov     [ebp-$2C], eax
006A72AC   8D4DD4                 lea     ecx, [ebp-$2C]

* Possible String Reference to: 'MESAS'
|
006A72AF   BA70746A00             mov     edx, $006A7470
006A72B4   33C0                   xor     eax, eax

|
006A72B6   E899301000             call    007AA354
006A72BB   33C0                   xor     eax, eax

|
006A72BD   E83A371000             call    007AA9FC
006A72C2   8BC3                   mov     eax, ebx

|
006A72C4   E853EDFFFF             call    006A601C
006A72C9   EB5A                   jmp     006A7325
006A72CB   6A00                   push    $00
006A72CD   668B0D78746A00         mov     cx, word ptr [$006A7478]
006A72D4   33D2                   xor     edx, edx

* Possible String Reference to: 'Não é possivel cancelar a mesa porq
|                                ue outro terminal ja está adicionan
|                                do itens!'
|
006A72D6   B884746A00             mov     eax, $006A7484

|
006A72DB   E84CC8D9FF             call    00443B2C
006A72E0   EB43                   jmp     006A7325
006A72E2   6A00                   push    $00
006A72E4   668B0D78746A00         mov     cx, word ptr [$006A7478]
006A72EB   33D2                   xor     edx, edx

* Possible String Reference to: 'Não é possivel cancelar a mesa porq
|                                ue outro terminal está digitando in
|                                formações nessa mesa!'
|
006A72ED   B8DC746A00             mov     eax, $006A74DC

|
006A72F2   E835C8D9FF             call    00443B2C
006A72F7   EB2C                   jmp     006A7325
006A72F9   6A00                   push    $00
006A72FB   668B0D78746A00         mov     cx, word ptr [$006A7478]
006A7302   33D2                   xor     edx, edx

* Possible String Reference to: 'Não é possivel cancelar a mesa porq
|                                ue outro terminal está digitando in
|                                formações nessa mesa!'
|
006A7304   B8DC746A00             mov     eax, $006A74DC

|
006A7309   E81EC8D9FF             call    00443B2C
006A730E   EB15                   jmp     006A7325
006A7310   6A00                   push    $00
006A7312   668B0D78746A00         mov     cx, word ptr [$006A7478]
006A7319   33D2                   xor     edx, edx

* Possible String Reference to: 'Não é possivel cancelar a mesa porq
|                                ue outro terminal está digitando in
|                                formações nessa mesa!'
|
006A731B   B8DC746A00             mov     eax, $006A74DC

|
006A7320   E807C8D9FF             call    00443B2C
006A7325   33C0                   xor     eax, eax
006A7327   5A                     pop     edx
006A7328   59                     pop     ecx
006A7329   59                     pop     ecx
006A732A   648910                 mov     fs:[eax], edx
006A732D   EB3B                   jmp     006A736A

* Reference to: System.@HandleOnException;
|
006A732F   E97CD8D5FF             jmp     00404BB0
006A7334   0100                   add     [eax], eax
006A7336   0000                   add     [eax], al
006A7338   40                     inc     eax
006A7339   95                     xchg    eax, ebp
006A733A   40                     inc     eax
006A733B   004073                 add     [eax+$73], al
006A733E   6A00                   push    $00
006A7340   89C3                   mov     ebx, eax
006A7342   6A00                   push    $00
006A7344   8B4B04                 mov     ecx, [ebx+$04]
006A7347   8D45D0                 lea     eax, [ebp-$30]

* Possible String Reference to: 'Erro ao limpar o movimento!'
|
006A734A   BA40756A00             mov     edx, $006A7540

* Reference to: System.@LStrCat3;
|
006A734F   E854E4D5FF             call    004057A8
006A7354   8B45D0                 mov     eax, [ebp-$30]
006A7357   668B0D78746A00         mov     cx, word ptr [$006A7478]
006A735E   B201                   mov     dl, $01

|
006A7360   E8C7C7D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A7365   E846DBD5FF             call    00404EB0

****** END
|
006A736A   33C0                   xor     eax, eax
006A736C   5A                     pop     edx
006A736D   59                     pop     ecx
006A736E   59                     pop     ecx
006A736F   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A7372   6884736A00             push    $006A7384

|
006A7377   E8DCEB0F00             call    007A5F58
006A737C   C3                     ret


* Reference to: System.@HandleFinally;
|
006A737D   E9B6D9D5FF             jmp     00404D38
006A7382   EBF3                   jmp     006A7377

****** END
|
006A7384   33C0                   xor     eax, eax
006A7386   5A                     pop     edx
006A7387   59                     pop     ecx
006A7388   59                     pop     ecx
006A7389   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006A738C   68BB736A00             push    $006A73BB
006A7391   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
006A7394   E803E1D5FF             call    0040549C
006A7399   8D45D8                 lea     eax, [ebp-$28]
006A739C   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A73A1   E81AE1D5FF             call    004054C0
006A73A6   8D45EC                 lea     eax, [ebp-$14]
006A73A9   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A73AE   E80DE1D5FF             call    004054C0
006A73B3   C3                     ret


* Reference to: System.@HandleFinally;
|
006A73B4   E97FD9D5FF             jmp     00404D38
006A73B9   EBD6                   jmp     006A7391

****** END
|
006A73BB   5F                     pop     edi
006A73BC   5E                     pop     esi
006A73BD   5B                     pop     ebx
006A73BE   8BE5                   mov     esp, ebp
006A73C0   5D                     pop     ebp
006A73C1   C3                     ret

*)
end;

procedure TfrmGerenciador.TransferirItensClick(Sender : TObject);
begin
(*
006A7560   55                     push    ebp
006A7561   8BEC                   mov     ebp, esp
006A7563   53                     push    ebx
006A7564   8BD8                   mov     ebx, eax

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A7566   8B83DC030000           mov     eax, [ebx+$03DC]

|
006A756C   E843AAFFFF             call    006A1FB4
006A7571   8BC3                   mov     eax, ebx

|
006A7573   E8A4EAFFFF             call    006A601C

|
006A7578   E8DBE90F00             call    007A5F58
006A757D   5B                     pop     ebx
006A757E   5D                     pop     ebp
006A757F   C3                     ret

*)
end;

procedure TfrmGerenciador.tmGerenTimer(Sender : TObject);
begin
(*
006A7580   55                     push    ebp
006A7581   8BEC                   mov     ebp, esp
006A7583   6A00                   push    $00
006A7585   6A00                   push    $00
006A7587   53                     push    ebx
006A7588   8BD8                   mov     ebx, eax
006A758A   33C0                   xor     eax, eax
006A758C   55                     push    ebp
006A758D   68E8756A00             push    $006A75E8

***** TRY
|
006A7592   64FF30                 push    dword ptr fs:[eax]
006A7595   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'Mesa Selecionada:'
|
006A7598   68FC756A00             push    $006A75FC
006A759D   8D55F8                 lea     edx, [ebp-$08]
006A75A0   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A75A5   E8BA37D6FF             call    0040AD64
006A75AA   FF75F8                 push    dword ptr [ebp-$08]

* Possible String Reference to: '   <M> Menu   <Enter> Abre Mesa/Ins
|                                erir Itens   <Setas> Movimenta   <F
|                                > Fecha Mesa   <I> Insere itens'
|
006A75AD   6818766A00             push    $006A7618
006A75B2   8D45FC                 lea     eax, [ebp-$04]
006A75B5   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A75BA   E85DE2D5FF             call    0040581C
006A75BF   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TfrmGerenciador.LbMesa : TLabel
|
006A75C2   8B8398030000           mov     eax, [ebx+$0398]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006A75C8   E82FC1DEFF             call    004936FC
006A75CD   33C0                   xor     eax, eax
006A75CF   5A                     pop     edx
006A75D0   59                     pop     ecx
006A75D1   59                     pop     ecx
006A75D2   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A75D5   68EF756A00             push    $006A75EF
006A75DA   8D45F8                 lea     eax, [ebp-$08]
006A75DD   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A75E2   E8D9DED5FF             call    004054C0
006A75E7   C3                     ret


* Reference to: System.@HandleFinally;
|
006A75E8   E94BD7D5FF             jmp     00404D38
006A75ED   EBEB                   jmp     006A75DA

****** END
|
006A75EF   5B                     pop     ebx
006A75F0   59                     pop     ecx
006A75F1   59                     pop     ecx
006A75F2   5D                     pop     ebp
006A75F3   C3                     ret

*)
end;

procedure TfrmGerenciador.acLimpaStatusExecute(Sender : TObject);
begin
(*
006A7F74   55                     push    ebp
006A7F75   8BEC                   mov     ebp, esp
006A7F77   83C4F4                 add     esp, -$0C
006A7F7A   53                     push    ebx
006A7F7B   56                     push    esi
006A7F7C   57                     push    edi
006A7F7D   33C9                   xor     ecx, ecx
006A7F7F   894DF4                 mov     [ebp-$0C], ecx
006A7F82   33C0                   xor     eax, eax
006A7F84   55                     push    ebp
006A7F85   685A806A00             push    $006A805A

***** TRY
|
006A7F8A   64FF30                 push    dword ptr fs:[eax]
006A7F8D   648920                 mov     fs:[eax], esp
006A7F90   33C0                   xor     eax, eax
006A7F92   55                     push    ebp
006A7F93   683D806A00             push    $006A803D

***** TRY
|
006A7F98   64FF30                 push    dword ptr fs:[eax]
006A7F9B   648920                 mov     fs:[eax], esp
006A7F9E   33C0                   xor     eax, eax
006A7FA0   55                     push    ebp
006A7FA1   68F47F6A00             push    $006A7FF4

***** TRY
|
006A7FA6   64FF30                 push    dword ptr fs:[eax]
006A7FA9   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'teste'
|
006A7FAC   B870806A00             mov     eax, $006A8070

* Reference to : TFrmInfoAtu._PROC_007AFBA0()
|
006A7FB1   E8EA7B1000             call    007AFBA0
006A7FB6   84C0                   test    al, al
006A7FB8   7430                   jz      006A7FEA
006A7FBA   6A00                   push    $00
006A7FBC   B880806A00             mov     eax, $006A8080
006A7FC1   8945FC                 mov     [ebp-$04], eax
006A7FC4   8D45FC                 lea     eax, [ebp-$04]
006A7FC7   50                     push    eax
006A7FC8   6A00                   push    $00
006A7FCA   6A00                   push    $00

* Possible String Reference to: 'OPERACAO'
|
006A7FCC   B88C806A00             mov     eax, $006A808C
006A7FD1   8945F8                 mov     [ebp-$08], eax
006A7FD4   8D4DF8                 lea     ecx, [ebp-$08]

* Possible String Reference to: 'MESAS'
|
006A7FD7   BAA0806A00             mov     edx, $006A80A0
006A7FDC   33C0                   xor     eax, eax

|
006A7FDE   E871231000             call    007AA354
006A7FE3   33C0                   xor     eax, eax

|
006A7FE5   E8122A1000             call    007AA9FC
006A7FEA   33C0                   xor     eax, eax
006A7FEC   5A                     pop     edx
006A7FED   59                     pop     ecx
006A7FEE   59                     pop     ecx
006A7FEF   648910                 mov     fs:[eax], edx
006A7FF2   EB3B                   jmp     006A802F

* Reference to: System.@HandleOnException;
|
006A7FF4   E9B7CBD5FF             jmp     00404BB0
006A7FF9   0100                   add     [eax], eax
006A7FFB   0000                   add     [eax], al
006A7FFD   40                     inc     eax
006A7FFE   95                     xchg    eax, ebp
006A7FFF   40                     inc     eax
006A8000   0005806A0089           add     [$89006A80], al
006A8006   C3                     ret

006A8007   6A00                   push    $00
006A8009   8B4B04                 mov     ecx, [ebx+$04]
006A800C   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
006A800F   BAB0806A00             mov     edx, $006A80B0

* Reference to: System.@LStrCat3;
|
006A8014   E88FD7D5FF             call    004057A8
006A8019   8B45F4                 mov     eax, [ebp-$0C]
006A801C   668B0DD0806A00         mov     cx, word ptr [$006A80D0]
006A8023   B201                   mov     dl, $01

|
006A8025   E802BBD9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A802A   E881CED5FF             call    00404EB0

****** END
|
006A802F   33C0                   xor     eax, eax
006A8031   5A                     pop     edx
006A8032   59                     pop     ecx
006A8033   59                     pop     ecx
006A8034   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A8037   6844806A00             push    $006A8044
006A803C   C3                     ret


* Reference to: System.@HandleFinally;
|
006A803D   E9F6CCD5FF             jmp     00404D38
006A8042   EBF8                   jmp     006A803C

****** END
|
006A8044   33C0                   xor     eax, eax
006A8046   5A                     pop     edx
006A8047   59                     pop     ecx
006A8048   59                     pop     ecx
006A8049   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A804C   6861806A00             push    $006A8061
006A8051   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006A8054   E843D4D5FF             call    0040549C
006A8059   C3                     ret

*)
end;

procedure TfrmGerenciador.EdMesaEnter(Sender : TObject);
begin
(*
006A80D4   8B1554AE7D00           mov     edx, [$007DAE54]
006A80DA   8B12                   mov     edx, [edx]
006A80DC   8982DC000000           mov     [edx+$00DC], eax
006A80E2   C782D800000068796A00   mov     dword ptr [edx+$00D8], $006A7968
006A80EC   C3                     ret

*)
end;

procedure TfrmGerenciador.ckMouseEnter(Sender : TObject);
begin
(*
006A80F0   8B1554AE7D00           mov     edx, [$007DAE54]
006A80F6   8B12                   mov     edx, [edx]
006A80F8   8982DC000000           mov     [edx+$00DC], eax
006A80FE   C782D800000068796A00   mov     dword ptr [edx+$00D8], $006A7968
006A8108   C3                     ret

*)
end;

procedure TfrmGerenciador.ToolButton16Click(Sender : TObject);
begin
(*
006A810C   55                     push    ebp
006A810D   8BEC                   mov     ebp, esp

|
006A810F   E8DC5C0000             call    006ADDF0
006A8114   5D                     pop     ebp
006A8115   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A5271(Sender : TObject);
begin
(*
006A5271   53                     push    ebx
006A5272   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A5291(Sender : TObject);
begin
(*
006A5291   53                     push    ebx
006A5292   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A53D1(Sender : TObject);
begin
(*
006A53D1   8BEC                   mov     ebp, esp
006A53D3   6A00                   push    $00
006A53D5   53                     push    ebx
006A53D6   56                     push    esi
006A53D7   8BF2                   mov     esi, edx
006A53D9   8BD8                   mov     ebx, eax
006A53DB   33C0                   xor     eax, eax
006A53DD   55                     push    ebp
006A53DE   6822546A00             push    $006A5422

***** TRY
|
006A53E3   64FF30                 push    dword ptr fs:[eax]
006A53E6   648920                 mov     fs:[eax], esp
006A53E9   8BC6                   mov     eax, esi

* Reference to class TJvPanel
|
006A53EB   8B15B8696700           mov     edx, [$006769B8]

* Reference to: System.@AsClass(TObject;TClass):TObject;
|
006A53F1   E85EF3D5FF             call    00404754
006A53F6   8D55FC                 lea     edx, [ebp-$04]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006A53F9   E8CEE2DEFF             call    004936CC
006A53FE   8B55FC                 mov     edx, [ebp-$04]

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A5401   8D83DC030000           lea     eax, [ebx+$03DC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A5407   E8E400D6FF             call    004054F0
006A540C   33C0                   xor     eax, eax
006A540E   5A                     pop     edx
006A540F   59                     pop     ecx
006A5410   59                     pop     ecx
006A5411   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A5414   6829546A00             push    $006A5429
006A5419   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006A541C   E87B00D6FF             call    0040549C
006A5421   C3                     ret


* Reference to: System.@HandleFinally;
|
006A5422   E911F9D5FF             jmp     00404D38
006A5427   EBF0                   jmp     006A5419

****** END
|
006A5429   5E                     pop     esi
006A542A   5B                     pop     ebx
006A542B   59                     pop     ecx
006A542C   5D                     pop     ebp
006A542D   C20C00                 ret     $000C

*)
end;

procedure TfrmGerenciador._PROC_006A5430(Sender : TObject);
begin
(*
006A5430   55                     push    ebp
006A5431   8BEC                   mov     ebp, esp
006A5433   5D                     pop     ebp
006A5434   C20C00                 ret     $000C

*)
end;

procedure TfrmGerenciador._PROC_006A5438(Sender : TObject);
begin
(*
006A5438   55                     push    ebp
006A5439   8BEC                   mov     ebp, esp
006A543B   51                     push    ecx
006A543C   B905000000             mov     ecx, $00000005
006A5441   6A00                   push    $00
006A5443   6A00                   push    $00
006A5445   49                     dec     ecx
006A5446   75F9                   jnz     006A5441
006A5448   874DFC                 xchg    [ebp-$04], ecx
006A544B   53                     push    ebx
006A544C   56                     push    esi
006A544D   57                     push    edi
006A544E   894DF4                 mov     [ebp-$0C], ecx
006A5451   8955F8                 mov     [ebp-$08], edx
006A5454   8945FC                 mov     [ebp-$04], eax
006A5457   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A545A   E8ED04D6FF             call    0040594C
006A545F   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A5462   E8E504D6FF             call    0040594C
006A5467   33C0                   xor     eax, eax
006A5469   55                     push    ebp

* Possible String Reference to: 'éºóÕÿëÞŠEó_^[‹å]Â '
|
006A546A   6879596A00             push    $006A5979

***** TRY
|
006A546F   64FF30                 push    dword ptr fs:[eax]
006A5472   648920                 mov     fs:[eax], esp
006A5475   C645F300               mov     byte ptr [ebp-$0D], $00
006A5479   33C0                   xor     eax, eax
006A547B   55                     push    ebp
006A547C   684A596A00             push    $006A594A

***** TRY
|
006A5481   64FF30                 push    dword ptr fs:[eax]
006A5484   648920                 mov     fs:[eax], esp
006A5487   33C0                   xor     eax, eax
006A5489   55                     push    ebp
006A548A   6801596A00             push    $006A5901

***** TRY
|
006A548F   64FF30                 push    dword ptr fs:[eax]
006A5492   648920                 mov     fs:[eax], esp
006A5495   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TfrmGerenciador.OFFS_03D4 : TStringList
|
006A5498   8B80D4030000           mov     eax, [eax+$03D4]
006A549E   8B55F8                 mov     edx, [ebp-$08]
006A54A1   8B08                   mov     ecx, [eax]

* Reference to method TStringList.IndexOf(string)
|
006A54A3   FF5154                 call    dword ptr [ecx+$54]
006A54A6   85C0                   test    eax, eax
006A54A8   0F8D4C010000           jnl     006A55FA
006A54AE   8B4DFC                 mov     ecx, [ebp-$04]
006A54B1   B201                   mov     dl, $01

* Reference to class TJvPanel
|
006A54B3   A1B8696700             mov     eax, dword ptr [$006769B8]

* Reference to : TJvPanel._PROC_00677718()
|
006A54B8   E85B22FDFF             call    00677718
006A54BD   8BD8                   mov     ebx, eax
006A54BF   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TfrmGerenciador.OFFS_03D4 : TStringList
|
006A54C2   8B80D4030000           mov     eax, [eax+$03D4]
006A54C8   8BCB                   mov     ecx, ebx
006A54CA   8B55F8                 mov     edx, [ebp-$08]
006A54CD   8B30                   mov     esi, [eax]

* Reference to method TStringList.AddObject(string,TObject)
|
006A54CF   FF563C                 call    dword ptr [esi+$3C]
006A54D2   8A158C596A00           mov     dl, byte ptr [$006A598C]
006A54D8   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetAnchors(TControl;TAnchors);
|
006A54DA   E819D5DEFF             call    004929F8
006A54DF   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmGerenciador.sbMesas : TScrollBox
|
006A54E2   8B90C8030000           mov     edx, [eax+$03C8]
006A54E8   8BC3                   mov     eax, ebx
006A54EA   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TJvPanel.OFFS_68
|
006A54EC   FF5168                 call    dword ptr [ecx+$68]
006A54EF   8B550C                 mov     edx, [ebp+$0C]
006A54F2   8BC3                   mov     eax, ebx

* Reference to : TJvPanel._PROC_0067889C()
|
006A54F4   E8A333FDFF             call    0067889C
006A54F9   8B5508                 mov     edx, [ebp+$08]
006A54FC   8BC3                   mov     eax, ebx

|
006A54FE   E82D33FDFF             call    00678830
006A5503   8B5514                 mov     edx, [ebp+$14]
006A5506   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetLeft(TControl;Integer);
|
006A5508   E807D9DEFF             call    00492E14
006A550D   8B5510                 mov     edx, [ebp+$10]
006A5510   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetTop(TControl;Integer);
|
006A5512   E821D9DEFF             call    00492E38
006A5517   8B55F8                 mov     edx, [ebp-$08]
006A551A   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006A551C   E8DBE1DEFF             call    004936FC
006A5521   8D45EC                 lea     eax, [ebp-$14]
006A5524   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: 'pn'
|
006A5527   BA98596A00             mov     edx, $006A5998

* Reference to: System.@LStrCat3;
|
006A552C   E87702D6FF             call    004057A8
006A5531   8B55EC                 mov     edx, [ebp-$14]
006A5534   8BC3                   mov     eax, ebx
006A5536   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TJvPanel.OFFS_18
|
006A5538   FF5118                 call    dword ptr [ecx+$18]
006A553B   33D2                   xor     edx, edx
006A553D   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetParentColor(TControl;Boolean);
|
006A553F   E864E3DEFF             call    004938A8
006A5544   33D2                   xor     edx, edx
006A5546   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetParentFont(TControl;Boolean);
|
006A5548   E8ABE2DEFF             call    004937F8
006A554D   33D2                   xor     edx, edx
006A554F   8BC3                   mov     eax, ebx
006A5551   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TJvPanel.OFFS_00BC
|
006A5553   FF91BC000000           call    dword ptr [ecx+$00BC]
006A5559   66BAEBFF               mov     dx, $FFEB
006A555D   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetCursor(TControl;TCursor);
|
006A555F   E88CE3DEFF             call    004938F0
006A5564   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmGerenciador.pmAtendimento : TPopupMenu
|
006A5567   8B90F8020000           mov     edx, [eax+$02F8]
006A556D   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetPopupMenu(TControl;TPopupMenu);
|
006A556F   E810E1DEFF             call    00493684

* Reference to field TJvPanel.OFFS_0068
|
006A5574   8B4368                 mov     eax, [ebx+$68]

* Possible String Reference to: 'Arial'
|
006A5577   BAA4596A00             mov     edx, $006A59A4

* Reference to: Graphics.TFont.SetName(TFont;TFontName);
|
006A557C   E8F7C6D8FF             call    00431C78

* Reference to field TJvPanel.OFFS_0068
|
006A5581   8B4368                 mov     eax, [ebx+$68]
006A5584   BA10000000             mov     edx, $00000010

* Reference to: Graphics.TFont.SetSize(TFont;Integer);
|
006A5589   E862C7D8FF             call    00431CF0
006A558E   8B45F8                 mov     eax, [ebp-$08]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006A5591   E83A59D6FF             call    0040AED0

* Reference to field TJvPanel.OFFS_000C
|
006A5596   89430C                 mov     [ebx+$0C], eax
006A5599   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TJvPanel.OFFS_0124
|
006A559C   898324010000           mov     [ebx+$0124], eax

* Reference to field TJvPanel.OFFS_0120
|
006A55A2   C78320010000B44E6A00   mov     dword ptr [ebx+$0120], $006A4EB4
006A55AC   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TJvPanel.OFFS_00D4
|
006A55AF   8983D4000000           mov     [ebx+$00D4], eax

* Reference to field TJvPanel.OFFS_00D0
|
006A55B5   C783D0000000D0536A00   mov     dword ptr [ebx+$00D0], $006A53D0
006A55BF   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TJvPanel.OFFS_00E4
|
006A55C2   8983E4000000           mov     [ebx+$00E4], eax

* Reference to field TJvPanel.OFFS_00E0
|
006A55C8   C783E000000030546A00   mov     dword ptr [ebx+$00E0], $006A5430
006A55D2   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TJvPanel.OFFS_0244
|
006A55D5   898344020000           mov     [ebx+$0244], eax

* Reference to field TJvPanel.OFFS_0240
|
006A55DB   C78340020000406D6A00   mov     dword ptr [ebx+$0240], $006A6D40
006A55E5   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TJvPanel.OFFS_024C
|
006A55E8   89834C020000           mov     [ebx+$024C], eax

* Reference to field TJvPanel.OFFS_0248
|
006A55EE   C78348020000A06D6A00   mov     dword ptr [ebx+$0248], $006A6DA0
006A55F8   EB1E                   jmp     006A5618
006A55FA   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TfrmGerenciador.OFFS_03D4 : TStringList
|
006A55FD   8B98D4030000           mov     ebx, [eax+$03D4]
006A5603   8BC3                   mov     eax, ebx
006A5605   8B55F8                 mov     edx, [ebp-$08]
006A5608   8B08                   mov     ecx, [eax]

* Reference to method TStringList.IndexOf(string)
|
006A560A   FF5154                 call    dword ptr [ecx+$54]
006A560D   8BD0                   mov     edx, eax
006A560F   8BC3                   mov     eax, ebx
006A5611   8B08                   mov     ecx, [eax]

* Reference to method TStringList.GetObject(Integer)
|
006A5613   FF5118                 call    dword ptr [ecx+$18]
006A5616   8BD8                   mov     ebx, eax
006A5618   8B45F4                 mov     eax, [ebp-$0C]
006A561B   BAB4596A00             mov     edx, $006A59B4

* Reference to: System.@LStrCmp;
|
006A5620   E88302D6FF             call    004058A8
006A5625   7533                   jnz     006A565A
006A5627   8B15F4AC7D00           mov     edx, [$007DACF4]
006A562D   8B12                   mov     edx, [edx]
006A562F   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetColor(TControl;TColor);
|
006A5631   E84EE2DEFF             call    00493884
006A5636   8B15F4AC7D00           mov     edx, [$007DACF4]
006A563C   8B12                   mov     edx, [edx]
006A563E   8BC3                   mov     eax, ebx

* Reference to : TJvPanel._PROC_006780C4()
|
006A5640   E87F2AFDFF             call    006780C4
006A5645   8B15ACB07D00           mov     edx, [$007DB0AC]
006A564B   8B12                   mov     edx, [edx]

* Reference to field TStringList.OFFS_0068
|
006A564D   8B4368                 mov     eax, [ebx+$68]

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006A5650   E8FBC3D8FF             call    00431A50
006A5655   E9E7000000             jmp     006A5741
006A565A   8B45F4                 mov     eax, [ebp-$0C]
006A565D   BAC0596A00             mov     edx, $006A59C0

* Reference to: System.@LStrCmp;
|
006A5662   E84102D6FF             call    004058A8
006A5667   7533                   jnz     006A569C
006A5669   8B15CCA77D00           mov     edx, [$007DA7CC]
006A566F   8B12                   mov     edx, [edx]
006A5671   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetColor(TControl;TColor);
|
006A5673   E80CE2DEFF             call    00493884
006A5678   8B15CCA77D00           mov     edx, [$007DA7CC]
006A567E   8B12                   mov     edx, [edx]
006A5680   8BC3                   mov     eax, ebx

* Reference to : TJvPanel._PROC_006780C4()
|
006A5682   E83D2AFDFF             call    006780C4
006A5687   8B15E0AB7D00           mov     edx, [$007DABE0]
006A568D   8B12                   mov     edx, [edx]

* Reference to field TStringList.OFFS_0068
|
006A568F   8B4368                 mov     eax, [ebx+$68]

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006A5692   E8B9C3D8FF             call    00431A50
006A5697   E9A5000000             jmp     006A5741
006A569C   8B45F4                 mov     eax, [ebp-$0C]
006A569F   BACC596A00             mov     edx, $006A59CC

* Reference to: System.@LStrCmp;
|
006A56A4   E8FF01D6FF             call    004058A8
006A56A9   0F8592000000           jnz     006A5741

* Reference to: SysUtils.Now:TDateTime;
|
006A56AF   E8A885D6FF             call    0040DC5C
006A56B4   83C4F8                 add     esp, -$08
006A56B7   DD1C24                 fstp    qword ptr [esp]
006A56BA   9B                     wait
006A56BB   FF751C                 push    dword ptr [ebp+$1C]
006A56BE   FF7518                 push    dword ptr [ebp+$18]

|
006A56C1   E8B28FE2FF             call    004CE678
006A56C6   52                     push    edx
006A56C7   50                     push    eax
006A56C8   A1E8A87D00             mov     eax, dword ptr [$007DA8E8]
006A56CD   8B00                   mov     eax, [eax]
006A56CF   99                     cdq
006A56D0   3B542404               cmp     edx, [esp+$04]
006A56D4   7509                   jnz     006A56DF
006A56D6   3B0424                 cmp     eax, [esp]
006A56D9   5A                     pop     edx
006A56DA   58                     pop     eax
006A56DB   7736                   jnbe    006A5713
006A56DD   EB04                   jmp     006A56E3
006A56DF   5A                     pop     edx
006A56E0   58                     pop     eax
006A56E1   7F30                   jnle    006A5713
006A56E3   8B1578A07D00           mov     edx, [$007DA078]
006A56E9   8B12                   mov     edx, [edx]
006A56EB   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetColor(TControl;TColor);
|
006A56ED   E892E1DEFF             call    00493884
006A56F2   8B1578A07D00           mov     edx, [$007DA078]
006A56F8   8B12                   mov     edx, [edx]
006A56FA   8BC3                   mov     eax, ebx

* Reference to : TJvPanel._PROC_006780C4()
|
006A56FC   E8C329FDFF             call    006780C4
006A5701   8B1544A47D00           mov     edx, [$007DA444]
006A5707   8B12                   mov     edx, [edx]

* Reference to field TStringList.OFFS_0068
|
006A5709   8B4368                 mov     eax, [ebx+$68]

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006A570C   E83FC3D8FF             call    00431A50
006A5711   EB2E                   jmp     006A5741
006A5713   8B15A89D7D00           mov     edx, [$007D9DA8]
006A5719   8B12                   mov     edx, [edx]
006A571B   8BC3                   mov     eax, ebx

* Reference to: Controls.TControl.SetColor(TControl;TColor);
|
006A571D   E862E1DEFF             call    00493884
006A5722   8B15A89D7D00           mov     edx, [$007D9DA8]
006A5728   8B12                   mov     edx, [edx]
006A572A   8BC3                   mov     eax, ebx

* Reference to : TJvPanel._PROC_006780C4()
|
006A572C   E89329FDFF             call    006780C4
006A5731   8B1570A17D00           mov     edx, [$007DA170]
006A5737   8B12                   mov     edx, [edx]

* Reference to field TStringList.OFFS_0068
|
006A5739   8B4368                 mov     eax, [ebx+$68]

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006A573C   E80FC3D8FF             call    00431A50
006A5741   8D45E8                 lea     eax, [ebp-$18]
006A5744   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: 'lb'
|
006A5747   BAD8596A00             mov     edx, $006A59D8

* Reference to: System.@LStrCat3;
|
006A574C   E85700D6FF             call    004057A8
006A5751   8B55E8                 mov     edx, [ebp-$18]
006A5754   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Classes.TComponent.FindComponent(TComponent;AnsiString):TComponent;
|
006A5757   E86C8AD8FF             call    0042E1C8
006A575C   8BF0                   mov     esi, eax
006A575E   85F6                   test    esi, esi
006A5760   7511                   jnz     006A5773
006A5762   8B4DFC                 mov     ecx, [ebp-$04]
006A5765   B201                   mov     dl, $01

* Reference to class TLabel
|
006A5767   A104F44700             mov     eax, dword ptr [$0047F404]

* Reference to : TListBoxStrings._PROC_00486110()
|
006A576C   E89F09DEFF             call    00486110
006A5771   8BF0                   mov     esi, eax
006A5773   8D45E4                 lea     eax, [ebp-$1C]
006A5776   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: 'lb'
|
006A5779   BAD8596A00             mov     edx, $006A59D8

* Reference to: System.@LStrCat3;
|
006A577E   E82500D6FF             call    004057A8
006A5783   8B55E4                 mov     edx, [ebp-$1C]
006A5786   8BC6                   mov     eax, esi
006A5788   8B08                   mov     ecx, [eax]

* Reference to method TLabel.SetName(TComponentName)
|
006A578A   FF5118                 call    dword ptr [ecx+$18]
006A578D   8BD3                   mov     edx, ebx
006A578F   8BC6                   mov     eax, esi
006A5791   8B08                   mov     ecx, [eax]

* Reference to method TLabel.SetParent(TWinControl)
|
006A5793   FF5168                 call    dword ptr [ecx+$68]
006A5796   33D2                   xor     edx, edx
006A5798   8BC6                   mov     eax, esi
006A579A   8B08                   mov     ecx, [eax]

* Reference to method TLabel.SetAutoSize(Boolean)
|
006A579C   FF515C                 call    dword ptr [ecx+$5C]
006A579F   BA03000000             mov     edx, $00000003
006A57A4   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.SetLeft(TControl;Integer);
|
006A57A6   E869D6DEFF             call    00492E14
006A57AB   8BC3                   mov     eax, ebx

* Reference to : TJvPanel._PROC_00678904()
|
006A57AD   E85231FDFF             call    00678904
006A57B2   8BD0                   mov     edx, eax
006A57B4   83EA14                 sub     edx, +$14
006A57B7   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.SetTop(TControl;Integer);
|
006A57B9   E87AD6DEFF             call    00492E38
006A57BE   8BC3                   mov     eax, ebx

* Reference to : TJvPanel._PROC_00678898()
|
006A57C0   E8D330FDFF             call    00678898
006A57C5   8BD0                   mov     edx, eax
006A57C7   83EA02                 sub     edx, +$02
006A57CA   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.SetWidth(TControl;Integer);
|
006A57CC   E88FD6DEFF             call    00492E60
006A57D1   B202                   mov     dl, $02
006A57D3   8BC6                   mov     eax, esi

* Reference to: StdCtrls.TCustomLabel.SetAlignment(TCustomLabel;TAlignment);
|
006A57D5   E83A0DDEFF             call    00486514

* Reference to field TLabel.Font : TFont
|
006A57DA   8B4668                 mov     eax, [esi+$68]
006A57DD   BA08000000             mov     edx, $00000008

* Reference to: Graphics.TFont.SetSize(TFont;Integer);
|
006A57E2   E809C5D8FF             call    00431CF0

* Reference to field TLabel.Font : TFont
|
006A57E7   8B4668                 mov     eax, [esi+$68]
006A57EA   BAFFFFFF00             mov     edx, $00FFFFFF

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006A57EF   E85CC2D8FF             call    00431A50
006A57F4   B201                   mov     dl, $01
006A57F6   8BC6                   mov     eax, esi

* Reference to: StdCtrls.TCustomLabel.SetTransparent(TCustomLabel;Boolean);
|
006A57F8   E88B0DDEFF             call    00486588

* Reference to: SysUtils.Now:TDateTime;
|
006A57FD   E85A84D6FF             call    0040DC5C
006A5802   83C4F8                 add     esp, -$08
006A5805   DD1C24                 fstp    qword ptr [esp]
006A5808   9B                     wait
006A5809   FF751C                 push    dword ptr [ebp+$1C]
006A580C   FF7518                 push    dword ptr [ebp+$18]

|
006A580F   E8648EE2FF             call    004CE678
006A5814   52                     push    edx
006A5815   50                     push    eax
006A5816   A1E8A87D00             mov     eax, dword ptr [$007DA8E8]
006A581B   8B00                   mov     eax, [eax]
006A581D   99                     cdq
006A581E   3B542404               cmp     edx, [esp+$04]
006A5822   7509                   jnz     006A582D
006A5824   3B0424                 cmp     eax, [esp]
006A5827   5A                     pop     edx
006A5828   58                     pop     eax
006A5829   7718                   jnbe    006A5843
006A582B   EB04                   jmp     006A5831
006A582D   5A                     pop     edx
006A582E   58                     pop     eax
006A582F   7F12                   jnle    006A5843
006A5831   8B1544A47D00           mov     edx, [$007DA444]
006A5837   8B12                   mov     edx, [edx]

* Reference to field TLabel.Font : TFont
|
006A5839   8B4668                 mov     eax, [esi+$68]

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006A583C   E80FC2D8FF             call    00431A50
006A5841   EB31                   jmp     006A5874
006A5843   8B45F4                 mov     eax, [ebp-$0C]
006A5846   BAC0596A00             mov     edx, $006A59C0

* Reference to: System.@LStrCmp;
|
006A584B   E85800D6FF             call    004058A8
006A5850   7512                   jnz     006A5864
006A5852   8B15E0AB7D00           mov     edx, [$007DABE0]
006A5858   8B12                   mov     edx, [edx]

* Reference to field TLabel.Font : TFont
|
006A585A   8B4668                 mov     eax, [esi+$68]

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006A585D   E8EEC1D8FF             call    00431A50
006A5862   EB10                   jmp     006A5874
006A5864   8B1570A17D00           mov     edx, [$007DA170]
006A586A   8B12                   mov     edx, [edx]

* Reference to field TLabel.Font : TFont
|
006A586C   8B4668                 mov     eax, [esi+$68]

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
006A586F   E8DCC1D8FF             call    00431A50
006A5874   8B45F4                 mov     eax, [ebp-$0C]
006A5877   BACC596A00             mov     edx, $006A59CC

* Reference to: System.@LStrCmp;
|
006A587C   E82700D6FF             call    004058A8
006A5881   740F                   jz      006A5892
006A5883   8B45F4                 mov     eax, [ebp-$0C]
006A5886   BAC0596A00             mov     edx, $006A59C0

* Reference to: System.@LStrCmp;
|
006A588B   E81800D6FF             call    004058A8
006A5890   7558                   jnz     006A58EA
006A5892   DD4518                 fld     qword ptr [ebp+$18]
006A5895   D81DDC596A00           fcomp   dword ptr [$006A59DC]
006A589B   DFE0                   fstsw   ax
006A589D   9E                     sahf
006A589E   764A                   jbe     006A58EA
006A58A0   FF7524                 push    dword ptr [ebp+$24]
006A58A3   FF7520                 push    dword ptr [ebp+$20]
006A58A6   8D55DC                 lea     edx, [ebp-$24]

* Possible String Reference to: 'HH:MM'
|
006A58A9   B8E8596A00             mov     eax, $006A59E8

|
006A58AE   E82590D6FF             call    0040E8D8
006A58B3   FF75DC                 push    dword ptr [ebp-$24]
006A58B6   68F8596A00             push    $006A59F8
006A58BB   FF751C                 push    dword ptr [ebp+$1C]
006A58BE   FF7518                 push    dword ptr [ebp+$18]
006A58C1   8D55D8                 lea     edx, [ebp-$28]

* Possible String Reference to: 'HH:MM'
|
006A58C4   B8E8596A00             mov     eax, $006A59E8

|
006A58C9   E80A90D6FF             call    0040E8D8
006A58CE   FF75D8                 push    dword ptr [ebp-$28]
006A58D1   8D45E0                 lea     eax, [ebp-$20]
006A58D4   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A58D9   E83EFFD5FF             call    0040581C
006A58DE   8B55E0                 mov     edx, [ebp-$20]
006A58E1   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006A58E3   E814DEDEFF             call    004936FC
006A58E8   EB09                   jmp     006A58F3
006A58EA   33D2                   xor     edx, edx
006A58EC   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006A58EE   E809DEDEFF             call    004936FC
006A58F3   C645F301               mov     byte ptr [ebp-$0D], $01
006A58F7   33C0                   xor     eax, eax
006A58F9   5A                     pop     edx
006A58FA   59                     pop     ecx
006A58FB   59                     pop     ecx
006A58FC   648910                 mov     fs:[eax], edx
006A58FF   EB3B                   jmp     006A593C

* Reference to: System.@HandleOnException;
|
006A5901   E9AAF2D5FF             jmp     00404BB0
006A5906   0100                   add     [eax], eax
006A5908   0000                   add     [eax], al
006A590A   40                     inc     eax
006A590B   95                     xchg    eax, ebp
006A590C   40                     inc     eax
006A590D   0012                   add     [edx], dl
006A590F   59                     pop     ecx
006A5910   6A00                   push    $00
006A5912   89C3                   mov     ebx, eax
006A5914   6A00                   push    $00
006A5916   8B4B04                 mov     ecx, [ebx+$04]
006A5919   8D45D4                 lea     eax, [ebp-$2C]

* Possible String Reference to: 'Ocorreu um erro ao executar a funçã
|                                o CriaMesa.'
|
006A591C   BA045A6A00             mov     edx, $006A5A04

* Reference to: System.@LStrCat3;
|
006A5921   E882FED5FF             call    004057A8
006A5926   8B45D4                 mov     eax, [ebp-$2C]
006A5929   668B0D385A6A00         mov     cx, word ptr [$006A5A38]
006A5930   B201                   mov     dl, $01

|
006A5932   E8F5E1D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A5937   E874F5D5FF             call    00404EB0

****** END
|
006A593C   33C0                   xor     eax, eax
006A593E   5A                     pop     edx
006A593F   59                     pop     ecx
006A5940   59                     pop     ecx
006A5941   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A5944   6851596A00             push    $006A5951
006A5949   C3                     ret


* Reference to: System.@HandleFinally;
|
006A594A   E9E9F3D5FF             jmp     00404D38
006A594F   EBF8                   jmp     006A5949

****** END
|
006A5951   33C0                   xor     eax, eax
006A5953   5A                     pop     edx
006A5954   59                     pop     ecx
006A5955   59                     pop     ecx
006A5956   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEó_^[‹å]Â '
|
006A5959   6880596A00             push    $006A5980
006A595E   8D45D4                 lea     eax, [ebp-$2C]
006A5961   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A5966   E855FBD5FF             call    004054C0
006A596B   8D45F4                 lea     eax, [ebp-$0C]
006A596E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A5973   E848FBD5FF             call    004054C0
006A5978   C3                     ret


* Reference to: System.@HandleFinally;
|
006A5979   E9BAF3D5FF             jmp     00404D38
006A597E   EBDE                   jmp     006A595E

****** END
|
006A5980   8A45F3                 mov     al, byte ptr [ebp-$0D]
006A5983   5F                     pop     edi
006A5984   5E                     pop     esi
006A5985   5B                     pop     ebx
006A5986   8BE5                   mov     esp, ebp
006A5988   5D                     pop     ebp
006A5989   C22000                 ret     $0020

*)
end;

procedure TfrmGerenciador._PROC_006A5979(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A5979   E9BAF3D5FF             jmp     00404D38

|
006A597E   EBDE                   jmp     006A595E
006A5980   8A45F3                 mov     al, byte ptr [ebp-$0D]
006A5983   5F                     pop     edi
006A5984   5E                     pop     esi
006A5985   5B                     pop     ebx
006A5986   8BE5                   mov     esp, ebp
006A5988   5D                     pop     ebp
006A5989   C22000                 ret     $0020

*)
end;

procedure TfrmGerenciador._PROC_006A598C(Sender : TObject);
begin
(*
006A598C   0200                   add     al, byte ptr [eax]
006A598E   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A5A3D(Sender : TObject);
begin
(*
006A5A3D   8BEC                   mov     ebp, esp
006A5A3F   33C9                   xor     ecx, ecx
006A5A41   51                     push    ecx
006A5A42   51                     push    ecx
006A5A43   51                     push    ecx
006A5A44   51                     push    ecx
006A5A45   51                     push    ecx
006A5A46   51                     push    ecx
006A5A47   53                     push    ebx
006A5A48   56                     push    esi
006A5A49   57                     push    edi
006A5A4A   8955FC                 mov     [ebp-$04], edx
006A5A4D   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A5A50   E8F7FED5FF             call    0040594C
006A5A55   33C0                   xor     eax, eax
006A5A57   55                     push    ebp

* Possible String Reference to: 'éTñÕÿëãŠEû_^[‹å]Ãÿÿÿÿ'
|
006A5A58   68DF5B6A00             push    $006A5BDF

***** TRY
|
006A5A5D   64FF30                 push    dword ptr fs:[eax]
006A5A60   648920                 mov     fs:[eax], esp
006A5A63   C645FB00               mov     byte ptr [ebp-$05], $00
006A5A67   33C0                   xor     eax, eax
006A5A69   55                     push    ebp
006A5A6A   68B55B6A00             push    $006A5BB5

***** TRY
|
006A5A6F   64FF30                 push    dword ptr fs:[eax]
006A5A72   648920                 mov     fs:[eax], esp
006A5A75   33C0                   xor     eax, eax
006A5A77   55                     push    ebp
006A5A78   686C5B6A00             push    $006A5B6C

***** TRY
|
006A5A7D   64FF30                 push    dword ptr fs:[eax]
006A5A80   648920                 mov     fs:[eax], esp
006A5A83   8D55F0                 lea     edx, [ebp-$10]
006A5A86   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006A5A89   E892E00F00             call    007A3B20
006A5A8E   8B4DF0                 mov     ecx, [ebp-$10]
006A5A91   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODMESA = '
|
006A5A94   BAF85B6A00             mov     edx, $006A5BF8

* Reference to: System.@LStrCat3;
|
006A5A99   E80AFDD5FF             call    004057A8
006A5A9E   8B45F4                 mov     eax, [ebp-$0C]
006A5AA1   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
006A5AA2   680C5C6A00             push    $006A5C0C
006A5AA7   6A01                   push    $01
006A5AA9   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5AAE   8B00                   mov     eax, [eax]
006A5AB0   8B4068                 mov     eax, [eax+$68]
006A5AB3   B91C5C6A00             mov     ecx, $006A5C1C

* Possible String Reference to: 'MESAS'
|
006A5AB8   BA285C6A00             mov     edx, $006A5C28

|
006A5ABD   E8A61F1000             call    007A7A68
006A5AC2   84C0                   test    al, al
006A5AC4   0F8498000000           jz      006A5B62
006A5ACA   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5ACF   8B00                   mov     eax, [eax]
006A5AD1   8B4068                 mov     eax, [eax+$68]

* Possible String Reference to: 'STATUS'
|
006A5AD4   BA385C6A00             mov     edx, $006A5C38

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006A5AD9   E82641E4FF             call    004E9C04
006A5ADE   8D55EC                 lea     edx, [ebp-$14]
006A5AE1   8B08                   mov     ecx, [eax]
006A5AE3   FF5160                 call    dword ptr [ecx+$60]
006A5AE6   8B45EC                 mov     eax, [ebp-$14]
006A5AE9   BA485C6A00             mov     edx, $006A5C48

* Reference to: System.@LStrCmp;
|
006A5AEE   E8B5FDD5FF             call    004058A8
006A5AF3   756D                   jnz     006A5B62
006A5AF5   33C9                   xor     ecx, ecx
006A5AF7   33D2                   xor     edx, edx
006A5AF9   8B45FC                 mov     eax, [ebp-$04]

|
006A5AFC   E8479DFEFF             call    0068F848
006A5B01   84C0                   test    al, al
006A5B03   745D                   jz      006A5B62
006A5B05   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5B0A   8B00                   mov     eax, [eax]
006A5B0C   8B4068                 mov     eax, [eax+$68]

|
006A5B0F   E80C131000             call    007A6E20
006A5B14   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5B19   8B00                   mov     eax, [eax]
006A5B1B   8B800C020000           mov     eax, [eax+$020C]
006A5B21   BA545C6A00             mov     edx, $006A5C54
006A5B26   8B08                   mov     ecx, [eax]
006A5B28   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Now:TDateTime;
|
006A5B2E   E82981D6FF             call    0040DC5C
006A5B33   83C4F8                 add     esp, -$08
006A5B36   DD1C24                 fstp    qword ptr [esp]
006A5B39   9B                     wait
006A5B3A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5B3F   8B00                   mov     eax, [eax]
006A5B41   8B8024020000           mov     eax, [eax+$0224]
006A5B47   8B10                   mov     edx, [eax]
006A5B49   FF92A0000000           call    dword ptr [edx+$00A0]
006A5B4F   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5B54   8B00                   mov     eax, [eax]
006A5B56   8B4068                 mov     eax, [eax+$68]

|
006A5B59   E802141000             call    007A6F60
006A5B5E   C645FB01               mov     byte ptr [ebp-$05], $01
006A5B62   33C0                   xor     eax, eax
006A5B64   5A                     pop     edx
006A5B65   59                     pop     ecx
006A5B66   59                     pop     ecx
006A5B67   648910                 mov     fs:[eax], edx
006A5B6A   EB3B                   jmp     006A5BA7

* Reference to: System.@HandleOnException;
|
006A5B6C   E93FF0D5FF             jmp     00404BB0
006A5B71   0100                   add     [eax], eax
006A5B73   0000                   add     [eax], al
006A5B75   40                     inc     eax
006A5B76   95                     xchg    eax, ebp
006A5B77   40                     inc     eax
006A5B78   007D5B                 add     [ebp+$5B], bh
006A5B7B   6A00                   push    $00
006A5B7D   89C3                   mov     ebx, eax
006A5B7F   6A00                   push    $00
006A5B81   8B4B04                 mov     ecx, [ebx+$04]
006A5B84   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Ocorreu um erro na função AbreMesa.'
|
006A5B87   BA605C6A00             mov     edx, $006A5C60

* Reference to: System.@LStrCat3;
|
006A5B8C   E817FCD5FF             call    004057A8
006A5B91   8B45E8                 mov     eax, [ebp-$18]
006A5B94   668B0D885C6A00         mov     cx, word ptr [$006A5C88]
006A5B9B   B201                   mov     dl, $01

|
006A5B9D   E88ADFD9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A5BA2   E809F3D5FF             call    00404EB0

****** END
|
006A5BA7   33C0                   xor     eax, eax
006A5BA9   5A                     pop     edx
006A5BAA   59                     pop     ecx
006A5BAB   59                     pop     ecx
006A5BAC   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A5BAF   68BC5B6A00             push    $006A5BBC
006A5BB4   C3                     ret


* Reference to: System.@HandleFinally;
|
006A5BB5   E97EF1D5FF             jmp     00404D38
006A5BBA   EBF8                   jmp     006A5BB4

****** END
|
006A5BBC   33C0                   xor     eax, eax
006A5BBE   5A                     pop     edx
006A5BBF   59                     pop     ecx
006A5BC0   59                     pop     ecx
006A5BC1   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEû_^[‹å]Ãÿÿÿÿ'
|
006A5BC4   68E65B6A00             push    $006A5BE6
006A5BC9   8D45E8                 lea     eax, [ebp-$18]
006A5BCC   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A5BD1   E8EAF8D5FF             call    004054C0
006A5BD6   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006A5BD9   E8BEF8D5FF             call    0040549C
006A5BDE   C3                     ret


* Reference to: System.@HandleFinally;
|
006A5BDF   E954F1D5FF             jmp     00404D38
006A5BE4   EBE3                   jmp     006A5BC9

****** END
|
006A5BE6   8A45FB                 mov     al, byte ptr [ebp-$05]
006A5BE9   5F                     pop     edi
006A5BEA   5E                     pop     esi
006A5BEB   5B                     pop     ebx
006A5BEC   8BE5                   mov     esp, ebp
006A5BEE   5D                     pop     ebp
006A5BEF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A5BDF(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A5BDF   E954F1D5FF             jmp     00404D38

|
006A5BE4   EBE3                   jmp     006A5BC9
006A5BE6   8A45FB                 mov     al, byte ptr [ebp-$05]
006A5BE9   5F                     pop     edi
006A5BEA   5E                     pop     esi
006A5BEB   5B                     pop     ebx
006A5BEC   8BE5                   mov     esp, ebp
006A5BEE   5D                     pop     ebp
006A5BEF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A5C3D(Sender : TObject);
begin
(*
006A5C3D   53                     push    ebx
006A5C3E   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A5C8D(Sender : TObject);
begin
(*
006A5C8D   8BEC                   mov     ebp, esp
006A5C8F   6A00                   push    $00
006A5C91   6A00                   push    $00
006A5C93   6A00                   push    $00
006A5C95   6A00                   push    $00
006A5C97   6A00                   push    $00
006A5C99   6A00                   push    $00
006A5C9B   53                     push    ebx
006A5C9C   56                     push    esi
006A5C9D   57                     push    edi
006A5C9E   8BD9                   mov     ebx, ecx
006A5CA0   8955FC                 mov     [ebp-$04], edx
006A5CA3   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A5CA6   E8A1FCD5FF             call    0040594C
006A5CAB   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A5CAE   E899FCD5FF             call    0040594C
006A5CB3   33C0                   xor     eax, eax
006A5CB5   55                     push    ebp
006A5CB6   682E5F6A00             push    $006A5F2E

***** TRY
|
006A5CBB   64FF30                 push    dword ptr fs:[eax]
006A5CBE   648920                 mov     fs:[eax], esp
006A5CC1   C645FB00               mov     byte ptr [ebp-$05], $00
006A5CC5   33D2                   xor     edx, edx
006A5CC7   55                     push    ebp
006A5CC8   68FC5E6A00             push    $006A5EFC

***** TRY
|
006A5CCD   64FF32                 push    dword ptr fs:[edx]
006A5CD0   648922                 mov     fs:[edx], esp
006A5CD3   33D2                   xor     edx, edx
006A5CD5   55                     push    ebp
006A5CD6   68B35E6A00             push    $006A5EB3

***** TRY
|
006A5CDB   64FF32                 push    dword ptr fs:[edx]
006A5CDE   648922                 mov     fs:[edx], esp
006A5CE1   A108B57D00             mov     eax, dword ptr [$007DB508]
006A5CE6   803800                 cmp     byte ptr [eax], $00
006A5CE9   0F84BA010000           jz      006A5EA9
006A5CEF   8D55F0                 lea     edx, [ebp-$10]
006A5CF2   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006A5CF5   E826DE0F00             call    007A3B20
006A5CFA   8B4DF0                 mov     ecx, [ebp-$10]
006A5CFD   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODMESA = '
|
006A5D00   BA4C5F6A00             mov     edx, $006A5F4C

* Reference to: System.@LStrCat3;
|
006A5D05   E89EFAD5FF             call    004057A8
006A5D0A   8B45F4                 mov     eax, [ebp-$0C]
006A5D0D   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
006A5D0E   68605F6A00             push    $006A5F60
006A5D13   6A01                   push    $01
006A5D15   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5D1A   8B00                   mov     eax, [eax]
006A5D1C   8B4068                 mov     eax, [eax+$68]
006A5D1F   B9705F6A00             mov     ecx, $006A5F70

* Possible String Reference to: 'MESAS'
|
006A5D24   BA7C5F6A00             mov     edx, $006A5F7C

|
006A5D29   E83A1D1000             call    007A7A68
006A5D2E   84C0                   test    al, al
006A5D30   0F8473010000           jz      006A5EA9
006A5D36   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5D3B   8B00                   mov     eax, [eax]
006A5D3D   8B4068                 mov     eax, [eax+$68]

|
006A5D40   E8DB101000             call    007A6E20

* Reference to: SysUtils.Now:TDateTime;
|
006A5D45   E8127FD6FF             call    0040DC5C
006A5D4A   83C4F8                 add     esp, -$08
006A5D4D   DD1C24                 fstp    qword ptr [esp]
006A5D50   9B                     wait
006A5D51   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5D56   8B00                   mov     eax, [eax]
006A5D58   8B8024020000           mov     eax, [eax+$0224]
006A5D5E   8B10                   mov     edx, [eax]
006A5D60   FF92A0000000           call    dword ptr [edx+$00A0]
006A5D66   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5D6B   8B00                   mov     eax, [eax]
006A5D6D   8B800C020000           mov     eax, [eax+$020C]
006A5D73   8B5508                 mov     edx, [ebp+$08]
006A5D76   8B08                   mov     ecx, [eax]
006A5D78   FF91B0000000           call    dword ptr [ecx+$00B0]
006A5D7E   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5D83   8B00                   mov     eax, [eax]
006A5D85   8B4068                 mov     eax, [eax+$68]

|
006A5D88   E8D3111000             call    007A6F60
006A5D8D   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5D92   8B00                   mov     eax, [eax]
006A5D94   8B4070                 mov     eax, [eax+$70]

|
006A5D97   E884101000             call    007A6E20

* Reference to: SysUtils.Now:TDateTime;
|
006A5D9C   E8BB7ED6FF             call    0040DC5C
006A5DA1   83C4F8                 add     esp, -$08
006A5DA4   DD1C24                 fstp    qword ptr [esp]
006A5DA7   9B                     wait
006A5DA8   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5DAD   8B00                   mov     eax, [eax]
006A5DAF   8B8030090000           mov     eax, [eax+$0930]
006A5DB5   8B10                   mov     edx, [eax]
006A5DB7   FF92A0000000           call    dword ptr [edx+$00A0]
006A5DBD   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5DC2   8B00                   mov     eax, [eax]
006A5DC4   8B4070                 mov     eax, [eax+$70]

|
006A5DC7   E894111000             call    007A6F60
006A5DCC   84DB                   test    bl, bl
006A5DCE   0F84C9000000           jz      006A5E9D

* Possible String Reference to: '(CODMESA =:CODMESA) AND (NUMLCTO =:
|                                NUMLCTO)'
|
006A5DD4   688C5F6A00             push    $006A5F8C
006A5DD9   6A00                   push    $00
006A5DDB   6A01                   push    $01
006A5DDD   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5DE2   8B00                   mov     eax, [eax]
006A5DE4   8B4074                 mov     eax, [eax+$74]
006A5DE7   B9705F6A00             mov     ecx, $006A5F70

* Possible String Reference to: 'MESAITEM'
|
006A5DEC   BAC05F6A00             mov     edx, $006A5FC0

|
006A5DF1   E8721C1000             call    007A7A68
006A5DF6   84C0                   test    al, al
006A5DF8   0F849F000000           jz      006A5E9D
006A5DFE   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5E03   8B00                   mov     eax, [eax]
006A5E05   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.First(TDataSet);
|
006A5E08   E81F52E4FF             call    004EB02C
006A5E0D   EB77                   jmp     006A5E86
006A5E0F   8B158CA97D00           mov     edx, [$007DA98C]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
006A5E15   E81E56E4FF             call    004EB438
006A5E1A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5E1F   8B00                   mov     eax, [eax]
006A5E21   8B80E0050000           mov     eax, [eax+$05E0]
006A5E27   BAD45F6A00             mov     edx, $006A5FD4
006A5E2C   8B08                   mov     ecx, [eax]
006A5E2E   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Now:TDateTime;
|
006A5E34   E8237ED6FF             call    0040DC5C
006A5E39   83C4F8                 add     esp, -$08
006A5E3C   DD1C24                 fstp    qword ptr [esp]
006A5E3F   9B                     wait
006A5E40   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: 'HH:MM'
|
006A5E43   B8E05F6A00             mov     eax, $006A5FE0

|
006A5E48   E88B8AD6FF             call    0040E8D8
006A5E4D   8B55EC                 mov     edx, [ebp-$14]
006A5E50   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5E55   8B00                   mov     eax, [eax]
006A5E57   8B80740C0000           mov     eax, [eax+$0C74]
006A5E5D   8B08                   mov     ecx, [eax]
006A5E5F   FF91B0000000           call    dword ptr [ecx+$00B0]
006A5E65   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5E6A   8B00                   mov     eax, [eax]
006A5E6C   8B4074                 mov     eax, [eax+$74]
006A5E6F   8B10                   mov     edx, [eax]
006A5E71   FF924C020000           call    dword ptr [edx+$024C]
006A5E77   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5E7C   8B00                   mov     eax, [eax]
006A5E7E   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Next(TDataSet);
|
006A5E81   E8BE54E4FF             call    004EB344
006A5E86   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006A5E8B   8B00                   mov     eax, [eax]
006A5E8D   8B4074                 mov     eax, [eax+$74]
006A5E90   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
006A5E97   0F8472FFFFFF           jz      006A5E0F
006A5E9D   C645FB01               mov     byte ptr [ebp-$05], $01
006A5EA1   A108B57D00             mov     eax, dword ptr [$007DB508]
006A5EA6   C60000                 mov     byte ptr [eax], $00
006A5EA9   33C0                   xor     eax, eax
006A5EAB   5A                     pop     edx
006A5EAC   59                     pop     ecx
006A5EAD   59                     pop     ecx
006A5EAE   648910                 mov     fs:[eax], edx
006A5EB1   EB3B                   jmp     006A5EEE

* Reference to: System.@HandleOnException;
|
006A5EB3   E9F8ECD5FF             jmp     00404BB0
006A5EB8   0100                   add     [eax], eax
006A5EBA   0000                   add     [eax], al
006A5EBC   40                     inc     eax
006A5EBD   95                     xchg    eax, ebp
006A5EBE   40                     inc     eax
006A5EBF   00C4                   add     ah, al
006A5EC1   5E                     pop     esi
006A5EC2   6A00                   push    $00
006A5EC4   89C3                   mov     ebx, eax
006A5EC6   6A00                   push    $00
006A5EC8   8B4B04                 mov     ecx, [ebx+$04]
006A5ECB   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Ocorreu um erro na função AtuTela.'
|
006A5ECE   BAF05F6A00             mov     edx, $006A5FF0

* Reference to: System.@LStrCat3;
|
006A5ED3   E8D0F8D5FF             call    004057A8
006A5ED8   8B45E8                 mov     eax, [ebp-$18]
006A5EDB   668B0D18606A00         mov     cx, word ptr [$006A6018]
006A5EE2   B201                   mov     dl, $01

|
006A5EE4   E843DCD9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A5EE9   E8C2EFD5FF             call    00404EB0

****** END
|
006A5EEE   33C0                   xor     eax, eax
006A5EF0   5A                     pop     edx
006A5EF1   59                     pop     ecx
006A5EF2   59                     pop     ecx
006A5EF3   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A5EF6   68035F6A00             push    $006A5F03
006A5EFB   C3                     ret


* Reference to: System.@HandleFinally;
|
006A5EFC   E937EED5FF             jmp     00404D38
006A5F01   EBF8                   jmp     006A5EFB

****** END
|
006A5F03   33C0                   xor     eax, eax
006A5F05   5A                     pop     edx
006A5F06   59                     pop     ecx
006A5F07   59                     pop     ecx
006A5F08   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A5F0B   68355F6A00             push    $006A5F35
006A5F10   8D45E8                 lea     eax, [ebp-$18]
006A5F13   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A5F18   E8A3F5D5FF             call    004054C0
006A5F1D   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006A5F20   E877F5D5FF             call    0040549C
006A5F25   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
006A5F28   E86FF5D5FF             call    0040549C
006A5F2D   C3                     ret


* Reference to: System.@HandleFinally;
|
006A5F2E   E905EED5FF             jmp     00404D38
006A5F33   EBDB                   jmp     006A5F10

****** END
|
006A5F35   8A45FB                 mov     al, byte ptr [ebp-$05]
006A5F38   5F                     pop     edi
006A5F39   5E                     pop     esi
006A5F3A   5B                     pop     ebx
006A5F3B   8BE5                   mov     esp, ebp
006A5F3D   5D                     pop     ebp
006A5F3E   C20400                 ret     $0004

*)
end;

procedure TfrmGerenciador._PROC_006A5EFC(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A5EFC   E937EED5FF             jmp     00404D38

|
006A5F01   EBF8                   jmp     006A5EFB
006A5F03   33C0                   xor     eax, eax
006A5F05   5A                     pop     edx
006A5F06   59                     pop     ecx
006A5F07   59                     pop     ecx
006A5F08   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A5F0B   68355F6A00             push    $006A5F35
006A5F10   8D45E8                 lea     eax, [ebp-$18]
006A5F13   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A5F18   E8A3F5D5FF             call    004054C0
006A5F1D   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006A5F20   E877F5D5FF             call    0040549C
006A5F25   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
006A5F28   E86FF5D5FF             call    0040549C
006A5F2D   C3                     ret


* Reference to: System.@HandleFinally;
|
006A5F2E   E905EED5FF             jmp     00404D38
006A5F33   EBDB                   jmp     006A5F10

****** END
|
006A5F35   8A45FB                 mov     al, byte ptr [ebp-$05]
006A5F38   5F                     pop     edi
006A5F39   5E                     pop     esi
006A5F3A   5B                     pop     ebx
006A5F3B   8BE5                   mov     esp, ebp
006A5F3D   5D                     pop     ebp
006A5F3E   C20400                 ret     $0004

*)
end;

procedure TfrmGerenciador._PROC_006A5FA7(Sender : TObject);
begin
(*
006A5FA7   4D                     dec     ebp
006A5FA8   4C                     dec     esp
006A5FA9   43                     inc     ebx
006A5FAA   54                     push    esp
006A5FAB   4F                     dec     edi
006A5FAC   203D3A4E554D           and     [$4D554E3A], bh
006A5FB2   4C                     dec     esp
006A5FB3   43                     inc     ebx
006A5FB4   54                     push    esp
006A5FB5   4F                     dec     edi
006A5FB6   2900                   sub     dword ptr [eax], eax
006A5FB8   FFFF                   DB  $FF, $FF  //      
006A5FBA   FFFF                   DB  $FF, $FF  //      
006A5FBC   0800                   or      [eax], al
006A5FBE   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A601D(Sender : TObject);
begin
(*
006A601D   8BEC                   mov     ebp, esp
006A601F   33C9                   xor     ecx, ecx
006A6021   51                     push    ecx
006A6022   51                     push    ecx
006A6023   51                     push    ecx
006A6024   51                     push    ecx
006A6025   53                     push    ebx
006A6026   56                     push    esi
006A6027   57                     push    edi
006A6028   8BD8                   mov     ebx, eax
006A602A   33C0                   xor     eax, eax
006A602C   55                     push    ebp

* Possible String Reference to: 'é]êÕÿëëŠEÿ_^[‹å]Ã'
|
006A602D   68D6626A00             push    $006A62D6

***** TRY
|
006A6032   64FF30                 push    dword ptr fs:[eax]
006A6035   648920                 mov     fs:[eax], esp
006A6038   C645FF00               mov     byte ptr [ebp-$01], $00
006A603C   33D2                   xor     edx, edx
006A603E   55                     push    ebp
006A603F   68B4626A00             push    $006A62B4

***** TRY
|
006A6044   64FF32                 push    dword ptr fs:[edx]
006A6047   648922                 mov     fs:[edx], esp
006A604A   33D2                   xor     edx, edx
006A604C   55                     push    ebp
006A604D   686B626A00             push    $006A626B

***** TRY
|
006A6052   64FF32                 push    dword ptr fs:[edx]
006A6055   648922                 mov     fs:[edx], esp
006A6058   A170AA7D00             mov     eax, dword ptr [$007DAA70]
006A605D   803800                 cmp     byte ptr [eax], $00
006A6060   0F85FB010000           jnz     006A6261

* Possible String Reference to: 'CODMESA'
|
006A6066   68F0626A00             push    $006A62F0
006A606B   33C9                   xor     ecx, ecx
006A606D   33D2                   xor     edx, edx
006A606F   8BC3                   mov     eax, ebx

|
006A6071   E8E6070000             call    006A685C
006A6076   84C0                   test    al, al
006A6078   0F84E3010000           jz      006A6261
006A607E   6A00                   push    $00

* Reference to field TfrmGerenciador.OFFS_03D8
|
006A6080   8D83D8030000           lea     eax, [ebx+$03D8]
006A6086   B901000000             mov     ecx, $00000001

* Reference to class Geren
|
006A608B   8B15AC466A00           mov     edx, [$006A46AC]

* Reference to: System.@DynArraySetLength;
|
006A6091   E81A0BD6FF             call    00406BB0
006A6096   83C404                 add     esp, +$04

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A6099   8B83CC030000           mov     eax, [ebx+$03CC]

|
006A609F   E8FC221100             call    007B83A0

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A60A4   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'CODMESA'
|
006A60AA   BAF0626A00             mov     edx, $006A62F0

|
006A60AF   E8801B1100             call    007B7C34

* Reference to field TfrmGerenciador.OFFS_03E4
|
006A60B4   8983E4030000           mov     [ebx+$03E4], eax

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A60BA   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'ALTURA'
|
006A60C0   BA00636A00             mov     edx, $006A6300

|
006A60C5   E86A1B1100             call    007B7C34

* Reference to field TfrmGerenciador.OFFS_03EC
|
006A60CA   8983EC030000           mov     [ebx+$03EC], eax

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A60D0   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'LARGURA'
|
006A60D6   BA10636A00             mov     edx, $006A6310

|
006A60DB   E8541B1100             call    007B7C34

* Reference to field TfrmGerenciador.OFFS_03F0
|
006A60E0   8983F0030000           mov     [ebx+$03F0], eax
006A60E6   33C0                   xor     eax, eax

* Reference to field TfrmGerenciador.OFFS_03E8
|
006A60E8   8983E8030000           mov     [ebx+$03E8], eax

* Reference to control TfrmGerenciador.sbMesas : TScrollBox
|
006A60EE   8B83C8030000           mov     eax, [ebx+$03C8]
006A60F4   33D2                   xor     edx, edx

* Reference to: Forms.TScrollingWinControl.SetAutoScroll(TScrollingWinControl;Boolean);
|
006A60F6   E82D77E0FF             call    004AD828
006A60FB   E913010000             jmp     006A6213

* Reference to field TfrmGerenciador.OFFS_03D0
|
006A6100   8B83D0030000           mov     eax, [ebx+$03D0]

|
006A6106   E895221100             call    007B83A0

* Reference to field TfrmGerenciador.OFFS_03D0
|
006A610B   8B83D0030000           mov     eax, [ebx+$03D0]

* Possible String Reference to: 'DATAINI'
|
006A6111   BA20636A00             mov     edx, $006A6320

|
006A6116   E881491100             call    007BAA9C
006A611B   83C4F8                 add     esp, -$08
006A611E   DD1C24                 fstp    qword ptr [esp]
006A6121   9B                     wait

* Reference to field TfrmGerenciador.OFFS_03D0
|
006A6122   8B83D0030000           mov     eax, [ebx+$03D0]

* Possible String Reference to: 'DATAFIM'
|
006A6128   BA30636A00             mov     edx, $006A6330

|
006A612D   E86A491100             call    007BAA9C
006A6132   83C4F8                 add     esp, -$08
006A6135   DD1C24                 fstp    qword ptr [esp]
006A6138   9B                     wait

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A6139   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'POS_X'
|
006A613F   BA40636A00             mov     edx, $006A6340

|
006A6144   E8EB1A1100             call    007B7C34
006A6149   50                     push    eax

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A614A   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'POS_Y'
|
006A6150   BA50636A00             mov     edx, $006A6350

|
006A6155   E8DA1A1100             call    007B7C34
006A615A   50                     push    eax

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A615B   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'ALTURA'
|
006A6161   BA00636A00             mov     edx, $006A6300

|
006A6166   E8C91A1100             call    007B7C34
006A616B   50                     push    eax

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A616C   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'LARGURA'
|
006A6172   BA10636A00             mov     edx, $006A6310

|
006A6177   E8B81A1100             call    007B7C34
006A617C   50                     push    eax
006A617D   8D4DF8                 lea     ecx, [ebp-$08]

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A6180   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'STATUS'
|
006A6186   BA60636A00             mov     edx, $006A6360

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006A618B   E8A81B1100             call    007B7D38
006A6190   8B45F8                 mov     eax, [ebp-$08]
006A6193   50                     push    eax
006A6194   8D4DF4                 lea     ecx, [ebp-$0C]

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A6197   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'CODMESA'
|
006A619D   BAF0626A00             mov     edx, $006A62F0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006A61A2   E8911B1100             call    007B7D38
006A61A7   8B55F4                 mov     edx, [ebp-$0C]
006A61AA   8BC3                   mov     eax, ebx
006A61AC   59                     pop     ecx

* Reference to : TfrmGerenciador._PROC_006A5438()
|
006A61AD   E886F2FFFF             call    006A5438

* Reference to field TfrmGerenciador.OFFS_03D8
|
006A61B2   8B83D8030000           mov     eax, [ebx+$03D8]

* Reference to: System.@LStrLen(String):Integer;
|
006A61B8   E83708D6FF             call    004069F4
006A61BD   40                     inc     eax
006A61BE   50                     push    eax

* Reference to field TfrmGerenciador.OFFS_03D8
|
006A61BF   8D83D8030000           lea     eax, [ebx+$03D8]
006A61C5   B901000000             mov     ecx, $00000001

* Reference to class Geren
|
006A61CA   8B15AC466A00           mov     edx, [$006A46AC]

* Reference to: System.@DynArraySetLength;
|
006A61D0   E8DB09D6FF             call    00406BB0
006A61D5   83C404                 add     esp, +$04

* Reference to field TfrmGerenciador.OFFS_03D8
|
006A61D8   8B83D8030000           mov     eax, [ebx+$03D8]

* Reference to: System.@LStrLen(String):Integer;
|
006A61DE   E81108D6FF             call    004069F4

* Reference to field TfrmGerenciador.OFFS_03D8
|
006A61E3   8B93D8030000           mov     edx, [ebx+$03D8]
006A61E9   8D44C2F8               lea     eax, [edx+eax*8-$08]
006A61ED   50                     push    eax

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A61EE   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'HR_ULT_ATEND'
|
006A61F4   BA70636A00             mov     edx, $006A6370

|
006A61F9   E89E481100             call    007BAA9C
006A61FE   58                     pop     eax
006A61FF   DD18                   fstp    qword ptr [eax]
006A6201   9B                     wait
006A6202   FF83E8030000           inc     dword ptr [ebx+$03E8]

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A6208   8B83CC030000           mov     eax, [ebx+$03CC]

|
006A620E   E8E1241100             call    007B86F4

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A6213   8B83CC030000           mov     eax, [ebx+$03CC]

|
006A6219   E81A161100             call    007B7838
006A621E   84C0                   test    al, al
006A6220   0F84DAFEFFFF           jz      006A6100

* Reference to control TfrmGerenciador.sbMesas : TScrollBox
|
006A6226   8B83C8030000           mov     eax, [ebx+$03C8]
006A622C   B201                   mov     dl, $01

* Reference to: Forms.TScrollingWinControl.SetAutoScroll(TScrollingWinControl;Boolean);
|
006A622E   E8F575E0FF             call    004AD828
006A6233   833D44ED7D0000         cmp     dword ptr [$007DED44], +$00
006A623A   7521                   jnz     006A625D
006A623C   C70544ED7D0001000000   mov     dword ptr [$007DED44], $00000001
006A6246   33C0                   xor     eax, eax

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A6248   8983E0030000           mov     [ebx+$03E0], eax
006A624E   8BC8                   mov     ecx, eax
006A6250   8B1544ED7D00           mov     edx, [$007DED44]
006A6256   8BC3                   mov     eax, ebx

|
006A6258   E823140000             call    006A7680
006A625D   C645FF01               mov     byte ptr [ebp-$01], $01
006A6261   33C0                   xor     eax, eax
006A6263   5A                     pop     edx
006A6264   59                     pop     ecx
006A6265   59                     pop     ecx
006A6266   648910                 mov     fs:[eax], edx
006A6269   EB3B                   jmp     006A62A6

* Reference to: System.@HandleOnException;
|
006A626B   E940E9D5FF             jmp     00404BB0
006A6270   0100                   add     [eax], eax
006A6272   0000                   add     [eax], al
006A6274   40                     inc     eax
006A6275   95                     xchg    eax, ebp
006A6276   40                     inc     eax
006A6277   007C626A               add     [edx+$6A], bh
006A627B   0089C36A008B           add     [ecx+$8B006AC3], cl
006A6281   4B                     dec     ebx
006A6282   048D                   add     al, -$73
006A6284   45                     inc     ebp
006A6285   F0                     lock

* Possible String Reference to: 'Ocorreu um erro na função MontaTela
|                                .'
|
006A6286   BA88636A00             mov     edx, $006A6388

* Reference to: System.@LStrCat3;
|
006A628B   E818F5D5FF             call    004057A8
006A6290   8B45F0                 mov     eax, [ebp-$10]
006A6293   668B0DB0636A00         mov     cx, word ptr [$006A63B0]
006A629A   B201                   mov     dl, $01

|
006A629C   E88BD8D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A62A1   E80AECD5FF             call    00404EB0

****** END
|
006A62A6   33C0                   xor     eax, eax
006A62A8   5A                     pop     edx
006A62A9   59                     pop     ecx
006A62AA   59                     pop     ecx
006A62AB   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A62AE   68BB626A00             push    $006A62BB
006A62B3   C3                     ret


* Reference to: System.@HandleFinally;
|
006A62B4   E97FEAD5FF             jmp     00404D38
006A62B9   EBF8                   jmp     006A62B3

****** END
|
006A62BB   33C0                   xor     eax, eax
006A62BD   5A                     pop     edx
006A62BE   59                     pop     ecx
006A62BF   59                     pop     ecx
006A62C0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006A62C3   68DD626A00             push    $006A62DD
006A62C8   8D45F0                 lea     eax, [ebp-$10]
006A62CB   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A62D0   E8EBF1D5FF             call    004054C0
006A62D5   C3                     ret


* Reference to: System.@HandleFinally;
|
006A62D6   E95DEAD5FF             jmp     00404D38
006A62DB   EBEB                   jmp     006A62C8

****** END
|
006A62DD   8A45FF                 mov     al, byte ptr [ebp-$01]
006A62E0   5F                     pop     edi
006A62E1   5E                     pop     esi
006A62E2   5B                     pop     ebx
006A62E3   8BE5                   mov     esp, ebp
006A62E5   5D                     pop     ebp
006A62E6   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A62B4(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A62B4   E97FEAD5FF             jmp     00404D38

|
006A62B9   EBF8                   jmp     006A62B3
006A62BB   33C0                   xor     eax, eax
006A62BD   5A                     pop     edx
006A62BE   59                     pop     ecx
006A62BF   59                     pop     ecx
006A62C0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006A62C3   68DD626A00             push    $006A62DD
006A62C8   8D45F0                 lea     eax, [ebp-$10]
006A62CB   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A62D0   E8EBF1D5FF             call    004054C0
006A62D5   C3                     ret


* Reference to: System.@HandleFinally;
|
006A62D6   E95DEAD5FF             jmp     00404D38
006A62DB   EBEB                   jmp     006A62C8

****** END
|
006A62DD   8A45FF                 mov     al, byte ptr [ebp-$01]
006A62E0   5F                     pop     edi
006A62E1   5E                     pop     esi
006A62E2   5B                     pop     ebx
006A62E3   8BE5                   mov     esp, ebp
006A62E5   5D                     pop     ebp
006A62E6   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A6304(Sender : TObject);
begin
(*
006A6304   52                     push    edx
006A6305   41                     inc     ecx
006A6306   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A6315(Sender : TObject);
begin
(*
006A6315   52                     push    edx
006A6316   41                     inc     ecx
006A6317   00FF                   add     bh, bh
006A6319   FFFF                   DB  $FF, $FF  //      
006A631B   FF07                   inc     dword ptr [edi]
006A631D   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A6365(Sender : TObject);
begin
(*
006A6365   53                     push    ebx
006A6366   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A6374(Sender : TObject);
begin
(*
006A6374   4C                     dec     esp
006A6375   54                     push    esp
006A6376   5F                     pop     edi
006A6377   41                     inc     ecx
006A6378   54                     push    esp
006A6379   45                     inc     ebp
006A637A   4E                     dec     esi
006A637B   44                     inc     esp
006A637C   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A665C(Sender : TObject);
begin
(*
006A665C   0400                   add     al, +$00
006A665E   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A671C(Sender : TObject);
begin
(*
006A671C   55                     push    ebp
006A671D   8BEC                   mov     ebp, esp
006A671F   83C4F8                 add     esp, -$08
006A6722   53                     push    ebx
006A6723   56                     push    esi
006A6724   57                     push    edi
006A6725   33D2                   xor     edx, edx
006A6727   8955F8                 mov     [ebp-$08], edx
006A672A   8BD8                   mov     ebx, eax
006A672C   33C0                   xor     eax, eax
006A672E   55                     push    ebp

* Possible String Reference to: 'é!åÕÿëðŠEÿ_^[YY]Ã'
|
006A672F   6812686A00             push    $006A6812

***** TRY
|
006A6734   64FF30                 push    dword ptr fs:[eax]
006A6737   648920                 mov     fs:[eax], esp
006A673A   C645FF00               mov     byte ptr [ebp-$01], $00
006A673E   33D2                   xor     edx, edx
006A6740   55                     push    ebp
006A6741   68F5676A00             push    $006A67F5

***** TRY
|
006A6746   64FF32                 push    dword ptr fs:[edx]
006A6749   648922                 mov     fs:[edx], esp
006A674C   33D2                   xor     edx, edx
006A674E   55                     push    ebp
006A674F   68AC676A00             push    $006A67AC

***** TRY
|
006A6754   64FF32                 push    dword ptr fs:[edx]
006A6757   648922                 mov     fs:[edx], esp

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A675A   8B83CC030000           mov     eax, [ebx+$03CC]
006A6760   85C0                   test    eax, eax
006A6762   752A                   jnz     006A678E
006A6764   33C9                   xor     ecx, ecx
006A6766   B201                   mov     dl, $01

* Reference to class tArrayTable
|
006A6768   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
006A676D   E8A60C1100             call    007B7418

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A6772   8983CC030000           mov     [ebx+$03CC], eax
006A6778   33C9                   xor     ecx, ecx
006A677A   B201                   mov     dl, $01

* Reference to class tArrayTable
|
006A677C   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
006A6781   E8920C1100             call    007B7418

* Reference to field TfrmGerenciador.OFFS_03D0
|
006A6786   8983D0030000           mov     [ebx+$03D0], eax
006A678C   EB10                   jmp     006A679E

* Reference to : tArrayTable._PROC_007B8B94()
|
006A678E   E801241100             call    007B8B94

* Reference to field TfrmGerenciador.OFFS_03D0
|
006A6793   8B83D0030000           mov     eax, [ebx+$03D0]

* Reference to : tArrayTable._PROC_007B8B94()
|
006A6799   E8F6231100             call    007B8B94
006A679E   C645FF01               mov     byte ptr [ebp-$01], $01
006A67A2   33C0                   xor     eax, eax
006A67A4   5A                     pop     edx
006A67A5   59                     pop     ecx
006A67A6   59                     pop     ecx
006A67A7   648910                 mov     fs:[eax], edx
006A67AA   EB3B                   jmp     006A67E7

* Reference to: System.@HandleOnException;
|
006A67AC   E9FFE3D5FF             jmp     00404BB0
006A67B1   0100                   add     [eax], eax
006A67B3   0000                   add     [eax], al
006A67B5   40                     inc     eax
006A67B6   95                     xchg    eax, ebp
006A67B7   40                     inc     eax
006A67B8   00BD676A0089           add     [ebp+$89006A67], bh
006A67BE   C3                     ret

006A67BF   6A00                   push    $00

* Reference to field TfrmGerenciador.Owner : TComponent
|
006A67C1   8B4B04                 mov     ecx, [ebx+$04]
006A67C4   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Erro ao inicializar a matriz de "me
|                                sas"!'
|
006A67C7   BA2C686A00             mov     edx, $006A682C

* Reference to: System.@LStrCat3;
|
006A67CC   E8D7EFD5FF             call    004057A8
006A67D1   8B45F8                 mov     eax, [ebp-$08]
006A67D4   668B0D58686A00         mov     cx, word ptr [$006A6858]
006A67DB   B201                   mov     dl, $01

|
006A67DD   E84AD3D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A67E2   E8C9E6D5FF             call    00404EB0

****** END
|
006A67E7   33C0                   xor     eax, eax
006A67E9   5A                     pop     edx
006A67EA   59                     pop     ecx
006A67EB   59                     pop     ecx
006A67EC   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A67EF   68FC676A00             push    $006A67FC
006A67F4   C3                     ret


* Reference to: System.@HandleFinally;
|
006A67F5   E93EE5D5FF             jmp     00404D38
006A67FA   EBF8                   jmp     006A67F4

****** END
|
006A67FC   33C0                   xor     eax, eax
006A67FE   5A                     pop     edx
006A67FF   59                     pop     ecx
006A6800   59                     pop     ecx
006A6801   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
006A6804   6819686A00             push    $006A6819
006A6809   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006A680C   E88BECD5FF             call    0040549C
006A6811   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A67F5(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A67F5   E93EE5D5FF             jmp     00404D38

|
006A67FA   EBF8                   jmp     006A67F4
006A67FC   33C0                   xor     eax, eax
006A67FE   5A                     pop     edx
006A67FF   59                     pop     ecx
006A6800   59                     pop     ecx
006A6801   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
006A6804   6819686A00             push    $006A6819
006A6809   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006A680C   E88BECD5FF             call    0040549C
006A6811   C3                     ret


* Reference to: System.@HandleFinally;
|
006A6812   E921E5D5FF             jmp     00404D38
006A6817   EBF0                   jmp     006A6809

****** END
|
006A6819   8A45FF                 mov     al, byte ptr [ebp-$01]
006A681C   5F                     pop     edi
006A681D   5E                     pop     esi
006A681E   5B                     pop     ebx
006A681F   59                     pop     ecx
006A6820   59                     pop     ecx
006A6821   5D                     pop     ebp
006A6822   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A685D(Sender : TObject);
begin
(*
006A685D   8BEC                   mov     ebp, esp
006A685F   83C4E8                 add     esp, -$18
006A6862   53                     push    ebx
006A6863   56                     push    esi
006A6864   57                     push    edi
006A6865   33DB                   xor     ebx, ebx
006A6867   895DE8                 mov     [ebp-$18], ebx
006A686A   894DFC                 mov     [ebp-$04], ecx
006A686D   8BF2                   mov     esi, edx
006A686F   8BD8                   mov     ebx, eax
006A6871   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A6874   E8D3F0D5FF             call    0040594C
006A6879   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A687C   E8CBF0D5FF             call    0040594C
006A6881   33C0                   xor     eax, eax
006A6883   55                     push    ebp
006A6884   68F8696A00             push    $006A69F8

***** TRY
|
006A6889   64FF30                 push    dword ptr fs:[eax]
006A688C   648920                 mov     fs:[eax], esp
006A688F   A168B67D00             mov     eax, dword ptr [$007DB668]
006A6894   8B00                   mov     eax, [eax]
006A6896   66BAF5FF               mov     dx, $FFF5

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
006A689A   E88DD4E0FF             call    004B3D2C
006A689F   C645FB00               mov     byte ptr [ebp-$05], $00
006A68A3   33C0                   xor     eax, eax
006A68A5   55                     push    ebp
006A68A6   68CB696A00             push    $006A69CB

***** TRY
|
006A68AB   64FF30                 push    dword ptr fs:[eax]
006A68AE   648920                 mov     fs:[eax], esp
006A68B1   33C0                   xor     eax, eax
006A68B3   55                     push    ebp
006A68B4   6866696A00             push    $006A6966

***** TRY
|
006A68B9   64FF30                 push    dword ptr fs:[eax]
006A68BC   648920                 mov     fs:[eax], esp
006A68BF   8BC3                   mov     eax, ebx

* Reference to : TfrmGerenciador._PROC_006A671C()
|
006A68C1   E856FEFFFF             call    006A671C
006A68C6   8B45FC                 mov     eax, [ebp-$04]
006A68C9   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
006A68CA   68146A6A00             push    $006A6A14

* Possible String Reference to: 'CODMESA'
|
006A68CF   B8146A6A00             mov     eax, $006A6A14
006A68D4   8945F4                 mov     [ebp-$0C], eax
006A68D7   8D45F4                 lea     eax, [ebp-$0C]
006A68DA   50                     push    eax
006A68DB   6A00                   push    $00
006A68DD   6A01                   push    $01
006A68DF   8BC6                   mov     eax, esi

|
006A68E1   E8E61A1000             call    007A83CC
006A68E6   8BD0                   mov     edx, eax

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A68E8   8B83CC030000           mov     eax, [ebx+$03CC]

* Possible String Reference to: 'MESAS'
|
006A68EE   B9246A6A00             mov     ecx, $006A6A24

* Reference to : tArrayTable._PROC_007B8E10()
|
006A68F3   E818251100             call    007B8E10
006A68F8   84C0                   test    al, al
006A68FA   7460                   jz      006A695C
006A68FC   8B45FC                 mov     eax, [ebp-$04]
006A68FF   50                     push    eax

* Possible String Reference to: 'CODMESA,NUMLCTO'
|
006A6900   68346A6A00             push    $006A6A34

* Possible String Reference to: 'CODMESA'
|
006A6905   B8146A6A00             mov     eax, $006A6A14
006A690A   8945EC                 mov     [ebp-$14], eax

* Possible String Reference to: 'NUMLCTO'
|
006A690D   B84C6A6A00             mov     eax, $006A6A4C
006A6912   8945F0                 mov     [ebp-$10], eax
006A6915   8D45EC                 lea     eax, [ebp-$14]
006A6918   50                     push    eax
006A6919   6A01                   push    $01
006A691B   6A01                   push    $01
006A691D   8BC6                   mov     eax, esi

|
006A691F   E8A81A1000             call    007A83CC
006A6924   8BD0                   mov     edx, eax

* Reference to field TfrmGerenciador.OFFS_03D0
|
006A6926   8B83D0030000           mov     eax, [ebx+$03D0]

* Possible String Reference to: 'MESALCTO'
|
006A692C   B95C6A6A00             mov     ecx, $006A6A5C

* Reference to : tArrayTable._PROC_007B8E10()
|
006A6931   E8DA241100             call    007B8E10
006A6936   84C0                   test    al, al
006A6938   7422                   jz      006A695C
006A693A   6A00                   push    $00

* Possible String Reference to: 'CODMESA'
|
006A693C   B8146A6A00             mov     eax, $006A6A14
006A6941   8945F4                 mov     [ebp-$0C], eax
006A6944   8D4DF4                 lea     ecx, [ebp-$0C]

* Reference to field TfrmGerenciador.OFFS_03CC
|
006A6947   8B93CC030000           mov     edx, [ebx+$03CC]

* Reference to field TfrmGerenciador.OFFS_03D0
|
006A694D   8B83D0030000           mov     eax, [ebx+$03D0]

|
006A6953   E810361100             call    007B9F68
006A6958   C645FB01               mov     byte ptr [ebp-$05], $01
006A695C   33C0                   xor     eax, eax
006A695E   5A                     pop     edx
006A695F   59                     pop     ecx
006A6960   59                     pop     ecx
006A6961   648910                 mov     fs:[eax], edx
006A6964   EB49                   jmp     006A69AF

* Reference to: System.@HandleOnException;
|
006A6966   E945E2D5FF             jmp     00404BB0
006A696B   0100                   add     [eax], eax
006A696D   0000                   add     [eax], al
006A696F   40                     inc     eax
006A6970   95                     xchg    eax, ebp
006A6971   40                     inc     eax
006A6972   007769                 add     [edi+$69], dh
006A6975   6A00                   push    $00
006A6977   89C3                   mov     ebx, eax
006A6979   A168B67D00             mov     eax, dword ptr [$007DB668]
006A697E   8B00                   mov     eax, [eax]
006A6980   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
006A6982   E8A5D3E0FF             call    004B3D2C
006A6987   6A00                   push    $00
006A6989   8B4B04                 mov     ecx, [ebx+$04]
006A698C   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Erro ao carregar a matriz de saidas
|                                !'
|
006A698F   BA706A6A00             mov     edx, $006A6A70

* Reference to: System.@LStrCat3;
|
006A6994   E80FEED5FF             call    004057A8
006A6999   8B45E8                 mov     eax, [ebp-$18]
006A699C   668B0D986A6A00         mov     cx, word ptr [$006A6A98]
006A69A3   B201                   mov     dl, $01

|
006A69A5   E882D1D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A69AA   E801E5D5FF             call    00404EB0

****** END
|
006A69AF   33C0                   xor     eax, eax
006A69B1   5A                     pop     edx
006A69B2   59                     pop     ecx
006A69B3   59                     pop     ecx
006A69B4   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A69B7   68D2696A00             push    $006A69D2
006A69BC   A168B67D00             mov     eax, dword ptr [$007DB668]
006A69C1   8B00                   mov     eax, [eax]
006A69C3   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
006A69C5   E862D3E0FF             call    004B3D2C
006A69CA   C3                     ret


* Reference to: System.@HandleFinally;
|
006A69CB   E968E3D5FF             jmp     00404D38
006A69D0   EBEA                   jmp     006A69BC

****** END
|
006A69D2   33C0                   xor     eax, eax
006A69D4   5A                     pop     edx
006A69D5   59                     pop     ecx
006A69D6   59                     pop     ecx
006A69D7   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A69DA   68FF696A00             push    $006A69FF
006A69DF   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrClr(void;void);
|
006A69E2   E8B5EAD5FF             call    0040549C
006A69E7   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006A69EA   E8ADEAD5FF             call    0040549C
006A69EF   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
006A69F2   E8A5EAD5FF             call    0040549C
006A69F7   C3                     ret


* Reference to: System.@HandleFinally;
|
006A69F8   E93BE3D5FF             jmp     00404D38
006A69FD   EBE0                   jmp     006A69DF

****** END
|
006A69FF   8A45FB                 mov     al, byte ptr [ebp-$05]
006A6A02   5F                     pop     edi
006A6A03   5E                     pop     esi
006A6A04   5B                     pop     ebx
006A6A05   8BE5                   mov     esp, ebp
006A6A07   5D                     pop     ebp
006A6A08   C20400                 ret     $0004

*)
end;

procedure TfrmGerenciador._PROC_006A69F8(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A69F8   E93BE3D5FF             jmp     00404D38

|
006A69FD   EBE0                   jmp     006A69DF
006A69FF   8A45FB                 mov     al, byte ptr [ebp-$05]
006A6A02   5F                     pop     edi
006A6A03   5E                     pop     esi
006A6A04   5B                     pop     ebx
006A6A05   8BE5                   mov     esp, ebp
006A6A07   5D                     pop     ebp
006A6A08   C20400                 ret     $0004

*)
end;

procedure TfrmGerenciador._PROC_006A6A3E(Sender : TObject);
begin
(*
006A6A3E   4D                     dec     ebp
006A6A3F   4C                     dec     esp
006A6A40   43                     inc     ebx
006A6A41   54                     push    esp
006A6A42   4F                     dec     edi
006A6A43   00FF                   add     bh, bh
006A6A45   FFFF                   DB  $FF, $FF  //      
006A6A47   FF07                   inc     dword ptr [edi]
006A6A49   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A6A4E(Sender : TObject);
begin
(*
006A6A4E   4D                     dec     ebp
006A6A4F   4C                     dec     esp
006A6A50   43                     inc     ebx
006A6A51   54                     push    esp
006A6A52   4F                     dec     edi
006A6A53   00FF                   add     bh, bh
006A6A55   FFFF                   DB  $FF, $FF  //      
006A6A57   FF08                   dec     dword ptr [eax]
006A6A59   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A6D40(Sender : TObject);
begin
(*
006A6D40   55                     push    ebp
006A6D41   8BEC                   mov     ebp, esp
006A6D43   53                     push    ebx
006A6D44   56                     push    esi
006A6D45   8BF2                   mov     esi, edx
006A6D47   8BD8                   mov     ebx, eax

* Reference to control TfrmGerenciador.ckMouse : TCheckBox
|
006A6D49   8B83B8030000           mov     eax, [ebx+$03B8]
006A6D4F   8B10                   mov     edx, [eax]

* Reference to method TCheckBox.GetChecked()
|
006A6D51   FF92C8000000           call    dword ptr [edx+$00C8]
006A6D57   84C0                   test    al, al
006A6D59   753E                   jnz     006A6D99
006A6D5B   8BC6                   mov     eax, esi

* Reference to class TJvPanel
|
006A6D5D   8B15B8696700           mov     edx, [$006769B8]

* Reference to: System.@AsClass(TObject;TClass):TObject;
|
006A6D63   E8ECD9D5FF             call    00404754
006A6D68   8B1544ED7D00           mov     edx, [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A6D6E   8993E0030000           mov     [ebx+$03E0], edx
006A6D74   8B400C                 mov     eax, [eax+$0C]

* Reference to GlobalVar_007DED44
|
006A6D77   A344ED7D00             mov     dword ptr [$007DED44], eax

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A6D7C   8B83E0030000           mov     eax, [ebx+$03E0]
006A6D82   3B0544ED7D00           cmp     eax, [$007DED44]
006A6D88   740F                   jz      006A6D99
006A6D8A   8BC8                   mov     ecx, eax
006A6D8C   8B1544ED7D00           mov     edx, [$007DED44]
006A6D92   8BC3                   mov     eax, ebx

|
006A6D94   E8E7080000             call    006A7680
006A6D99   5E                     pop     esi
006A6D9A   5B                     pop     ebx
006A6D9B   5D                     pop     ebp
006A6D9C   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A6DA0(Sender : TObject);
begin
(*
006A6DA0   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A6E48(Sender : TObject);
begin
(*
006A6E48   55                     push    ebp
006A6E49   8BEC                   mov     ebp, esp
006A6E4B   83C4F0                 add     esp, -$10
006A6E4E   53                     push    ebx
006A6E4F   56                     push    esi
006A6E50   57                     push    edi
006A6E51   33D2                   xor     edx, edx
006A6E53   8955F0                 mov     [ebp-$10], edx
006A6E56   8BD8                   mov     ebx, eax
006A6E58   33C0                   xor     eax, eax
006A6E5A   55                     push    ebp
006A6E5B   68776F6A00             push    $006A6F77

***** TRY
|
006A6E60   64FF30                 push    dword ptr fs:[eax]
006A6E63   648920                 mov     fs:[eax], esp
006A6E66   C645FF00               mov     byte ptr [ebp-$01], $00
006A6E6A   33C0                   xor     eax, eax
006A6E6C   55                     push    ebp
006A6E6D   685A6F6A00             push    $006A6F5A

***** TRY
|
006A6E72   64FF30                 push    dword ptr fs:[eax]
006A6E75   648920                 mov     fs:[eax], esp
006A6E78   33C0                   xor     eax, eax
006A6E7A   55                     push    ebp
006A6E7B   68116F6A00             push    $006A6F11

***** TRY
|
006A6E80   64FF30                 push    dword ptr fs:[eax]
006A6E83   648920                 mov     fs:[eax], esp
006A6E86   6A00                   push    $00
006A6E88   668B0D886F6A00         mov     cx, word ptr [$006A6F88]
006A6E8F   B203                   mov     dl, $03

* Possible String Reference to: 'Deseja limpar todo o movimento das 
|                                mesas?'
|
006A6E91   B8946F6A00             mov     eax, $006A6F94

|
006A6E96   E891CCD9FF             call    00443B2C
006A6E9B   83F806                 cmp     eax, +$06
006A6E9E   7567                   jnz     006A6F07
006A6EA0   6A00                   push    $00

* Possible String Reference to: 'MESAITEM'
|
006A6EA2   B8C86F6A00             mov     eax, $006A6FC8
006A6EA7   8945F8                 mov     [ebp-$08], eax
006A6EAA   8D55F8                 lea     edx, [ebp-$08]
006A6EAD   33C9                   xor     ecx, ecx
006A6EAF   33C0                   xor     eax, eax

|
006A6EB1   E876391000             call    007AA82C
006A6EB6   6A00                   push    $00

* Possible String Reference to: 'MESALCTO'
|
006A6EB8   B8DC6F6A00             mov     eax, $006A6FDC
006A6EBD   8945F8                 mov     [ebp-$08], eax
006A6EC0   8D55F8                 lea     edx, [ebp-$08]
006A6EC3   33C9                   xor     ecx, ecx
006A6EC5   33C0                   xor     eax, eax

|
006A6EC7   E860391000             call    007AA82C
006A6ECC   6A00                   push    $00
006A6ECE   B8F06F6A00             mov     eax, $006A6FF0
006A6ED3   8945F8                 mov     [ebp-$08], eax
006A6ED6   8D45F8                 lea     eax, [ebp-$08]
006A6ED9   50                     push    eax
006A6EDA   6A00                   push    $00
006A6EDC   6A00                   push    $00

* Possible String Reference to: 'STATUS'
|
006A6EDE   B8FC6F6A00             mov     eax, $006A6FFC
006A6EE3   8945F4                 mov     [ebp-$0C], eax
006A6EE6   8D4DF4                 lea     ecx, [ebp-$0C]

* Possible String Reference to: 'MESAS'
|
006A6EE9   BA0C706A00             mov     edx, $006A700C
006A6EEE   33C0                   xor     eax, eax

|
006A6EF0   E85F341000             call    007AA354
006A6EF5   33C0                   xor     eax, eax

|
006A6EF7   E8003B1000             call    007AA9FC
006A6EFC   8BC3                   mov     eax, ebx

|
006A6EFE   E819F1FFFF             call    006A601C
006A6F03   C645FF01               mov     byte ptr [ebp-$01], $01
006A6F07   33C0                   xor     eax, eax
006A6F09   5A                     pop     edx
006A6F0A   59                     pop     ecx
006A6F0B   59                     pop     ecx
006A6F0C   648910                 mov     fs:[eax], edx
006A6F0F   EB3B                   jmp     006A6F4C

* Reference to: System.@HandleOnException;
|
006A6F11   E99ADCD5FF             jmp     00404BB0
006A6F16   0100                   add     [eax], eax
006A6F18   0000                   add     [eax], al
006A6F1A   40                     inc     eax
006A6F1B   95                     xchg    eax, ebp
006A6F1C   40                     inc     eax
006A6F1D   0022                   add     [edx], ah
006A6F1F   6F                     outsd
006A6F20   6A00                   push    $00
006A6F22   89C3                   mov     ebx, eax
006A6F24   6A00                   push    $00
006A6F26   8B4B04                 mov     ecx, [ebx+$04]
006A6F29   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'Erro ao limpar o movimento!'
|
006A6F2C   BA1C706A00             mov     edx, $006A701C

* Reference to: System.@LStrCat3;
|
006A6F31   E872E8D5FF             call    004057A8
006A6F36   8B45F0                 mov     eax, [ebp-$10]
006A6F39   668B0D3C706A00         mov     cx, word ptr [$006A703C]
006A6F40   B201                   mov     dl, $01

|
006A6F42   E8E5CBD9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A6F47   E864DFD5FF             call    00404EB0

****** END
|
006A6F4C   33C0                   xor     eax, eax
006A6F4E   5A                     pop     edx
006A6F4F   59                     pop     ecx
006A6F50   59                     pop     ecx
006A6F51   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A6F54   68616F6A00             push    $006A6F61
006A6F59   C3                     ret


* Reference to: System.@HandleFinally;
|
006A6F5A   E9D9DDD5FF             jmp     00404D38
006A6F5F   EBF8                   jmp     006A6F59

****** END
|
006A6F61   33C0                   xor     eax, eax
006A6F63   5A                     pop     edx
006A6F64   59                     pop     ecx
006A6F65   59                     pop     ecx
006A6F66   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A6F69   687E6F6A00             push    $006A6F7E
006A6F6E   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
006A6F71   E826E5D5FF             call    0040549C
006A6F76   C3                     ret


* Reference to: System.@HandleFinally;
|
006A6F77   E9BCDDD5FF             jmp     00404D38
006A6F7C   EBF0                   jmp     006A6F6E

****** END
|
006A6F7E   8A45FF                 mov     al, byte ptr [ebp-$01]
006A6F81   5F                     pop     edi
006A6F82   5E                     pop     esi
006A6F83   5B                     pop     ebx
006A6F84   8BE5                   mov     esp, ebp
006A6F86   5D                     pop     ebp
006A6F87   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A6F77(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A6F77   E9BCDDD5FF             jmp     00404D38

|
006A6F7C   EBF0                   jmp     006A6F6E
006A6F7E   8A45FF                 mov     al, byte ptr [ebp-$01]
006A6F81   5F                     pop     edi
006A6F82   5E                     pop     esi
006A6F83   5B                     pop     ebx
006A6F84   8BE5                   mov     esp, ebp
006A6F86   5D                     pop     ebp
006A6F87   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A6F88(Sender : TObject);
begin
(*
006A6F88   0300                   add     eax, [eax]
006A6F8A   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A7001(Sender : TObject);
begin
(*
006A7001   53                     push    ebx
006A7002   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A70E8(Sender : TObject);
begin
(*
006A70E8   0400                   add     al, +$00
006A70EA   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A737D(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A737D   E9B6D9D5FF             jmp     00404D38

* Reference to: Forms.TCustomForm.WMClose(TCustomForm;TWMClose;TWMClose);
|
006A7382   EBF3                   jmp     006A7377
006A7384   33C0                   xor     eax, eax
006A7386   5A                     pop     edx
006A7387   59                     pop     ecx
006A7388   59                     pop     ecx
006A7389   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006A738C   68BB736A00             push    $006A73BB
006A7391   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
006A7394   E803E1D5FF             call    0040549C
006A7399   8D45D8                 lea     eax, [ebp-$28]
006A739C   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A73A1   E81AE1D5FF             call    004054C0
006A73A6   8D45EC                 lea     eax, [ebp-$14]
006A73A9   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A73AE   E80DE1D5FF             call    004054C0
006A73B3   C3                     ret


* Reference to: System.@HandleFinally;
|
006A73B4   E97FD9D5FF             jmp     00404D38
006A73B9   EBD6                   jmp     006A7391

****** END
|
006A73BB   5F                     pop     edi
006A73BC   5E                     pop     esi
006A73BD   5B                     pop     ebx
006A73BE   8BE5                   mov     esp, ebp
006A73C0   5D                     pop     ebp
006A73C1   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A7465(Sender : TObject);
begin
(*
006A7465   53                     push    ebx
006A7466   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A7681(Sender : TObject);
begin
(*
006A7681   8BEC                   mov     ebp, esp
006A7683   6A00                   push    $00
006A7685   6A00                   push    $00
006A7687   6A00                   push    $00
006A7689   6A00                   push    $00
006A768B   6A00                   push    $00
006A768D   6A00                   push    $00
006A768F   53                     push    ebx
006A7690   56                     push    esi
006A7691   57                     push    edi
006A7692   8BF9                   mov     edi, ecx
006A7694   8BDA                   mov     ebx, edx
006A7696   8BF0                   mov     esi, eax
006A7698   33C0                   xor     eax, eax
006A769A   55                     push    ebp

* Possible String Reference to: 'ézÕÕÿëëŠEÿ_^[‹å]Ã'
|
006A769B   68B9776A00             push    $006A77B9

***** TRY
|
006A76A0   64FF30                 push    dword ptr fs:[eax]
006A76A3   648920                 mov     fs:[eax], esp
006A76A6   C645FF00               mov     byte ptr [ebp-$01], $00
006A76AA   33C0                   xor     eax, eax
006A76AC   55                     push    ebp
006A76AD   6897776A00             push    $006A7797

***** TRY
|
006A76B2   64FF30                 push    dword ptr fs:[eax]
006A76B5   648920                 mov     fs:[eax], esp
006A76B8   33C0                   xor     eax, eax
006A76BA   55                     push    ebp
006A76BB   684E776A00             push    $006A774E

***** TRY
|
006A76C0   64FF30                 push    dword ptr fs:[eax]
006A76C3   648920                 mov     fs:[eax], esp
006A76C6   8D55F4                 lea     edx, [ebp-$0C]
006A76C9   8BC3                   mov     eax, ebx

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A76CB   E89436D6FF             call    0040AD64
006A76D0   8B4DF4                 mov     ecx, [ebp-$0C]
006A76D3   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'pn'
|
006A76D6   BAD4776A00             mov     edx, $006A77D4

* Reference to: System.@LStrCat3;
|
006A76DB   E8C8E0D5FF             call    004057A8
006A76E0   8B55F8                 mov     edx, [ebp-$08]
006A76E3   8BC6                   mov     eax, esi

* Reference to: Classes.TComponent.FindComponent(TComponent;AnsiString):TComponent;
|
006A76E5   E8DE6AD8FF             call    0042E1C8
006A76EA   8BD8                   mov     ebx, eax
006A76EC   8D55EC                 lea     edx, [ebp-$14]
006A76EF   8BC7                   mov     eax, edi

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A76F1   E86E36D6FF             call    0040AD64
006A76F6   8B4DEC                 mov     ecx, [ebp-$14]
006A76F9   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'pn'
|
006A76FC   BAD4776A00             mov     edx, $006A77D4

* Reference to: System.@LStrCat3;
|
006A7701   E8A2E0D5FF             call    004057A8
006A7706   8B55F0                 mov     edx, [ebp-$10]
006A7709   8BC6                   mov     eax, esi

* Reference to: Classes.TComponent.FindComponent(TComponent;AnsiString):TComponent;
|
006A770B   E8B86AD8FF             call    0042E1C8
006A7710   8BF0                   mov     esi, eax
006A7712   85DB                   test    ebx, ebx
006A7714   7415                   jz      006A772B
006A7716   B201                   mov     dl, $01
006A7718   8BC3                   mov     eax, ebx

* Reference to: ExtCtrls.TCustomPanel.SetBevelInner(TCustomPanel;TBevelCut);
|
006A771A   E85D16DAFF             call    00448D7C
006A771F   BA03000000             mov     edx, $00000003
006A7724   8BC3                   mov     eax, ebx

* Reference to: ExtCtrls.TCustomPanel.SetBevelWidth(TCustomPanel;TBevelWidth);
|
006A7726   E8A516DAFF             call    00448DD0
006A772B   85F6                   test    esi, esi
006A772D   7415                   jz      006A7744
006A772F   33D2                   xor     edx, edx
006A7731   8BC6                   mov     eax, esi

* Reference to: ExtCtrls.TCustomPanel.SetBevelInner(TCustomPanel;TBevelCut);
|
006A7733   E84416DAFF             call    00448D7C
006A7738   BA01000000             mov     edx, $00000001
006A773D   8BC6                   mov     eax, esi

* Reference to: ExtCtrls.TCustomPanel.SetBevelWidth(TCustomPanel;TBevelWidth);
|
006A773F   E88C16DAFF             call    00448DD0
006A7744   33C0                   xor     eax, eax
006A7746   5A                     pop     edx
006A7747   59                     pop     ecx
006A7748   59                     pop     ecx
006A7749   648910                 mov     fs:[eax], edx
006A774C   EB3B                   jmp     006A7789

* Reference to: System.@HandleOnException;
|
006A774E   E95DD4D5FF             jmp     00404BB0
006A7753   0100                   add     [eax], eax
006A7755   0000                   add     [eax], al
006A7757   40                     inc     eax
006A7758   95                     xchg    eax, ebp
006A7759   40                     inc     eax
006A775A   005F77                 add     [edi+$77], bl
006A775D   6A00                   push    $00
006A775F   89C3                   mov     ebx, eax
006A7761   6A00                   push    $00
006A7763   8B4B04                 mov     ecx, [ebx+$04]
006A7766   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
006A7769   BAE0776A00             mov     edx, $006A77E0

* Reference to: System.@LStrCat3;
|
006A776E   E835E0D5FF             call    004057A8
006A7773   8B45E8                 mov     eax, [ebp-$18]
006A7776   668B0D00786A00         mov     cx, word ptr [$006A7800]
006A777D   B201                   mov     dl, $01

|
006A777F   E8A8C3D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A7784   E827D7D5FF             call    00404EB0

****** END
|
006A7789   33C0                   xor     eax, eax
006A778B   5A                     pop     edx
006A778C   59                     pop     ecx
006A778D   59                     pop     ecx
006A778E   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A7791   689E776A00             push    $006A779E
006A7796   C3                     ret


* Reference to: System.@HandleFinally;
|
006A7797   E99CD5D5FF             jmp     00404D38
006A779C   EBF8                   jmp     006A7796

****** END
|
006A779E   33C0                   xor     eax, eax
006A77A0   5A                     pop     edx
006A77A1   59                     pop     ecx
006A77A2   59                     pop     ecx
006A77A3   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006A77A6   68C0776A00             push    $006A77C0
006A77AB   8D45E8                 lea     eax, [ebp-$18]
006A77AE   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A77B3   E808DDD5FF             call    004054C0
006A77B8   C3                     ret


* Reference to: System.@HandleFinally;
|
006A77B9   E97AD5D5FF             jmp     00404D38
006A77BE   EBEB                   jmp     006A77AB

****** END
|
006A77C0   8A45FF                 mov     al, byte ptr [ebp-$01]
006A77C3   5F                     pop     edi
006A77C4   5E                     pop     esi
006A77C5   5B                     pop     ebx
006A77C6   8BE5                   mov     esp, ebp
006A77C8   5D                     pop     ebp
006A77C9   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A77B9(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A77B9   E97AD5D5FF             jmp     00404D38

|
006A77BE   EBEB                   jmp     006A77AB
006A77C0   8A45FF                 mov     al, byte ptr [ebp-$01]
006A77C3   5F                     pop     edi
006A77C4   5E                     pop     esi
006A77C5   5B                     pop     ebx
006A77C6   8BE5                   mov     esp, ebp
006A77C8   5D                     pop     ebp
006A77C9   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A7805(Sender : TObject);
begin
(*
006A7805   8BEC                   mov     ebp, esp
006A7807   33C9                   xor     ecx, ecx
006A7809   51                     push    ecx
006A780A   51                     push    ecx
006A780B   51                     push    ecx
006A780C   51                     push    ecx
006A780D   51                     push    ecx
006A780E   53                     push    ebx
006A780F   56                     push    esi
006A7810   57                     push    edi
006A7811   8BF2                   mov     esi, edx
006A7813   8BD8                   mov     ebx, eax
006A7815   33C0                   xor     eax, eax
006A7817   55                     push    ebp
006A7818   681D796A00             push    $006A791D

***** TRY
|
006A781D   64FF30                 push    dword ptr fs:[eax]
006A7820   648920                 mov     fs:[eax], esp
006A7823   C645FF00               mov     byte ptr [ebp-$01], $00
006A7827   33C0                   xor     eax, eax
006A7829   55                     push    ebp
006A782A   68FB786A00             push    $006A78FB

***** TRY
|
006A782F   64FF30                 push    dword ptr fs:[eax]
006A7832   648920                 mov     fs:[eax], esp
006A7835   33C0                   xor     eax, eax
006A7837   55                     push    ebp
006A7838   68B2786A00             push    $006A78B2

***** TRY
|
006A783D   64FF30                 push    dword ptr fs:[eax]
006A7840   648920                 mov     fs:[eax], esp
006A7843   8D55F4                 lea     edx, [ebp-$0C]
006A7846   8BC6                   mov     eax, esi

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7848   E81735D6FF             call    0040AD64
006A784D   8B4DF4                 mov     ecx, [ebp-$0C]
006A7850   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'pn'
|
006A7853   BA38796A00             mov     edx, $006A7938

* Reference to: System.@LStrCat3;
|
006A7858   E84BDFD5FF             call    004057A8
006A785D   8B55F8                 mov     edx, [ebp-$08]
006A7860   8BC3                   mov     eax, ebx

* Reference to: Classes.TComponent.FindComponent(TComponent;AnsiString):TComponent;
|
006A7862   E86169D8FF             call    0042E1C8
006A7867   8BF0                   mov     esi, eax
006A7869   85F6                   test    esi, esi
006A786B   743B                   jz      006A78A8
006A786D   8D55F0                 lea     edx, [ebp-$10]
006A7870   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7875   E8EA34D6FF             call    0040AD64
006A787A   8B55F0                 mov     edx, [ebp-$10]

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A787D   8D83DC030000           lea     eax, [ebx+$03DC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A7883   E868DCD5FF             call    004054F0
006A7888   8BD6                   mov     edx, esi
006A788A   8BC3                   mov     eax, ebx

|
006A788C   E823D6FFFF             call    006A4EB4
006A7891   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006A7896   8B00                   mov     eax, [eax]
006A7898   8998DC000000           mov     [eax+$00DC], ebx
006A789E   C780D800000068796A00   mov     dword ptr [eax+$00D8], $006A7968
006A78A8   33C0                   xor     eax, eax
006A78AA   5A                     pop     edx
006A78AB   59                     pop     ecx
006A78AC   59                     pop     ecx
006A78AD   648910                 mov     fs:[eax], edx
006A78B0   EB3B                   jmp     006A78ED

* Reference to: System.@HandleOnException;
|
006A78B2   E9F9D2D5FF             jmp     00404BB0
006A78B7   0100                   add     [eax], eax
006A78B9   0000                   add     [eax], al
006A78BB   40                     inc     eax
006A78BC   95                     xchg    eax, ebp
006A78BD   40                     inc     eax
006A78BE   00C3                   add     bl, al
006A78C0   786A                   js      006A792C
006A78C2   0089C36A008B           add     [ecx+$8B006AC3], cl
006A78C8   4B                     dec     ebx
006A78C9   048D                   add     al, -$73
006A78CB   45                     inc     ebp
006A78CC   EC                     in      al, dx

* Possible String Reference to: 'Erro ao executar a rotina!'
|
006A78CD   BA44796A00             mov     edx, $006A7944

* Reference to: System.@LStrCat3;
|
006A78D2   E8D1DED5FF             call    004057A8
006A78D7   8B45EC                 mov     eax, [ebp-$14]
006A78DA   668B0D64796A00         mov     cx, word ptr [$006A7964]
006A78E1   B201                   mov     dl, $01

|
006A78E3   E844C2D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A78E8   E8C3D5D5FF             call    00404EB0

****** END
|
006A78ED   33C0                   xor     eax, eax
006A78EF   5A                     pop     edx
006A78F0   59                     pop     ecx
006A78F1   59                     pop     ecx
006A78F2   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A78F5   6802796A00             push    $006A7902
006A78FA   C3                     ret


* Reference to: System.@HandleFinally;
|
006A78FB   E938D4D5FF             jmp     00404D38
006A7900   EBF8                   jmp     006A78FA

****** END
|
006A7902   33C0                   xor     eax, eax
006A7904   5A                     pop     edx
006A7905   59                     pop     ecx
006A7906   59                     pop     ecx
006A7907   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006A790A   6824796A00             push    $006A7924
006A790F   8D45EC                 lea     eax, [ebp-$14]
006A7912   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A7917   E8A4DBD5FF             call    004054C0
006A791C   C3                     ret


* Reference to: System.@HandleFinally;
|
006A791D   E916D4D5FF             jmp     00404D38
006A7922   EBEB                   jmp     006A790F

****** END
|
006A7924   8A45FF                 mov     al, byte ptr [ebp-$01]
006A7927   5F                     pop     edi
006A7928   5E                     pop     esi
006A7929   5B                     pop     ebx
006A792A   8BE5                   mov     esp, ebp
006A792C   5D                     pop     ebp
006A792D   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A7969(Sender : TObject);
begin
(*
006A7969   8BEC                   mov     ebp, esp
006A796B   51                     push    ecx
006A796C   B906000000             mov     ecx, $00000006
006A7971   6A00                   push    $00
006A7973   6A00                   push    $00
006A7975   49                     dec     ecx
006A7976   75F9                   jnz     006A7971
006A7978   51                     push    ecx
006A7979   874DFC                 xchg    [ebp-$04], ecx
006A797C   53                     push    ebx
006A797D   8BD8                   mov     ebx, eax
006A797F   33C0                   xor     eax, eax
006A7981   55                     push    ebp

* Possible String Reference to: 'é'ÏÕÿëã[‹å]ÃU‹ì3ÉQQQQQSVW‹ú‹Ø3ÀUh(
|                                j'
|
006A7982   680C7E6A00             push    $006A7E0C

***** TRY
|
006A7987   64FF30                 push    dword ptr fs:[eax]
006A798A   648920                 mov     fs:[eax], esp
006A798D   817A0400010000         cmp     dword ptr [edx+$04], $00000100
006A7994   0F854F040000           jnz     006A7DE9
006A799A   A168B67D00             mov     eax, dword ptr [$007DB668]
006A799F   8B00                   mov     eax, [eax]
006A79A1   8B406C                 mov     eax, [eax+$6C]
006A79A4   3B0540ED7D00           cmp     eax, [$007DED40]
006A79AA   0F8539040000           jnz     006A7DE9
006A79B0   8B4208                 mov     eax, [edx+$08]
006A79B3   83F873                 cmp     eax, +$73
006A79B6   0F842D040000           jz      006A7DE9
006A79BC   83F874                 cmp     eax, +$74
006A79BF   0F8424040000           jz      006A7DE9
006A79C5   83F875                 cmp     eax, +$75
006A79C8   0F841B040000           jz      006A7DE9
006A79CE   83F876                 cmp     eax, +$76
006A79D1   0F8412040000           jz      006A7DE9
006A79D7   83F877                 cmp     eax, +$77
006A79DA   0F8409040000           jz      006A7DE9
006A79E0   83F878                 cmp     eax, +$78
006A79E3   0F8400040000           jz      006A7DE9
006A79E9   83F87A                 cmp     eax, +$7A
006A79EC   0F84F7030000           jz      006A7DE9
006A79F2   83F828                 cmp     eax, +$28
006A79F5   0F85BD000000           jnz     006A7AB8
006A79FB   B820030000             mov     eax, $00000320
006A7A00   2B83F0030000           sub     eax, dword ptr [ebx+$03F0]
006A7A06   8945F8                 mov     [ebp-$08], eax
006A7A09   DB45F8                 fild    dword ptr [ebp-$08]

* Reference to field TfrmGerenciador.OFFS_03EC
|
006A7A0C   8B83EC030000           mov     eax, [ebx+$03EC]
006A7A12   83C00A                 add     eax, +$0A
006A7A15   8945F4                 mov     [ebp-$0C], eax
006A7A18   DB45F4                 fild    dword ptr [ebp-$0C]

* Reference to: System.@FSafeDivide;
|
006A7A1B   E8E0BAD5FF             call    00403500

* Reference to: System.@INT;
|
006A7A20   E8DFB3D5FF             call    00402E04
006A7A25   83C4F4                 add     esp, -$0C
006A7A28   DB3C24                 fstp    tbyte ptr [esp]
006A7A2B   9B                     wait
006A7A2C   8D45FC                 lea     eax, [ebp-$04]

|
006A7A2F   E8385AD6FF             call    0040D46C
006A7A34   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006A7A37   E89434D6FF             call    0040AED0
006A7A3C   030544ED7D00           add     eax, [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E8
|
006A7A42   3B83E8030000           cmp     eax, [ebx+$03E8]
006A7A48   0F8F9B030000           jnle    006A7DE9
006A7A4E   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7A53   8983E0030000           mov     [ebx+$03E0], eax
006A7A59   B820030000             mov     eax, $00000320
006A7A5E   2B83F0030000           sub     eax, dword ptr [ebx+$03F0]
006A7A64   8945F8                 mov     [ebp-$08], eax
006A7A67   DB45F8                 fild    dword ptr [ebp-$08]

* Reference to field TfrmGerenciador.OFFS_03EC
|
006A7A6A   8B83EC030000           mov     eax, [ebx+$03EC]
006A7A70   83C00A                 add     eax, +$0A
006A7A73   8945F4                 mov     [ebp-$0C], eax
006A7A76   DB45F4                 fild    dword ptr [ebp-$0C]

* Reference to: System.@FSafeDivide;
|
006A7A79   E882BAD5FF             call    00403500

* Reference to: System.@INT;
|
006A7A7E   E881B3D5FF             call    00402E04
006A7A83   83C4F4                 add     esp, -$0C
006A7A86   DB3C24                 fstp    tbyte ptr [esp]
006A7A89   9B                     wait
006A7A8A   8D45F0                 lea     eax, [ebp-$10]

|
006A7A8D   E8DA59D6FF             call    0040D46C
006A7A92   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006A7A95   E83634D6FF             call    0040AED0
006A7A9A   010544ED7D00           add     [$007DED44], eax

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7AA0   8B8BE0030000           mov     ecx, [ebx+$03E0]
006A7AA6   8B1544ED7D00           mov     edx, [$007DED44]
006A7AAC   8BC3                   mov     eax, ebx

|
006A7AAE   E8CDFBFFFF             call    006A7680
006A7AB3   E931030000             jmp     006A7DE9
006A7AB8   83F826                 cmp     eax, +$26
006A7ABB   0F85BF000000           jnz     006A7B80
006A7AC1   B820030000             mov     eax, $00000320
006A7AC6   2B83F0030000           sub     eax, dword ptr [ebx+$03F0]
006A7ACC   8945F8                 mov     [ebp-$08], eax
006A7ACF   DB45F8                 fild    dword ptr [ebp-$08]

* Reference to field TfrmGerenciador.OFFS_03EC
|
006A7AD2   8B83EC030000           mov     eax, [ebx+$03EC]
006A7AD8   83C00A                 add     eax, +$0A
006A7ADB   8945F4                 mov     [ebp-$0C], eax
006A7ADE   DB45F4                 fild    dword ptr [ebp-$0C]

* Reference to: System.@FSafeDivide;
|
006A7AE1   E81ABAD5FF             call    00403500

* Reference to: System.@INT;
|
006A7AE6   E819B3D5FF             call    00402E04
006A7AEB   83C4F4                 add     esp, -$0C
006A7AEE   DB3C24                 fstp    tbyte ptr [esp]
006A7AF1   9B                     wait
006A7AF2   8D45EC                 lea     eax, [ebp-$14]

|
006A7AF5   E87259D6FF             call    0040D46C
006A7AFA   8B45EC                 mov     eax, [ebp-$14]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006A7AFD   E8CE33D6FF             call    0040AED0
006A7B02   8B1544ED7D00           mov     edx, [$007DED44]
006A7B08   2BD0                   sub     edx, eax

* Reference to field TfrmGerenciador.OFFS_03E4
|
006A7B0A   3B93E4030000           cmp     edx, [ebx+$03E4]
006A7B10   0F8CD3020000           jl      006A7DE9
006A7B16   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7B1B   8983E0030000           mov     [ebx+$03E0], eax
006A7B21   B820030000             mov     eax, $00000320
006A7B26   2B83F0030000           sub     eax, dword ptr [ebx+$03F0]
006A7B2C   8945F8                 mov     [ebp-$08], eax
006A7B2F   DB45F8                 fild    dword ptr [ebp-$08]

* Reference to field TfrmGerenciador.OFFS_03EC
|
006A7B32   8B83EC030000           mov     eax, [ebx+$03EC]
006A7B38   83C00A                 add     eax, +$0A
006A7B3B   8945F4                 mov     [ebp-$0C], eax
006A7B3E   DB45F4                 fild    dword ptr [ebp-$0C]

* Reference to: System.@FSafeDivide;
|
006A7B41   E8BAB9D5FF             call    00403500

* Reference to: System.@INT;
|
006A7B46   E8B9B2D5FF             call    00402E04
006A7B4B   83C4F4                 add     esp, -$0C
006A7B4E   DB3C24                 fstp    tbyte ptr [esp]
006A7B51   9B                     wait
006A7B52   8D45E8                 lea     eax, [ebp-$18]

|
006A7B55   E81259D6FF             call    0040D46C
006A7B5A   8B45E8                 mov     eax, [ebp-$18]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006A7B5D   E86E33D6FF             call    0040AED0
006A7B62   290544ED7D00           sub     dword ptr [$007DED44], eax

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7B68   8B8BE0030000           mov     ecx, [ebx+$03E0]
006A7B6E   8B1544ED7D00           mov     edx, [$007DED44]
006A7B74   8BC3                   mov     eax, ebx

|
006A7B76   E805FBFFFF             call    006A7680
006A7B7B   E969020000             jmp     006A7DE9
006A7B80   83F80D                 cmp     eax, +$0D
006A7B83   0F85D8000000           jnz     006A7C61
006A7B89   A168B67D00             mov     eax, dword ptr [$007DB668]
006A7B8E   8B00                   mov     eax, [eax]
006A7B90   8B4064                 mov     eax, [eax+$64]

* Reference to control TfrmGerenciador.EdMesa : TCurrencyEdit
|
006A7B93   3B83B4030000           cmp     eax, [ebx+$03B4]
006A7B99   0F8592000000           jnz     006A7C31

* Reference to control TfrmGerenciador.EdMesa : TCurrencyEdit
|
006A7B9F   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: AdaptReq.TMultiRecordActionRequestImpl.GetFieldValues(TMultiRecordActionRequestImpl):TActionFieldValuesImpl;
|
006A7BA5   E84E16F8FF             call    006291F8
006A7BAA   3B0544ED7D00           cmp     eax, [$007DED44]
006A7BB0   7514                   jnz     006A7BC6
006A7BB2   8D55E4                 lea     edx, [ebp-$1C]

* Reference to control TfrmGerenciador.EdMesa : TCurrencyEdit
|
006A7BB5   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: ActnMan.TActionListCollection.GetListItem(TActionListCollection;Integer):TActionListItem;
|
006A7BBB   E8F416F8FF             call    006292B4
006A7BC0   837DE400               cmp     dword ptr [ebp-$1C], +$00
006A7BC4   756B                   jnz     006A7C31
006A7BC6   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7BCB   8983E0030000           mov     [ebx+$03E0], eax
006A7BD1   8D55E0                 lea     edx, [ebp-$20]

* Reference to control TfrmGerenciador.EdMesa : TCurrencyEdit
|
006A7BD4   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: ActnMan.TActionListCollection.GetListItem(TActionListCollection;Integer):TActionListItem;
|
006A7BDA   E8D516F8FF             call    006292B4
006A7BDF   837DE000               cmp     dword ptr [ebp-$20], +$00
006A7BE3   7410                   jz      006A7BF5

* Reference to control TfrmGerenciador.EdMesa : TCurrencyEdit
|
006A7BE5   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: AdaptReq.TMultiRecordActionRequestImpl.GetFieldValues(TMultiRecordActionRequestImpl):TActionFieldValuesImpl;
|
006A7BEB   E80816F8FF             call    006291F8

* Reference to GlobalVar_007DED44
|
006A7BF0   A344ED7D00             mov     dword ptr [$007DED44], eax
006A7BF5   33D2                   xor     edx, edx

* Reference to control TfrmGerenciador.EdMesa : TCurrencyEdit
|
006A7BF7   8B83B4030000           mov     eax, [ebx+$03B4]

|
006A7BFD   E83218F8FF             call    00629434

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7C02   8B83E0030000           mov     eax, [ebx+$03E0]
006A7C08   3B0544ED7D00           cmp     eax, [$007DED44]
006A7C0E   740F                   jz      006A7C1F
006A7C10   8BC8                   mov     ecx, eax
006A7C12   8B1544ED7D00           mov     edx, [$007DED44]
006A7C18   8BC3                   mov     eax, ebx

|
006A7C1A   E861FAFFFF             call    006A7680
006A7C1F   8B1544ED7D00           mov     edx, [$007DED44]
006A7C25   8BC3                   mov     eax, ebx

|
006A7C27   E8D8FBFFFF             call    006A7804
006A7C2C   E9B8010000             jmp     006A7DE9
006A7C31   833D44ED7D0000         cmp     dword ptr [$007DED44], +$00
006A7C38   0F8EAB010000           jle     006A7DE9
006A7C3E   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E8
|
006A7C43   3B83E8030000           cmp     eax, [ebx+$03E8]
006A7C49   0F8F9A010000           jnle    006A7DE9
006A7C4F   8B1544ED7D00           mov     edx, [$007DED44]
006A7C55   8BC3                   mov     eax, ebx

|
006A7C57   E8A8FBFFFF             call    006A7804
006A7C5C   E988010000             jmp     006A7DE9
006A7C61   83F825                 cmp     eax, +$25
006A7C64   753A                   jnz     006A7CA0
006A7C66   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E4
|
006A7C6B   3B83E4030000           cmp     eax, [ebx+$03E4]
006A7C71   0F8E72010000           jle     006A7DE9
006A7C77   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7C7C   8983E0030000           mov     [ebx+$03E0], eax
006A7C82   FF0D44ED7D00           dec     dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7C88   8B8BE0030000           mov     ecx, [ebx+$03E0]
006A7C8E   8B1544ED7D00           mov     edx, [$007DED44]
006A7C94   8BC3                   mov     eax, ebx

|
006A7C96   E8E5F9FFFF             call    006A7680
006A7C9B   E949010000             jmp     006A7DE9
006A7CA0   83F827                 cmp     eax, +$27
006A7CA3   753A                   jnz     006A7CDF
006A7CA5   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E8
|
006A7CAA   3B83E8030000           cmp     eax, [ebx+$03E8]
006A7CB0   0F8D33010000           jnl     006A7DE9
006A7CB6   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7CBB   8983E0030000           mov     [ebx+$03E0], eax
006A7CC1   FF0544ED7D00           inc     dword ptr [$007DED44]

* Reference to field TfrmGerenciador.OFFS_03E0
|
006A7CC7   8B8BE0030000           mov     ecx, [ebx+$03E0]
006A7CCD   8B1544ED7D00           mov     edx, [$007DED44]
006A7CD3   8BC3                   mov     eax, ebx

|
006A7CD5   E8A6F9FFFF             call    006A7680
006A7CDA   E90A010000             jmp     006A7DE9
006A7CDF   83F84D                 cmp     eax, +$4D
006A7CE2   752D                   jnz     006A7D11
006A7CE4   8D55DC                 lea     edx, [ebp-$24]
006A7CE7   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7CEC   E87330D6FF             call    0040AD64
006A7CF1   8B55DC                 mov     edx, [ebp-$24]

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A7CF4   8D83DC030000           lea     eax, [ebx+$03DC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A7CFA   E8F1D7D5FF             call    004054F0
006A7CFF   8B1544ED7D00           mov     edx, [$007DED44]
006A7D05   8BC3                   mov     eax, ebx

* Reference to : TfrmGerenciador._PROC_006A7E18()
|
006A7D07   E80C010000             call    006A7E18
006A7D0C   E9D8000000             jmp     006A7DE9
006A7D11   83F846                 cmp     eax, +$46
006A7D14   7529                   jnz     006A7D3F
006A7D16   8D55D8                 lea     edx, [ebp-$28]
006A7D19   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7D1E   E84130D6FF             call    0040AD64
006A7D23   8B55D8                 mov     edx, [ebp-$28]

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A7D26   8D83DC030000           lea     eax, [ebx+$03DC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A7D2C   E8BFD7D5FF             call    004054F0
006A7D31   8BD3                   mov     edx, ebx
006A7D33   8BC3                   mov     eax, ebx

* Reference to : TfrmGerenciador.mnuFechamentoClick()
|
006A7D35   E8DAE8FFFF             call    006A6614
006A7D3A   E9AA000000             jmp     006A7DE9
006A7D3F   83F849                 cmp     eax, +$49
006A7D42   7526                   jnz     006A7D6A
006A7D44   8D55D4                 lea     edx, [ebp-$2C]
006A7D47   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7D4C   E81330D6FF             call    0040AD64
006A7D51   8B55D4                 mov     edx, [ebp-$2C]

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A7D54   8D83DC030000           lea     eax, [ebx+$03DC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A7D5A   E891D7D5FF             call    004054F0
006A7D5F   8BD3                   mov     edx, ebx
006A7D61   8BC3                   mov     eax, ebx

* Reference to : TfrmGerenciador.mnuInserirItemClick()
|
006A7D63   E83CE8FFFF             call    006A65A4
006A7D68   EB7F                   jmp     006A7DE9
006A7D6A   83F854                 cmp     eax, +$54
006A7D6D   7526                   jnz     006A7D95
006A7D6F   8D55D0                 lea     edx, [ebp-$30]
006A7D72   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7D77   E8E82FD6FF             call    0040AD64
006A7D7C   8B55D0                 mov     edx, [ebp-$30]

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A7D7F   8D83DC030000           lea     eax, [ebx+$03DC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A7D85   E866D7D5FF             call    004054F0
006A7D8A   8BD3                   mov     edx, ebx
006A7D8C   8BC3                   mov     eax, ebx

* Reference to : TfrmGerenciador.TransferirItensClick()
|
006A7D8E   E8CDF7FFFF             call    006A7560
006A7D93   EB54                   jmp     006A7DE9
006A7D95   83F843                 cmp     eax, +$43
006A7D98   7526                   jnz     006A7DC0
006A7D9A   8D55CC                 lea     edx, [ebp-$34]
006A7D9D   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7DA2   E8BD2FD6FF             call    0040AD64
006A7DA7   8B55CC                 mov     edx, [ebp-$34]

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A7DAA   8D83DC030000           lea     eax, [ebx+$03DC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A7DB0   E83BD7D5FF             call    004054F0
006A7DB5   8BD3                   mov     edx, ebx
006A7DB7   8BC3                   mov     eax, ebx

* Reference to : TfrmGerenciador.mnuCancelarItemClick()
|
006A7DB9   E8F2E7FFFF             call    006A65B0
006A7DBE   EB29                   jmp     006A7DE9
006A7DC0   83F84E                 cmp     eax, +$4E
006A7DC3   7524                   jnz     006A7DE9
006A7DC5   8D55C8                 lea     edx, [ebp-$38]
006A7DC8   A144ED7D00             mov     eax, dword ptr [$007DED44]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7DCD   E8922FD6FF             call    0040AD64
006A7DD2   8B55C8                 mov     edx, [ebp-$38]

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A7DD5   8D83DC030000           lea     eax, [ebx+$03DC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A7DDB   E810D7D5FF             call    004054F0
006A7DE0   8BD3                   mov     edx, ebx
006A7DE2   8BC3                   mov     eax, ebx

* Reference to : TfrmGerenciador.mCancelaMesaClick()
|
006A7DE4   E847F3FFFF             call    006A7130
006A7DE9   33C0                   xor     eax, eax
006A7DEB   5A                     pop     edx
006A7DEC   59                     pop     ecx
006A7DED   59                     pop     ecx
006A7DEE   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[‹å]ÃU‹ì3ÉQQQQQSVW‹ú‹Ø3ÀUh(j'
|
006A7DF1   68137E6A00             push    $006A7E13
006A7DF6   8D45C8                 lea     eax, [ebp-$38]
006A7DF9   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A7DFE   E8BDD6D5FF             call    004054C0
006A7E03   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006A7E06   E891D6D5FF             call    0040549C
006A7E0B   C3                     ret


* Reference to: System.@HandleFinally;
|
006A7E0C   E927CFD5FF             jmp     00404D38
006A7E11   EBE3                   jmp     006A7DF6

****** END
|
006A7E13   5B                     pop     ebx
006A7E14   8BE5                   mov     esp, ebp
006A7E16   5D                     pop     ebp
006A7E17   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A7E18(Sender : TObject);
begin
(*
006A7E18   55                     push    ebp
006A7E19   8BEC                   mov     ebp, esp
006A7E1B   33C9                   xor     ecx, ecx
006A7E1D   51                     push    ecx
006A7E1E   51                     push    ecx
006A7E1F   51                     push    ecx
006A7E20   51                     push    ecx
006A7E21   51                     push    ecx
006A7E22   53                     push    ebx
006A7E23   56                     push    esi
006A7E24   57                     push    edi
006A7E25   8BFA                   mov     edi, edx
006A7E27   8BD8                   mov     ebx, eax
006A7E29   33C0                   xor     eax, eax
006A7E2B   55                     push    ebp
006A7E2C   68287F6A00             push    $006A7F28

***** TRY
|
006A7E31   64FF30                 push    dword ptr fs:[eax]
006A7E34   648920                 mov     fs:[eax], esp
006A7E37   C645FF00               mov     byte ptr [ebp-$01], $00
006A7E3B   33C0                   xor     eax, eax
006A7E3D   55                     push    ebp
006A7E3E   68067F6A00             push    $006A7F06

***** TRY
|
006A7E43   64FF30                 push    dword ptr fs:[eax]
006A7E46   648920                 mov     fs:[eax], esp
006A7E49   33C0                   xor     eax, eax
006A7E4B   55                     push    ebp
006A7E4C   68BD7E6A00             push    $006A7EBD

***** TRY
|
006A7E51   64FF30                 push    dword ptr fs:[eax]
006A7E54   648920                 mov     fs:[eax], esp
006A7E57   8D55F4                 lea     edx, [ebp-$0C]
006A7E5A   8BC7                   mov     eax, edi

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7E5C   E8032FD6FF             call    0040AD64
006A7E61   8B4DF4                 mov     ecx, [ebp-$0C]
006A7E64   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'pn'
|
006A7E67   BA447F6A00             mov     edx, $006A7F44

* Reference to: System.@LStrCat3;
|
006A7E6C   E837D9D5FF             call    004057A8
006A7E71   8B55F8                 mov     edx, [ebp-$08]
006A7E74   8BC3                   mov     eax, ebx

* Reference to: Classes.TComponent.FindComponent(TComponent;AnsiString):TComponent;
|
006A7E76   E84D63D8FF             call    0042E1C8
006A7E7B   8BF0                   mov     esi, eax
006A7E7D   85F6                   test    esi, esi
006A7E7F   7432                   jz      006A7EB3
006A7E81   8D55F0                 lea     edx, [ebp-$10]
006A7E84   8BC7                   mov     eax, edi

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A7E86   E8D92ED6FF             call    0040AD64
006A7E8B   8B55F0                 mov     edx, [ebp-$10]

* Reference to field TfrmGerenciador.OFFS_03DC : String
|
006A7E8E   8D83DC030000           lea     eax, [ebx+$03DC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A7E94   E857D6D5FF             call    004054F0

* Reference to control TfrmGerenciador.baGeren : TToolBar
|
006A7E99   8B8330030000           mov     eax, [ebx+$0330]

* Reference to field TToolBar.OFFS_004C
|
006A7E9F   8B484C                 mov     ecx, [eax+$4C]
006A7EA2   034E44                 add     ecx, [esi+$44]

* Reference to field TfrmGerenciador.Left : Integer
|
006A7EA5   8B5640                 mov     edx, [esi+$40]

* Reference to control lbTitulo : N.A.
|
006A7EA8   8B83F8020000           mov     eax, [ebx+$02F8]
006A7EAE   8B18                   mov     ebx, [eax]

* Possible reference to virtual method TN.A..OFFS_40
|
006A7EB0   FF5340                 call    dword ptr [ebx+$40]
006A7EB3   33C0                   xor     eax, eax
006A7EB5   5A                     pop     edx
006A7EB6   59                     pop     ecx
006A7EB7   59                     pop     ecx
006A7EB8   648910                 mov     fs:[eax], edx
006A7EBB   EB3B                   jmp     006A7EF8

* Reference to: System.@HandleOnException;
|
006A7EBD   E9EECCD5FF             jmp     00404BB0
006A7EC2   0100                   add     [eax], eax
006A7EC4   0000                   add     [eax], al
006A7EC6   40                     inc     eax
006A7EC7   95                     xchg    eax, ebp
006A7EC8   40                     inc     eax
006A7EC9   00CE                   add     dh, cl
006A7ECB   7E6A                   jle     006A7F37
006A7ECD   0089C36A008B           add     [ecx+$8B006AC3], cl
006A7ED3   4B                     dec     ebx
006A7ED4   048D                   add     al, -$73
006A7ED6   45                     inc     ebp
006A7ED7   EC                     in      al, dx

* Possible String Reference to: 'Erro ao executar a rotina!'
|
006A7ED8   BA507F6A00             mov     edx, $006A7F50

* Reference to: System.@LStrCat3;
|
006A7EDD   E8C6D8D5FF             call    004057A8
006A7EE2   8B45EC                 mov     eax, [ebp-$14]
006A7EE5   668B0D707F6A00         mov     cx, word ptr [$006A7F70]
006A7EEC   B201                   mov     dl, $01

|
006A7EEE   E839BCD9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A7EF3   E8B8CFD5FF             call    00404EB0

****** END
|
006A7EF8   33C0                   xor     eax, eax
006A7EFA   5A                     pop     edx
006A7EFB   59                     pop     ecx
006A7EFC   59                     pop     ecx
006A7EFD   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A7F00   680D7F6A00             push    $006A7F0D
006A7F05   C3                     ret


* Reference to: System.@HandleFinally;
|
006A7F06   E92DCED5FF             jmp     00404D38
006A7F0B   EBF8                   jmp     006A7F05

****** END
|
006A7F0D   33C0                   xor     eax, eax
006A7F0F   5A                     pop     edx
006A7F10   59                     pop     ecx
006A7F11   59                     pop     ecx
006A7F12   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006A7F15   682F7F6A00             push    $006A7F2F
006A7F1A   8D45EC                 lea     eax, [ebp-$14]
006A7F1D   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A7F22   E899D5D5FF             call    004054C0
006A7F27   C3                     ret


* Reference to: System.@HandleFinally;
|
006A7F28   E90BCED5FF             jmp     00404D38
006A7F2D   EBEB                   jmp     006A7F1A

****** END
|
006A7F2F   8A45FF                 mov     al, byte ptr [ebp-$01]
006A7F32   5F                     pop     edi
006A7F33   5E                     pop     esi
006A7F34   5B                     pop     ebx
006A7F35   8BE5                   mov     esp, ebp
006A7F37   5D                     pop     ebp
006A7F38   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A805A(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A805A   E9D9CCD5FF             jmp     00404D38

|
006A805F   EBF0                   jmp     006A8051
006A8061   5F                     pop     edi
006A8062   5E                     pop     esi
006A8063   5B                     pop     ebx
006A8064   8BE5                   mov     esp, ebp
006A8066   5D                     pop     ebp
006A8067   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A8118(Sender : TObject);
begin
(*
006A8118   55                     push    ebp
006A8119   8BEC                   mov     ebp, esp
006A811B   33C0                   xor     eax, eax
006A811D   55                     push    ebp

* Possible String Reference to: 'éöËÕÿëø]Ã‹Àƒ-Hí}'
|
006A811E   683D816A00             push    $006A813D

***** TRY
|
006A8123   64FF30                 push    dword ptr fs:[eax]
006A8126   648920                 mov     fs:[eax], esp
006A8129   FF0548ED7D00           inc     dword ptr [$007DED48]
006A812F   33C0                   xor     eax, eax
006A8131   5A                     pop     edx
006A8132   59                     pop     ecx
006A8133   59                     pop     ecx
006A8134   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-Hí}'
|
006A8137   6844816A00             push    $006A8144
006A813C   C3                     ret


* Reference to: System.@HandleFinally;
|
006A813D   E9F6CBD5FF             jmp     00404D38
006A8142   EBF8                   jmp     006A813C

****** END
|
006A8144   5D                     pop     ebp
006A8145   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A8148(Sender : TObject);
begin
(*
006A8148   832D48ED7D0001         sub     dword ptr [$007DED48], +$01
006A814F   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A81A1(Sender : TObject);
begin
(*
006A81A1   8BEC                   mov     ebp, esp
006A81A3   53                     push    ebx
006A81A4   B301                   mov     bl, $01
006A81A6   A14CED7D00             mov     eax, dword ptr [$007DED4C]

* Reference to: System.@LStrLen(String):Integer;
|
006A81AB   E844E8D5FF             call    004069F4
006A81B0   40                     inc     eax
006A81B1   50                     push    eax
006A81B2   B84CED7D00             mov     eax, $007DED4C
006A81B7   B901000000             mov     ecx, $00000001

* Reference to class mp20ci
|
006A81BC   8B1580816A00           mov     edx, [$006A8180]

* Reference to: System.@DynArraySetLength;
|
006A81C2   E8E9E9D5FF             call    00406BB0
006A81C7   83C404                 add     esp, +$04
006A81CA   8BC3                   mov     eax, ebx
006A81CC   5B                     pop     ebx
006A81CD   5D                     pop     ebp
006A81CE   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A81D0(Sender : TObject);
begin
(*
006A81D0   55                     push    ebp
006A81D1   8BEC                   mov     ebp, esp
006A81D3   A14CED7D00             mov     eax, dword ptr [$007DED4C]

* Reference to: System.@DynArrayHigh;
|
006A81D8   E81FE8D5FF             call    004069FC
006A81DD   5D                     pop     ebp
006A81DE   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A81E0(Sender : TObject);
begin
(*
006A81E0   55                     push    ebp
006A81E1   8BEC                   mov     ebp, esp

|
006A81E3   E8B8FFFFFF             call    006A81A0

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A81E8   E8E3FFFFFF             call    006A81D0
006A81ED   8D0440                 lea     eax, [eax+eax*2]
006A81F0   8B154CED7D00           mov     edx, [$007DED4C]
006A81F6   8D448204               lea     eax, [edx+eax*4+$04]

* Reference to: System.@LStrClr(void;void);
|
006A81FA   E89DD2D5FF             call    0040549C
006A81FF   B001                   mov     al, $01
006A8201   5D                     pop     ebp
006A8202   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A8204(Sender : TObject);
begin
(*
006A8204   55                     push    ebp
006A8205   8BEC                   mov     ebp, esp
006A8207   53                     push    ebx
006A8208   8BD8                   mov     ebx, eax
006A820A   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006A820C   E88BD2D5FF             call    0040549C
006A8211   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8216   8B00                   mov     eax, [eax]
006A8218   8B407C                 mov     eax, [eax+$7C]
006A821B   8B10                   mov     edx, [eax]
006A821D   FF5258                 call    dword ptr [edx+$58]
006A8220   85C0                   test    eax, eax
006A8222   7E23                   jle     006A8247

* Possible String Reference to: 'esquerda'
|
006A8224   6854826A00             push    $006A8254
006A8229   53                     push    ebx
006A822A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A822F   8B00                   mov     eax, [eax]
006A8231   8B407C                 mov     eax, [eax+$7C]
006A8234   8B10                   mov     edx, [eax]
006A8236   FF5258                 call    dword ptr [edx+$58]
006A8239   8BC8                   mov     ecx, eax
006A823B   33D2                   xor     edx, edx
006A823D   B868826A00             mov     eax, $006A8268

|
006A8242   E881A40F00             call    007A26C8
006A8247   5B                     pop     ebx
006A8248   5D                     pop     ebp
006A8249   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A826D(Sender : TObject);
begin
(*
006A826D   8BEC                   mov     ebp, esp
006A826F   6A00                   push    $00
006A8271   6A00                   push    $00
006A8273   6A00                   push    $00
006A8275   53                     push    ebx
006A8276   56                     push    esi
006A8277   8BF1                   mov     esi, ecx
006A8279   8955FC                 mov     [ebp-$04], edx
006A827C   8BD8                   mov     ebx, eax
006A827E   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A8281   E8C6D6D5FF             call    0040594C
006A8286   33C0                   xor     eax, eax
006A8288   55                     push    ebp
006A8289   681F836A00             push    $006A831F

***** TRY
|
006A828E   64FF30                 push    dword ptr fs:[eax]
006A8291   648920                 mov     fs:[eax], esp
006A8294   8BC6                   mov     eax, esi

* Reference to: System.@LStrClr(void;void);
|
006A8296   E801D2D5FF             call    0040549C

|
006A829B   E800FFFFFF             call    006A81A0

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A82A0   E82BFFFFFF             call    006A81D0
006A82A5   8D0440                 lea     eax, [eax+eax*2]
006A82A8   8B154CED7D00           mov     edx, [$007DED4C]
006A82AE   891C82                 mov     [edx+eax*4], ebx

* Possible String Reference to: 'esquerda'
|
006A82B1   6834836A00             push    $006A8334
006A82B6   8D45F8                 lea     eax, [ebp-$08]
006A82B9   50                     push    eax
006A82BA   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A82BF   8B00                   mov     eax, [eax]
006A82C1   8B8098000000           mov     eax, [eax+$0098]
006A82C7   8B10                   mov     edx, [eax]
006A82C9   FF5258                 call    dword ptr [edx+$58]
006A82CC   8BC8                   mov     ecx, eax
006A82CE   8B55FC                 mov     edx, [ebp-$04]
006A82D1   B848836A00             mov     eax, $006A8348

|
006A82D6   E8EDA30F00             call    007A26C8
006A82DB   8B45F8                 mov     eax, [ebp-$08]
006A82DE   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A82DF   E8ECFEFFFF             call    006A81D0
006A82E4   8D0440                 lea     eax, [eax+eax*2]
006A82E7   8B154CED7D00           mov     edx, [$007DED4C]
006A82ED   8D448204               lea     eax, [edx+eax*4+$04]
006A82F1   50                     push    eax
006A82F2   8D45F4                 lea     eax, [ebp-$0C]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
006A82F5   E80AFFFFFF             call    006A8204
006A82FA   8B55F4                 mov     edx, [ebp-$0C]
006A82FD   58                     pop     eax
006A82FE   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006A82FF   E8A4D4D5FF             call    004057A8
006A8304   33C0                   xor     eax, eax
006A8306   5A                     pop     edx
006A8307   59                     pop     ecx
006A8308   59                     pop     ecx
006A8309   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A830C   6826836A00             push    $006A8326
006A8311   8D45F4                 lea     eax, [ebp-$0C]
006A8314   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A8319   E8A2D1D5FF             call    004054C0
006A831E   C3                     ret


* Reference to: System.@HandleFinally;
|
006A831F   E914CAD5FF             jmp     00404D38
006A8324   EBEB                   jmp     006A8311

****** END
|
006A8326   5E                     pop     esi
006A8327   5B                     pop     ebx
006A8328   8BE5                   mov     esp, ebp
006A832A   5D                     pop     ebp
006A832B   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A834D(Sender : TObject);
begin
(*
006A834D   8BEC                   mov     ebp, esp
006A834F   51                     push    ecx
006A8350   B90A000000             mov     ecx, $0000000A
006A8355   6A00                   push    $00
006A8357   6A00                   push    $00
006A8359   49                     dec     ecx
006A835A   75F9                   jnz     006A8355
006A835C   874DFC                 xchg    [ebp-$04], ecx
006A835F   53                     push    ebx
006A8360   56                     push    esi
006A8361   57                     push    edi
006A8362   894DF8                 mov     [ebp-$08], ecx
006A8365   8955FC                 mov     [ebp-$04], edx
006A8368   8BD8                   mov     ebx, eax
006A836A   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A836D   E8DAD5D5FF             call    0040594C
006A8372   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A8375   E8D2D5D5FF             call    0040594C
006A837A   8B4518                 mov     eax, [ebp+$18]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A837D   E8CAD5D5FF             call    0040594C
006A8382   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A8385   E8C2D5D5FF             call    0040594C
006A838A   8B4510                 mov     eax, [ebp+$10]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A838D   E8BAD5D5FF             call    0040594C
006A8392   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A8395   E8B2D5D5FF             call    0040594C
006A839A   8B357CB37D00           mov     esi, [$007DB37C]
006A83A0   33C0                   xor     eax, eax
006A83A2   55                     push    ebp
006A83A3   68C7856A00             push    $006A85C7

***** TRY
|
006A83A8   64FF30                 push    dword ptr fs:[eax]
006A83AB   648920                 mov     fs:[eax], esp
006A83AE   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
006A83B1   E8E6D0D5FF             call    0040549C
006A83B6   33C0                   xor     eax, eax
006A83B8   55                     push    ebp
006A83B9   6865856A00             push    $006A8565

***** TRY
|
006A83BE   64FF30                 push    dword ptr fs:[eax]
006A83C1   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'esquerda'
|
006A83C4   68E0856A00             push    $006A85E0
006A83C9   8D45F4                 lea     eax, [ebp-$0C]
006A83CC   50                     push    eax
006A83CD   8B06                   mov     eax, [esi]
006A83CF   8B8084000000           mov     eax, [eax+$0084]
006A83D5   8B10                   mov     edx, [eax]
006A83D7   FF5258                 call    dword ptr [edx+$58]
006A83DA   8BC8                   mov     ecx, eax
006A83DC   8B55FC                 mov     edx, [ebp-$04]
006A83DF   B8F4856A00             mov     eax, $006A85F4

|
006A83E4   E8DFA20F00             call    007A26C8
006A83E9   8B55F4                 mov     edx, [ebp-$0C]
006A83EC   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A83EF   E840D1D5FF             call    00405534
006A83F4   8D45E4                 lea     eax, [ebp-$1C]
006A83F7   50                     push    eax

* Possible String Reference to: 'direita'
|
006A83F8   6800866A00             push    $006A8600
006A83FD   8D45D0                 lea     eax, [ebp-$30]
006A8400   50                     push    eax
006A8401   8B06                   mov     eax, [esi]
006A8403   8B8080000000           mov     eax, [eax+$0080]
006A8409   8B10                   mov     edx, [eax]
006A840B   FF5258                 call    dword ptr [edx+$58]
006A840E   8BC8                   mov     ecx, eax
006A8410   8B55F8                 mov     edx, [ebp-$08]
006A8413   B8F4856A00             mov     eax, $006A85F4

|
006A8418   E8ABA20F00             call    007A26C8
006A841D   8B55D0                 mov     edx, [ebp-$30]
006A8420   8D45D4                 lea     eax, [ebp-$2C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006A8423   E89C08D7FF             call    00418CC4
006A8428   8D45D4                 lea     eax, [ebp-$2C]
006A842B   50                     push    eax
006A842C   8D45C0                 lea     eax, [ebp-$40]
006A842F   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006A8431   E88E08D7FF             call    00418CC4
006A8436   8D4DC0                 lea     ecx, [ebp-$40]
006A8439   33C0                   xor     eax, eax
006A843B   5A                     pop     edx

|
006A843C   E82B7F0F00             call    007A036C
006A8441   8D55E4                 lea     edx, [ebp-$1C]
006A8444   8D45F8                 lea     eax, [ebp-$08]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
006A8447   E8ACF7D6FF             call    00417BF8

* Possible String Reference to: 'direita'
|
006A844C   6800866A00             push    $006A8600
006A8451   8D45BC                 lea     eax, [ebp-$44]
006A8454   50                     push    eax
006A8455   8B06                   mov     eax, [esi]
006A8457   8B808C000000           mov     eax, [eax+$008C]
006A845D   8B10                   mov     edx, [eax]
006A845F   FF5258                 call    dword ptr [edx+$58]
006A8462   8BC8                   mov     ecx, eax
006A8464   8B5518                 mov     edx, [ebp+$18]
006A8467   B8F4856A00             mov     eax, $006A85F4

|
006A846C   E857A20F00             call    007A26C8
006A8471   8B55BC                 mov     edx, [ebp-$44]
006A8474   8D4518                 lea     eax, [ebp+$18]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A8477   E8B8D0D5FF             call    00405534

* Possible String Reference to: 'direita'
|
006A847C   6800866A00             push    $006A8600
006A8481   8D45B8                 lea     eax, [ebp-$48]
006A8484   50                     push    eax
006A8485   8B06                   mov     eax, [esi]
006A8487   8B8088000000           mov     eax, [eax+$0088]
006A848D   8B10                   mov     edx, [eax]
006A848F   FF5258                 call    dword ptr [edx+$58]
006A8492   8BC8                   mov     ecx, eax
006A8494   8B5514                 mov     edx, [ebp+$14]
006A8497   B8F4856A00             mov     eax, $006A85F4

|
006A849C   E827A20F00             call    007A26C8
006A84A1   8B55B8                 mov     edx, [ebp-$48]
006A84A4   8D4514                 lea     eax, [ebp+$14]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A84A7   E888D0D5FF             call    00405534

* Possible String Reference to: 'direita'
|
006A84AC   6800866A00             push    $006A8600
006A84B1   8D45B4                 lea     eax, [ebp-$4C]
006A84B4   50                     push    eax
006A84B5   8B06                   mov     eax, [esi]
006A84B7   8B8090000000           mov     eax, [eax+$0090]
006A84BD   8B10                   mov     edx, [eax]
006A84BF   FF5258                 call    dword ptr [edx+$58]
006A84C2   8BC8                   mov     ecx, eax
006A84C4   8B5510                 mov     edx, [ebp+$10]
006A84C7   B8F4856A00             mov     eax, $006A85F4

|
006A84CC   E8F7A10F00             call    007A26C8
006A84D1   8B55B4                 mov     edx, [ebp-$4C]
006A84D4   8D4510                 lea     eax, [ebp+$10]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A84D7   E858D0D5FF             call    00405534

* Possible String Reference to: 'direita'
|
006A84DC   6800866A00             push    $006A8600
006A84E1   8D45B0                 lea     eax, [ebp-$50]
006A84E4   50                     push    eax
006A84E5   8B06                   mov     eax, [esi]
006A84E7   8B8094000000           mov     eax, [eax+$0094]
006A84ED   8B10                   mov     edx, [eax]
006A84EF   FF5258                 call    dword ptr [edx+$58]
006A84F2   8BC8                   mov     ecx, eax
006A84F4   8B550C                 mov     edx, [ebp+$0C]
006A84F7   B8F4856A00             mov     eax, $006A85F4

|
006A84FC   E8C7A10F00             call    007A26C8
006A8501   8B55B0                 mov     edx, [ebp-$50]
006A8504   8D450C                 lea     eax, [ebp+$0C]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A8507   E828D0D5FF             call    00405534

|
006A850C   E88FFCFFFF             call    006A81A0

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A8511   E8BAFCFFFF             call    006A81D0
006A8516   8D0440                 lea     eax, [eax+eax*2]
006A8519   8B154CED7D00           mov     edx, [$007DED4C]
006A851F   891C82                 mov     [edx+eax*4], ebx
006A8522   8D45AC                 lea     eax, [ebp-$54]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
006A8525   E8DAFCFFFF             call    006A8204
006A852A   FF75AC                 push    dword ptr [ebp-$54]
006A852D   FF75FC                 push    dword ptr [ebp-$04]
006A8530   FF75F8                 push    dword ptr [ebp-$08]
006A8533   FF7518                 push    dword ptr [ebp+$18]
006A8536   FF7514                 push    dword ptr [ebp+$14]
006A8539   FF7510                 push    dword ptr [ebp+$10]
006A853C   FF750C                 push    dword ptr [ebp+$0C]

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A853F   E88CFCFFFF             call    006A81D0
006A8544   8D0440                 lea     eax, [eax+eax*2]
006A8547   8B154CED7D00           mov     edx, [$007DED4C]
006A854D   8D448204               lea     eax, [edx+eax*4+$04]
006A8551   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrCatN;
|
006A8556   E8C1D2D5FF             call    0040581C
006A855B   33C0                   xor     eax, eax
006A855D   5A                     pop     edx
006A855E   59                     pop     ecx
006A855F   59                     pop     ecx
006A8560   648910                 mov     fs:[eax], edx
006A8563   EB0A                   jmp     006A856F

* Reference to: System.@HandleAnyException;
|
006A8565   E91AC5D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006A856A   E841C9D5FF             call    00404EB0

****** END
|
006A856F   33C0                   xor     eax, eax
006A8571   5A                     pop     edx
006A8572   59                     pop     ecx
006A8573   59                     pop     ecx
006A8574   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A8577   68CE856A00             push    $006A85CE
006A857C   8D45AC                 lea     eax, [ebp-$54]
006A857F   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A8584   E837CFD5FF             call    004054C0
006A8589   8D45C0                 lea     eax, [ebp-$40]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006A858C   E8E7BFD6FF             call    00414578
006A8591   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
006A8594   E803CFD5FF             call    0040549C
006A8599   8D45D4                 lea     eax, [ebp-$2C]

* Reference to object Variant
|
006A859C   8B1524114000           mov     edx, [$00401124]
006A85A2   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006A85A7   E8F0DAD5FF             call    0040609C
006A85AC   8D45F4                 lea     eax, [ebp-$0C]
006A85AF   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A85B4   E807CFD5FF             call    004054C0
006A85B9   8D450C                 lea     eax, [ebp+$0C]
006A85BC   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A85C1   E8FACED5FF             call    004054C0
006A85C6   C3                     ret


* Reference to: System.@HandleFinally;
|
006A85C7   E96CC7D5FF             jmp     00404D38
006A85CC   EBAE                   jmp     006A857C

****** END
|
006A85CE   5F                     pop     edi
006A85CF   5E                     pop     esi
006A85D0   5B                     pop     ebx
006A85D1   8BE5                   mov     esp, ebp
006A85D3   5D                     pop     ebp
006A85D4   C21400                 ret     $0014

*)
end;

procedure TfrmGerenciador._PROC_006A8609(Sender : TObject);
begin
(*
006A8609   8BEC                   mov     ebp, esp
006A860B   51                     push    ecx
006A860C   B90A000000             mov     ecx, $0000000A
006A8611   6A00                   push    $00
006A8613   6A00                   push    $00
006A8615   49                     dec     ecx
006A8616   75F9                   jnz     006A8611
006A8618   51                     push    ecx
006A8619   874DFC                 xchg    [ebp-$04], ecx
006A861C   53                     push    ebx
006A861D   56                     push    esi
006A861E   57                     push    edi
006A861F   894DF8                 mov     [ebp-$08], ecx
006A8622   8955FC                 mov     [ebp-$04], edx
006A8625   8BD8                   mov     ebx, eax
006A8627   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A862A   E81DD3D5FF             call    0040594C
006A862F   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006A8632   E815D3D5FF             call    0040594C
006A8637   33C0                   xor     eax, eax
006A8639   55                     push    ebp
006A863A   68B7876A00             push    $006A87B7

***** TRY
|
006A863F   64FF30                 push    dword ptr fs:[eax]
006A8642   648920                 mov     fs:[eax], esp
006A8645   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006A8648   E84FCED5FF             call    0040549C
006A864D   33C0                   xor     eax, eax
006A864F   55                     push    ebp
006A8650   6872876A00             push    $006A8772

***** TRY
|
006A8655   64FF30                 push    dword ptr fs:[eax]
006A8658   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'esquerda'
|
006A865B   68D0876A00             push    $006A87D0
006A8660   8D45F0                 lea     eax, [ebp-$10]
006A8663   50                     push    eax
006A8664   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8669   8B00                   mov     eax, [eax]
006A866B   8B809C000000           mov     eax, [eax+$009C]
006A8671   8B10                   mov     edx, [eax]
006A8673   FF5258                 call    dword ptr [edx+$58]
006A8676   8BD0                   mov     edx, eax
006A8678   8D45E0                 lea     eax, [ebp-$20]
006A867B   B1FC                   mov     cl, $FC

|
006A867D   E8EE03D7FF             call    00418A70
006A8682   8D45E0                 lea     eax, [ebp-$20]
006A8685   50                     push    eax
006A8686   8D45D0                 lea     eax, [ebp-$30]
006A8689   50                     push    eax
006A868A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A868F   8B00                   mov     eax, [eax]
006A8691   8B8080000000           mov     eax, [eax+$0080]
006A8697   8B10                   mov     edx, [eax]
006A8699   FF5258                 call    dword ptr [edx+$58]
006A869C   8BD0                   mov     edx, eax
006A869E   8D45C0                 lea     eax, [ebp-$40]
006A86A1   B1FC                   mov     cl, $FC

|
006A86A3   E8C803D7FF             call    00418A70
006A86A8   8D45C0                 lea     eax, [ebp-$40]
006A86AB   50                     push    eax
006A86AC   8D45B0                 lea     eax, [ebp-$50]
006A86AF   33D2                   xor     edx, edx
006A86B1   B101                   mov     cl, $01

|
006A86B3   E8B803D7FF             call    00418A70
006A86B8   8D4DB0                 lea     ecx, [ebp-$50]
006A86BB   33C0                   xor     eax, eax
006A86BD   5A                     pop     edx

|
006A86BE   E8A97C0F00             call    007A036C
006A86C3   8D55D0                 lea     edx, [ebp-$30]
006A86C6   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
006A86C7   E8D849D7FF             call    0041D0A4
006A86CC   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarToInteger(TVarData;TVarData):Integer;
|
006A86CF   E8C4CBD6FF             call    00415298
006A86D4   8BC8                   mov     ecx, eax
006A86D6   8B55FC                 mov     edx, [ebp-$04]
006A86D9   B8E4876A00             mov     eax, $006A87E4

|
006A86DE   E8E59F0F00             call    007A26C8
006A86E3   8B55F0                 mov     edx, [ebp-$10]
006A86E6   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrCat;
|
006A86E9   E876D0D5FF             call    00405764

* Possible String Reference to: 'direita'
|
006A86EE   68F0876A00             push    $006A87F0
006A86F3   8D45AC                 lea     eax, [ebp-$54]
006A86F6   50                     push    eax
006A86F7   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A86FC   8B00                   mov     eax, [eax]
006A86FE   8B8094000000           mov     eax, [eax+$0094]
006A8704   8B10                   mov     edx, [eax]
006A8706   FF5258                 call    dword ptr [edx+$58]
006A8709   8BC8                   mov     ecx, eax
006A870B   8B55F8                 mov     edx, [ebp-$08]
006A870E   B8E4876A00             mov     eax, $006A87E4

|
006A8713   E8B09F0F00             call    007A26C8
006A8718   8B55AC                 mov     edx, [ebp-$54]
006A871B   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrCat;
|
006A871E   E841D0D5FF             call    00405764

|
006A8723   E878FAFFFF             call    006A81A0

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A8728   E8A3FAFFFF             call    006A81D0
006A872D   8D0440                 lea     eax, [eax+eax*2]
006A8730   8B154CED7D00           mov     edx, [$007DED4C]
006A8736   891C82                 mov     [edx+eax*4], ebx

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A8739   E892FAFFFF             call    006A81D0
006A873E   8D0440                 lea     eax, [eax+eax*2]
006A8741   8B154CED7D00           mov     edx, [$007DED4C]
006A8747   8D448204               lea     eax, [edx+eax*4+$04]
006A874B   50                     push    eax
006A874C   8D45A8                 lea     eax, [ebp-$58]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
006A874F   E8B0FAFFFF             call    006A8204
006A8754   8B55A8                 mov     edx, [ebp-$58]
006A8757   8B4DF4                 mov     ecx, [ebp-$0C]
006A875A   58                     pop     eax

* Reference to: System.@LStrCat3;
|
006A875B   E848D0D5FF             call    004057A8
006A8760   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
006A8763   E834CDD5FF             call    0040549C
006A8768   33C0                   xor     eax, eax
006A876A   5A                     pop     edx
006A876B   59                     pop     ecx
006A876C   59                     pop     ecx
006A876D   648910                 mov     fs:[eax], edx
006A8770   EB0A                   jmp     006A877C

* Reference to: System.@HandleAnyException;
|
006A8772   E90DC3D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006A8777   E834C7D5FF             call    00404EB0

****** END
|
006A877C   33C0                   xor     eax, eax
006A877E   5A                     pop     edx
006A877F   59                     pop     ecx
006A8780   59                     pop     ecx
006A8781   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A8784   68BE876A00             push    $006A87BE
006A8789   8D45A8                 lea     eax, [ebp-$58]
006A878C   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A8791   E82ACDD5FF             call    004054C0
006A8796   8D45B0                 lea     eax, [ebp-$50]

* Reference to object Variant
|
006A8799   8B1524114000           mov     edx, [$00401124]
006A879F   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006A87A4   E8F3D8D5FF             call    0040609C
006A87A9   8D45F0                 lea     eax, [ebp-$10]
006A87AC   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A87B1   E80ACDD5FF             call    004054C0
006A87B6   C3                     ret


* Reference to: System.@HandleFinally;
|
006A87B7   E97CC5D5FF             jmp     00404D38
006A87BC   EBCB                   jmp     006A8789

****** END
|
006A87BE   5F                     pop     edi
006A87BF   5E                     pop     esi
006A87C0   5B                     pop     ebx
006A87C1   8BE5                   mov     esp, ebp
006A87C3   5D                     pop     ebp
006A87C4   C20400                 ret     $0004

*)
end;

procedure TfrmGerenciador._PROC_006A87F9(Sender : TObject);
begin
(*
006A87F9   8BEC                   mov     ebp, esp
006A87FB   6A00                   push    $00
006A87FD   6A00                   push    $00
006A87FF   6A00                   push    $00
006A8801   53                     push    ebx
006A8802   56                     push    esi
006A8803   57                     push    edi
006A8804   33C0                   xor     eax, eax
006A8806   55                     push    ebp
006A8807   682A896A00             push    $006A892A

***** TRY
|
006A880C   64FF30                 push    dword ptr fs:[eax]
006A880F   648920                 mov     fs:[eax], esp
006A8812   33C0                   xor     eax, eax
006A8814   55                     push    ebp
006A8815   6808896A00             push    $006A8908

***** TRY
|
006A881A   64FF30                 push    dword ptr fs:[eax]
006A881D   648920                 mov     fs:[eax], esp
006A8820   33C0                   xor     eax, eax
006A8822   55                     push    ebp
006A8823   68F0886A00             push    $006A88F0

***** TRY
|
006A8828   64FF30                 push    dword ptr fs:[eax]
006A882B   648920                 mov     fs:[eax], esp
006A882E   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006A8833   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006A8835   BA40896A00             mov     edx, $006A8940

* Reference to: System.@LStrCmp;
|
006A883A   E869D0D5FF             call    004058A8
006A883F   0F85A1000000           jnz     006A88E6

* Possible String Reference to: 'esquerda'
|
006A8845   6850896A00             push    $006A8950
006A884A   8D45F8                 lea     eax, [ebp-$08]
006A884D   50                     push    eax
006A884E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8853   8B00                   mov     eax, [eax]
006A8855   8B8098000000           mov     eax, [eax+$0098]
006A885B   8B10                   mov     edx, [eax]
006A885D   FF5258                 call    dword ptr [edx+$58]
006A8860   8BC8                   mov     ecx, eax
006A8862   BA64896A00             mov     edx, $006A8964
006A8867   B864896A00             mov     eax, $006A8964

|
006A886C   E8579E0F00             call    007A26C8
006A8871   8B55F8                 mov     edx, [ebp-$08]
006A8874   8D4DFC                 lea     ecx, [ebp-$04]
006A8877   33C0                   xor     eax, eax

|
006A8879   E8EEF9FFFF             call    006A826C
006A887E   A158A97D00             mov     eax, dword ptr [$007DA958]
006A8883   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006A8885   BA70896A00             mov     edx, $006A8970

* Reference to: System.@LStrCmp;
|
006A888A   E819D0D5FF             call    004058A8
006A888F   7555                   jnz     006A88E6
006A8891   A160ED7D00             mov     eax, dword ptr [$007DED60]
006A8896   50                     push    eax
006A8897   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006A889C   50                     push    eax
006A889D   A158ED7D00             mov     eax, dword ptr [$007DED58]
006A88A2   50                     push    eax
006A88A3   A154ED7D00             mov     eax, dword ptr [$007DED54]
006A88A8   50                     push    eax
006A88A9   A150ED7D00             mov     eax, dword ptr [$007DED50]
006A88AE   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A88AF   E81CF9FFFF             call    006A81D0
006A88B4   8D0440                 lea     eax, [eax+eax*2]
006A88B7   8B154CED7D00           mov     edx, [$007DED4C]
006A88BD   FF748204               push    dword ptr [edx+eax*4+$04]
006A88C1   6884896A00             push    $006A8984
006A88C6   6890896A00             push    $006A8990
006A88CB   8D45F4                 lea     eax, [ebp-$0C]
006A88CE   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A88D3   E844CFD5FF             call    0040581C
006A88D8   8B45F4                 mov     eax, [ebp-$0C]
006A88DB   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006A88DC   E87FF8FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006A88E1   E8F2290000             call    006AB2D8
006A88E6   33C0                   xor     eax, eax
006A88E8   5A                     pop     edx
006A88E9   59                     pop     ecx
006A88EA   59                     pop     ecx
006A88EB   648910                 mov     fs:[eax], edx
006A88EE   EB0A                   jmp     006A88FA

* Reference to: System.@HandleAnyException;
|
006A88F0   E98FC1D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006A88F5   E8B6C5D5FF             call    00404EB0

****** END
|
006A88FA   33C0                   xor     eax, eax
006A88FC   5A                     pop     edx
006A88FD   59                     pop     ecx
006A88FE   59                     pop     ecx
006A88FF   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A8902   680F896A00             push    $006A890F
006A8907   C3                     ret


* Reference to: System.@HandleFinally;
|
006A8908   E92BC4D5FF             jmp     00404D38
006A890D   EBF8                   jmp     006A8907

****** END
|
006A890F   33C0                   xor     eax, eax
006A8911   5A                     pop     edx
006A8912   59                     pop     ecx
006A8913   59                     pop     ecx
006A8914   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A8917   6831896A00             push    $006A8931
006A891C   8D45F4                 lea     eax, [ebp-$0C]
006A891F   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A8924   E897CBD5FF             call    004054C0
006A8929   C3                     ret


* Reference to: System.@HandleFinally;
|
006A892A   E909C4D5FF             jmp     00404D38
006A892F   EBEB                   jmp     006A891C

****** END
|
006A8931   5F                     pop     edi
006A8932   5E                     pop     esi
006A8933   5B                     pop     ebx
006A8934   8BE5                   mov     esp, ebp
006A8936   5D                     pop     ebp
006A8937   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A8995(Sender : TObject);
begin
(*
006A8995   8BEC                   mov     ebp, esp
006A8997   B91B000000             mov     ecx, $0000001B
006A899C   6A00                   push    $00
006A899E   6A00                   push    $00
006A89A0   49                     dec     ecx
006A89A1   75F9                   jnz     006A899C
006A89A3   53                     push    ebx
006A89A4   56                     push    esi
006A89A5   33C0                   xor     eax, eax
006A89A7   55                     push    ebp

* Possible String Reference to: 'éJÁÕÿëÍŠEÿ^[‹å]Ã'
|
006A89A8   68E98B6A00             push    $006A8BE9

***** TRY
|
006A89AD   64FF30                 push    dword ptr fs:[eax]
006A89B0   648920                 mov     fs:[eax], esp
006A89B3   C645FF01               mov     byte ptr [ebp-$01], $01
006A89B7   8D55E8                 lea     edx, [ebp-$18]
006A89BA   33C0                   xor     eax, eax

* Reference to: System.ParamStr(Integer):String;
|
006A89BC   E82BA3D5FF             call    00402CEC
006A89C1   8B45E8                 mov     eax, [ebp-$18]
006A89C4   8D55EC                 lea     edx, [ebp-$14]

* Reference to: SysUtils.ExtractFilePath(AnsiString):AnsiString;
|
006A89C7   E8702ED6FF             call    0040B83C
006A89CC   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'mp20.ini'
|
006A89CF   BA048C6A00             mov     edx, $006A8C04

* Reference to: System.@LStrCat;
|
006A89D4   E88BCDD5FF             call    00405764
006A89D9   8B4DEC                 mov     ecx, [ebp-$14]
006A89DC   B201                   mov     dl, $01

* Reference to class TIniFile
|
006A89DE   A1540F4500             mov     eax, dword ptr [$00450F54]

* Reference to: IniFiles.TCustomIniFile.Create(TCustomIniFile;boolean;AnsiString);
|
006A89E3   E81C86DAFF             call    00451004
006A89E8   8945F8                 mov     [ebp-$08], eax
006A89EB   33C0                   xor     eax, eax
006A89ED   55                     push    ebp
006A89EE   68A98B6A00             push    $006A8BA9

***** TRY
|
006A89F3   64FF30                 push    dword ptr fs:[eax]
006A89F6   648920                 mov     fs:[eax], esp
006A89F9   68188C6A00             push    $006A8C18
006A89FE   8D45F4                 lea     eax, [ebp-$0C]
006A8A01   50                     push    eax

* Possible String Reference to: 'TipoLetra'
|
006A8A02   B9248C6A00             mov     ecx, $006A8C24

* Possible String Reference to: 'Mp20'
|
006A8A07   BA388C6A00             mov     edx, $006A8C38
006A8A0C   8B45F8                 mov     eax, [ebp-$08]
006A8A0F   8B18                   mov     ebx, [eax]
006A8A11   FF13                   call    dword ptr [ebx]
006A8A13   6A00                   push    $00

* Possible String Reference to: 'italico'
|
006A8A15   B9488C6A00             mov     ecx, $006A8C48

* Possible String Reference to: 'Mp20'
|
006A8A1A   BA388C6A00             mov     edx, $006A8C38
006A8A1F   8B45F8                 mov     eax, [ebp-$08]
006A8A22   8B18                   mov     ebx, [eax]

* Reference to method TIniFile.ReadBool(string,string,Boolean)
|
006A8A24   FF5310                 call    dword ptr [ebx+$10]
006A8A27   8BD8                   mov     ebx, eax
006A8A29   6A00                   push    $00

* Possible String Reference to: 'sublinhado'
|
006A8A2B   B9588C6A00             mov     ecx, $006A8C58

* Possible String Reference to: 'Mp20'
|
006A8A30   BA388C6A00             mov     edx, $006A8C38
006A8A35   8B45F8                 mov     eax, [ebp-$08]
006A8A38   8B30                   mov     esi, [eax]

* Reference to method TIniFile.ReadBool(string,string,Boolean)
|
006A8A3A   FF5610                 call    dword ptr [esi+$10]
006A8A3D   8845F3                 mov     [ebp-$0D], al
006A8A40   6A00                   push    $00

* Possible String Reference to: 'expandido'
|
006A8A42   B96C8C6A00             mov     ecx, $006A8C6C

* Possible String Reference to: 'Mp20'
|
006A8A47   BA388C6A00             mov     edx, $006A8C38
006A8A4C   8B45F8                 mov     eax, [ebp-$08]
006A8A4F   8B30                   mov     esi, [eax]

* Reference to method TIniFile.ReadBool(string,string,Boolean)
|
006A8A51   FF5610                 call    dword ptr [esi+$10]
006A8A54   8845F2                 mov     [ebp-$0E], al
006A8A57   6A00                   push    $00

* Possible String Reference to: 'negrito'
|
006A8A59   B9808C6A00             mov     ecx, $006A8C80

* Possible String Reference to: 'Mp20'
|
006A8A5E   BA388C6A00             mov     edx, $006A8C38
006A8A63   8B45F8                 mov     eax, [ebp-$08]
006A8A66   8B30                   mov     esi, [eax]

* Reference to method TIniFile.ReadBool(string,string,Boolean)
|
006A8A68   FF5610                 call    dword ptr [esi+$10]
006A8A6B   8845F1                 mov     [ebp-$0F], al
006A8A6E   BA01000000             mov     edx, $00000001
006A8A73   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
006A8A76   E89124D6FF             call    0040AF0C

* Reference to GlobalVar_007DED50
|
006A8A7B   A350ED7D00             mov     dword ptr [$007DED50], eax
006A8A80   8D45D8                 lea     eax, [ebp-$28]
006A8A83   50                     push    eax
006A8A84   8D45C8                 lea     eax, [ebp-$38]
006A8A87   33D2                   xor     edx, edx
006A8A89   B101                   mov     cl, $01

|
006A8A8B   E8E0FFD6FF             call    00418A70
006A8A90   8D45C8                 lea     eax, [ebp-$38]
006A8A93   50                     push    eax
006A8A94   8D45B8                 lea     eax, [ebp-$48]
006A8A97   BA01000000             mov     edx, $00000001
006A8A9C   B101                   mov     cl, $01

|
006A8A9E   E8CDFFD6FF             call    00418A70
006A8AA3   8D55B8                 lea     edx, [ebp-$48]
006A8AA6   8BC3                   mov     eax, ebx
006A8AA8   59                     pop     ecx

|
006A8AA9   E8BE780F00             call    007A036C
006A8AAE   8D45D8                 lea     eax, [ebp-$28]

* Reference to: Variants.@VarToInteger(TVarData;TVarData):Integer;
|
006A8AB1   E8E2C7D6FF             call    00415298

* Reference to GlobalVar_007DED54
|
006A8AB6   A354ED7D00             mov     dword ptr [$007DED54], eax
006A8ABB   8D45A8                 lea     eax, [ebp-$58]
006A8ABE   50                     push    eax
006A8ABF   8D4598                 lea     eax, [ebp-$68]
006A8AC2   33D2                   xor     edx, edx
006A8AC4   B101                   mov     cl, $01

|
006A8AC6   E8A5FFD6FF             call    00418A70
006A8ACB   8D4598                 lea     eax, [ebp-$68]
006A8ACE   50                     push    eax
006A8ACF   8D4588                 lea     eax, [ebp-$78]
006A8AD2   BA01000000             mov     edx, $00000001
006A8AD7   B101                   mov     cl, $01

|
006A8AD9   E892FFD6FF             call    00418A70
006A8ADE   8D5588                 lea     edx, [ebp-$78]
006A8AE1   8A45F3                 mov     al, byte ptr [ebp-$0D]
006A8AE4   59                     pop     ecx

|
006A8AE5   E882780F00             call    007A036C
006A8AEA   8D45A8                 lea     eax, [ebp-$58]

* Reference to: Variants.@VarToInteger(TVarData;TVarData):Integer;
|
006A8AED   E8A6C7D6FF             call    00415298

* Reference to GlobalVar_007DED58
|
006A8AF2   A358ED7D00             mov     dword ptr [$007DED58], eax
006A8AF7   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
006A8AFD   50                     push    eax
006A8AFE   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
006A8B04   33D2                   xor     edx, edx
006A8B06   B101                   mov     cl, $01

|
006A8B08   E863FFD6FF             call    00418A70
006A8B0D   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
006A8B13   50                     push    eax
006A8B14   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
006A8B1A   BA01000000             mov     edx, $00000001
006A8B1F   B101                   mov     cl, $01

|
006A8B21   E84AFFD6FF             call    00418A70
006A8B26   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
006A8B2C   8A45F2                 mov     al, byte ptr [ebp-$0E]
006A8B2F   59                     pop     ecx

|
006A8B30   E837780F00             call    007A036C
006A8B35   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]

* Reference to: Variants.@VarToInteger(TVarData;TVarData):Integer;
|
006A8B3B   E858C7D6FF             call    00415298

* Reference to GlobalVar_007DED5C
|
006A8B40   A35CED7D00             mov     dword ptr [$007DED5C], eax
006A8B45   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
006A8B4B   50                     push    eax
006A8B4C   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]
006A8B52   33D2                   xor     edx, edx
006A8B54   B101                   mov     cl, $01

|
006A8B56   E815FFD6FF             call    00418A70
006A8B5B   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]
006A8B61   50                     push    eax
006A8B62   8D8528FFFFFF           lea     eax, [ebp+$FFFFFF28]
006A8B68   BA01000000             mov     edx, $00000001
006A8B6D   B101                   mov     cl, $01

|
006A8B6F   E8FCFED6FF             call    00418A70
006A8B74   8D9528FFFFFF           lea     edx, [ebp+$FFFFFF28]
006A8B7A   8A45F1                 mov     al, byte ptr [ebp-$0F]
006A8B7D   59                     pop     ecx

|
006A8B7E   E8E9770F00             call    007A036C
006A8B83   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]

* Reference to: Variants.@VarToInteger(TVarData;TVarData):Integer;
|
006A8B89   E80AC7D6FF             call    00415298

* Reference to GlobalVar_007DED60
|
006A8B8E   A360ED7D00             mov     dword ptr [$007DED60], eax
006A8B93   33C0                   xor     eax, eax
006A8B95   5A                     pop     edx
006A8B96   59                     pop     ecx
006A8B97   59                     pop     ecx
006A8B98   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A8B9B   68B08B6A00             push    $006A8BB0
006A8BA0   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.TObject.Free(TObject);
|
006A8BA3   E8F4B9D5FF             call    0040459C
006A8BA8   C3                     ret


* Reference to: System.@HandleFinally;
|
006A8BA9   E98AC1D5FF             jmp     00404D38
006A8BAE   EBF0                   jmp     006A8BA0

****** END
|
006A8BB0   33C0                   xor     eax, eax
006A8BB2   5A                     pop     edx
006A8BB3   59                     pop     ecx
006A8BB4   59                     pop     ecx
006A8BB5   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ^[‹å]Ã'
|
006A8BB8   68F08B6A00             push    $006A8BF0
006A8BBD   8D8528FFFFFF           lea     eax, [ebp+$FFFFFF28]

* Reference to object Variant
|
006A8BC3   8B1524114000           mov     edx, [$00401124]
006A8BC9   B90C000000             mov     ecx, $0000000C

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006A8BCE   E8C9D4D5FF             call    0040609C
006A8BD3   8D45E8                 lea     eax, [ebp-$18]
006A8BD6   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A8BDB   E8E0C8D5FF             call    004054C0
006A8BE0   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006A8BE3   E8B4C8D5FF             call    0040549C
006A8BE8   C3                     ret


* Reference to: System.@HandleFinally;
|
006A8BE9   E94AC1D5FF             jmp     00404D38
006A8BEE   EBCD                   jmp     006A8BBD

****** END
|
006A8BF0   8A45FF                 mov     al, byte ptr [ebp-$01]
006A8BF3   5E                     pop     esi
006A8BF4   5B                     pop     ebx
006A8BF5   8BE5                   mov     esp, ebp
006A8BF7   5D                     pop     ebp
006A8BF8   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A8C89(Sender : TObject);
begin
(*
006A8C89   8BEC                   mov     ebp, esp
006A8C8B   B90F000000             mov     ecx, $0000000F
006A8C90   6A00                   push    $00
006A8C92   6A00                   push    $00
006A8C94   49                     dec     ecx
006A8C95   75F9                   jnz     006A8C90
006A8C97   53                     push    ebx
006A8C98   56                     push    esi
006A8C99   57                     push    edi
006A8C9A   33C0                   xor     eax, eax
006A8C9C   55                     push    ebp

* Possible String Reference to: 'é?½ÕÿëÐŠEÿ_^[‹å]Ã'
|
006A8C9D   68F48F6A00             push    $006A8FF4

***** TRY
|
006A8CA2   64FF30                 push    dword ptr fs:[eax]
006A8CA5   648920                 mov     fs:[eax], esp
006A8CA8   B201                   mov     dl, $01

* Reference to class TStringList
|
006A8CAA   A1D4044200             mov     eax, dword ptr [$004204D4]

* Reference to: System.TObject.Create(TObject;Boolean);
|
006A8CAF   E8B8B8D5FF             call    0040456C
006A8CB4   8945F8                 mov     [ebp-$08], eax
006A8CB7   C645FF00               mov     byte ptr [ebp-$01], $00
006A8CBB   6A00                   push    $00
006A8CBD   B84CED7D00             mov     eax, $007DED4C
006A8CC2   B901000000             mov     ecx, $00000001

* Reference to class mp20ci
|
006A8CC7   8B1580816A00           mov     edx, [$006A8180]

* Reference to: System.@DynArraySetLength;
|
006A8CCD   E8DEDED5FF             call    00406BB0
006A8CD2   83C404                 add     esp, +$04
006A8CD5   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006A8CDA   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006A8CDC   BA10906A00             mov     edx, $006A9010

* Reference to: System.@LStrCmp;
|
006A8CE1   E8C2CBD5FF             call    004058A8
006A8CE6   0F85CA020000           jnz     006A8FB6
006A8CEC   8D55F4                 lea     edx, [ebp-$0C]
006A8CEF   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8CF4   8B00                   mov     eax, [eax]
006A8CF6   8B80A8000000           mov     eax, [eax+$00A8]
006A8CFC   8B08                   mov     ecx, [eax]
006A8CFE   FF5160                 call    dword ptr [ecx+$60]
006A8D01   8B55F4                 mov     edx, [ebp-$0C]
006A8D04   8B45F8                 mov     eax, [ebp-$08]
006A8D07   8B08                   mov     ecx, [eax]

* Reference to method TStringList.SetTextStr(string)
|
006A8D09   FF512C                 call    dword ptr [ecx+$2C]
006A8D0C   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8D11   8B00                   mov     eax, [eax]
006A8D13   8B8084000000           mov     eax, [eax+$0084]
006A8D19   8B10                   mov     edx, [eax]
006A8D1B   FF5258                 call    dword ptr [edx+$58]
006A8D1E   8BD8                   mov     ebx, eax
006A8D20   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8D25   8B00                   mov     eax, [eax]
006A8D27   8B8088000000           mov     eax, [eax+$0088]
006A8D2D   8B10                   mov     edx, [eax]
006A8D2F   FF5258                 call    dword ptr [edx+$58]
006A8D32   03D8                   add     ebx, eax
006A8D34   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8D39   8B00                   mov     eax, [eax]
006A8D3B   8B808C000000           mov     eax, [eax+$008C]
006A8D41   8B10                   mov     edx, [eax]
006A8D43   FF5258                 call    dword ptr [edx+$58]
006A8D46   03D8                   add     ebx, eax
006A8D48   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8D4D   8B00                   mov     eax, [eax]
006A8D4F   8B8090000000           mov     eax, [eax+$0090]
006A8D55   8B10                   mov     edx, [eax]
006A8D57   FF5258                 call    dword ptr [edx+$58]
006A8D5A   03D8                   add     ebx, eax
006A8D5C   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8D61   8B00                   mov     eax, [eax]
006A8D63   8B8094000000           mov     eax, [eax+$0094]
006A8D69   8B10                   mov     edx, [eax]
006A8D6B   FF5258                 call    dword ptr [edx+$58]
006A8D6E   03D8                   add     ebx, eax
006A8D70   8BD3                   mov     edx, ebx
006A8D72   8D45E4                 lea     eax, [ebp-$1C]
006A8D75   B1FC                   mov     cl, $FC

|
006A8D77   E8F4FCD6FF             call    00418A70
006A8D7C   8D45E4                 lea     eax, [ebp-$1C]
006A8D7F   50                     push    eax
006A8D80   8D45D4                 lea     eax, [ebp-$2C]
006A8D83   50                     push    eax
006A8D84   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8D89   8B00                   mov     eax, [eax]
006A8D8B   8B8080000000           mov     eax, [eax+$0080]
006A8D91   8B10                   mov     edx, [eax]
006A8D93   FF5258                 call    dword ptr [edx+$58]
006A8D96   8BD0                   mov     edx, eax
006A8D98   8D45C4                 lea     eax, [ebp-$3C]
006A8D9B   B1FC                   mov     cl, $FC

|
006A8D9D   E8CEFCD6FF             call    00418A70
006A8DA2   8D45C4                 lea     eax, [ebp-$3C]
006A8DA5   50                     push    eax
006A8DA6   8D45B4                 lea     eax, [ebp-$4C]
006A8DA9   33D2                   xor     edx, edx
006A8DAB   B101                   mov     cl, $01

|
006A8DAD   E8BEFCD6FF             call    00418A70
006A8DB2   8D4DB4                 lea     ecx, [ebp-$4C]
006A8DB5   33C0                   xor     eax, eax
006A8DB7   5A                     pop     edx

|
006A8DB8   E8AF750F00             call    007A036C
006A8DBD   8D55D4                 lea     edx, [ebp-$2C]
006A8DC0   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
006A8DC1   E8DE42D7FF             call    0041D0A4
006A8DC6   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: Variants.@VarToInteger(TVarData;TVarData):Integer;
|
006A8DC9   E8CAC4D6FF             call    00415298
006A8DCE   8B1540A47D00           mov     edx, [$007DA440]
006A8DD4   8902                   mov     [edx], eax
006A8DD6   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A8DDB   8B00                   mov     eax, [eax]
006A8DDD   8B4068                 mov     eax, [eax+$68]
006A8DE0   8B10                   mov     edx, [eax]
006A8DE2   FF5258                 call    dword ptr [edx+$58]
006A8DE5   8BD8                   mov     ebx, eax
006A8DE7   85DB                   test    ebx, ebx
006A8DE9   7E4E                   jle     006A8E39

|
006A8DEB   E8B0F3FFFF             call    006A81A0

* Possible String Reference to: 'esquerda'
|
006A8DF0   6820906A00             push    $006A9020
006A8DF5   8D45B0                 lea     eax, [ebp-$50]
006A8DF8   50                     push    eax
006A8DF9   B914000000             mov     ecx, $00000014
006A8DFE   BA34906A00             mov     edx, $006A9034
006A8E03   B834906A00             mov     eax, $006A9034

|
006A8E08   E8BB980F00             call    007A26C8
006A8E0D   8B45B0                 mov     eax, [ebp-$50]
006A8E10   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A8E11   E8BAF3FFFF             call    006A81D0
006A8E16   8D0440                 lea     eax, [eax+eax*2]
006A8E19   8B154CED7D00           mov     edx, [$007DED4C]
006A8E1F   8D448204               lea     eax, [edx+eax*4+$04]
006A8E23   50                     push    eax
006A8E24   8D45AC                 lea     eax, [ebp-$54]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
006A8E27   E8D8F3FFFF             call    006A8204
006A8E2C   8B55AC                 mov     edx, [ebp-$54]
006A8E2F   58                     pop     eax
006A8E30   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006A8E31   E872C9D5FF             call    004057A8
006A8E36   4B                     dec     ebx
006A8E37   75B2                   jnz     006A8DEB
006A8E39   8B45F8                 mov     eax, [ebp-$08]
006A8E3C   8B10                   mov     edx, [eax]

* Reference to method TStringList.GetCount()
|
006A8E3E   FF5214                 call    dword ptr [edx+$14]
006A8E41   8BD8                   mov     ebx, eax
006A8E43   4B                     dec     ebx
006A8E44   85DB                   test    ebx, ebx
006A8E46   7C60                   jl      006A8EA8
006A8E48   43                     inc     ebx
006A8E49   33F6                   xor     esi, esi
006A8E4B   8D4DA8                 lea     ecx, [ebp-$58]
006A8E4E   8BD6                   mov     edx, esi
006A8E50   8B45F8                 mov     eax, [ebp-$08]
006A8E53   8B38                   mov     edi, [eax]

* Reference to method TStringList.Get(Integer)
|
006A8E55   FF570C                 call    dword ptr [edi+$0C]
006A8E58   837DA800               cmp     dword ptr [ebp-$58], +$00
006A8E5C   7446                   jz      006A8EA4

|
006A8E5E   E83DF3FFFF             call    006A81A0
006A8E63   8D4DA0                 lea     ecx, [ebp-$60]
006A8E66   8BD6                   mov     edx, esi
006A8E68   8B45F8                 mov     eax, [ebp-$08]
006A8E6B   8B38                   mov     edi, [eax]

* Reference to method TStringList.Get(Integer)
|
006A8E6D   FF570C                 call    dword ptr [edi+$0C]
006A8E70   8B45A0                 mov     eax, [ebp-$60]
006A8E73   8D55A4                 lea     edx, [ebp-$5C]

* Reference to : TfrmGerenciador._PROC_006ACE00()
|
006A8E76   E8853F0000             call    006ACE00
006A8E7B   8B45A4                 mov     eax, [ebp-$5C]
006A8E7E   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A8E7F   E84CF3FFFF             call    006A81D0
006A8E84   8D0440                 lea     eax, [eax+eax*2]
006A8E87   8B154CED7D00           mov     edx, [$007DED4C]
006A8E8D   8D448204               lea     eax, [edx+eax*4+$04]
006A8E91   50                     push    eax
006A8E92   8D459C                 lea     eax, [ebp-$64]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
006A8E95   E86AF3FFFF             call    006A8204
006A8E9A   8B559C                 mov     edx, [ebp-$64]
006A8E9D   58                     pop     eax
006A8E9E   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006A8E9F   E804C9D5FF             call    004057A8
006A8EA4   46                     inc     esi
006A8EA5   4B                     dec     ebx
006A8EA6   75A3                   jnz     006A8E4B
006A8EA8   A1BCB17D00             mov     eax, dword ptr [$007DB1BC]
006A8EAD   833800                 cmp     dword ptr [eax], +$00
006A8EB0   7E43                   jle     006A8EF5

|
006A8EB2   E8E9F2FFFF             call    006A81A0
006A8EB7   8D4598                 lea     eax, [ebp-$68]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
006A8EBA   E845F3FFFF             call    006A8204
006A8EBF   FF7598                 push    dword ptr [ebp-$68]

* Possible String Reference to: 'MESA.:'
|
006A8EC2   6840906A00             push    $006A9040
006A8EC7   8D5594                 lea     edx, [ebp-$6C]
006A8ECA   A1BCB17D00             mov     eax, dword ptr [$007DB1BC]
006A8ECF   8B00                   mov     eax, [eax]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006A8ED1   E88E1ED6FF             call    0040AD64
006A8ED6   FF7594                 push    dword ptr [ebp-$6C]

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A8ED9   E8F2F2FFFF             call    006A81D0
006A8EDE   8D0440                 lea     eax, [eax+eax*2]
006A8EE1   8B154CED7D00           mov     edx, [$007DED4C]
006A8EE7   8D448204               lea     eax, [edx+eax*4+$04]
006A8EEB   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A8EF0   E827C9D5FF             call    0040581C

* Possible String Reference to: 'Qtde'
|
006A8EF5   6850906A00             push    $006A9050

* Possible String Reference to: 'UN'
|
006A8EFA   6860906A00             push    $006A9060

* Possible String Reference to: 'Unit'
|
006A8EFF   686C906A00             push    $006A906C

* Possible String Reference to: 'Total'
|
006A8F04   687C906A00             push    $006A907C
006A8F09   8D4590                 lea     eax, [ebp-$70]
006A8F0C   50                     push    eax

* Possible String Reference to: 'Vol'
|
006A8F0D   B98C906A00             mov     ecx, $006A908C

* Possible String Reference to: 'Produto'
|
006A8F12   BA98906A00             mov     edx, $006A9098
006A8F17   33C0                   xor     eax, eax

|
006A8F19   E82EF4FFFF             call    006A834C
006A8F1E   8D458C                 lea     eax, [ebp-$74]

|
006A8F21   E8D2F8FFFF             call    006A87F8
006A8F26   A158A97D00             mov     eax, dword ptr [$007DA958]
006A8F2B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006A8F2D   BAA8906A00             mov     edx, $006A90A8

* Reference to: System.@LStrCmp;
|
006A8F32   E871C9D5FF             call    004058A8
006A8F37   757D                   jnz     006A8FB6
006A8F39   A14CED7D00             mov     eax, dword ptr [$007DED4C]

* Reference to: System.@LStrLen(String):Integer;
|
006A8F3E   E8B1DAD5FF             call    004069F4
006A8F43   8BD8                   mov     ebx, eax
006A8F45   4B                     dec     ebx
006A8F46   85DB                   test    ebx, ebx
006A8F48   7C6C                   jl      006A8FB6
006A8F4A   43                     inc     ebx
006A8F4B   33F6                   xor     esi, esi

|
006A8F4D   E872210000             call    006AB0C4
006A8F52   84C0                   test    al, al
006A8F54   7456                   jz      006A8FAC
006A8F56   A160ED7D00             mov     eax, dword ptr [$007DED60]
006A8F5B   50                     push    eax
006A8F5C   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006A8F61   50                     push    eax
006A8F62   A158ED7D00             mov     eax, dword ptr [$007DED58]
006A8F67   50                     push    eax
006A8F68   A154ED7D00             mov     eax, dword ptr [$007DED54]
006A8F6D   50                     push    eax
006A8F6E   A150ED7D00             mov     eax, dword ptr [$007DED50]
006A8F73   50                     push    eax
006A8F74   8D0476                 lea     eax, [esi+esi*2]
006A8F77   8B154CED7D00           mov     edx, [$007DED4C]
006A8F7D   FF748204               push    dword ptr [edx+eax*4+$04]
006A8F81   68BC906A00             push    $006A90BC
006A8F86   68C8906A00             push    $006A90C8
006A8F8B   8D4588                 lea     eax, [ebp-$78]
006A8F8E   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A8F93   E884C8D5FF             call    0040581C
006A8F98   8B4588                 mov     eax, [ebp-$78]
006A8F9B   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006A8F9C   E8BFF1FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006A8FA1   E832230000             call    006AB2D8
006A8FA6   C645FF01               mov     byte ptr [ebp-$01], $01
006A8FAA   EB06                   jmp     006A8FB2
006A8FAC   C645FF00               mov     byte ptr [ebp-$01], $00
006A8FB0   EB04                   jmp     006A8FB6
006A8FB2   46                     inc     esi
006A8FB3   4B                     dec     ebx
006A8FB4   7597                   jnz     006A8F4D
006A8FB6   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.TObject.Free(TObject);
|
006A8FB9   E8DEB5D5FF             call    0040459C
006A8FBE   33C0                   xor     eax, eax
006A8FC0   5A                     pop     edx
006A8FC1   59                     pop     ecx
006A8FC2   59                     pop     ecx
006A8FC3   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006A8FC6   68FB8F6A00             push    $006A8FFB
006A8FCB   8D4588                 lea     eax, [ebp-$78]
006A8FCE   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A8FD3   E8E8C4D5FF             call    004054C0
006A8FD8   8D45B4                 lea     eax, [ebp-$4C]

* Reference to object Variant
|
006A8FDB   8B1524114000           mov     edx, [$00401124]
006A8FE1   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006A8FE6   E8B1D0D5FF             call    0040609C
006A8FEB   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006A8FEE   E8A9C4D5FF             call    0040549C
006A8FF3   C3                     ret


* Reference to: System.@HandleFinally;
|
006A8FF4   E93FBDD5FF             jmp     00404D38
006A8FF9   EBD0                   jmp     006A8FCB

****** END
|
006A8FFB   8A45FF                 mov     al, byte ptr [ebp-$01]
006A8FFE   5F                     pop     edi
006A8FFF   5E                     pop     esi
006A9000   5B                     pop     ebx
006A9001   8BE5                   mov     esp, ebp
006A9003   5D                     pop     ebp
006A9004   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A9061(Sender : TObject);
begin
(*
006A9061   4E                     dec     esi
006A9062   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A906D(Sender : TObject);
begin
(*
006A906D   6E                     outsb
006A906E   697400000000FFFF       imul    esi, [eax+eax+$00], $FFFF0000
006A9076   FFFF                   DB  $FF, $FF  //      
006A9078   0500000054             add     eax, +$54000000
006A907D   6F                     outsd
006A907E   7461                   jz      006A90E1
006A9080   6C                     insb
006A9081   0000                   add     [eax], al

006A9083   00FF                   add     bh, bh
006A9085   FFFF                   DB  $FF, $FF  //      
006A9087   FF03                   inc     dword ptr [ebx]
006A9089   0000                   add     [eax], al

006A908B   00566F                 add     [esi+$6F], dl
006A908E   6C                     insb
006A908F   00FF                   add     bh, bh
006A9091   FFFF                   DB  $FF, $FF  //      
006A9093   FF07                   inc     dword ptr [edi]
006A9095   0000                   add     [eax], al

006A9097   005072                 add     [eax+$72], dl
006A909A   6F                     outsd
006A909B   647574                 jnz     006A9112
006A909E   6F                     outsd
006A909F   00FF                   add     bh, bh
006A90A1   FFFF                   DB  $FF, $FF  //      
006A90A3   FF09                   dec     dword ptr [ecx]
006A90A5   0000                   add     [eax], al

006A90A7   0074656D               add     [ebp+$6D], dh
006A90AB   706F                   jo      006A911C
006A90AD   7265                   jb      006A9114
006A90AF   61                     popa
006A90B0   6C                     insb
006A90B1   0000                   add     [eax], al

006A90B3   00FF                   add     bh, bh
006A90B5   FFFF                   DB  $FF, $FF  //      
006A90B7   FF01                   inc     dword ptr [ecx]
006A90B9   0000                   add     [eax], al

006A90BB   000D000000FF           add     [$FF000000], cl
006A90C1   FFFF                   DB  $FF, $FF  //      
006A90C3   FF01                   inc     dword ptr [ecx]
006A90C5   0000                   add     [eax], al

006A90C7   000A                   add     [edx], cl
006A90C9   0000                   add     [eax], al

006A90CB   00558B                 add     [ebp-$75], dl
006A90CE   EC                     in      al, dx
006A90CF   33C9                   xor     ecx, ecx
006A90D1   51                     push    ecx
006A90D2   51                     push    ecx
006A90D3   51                     push    ecx
006A90D4   51                     push    ecx
006A90D5   53                     push    ebx
006A90D6   56                     push    esi
006A90D7   57                     push    edi
006A90D8   8BD8                   mov     ebx, eax
006A90DA   33C0                   xor     eax, eax
006A90DC   55                     push    ebp

* Possible String Reference to: 'éÂºÕÿëëŠEÿ_^[‹å]Ã'
|
006A90DD   6871926A00             push    $006A9271

***** TRY
|
006A90E2   64FF30                 push    dword ptr fs:[eax]
006A90E5   648920                 mov     fs:[eax], esp
006A90E8   C645FF00               mov     byte ptr [ebp-$01], $00
006A90EC   33D2                   xor     edx, edx
006A90EE   55                     push    ebp
006A90EF   684F926A00             push    $006A924F

***** TRY
|
006A90F4   64FF32                 push    dword ptr fs:[edx]
006A90F7   648922                 mov     fs:[edx], esp
006A90FA   33D2                   xor     edx, edx
006A90FC   55                     push    ebp
006A90FD   6806926A00             push    $006A9206

***** TRY
|
006A9102   64FF32                 push    dword ptr fs:[edx]
006A9105   648922                 mov     fs:[edx], esp

* Reference to: Mp2032.FechaPorta()
|
006A9108   E84BF0FFFF             call    006A8158
006A910D   85C0                   test    eax, eax
006A910F   7F1A                   jnle    006A912B
006A9111   6A00                   push    $00
006A9113   668B0D84926A00         mov     cx, word ptr [$006A9284]
006A911A   B201                   mov     dl, $01

* Possible String Reference to: 'Problemas ao fechar a porta de Comu
|                                nicação.'
|
006A911C   B890926A00             mov     eax, $006A9290

|
006A9121   E806AAD9FF             call    00443B2C
006A9126   E9D1000000             jmp     006A91FC
006A912B   83FB07                 cmp     ebx, +$07
006A912E   0F878E000000           jnbe    006A91C2
006A9134   FF249D3B916A00         jmp     dword ptr [$6A913B+ebx*4]
006A913B   C2916A                 ret     $6A91

006A913E   005B91                 add     [ebx-$6F], bl
006A9141   6A00                   push    $00
006A9143   6A91                   push    $91
006A9145   6A00                   push    $00
006A9147   7991                   jns     006A90DA
006A9149   6A00                   push    $00
006A914B   88916A009791           mov     [ecx+$9197006A], dl
006A9151   6A00                   push    $00
006A9153   A6                     cmpsb
006A9154   91                     xchg    eax, ecx
006A9155   6A00                   push    $00
006A9157   B591                   mov     ch, $91
006A9159   6A00                   push    $00
006A915B   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'COM1'
|
006A915E   BAC4926A00             mov     edx, $006A92C4

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A9163   E8CCC3D5FF             call    00405534
006A9168   EB58                   jmp     006A91C2
006A916A   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'COM2'
|
006A916D   BAD4926A00             mov     edx, $006A92D4

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A9172   E8BDC3D5FF             call    00405534
006A9177   EB49                   jmp     006A91C2
006A9179   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'COM3'
|
006A917C   BAE4926A00             mov     edx, $006A92E4

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A9181   E8AEC3D5FF             call    00405534
006A9186   EB3A                   jmp     006A91C2
006A9188   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'COM4'
|
006A918B   BAF4926A00             mov     edx, $006A92F4

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A9190   E89FC3D5FF             call    00405534
006A9195   EB2B                   jmp     006A91C2
006A9197   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'COM5'
|
006A919A   BA04936A00             mov     edx, $006A9304

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A919F   E890C3D5FF             call    00405534
006A91A4   EB1C                   jmp     006A91C2
006A91A6   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'LPT1'
|
006A91A9   BA14936A00             mov     edx, $006A9314

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A91AE   E881C3D5FF             call    00405534
006A91B3   EB0D                   jmp     006A91C2
006A91B5   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'USB'
|
006A91B8   BA24936A00             mov     edx, $006A9324

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006A91BD   E872C3D5FF             call    00405534
006A91C2   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrToPChar(String):PAnsiChar;
|
006A91C5   E892C7D5FF             call    0040595C
006A91CA   8BD0                   mov     edx, eax
006A91CC   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrFromPChar(String;String;PAnsiChar);
|
006A91CF   E8C0C4D5FF             call    00405694
006A91D4   8B45F4                 mov     eax, [ebp-$0C]
006A91D7   50                     push    eax

* Reference to: Mp2032.IniciaPorta()
|
006A91D8   E873EFFFFF             call    006A8150
006A91DD   85C0                   test    eax, eax
006A91DF   7F17                   jnle    006A91F8
006A91E1   6A00                   push    $00
006A91E3   668B0D84926A00         mov     cx, word ptr [$006A9284]
006A91EA   B201                   mov     dl, $01

* Possible String Reference to: 'Problemas ao abrir a porta de Comun
|                                icação.'
|
006A91EC   B834936A00             mov     eax, $006A9334

|
006A91F1   E836A9D9FF             call    00443B2C
006A91F6   EB04                   jmp     006A91FC
006A91F8   C645FF01               mov     byte ptr [ebp-$01], $01
006A91FC   33C0                   xor     eax, eax
006A91FE   5A                     pop     edx
006A91FF   59                     pop     ecx
006A9200   59                     pop     ecx
006A9201   648910                 mov     fs:[eax], edx
006A9204   EB3B                   jmp     006A9241

* Reference to: System.@HandleOnException;
|
006A9206   E9A5B9D5FF             jmp     00404BB0
006A920B   0100                   add     [eax], eax
006A920D   0000                   add     [eax], al
006A920F   40                     inc     eax
006A9210   95                     xchg    eax, ebp
006A9211   40                     inc     eax
006A9212   0017                   add     [edi], dl
006A9214   92                     xchg    eax, edx
006A9215   6A00                   push    $00
006A9217   89C3                   mov     ebx, eax
006A9219   6A00                   push    $00
006A921B   8B4B04                 mov     ecx, [ebx+$04]
006A921E   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'Erro ao abrir a porta da impressora
|                                !'
|
006A9221   BA68936A00             mov     edx, $006A9368

* Reference to: System.@LStrCat3;
|
006A9226   E87DC5D5FF             call    004057A8
006A922B   8B45F0                 mov     eax, [ebp-$10]
006A922E   668B0D84926A00         mov     cx, word ptr [$006A9284]
006A9235   B201                   mov     dl, $01

|
006A9237   E8F0A8D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A923C   E86FBCD5FF             call    00404EB0

****** END
|
006A9241   33C0                   xor     eax, eax
006A9243   5A                     pop     edx
006A9244   59                     pop     ecx
006A9245   59                     pop     ecx
006A9246   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A9249   6856926A00             push    $006A9256
006A924E   C3                     ret


* Reference to: System.@HandleFinally;
|
006A924F   E9E4BAD5FF             jmp     00404D38
006A9254   EBF8                   jmp     006A924E

****** END
|
006A9256   33C0                   xor     eax, eax
006A9258   5A                     pop     edx
006A9259   59                     pop     ecx
006A925A   59                     pop     ecx
006A925B   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006A925E   6878926A00             push    $006A9278
006A9263   8D45F0                 lea     eax, [ebp-$10]
006A9266   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A926B   E850C2D5FF             call    004054C0
006A9270   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A924F(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A924F   E9E4BAD5FF             jmp     00404D38

|
006A9254   EBF8                   jmp     006A924E
006A9256   33C0                   xor     eax, eax
006A9258   5A                     pop     edx
006A9259   59                     pop     ecx
006A925A   59                     pop     ecx
006A925B   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006A925E   6878926A00             push    $006A9278
006A9263   8D45F0                 lea     eax, [ebp-$10]
006A9266   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A926B   E850C2D5FF             call    004054C0
006A9270   C3                     ret


* Reference to: System.@HandleFinally;
|
006A9271   E9C2BAD5FF             jmp     00404D38
006A9276   EBEB                   jmp     006A9263

****** END
|
006A9278   8A45FF                 mov     al, byte ptr [ebp-$01]
006A927B   5F                     pop     edi
006A927C   5E                     pop     esi
006A927D   5B                     pop     ebx
006A927E   8BE5                   mov     esp, ebp
006A9280   5D                     pop     ebp
006A9281   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A9325(Sender : TObject);
begin
(*
006A9325   53                     push    ebx
006A9326   42                     inc     edx
006A9327   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A9391(Sender : TObject);
begin
(*
006A9391   8BEC                   mov     ebp, esp
006A9393   83C4F8                 add     esp, -$08
006A9396   53                     push    ebx
006A9397   56                     push    esi
006A9398   57                     push    edi
006A9399   33C0                   xor     eax, eax
006A939B   8945F8                 mov     [ebp-$08], eax
006A939E   33C0                   xor     eax, eax
006A93A0   55                     push    ebp

* Possible String Reference to: 'éÓ¸ÕÿëðŠEÿ_^[YY]Ã'
|
006A93A1   6860946A00             push    $006A9460

***** TRY
|
006A93A6   64FF30                 push    dword ptr fs:[eax]
006A93A9   648920                 mov     fs:[eax], esp
006A93AC   C645FF00               mov     byte ptr [ebp-$01], $00
006A93B0   33D2                   xor     edx, edx
006A93B2   55                     push    ebp
006A93B3   6843946A00             push    $006A9443

***** TRY
|
006A93B8   64FF32                 push    dword ptr fs:[edx]
006A93BB   648922                 mov     fs:[edx], esp
006A93BE   33D2                   xor     edx, edx
006A93C0   55                     push    ebp
006A93C1   68FA936A00             push    $006A93FA

***** TRY
|
006A93C6   64FF32                 push    dword ptr fs:[edx]
006A93C9   648922                 mov     fs:[edx], esp

* Reference to: Mp2032.FechaPorta()
|
006A93CC   E887EDFFFF             call    006A8158
006A93D1   85C0                   test    eax, eax
006A93D3   7F17                   jnle    006A93EC
006A93D5   6A00                   push    $00
006A93D7   668B0D74946A00         mov     cx, word ptr [$006A9474]
006A93DE   B201                   mov     dl, $01

* Possible String Reference to: 'Problemas ao fechar a porta de Comu
|                                nicação.'
|
006A93E0   B880946A00             mov     eax, $006A9480

|
006A93E5   E842A7D9FF             call    00443B2C
006A93EA   EB04                   jmp     006A93F0
006A93EC   C645FF01               mov     byte ptr [ebp-$01], $01
006A93F0   33C0                   xor     eax, eax
006A93F2   5A                     pop     edx
006A93F3   59                     pop     ecx
006A93F4   59                     pop     ecx
006A93F5   648910                 mov     fs:[eax], edx
006A93F8   EB3B                   jmp     006A9435

* Reference to: System.@HandleOnException;
|
006A93FA   E9B1B7D5FF             jmp     00404BB0
006A93FF   0100                   add     [eax], eax
006A9401   0000                   add     [eax], al
006A9403   40                     inc     eax
006A9404   95                     xchg    eax, ebp
006A9405   40                     inc     eax
006A9406   000B                   add     [ebx], cl
006A9408   94                     xchg    eax, esp
006A9409   6A00                   push    $00
006A940B   89C3                   mov     ebx, eax
006A940D   6A00                   push    $00
006A940F   8B4B04                 mov     ecx, [ebx+$04]
006A9412   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Erro ao fechar a porta da impressor
|                                a!'
|
006A9415   BAB4946A00             mov     edx, $006A94B4

* Reference to: System.@LStrCat3;
|
006A941A   E889C3D5FF             call    004057A8
006A941F   8B45F8                 mov     eax, [ebp-$08]
006A9422   668B0D74946A00         mov     cx, word ptr [$006A9474]
006A9429   B201                   mov     dl, $01

|
006A942B   E8FCA6D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006A9430   E87BBAD5FF             call    00404EB0

****** END
|
006A9435   33C0                   xor     eax, eax
006A9437   5A                     pop     edx
006A9438   59                     pop     ecx
006A9439   59                     pop     ecx
006A943A   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A943D   684A946A00             push    $006A944A
006A9442   C3                     ret


* Reference to: System.@HandleFinally;
|
006A9443   E9F0B8D5FF             jmp     00404D38
006A9448   EBF8                   jmp     006A9442

****** END
|
006A944A   33C0                   xor     eax, eax
006A944C   5A                     pop     edx
006A944D   59                     pop     ecx
006A944E   59                     pop     ecx
006A944F   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
006A9452   6867946A00             push    $006A9467
006A9457   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006A945A   E83DC0D5FF             call    0040549C
006A945F   C3                     ret


* Reference to: System.@HandleFinally;
|
006A9460   E9D3B8D5FF             jmp     00404D38
006A9465   EBF0                   jmp     006A9457

****** END
|
006A9467   8A45FF                 mov     al, byte ptr [ebp-$01]
006A946A   5F                     pop     edi
006A946B   5E                     pop     esi
006A946C   5B                     pop     ebx
006A946D   59                     pop     ecx
006A946E   59                     pop     ecx
006A946F   5D                     pop     ebp
006A9470   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A9443(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006A9443   E9F0B8D5FF             jmp     00404D38

|
006A9448   EBF8                   jmp     006A9442
006A944A   33C0                   xor     eax, eax
006A944C   5A                     pop     edx
006A944D   59                     pop     ecx
006A944E   59                     pop     ecx
006A944F   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
006A9452   6867946A00             push    $006A9467
006A9457   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006A945A   E83DC0D5FF             call    0040549C
006A945F   C3                     ret


* Reference to: System.@HandleFinally;
|
006A9460   E9D3B8D5FF             jmp     00404D38
006A9465   EBF0                   jmp     006A9457

****** END
|
006A9467   8A45FF                 mov     al, byte ptr [ebp-$01]
006A946A   5F                     pop     edi
006A946B   5E                     pop     esi
006A946C   5B                     pop     ebx
006A946D   59                     pop     ecx
006A946E   59                     pop     ecx
006A946F   5D                     pop     ebp
006A9470   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A94DD(Sender : TObject);
begin
(*
006A94DD   8BEC                   mov     ebp, esp
006A94DF   B914000000             mov     ecx, $00000014
006A94E4   6A00                   push    $00
006A94E6   6A00                   push    $00
006A94E8   49                     dec     ecx
006A94E9   75F9                   jnz     006A94E4
006A94EB   51                     push    ecx
006A94EC   53                     push    ebx
006A94ED   56                     push    esi
006A94EE   57                     push    edi
006A94EF   8BD8                   mov     ebx, eax
006A94F1   8B3D7CB37D00           mov     edi, [$007DB37C]
006A94F7   33C0                   xor     eax, eax
006A94F9   55                     push    ebp

* Possible String Reference to: 'éÈ³Õÿë³_^[‹å]Ã'
|
006A94FA   686B996A00             push    $006A996B

***** TRY
|
006A94FF   64FF30                 push    dword ptr fs:[eax]
006A9502   648920                 mov     fs:[eax], esp
006A9505   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006A9507   E890BFD5FF             call    0040549C
006A950C   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006A9511   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006A9513   BA84996A00             mov     edx, $006A9984

* Reference to: System.@LStrCmp;
|
006A9518   E88BC3D5FF             call    004058A8
006A951D   0F85E9030000           jnz     006A990C
006A9523   8B07                   mov     eax, [edi]
006A9525   8B80C8000000           mov     eax, [eax+$00C8]
006A952B   8B10                   mov     edx, [eax]
006A952D   FF5258                 call    dword ptr [edx+$58]
006A9530   8BF0                   mov     esi, eax
006A9532   A1B8B47D00             mov     eax, dword ptr [$007DB4B8]
006A9537   803800                 cmp     byte ptr [eax], $00
006A953A   744B                   jz      006A9587
006A953C   8B07                   mov     eax, [edi]
006A953E   8B8084000000           mov     eax, [eax+$0084]
006A9544   8B10                   mov     edx, [eax]
006A9546   FF5258                 call    dword ptr [edx+$58]
006A9549   83F80D                 cmp     eax, +$0D
006A954C   7C39                   jl      006A9587

* Possible String Reference to: 'esquerda'
|
006A954E   6894996A00             push    $006A9994
006A9553   8D45FC                 lea     eax, [ebp-$04]
006A9556   50                     push    eax
006A9557   8D55E0                 lea     edx, [ebp-$20]
006A955A   8B07                   mov     eax, [edi]
006A955C   8B80EC000000           mov     eax, [eax+$00EC]
006A9562   8B08                   mov     ecx, [eax]
006A9564   FF5160                 call    dword ptr [ecx+$60]
006A9567   8B45E0                 mov     eax, [ebp-$20]
006A956A   50                     push    eax
006A956B   8B07                   mov     eax, [edi]
006A956D   8B8084000000           mov     eax, [eax+$0084]
006A9573   8B10                   mov     edx, [eax]
006A9575   FF5258                 call    dword ptr [edx+$58]
006A9578   8BC8                   mov     ecx, eax
006A957A   B8A8996A00             mov     eax, $006A99A8
006A957F   5A                     pop     edx

|
006A9580   E843910F00             call    007A26C8
006A9585   EB37                   jmp     006A95BE

* Possible String Reference to: 'esquerda'
|
006A9587   6894996A00             push    $006A9994
006A958C   8D45FC                 lea     eax, [ebp-$04]
006A958F   50                     push    eax
006A9590   8D55DC                 lea     edx, [ebp-$24]
006A9593   8B07                   mov     eax, [edi]
006A9595   8B80E8000000           mov     eax, [eax+$00E8]
006A959B   8B08                   mov     ecx, [eax]
006A959D   FF5160                 call    dword ptr [ecx+$60]
006A95A0   8B45DC                 mov     eax, [ebp-$24]
006A95A3   50                     push    eax
006A95A4   8B07                   mov     eax, [edi]
006A95A6   8B8084000000           mov     eax, [eax+$0084]
006A95AC   8B10                   mov     edx, [eax]
006A95AE   FF5258                 call    dword ptr [edx+$58]
006A95B1   8BC8                   mov     ecx, eax
006A95B3   B8A8996A00             mov     eax, $006A99A8
006A95B8   5A                     pop     edx

|
006A95B9   E80A910F00             call    007A26C8

* Possible String Reference to: 'esquerda'
|
006A95BE   6894996A00             push    $006A9994
006A95C3   8D45F8                 lea     eax, [ebp-$08]
006A95C6   50                     push    eax
006A95C7   8D55D4                 lea     edx, [ebp-$2C]
006A95CA   8B07                   mov     eax, [edi]
006A95CC   8B80CC000000           mov     eax, [eax+$00CC]
006A95D2   8B08                   mov     ecx, [eax]
006A95D4   FF5160                 call    dword ptr [ecx+$60]
006A95D7   8B45D4                 mov     eax, [ebp-$2C]
006A95DA   8D55D8                 lea     edx, [ebp-$28]

* Reference to : TFrmInfoAtu._PROC_007A0A38()
|
006A95DD   E856740F00             call    007A0A38
006A95E2   8B45D8                 mov     eax, [ebp-$28]
006A95E5   50                     push    eax
006A95E6   8B07                   mov     eax, [edi]
006A95E8   8B8098000000           mov     eax, [eax+$0098]
006A95EE   8B10                   mov     edx, [eax]
006A95F0   FF5258                 call    dword ptr [edx+$58]
006A95F3   8BC8                   mov     ecx, eax
006A95F5   B8A8996A00             mov     eax, $006A99A8
006A95FA   5A                     pop     edx

|
006A95FB   E8C8900F00             call    007A26C8
006A9600   8D45C4                 lea     eax, [ebp-$3C]
006A9603   50                     push    eax

* Possible String Reference to: 'direita'
|
006A9604   68B4996A00             push    $006A99B4
006A9609   8D45B0                 lea     eax, [ebp-$50]
006A960C   50                     push    eax
006A960D   8D55A8                 lea     edx, [ebp-$58]
006A9610   B8C4996A00             mov     eax, $006A99C4

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006A9615   E86AA20F00             call    007A3884
006A961A   8B45A8                 mov     eax, [ebp-$58]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006A961D   E8CA3FD6FF             call    0040D5EC
006A9622   83C4F4                 add     esp, -$0C
006A9625   DB3C24                 fstp    tbyte ptr [esp]
006A9628   9B                     wait
006A9629   8D55AC                 lea     edx, [ebp-$54]

* Possible String Reference to: '#.###'
|
006A962C   B8D0996A00             mov     eax, $006A99D0

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006A9631   E8063FD6FF             call    0040D53C
006A9636   8B45AC                 mov     eax, [ebp-$54]
006A9639   50                     push    eax
006A963A   8B07                   mov     eax, [edi]
006A963C   8B8080000000           mov     eax, [eax+$0080]
006A9642   8B10                   mov     edx, [eax]
006A9644   FF5258                 call    dword ptr [edx+$58]
006A9647   8BC8                   mov     ecx, eax
006A9649   B8A8996A00             mov     eax, $006A99A8
006A964E   5A                     pop     edx

|
006A964F   E874900F00             call    007A26C8
006A9654   8B55B0                 mov     edx, [ebp-$50]
006A9657   8D45B4                 lea     eax, [ebp-$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006A965A   E865F6D6FF             call    00418CC4
006A965F   8D45B4                 lea     eax, [ebp-$4C]
006A9662   50                     push    eax
006A9663   8D4598                 lea     eax, [ebp-$68]
006A9666   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006A9668   E857F6D6FF             call    00418CC4
006A966D   8D4D98                 lea     ecx, [ebp-$68]
006A9670   33C0                   xor     eax, eax
006A9672   5A                     pop     edx

|
006A9673   E8F46C0F00             call    007A036C
006A9678   8D55C4                 lea     edx, [ebp-$3C]
006A967B   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
006A967E   E875E5D6FF             call    00417BF8

* Possible String Reference to: 'direita'
|
006A9683   68B4996A00             push    $006A99B4
006A9688   8D45F0                 lea     eax, [ebp-$10]
006A968B   50                     push    eax
006A968C   8D558C                 lea     edx, [ebp-$74]
006A968F   8B07                   mov     eax, [edi]
006A9691   8B80F4000000           mov     eax, [eax+$00F4]
006A9697   8B08                   mov     ecx, [eax]
006A9699   FF5160                 call    dword ptr [ecx+$60]
006A969C   8B458C                 mov     eax, [ebp-$74]
006A969F   8D5590                 lea     edx, [ebp-$70]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006A96A2   E8DDA10F00             call    007A3884
006A96A7   8B4590                 mov     eax, [ebp-$70]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006A96AA   E83D3FD6FF             call    0040D5EC
006A96AF   83C4F4                 add     esp, -$0C
006A96B2   DB3C24                 fstp    tbyte ptr [esp]
006A96B5   9B                     wait
006A96B6   8D5594                 lea     edx, [ebp-$6C]

* Possible String Reference to: '#,##0.###'
|
006A96B9   B8E0996A00             mov     eax, $006A99E0

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006A96BE   E8793ED6FF             call    0040D53C
006A96C3   8B4594                 mov     eax, [ebp-$6C]
006A96C6   50                     push    eax
006A96C7   8B07                   mov     eax, [edi]
006A96C9   8B808C000000           mov     eax, [eax+$008C]
006A96CF   8B10                   mov     edx, [eax]
006A96D1   FF5258                 call    dword ptr [edx+$58]
006A96D4   8BC8                   mov     ecx, eax
006A96D6   B8A8996A00             mov     eax, $006A99A8
006A96DB   5A                     pop     edx

|
006A96DC   E8E78F0F00             call    007A26C8

* Possible String Reference to: 'direita'
|
006A96E1   68B4996A00             push    $006A99B4
006A96E6   8D45EC                 lea     eax, [ebp-$14]
006A96E9   50                     push    eax
006A96EA   8D5584                 lea     edx, [ebp-$7C]
006A96ED   8B07                   mov     eax, [edi]
006A96EF   8B8020010000           mov     eax, [eax+$0120]
006A96F5   8B08                   mov     ecx, [eax]
006A96F7   FF5160                 call    dword ptr [ecx+$60]
006A96FA   8B4584                 mov     eax, [ebp-$7C]
006A96FD   8D5588                 lea     edx, [ebp-$78]

* Reference to : TFrmInfoAtu._PROC_007A0A38()
|
006A9700   E833730F00             call    007A0A38
006A9705   8B4588                 mov     eax, [ebp-$78]
006A9708   50                     push    eax
006A9709   8B07                   mov     eax, [edi]
006A970B   8B8088000000           mov     eax, [eax+$0088]
006A9711   8B10                   mov     edx, [eax]
006A9713   FF5258                 call    dword ptr [edx+$58]
006A9716   8BC8                   mov     ecx, eax
006A9718   B8A8996A00             mov     eax, $006A99A8
006A971D   5A                     pop     edx

|
006A971E   E8A58F0F00             call    007A26C8

* Possible String Reference to: 'direita'
|
006A9723   68B4996A00             push    $006A99B4
006A9728   8D45E8                 lea     eax, [ebp-$18]
006A972B   50                     push    eax
006A972C   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
006A9732   8B07                   mov     eax, [edi]
006A9734   8B80F8000000           mov     eax, [eax+$00F8]
006A973A   8B08                   mov     ecx, [eax]
006A973C   FF5160                 call    dword ptr [ecx+$60]
006A973F   8B8578FFFFFF           mov     eax, [ebp+$FFFFFF78]
006A9745   8D957CFFFFFF           lea     edx, [ebp+$FFFFFF7C]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006A974B   E834A10F00             call    007A3884
006A9750   8B857CFFFFFF           mov     eax, [ebp+$FFFFFF7C]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006A9756   E8913ED6FF             call    0040D5EC
006A975B   83C4F4                 add     esp, -$0C
006A975E   DB3C24                 fstp    tbyte ptr [esp]
006A9761   9B                     wait
006A9762   8D5580                 lea     edx, [ebp-$80]

* Possible String Reference to: '##,##0.00'
|
006A9765   B8F4996A00             mov     eax, $006A99F4

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006A976A   E8CD3DD6FF             call    0040D53C
006A976F   8B4580                 mov     eax, [ebp-$80]
006A9772   50                     push    eax
006A9773   8B07                   mov     eax, [edi]
006A9775   8B8090000000           mov     eax, [eax+$0090]
006A977B   8B10                   mov     edx, [eax]
006A977D   FF5258                 call    dword ptr [edx+$58]
006A9780   8BC8                   mov     ecx, eax
006A9782   B8A8996A00             mov     eax, $006A99A8
006A9787   5A                     pop     edx

|
006A9788   E83B8F0F00             call    007A26C8

* Possible String Reference to: 'direita'
|
006A978D   68B4996A00             push    $006A99B4
006A9792   8D45E4                 lea     eax, [ebp-$1C]
006A9795   50                     push    eax
006A9796   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
006A979C   8B07                   mov     eax, [edi]
006A979E   8B80C0010000           mov     eax, [eax+$01C0]
006A97A4   8B08                   mov     ecx, [eax]
006A97A6   FF5160                 call    dword ptr [ecx+$60]
006A97A9   8B856CFFFFFF           mov     eax, [ebp+$FFFFFF6C]
006A97AF   8D9570FFFFFF           lea     edx, [ebp+$FFFFFF70]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006A97B5   E8CAA00F00             call    007A3884
006A97BA   8B8570FFFFFF           mov     eax, [ebp+$FFFFFF70]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006A97C0   E8273ED6FF             call    0040D5EC
006A97C5   83C4F4                 add     esp, -$0C
006A97C8   DB3C24                 fstp    tbyte ptr [esp]
006A97CB   9B                     wait
006A97CC   8D9574FFFFFF           lea     edx, [ebp+$FFFFFF74]

* Possible String Reference to: '#,###,##0.00'
|
006A97D2   B8089A6A00             mov     eax, $006A9A08

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006A97D7   E8603DD6FF             call    0040D53C
006A97DC   8B8574FFFFFF           mov     eax, [ebp+$FFFFFF74]
006A97E2   50                     push    eax
006A97E3   8B07                   mov     eax, [edi]
006A97E5   8B8094000000           mov     eax, [eax+$0094]
006A97EB   8B10                   mov     edx, [eax]
006A97ED   FF5258                 call    dword ptr [edx+$58]
006A97F0   8BC8                   mov     ecx, eax
006A97F2   B8A8996A00             mov     eax, $006A99A8
006A97F7   5A                     pop     edx

|
006A97F8   E8CB8E0F00             call    007A26C8
006A97FD   8D8D68FFFFFF           lea     ecx, [ebp+$FFFFFF68]
006A9803   8B55F8                 mov     edx, [ebp-$08]
006A9806   8BC6                   mov     eax, esi

|
006A9808   E85FEAFFFF             call    006A826C
006A980D   8B45F0                 mov     eax, [ebp-$10]
006A9810   50                     push    eax
006A9811   8B45EC                 mov     eax, [ebp-$14]
006A9814   50                     push    eax
006A9815   8B45E8                 mov     eax, [ebp-$18]
006A9818   50                     push    eax
006A9819   8B45E4                 mov     eax, [ebp-$1C]
006A981C   50                     push    eax
006A981D   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
006A9823   50                     push    eax
006A9824   8B4DF4                 mov     ecx, [ebp-$0C]
006A9827   8B55FC                 mov     edx, [ebp-$04]
006A982A   8BC6                   mov     eax, esi

|
006A982C   E81BEBFFFF             call    006A834C
006A9831   A158A97D00             mov     eax, dword ptr [$007DA958]
006A9836   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006A9838   BA209A6A00             mov     edx, $006A9A20

* Reference to: System.@LStrCmp;
|
006A983D   E866C0D5FF             call    004058A8
006A9842   0F85B6000000           jnz     006A98FE
006A9848   A160ED7D00             mov     eax, dword ptr [$007DED60]
006A984D   50                     push    eax
006A984E   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006A9853   50                     push    eax
006A9854   A158ED7D00             mov     eax, dword ptr [$007DED58]
006A9859   50                     push    eax
006A985A   A154ED7D00             mov     eax, dword ptr [$007DED54]
006A985F   50                     push    eax
006A9860   A150ED7D00             mov     eax, dword ptr [$007DED50]
006A9865   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A9866   E865E9FFFF             call    006A81D0
006A986B   8D0440                 lea     eax, [eax+eax*2]
006A986E   8B154CED7D00           mov     edx, [$007DED4C]
006A9874   FF7482F8               push    dword ptr [edx+eax*4-$08]
006A9878   68349A6A00             push    $006A9A34
006A987D   68409A6A00             push    $006A9A40
006A9882   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
006A9888   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A988D   E88ABFD5FF             call    0040581C
006A9892   8B8560FFFFFF           mov     eax, [ebp+$FFFFFF60]
006A9898   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006A9899   E8C2E8FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006A989E   E8351A0000             call    006AB2D8
006A98A3   A160ED7D00             mov     eax, dword ptr [$007DED60]
006A98A8   50                     push    eax
006A98A9   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006A98AE   50                     push    eax
006A98AF   A158ED7D00             mov     eax, dword ptr [$007DED58]
006A98B4   50                     push    eax
006A98B5   A154ED7D00             mov     eax, dword ptr [$007DED54]
006A98BA   50                     push    eax
006A98BB   A150ED7D00             mov     eax, dword ptr [$007DED50]
006A98C0   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A98C1   E80AE9FFFF             call    006A81D0
006A98C6   8D0440                 lea     eax, [eax+eax*2]
006A98C9   8B154CED7D00           mov     edx, [$007DED4C]
006A98CF   FF748204               push    dword ptr [edx+eax*4+$04]
006A98D3   68349A6A00             push    $006A9A34
006A98D8   68409A6A00             push    $006A9A40
006A98DD   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]
006A98E3   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A98E8   E82FBFD5FF             call    0040581C
006A98ED   8B855CFFFFFF           mov     eax, [ebp+$FFFFFF5C]
006A98F3   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006A98F4   E867E8FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006A98F9   E8DA190000             call    006AB2D8
006A98FE   8BC3                   mov     eax, ebx

* Possible String Reference to: 'ITEM REGISTRADO...'
|
006A9900   BA4C9A6A00             mov     edx, $006A9A4C

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A9905   E8E6BBD5FF             call    004054F0
006A990A   EB0C                   jmp     006A9918
006A990C   8BC3                   mov     eax, ebx

* Possible String Reference to: 'IMPRESSORA NÃO TEM SUPORTE PARA IMP
|                                RESSÃO DOS!'
|
006A990E   BA689A6A00             mov     edx, $006A9A68

* Reference to: System.@LStrAsg(void;void;void;void);
|
006A9913   E8D8BBD5FF             call    004054F0
006A9918   33C0                   xor     eax, eax
006A991A   5A                     pop     edx
006A991B   59                     pop     ecx
006A991C   59                     pop     ecx
006A991D   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006A9920   6872996A00             push    $006A9972
006A9925   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]
006A992B   BA0F000000             mov     edx, $0000000F

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A9930   E88BBBD5FF             call    004054C0
006A9935   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006A9938   E83BACD6FF             call    00414578
006A993D   8D45A8                 lea     eax, [ebp-$58]
006A9940   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A9945   E876BBD5FF             call    004054C0
006A994A   8D45B4                 lea     eax, [ebp-$4C]

* Reference to object Variant
|
006A994D   8B1524114000           mov     edx, [$00401124]
006A9953   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006A9958   E83FC7D5FF             call    0040609C
006A995D   8D45D4                 lea     eax, [ebp-$2C]
006A9960   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A9965   E856BBD5FF             call    004054C0
006A996A   C3                     ret


* Reference to: System.@HandleFinally;
|
006A996B   E9C8B3D5FF             jmp     00404D38
006A9970   EBB3                   jmp     006A9925

****** END
|
006A9972   5F                     pop     edi
006A9973   5E                     pop     esi
006A9974   5B                     pop     ebx
006A9975   8BE5                   mov     esp, ebp
006A9977   5D                     pop     ebp
006A9978   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A9A7D(Sender : TObject);
begin
(*
006A9A7D   50                     push    eax
006A9A7E   4F                     dec     edi
006A9A7F   52                     push    edx
006A9A80   54                     push    esp
006A9A81   45                     inc     ebp
006A9A82   205041                 and     [eax+$41], dl
006A9A85   52                     push    edx
006A9A86   41                     inc     ecx
006A9A87   20494D                 and     [ecx+$4D], cl
006A9A8A   50                     push    eax
006A9A8B   52                     push    edx
006A9A8C   45                     inc     ebp
006A9A8D   53                     push    ebx
006A9A8E   53                     push    ebx
006A9A8F   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A9A90(Sender : TObject);
begin
(*
006A9A90   4F                     dec     edi
006A9A91   20444F53               and     [edi+ecx*2+$53], al
006A9A95   2100                   and     [eax], eax
006A9A97   00558B                 add     [ebp-$75], dl
006A9A9A   EC                     in      al, dx
006A9A9B   33C9                   xor     ecx, ecx
006A9A9D   51                     push    ecx
006A9A9E   51                     push    ecx
006A9A9F   51                     push    ecx
006A9AA0   51                     push    ecx
006A9AA1   51                     push    ecx
006A9AA2   51                     push    ecx
006A9AA3   51                     push    ecx
006A9AA4   51                     push    ecx
006A9AA5   53                     push    ebx
006A9AA6   56                     push    esi
006A9AA7   57                     push    edi
006A9AA8   8BDA                   mov     ebx, edx
006A9AAA   8BF0                   mov     esi, eax
006A9AAC   33C0                   xor     eax, eax
006A9AAE   55                     push    ebp

* Possible String Reference to: 'éç°Õÿëã_^[‹å]Ã'
|
006A9AAF   684C9C6A00             push    $006A9C4C

***** TRY
|
006A9AB4   64FF30                 push    dword ptr fs:[eax]
006A9AB7   648920                 mov     fs:[eax], esp
006A9ABA   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006A9ABC   E8DBB9D5FF             call    0040549C
006A9AC1   33DB                   xor     ebx, ebx
006A9AC3   55                     push    ebp
006A9AC4   68229C6A00             push    $006A9C22
006A9AC9   64FF33                 push    dword ptr fs:[ebx]
006A9ACC   648923                 mov     fs:[ebx], esp
006A9ACF   33DB                   xor     ebx, ebx
006A9AD1   55                     push    ebp
006A9AD2   680A9C6A00             push    $006A9C0A
006A9AD7   64FF33                 push    dword ptr fs:[ebx]
006A9ADA   648923                 mov     fs:[ebx], esp
006A9ADD   8D45FC                 lea     eax, [ebp-$04]
006A9AE0   50                     push    eax
006A9AE1   8D55F0                 lea     edx, [ebp-$10]
006A9AE4   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A9AE9   8B00                   mov     eax, [eax]
006A9AEB   8B80C0010000           mov     eax, [eax+$01C0]
006A9AF1   8B08                   mov     ecx, [eax]
006A9AF3   FF5160                 call    dword ptr [ecx+$60]
006A9AF6   8B45F0                 mov     eax, [ebp-$10]
006A9AF9   8D55F4                 lea     edx, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006A9AFC   E8839D0F00             call    007A3884
006A9B01   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006A9B04   E8E33AD6FF             call    0040D5EC
006A9B09   D80D5C9C6A00           fmul    dword ptr [$006A9C5C]
006A9B0F   83C4F4                 add     esp, -$0C
006A9B12   DB3C24                 fstp    tbyte ptr [esp]
006A9B15   9B                     wait
006A9B16   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: '#,###,###,##0.00'
|
006A9B19   B8689C6A00             mov     eax, $006A9C68

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006A9B1E   E8193AD6FF             call    0040D53C
006A9B23   8B45F8                 mov     eax, [ebp-$08]
006A9B26   50                     push    eax

* Possible String Reference to: 'ITEM '
|
006A9B27   68849C6A00             push    $006A9C84
006A9B2C   8975E4                 mov     [ebp-$1C], esi
006A9B2F   DB45E4                 fild    dword ptr [ebp-$1C]
006A9B32   83C4F4                 add     esp, -$0C
006A9B35   DB3C24                 fstp    tbyte ptr [esp]
006A9B38   9B                     wait
006A9B39   8D55E8                 lea     edx, [ebp-$18]

* Possible String Reference to: '000'
|
006A9B3C   B8949C6A00             mov     eax, $006A9C94

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006A9B41   E8F639D6FF             call    0040D53C
006A9B46   FF75E8                 push    dword ptr [ebp-$18]

* Possible String Reference to: ' CANCELADO'
|
006A9B49   68A09C6A00             push    $006A9CA0
006A9B4E   8D45EC                 lea     eax, [ebp-$14]
006A9B51   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A9B56   E8C1BCD5FF             call    0040581C
006A9B5B   8B55EC                 mov     edx, [ebp-$14]
006A9B5E   8BC6                   mov     eax, esi
006A9B60   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006A9B61   E8A2EAFFFF             call    006A8608
006A9B66   A158A97D00             mov     eax, dword ptr [$007DA958]
006A9B6B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006A9B6D   BAB49C6A00             mov     edx, $006A9CB4

* Reference to: System.@LStrCmp;
|
006A9B72   E831BDD5FF             call    004058A8
006A9B77   7557                   jnz     006A9BD0
006A9B79   A160ED7D00             mov     eax, dword ptr [$007DED60]
006A9B7E   50                     push    eax
006A9B7F   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006A9B84   50                     push    eax
006A9B85   A158ED7D00             mov     eax, dword ptr [$007DED58]
006A9B8A   50                     push    eax
006A9B8B   A154ED7D00             mov     eax, dword ptr [$007DED54]
006A9B90   50                     push    eax
006A9B91   A150ED7D00             mov     eax, dword ptr [$007DED50]
006A9B96   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A9B97   E834E6FFFF             call    006A81D0
006A9B9C   8D0440                 lea     eax, [eax+eax*2]
006A9B9F   8B154CED7D00           mov     edx, [$007DED4C]
006A9BA5   FF748204               push    dword ptr [edx+eax*4+$04]
006A9BA9   68C89C6A00             push    $006A9CC8
006A9BAE   68D49C6A00             push    $006A9CD4
006A9BB3   8D45E0                 lea     eax, [ebp-$20]
006A9BB6   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A9BBB   E85CBCD5FF             call    0040581C
006A9BC0   8B45E0                 mov     eax, [ebp-$20]
006A9BC3   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006A9BC4   E897E5FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006A9BC9   E80A170000             call    006AB2D8
006A9BCE   EB30                   jmp     006A9C00
006A9BD0   A14CED7D00             mov     eax, dword ptr [$007DED4C]

* Reference to: System.@DynArrayHigh;
|
006A9BD5   E822CED5FF             call    004069FC
006A9BDA   8BD0                   mov     edx, eax
006A9BDC   85D2                   test    edx, edx
006A9BDE   7C20                   jl      006A9C00
006A9BE0   42                     inc     edx
006A9BE1   33C0                   xor     eax, eax
006A9BE3   8D0C40                 lea     ecx, [eax+eax*2]
006A9BE6   8B1D4CED7D00           mov     ebx, [$007DED4C]
006A9BEC   3B348B                 cmp     esi, [ebx+ecx*4]
006A9BEF   750B                   jnz     006A9BFC
006A9BF1   8B1D4CED7D00           mov     ebx, [$007DED4C]
006A9BF7   C6448B0801             mov     byte ptr [ebx+ecx*4+$08], $01
006A9BFC   40                     inc     eax
006A9BFD   4A                     dec     edx
006A9BFE   75E3                   jnz     006A9BE3
006A9C00   33C0                   xor     eax, eax
006A9C02   5A                     pop     edx
006A9C03   59                     pop     ecx
006A9C04   59                     pop     ecx
006A9C05   648910                 mov     fs:[eax], edx
006A9C08   EB0A                   jmp     006A9C14

* Reference to: System.@HandleAnyException;
|
006A9C0A   E975AED5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006A9C0F   E89CB2D5FF             call    00404EB0

****** END
|
006A9C14   33C0                   xor     eax, eax
006A9C16   5A                     pop     edx
006A9C17   59                     pop     ecx
006A9C18   59                     pop     ecx
006A9C19   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A9C1C   68299C6A00             push    $006A9C29
006A9C21   C3                     ret


* Reference to: System.@HandleFinally;
|
006A9C22   E911B1D5FF             jmp     00404D38
006A9C27   EBF8                   jmp     006A9C21

****** END
|
006A9C29   33C0                   xor     eax, eax
006A9C2B   5A                     pop     edx
006A9C2C   59                     pop     ecx
006A9C2D   59                     pop     ecx
006A9C2E   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006A9C31   68539C6A00             push    $006A9C53
006A9C36   8D45E0                 lea     eax, [ebp-$20]

* Reference to: System.@LStrClr(void;void);
|
006A9C39   E85EB8D5FF             call    0040549C
006A9C3E   8D45E8                 lea     eax, [ebp-$18]
006A9C41   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A9C46   E875B8D5FF             call    004054C0
006A9C4B   C3                     ret


* Reference to: System.@HandleFinally;
|
006A9C4C   E9E7B0D5FF             jmp     00404D38
006A9C51   EBE3                   jmp     006A9C36

****** END
|
006A9C53   5F                     pop     edi
006A9C54   5E                     pop     esi
006A9C55   5B                     pop     ebx
006A9C56   8BE5                   mov     esp, ebp
006A9C58   5D                     pop     ebp
006A9C59   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A9CD9(Sender : TObject);
begin
(*
006A9CD9   8BEC                   mov     ebp, esp
006A9CDB   33C9                   xor     ecx, ecx
006A9CDD   51                     push    ecx
006A9CDE   51                     push    ecx
006A9CDF   51                     push    ecx
006A9CE0   51                     push    ecx
006A9CE1   51                     push    ecx
006A9CE2   51                     push    ecx
006A9CE3   51                     push    ecx
006A9CE4   53                     push    ebx
006A9CE5   56                     push    esi
006A9CE6   57                     push    edi
006A9CE7   8BD8                   mov     ebx, eax
006A9CE9   33C0                   xor     eax, eax
006A9CEB   55                     push    ebp
006A9CEC   68D29E6A00             push    $006A9ED2

***** TRY
|
006A9CF1   64FF30                 push    dword ptr fs:[eax]
006A9CF4   648920                 mov     fs:[eax], esp
006A9CF7   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006A9CF9   E89EB7D5FF             call    0040549C
006A9CFE   33C0                   xor     eax, eax
006A9D00   55                     push    ebp
006A9D01   68B09E6A00             push    $006A9EB0

***** TRY
|
006A9D06   64FF30                 push    dword ptr fs:[eax]
006A9D09   648920                 mov     fs:[eax], esp
006A9D0C   33C0                   xor     eax, eax
006A9D0E   55                     push    ebp
006A9D0F   68989E6A00             push    $006A9E98

***** TRY
|
006A9D14   64FF30                 push    dword ptr fs:[eax]
006A9D17   648920                 mov     fs:[eax], esp
006A9D1A   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006A9D1F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006A9D21   BAE89E6A00             mov     edx, $006A9EE8

* Reference to: System.@LStrCmp;
|
006A9D26   E87DBBD5FF             call    004058A8
006A9D2B   0F855D010000           jnz     006A9E8E

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A9D31   E89AE4FFFF             call    006A81D0
006A9D36   8BD8                   mov     ebx, eax
006A9D38   43                     inc     ebx

* Possible String Reference to: 'esquerda'
|
006A9D39   68F89E6A00             push    $006A9EF8
006A9D3E   8D45F8                 lea     eax, [ebp-$08]
006A9D41   50                     push    eax
006A9D42   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A9D47   8B00                   mov     eax, [eax]
006A9D49   8B8098000000           mov     eax, [eax+$0098]
006A9D4F   8B10                   mov     edx, [eax]
006A9D51   FF5258                 call    dword ptr [edx+$58]
006A9D54   8BC8                   mov     ecx, eax
006A9D56   BA0C9F6A00             mov     edx, $006A9F0C
006A9D5B   B80C9F6A00             mov     eax, $006A9F0C

|
006A9D60   E863890F00             call    007A26C8
006A9D65   8B55F8                 mov     edx, [ebp-$08]
006A9D68   8D4DFC                 lea     ecx, [ebp-$04]
006A9D6B   33C0                   xor     eax, eax

|
006A9D6D   E8FAE4FFFF             call    006A826C

* Reference to : TfrmGerenciador._PROC_006A81E0()
|
006A9D72   E869E4FFFF             call    006A81E0

* Reference to : TfrmGerenciador._PROC_006A81E0()
|
006A9D77   E864E4FFFF             call    006A81E0

|
006A9D7C   E81FE4FFFF             call    006A81A0

* Possible String Reference to: 'centro'
|
006A9D81   68189F6A00             push    $006A9F18
006A9D86   8D45F4                 lea     eax, [ebp-$0C]
006A9D89   50                     push    eax
006A9D8A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A9D8F   8B00                   mov     eax, [eax]
006A9D91   8B8098000000           mov     eax, [eax+$0098]
006A9D97   8B10                   mov     edx, [eax]
006A9D99   FF5258                 call    dword ptr [edx+$58]
006A9D9C   8BC8                   mov     ecx, eax

* Possible String Reference to: '*** CUPOM CANCELADO ***'
|
006A9D9E   BA289F6A00             mov     edx, $006A9F28
006A9DA3   B8489F6A00             mov     eax, $006A9F48

|
006A9DA8   E81B890F00             call    007A26C8
006A9DAD   8B45F4                 mov     eax, [ebp-$0C]
006A9DB0   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A9DB1   E81AE4FFFF             call    006A81D0
006A9DB6   8D0440                 lea     eax, [eax+eax*2]
006A9DB9   8B154CED7D00           mov     edx, [$007DED4C]
006A9DBF   8D448204               lea     eax, [edx+eax*4+$04]
006A9DC3   50                     push    eax
006A9DC4   8D45F0                 lea     eax, [ebp-$10]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
006A9DC7   E838E4FFFF             call    006A8204
006A9DCC   8B55F0                 mov     edx, [ebp-$10]
006A9DCF   58                     pop     eax
006A9DD0   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006A9DD1   E8D2B9D5FF             call    004057A8

* Reference to : TfrmGerenciador._PROC_006A81E0()
|
006A9DD6   E805E4FFFF             call    006A81E0

* Reference to : TfrmGerenciador._PROC_006A81E0()
|
006A9DDB   E800E4FFFF             call    006A81E0

* Possible String Reference to: 'esquerda'
|
006A9DE0   68F89E6A00             push    $006A9EF8
006A9DE5   8D45E8                 lea     eax, [ebp-$18]
006A9DE8   50                     push    eax
006A9DE9   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A9DEE   8B00                   mov     eax, [eax]
006A9DF0   8B8098000000           mov     eax, [eax+$0098]
006A9DF6   8B10                   mov     edx, [eax]
006A9DF8   FF5258                 call    dword ptr [edx+$58]
006A9DFB   8BC8                   mov     ecx, eax
006A9DFD   BA0C9F6A00             mov     edx, $006A9F0C
006A9E02   B80C9F6A00             mov     eax, $006A9F0C

|
006A9E07   E8BC880F00             call    007A26C8
006A9E0C   8B55E8                 mov     edx, [ebp-$18]
006A9E0F   8D4DEC                 lea     ecx, [ebp-$14]
006A9E12   33C0                   xor     eax, eax

|
006A9E14   E853E4FFFF             call    006A826C
006A9E19   A158A97D00             mov     eax, dword ptr [$007DA958]
006A9E1E   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006A9E20   BA549F6A00             mov     edx, $006A9F54

* Reference to: System.@LStrCmp;
|
006A9E25   E87EBAD5FF             call    004058A8
006A9E2A   7562                   jnz     006A9E8E
006A9E2C   8BF3                   mov     esi, ebx

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006A9E2E   E89DE3FFFF             call    006A81D0
006A9E33   8BD8                   mov     ebx, eax
006A9E35   2BDE                   sub     ebx, esi
006A9E37   7C55                   jl      006A9E8E
006A9E39   43                     inc     ebx
006A9E3A   A160ED7D00             mov     eax, dword ptr [$007DED60]
006A9E3F   50                     push    eax
006A9E40   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006A9E45   50                     push    eax
006A9E46   A158ED7D00             mov     eax, dword ptr [$007DED58]
006A9E4B   50                     push    eax
006A9E4C   A154ED7D00             mov     eax, dword ptr [$007DED54]
006A9E51   50                     push    eax
006A9E52   A150ED7D00             mov     eax, dword ptr [$007DED50]
006A9E57   50                     push    eax
006A9E58   8D0476                 lea     eax, [esi+esi*2]
006A9E5B   8B154CED7D00           mov     edx, [$007DED4C]
006A9E61   FF748204               push    dword ptr [edx+eax*4+$04]
006A9E65   68689F6A00             push    $006A9F68
006A9E6A   68749F6A00             push    $006A9F74
006A9E6F   8D45E4                 lea     eax, [ebp-$1C]
006A9E72   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006A9E77   E8A0B9D5FF             call    0040581C
006A9E7C   8B45E4                 mov     eax, [ebp-$1C]
006A9E7F   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006A9E80   E8DBE2FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006A9E85   E84E140000             call    006AB2D8
006A9E8A   46                     inc     esi
006A9E8B   4B                     dec     ebx
006A9E8C   75AC                   jnz     006A9E3A
006A9E8E   33C0                   xor     eax, eax
006A9E90   5A                     pop     edx
006A9E91   59                     pop     ecx
006A9E92   59                     pop     ecx
006A9E93   648910                 mov     fs:[eax], edx
006A9E96   EB0A                   jmp     006A9EA2

* Reference to: System.@HandleAnyException;
|
006A9E98   E9E7ABD5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006A9E9D   E80EB0D5FF             call    00404EB0

****** END
|
006A9EA2   33C0                   xor     eax, eax
006A9EA4   5A                     pop     edx
006A9EA5   59                     pop     ecx
006A9EA6   59                     pop     ecx
006A9EA7   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A9EAA   68B79E6A00             push    $006A9EB7
006A9EAF   C3                     ret


* Reference to: System.@HandleFinally;
|
006A9EB0   E983AED5FF             jmp     00404D38
006A9EB5   EBF8                   jmp     006A9EAF

****** END
|
006A9EB7   33C0                   xor     eax, eax
006A9EB9   5A                     pop     edx
006A9EBA   59                     pop     ecx
006A9EBB   59                     pop     ecx
006A9EBC   648910                 mov     fs:[eax], edx

****** FINALLY
|
006A9EBF   68D99E6A00             push    $006A9ED9
006A9EC4   8D45E4                 lea     eax, [ebp-$1C]
006A9EC7   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006A9ECC   E8EFB5D5FF             call    004054C0
006A9ED1   C3                     ret


* Reference to: System.@HandleFinally;
|
006A9ED2   E961AED5FF             jmp     00404D38
006A9ED7   EBEB                   jmp     006A9EC4

****** END
|
006A9ED9   5F                     pop     edi
006A9EDA   5E                     pop     esi
006A9EDB   5B                     pop     ebx
006A9EDC   8BE5                   mov     esp, ebp
006A9EDE   5D                     pop     ebp
006A9EDF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006A9F2E(Sender : TObject);
begin
(*
006A9F2E   50                     push    eax
006A9F2F   4F                     dec     edi
006A9F30   4D                     dec     ebp
006A9F31   204341                 and     [ebx+$41], al
006A9F34   4E                     dec     esi
006A9F35   43                     inc     ebx
006A9F36   45                     inc     ebp
006A9F37   4C                     dec     esp
006A9F38   41                     inc     ecx
006A9F39   44                     inc     esp
006A9F3A   4F                     dec     edi
006A9F3B   202A                   and     [edx], ch
006A9F3D   2A2A                   sub     ch, byte ptr [edx]
006A9F3F   00FF                   add     bh, bh
006A9F41   FFFF                   DB  $FF, $FF  //      
006A9F43   FF01                   inc     dword ptr [ecx]
006A9F45   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006A9F79(Sender : TObject);
begin
(*
006A9F79   8BEC                   mov     ebp, esp
006A9F7B   33C9                   xor     ecx, ecx
006A9F7D   51                     push    ecx
006A9F7E   51                     push    ecx
006A9F7F   51                     push    ecx
006A9F80   51                     push    ecx
006A9F81   51                     push    ecx
006A9F82   51                     push    ecx
006A9F83   53                     push    ebx
006A9F84   56                     push    esi
006A9F85   57                     push    edi
006A9F86   8BDA                   mov     ebx, edx
006A9F88   8BF0                   mov     esi, eax
006A9F8A   33C0                   xor     eax, eax
006A9F8C   55                     push    ebp
006A9F8D   68E2A06A00             push    $006AA0E2

***** TRY
|
006A9F92   64FF30                 push    dword ptr fs:[eax]
006A9F95   648920                 mov     fs:[eax], esp
006A9F98   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006A9F9A   E8FDB4D5FF             call    0040549C
006A9F9F   33C0                   xor     eax, eax
006A9FA1   55                     push    ebp
006A9FA2   68C0A06A00             push    $006AA0C0

***** TRY
|
006A9FA7   64FF30                 push    dword ptr fs:[eax]
006A9FAA   648920                 mov     fs:[eax], esp
006A9FAD   33C0                   xor     eax, eax
006A9FAF   55                     push    ebp
006A9FB0   68A8A06A00             push    $006AA0A8

***** TRY
|
006A9FB5   64FF30                 push    dword ptr fs:[eax]
006A9FB8   648920                 mov     fs:[eax], esp
006A9FBB   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006A9FC0   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006A9FC2   BAF8A06A00             mov     edx, $006AA0F8

* Reference to: System.@LStrCmp;
|
006A9FC7   E8DCB8D5FF             call    004058A8
006A9FCC   0F85CC000000           jnz     006AA09E
006A9FD2   8D45FC                 lea     eax, [ebp-$04]
006A9FD5   50                     push    eax
006A9FD6   8D55F0                 lea     edx, [ebp-$10]
006A9FD9   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006A9FDE   8B00                   mov     eax, [eax]
006A9FE0   8B80C0010000           mov     eax, [eax+$01C0]
006A9FE6   8B08                   mov     ecx, [eax]
006A9FE8   FF5160                 call    dword ptr [ecx+$60]
006A9FEB   8B45F0                 mov     eax, [ebp-$10]
006A9FEE   8D55F4                 lea     edx, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006A9FF1   E88E980F00             call    007A3884
006A9FF6   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006A9FF9   E8EE35D6FF             call    0040D5EC
006A9FFE   83C4F4                 add     esp, -$0C
006AA001   DB3C24                 fstp    tbyte ptr [esp]
006AA004   9B                     wait
006AA005   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: '#,###,###,##0.00'
|
006AA008   B808A16A00             mov     eax, $006AA108

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AA00D   E82A35D6FF             call    0040D53C
006AA012   8B45F8                 mov     eax, [ebp-$08]
006AA015   50                     push    eax
006AA016   8D55EC                 lea     edx, [ebp-$14]
006AA019   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA01E   8B00                   mov     eax, [eax]
006AA020   8B80CC000000           mov     eax, [eax+$00CC]
006AA026   8B08                   mov     ecx, [eax]
006AA028   FF5160                 call    dword ptr [ecx+$60]
006AA02B   8B55EC                 mov     edx, [ebp-$14]
006AA02E   8BC6                   mov     eax, esi
006AA030   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006AA031   E8D2E5FFFF             call    006A8608
006AA036   A158A97D00             mov     eax, dword ptr [$007DA958]
006AA03B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AA03D   BA24A16A00             mov     edx, $006AA124

* Reference to: System.@LStrCmp;
|
006AA042   E861B8D5FF             call    004058A8
006AA047   7555                   jnz     006AA09E
006AA049   A160ED7D00             mov     eax, dword ptr [$007DED60]
006AA04E   50                     push    eax
006AA04F   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006AA054   50                     push    eax
006AA055   A158ED7D00             mov     eax, dword ptr [$007DED58]
006AA05A   50                     push    eax
006AA05B   A154ED7D00             mov     eax, dword ptr [$007DED54]
006AA060   50                     push    eax
006AA061   A150ED7D00             mov     eax, dword ptr [$007DED50]
006AA066   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AA067   E864E1FFFF             call    006A81D0
006AA06C   8D0440                 lea     eax, [eax+eax*2]
006AA06F   8B154CED7D00           mov     edx, [$007DED4C]
006AA075   FF748204               push    dword ptr [edx+eax*4+$04]
006AA079   6838A16A00             push    $006AA138
006AA07E   6844A16A00             push    $006AA144
006AA083   8D45E8                 lea     eax, [ebp-$18]
006AA086   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AA08B   E88CB7D5FF             call    0040581C
006AA090   8B45E8                 mov     eax, [ebp-$18]
006AA093   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006AA094   E8C7E0FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006AA099   E83A120000             call    006AB2D8
006AA09E   33C0                   xor     eax, eax
006AA0A0   5A                     pop     edx
006AA0A1   59                     pop     ecx
006AA0A2   59                     pop     ecx
006AA0A3   648910                 mov     fs:[eax], edx
006AA0A6   EB0A                   jmp     006AA0B2

* Reference to: System.@HandleAnyException;
|
006AA0A8   E9D7A9D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AA0AD   E8FEADD5FF             call    00404EB0

****** END
|
006AA0B2   33C0                   xor     eax, eax
006AA0B4   5A                     pop     edx
006AA0B5   59                     pop     ecx
006AA0B6   59                     pop     ecx
006AA0B7   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AA0BA   68C7A06A00             push    $006AA0C7
006AA0BF   C3                     ret


* Reference to: System.@HandleFinally;
|
006AA0C0   E973ACD5FF             jmp     00404D38
006AA0C5   EBF8                   jmp     006AA0BF

****** END
|
006AA0C7   33C0                   xor     eax, eax
006AA0C9   5A                     pop     edx
006AA0CA   59                     pop     ecx
006AA0CB   59                     pop     ecx
006AA0CC   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AA0CF   68E9A06A00             push    $006AA0E9
006AA0D4   8D45E8                 lea     eax, [ebp-$18]
006AA0D7   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AA0DC   E8DFB3D5FF             call    004054C0
006AA0E1   C3                     ret


* Reference to: System.@HandleFinally;
|
006AA0E2   E951ACD5FF             jmp     00404D38
006AA0E7   EBEB                   jmp     006AA0D4

****** END
|
006AA0E9   5F                     pop     edi
006AA0EA   5E                     pop     esi
006AA0EB   5B                     pop     ebx
006AA0EC   8BE5                   mov     esp, ebp
006AA0EE   5D                     pop     ebp
006AA0EF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AA149(Sender : TObject);
begin
(*
006AA149   8BEC                   mov     ebp, esp
006AA14B   33C9                   xor     ecx, ecx
006AA14D   51                     push    ecx
006AA14E   51                     push    ecx
006AA14F   51                     push    ecx
006AA150   51                     push    ecx
006AA151   51                     push    ecx
006AA152   51                     push    ecx
006AA153   51                     push    ecx
006AA154   51                     push    ecx
006AA155   53                     push    ebx
006AA156   56                     push    esi
006AA157   57                     push    edi
006AA158   8BD8                   mov     ebx, eax
006AA15A   33C0                   xor     eax, eax
006AA15C   55                     push    ebp

* Possible String Reference to: 'é3ªÕÿëë_^[‹å]Ã'
|
006AA15D   6800A36A00             push    $006AA300

***** TRY
|
006AA162   64FF30                 push    dword ptr fs:[eax]
006AA165   648920                 mov     fs:[eax], esp
006AA168   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006AA16A   E82DB3D5FF             call    0040549C
006AA16F   33C0                   xor     eax, eax
006AA171   55                     push    ebp
006AA172   68DEA26A00             push    $006AA2DE

***** TRY
|
006AA177   64FF30                 push    dword ptr fs:[eax]
006AA17A   648920                 mov     fs:[eax], esp
006AA17D   33C0                   xor     eax, eax
006AA17F   55                     push    ebp
006AA180   68C6A26A00             push    $006AA2C6

***** TRY
|
006AA185   64FF30                 push    dword ptr fs:[eax]
006AA188   648920                 mov     fs:[eax], esp
006AA18B   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AA190   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006AA192   BA18A36A00             mov     edx, $006AA318

* Reference to: System.@LStrCmp;
|
006AA197   E80CB7D5FF             call    004058A8
006AA19C   0F851A010000           jnz     006AA2BC

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AA1A2   E829E0FFFF             call    006A81D0
006AA1A7   8BD8                   mov     ebx, eax
006AA1A9   43                     inc     ebx
006AA1AA   8D45FC                 lea     eax, [ebp-$04]
006AA1AD   50                     push    eax
006AA1AE   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA1B3   8B00                   mov     eax, [eax]
006AA1B5   8B80C0010000           mov     eax, [eax+$01C0]
006AA1BB   8B10                   mov     edx, [eax]
006AA1BD   FF5254                 call    dword ptr [edx+$54]
006AA1C0   83C4F4                 add     esp, -$0C
006AA1C3   DB3C24                 fstp    tbyte ptr [esp]
006AA1C6   9B                     wait
006AA1C7   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: '#,###,###,##0.00'
|
006AA1CA   B828A36A00             mov     eax, $006AA328

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AA1CF   E86833D6FF             call    0040D53C
006AA1D4   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: 'SUBTOTAL'
|
006AA1D7   BA44A36A00             mov     edx, $006AA344
006AA1DC   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006AA1DE   E825E4FFFF             call    006A8608
006AA1E3   8D45F4                 lea     eax, [ebp-$0C]
006AA1E6   50                     push    eax
006AA1E7   8D55E8                 lea     edx, [ebp-$18]
006AA1EA   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA1EF   8B00                   mov     eax, [eax]
006AA1F1   8B80C0010000           mov     eax, [eax+$01C0]
006AA1F7   8B08                   mov     ecx, [eax]
006AA1F9   FF5160                 call    dword ptr [ecx+$60]
006AA1FC   8B45E8                 mov     eax, [ebp-$18]
006AA1FF   8D55EC                 lea     edx, [ebp-$14]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006AA202   E87D960F00             call    007A3884
006AA207   8B45EC                 mov     eax, [ebp-$14]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AA20A   E8DD33D6FF             call    0040D5EC
006AA20F   83C4F4                 add     esp, -$0C
006AA212   DB3C24                 fstp    tbyte ptr [esp]
006AA215   9B                     wait
006AA216   8D55F0                 lea     edx, [ebp-$10]

* Possible String Reference to: '#,###,###,##0.00'
|
006AA219   B828A36A00             mov     eax, $006AA328

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AA21E   E81933D6FF             call    0040D53C
006AA223   8B45F0                 mov     eax, [ebp-$10]
006AA226   50                     push    eax
006AA227   8D55E4                 lea     edx, [ebp-$1C]
006AA22A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA22F   8B00                   mov     eax, [eax]
006AA231   8B80CC000000           mov     eax, [eax+$00CC]
006AA237   8B08                   mov     ecx, [eax]
006AA239   FF5160                 call    dword ptr [ecx+$60]
006AA23C   8B55E4                 mov     edx, [ebp-$1C]
006AA23F   33C0                   xor     eax, eax
006AA241   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006AA242   E8C1E3FFFF             call    006A8608
006AA247   A158A97D00             mov     eax, dword ptr [$007DA958]
006AA24C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AA24E   BA58A36A00             mov     edx, $006AA358

* Reference to: System.@LStrCmp;
|
006AA253   E850B6D5FF             call    004058A8
006AA258   7562                   jnz     006AA2BC
006AA25A   8BF3                   mov     esi, ebx

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AA25C   E86FDFFFFF             call    006A81D0
006AA261   8BD8                   mov     ebx, eax
006AA263   2BDE                   sub     ebx, esi
006AA265   7C55                   jl      006AA2BC
006AA267   43                     inc     ebx
006AA268   A160ED7D00             mov     eax, dword ptr [$007DED60]
006AA26D   50                     push    eax
006AA26E   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006AA273   50                     push    eax
006AA274   A158ED7D00             mov     eax, dword ptr [$007DED58]
006AA279   50                     push    eax
006AA27A   A154ED7D00             mov     eax, dword ptr [$007DED54]
006AA27F   50                     push    eax
006AA280   A150ED7D00             mov     eax, dword ptr [$007DED50]
006AA285   50                     push    eax
006AA286   8D0476                 lea     eax, [esi+esi*2]
006AA289   8B154CED7D00           mov     edx, [$007DED4C]
006AA28F   FF748204               push    dword ptr [edx+eax*4+$04]
006AA293   686CA36A00             push    $006AA36C
006AA298   6878A36A00             push    $006AA378
006AA29D   8D45E0                 lea     eax, [ebp-$20]
006AA2A0   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AA2A5   E872B5D5FF             call    0040581C
006AA2AA   8B45E0                 mov     eax, [ebp-$20]
006AA2AD   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006AA2AE   E8ADDEFFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006AA2B3   E820100000             call    006AB2D8
006AA2B8   46                     inc     esi
006AA2B9   4B                     dec     ebx
006AA2BA   75AC                   jnz     006AA268
006AA2BC   33C0                   xor     eax, eax
006AA2BE   5A                     pop     edx
006AA2BF   59                     pop     ecx
006AA2C0   59                     pop     ecx
006AA2C1   648910                 mov     fs:[eax], edx
006AA2C4   EB0A                   jmp     006AA2D0

* Reference to: System.@HandleAnyException;
|
006AA2C6   E9B9A7D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AA2CB   E8E0ABD5FF             call    00404EB0

****** END
|
006AA2D0   33C0                   xor     eax, eax
006AA2D2   5A                     pop     edx
006AA2D3   59                     pop     ecx
006AA2D4   59                     pop     ecx
006AA2D5   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AA2D8   68E5A26A00             push    $006AA2E5
006AA2DD   C3                     ret


* Reference to: System.@HandleFinally;
|
006AA2DE   E955AAD5FF             jmp     00404D38
006AA2E3   EBF8                   jmp     006AA2DD

****** END
|
006AA2E5   33C0                   xor     eax, eax
006AA2E7   5A                     pop     edx
006AA2E8   59                     pop     ecx
006AA2E9   59                     pop     ecx
006AA2EA   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006AA2ED   6807A36A00             push    $006AA307
006AA2F2   8D45E0                 lea     eax, [ebp-$20]
006AA2F5   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AA2FA   E8C1B1D5FF             call    004054C0
006AA2FF   C3                     ret


* Reference to: System.@HandleFinally;
|
006AA300   E933AAD5FF             jmp     00404D38
006AA305   EBEB                   jmp     006AA2F2

****** END
|
006AA307   5F                     pop     edi
006AA308   5E                     pop     esi
006AA309   5B                     pop     ebx
006AA30A   8BE5                   mov     esp, ebp
006AA30C   5D                     pop     ebp
006AA30D   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AA346(Sender : TObject);
begin
(*
006AA346   42                     inc     edx
006AA347   54                     push    esp
006AA348   4F                     dec     edi
006AA349   54                     push    esp
006AA34A   41                     inc     ecx
006AA34B   4C                     dec     esp
006AA34C   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AA37D(Sender : TObject);
begin
(*
006AA37D   8BEC                   mov     ebp, esp
006AA37F   33C9                   xor     ecx, ecx
006AA381   51                     push    ecx
006AA382   51                     push    ecx
006AA383   51                     push    ecx
006AA384   51                     push    ecx
006AA385   51                     push    ecx
006AA386   51                     push    ecx
006AA387   51                     push    ecx
006AA388   51                     push    ecx
006AA389   53                     push    ebx
006AA38A   56                     push    esi
006AA38B   57                     push    edi
006AA38C   8BD8                   mov     ebx, eax
006AA38E   33C0                   xor     eax, eax
006AA390   55                     push    ebp
006AA391   682AA56A00             push    $006AA52A

***** TRY
|
006AA396   64FF30                 push    dword ptr fs:[eax]
006AA399   648920                 mov     fs:[eax], esp
006AA39C   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006AA39E   E8F9B0D5FF             call    0040549C
006AA3A3   33C0                   xor     eax, eax
006AA3A5   55                     push    ebp
006AA3A6   6808A56A00             push    $006AA508

***** TRY
|
006AA3AB   64FF30                 push    dword ptr fs:[eax]
006AA3AE   648920                 mov     fs:[eax], esp
006AA3B1   33C0                   xor     eax, eax
006AA3B3   55                     push    ebp
006AA3B4   68F0A46A00             push    $006AA4F0

***** TRY
|
006AA3B9   64FF30                 push    dword ptr fs:[eax]
006AA3BC   648920                 mov     fs:[eax], esp
006AA3BF   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AA3C4   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006AA3C6   BA40A56A00             mov     edx, $006AA540

* Reference to: System.@LStrCmp;
|
006AA3CB   E8D8B4D5FF             call    004058A8
006AA3D0   0F8510010000           jnz     006AA4E6

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AA3D6   E8F5DDFFFF             call    006A81D0
006AA3DB   8BD8                   mov     ebx, eax
006AA3DD   43                     inc     ebx
006AA3DE   8D45FC                 lea     eax, [ebp-$04]
006AA3E1   50                     push    eax
006AA3E2   A130B57D00             mov     eax, dword ptr [$007DB530]
006AA3E7   668B5008               mov     dx, word ptr [eax+$08]
006AA3EB   52                     push    edx
006AA3EC   FF7004                 push    dword ptr [eax+$04]
006AA3EF   FF30                   push    dword ptr [eax]
006AA3F1   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: '#,###,###,##0.00'
|
006AA3F4   B850A56A00             mov     eax, $006AA550

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AA3F9   E83E31D6FF             call    0040D53C
006AA3FE   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: 'SUBTOTAL'
|
006AA401   BA6CA56A00             mov     edx, $006AA56C
006AA406   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006AA408   E8FBE1FFFF             call    006A8608
006AA40D   8D45F4                 lea     eax, [ebp-$0C]
006AA410   50                     push    eax
006AA411   8D55E8                 lea     edx, [ebp-$18]
006AA414   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA419   8B00                   mov     eax, [eax]
006AA41B   8B80C0010000           mov     eax, [eax+$01C0]
006AA421   8B08                   mov     ecx, [eax]
006AA423   FF5160                 call    dword ptr [ecx+$60]
006AA426   8B45E8                 mov     eax, [ebp-$18]
006AA429   8D55EC                 lea     edx, [ebp-$14]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006AA42C   E853940F00             call    007A3884
006AA431   8B45EC                 mov     eax, [ebp-$14]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AA434   E8B331D6FF             call    0040D5EC
006AA439   83C4F4                 add     esp, -$0C
006AA43C   DB3C24                 fstp    tbyte ptr [esp]
006AA43F   9B                     wait
006AA440   8D55F0                 lea     edx, [ebp-$10]

* Possible String Reference to: '#,###,###,##0.00'
|
006AA443   B850A56A00             mov     eax, $006AA550

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AA448   E8EF30D6FF             call    0040D53C
006AA44D   8B45F0                 mov     eax, [ebp-$10]
006AA450   50                     push    eax
006AA451   8D55E4                 lea     edx, [ebp-$1C]
006AA454   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA459   8B00                   mov     eax, [eax]
006AA45B   8B80CC000000           mov     eax, [eax+$00CC]
006AA461   8B08                   mov     ecx, [eax]
006AA463   FF5160                 call    dword ptr [ecx+$60]
006AA466   8B55E4                 mov     edx, [ebp-$1C]
006AA469   33C0                   xor     eax, eax
006AA46B   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006AA46C   E897E1FFFF             call    006A8608
006AA471   A158A97D00             mov     eax, dword ptr [$007DA958]
006AA476   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AA478   BA80A56A00             mov     edx, $006AA580

* Reference to: System.@LStrCmp;
|
006AA47D   E826B4D5FF             call    004058A8
006AA482   7562                   jnz     006AA4E6
006AA484   8BF3                   mov     esi, ebx

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AA486   E845DDFFFF             call    006A81D0
006AA48B   8BD8                   mov     ebx, eax
006AA48D   2BDE                   sub     ebx, esi
006AA48F   7C55                   jl      006AA4E6
006AA491   43                     inc     ebx
006AA492   A160ED7D00             mov     eax, dword ptr [$007DED60]
006AA497   50                     push    eax
006AA498   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006AA49D   50                     push    eax
006AA49E   A158ED7D00             mov     eax, dword ptr [$007DED58]
006AA4A3   50                     push    eax
006AA4A4   A154ED7D00             mov     eax, dword ptr [$007DED54]
006AA4A9   50                     push    eax
006AA4AA   A150ED7D00             mov     eax, dword ptr [$007DED50]
006AA4AF   50                     push    eax
006AA4B0   8D0476                 lea     eax, [esi+esi*2]
006AA4B3   8B154CED7D00           mov     edx, [$007DED4C]
006AA4B9   FF748204               push    dword ptr [edx+eax*4+$04]
006AA4BD   6894A56A00             push    $006AA594
006AA4C2   68A0A56A00             push    $006AA5A0
006AA4C7   8D45E0                 lea     eax, [ebp-$20]
006AA4CA   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AA4CF   E848B3D5FF             call    0040581C
006AA4D4   8B45E0                 mov     eax, [ebp-$20]
006AA4D7   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006AA4D8   E883DCFFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006AA4DD   E8F60D0000             call    006AB2D8
006AA4E2   46                     inc     esi
006AA4E3   4B                     dec     ebx
006AA4E4   75AC                   jnz     006AA492
006AA4E6   33C0                   xor     eax, eax
006AA4E8   5A                     pop     edx
006AA4E9   59                     pop     ecx
006AA4EA   59                     pop     ecx
006AA4EB   648910                 mov     fs:[eax], edx
006AA4EE   EB0A                   jmp     006AA4FA

* Reference to: System.@HandleAnyException;
|
006AA4F0   E98FA5D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AA4F5   E8B6A9D5FF             call    00404EB0

****** END
|
006AA4FA   33C0                   xor     eax, eax
006AA4FC   5A                     pop     edx
006AA4FD   59                     pop     ecx
006AA4FE   59                     pop     ecx
006AA4FF   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AA502   680FA56A00             push    $006AA50F
006AA507   C3                     ret


* Reference to: System.@HandleFinally;
|
006AA508   E92BA8D5FF             jmp     00404D38
006AA50D   EBF8                   jmp     006AA507

****** END
|
006AA50F   33C0                   xor     eax, eax
006AA511   5A                     pop     edx
006AA512   59                     pop     ecx
006AA513   59                     pop     ecx
006AA514   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AA517   6831A56A00             push    $006AA531
006AA51C   8D45E0                 lea     eax, [ebp-$20]
006AA51F   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AA524   E897AFD5FF             call    004054C0
006AA529   C3                     ret


* Reference to: System.@HandleFinally;
|
006AA52A   E909A8D5FF             jmp     00404D38
006AA52F   EBEB                   jmp     006AA51C

****** END
|
006AA531   5F                     pop     edi
006AA532   5E                     pop     esi
006AA533   5B                     pop     ebx
006AA534   8BE5                   mov     esp, ebp
006AA536   5D                     pop     ebp
006AA537   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AA56E(Sender : TObject);
begin
(*
006AA56E   42                     inc     edx
006AA56F   54                     push    esp
006AA570   4F                     dec     edi
006AA571   54                     push    esp
006AA572   41                     inc     ecx
006AA573   4C                     dec     esp
006AA574   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AA5A5(Sender : TObject);
begin
(*
006AA5A5   8BEC                   mov     ebp, esp
006AA5A7   B904000000             mov     ecx, $00000004
006AA5AC   6A00                   push    $00
006AA5AE   6A00                   push    $00
006AA5B0   49                     dec     ecx
006AA5B1   75F9                   jnz     006AA5AC
006AA5B3   51                     push    ecx
006AA5B4   53                     push    ebx
006AA5B5   56                     push    esi
006AA5B6   57                     push    edi
006AA5B7   8BD8                   mov     ebx, eax
006AA5B9   33C0                   xor     eax, eax
006AA5BB   55                     push    ebp

* Possible String Reference to: 'é;¥Õÿëë_^[‹å]Ã'
|
006AA5BC   68F8A76A00             push    $006AA7F8

***** TRY
|
006AA5C1   64FF30                 push    dword ptr fs:[eax]
006AA5C4   648920                 mov     fs:[eax], esp
006AA5C7   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006AA5C9   E8CEAED5FF             call    0040549C
006AA5CE   33C0                   xor     eax, eax
006AA5D0   55                     push    ebp
006AA5D1   68D6A76A00             push    $006AA7D6

***** TRY
|
006AA5D6   64FF30                 push    dword ptr fs:[eax]
006AA5D9   648920                 mov     fs:[eax], esp
006AA5DC   33C0                   xor     eax, eax
006AA5DE   55                     push    ebp
006AA5DF   68BEA76A00             push    $006AA7BE

***** TRY
|
006AA5E4   64FF30                 push    dword ptr fs:[eax]
006AA5E7   648920                 mov     fs:[eax], esp
006AA5EA   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AA5EF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006AA5F1   BA10A86A00             mov     edx, $006AA810

* Reference to: System.@LStrCmp;
|
006AA5F6   E8ADB2D5FF             call    004058A8
006AA5FB   0F85B3010000           jnz     006AA7B4

* Possible String Reference to: 'esquerda'
|
006AA601   6820A86A00             push    $006AA820
006AA606   8D45FC                 lea     eax, [ebp-$04]
006AA609   50                     push    eax
006AA60A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA60F   8B00                   mov     eax, [eax]
006AA611   8B808C000000           mov     eax, [eax+$008C]
006AA617   8B10                   mov     edx, [eax]
006AA619   FF5258                 call    dword ptr [edx+$58]
006AA61C   8BD8                   mov     ebx, eax
006AA61E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA623   8B00                   mov     eax, [eax]
006AA625   8B8090000000           mov     eax, [eax+$0090]
006AA62B   8B10                   mov     edx, [eax]
006AA62D   FF5258                 call    dword ptr [edx+$58]
006AA630   03D8                   add     ebx, eax
006AA632   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA637   8B00                   mov     eax, [eax]
006AA639   8B809C000000           mov     eax, [eax+$009C]
006AA63F   8B10                   mov     edx, [eax]
006AA641   FF5258                 call    dword ptr [edx+$58]
006AA644   2BC3                   sub     eax, ebx
006AA646   50                     push    eax
006AA647   8D55F8                 lea     edx, [ebp-$08]
006AA64A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA64F   8B00                   mov     eax, [eax]
006AA651   8B80CC000000           mov     eax, [eax+$00CC]
006AA657   8B08                   mov     ecx, [eax]
006AA659   FF5160                 call    dword ptr [ecx+$60]
006AA65C   8B55F8                 mov     edx, [ebp-$08]
006AA65F   B834A86A00             mov     eax, $006AA834
006AA664   59                     pop     ecx

|
006AA665   E85E800F00             call    007A26C8

* Possible String Reference to: 'esquerda'
|
006AA66A   6820A86A00             push    $006AA820
006AA66F   8D45F4                 lea     eax, [ebp-$0C]
006AA672   50                     push    eax
006AA673   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA678   8B00                   mov     eax, [eax]
006AA67A   8B808C000000           mov     eax, [eax+$008C]
006AA680   8B10                   mov     edx, [eax]
006AA682   FF5258                 call    dword ptr [edx+$58]
006AA685   8BC8                   mov     ecx, eax
006AA687   BA34A86A00             mov     edx, $006AA834
006AA68C   B834A86A00             mov     eax, $006AA834

|
006AA691   E832800F00             call    007A26C8
006AA696   8B55F4                 mov     edx, [ebp-$0C]
006AA699   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrCat;
|
006AA69C   E8C3B0D5FF             call    00405764

* Reference to : TfrmGerenciador._PROC_006A81E0()
|
006AA6A1   E83ADBFFFF             call    006A81E0
006AA6A6   8D45F0                 lea     eax, [ebp-$10]
006AA6A9   50                     push    eax
006AA6AA   8D55E4                 lea     edx, [ebp-$1C]
006AA6AD   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA6B2   8B00                   mov     eax, [eax]
006AA6B4   8B80C0010000           mov     eax, [eax+$01C0]
006AA6BA   8B08                   mov     ecx, [eax]
006AA6BC   FF5160                 call    dword ptr [ecx+$60]
006AA6BF   8B45E4                 mov     eax, [ebp-$1C]
006AA6C2   8D55E8                 lea     edx, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006AA6C5   E8BA910F00             call    007A3884
006AA6CA   8B45E8                 mov     eax, [ebp-$18]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AA6CD   E81A2FD6FF             call    0040D5EC
006AA6D2   83C4F4                 add     esp, -$0C
006AA6D5   DB3C24                 fstp    tbyte ptr [esp]
006AA6D8   9B                     wait
006AA6D9   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: '#,###,###,##0.00'
|
006AA6DC   B840A86A00             mov     eax, $006AA840

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AA6E1   E8562ED6FF             call    0040D53C
006AA6E6   8B4DEC                 mov     ecx, [ebp-$14]
006AA6E9   8B55FC                 mov     edx, [ebp-$04]
006AA6EC   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006AA6EE   E815DFFFFF             call    006A8608
006AA6F3   A158A97D00             mov     eax, dword ptr [$007DA958]
006AA6F8   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AA6FA   BA5CA86A00             mov     edx, $006AA85C

* Reference to: System.@LStrCmp;
|
006AA6FF   E8A4B1D5FF             call    004058A8
006AA704   0F85AA000000           jnz     006AA7B4
006AA70A   A160ED7D00             mov     eax, dword ptr [$007DED60]
006AA70F   50                     push    eax
006AA710   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006AA715   50                     push    eax
006AA716   A158ED7D00             mov     eax, dword ptr [$007DED58]
006AA71B   50                     push    eax
006AA71C   A154ED7D00             mov     eax, dword ptr [$007DED54]
006AA721   50                     push    eax
006AA722   A150ED7D00             mov     eax, dword ptr [$007DED50]
006AA727   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AA728   E8A3DAFFFF             call    006A81D0
006AA72D   8D0440                 lea     eax, [eax+eax*2]
006AA730   8B154CED7D00           mov     edx, [$007DED4C]
006AA736   FF7482F8               push    dword ptr [edx+eax*4-$08]
006AA73A   6870A86A00             push    $006AA870
006AA73F   687CA86A00             push    $006AA87C
006AA744   8D45E0                 lea     eax, [ebp-$20]
006AA747   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AA74C   E8CBB0D5FF             call    0040581C
006AA751   8B45E0                 mov     eax, [ebp-$20]
006AA754   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006AA755   E806DAFFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006AA75A   E8790B0000             call    006AB2D8
006AA75F   A160ED7D00             mov     eax, dword ptr [$007DED60]
006AA764   50                     push    eax
006AA765   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006AA76A   50                     push    eax
006AA76B   A158ED7D00             mov     eax, dword ptr [$007DED58]
006AA770   50                     push    eax
006AA771   A154ED7D00             mov     eax, dword ptr [$007DED54]
006AA776   50                     push    eax
006AA777   A150ED7D00             mov     eax, dword ptr [$007DED50]
006AA77C   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AA77D   E84EDAFFFF             call    006A81D0
006AA782   8D0440                 lea     eax, [eax+eax*2]
006AA785   8B154CED7D00           mov     edx, [$007DED4C]
006AA78B   FF748204               push    dword ptr [edx+eax*4+$04]
006AA78F   6870A86A00             push    $006AA870
006AA794   687CA86A00             push    $006AA87C
006AA799   8D45DC                 lea     eax, [ebp-$24]
006AA79C   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AA7A1   E876B0D5FF             call    0040581C
006AA7A6   8B45DC                 mov     eax, [ebp-$24]
006AA7A9   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006AA7AA   E8B1D9FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006AA7AF   E8240B0000             call    006AB2D8
006AA7B4   33C0                   xor     eax, eax
006AA7B6   5A                     pop     edx
006AA7B7   59                     pop     ecx
006AA7B8   59                     pop     ecx
006AA7B9   648910                 mov     fs:[eax], edx
006AA7BC   EB0A                   jmp     006AA7C8

* Reference to: System.@HandleAnyException;
|
006AA7BE   E9C1A2D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AA7C3   E8E8A6D5FF             call    00404EB0

****** END
|
006AA7C8   33C0                   xor     eax, eax
006AA7CA   5A                     pop     edx
006AA7CB   59                     pop     ecx
006AA7CC   59                     pop     ecx
006AA7CD   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AA7D0   68DDA76A00             push    $006AA7DD
006AA7D5   C3                     ret


* Reference to: System.@HandleFinally;
|
006AA7D6   E95DA5D5FF             jmp     00404D38
006AA7DB   EBF8                   jmp     006AA7D5

****** END
|
006AA7DD   33C0                   xor     eax, eax
006AA7DF   5A                     pop     edx
006AA7E0   59                     pop     ecx
006AA7E1   59                     pop     ecx
006AA7E2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006AA7E5   68FFA76A00             push    $006AA7FF
006AA7EA   8D45DC                 lea     eax, [ebp-$24]
006AA7ED   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AA7F2   E8C9ACD5FF             call    004054C0
006AA7F7   C3                     ret


* Reference to: System.@HandleFinally;
|
006AA7F8   E93BA5D5FF             jmp     00404D38
006AA7FD   EBEB                   jmp     006AA7EA

****** END
|
006AA7FF   5F                     pop     edi
006AA800   5E                     pop     esi
006AA801   5B                     pop     ebx
006AA802   8BE5                   mov     esp, ebp
006AA804   5D                     pop     ebp
006AA805   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AA881(Sender : TObject);
begin
(*
006AA881   8BEC                   mov     ebp, esp
006AA883   6A00                   push    $00
006AA885   53                     push    ebx
006AA886   8BD8                   mov     ebx, eax
006AA888   33C0                   xor     eax, eax
006AA88A   55                     push    ebp

* Possible String Reference to: 'ée¤Õÿëð[Y]Ã'
|
006AA88B   68CEA86A00             push    $006AA8CE

***** TRY
|
006AA890   64FF30                 push    dword ptr fs:[eax]
006AA893   648920                 mov     fs:[eax], esp
006AA896   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006AA898   E8FFABD5FF             call    0040549C
006AA89D   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AA8A2   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006AA8A4   BAE4A86A00             mov     edx, $006AA8E4

* Reference to: System.@LStrCmp;
|
006AA8A9   E8FAAFD5FF             call    004058A8
006AA8AE   7508                   jnz     006AA8B8
006AA8B0   8D45FC                 lea     eax, [ebp-$04]

|
006AA8B3   E840DFFFFF             call    006A87F8
006AA8B8   33C0                   xor     eax, eax
006AA8BA   5A                     pop     edx
006AA8BB   59                     pop     ecx
006AA8BC   59                     pop     ecx
006AA8BD   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[Y]Ã'
|
006AA8C0   68D5A86A00             push    $006AA8D5
006AA8C5   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006AA8C8   E8CFABD5FF             call    0040549C
006AA8CD   C3                     ret


* Reference to: System.@HandleFinally;
|
006AA8CE   E965A4D5FF             jmp     00404D38
006AA8D3   EBF0                   jmp     006AA8C5

****** END
|
006AA8D5   5B                     pop     ebx
006AA8D6   59                     pop     ecx
006AA8D7   5D                     pop     ebp
006AA8D8   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AA8ED(Sender : TObject);
begin
(*
006AA8ED   8BEC                   mov     ebp, esp
006AA8EF   B909000000             mov     ecx, $00000009
006AA8F4   6A00                   push    $00
006AA8F6   6A00                   push    $00
006AA8F8   49                     dec     ecx
006AA8F9   75F9                   jnz     006AA8F4
006AA8FB   53                     push    ebx
006AA8FC   56                     push    esi
006AA8FD   57                     push    edi
006AA8FE   8BD8                   mov     ebx, eax
006AA900   33C0                   xor     eax, eax
006AA902   55                     push    ebp
006AA903   681BAC6A00             push    $006AAC1B

***** TRY
|
006AA908   64FF30                 push    dword ptr fs:[eax]
006AA90B   648920                 mov     fs:[eax], esp
006AA90E   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006AA910   E887ABD5FF             call    0040549C
006AA915   33C0                   xor     eax, eax
006AA917   55                     push    ebp
006AA918   68F9AB6A00             push    $006AABF9

***** TRY
|
006AA91D   64FF30                 push    dword ptr fs:[eax]
006AA920   648920                 mov     fs:[eax], esp
006AA923   33C0                   xor     eax, eax
006AA925   55                     push    ebp
006AA926   68E1AB6A00             push    $006AABE1

***** TRY
|
006AA92B   64FF30                 push    dword ptr fs:[eax]
006AA92E   648920                 mov     fs:[eax], esp
006AA931   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AA936   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006AA938   BA34AC6A00             mov     edx, $006AAC34

* Reference to: System.@LStrCmp;
|
006AA93D   E866AFD5FF             call    004058A8
006AA942   0F858F020000           jnz     006AABD7

* Possible String Reference to: 'esquerda'
|
006AA948   6844AC6A00             push    $006AAC44
006AA94D   8D45FC                 lea     eax, [ebp-$04]
006AA950   50                     push    eax
006AA951   8D55F8                 lea     edx, [ebp-$08]
006AA954   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA959   8B00                   mov     eax, [eax]
006AA95B   8B80CC000000           mov     eax, [eax+$00CC]
006AA961   8B08                   mov     ecx, [eax]
006AA963   FF5160                 call    dword ptr [ecx+$60]
006AA966   8B45F8                 mov     eax, [ebp-$08]
006AA969   50                     push    eax
006AA96A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA96F   8B00                   mov     eax, [eax]
006AA971   8B809C000000           mov     eax, [eax+$009C]
006AA977   8B10                   mov     edx, [eax]
006AA979   FF5258                 call    dword ptr [edx+$58]
006AA97C   8BC8                   mov     ecx, eax
006AA97E   B858AC6A00             mov     eax, $006AAC58
006AA983   5A                     pop     edx

|
006AA984   E83F7D0F00             call    007A26C8
006AA989   8D55F4                 lea     edx, [ebp-$0C]
006AA98C   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA991   8B00                   mov     eax, [eax]
006AA993   8B80D4000000           mov     eax, [eax+$00D4]
006AA999   8B08                   mov     ecx, [eax]
006AA99B   FF5160                 call    dword ptr [ecx+$60]
006AA99E   8B45F4                 mov     eax, [ebp-$0C]
006AA9A1   BA64AC6A00             mov     edx, $006AAC64

* Reference to: System.@LStrCmp;
|
006AA9A6   E8FDAED5FF             call    004058A8
006AA9AB   0F8549010000           jnz     006AAAFA
006AA9B1   8D55EC                 lea     edx, [ebp-$14]
006AA9B4   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA9B9   8B00                   mov     eax, [eax]
006AA9BB   8B80CC000000           mov     eax, [eax+$00CC]
006AA9C1   8B08                   mov     ecx, [eax]
006AA9C3   FF5160                 call    dword ptr [ecx+$60]
006AA9C6   8B45EC                 mov     eax, [ebp-$14]
006AA9C9   8D55F0                 lea     edx, [ebp-$10]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006AA9CC   E893FBD5FF             call    0040A564
006AA9D1   8B45F0                 mov     eax, [ebp-$10]

* Possible String Reference to: 'cartao'
|
006AA9D4   BA70AC6A00             mov     edx, $006AAC70

* Reference to: System.@LStrCmp;
|
006AA9D9   E8CAAED5FF             call    004058A8
006AA9DE   755C                   jnz     006AAA3C
006AA9E0   8D55E8                 lea     edx, [ebp-$18]
006AA9E3   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AA9E8   8B00                   mov     eax, [eax]
006AA9EA   8B80D8000000           mov     eax, [eax+$00D8]
006AA9F0   8B08                   mov     ecx, [eax]
006AA9F2   FF5160                 call    dword ptr [ecx+$60]
006AA9F5   837DE800               cmp     dword ptr [ebp-$18], +$00
006AA9F9   7441                   jz      006AAA3C

* Possible String Reference to: 'esquerda'
|
006AA9FB   6844AC6A00             push    $006AAC44
006AAA00   8D45FC                 lea     eax, [ebp-$04]
006AAA03   50                     push    eax
006AAA04   8D55E4                 lea     edx, [ebp-$1C]
006AAA07   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AAA0C   8B00                   mov     eax, [eax]
006AAA0E   8B80D8000000           mov     eax, [eax+$00D8]
006AAA14   8B08                   mov     ecx, [eax]
006AAA16   FF5160                 call    dword ptr [ecx+$60]
006AAA19   8B45E4                 mov     eax, [ebp-$1C]
006AAA1C   50                     push    eax
006AAA1D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AAA22   8B00                   mov     eax, [eax]
006AAA24   8B809C000000           mov     eax, [eax+$009C]
006AAA2A   8B10                   mov     edx, [eax]
006AAA2C   FF5258                 call    dword ptr [edx+$58]
006AAA2F   8BC8                   mov     ecx, eax
006AAA31   B858AC6A00             mov     eax, $006AAC58
006AAA36   5A                     pop     edx

|
006AAA37   E88C7C0F00             call    007A26C8
006AAA3C   8D45E0                 lea     eax, [ebp-$20]
006AAA3F   50                     push    eax
006AAA40   8D55D4                 lea     edx, [ebp-$2C]
006AAA43   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AAA48   8B00                   mov     eax, [eax]
006AAA4A   8B80C0010000           mov     eax, [eax+$01C0]
006AAA50   8B08                   mov     ecx, [eax]
006AAA52   FF5160                 call    dword ptr [ecx+$60]
006AAA55   8B45D4                 mov     eax, [ebp-$2C]
006AAA58   8D55D8                 lea     edx, [ebp-$28]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006AAA5B   E8248E0F00             call    007A3884
006AAA60   8B45D8                 mov     eax, [ebp-$28]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AAA63   E8842BD6FF             call    0040D5EC
006AAA68   83C4F4                 add     esp, -$0C
006AAA6B   DB3C24                 fstp    tbyte ptr [esp]
006AAA6E   9B                     wait
006AAA6F   8D55DC                 lea     edx, [ebp-$24]

* Possible String Reference to: '#,###,###,##0.00'
|
006AAA72   B880AC6A00             mov     eax, $006AAC80

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AAA77   E8C02AD6FF             call    0040D53C
006AAA7C   8B4DDC                 mov     ecx, [ebp-$24]
006AAA7F   8B55FC                 mov     edx, [ebp-$04]
006AAA82   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006AAA84   E87FDBFFFF             call    006A8608
006AAA89   A158A97D00             mov     eax, dword ptr [$007DA958]
006AAA8E   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AAA90   BA9CAC6A00             mov     edx, $006AAC9C

* Reference to: System.@LStrCmp;
|
006AAA95   E80EAED5FF             call    004058A8
006AAA9A   0F8537010000           jnz     006AABD7
006AAAA0   A160ED7D00             mov     eax, dword ptr [$007DED60]
006AAAA5   50                     push    eax
006AAAA6   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006AAAAB   50                     push    eax
006AAAAC   A158ED7D00             mov     eax, dword ptr [$007DED58]
006AAAB1   50                     push    eax
006AAAB2   A154ED7D00             mov     eax, dword ptr [$007DED54]
006AAAB7   50                     push    eax
006AAAB8   A150ED7D00             mov     eax, dword ptr [$007DED50]
006AAABD   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AAABE   E80DD7FFFF             call    006A81D0
006AAAC3   8D0440                 lea     eax, [eax+eax*2]
006AAAC6   8B154CED7D00           mov     edx, [$007DED4C]
006AAACC   FF748204               push    dword ptr [edx+eax*4+$04]
006AAAD0   68B0AC6A00             push    $006AACB0
006AAAD5   68BCAC6A00             push    $006AACBC
006AAADA   8D45D0                 lea     eax, [ebp-$30]
006AAADD   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AAAE2   E835ADD5FF             call    0040581C
006AAAE7   8B45D0                 mov     eax, [ebp-$30]
006AAAEA   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006AAAEB   E870D6FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006AAAF0   E8E3070000             call    006AB2D8
006AAAF5   E9DD000000             jmp     006AABD7
006AAAFA   8D55CC                 lea     edx, [ebp-$34]
006AAAFD   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AAB02   8B00                   mov     eax, [eax]
006AAB04   8B80D4000000           mov     eax, [eax+$00D4]
006AAB0A   8B08                   mov     ecx, [eax]
006AAB0C   FF5160                 call    dword ptr [ecx+$60]
006AAB0F   8B45CC                 mov     eax, [ebp-$34]
006AAB12   BAC8AC6A00             mov     edx, $006AACC8

* Reference to: System.@LStrCmp;
|
006AAB17   E88CADD5FF             call    004058A8
006AAB1C   0F85B5000000           jnz     006AABD7
006AAB22   8D45C8                 lea     eax, [ebp-$38]
006AAB25   50                     push    eax
006AAB26   8D55BC                 lea     edx, [ebp-$44]
006AAB29   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AAB2E   8B00                   mov     eax, [eax]
006AAB30   8B80C0010000           mov     eax, [eax+$01C0]
006AAB36   8B08                   mov     ecx, [eax]
006AAB38   FF5160                 call    dword ptr [ecx+$60]
006AAB3B   8B45BC                 mov     eax, [ebp-$44]
006AAB3E   8D55C0                 lea     edx, [ebp-$40]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006AAB41   E83E8D0F00             call    007A3884
006AAB46   8B45C0                 mov     eax, [ebp-$40]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AAB49   E89E2AD6FF             call    0040D5EC
006AAB4E   83C4F4                 add     esp, -$0C
006AAB51   DB3C24                 fstp    tbyte ptr [esp]
006AAB54   9B                     wait
006AAB55   8D55C4                 lea     edx, [ebp-$3C]

* Possible String Reference to: '#,###,###,##0.00'
|
006AAB58   B880AC6A00             mov     eax, $006AAC80

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AAB5D   E8DA29D6FF             call    0040D53C
006AAB62   8B4DC4                 mov     ecx, [ebp-$3C]
006AAB65   8B55FC                 mov     edx, [ebp-$04]
006AAB68   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006AAB6A   E899DAFFFF             call    006A8608
006AAB6F   A158A97D00             mov     eax, dword ptr [$007DA958]
006AAB74   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AAB76   BA9CAC6A00             mov     edx, $006AAC9C

* Reference to: System.@LStrCmp;
|
006AAB7B   E828ADD5FF             call    004058A8
006AAB80   7555                   jnz     006AABD7
006AAB82   A160ED7D00             mov     eax, dword ptr [$007DED60]
006AAB87   50                     push    eax
006AAB88   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006AAB8D   50                     push    eax
006AAB8E   A158ED7D00             mov     eax, dword ptr [$007DED58]
006AAB93   50                     push    eax
006AAB94   A154ED7D00             mov     eax, dword ptr [$007DED54]
006AAB99   50                     push    eax
006AAB9A   A150ED7D00             mov     eax, dword ptr [$007DED50]
006AAB9F   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AABA0   E82BD6FFFF             call    006A81D0
006AABA5   8D0440                 lea     eax, [eax+eax*2]
006AABA8   8B154CED7D00           mov     edx, [$007DED4C]
006AABAE   FF748204               push    dword ptr [edx+eax*4+$04]
006AABB2   68B0AC6A00             push    $006AACB0
006AABB7   68BCAC6A00             push    $006AACBC
006AABBC   8D45B8                 lea     eax, [ebp-$48]
006AABBF   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AABC4   E853ACD5FF             call    0040581C
006AABC9   8B45B8                 mov     eax, [ebp-$48]
006AABCC   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006AABCD   E88ED5FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006AABD2   E801070000             call    006AB2D8
006AABD7   33C0                   xor     eax, eax
006AABD9   5A                     pop     edx
006AABDA   59                     pop     ecx
006AABDB   59                     pop     ecx
006AABDC   648910                 mov     fs:[eax], edx
006AABDF   EB0A                   jmp     006AABEB

* Reference to: System.@HandleAnyException;
|
006AABE1   E99E9ED5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AABE6   E8C5A2D5FF             call    00404EB0

****** END
|
006AABEB   33C0                   xor     eax, eax
006AABED   5A                     pop     edx
006AABEE   59                     pop     ecx
006AABEF   59                     pop     ecx
006AABF0   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AABF3   6800AC6A00             push    $006AAC00
006AABF8   C3                     ret


* Reference to: System.@HandleFinally;
|
006AABF9   E93AA1D5FF             jmp     00404D38
006AABFE   EBF8                   jmp     006AABF8

****** END
|
006AAC00   33C0                   xor     eax, eax
006AAC02   5A                     pop     edx
006AAC03   59                     pop     ecx
006AAC04   59                     pop     ecx
006AAC05   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006AAC08   6822AC6A00             push    $006AAC22
006AAC0D   8D45B8                 lea     eax, [ebp-$48]
006AAC10   BA12000000             mov     edx, $00000012

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AAC15   E8A6A8D5FF             call    004054C0
006AAC1A   C3                     ret


* Reference to: System.@HandleFinally;
|
006AAC1B   E918A1D5FF             jmp     00404D38
006AAC20   EBEB                   jmp     006AAC0D

****** END
|
006AAC22   5F                     pop     edi
006AAC23   5E                     pop     esi
006AAC24   5B                     pop     ebx
006AAC25   8BE5                   mov     esp, ebp
006AAC27   5D                     pop     ebp
006AAC28   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AACCD(Sender : TObject);
begin
(*
006AACCD   8BEC                   mov     ebp, esp
006AACCF   B905000000             mov     ecx, $00000005
006AACD4   6A00                   push    $00
006AACD6   6A00                   push    $00
006AACD8   49                     dec     ecx
006AACD9   75F9                   jnz     006AACD4
006AACDB   53                     push    ebx
006AACDC   56                     push    esi
006AACDD   57                     push    edi
006AACDE   8BD8                   mov     ebx, eax
006AACE0   33C0                   xor     eax, eax
006AACE2   55                     push    ebp

* Possible String Reference to: 'éGžÕÿëë_^[‹å]Ã'
|
006AACE3   68ECAE6A00             push    $006AAEEC

***** TRY
|
006AACE8   64FF30                 push    dword ptr fs:[eax]
006AACEB   648920                 mov     fs:[eax], esp
006AACEE   B201                   mov     dl, $01

* Reference to class TStringList
|
006AACF0   A1D4044200             mov     eax, dword ptr [$004204D4]

* Reference to: System.TObject.Create(TObject;Boolean);
|
006AACF5   E87298D5FF             call    0040456C
006AACFA   8945F8                 mov     [ebp-$08], eax
006AACFD   8BC3                   mov     eax, ebx

* Possible String Reference to: 'CUPOM FINALIZADO...'
|
006AACFF   BA04AF6A00             mov     edx, $006AAF04

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AAD04   E8E7A7D5FF             call    004054F0
006AAD09   33C0                   xor     eax, eax
006AAD0B   55                     push    ebp
006AAD0C   68CAAE6A00             push    $006AAECA

***** TRY
|
006AAD11   64FF30                 push    dword ptr fs:[eax]
006AAD14   648920                 mov     fs:[eax], esp
006AAD17   33C0                   xor     eax, eax
006AAD19   55                     push    ebp
006AAD1A   68AAAE6A00             push    $006AAEAA

***** TRY
|
006AAD1F   64FF30                 push    dword ptr fs:[eax]
006AAD22   648920                 mov     fs:[eax], esp
006AAD25   A14CED7D00             mov     eax, dword ptr [$007DED4C]

* Reference to: System.@DynArrayHigh;
|
006AAD2A   E8CDBCD5FF             call    004069FC
006AAD2F   40                     inc     eax
006AAD30   8945FC                 mov     [ebp-$04], eax
006AAD33   8D55F4                 lea     edx, [ebp-$0C]
006AAD36   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AAD3B   8B00                   mov     eax, [eax]
006AAD3D   8B80AC000000           mov     eax, [eax+$00AC]
006AAD43   8B08                   mov     ecx, [eax]
006AAD45   FF5160                 call    dword ptr [ecx+$60]
006AAD48   8B55F4                 mov     edx, [ebp-$0C]
006AAD4B   8B45F8                 mov     eax, [ebp-$08]
006AAD4E   8B08                   mov     ecx, [eax]

* Reference to method TStringList.SetTextStr(string)
|
006AAD50   FF512C                 call    dword ptr [ecx+$2C]
006AAD53   8B45F8                 mov     eax, [ebp-$08]
006AAD56   8B10                   mov     edx, [eax]

* Reference to method TStringList.GetCount()
|
006AAD58   FF5214                 call    dword ptr [edx+$14]
006AAD5B   8BD8                   mov     ebx, eax
006AAD5D   4B                     dec     ebx
006AAD5E   85DB                   test    ebx, ebx
006AAD60   7C60                   jl      006AADC2
006AAD62   43                     inc     ebx
006AAD63   33F6                   xor     esi, esi
006AAD65   8D4DF0                 lea     ecx, [ebp-$10]
006AAD68   8BD6                   mov     edx, esi
006AAD6A   8B45F8                 mov     eax, [ebp-$08]
006AAD6D   8B38                   mov     edi, [eax]

* Reference to method TStringList.Get(Integer)
|
006AAD6F   FF570C                 call    dword ptr [edi+$0C]
006AAD72   837DF000               cmp     dword ptr [ebp-$10], +$00
006AAD76   7446                   jz      006AADBE

|
006AAD78   E823D4FFFF             call    006A81A0
006AAD7D   8D4DE8                 lea     ecx, [ebp-$18]
006AAD80   8BD6                   mov     edx, esi
006AAD82   8B45F8                 mov     eax, [ebp-$08]
006AAD85   8B38                   mov     edi, [eax]

* Reference to method TStringList.Get(Integer)
|
006AAD87   FF570C                 call    dword ptr [edi+$0C]
006AAD8A   8B45E8                 mov     eax, [ebp-$18]
006AAD8D   8D55EC                 lea     edx, [ebp-$14]

* Reference to : TfrmGerenciador._PROC_006ACE00()
|
006AAD90   E86B200000             call    006ACE00
006AAD95   8B45EC                 mov     eax, [ebp-$14]
006AAD98   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AAD99   E832D4FFFF             call    006A81D0
006AAD9E   8D0440                 lea     eax, [eax+eax*2]
006AADA1   8B154CED7D00           mov     edx, [$007DED4C]
006AADA7   8D448204               lea     eax, [edx+eax*4+$04]
006AADAB   50                     push    eax
006AADAC   8D45E4                 lea     eax, [ebp-$1C]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
006AADAF   E850D4FFFF             call    006A8204
006AADB4   8B55E4                 mov     edx, [ebp-$1C]
006AADB7   58                     pop     eax
006AADB8   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006AADB9   E8EAA9D5FF             call    004057A8
006AADBE   46                     inc     esi
006AADBF   4B                     dec     ebx
006AADC0   75A3                   jnz     006AAD65
006AADC2   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AADC7   8B00                   mov     eax, [eax]
006AADC9   8B406C                 mov     eax, [eax+$6C]
006AADCC   8B10                   mov     edx, [eax]
006AADCE   FF5258                 call    dword ptr [edx+$58]
006AADD1   8BD8                   mov     ebx, eax
006AADD3   85DB                   test    ebx, ebx
006AADD5   7E4E                   jle     006AAE25

|
006AADD7   E8C4D3FFFF             call    006A81A0

* Possible String Reference to: 'esquerda'
|
006AADDC   6820AF6A00             push    $006AAF20
006AADE1   8D45E0                 lea     eax, [ebp-$20]
006AADE4   50                     push    eax
006AADE5   B914000000             mov     ecx, $00000014
006AADEA   BA34AF6A00             mov     edx, $006AAF34
006AADEF   B834AF6A00             mov     eax, $006AAF34

|
006AADF4   E8CF780F00             call    007A26C8
006AADF9   8B45E0                 mov     eax, [ebp-$20]
006AADFC   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006A81D0()
|
006AADFD   E8CED3FFFF             call    006A81D0
006AAE02   8D0440                 lea     eax, [eax+eax*2]
006AAE05   8B154CED7D00           mov     edx, [$007DED4C]
006AAE0B   8D448204               lea     eax, [edx+eax*4+$04]
006AAE0F   50                     push    eax
006AAE10   8D45DC                 lea     eax, [ebp-$24]

* Reference to : TfrmGerenciador._PROC_006A8204()
|
006AAE13   E8ECD3FFFF             call    006A8204
006AAE18   8B55DC                 mov     edx, [ebp-$24]
006AAE1B   58                     pop     eax
006AAE1C   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006AAE1D   E886A9D5FF             call    004057A8
006AAE22   4B                     dec     ebx
006AAE23   75B2                   jnz     006AADD7
006AAE25   A158A97D00             mov     eax, dword ptr [$007DA958]
006AAE2A   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AAE2C   BA40AF6A00             mov     edx, $006AAF40

* Reference to: System.@LStrCmp;
|
006AAE31   E872AAD5FF             call    004058A8
006AAE36   7568                   jnz     006AAEA0
006AAE38   8B75FC                 mov     esi, [ebp-$04]
006AAE3B   A14CED7D00             mov     eax, dword ptr [$007DED4C]

* Reference to: System.@DynArrayHigh;
|
006AAE40   E8B7BBD5FF             call    004069FC
006AAE45   8BD8                   mov     ebx, eax
006AAE47   2BDE                   sub     ebx, esi
006AAE49   7C55                   jl      006AAEA0
006AAE4B   43                     inc     ebx
006AAE4C   A160ED7D00             mov     eax, dword ptr [$007DED60]
006AAE51   50                     push    eax
006AAE52   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006AAE57   50                     push    eax
006AAE58   A158ED7D00             mov     eax, dword ptr [$007DED58]
006AAE5D   50                     push    eax
006AAE5E   A154ED7D00             mov     eax, dword ptr [$007DED54]
006AAE63   50                     push    eax
006AAE64   A150ED7D00             mov     eax, dword ptr [$007DED50]
006AAE69   50                     push    eax
006AAE6A   8D0476                 lea     eax, [esi+esi*2]
006AAE6D   8B154CED7D00           mov     edx, [$007DED4C]
006AAE73   FF748204               push    dword ptr [edx+eax*4+$04]
006AAE77   6854AF6A00             push    $006AAF54
006AAE7C   6860AF6A00             push    $006AAF60
006AAE81   8D45D8                 lea     eax, [ebp-$28]
006AAE84   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AAE89   E88EA9D5FF             call    0040581C
006AAE8E   8B45D8                 mov     eax, [ebp-$28]
006AAE91   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006AAE92   E8C9D2FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006AAE97   E83C040000             call    006AB2D8
006AAE9C   46                     inc     esi
006AAE9D   4B                     dec     ebx
006AAE9E   75AC                   jnz     006AAE4C
006AAEA0   33C0                   xor     eax, eax
006AAEA2   5A                     pop     edx
006AAEA3   59                     pop     ecx
006AAEA4   59                     pop     ecx
006AAEA5   648910                 mov     fs:[eax], edx
006AAEA8   EB0A                   jmp     006AAEB4

* Reference to: System.@HandleAnyException;
|
006AAEAA   E9D59BD5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AAEAF   E8FC9FD5FF             call    00404EB0

****** END
|
006AAEB4   33C0                   xor     eax, eax
006AAEB6   5A                     pop     edx
006AAEB7   59                     pop     ecx
006AAEB8   59                     pop     ecx
006AAEB9   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AAEBC   68D1AE6A00             push    $006AAED1
006AAEC1   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.TObject.Free(TObject);
|
006AAEC4   E8D396D5FF             call    0040459C
006AAEC9   C3                     ret


* Reference to: System.@HandleFinally;
|
006AAECA   E9699ED5FF             jmp     00404D38
006AAECF   EBF0                   jmp     006AAEC1

****** END
|
006AAED1   33C0                   xor     eax, eax
006AAED3   5A                     pop     edx
006AAED4   59                     pop     ecx
006AAED5   59                     pop     ecx
006AAED6   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006AAED9   68F3AE6A00             push    $006AAEF3
006AAEDE   8D45D8                 lea     eax, [ebp-$28]
006AAEE1   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AAEE6   E8D5A5D5FF             call    004054C0
006AAEEB   C3                     ret


* Reference to: System.@HandleFinally;
|
006AAEEC   E9479ED5FF             jmp     00404D38
006AAEF1   EBEB                   jmp     006AAEDE

****** END
|
006AAEF3   5F                     pop     edi
006AAEF4   5E                     pop     esi
006AAEF5   5B                     pop     ebx
006AAEF6   8BE5                   mov     esp, ebp
006AAEF8   5D                     pop     ebp
006AAEF9   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AAF06(Sender : TObject);
begin
(*
006AAF06   50                     push    eax
006AAF07   4F                     dec     edi
006AAF08   4D                     dec     ebp
006AAF09   204649                 and     [esi+$49], al
006AAF0C   4E                     dec     esi
006AAF0D   41                     inc     ecx
006AAF0E   4C                     dec     esp
006AAF0F   49                     dec     ecx
006AAF10   5A                     pop     edx
006AAF11   41                     inc     ecx
006AAF12   44                     inc     esp
006AAF13   4F                     dec     edi
006AAF14   2E2E2E00FF             add     bh, bh
006AAF19   FFFF                   DB  $FF, $FF  //      
006AAF1B   FF08                   dec     dword ptr [eax]
006AAF1D   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AAF65(Sender : TObject);
begin
(*
006AAF65   8BEC                   mov     ebp, esp
006AAF67   6A00                   push    $00
006AAF69   53                     push    ebx
006AAF6A   56                     push    esi
006AAF6B   57                     push    edi
006AAF6C   8BDA                   mov     ebx, edx
006AAF6E   33C0                   xor     eax, eax
006AAF70   55                     push    ebp

* Possible String Reference to: 'é¶œÕÿëð_^[Y]Ã'
|
006AAF71   687DB06A00             push    $006AB07D

***** TRY
|
006AAF76   64FF30                 push    dword ptr fs:[eax]
006AAF79   648920                 mov     fs:[eax], esp
006AAF7C   33C0                   xor     eax, eax
006AAF7E   55                     push    ebp
006AAF7F   6860B06A00             push    $006AB060

***** TRY
|
006AAF84   64FF30                 push    dword ptr fs:[eax]
006AAF87   648920                 mov     fs:[eax], esp
006AAF8A   33C0                   xor     eax, eax
006AAF8C   55                     push    ebp
006AAF8D   6848B06A00             push    $006AB048

***** TRY
|
006AAF92   64FF30                 push    dword ptr fs:[eax]
006AAF95   648920                 mov     fs:[eax], esp
006AAF98   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AAF9D   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006AAF9F   BA94B06A00             mov     edx, $006AB094

* Reference to: System.@LStrCmp;
|
006AAFA4   E8FFA8D5FF             call    004058A8
006AAFA9   0F858F000000           jnz     006AB03E
006AAFAF   A158A97D00             mov     eax, dword ptr [$007DA958]
006AAFB4   8B00                   mov     eax, [eax]

* Possible String Reference to: 'buffer'
|
006AAFB6   BAA4B06A00             mov     edx, $006AB0A4

* Reference to: System.@LStrCmp;
|
006AAFBB   E8E8A8D5FF             call    004058A8
006AAFC0   7404                   jz      006AAFC6
006AAFC2   84DB                   test    bl, bl
006AAFC4   7473                   jz      006AB039
006AAFC6   A14CED7D00             mov     eax, dword ptr [$007DED4C]

* Reference to: System.@LStrLen(String):Integer;
|
006AAFCB   E824BAD5FF             call    004069F4
006AAFD0   8BF0                   mov     esi, eax
006AAFD2   4E                     dec     esi
006AAFD3   85F6                   test    esi, esi
006AAFD5   7C62                   jl      006AB039
006AAFD7   46                     inc     esi
006AAFD8   33DB                   xor     ebx, ebx
006AAFDA   8D3C5B                 lea     edi, [ebx+ebx*2]
006AAFDD   A14CED7D00             mov     eax, dword ptr [$007DED4C]
006AAFE2   807CB80800             cmp     byte ptr [eax+edi*4+$08], $00
006AAFE7   754C                   jnz     006AB035
006AAFE9   A160ED7D00             mov     eax, dword ptr [$007DED60]
006AAFEE   50                     push    eax
006AAFEF   A15CED7D00             mov     eax, dword ptr [$007DED5C]
006AAFF4   50                     push    eax
006AAFF5   A158ED7D00             mov     eax, dword ptr [$007DED58]
006AAFFA   50                     push    eax
006AAFFB   A154ED7D00             mov     eax, dword ptr [$007DED54]
006AB000   50                     push    eax
006AB001   A150ED7D00             mov     eax, dword ptr [$007DED50]
006AB006   50                     push    eax
006AB007   A14CED7D00             mov     eax, dword ptr [$007DED4C]
006AB00C   FF74B804               push    dword ptr [eax+edi*4+$04]
006AB010   68B4B06A00             push    $006AB0B4
006AB015   68C0B06A00             push    $006AB0C0
006AB01A   8D45FC                 lea     eax, [ebp-$04]
006AB01D   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AB022   E8F5A7D5FF             call    0040581C
006AB027   8B45FC                 mov     eax, [ebp-$04]
006AB02A   50                     push    eax

* Reference to: Mp2032.FormataTX()
|
006AB02B   E830D1FFFF             call    006A8160

* Reference to : TfrmGerenciador._PROC_006AB2D8()
|
006AB030   E8A3020000             call    006AB2D8
006AB035   43                     inc     ebx
006AB036   4E                     dec     esi
006AB037   75A1                   jnz     006AAFDA

|
006AB039   E80A0C0000             call    006ABC48
006AB03E   33C0                   xor     eax, eax
006AB040   5A                     pop     edx
006AB041   59                     pop     ecx
006AB042   59                     pop     ecx
006AB043   648910                 mov     fs:[eax], edx
006AB046   EB0A                   jmp     006AB052

* Reference to: System.@HandleAnyException;
|
006AB048   E9379AD5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AB04D   E85E9ED5FF             call    00404EB0

****** END
|
006AB052   33C0                   xor     eax, eax
006AB054   5A                     pop     edx
006AB055   59                     pop     ecx
006AB056   59                     pop     ecx
006AB057   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AB05A   6867B06A00             push    $006AB067
006AB05F   C3                     ret


* Reference to: System.@HandleFinally;
|
006AB060   E9D39CD5FF             jmp     00404D38
006AB065   EBF8                   jmp     006AB05F

****** END
|
006AB067   33C0                   xor     eax, eax
006AB069   5A                     pop     edx
006AB06A   59                     pop     ecx
006AB06B   59                     pop     ecx
006AB06C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[Y]Ã'
|
006AB06F   6884B06A00             push    $006AB084
006AB074   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006AB077   E820A4D5FF             call    0040549C
006AB07C   C3                     ret


* Reference to: System.@HandleFinally;
|
006AB07D   E9B69CD5FF             jmp     00404D38
006AB082   EBF0                   jmp     006AB074

****** END
|
006AB084   5F                     pop     edi
006AB085   5E                     pop     esi
006AB086   5B                     pop     ebx
006AB087   59                     pop     ecx
006AB088   5D                     pop     ebp
006AB089   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB0C5(Sender : TObject);
begin
(*
006AB0C5   8BEC                   mov     ebp, esp
006AB0C7   53                     push    ebx
006AB0C8   B301                   mov     bl, $01

* Reference to: Mp2032.Le_Status()
|
006AB0CA   E8A1D0FFFF             call    006A8170
006AB0CF   8B15F8B07D00           mov     edx, [$007DB0F8]
006AB0D5   833A06                 cmp     dword ptr [edx], +$06
006AB0D8   0F8580000000           jnz     006AB15E
006AB0DE   83E801                 sub     eax, +$01
006AB0E1   7262                   jb      006AB145
006AB0E3   83E827                 sub     eax, +$27
006AB0E6   742B                   jz      006AB113
006AB0E8   83E808                 sub     eax, +$08
006AB0EB   7442                   jz      006AB12F
006AB0ED   83E81F                 sub     eax, +$1F
006AB0F0   7405                   jz      006AB0F7
006AB0F2   E9C9000000             jmp     006AB1C0
006AB0F7   6A00                   push    $00
006AB0F9   668B0DC8B16A00         mov     cx, word ptr [$006AB1C8]
006AB100   33D2                   xor     edx, edx

* Possible String Reference to: 'Atenção:A impressora está Off-line.
|                                 Por favor deixe-a on line!'
|
006AB102   B8D4B16A00             mov     eax, $006AB1D4

|
006AB107   E8208AD9FF             call    00443B2C
006AB10C   33DB                   xor     ebx, ebx
006AB10E   E9AD000000             jmp     006AB1C0
006AB113   6A00                   push    $00
006AB115   668B0DC8B16A00         mov     cx, word ptr [$006AB1C8]
006AB11C   33D2                   xor     edx, edx

* Possible String Reference to: 'Atenção:Fim de papel. Troque a bobi
|                                na!'
|
006AB11E   B820B26A00             mov     eax, $006AB220

|
006AB123   E8048AD9FF             call    00443B2C
006AB128   33DB                   xor     ebx, ebx
006AB12A   E991000000             jmp     006AB1C0
006AB12F   B9FFFF0000             mov     ecx, $0000FFFF
006AB134   BAFF000000             mov     edx, $000000FF

* Possible String Reference to: 'Pouco Papel!'
|
006AB139   B854B26A00             mov     eax, $006AB254

* Reference to : TFrmInfoAtu._PROC_007B2F88()
|
006AB13E   E8457E1000             call    007B2F88
006AB143   EB7B                   jmp     006AB1C0
006AB145   6A00                   push    $00
006AB147   668B0DC8B16A00         mov     cx, word ptr [$006AB1C8]
006AB14E   33D2                   xor     edx, edx

* Possible String Reference to: 'Impressora desligada ou cabo descon
|                                ectado!'
|
006AB150   B86CB26A00             mov     eax, $006AB26C

|
006AB155   E8D289D9FF             call    00443B2C
006AB15A   33DB                   xor     ebx, ebx
006AB15C   EB62                   jmp     006AB1C0
006AB15E   8B15F8B07D00           mov     edx, [$007DB0F8]
006AB164   833A05                 cmp     dword ptr [edx], +$05
006AB167   7D57                   jnl     006AB1C0
006AB169   83E801                 sub     eax, +$01
006AB16C   720C                   jb      006AB17A
006AB16E   83E804                 sub     eax, +$04
006AB171   7439                   jz      006AB1AC
006AB173   83E81B                 sub     eax, +$1B
006AB176   741B                   jz      006AB193
006AB178   EB46                   jmp     006AB1C0
006AB17A   6A00                   push    $00
006AB17C   668B0DC8B16A00         mov     cx, word ptr [$006AB1C8]
006AB183   33D2                   xor     edx, edx

* Possible String Reference to: 'Atenção:A impressora está Off-line.
|                                 Por favor deixe-a on line!'
|
006AB185   B8D4B16A00             mov     eax, $006AB1D4

|
006AB18A   E89D89D9FF             call    00443B2C
006AB18F   33DB                   xor     ebx, ebx
006AB191   EB2D                   jmp     006AB1C0
006AB193   6A00                   push    $00
006AB195   668B0DC8B16A00         mov     cx, word ptr [$006AB1C8]
006AB19C   33D2                   xor     edx, edx

* Possible String Reference to: 'Atenção:Fim de papel. Troque a bobi
|                                na!'
|
006AB19E   B820B26A00             mov     eax, $006AB220

|
006AB1A3   E88489D9FF             call    00443B2C
006AB1A8   33DB                   xor     ebx, ebx
006AB1AA   EB14                   jmp     006AB1C0
006AB1AC   B9FFFF0000             mov     ecx, $0000FFFF
006AB1B1   BAFF000000             mov     edx, $000000FF

* Possible String Reference to: 'Pouco Papel!'
|
006AB1B6   B854B26A00             mov     eax, $006AB254

* Reference to : TFrmInfoAtu._PROC_007B2F88()
|
006AB1BB   E8C87D1000             call    007B2F88
006AB1C0   8BC3                   mov     eax, ebx
006AB1C2   5B                     pop     ebx
006AB1C3   5D                     pop     ebp
006AB1C4   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB299(Sender : TObject);
begin
(*
006AB299   8BEC                   mov     ebp, esp
006AB29B   53                     push    ebx
006AB29C   B301                   mov     bl, $01

* Reference to: Mp2032.Le_Status()
|
006AB29E   E8CDCEFFFF             call    006A8170
006AB2A3   8B15F8B07D00           mov     edx, [$007DB0F8]
006AB2A9   833A06                 cmp     dword ptr [edx], +$06
006AB2AC   7512                   jnz     006AB2C0
006AB2AE   83E801                 sub     eax, +$01
006AB2B1   7209                   jb      006AB2BC
006AB2B3   83E84E                 sub     eax, +$4E
006AB2B6   751A                   jnz     006AB2D2
006AB2B8   33DB                   xor     ebx, ebx
006AB2BA   EB16                   jmp     006AB2D2
006AB2BC   33DB                   xor     ebx, ebx
006AB2BE   EB12                   jmp     006AB2D2
006AB2C0   8B15F8B07D00           mov     edx, [$007DB0F8]
006AB2C6   833A05                 cmp     dword ptr [edx], +$05
006AB2C9   7D07                   jnl     006AB2D2
006AB2CB   83E801                 sub     eax, +$01
006AB2CE   7302                   jnb     006AB2D2
006AB2D0   33DB                   xor     ebx, ebx
006AB2D2   8BC3                   mov     eax, ebx
006AB2D4   5B                     pop     ebx
006AB2D5   5D                     pop     ebp
006AB2D6   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB2D8(Sender : TObject);
begin
(*
006AB2D8   55                     push    ebp
006AB2D9   8BEC                   mov     ebp, esp
006AB2DB   53                     push    ebx
006AB2DC   33DB                   xor     ebx, ebx
006AB2DE   85C0                   test    eax, eax
006AB2E0   750C                   jnz     006AB2EE

* Possible String Reference to: 'Problemas na impressão! Possíveis c
|                                ausas: Impressora desligada, off-li
|                                ne ou sem papel'
|
006AB2E2   B800B36A00             mov     eax, $006AB300

* Reference to : TFrmInfoAtu._PROC_007A5BC4()
|
006AB2E7   E8D8A80F00             call    007A5BC4
006AB2EC   EB02                   jmp     006AB2F0
006AB2EE   B301                   mov     bl, $01
006AB2F0   8BC3                   mov     eax, ebx
006AB2F2   5B                     pop     ebx
006AB2F3   5D                     pop     ebp
006AB2F4   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB2FD(Sender : TObject);
begin
(*
006AB2FD   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AB359(Sender : TObject);
begin
(*
006AB359   8BEC                   mov     ebp, esp
006AB35B   6A00                   push    $00
006AB35D   53                     push    ebx
006AB35E   33C0                   xor     eax, eax
006AB360   55                     push    ebp
006AB361   68F3B36A00             push    $006AB3F3

***** TRY
|
006AB366   64FF30                 push    dword ptr fs:[eax]
006AB369   648920                 mov     fs:[eax], esp
006AB36C   33DB                   xor     ebx, ebx

* Reference to: Mp2032.Le_Status_Gaveta()
|
006AB36E   E805CEFFFF             call    006A8178
006AB373   83E801                 sub     eax, +$01
006AB376   7207                   jb      006AB37F
006AB378   83E802                 sub     eax, +$02
006AB37B   723F                   jb      006AB3BC
006AB37D   EB5E                   jmp     006AB3DD
006AB37F   6A00                   push    $00
006AB381   668B0D00B46A00         mov     cx, word ptr [$006AB400]
006AB388   B203                   mov     dl, $03

* Possible String Reference to: 'Erro ao abrir a gaveta!Falha de com
|                                unicação!Deseja tentar novamente?'
|
006AB38A   B80CB46A00             mov     eax, $006AB40C

|
006AB38F   E89887D9FF             call    00443B2C
006AB394   83F806                 cmp     eax, +$06
006AB397   7544                   jnz     006AB3DD
006AB399   8D45FC                 lea     eax, [ebp-$04]
006AB39C   BA60B46A00             mov     edx, $006AB460

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AB3A1   E88EA1D5FF             call    00405534
006AB3A6   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
006AB3A9   E8AEA3D5FF             call    0040575C
006AB3AE   50                     push    eax
006AB3AF   8B45FC                 mov     eax, [ebp-$04]
006AB3B2   50                     push    eax

* Reference to: Mp2032.ComandoTX()
|
006AB3B3   E8B0CDFFFF             call    006A8168
006AB3B8   B301                   mov     bl, $01
006AB3BA   EB21                   jmp     006AB3DD
006AB3BC   8D45FC                 lea     eax, [ebp-$04]
006AB3BF   BA60B46A00             mov     edx, $006AB460

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AB3C4   E86BA1D5FF             call    00405534
006AB3C9   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
006AB3CC   E88BA3D5FF             call    0040575C
006AB3D1   50                     push    eax
006AB3D2   8B45FC                 mov     eax, [ebp-$04]
006AB3D5   50                     push    eax

* Reference to: Mp2032.ComandoTX()
|
006AB3D6   E88DCDFFFF             call    006A8168
006AB3DB   B301                   mov     bl, $01
006AB3DD   33C0                   xor     eax, eax
006AB3DF   5A                     pop     edx
006AB3E0   59                     pop     ecx
006AB3E1   59                     pop     ecx
006AB3E2   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AB3E5   68FAB36A00             push    $006AB3FA
006AB3EA   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006AB3ED   E8AAA0D5FF             call    0040549C
006AB3F2   C3                     ret


* Reference to: System.@HandleFinally;
|
006AB3F3   E94099D5FF             jmp     00404D38
006AB3F8   EBF0                   jmp     006AB3EA

****** END
|
006AB3FA   8BC3                   mov     eax, ebx
006AB3FC   5B                     pop     ebx
006AB3FD   59                     pop     ecx
006AB3FE   5D                     pop     ebp
006AB3FF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB400(Sender : TObject);
begin
(*
006AB400   0300                   add     eax, [eax]
006AB402   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AB465(Sender : TObject);
begin
(*
006AB465   8BEC                   mov     ebp, esp
006AB467   33C0                   xor     eax, eax
006AB469   55                     push    ebp

* Possible String Reference to: 'é˜˜Õÿëø]Ãƒ-dí}'
|
006AB46A   689BB46A00             push    $006AB49B

***** TRY
|
006AB46F   64FF30                 push    dword ptr fs:[eax]
006AB472   648920                 mov     fs:[eax], esp
006AB475   FF0564ED7D00           inc     dword ptr [$007DED64]
006AB47B   7510                   jnz     006AB48D
006AB47D   B84CED7D00             mov     eax, $007DED4C

* Reference to class mp20ci
|
006AB482   8B1580816A00           mov     edx, [$006A8180]

* Reference to: System.@DynArrayClear(Pointer;Pointer;Pointer);
|
006AB488   E843B8D5FF             call    00406CD0
006AB48D   33C0                   xor     eax, eax
006AB48F   5A                     pop     edx
006AB490   59                     pop     ecx
006AB491   59                     pop     ecx
006AB492   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ãƒ-dí}'
|
006AB495   68A2B46A00             push    $006AB4A2
006AB49A   C3                     ret


* Reference to: System.@HandleFinally;
|
006AB49B   E99898D5FF             jmp     00404D38
006AB4A0   EBF8                   jmp     006AB49A

****** END
|
006AB4A2   5D                     pop     ebp
006AB4A3   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB4A4(Sender : TObject);
begin
(*
006AB4A4   832D64ED7D0001         sub     dword ptr [$007DED64], +$01
006AB4AB   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB4AC(Sender : TObject);
begin
(*
006AB4AC   55                     push    ebp
006AB4AD   8BEC                   mov     ebp, esp
006AB4AF   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AB4B4   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006AB4B6   BAF4B46A00             mov     edx, $006AB4F4

* Reference to: System.@LStrCmp;
|
006AB4BB   E8E8A3D5FF             call    004058A8
006AB4C0   7509                   jnz     006AB4CB
006AB4C2   B001                   mov     al, $01

|
006AB4C4   E83B07FCFF             call    0066BC04
006AB4C9   5D                     pop     ebp
006AB4CA   C3                     ret

006AB4CB   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AB4D0   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006AB4D2   BA08B56A00             mov     edx, $006AB508

* Reference to: System.@LStrCmp;
|
006AB4D7   E8CCA3D5FF             call    004058A8
006AB4DC   7507                   jnz     006AB4E5

|
006AB4DE   E8B5FDFFFF             call    006AB298
006AB4E3   EB02                   jmp     006AB4E7
006AB4E5   B001                   mov     al, $01
006AB4E7   5D                     pop     ebp
006AB4E8   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB511(Sender : TObject);
begin
(*
006AB511   8BEC                   mov     ebp, esp
006AB513   83C4F0                 add     esp, -$10
006AB516   53                     push    ebx
006AB517   56                     push    esi
006AB518   57                     push    edi
006AB519   33D2                   xor     edx, edx
006AB51B   8955F0                 mov     [ebp-$10], edx
006AB51E   8955F4                 mov     [ebp-$0C], edx
006AB521   8945FC                 mov     [ebp-$04], eax
006AB524   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB527   E820A4D5FF             call    0040594C
006AB52C   33C0                   xor     eax, eax
006AB52E   55                     push    ebp

* Possible String Reference to: 'é1—ÕÿëãŠEû_^[‹å]Ã'
|
006AB52F   6802B66A00             push    $006AB602

***** TRY
|
006AB534   64FF30                 push    dword ptr fs:[eax]
006AB537   648920                 mov     fs:[eax], esp
006AB53A   C645FB00               mov     byte ptr [ebp-$05], $00
006AB53E   33C0                   xor     eax, eax
006AB540   55                     push    ebp
006AB541   68D8B56A00             push    $006AB5D8

***** TRY
|
006AB546   64FF30                 push    dword ptr fs:[eax]
006AB549   648920                 mov     fs:[eax], esp
006AB54C   33C0                   xor     eax, eax
006AB54E   55                     push    ebp
006AB54F   688FB56A00             push    $006AB58F

***** TRY
|
006AB554   64FF30                 push    dword ptr fs:[eax]
006AB557   648920                 mov     fs:[eax], esp
006AB55A   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AB55F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006AB561   BA1CB66A00             mov     edx, $006AB61C

* Reference to: System.@LStrCmp;
|
006AB566   E83DA3D5FF             call    004058A8
006AB56B   7518                   jnz     006AB585
006AB56D   8D55F4                 lea     edx, [ebp-$0C]
006AB570   8B45FC                 mov     eax, [ebp-$04]

|
006AB573   E8B807FCFF             call    0066BD30
006AB578   8B45F4                 mov     eax, [ebp-$0C]
006AB57B   B201                   mov     dl, $01

|
006AB57D   E87A20FCFF             call    0066D5FC
006AB582   8845FB                 mov     [ebp-$05], al
006AB585   33C0                   xor     eax, eax
006AB587   5A                     pop     edx
006AB588   59                     pop     ecx
006AB589   59                     pop     ecx
006AB58A   648910                 mov     fs:[eax], edx
006AB58D   EB3B                   jmp     006AB5CA

* Reference to: System.@HandleOnException;
|
006AB58F   E91C96D5FF             jmp     00404BB0
006AB594   0100                   add     [eax], eax
006AB596   0000                   add     [eax], al
006AB598   40                     inc     eax
006AB599   95                     xchg    eax, ebp
006AB59A   40                     inc     eax
006AB59B   00A0B56A0089           add     [eax+$89006AB5], ah
006AB5A1   C3                     ret

006AB5A2   6A00                   push    $00
006AB5A4   8B4B04                 mov     ecx, [ebx+$04]
006AB5A7   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'Erro ao abrir o cupom de restaurant
|                                e!'
|
006AB5AA   BA30B66A00             mov     edx, $006AB630

* Reference to: System.@LStrCat3;
|
006AB5AF   E8F4A1D5FF             call    004057A8
006AB5B4   8B45F0                 mov     eax, [ebp-$10]
006AB5B7   668B0D58B66A00         mov     cx, word ptr [$006AB658]
006AB5BE   B201                   mov     dl, $01

|
006AB5C0   E86785D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006AB5C5   E8E698D5FF             call    00404EB0

****** END
|
006AB5CA   33C0                   xor     eax, eax
006AB5CC   5A                     pop     edx
006AB5CD   59                     pop     ecx
006AB5CE   59                     pop     ecx
006AB5CF   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AB5D2   68DFB56A00             push    $006AB5DF
006AB5D7   C3                     ret


* Reference to: System.@HandleFinally;
|
006AB5D8   E95B97D5FF             jmp     00404D38
006AB5DD   EBF8                   jmp     006AB5D7

****** END
|
006AB5DF   33C0                   xor     eax, eax
006AB5E1   5A                     pop     edx
006AB5E2   59                     pop     ecx
006AB5E3   59                     pop     ecx
006AB5E4   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEû_^[‹å]Ã'
|
006AB5E7   6809B66A00             push    $006AB609
006AB5EC   8D45F0                 lea     eax, [ebp-$10]
006AB5EF   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AB5F4   E8C79ED5FF             call    004054C0
006AB5F9   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006AB5FC   E89B9ED5FF             call    0040549C
006AB601   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB602(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006AB602   E93197D5FF             jmp     00404D38

|
006AB607   EBE3                   jmp     006AB5EC
006AB609   8A45FB                 mov     al, byte ptr [ebp-$05]
006AB60C   5F                     pop     edi
006AB60D   5E                     pop     esi
006AB60E   5B                     pop     ebx
006AB60F   8BE5                   mov     esp, ebp
006AB611   5D                     pop     ebp
006AB612   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB65D(Sender : TObject);
begin
(*
006AB65D   8BEC                   mov     ebp, esp
006AB65F   83C4E8                 add     esp, -$18
006AB662   53                     push    ebx
006AB663   56                     push    esi
006AB664   57                     push    edi
006AB665   33DB                   xor     ebx, ebx
006AB667   895DE8                 mov     [ebp-$18], ebx
006AB66A   895DEC                 mov     [ebp-$14], ebx
006AB66D   894DF4                 mov     [ebp-$0C], ecx
006AB670   8955F8                 mov     [ebp-$08], edx
006AB673   8945FC                 mov     [ebp-$04], eax
006AB676   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB679   E8CEA2D5FF             call    0040594C
006AB67E   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB681   E8C6A2D5FF             call    0040594C
006AB686   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB689   E8BEA2D5FF             call    0040594C
006AB68E   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB691   E8B6A2D5FF             call    0040594C
006AB696   8B4510                 mov     eax, [ebp+$10]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB699   E8AEA2D5FF             call    0040594C
006AB69E   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB6A1   E8A6A2D5FF             call    0040594C
006AB6A6   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB6A9   E89EA2D5FF             call    0040594C
006AB6AE   33C0                   xor     eax, eax
006AB6B0   55                     push    ebp
006AB6B1   68DAB76A00             push    $006AB7DA

***** TRY
|
006AB6B6   64FF30                 push    dword ptr fs:[eax]
006AB6B9   648920                 mov     fs:[eax], esp
006AB6BC   C645F300               mov     byte ptr [ebp-$0D], $00
006AB6C0   33C0                   xor     eax, eax
006AB6C2   55                     push    ebp
006AB6C3   689EB76A00             push    $006AB79E

***** TRY
|
006AB6C8   64FF30                 push    dword ptr fs:[eax]
006AB6CB   648920                 mov     fs:[eax], esp
006AB6CE   33C0                   xor     eax, eax
006AB6D0   55                     push    ebp
006AB6D1   6855B76A00             push    $006AB755

***** TRY
|
006AB6D6   64FF30                 push    dword ptr fs:[eax]
006AB6D9   648920                 mov     fs:[eax], esp
006AB6DC   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AB6E1   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006AB6E3   BAF8B76A00             mov     edx, $006AB7F8

* Reference to: System.@LStrCmp;
|
006AB6E8   E8BBA1D5FF             call    004058A8
006AB6ED   755C                   jnz     006AB74B
006AB6EF   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrLen(String):Integer;
|
006AB6F2   E865A0D5FF             call    0040575C
006AB6F7   83F81D                 cmp     eax, +$1D
006AB6FA   7E16                   jle     006AB712
006AB6FC   8D45F8                 lea     eax, [ebp-$08]
006AB6FF   50                     push    eax
006AB700   B91D000000             mov     ecx, $0000001D
006AB705   BA01000000             mov     edx, $00000001
006AB70A   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrCopy;
|
006AB70D   E8AAA2D5FF             call    004059BC
006AB712   8B4514                 mov     eax, [ebp+$14]
006AB715   50                     push    eax
006AB716   8B4510                 mov     eax, [ebp+$10]
006AB719   50                     push    eax
006AB71A   8B450C                 mov     eax, [ebp+$0C]
006AB71D   50                     push    eax
006AB71E   8B4508                 mov     eax, [ebp+$08]
006AB721   50                     push    eax
006AB722   680CB86A00             push    $006AB80C
006AB727   8D45EC                 lea     eax, [ebp-$14]
006AB72A   50                     push    eax
006AB72B   8B4DF4                 mov     ecx, [ebp-$0C]
006AB72E   8B55F8                 mov     edx, [ebp-$08]
006AB731   8B45FC                 mov     eax, [ebp-$04]

* Reference to: xmlutil.PutValue(IDOMNode;AnsiString;AnsiString);
|
006AB734   E88B06FCFF             call    0066BDC4
006AB739   8B45EC                 mov     eax, [ebp-$14]
006AB73C   B201                   mov     dl, $01

|
006AB73E   E8B91EFCFF             call    0066D5FC
006AB743   84C0                   test    al, al
006AB745   7404                   jz      006AB74B
006AB747   C645F301               mov     byte ptr [ebp-$0D], $01
006AB74B   33C0                   xor     eax, eax
006AB74D   5A                     pop     edx
006AB74E   59                     pop     ecx
006AB74F   59                     pop     ecx
006AB750   648910                 mov     fs:[eax], edx
006AB753   EB3B                   jmp     006AB790

* Reference to: System.@HandleOnException;
|
006AB755   E95694D5FF             jmp     00404BB0
006AB75A   0100                   add     [eax], eax
006AB75C   0000                   add     [eax], al
006AB75E   40                     inc     eax
006AB75F   95                     xchg    eax, ebp
006AB760   40                     inc     eax
006AB761   0066B7                 add     [esi-$49], ah
006AB764   6A00                   push    $00
006AB766   89C3                   mov     ebx, eax
006AB768   6A00                   push    $00
006AB76A   8B4B04                 mov     ecx, [ebx+$04]
006AB76D   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Erro ao abrir o cupom de restaurant
|                                e!'
|
006AB770   BA18B86A00             mov     edx, $006AB818

* Reference to: System.@LStrCat3;
|
006AB775   E82EA0D5FF             call    004057A8
006AB77A   8B45E8                 mov     eax, [ebp-$18]
006AB77D   668B0D40B86A00         mov     cx, word ptr [$006AB840]
006AB784   B201                   mov     dl, $01

|
006AB786   E8A183D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006AB78B   E82097D5FF             call    00404EB0

****** END
|
006AB790   33C0                   xor     eax, eax
006AB792   5A                     pop     edx
006AB793   59                     pop     ecx
006AB794   59                     pop     ecx
006AB795   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AB798   68A5B76A00             push    $006AB7A5
006AB79D   C3                     ret


* Reference to: System.@HandleFinally;
|
006AB79E   E99595D5FF             jmp     00404D38
006AB7A3   EBF8                   jmp     006AB79D

****** END
|
006AB7A5   33C0                   xor     eax, eax
006AB7A7   5A                     pop     edx
006AB7A8   59                     pop     ecx
006AB7A9   59                     pop     ecx
006AB7AA   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AB7AD   68E1B76A00             push    $006AB7E1
006AB7B2   8D45E8                 lea     eax, [ebp-$18]
006AB7B5   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AB7BA   E8019DD5FF             call    004054C0
006AB7BF   8D45F4                 lea     eax, [ebp-$0C]
006AB7C2   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AB7C7   E8F49CD5FF             call    004054C0
006AB7CC   8D4508                 lea     eax, [ebp+$08]
006AB7CF   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AB7D4   E8E79CD5FF             call    004054C0
006AB7D9   C3                     ret


* Reference to: System.@HandleFinally;
|
006AB7DA   E95995D5FF             jmp     00404D38
006AB7DF   EBD1                   jmp     006AB7B2

****** END
|
006AB7E1   8A45F3                 mov     al, byte ptr [ebp-$0D]
006AB7E4   5F                     pop     edi
006AB7E5   5E                     pop     esi
006AB7E6   5B                     pop     ebx
006AB7E7   8BE5                   mov     esp, ebp
006AB7E9   5D                     pop     ebp
006AB7EA   C21000                 ret     $0010

*)
end;

procedure TfrmGerenciador._PROC_006AB7DA(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006AB7DA   E95995D5FF             jmp     00404D38

|
006AB7DF   EBD1                   jmp     006AB7B2
006AB7E1   8A45F3                 mov     al, byte ptr [ebp-$0D]
006AB7E4   5F                     pop     edi
006AB7E5   5E                     pop     esi
006AB7E6   5B                     pop     ebx
006AB7E7   8BE5                   mov     esp, ebp
006AB7E9   5D                     pop     ebp
006AB7EA   C21000                 ret     $0010

*)
end;

procedure TfrmGerenciador._PROC_006AB845(Sender : TObject);
begin
(*
006AB845   8BEC                   mov     ebp, esp
006AB847   83C4EC                 add     esp, -$14
006AB84A   53                     push    ebx
006AB84B   56                     push    esi
006AB84C   57                     push    edi
006AB84D   33C9                   xor     ecx, ecx
006AB84F   894DEC                 mov     [ebp-$14], ecx
006AB852   894DF0                 mov     [ebp-$10], ecx
006AB855   8955F8                 mov     [ebp-$08], edx
006AB858   8945FC                 mov     [ebp-$04], eax
006AB85B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB85E   E8E9A0D5FF             call    0040594C
006AB863   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB866   E8E1A0D5FF             call    0040594C
006AB86B   33C0                   xor     eax, eax
006AB86D   55                     push    ebp

* Possible String Reference to: 'éê“ÕÿëÞŠE÷_^[‹å]Ã'
|
006AB86E   6849B96A00             push    $006AB949

***** TRY
|
006AB873   64FF30                 push    dword ptr fs:[eax]
006AB876   648920                 mov     fs:[eax], esp
006AB879   C645F700               mov     byte ptr [ebp-$09], $00
006AB87D   33C0                   xor     eax, eax
006AB87F   55                     push    ebp
006AB880   681AB96A00             push    $006AB91A

***** TRY
|
006AB885   64FF30                 push    dword ptr fs:[eax]
006AB888   648920                 mov     fs:[eax], esp
006AB88B   33C0                   xor     eax, eax
006AB88D   55                     push    ebp
006AB88E   68D1B86A00             push    $006AB8D1

***** TRY
|
006AB893   64FF30                 push    dword ptr fs:[eax]
006AB896   648920                 mov     fs:[eax], esp
006AB899   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AB89E   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006AB8A0   BA64B96A00             mov     edx, $006AB964

* Reference to: System.@LStrCmp;
|
006AB8A5   E8FE9FD5FF             call    004058A8
006AB8AA   751B                   jnz     006AB8C7
006AB8AC   8D4DF0                 lea     ecx, [ebp-$10]
006AB8AF   8B55F8                 mov     edx, [ebp-$08]
006AB8B2   8B45FC                 mov     eax, [ebp-$04]

|
006AB8B5   E88E0CFCFF             call    0066C548
006AB8BA   8B45F0                 mov     eax, [ebp-$10]
006AB8BD   B201                   mov     dl, $01

|
006AB8BF   E8381DFCFF             call    0066D5FC
006AB8C4   8845F7                 mov     [ebp-$09], al
006AB8C7   33C0                   xor     eax, eax
006AB8C9   5A                     pop     edx
006AB8CA   59                     pop     ecx
006AB8CB   59                     pop     ecx
006AB8CC   648910                 mov     fs:[eax], edx
006AB8CF   EB3B                   jmp     006AB90C

* Reference to: System.@HandleOnException;
|
006AB8D1   E9DA92D5FF             jmp     00404BB0
006AB8D6   0100                   add     [eax], eax
006AB8D8   0000                   add     [eax], al
006AB8DA   40                     inc     eax
006AB8DB   95                     xchg    eax, ebp
006AB8DC   40                     inc     eax
006AB8DD   00E2                   add     dl, ah
006AB8DF   B86A0089C3             mov     eax, $C389006A
006AB8E4   6A00                   push    $00
006AB8E6   8B4B04                 mov     ecx, [ebx+$04]
006AB8E9   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'Erro ao abrir o cupom de restaurant
|                                e!'
|
006AB8EC   BA78B96A00             mov     edx, $006AB978

* Reference to: System.@LStrCat3;
|
006AB8F1   E8B29ED5FF             call    004057A8
006AB8F6   8B45EC                 mov     eax, [ebp-$14]
006AB8F9   668B0DA0B96A00         mov     cx, word ptr [$006AB9A0]
006AB900   B201                   mov     dl, $01

|
006AB902   E82582D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006AB907   E8A495D5FF             call    00404EB0

****** END
|
006AB90C   33C0                   xor     eax, eax
006AB90E   5A                     pop     edx
006AB90F   59                     pop     ecx
006AB910   59                     pop     ecx
006AB911   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AB914   6821B96A00             push    $006AB921
006AB919   C3                     ret


* Reference to: System.@HandleFinally;
|
006AB91A   E91994D5FF             jmp     00404D38
006AB91F   EBF8                   jmp     006AB919

****** END
|
006AB921   33C0                   xor     eax, eax
006AB923   5A                     pop     edx
006AB924   59                     pop     ecx
006AB925   59                     pop     ecx
006AB926   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠE÷_^[‹å]Ã'
|
006AB929   6850B96A00             push    $006AB950
006AB92E   8D45EC                 lea     eax, [ebp-$14]
006AB931   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AB936   E8859BD5FF             call    004054C0
006AB93B   8D45F8                 lea     eax, [ebp-$08]
006AB93E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AB943   E8789BD5FF             call    004054C0
006AB948   C3                     ret


* Reference to: System.@HandleFinally;
|
006AB949   E9EA93D5FF             jmp     00404D38
006AB94E   EBDE                   jmp     006AB92E

****** END
|
006AB950   8A45F7                 mov     al, byte ptr [ebp-$09]
006AB953   5F                     pop     edi
006AB954   5E                     pop     esi
006AB955   5B                     pop     ebx
006AB956   8BE5                   mov     esp, ebp
006AB958   5D                     pop     ebp
006AB959   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB949(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006AB949   E9EA93D5FF             jmp     00404D38

|
006AB94E   EBDE                   jmp     006AB92E
006AB950   8A45F7                 mov     al, byte ptr [ebp-$09]
006AB953   5F                     pop     edi
006AB954   5E                     pop     esi
006AB955   5B                     pop     ebx
006AB956   8BE5                   mov     esp, ebp
006AB958   5D                     pop     ebp
006AB959   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AB9A5(Sender : TObject);
begin
(*
006AB9A5   8BEC                   mov     ebp, esp
006AB9A7   83C4E8                 add     esp, -$18
006AB9AA   53                     push    ebx
006AB9AB   56                     push    esi
006AB9AC   57                     push    edi
006AB9AD   33DB                   xor     ebx, ebx
006AB9AF   895DE8                 mov     [ebp-$18], ebx
006AB9B2   895DEC                 mov     [ebp-$14], ebx
006AB9B5   894DF4                 mov     [ebp-$0C], ecx
006AB9B8   8955F8                 mov     [ebp-$08], edx
006AB9BB   8945FC                 mov     [ebp-$04], eax
006AB9BE   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB9C1   E8869FD5FF             call    0040594C
006AB9C6   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB9C9   E87E9FD5FF             call    0040594C
006AB9CE   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AB9D1   E8769FD5FF             call    0040594C
006AB9D6   33C0                   xor     eax, eax
006AB9D8   55                     push    ebp

* Possible String Reference to: 'é{’ÕÿëÞŠEó_^[‹å]Ã'
|
006AB9D9   68B8BA6A00             push    $006ABAB8

***** TRY
|
006AB9DE   64FF30                 push    dword ptr fs:[eax]
006AB9E1   648920                 mov     fs:[eax], esp
006AB9E4   C645F300               mov     byte ptr [ebp-$0D], $00
006AB9E8   33C0                   xor     eax, eax
006AB9EA   55                     push    ebp
006AB9EB   6889BA6A00             push    $006ABA89

***** TRY
|
006AB9F0   64FF30                 push    dword ptr fs:[eax]
006AB9F3   648920                 mov     fs:[eax], esp
006AB9F6   33C0                   xor     eax, eax
006AB9F8   55                     push    ebp
006AB9F9   6840BA6A00             push    $006ABA40

***** TRY
|
006AB9FE   64FF30                 push    dword ptr fs:[eax]
006ABA01   648920                 mov     fs:[eax], esp
006ABA04   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ABA09   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006ABA0B   BAD4BA6A00             mov     edx, $006ABAD4

* Reference to: System.@LStrCmp;
|
006ABA10   E8939ED5FF             call    004058A8
006ABA15   751F                   jnz     006ABA36
006ABA17   8D45EC                 lea     eax, [ebp-$14]
006ABA1A   50                     push    eax
006ABA1B   8B4DF4                 mov     ecx, [ebp-$0C]
006ABA1E   8B55F8                 mov     edx, [ebp-$08]
006ABA21   8B45FC                 mov     eax, [ebp-$04]

|
006ABA24   E8030DFCFF             call    0066C72C
006ABA29   8B45EC                 mov     eax, [ebp-$14]
006ABA2C   B201                   mov     dl, $01

|
006ABA2E   E8C91BFCFF             call    0066D5FC
006ABA33   8845F3                 mov     [ebp-$0D], al
006ABA36   33C0                   xor     eax, eax
006ABA38   5A                     pop     edx
006ABA39   59                     pop     ecx
006ABA3A   59                     pop     ecx
006ABA3B   648910                 mov     fs:[eax], edx
006ABA3E   EB3B                   jmp     006ABA7B

* Reference to: System.@HandleOnException;
|
006ABA40   E96B91D5FF             jmp     00404BB0
006ABA45   0100                   add     [eax], eax
006ABA47   0000                   add     [eax], al
006ABA49   40                     inc     eax
006ABA4A   95                     xchg    eax, ebp
006ABA4B   40                     inc     eax
006ABA4C   0051BA                 add     [ecx-$46], dl
006ABA4F   6A00                   push    $00
006ABA51   89C3                   mov     ebx, eax
006ABA53   6A00                   push    $00
006ABA55   8B4B04                 mov     ecx, [ebx+$04]
006ABA58   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Erro ao abrir o cupom de restaurant
|                                e!'
|
006ABA5B   BAE8BA6A00             mov     edx, $006ABAE8

* Reference to: System.@LStrCat3;
|
006ABA60   E8439DD5FF             call    004057A8
006ABA65   8B45E8                 mov     eax, [ebp-$18]
006ABA68   668B0D10BB6A00         mov     cx, word ptr [$006ABB10]
006ABA6F   B201                   mov     dl, $01

|
006ABA71   E8B680D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006ABA76   E83594D5FF             call    00404EB0

****** END
|
006ABA7B   33C0                   xor     eax, eax
006ABA7D   5A                     pop     edx
006ABA7E   59                     pop     ecx
006ABA7F   59                     pop     ecx
006ABA80   648910                 mov     fs:[eax], edx

****** FINALLY
|
006ABA83   6890BA6A00             push    $006ABA90
006ABA88   C3                     ret


* Reference to: System.@HandleFinally;
|
006ABA89   E9AA92D5FF             jmp     00404D38
006ABA8E   EBF8                   jmp     006ABA88

****** END
|
006ABA90   33C0                   xor     eax, eax
006ABA92   5A                     pop     edx
006ABA93   59                     pop     ecx
006ABA94   59                     pop     ecx
006ABA95   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEó_^[‹å]Ã'
|
006ABA98   68BFBA6A00             push    $006ABABF
006ABA9D   8D45E8                 lea     eax, [ebp-$18]
006ABAA0   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006ABAA5   E8169AD5FF             call    004054C0
006ABAAA   8D45F4                 lea     eax, [ebp-$0C]
006ABAAD   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006ABAB2   E8099AD5FF             call    004054C0
006ABAB7   C3                     ret


* Reference to: System.@HandleFinally;
|
006ABAB8   E97B92D5FF             jmp     00404D38
006ABABD   EBDE                   jmp     006ABA9D

****** END
|
006ABABF   8A45F3                 mov     al, byte ptr [ebp-$0D]
006ABAC2   5F                     pop     edi
006ABAC3   5E                     pop     esi
006ABAC4   5B                     pop     ebx
006ABAC5   8BE5                   mov     esp, ebp
006ABAC7   5D                     pop     ebp
006ABAC8   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ABAB8(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006ABAB8   E97B92D5FF             jmp     00404D38

|
006ABABD   EBDE                   jmp     006ABA9D
006ABABF   8A45F3                 mov     al, byte ptr [ebp-$0D]
006ABAC2   5F                     pop     edi
006ABAC3   5E                     pop     esi
006ABAC4   5B                     pop     ebx
006ABAC5   8BE5                   mov     esp, ebp
006ABAC7   5D                     pop     ebp
006ABAC8   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ABB15(Sender : TObject);
begin
(*
006ABB15   8BEC                   mov     ebp, esp
006ABB17   6A00                   push    $00
006ABB19   6A00                   push    $00
006ABB1B   6A00                   push    $00
006ABB1D   53                     push    ebx
006ABB1E   56                     push    esi
006ABB1F   57                     push    edi
006ABB20   33C0                   xor     eax, eax
006ABB22   55                     push    ebp

* Possible String Reference to: 'éF‘ÕÿëëŠEÿ_^[‹å]Ã'
|
006ABB23   68EDBB6A00             push    $006ABBED

***** TRY
|
006ABB28   64FF30                 push    dword ptr fs:[eax]
006ABB2B   648920                 mov     fs:[eax], esp
006ABB2E   C645FF00               mov     byte ptr [ebp-$01], $00
006ABB32   33C0                   xor     eax, eax
006ABB34   55                     push    ebp
006ABB35   68CBBB6A00             push    $006ABBCB

***** TRY
|
006ABB3A   64FF30                 push    dword ptr fs:[eax]
006ABB3D   648920                 mov     fs:[eax], esp
006ABB40   33C0                   xor     eax, eax
006ABB42   55                     push    ebp
006ABB43   6882BB6A00             push    $006ABB82

***** TRY
|
006ABB48   64FF30                 push    dword ptr fs:[eax]
006ABB4B   648920                 mov     fs:[eax], esp
006ABB4E   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ABB53   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006ABB55   BA08BC6A00             mov     edx, $006ABC08

* Reference to: System.@LStrCmp;
|
006ABB5A   E8499DD5FF             call    004058A8
006ABB5F   7517                   jnz     006ABB78
006ABB61   8D55F8                 lea     edx, [ebp-$08]
006ABB64   33C0                   xor     eax, eax

|
006ABB66   E89D0FFCFF             call    0066CB08
006ABB6B   8B45F8                 mov     eax, [ebp-$08]
006ABB6E   B201                   mov     dl, $01

|
006ABB70   E8871AFCFF             call    0066D5FC
006ABB75   8845FF                 mov     [ebp-$01], al
006ABB78   33C0                   xor     eax, eax
006ABB7A   5A                     pop     edx
006ABB7B   59                     pop     ecx
006ABB7C   59                     pop     ecx
006ABB7D   648910                 mov     fs:[eax], edx
006ABB80   EB3B                   jmp     006ABBBD

* Reference to: System.@HandleOnException;
|
006ABB82   E92990D5FF             jmp     00404BB0
006ABB87   0100                   add     [eax], eax
006ABB89   0000                   add     [eax], al
006ABB8B   40                     inc     eax
006ABB8C   95                     xchg    eax, ebp
006ABB8D   40                     inc     eax
006ABB8E   0093BB6A0089           add     [ebx+$89006ABB], dl
006ABB94   C3                     ret

006ABB95   6A00                   push    $00
006ABB97   8B4B04                 mov     ecx, [ebx+$04]
006ABB9A   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'Erro ao abrir o cupom de restaurant
|                                e!'
|
006ABB9D   BA1CBC6A00             mov     edx, $006ABC1C

* Reference to: System.@LStrCat3;
|
006ABBA2   E8019CD5FF             call    004057A8
006ABBA7   8B45F4                 mov     eax, [ebp-$0C]
006ABBAA   668B0D44BC6A00         mov     cx, word ptr [$006ABC44]
006ABBB1   B201                   mov     dl, $01

|
006ABBB3   E8747FD9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006ABBB8   E8F392D5FF             call    00404EB0

****** END
|
006ABBBD   33C0                   xor     eax, eax
006ABBBF   5A                     pop     edx
006ABBC0   59                     pop     ecx
006ABBC1   59                     pop     ecx
006ABBC2   648910                 mov     fs:[eax], edx

****** FINALLY
|
006ABBC5   68D2BB6A00             push    $006ABBD2
006ABBCA   C3                     ret


* Reference to: System.@HandleFinally;
|
006ABBCB   E96891D5FF             jmp     00404D38
006ABBD0   EBF8                   jmp     006ABBCA

****** END
|
006ABBD2   33C0                   xor     eax, eax
006ABBD4   5A                     pop     edx
006ABBD5   59                     pop     ecx
006ABBD6   59                     pop     ecx
006ABBD7   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006ABBDA   68F4BB6A00             push    $006ABBF4
006ABBDF   8D45F4                 lea     eax, [ebp-$0C]
006ABBE2   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006ABBE7   E8D498D5FF             call    004054C0
006ABBEC   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ABBED(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006ABBED   E94691D5FF             jmp     00404D38

|
006ABBF2   EBEB                   jmp     006ABBDF
006ABBF4   8A45FF                 mov     al, byte ptr [ebp-$01]
006ABBF7   5F                     pop     edi
006ABBF8   5E                     pop     esi
006ABBF9   5B                     pop     ebx
006ABBFA   8BE5                   mov     esp, ebp
006ABBFC   5D                     pop     ebp
006ABBFD   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ABC49(Sender : TObject);
begin
(*
006ABC49   8BEC                   mov     ebp, esp
006ABC4B   B908000000             mov     ecx, $00000008
006ABC50   6A00                   push    $00
006ABC52   6A00                   push    $00
006ABC54   49                     dec     ecx
006ABC55   75F9                   jnz     006ABC50
006ABC57   53                     push    ebx
006ABC58   56                     push    esi
006ABC59   57                     push    edi
006ABC5A   33C0                   xor     eax, eax
006ABC5C   55                     push    ebp

* Possible String Reference to: 'épÕÿëÞ_^[‹å]Ã'
|
006ABC5D   68C3BF6A00             push    $006ABFC3

***** TRY
|
006ABC62   64FF30                 push    dword ptr fs:[eax]
006ABC65   648920                 mov     fs:[eax], esp
006ABC68   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ABC6D   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006ABC6F   BADCBF6A00             mov     edx, $006ABFDC

* Reference to: System.@LStrCmp;
|
006ABC74   E82F9CD5FF             call    004058A8
006ABC79   0F85D2000000           jnz     006ABD51
006ABC7F   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006ABC84   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006ABC86   E8D5A0E0FF             call    004B5D60
006ABC8B   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: '14'
|
006ABC8E   B8F0BF6A00             mov     eax, $006ABFF0

|
006ABC93   E85817FCFF             call    0066D3F0
006ABC98   8B55EC                 mov     edx, [ebp-$14]
006ABC9B   A154B47D00             mov     eax, dword ptr [$007DB454]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ABCA0   E84B98D5FF             call    004054F0
006ABCA5   8D55E8                 lea     edx, [ebp-$18]

* Possible String Reference to: '27'
|
006ABCA8   B8FCBF6A00             mov     eax, $006ABFFC

|
006ABCAD   E83E17FCFF             call    0066D3F0
006ABCB2   8B55E8                 mov     edx, [ebp-$18]
006ABCB5   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ABCBA   E83198D5FF             call    004054F0
006ABCBF   8D45E4                 lea     eax, [ebp-$1C]

|
006ABCC2   E8C118FCFF             call    0066D588
006ABCC7   8B55E4                 mov     edx, [ebp-$1C]
006ABCCA   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ABCCF   E81C98D5FF             call    004054F0
006ABCD4   8D45E0                 lea     eax, [ebp-$20]
006ABCD7   50                     push    eax
006ABCD8   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]
006ABCDD   8B00                   mov     eax, [eax]
006ABCDF   B902000000             mov     ecx, $00000002
006ABCE4   BA01000000             mov     edx, $00000001

* Reference to: System.@LStrCopy;
|
006ABCE9   E8CE9CD5FF             call    004059BC
006ABCEE   FF75E0                 push    dword ptr [ebp-$20]
006ABCF1   6808C06A00             push    $006AC008
006ABCF6   8D45DC                 lea     eax, [ebp-$24]
006ABCF9   50                     push    eax
006ABCFA   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]
006ABCFF   8B00                   mov     eax, [eax]
006ABD01   B902000000             mov     ecx, $00000002
006ABD06   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCopy;
|
006ABD0B   E8AC9CD5FF             call    004059BC
006ABD10   FF75DC                 push    dword ptr [ebp-$24]
006ABD13   6808C06A00             push    $006AC008
006ABD18   8D45D8                 lea     eax, [ebp-$28]
006ABD1B   50                     push    eax
006ABD1C   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]
006ABD21   8B00                   mov     eax, [eax]
006ABD23   B902000000             mov     ecx, $00000002
006ABD28   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCopy;
|
006ABD2D   E88A9CD5FF             call    004059BC
006ABD32   FF75D8                 push    dword ptr [ebp-$28]
006ABD35   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]
006ABD3A   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
006ABD3F   E8D89AD5FF             call    0040581C
006ABD44   A108AF7D00             mov     eax, dword ptr [$007DAF08]
006ABD49   C60001                 mov     byte ptr [eax], $01
006ABD4C   E999010000             jmp     006ABEEA
006ABD51   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ABD56   8B00                   mov     eax, [eax]

* Possible String Reference to: 'daruma'
|
006ABD58   BA14C06A00             mov     edx, $006AC014

* Reference to: System.@LStrCmp;
|
006ABD5D   E8469BD5FF             call    004058A8
006ABD62   7511                   jnz     006ABD75
006ABD64   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006ABD69   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006ABD6B   E8F09FE0FF             call    004B5D60
006ABD70   E975010000             jmp     006ABEEA
006ABD75   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ABD7A   8B00                   mov     eax, [eax]

* Possible String Reference to: 'sweda'
|
006ABD7C   BA24C06A00             mov     edx, $006AC024

* Reference to: System.@LStrCmp;
|
006ABD81   E8229BD5FF             call    004058A8
006ABD86   0F845E010000           jz      006ABEEA
006ABD8C   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ABD91   8B00                   mov     eax, [eax]

* Possible String Reference to: 'zanthus'
|
006ABD93   BA34C06A00             mov     edx, $006AC034

* Reference to: System.@LStrCmp;
|
006ABD98   E80B9BD5FF             call    004058A8
006ABD9D   0F8447010000           jz      006ABEEA
006ABDA3   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ABDA8   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mecaf'
|
006ABDAA   BA44C06A00             mov     edx, $006AC044

* Reference to: System.@LStrCmp;
|
006ABDAF   E8F49AD5FF             call    004058A8
006ABDB4   0F8430010000           jz      006ABEEA
006ABDBA   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ABDBF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'trends'
|
006ABDC1   BA54C06A00             mov     edx, $006AC054

* Reference to: System.@LStrCmp;
|
006ABDC6   E8DD9AD5FF             call    004058A8
006ABDCB   7511                   jnz     006ABDDE
006ABDCD   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006ABDD2   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006ABDD4   E8879FE0FF             call    004B5D60
006ABDD9   E90C010000             jmp     006ABEEA

|
006ABDDE   E8991F0000             call    006ADD7C
006ABDE3   84C0                   test    al, al
006ABDE5   0F84FF000000           jz      006ABEEA
006ABDEB   8D45D4                 lea     eax, [ebp-$2C]

|
006ABDEE   E8591C0000             call    006ADA4C
006ABDF3   8B55D4                 mov     edx, [ebp-$2C]
006ABDF6   A154A37D00             mov     eax, dword ptr [$007DA354]
006ABDFB   8B00                   mov     eax, [eax]

|
006ABDFD   E89A020000             call    006AC09C
006ABE02   8945D0                 mov     [ebp-$30], eax
006ABE05   DB45D0                 fild    dword ptr [ebp-$30]
006ABE08   DB7DF0                 fstp    tbyte ptr [ebp-$10]
006ABE0B   9B                     wait

* Reference to: SysUtils.Date:TDateTime;
|
006ABE0C   E8EB1DD6FF             call    0040DBFC
006ABE11   83C4F8                 add     esp, -$08
006ABE14   DD1C24                 fstp    qword ptr [esp]
006ABE17   9B                     wait
006ABE18   8D55CC                 lea     edx, [ebp-$34]

* Possible String Reference to: 'dd/mm/yy'
|
006ABE1B   B864C06A00             mov     eax, $006AC064

|
006ABE20   E8B32AD6FF             call    0040E8D8
006ABE25   8B55CC                 mov     edx, [ebp-$34]
006ABE28   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ABE2D   E8BE96D5FF             call    004054F0
006ABE32   668B45F8               mov     ax, word ptr [ebp-$08]
006ABE36   50                     push    eax
006ABE37   FF75F4                 push    dword ptr [ebp-$0C]
006ABE3A   FF75F0                 push    dword ptr [ebp-$10]
006ABE3D   8D55C8                 lea     edx, [ebp-$38]

* Possible String Reference to: '0000'
|
006ABE40   B878C06A00             mov     eax, $006AC078

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006ABE45   E8F216D6FF             call    0040D53C
006ABE4A   8B55C8                 mov     edx, [ebp-$38]
006ABE4D   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ABE52   E89996D5FF             call    004054F0
006ABE57   8D55C4                 lea     edx, [ebp-$3C]
006ABE5A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ABE5F   8B00                   mov     eax, [eax]
006ABE61   8B4070                 mov     eax, [eax+$70]
006ABE64   8B08                   mov     ecx, [eax]
006ABE66   FF5160                 call    dword ptr [ecx+$60]
006ABE69   8B55C4                 mov     edx, [ebp-$3C]
006ABE6C   A154B47D00             mov     eax, dword ptr [$007DB454]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ABE71   E87A96D5FF             call    004054F0
006ABE76   A108AF7D00             mov     eax, dword ptr [$007DAF08]
006ABE7B   C60000                 mov     byte ptr [eax], $00
006ABE7E   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006ABE83   FF7004                 push    dword ptr [eax+$04]
006ABE86   FF30                   push    dword ptr [eax]
006ABE88   8D55C0                 lea     edx, [ebp-$40]

* Possible String Reference to: 'dd/mm/yy'
|
006ABE8B   B864C06A00             mov     eax, $006AC064

|
006ABE90   E8432AD6FF             call    0040E8D8
006ABE95   8B55C0                 mov     edx, [ebp-$40]
006ABE98   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ABE9D   E84E96D5FF             call    004054F0
006ABEA2   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]
006ABEA7   833800                 cmp     dword ptr [eax], +$00
006ABEAA   743E                   jz      006ABEEA
006ABEAC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ABEB1   8B00                   mov     eax, [eax]
006ABEB3   8B4064                 mov     eax, [eax+$64]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
006ABEB6   E87DF5E3FF             call    004EB438
006ABEBB   8B15E4B27D00           mov     edx, [$007DB2E4]
006ABEC1   8B12                   mov     edx, [edx]
006ABEC3   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ABEC8   8B00                   mov     eax, [eax]
006ABECA   8B80D4010000           mov     eax, [eax+$01D4]
006ABED0   8B08                   mov     ecx, [eax]
006ABED2   FF91B0000000           call    dword ptr [ecx+$00B0]
006ABED8   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ABEDD   8B00                   mov     eax, [eax]
006ABEDF   8B4064                 mov     eax, [eax+$64]
006ABEE2   8B10                   mov     edx, [eax]
006ABEE4   FF924C020000           call    dword ptr [edx+$024C]
006ABEEA   33D2                   xor     edx, edx
006ABEEC   55                     push    ebp
006ABEED   6876BF6A00             push    $006ABF76

***** TRY
|
006ABEF2   64FF32                 push    dword ptr fs:[edx]
006ABEF5   648922                 mov     fs:[edx], esp
006ABEF8   A154B47D00             mov     eax, dword ptr [$007DB454]
006ABEFD   833800                 cmp     dword ptr [eax], +$00
006ABF00   740E                   jz      006ABF10
006ABF02   A154B47D00             mov     eax, dword ptr [$007DB454]
006ABF07   8B00                   mov     eax, [eax]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006ABF09   E8C2EFD5FF             call    0040AED0
006ABF0E   EB0F                   jmp     006ABF1F
006ABF10   A154B47D00             mov     eax, dword ptr [$007DB454]

* Possible String Reference to: '000'
|
006ABF15   BA88C06A00             mov     edx, $006AC088

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ABF1A   E8D195D5FF             call    004054F0
006ABF1F   33C0                   xor     eax, eax
006ABF21   55                     push    ebp
006ABF22   6855BF6A00             push    $006ABF55

***** TRY
|
006ABF27   64FF30                 push    dword ptr fs:[eax]
006ABF2A   648920                 mov     fs:[eax], esp
006ABF2D   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]
006ABF32   833800                 cmp     dword ptr [eax], +$00
006ABF35   7414                   jz      006ABF4B
006ABF37   A1E4B27D00             mov     eax, dword ptr [$007DB2E4]
006ABF3C   8B00                   mov     eax, [eax]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
006ABF3E   E83935D6FF             call    0040F47C
006ABF43   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006ABF48   DD18                   fstp    qword ptr [eax]
006ABF4A   9B                     wait
006ABF4B   33C0                   xor     eax, eax
006ABF4D   5A                     pop     edx
006ABF4E   59                     pop     ecx
006ABF4F   59                     pop     ecx
006ABF50   648910                 mov     fs:[eax], edx
006ABF53   EB17                   jmp     006ABF6C

* Reference to: System.@HandleAnyException;
|
006ABF55   E92A8BD5FF             jmp     00404A84

* Reference to: SysUtils.Date:TDateTime;
|
006ABF5A   E89D1CD6FF             call    0040DBFC
006ABF5F   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006ABF64   DD18                   fstp    qword ptr [eax]
006ABF66   9B                     wait

* Reference to: System.@DoneExcept;
|
006ABF67   E8448FD5FF             call    00404EB0

****** END
|
006ABF6C   33C0                   xor     eax, eax
006ABF6E   5A                     pop     edx
006ABF6F   59                     pop     ecx
006ABF70   59                     pop     ecx
006ABF71   648910                 mov     fs:[eax], edx
006ABF74   EB25                   jmp     006ABF9B

* Reference to: System.@HandleOnException;
|
006ABF76   E9358CD5FF             jmp     00404BB0
006ABF7B   0100                   add     [eax], eax
006ABF7D   0000                   add     [eax], al
006ABF7F   BC9B400087             mov     esp, $8700409B
006ABF84   BF6A00A154             mov     edi, $54A1006A
006ABF89   B47D                   mov     ah, $7D
006ABF8B   00BA94C06A00           add     [edx+$6AC094], bh

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ABF91   E85A95D5FF             call    004054F0

* Reference to: System.@DoneExcept;
|
006ABF96   E8158FD5FF             call    00404EB0

****** END
|
006ABF9B   33C0                   xor     eax, eax
006ABF9D   5A                     pop     edx
006ABF9E   59                     pop     ecx
006ABF9F   59                     pop     ecx
006ABFA0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006ABFA3   68CABF6A00             push    $006ABFCA
006ABFA8   8D45C0                 lea     eax, [ebp-$40]
006ABFAB   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006ABFB0   E80B95D5FF             call    004054C0
006ABFB5   8D45D4                 lea     eax, [ebp-$2C]
006ABFB8   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006ABFBD   E8FE94D5FF             call    004054C0
006ABFC2   C3                     ret


* Reference to: System.@HandleFinally;
|
006ABFC3   E9708DD5FF             jmp     00404D38
006ABFC8   EBDE                   jmp     006ABFA8

****** END
|
006ABFCA   5F                     pop     edi
006ABFCB   5E                     pop     esi
006ABFCC   5B                     pop     ebx
006ABFCD   8BE5                   mov     esp, ebp
006ABFCF   5D                     pop     ebp
006ABFD0   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ABFC3(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006ABFC3   E9708DD5FF             jmp     00404D38

|
006ABFC8   EBDE                   jmp     006ABFA8
006ABFCA   5F                     pop     edi
006ABFCB   5E                     pop     esi
006ABFCC   5B                     pop     ebx
006ABFCD   8BE5                   mov     esp, ebp
006ABFCF   5D                     pop     ebp
006ABFD0   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AC09D(Sender : TObject);
begin
(*
006AC09D   8BEC                   mov     ebp, esp
006AC09F   B90C000000             mov     ecx, $0000000C
006AC0A4   6A00                   push    $00
006AC0A6   6A00                   push    $00
006AC0A8   49                     dec     ecx
006AC0A9   75F9                   jnz     006AC0A4
006AC0AB   53                     push    ebx
006AC0AC   56                     push    esi
006AC0AD   57                     push    edi
006AC0AE   8955F8                 mov     [ebp-$08], edx
006AC0B1   8945FC                 mov     [ebp-$04], eax
006AC0B4   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AC0B7   E89098D5FF             call    0040594C
006AC0BC   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AC0BF   E88898D5FF             call    0040594C
006AC0C4   33C0                   xor     eax, eax
006AC0C6   55                     push    ebp

* Possible String Reference to: 'éá‰ÕÿëÈ‹Eô_^[‹å]Ã'
|
006AC0C7   6852C36A00             push    $006AC352

***** TRY
|
006AC0CC   64FF30                 push    dword ptr fs:[eax]
006AC0CF   648920                 mov     fs:[eax], esp
006AC0D2   33C0                   xor     eax, eax
006AC0D4   8945F4                 mov     [ebp-$0C], eax
006AC0D7   33C0                   xor     eax, eax
006AC0D9   55                     push    ebp
006AC0DA   680DC36A00             push    $006AC30D

***** TRY
|
006AC0DF   64FF30                 push    dword ptr fs:[eax]
006AC0E2   648920                 mov     fs:[eax], esp
006AC0E5   33C0                   xor     eax, eax
006AC0E7   55                     push    ebp
006AC0E8   68C4C26A00             push    $006AC2C4

***** TRY
|
006AC0ED   64FF30                 push    dword ptr fs:[eax]
006AC0F0   648920                 mov     fs:[eax], esp
006AC0F3   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
006AC0F8   8B00                   mov     eax, [eax]

|
006AC0FA   E8C9541000             call    007B15C8
006AC0FF   84C0                   test    al, al
006AC101   0F84B3010000           jz      006AC2BA
006AC107   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC10C   8B00                   mov     eax, [eax]
006AC10E   8B80FC040000           mov     eax, [eax+$04FC]

* Reference to : TFrmInfoAtu._PROC_007A66A4()
|
006AC114   E88BA50F00             call    007A66A4
006AC119   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC11E   8B00                   mov     eax, [eax]
006AC120   8B80FC040000           mov     eax, [eax+$04FC]

* Reference to: DB.TDataSet.Last(TDataSet);
|
006AC126   E8D9EFE3FF             call    004EB104
006AC12B   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC130   8B00                   mov     eax, [eax]
006AC132   8B80FC040000           mov     eax, [eax+$04FC]

* Reference to: DB.TDataSet.First(TDataSet);
|
006AC138   E8EFEEE3FF             call    004EB02C
006AC13D   A064C36A00             mov     al, byte ptr [$006AC364]
006AC142   50                     push    eax
006AC143   8D45B4                 lea     eax, [ebp-$4C]
006AC146   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006AC149   E876CBD6FF             call    00418CC4
006AC14E   8D75B4                 lea     esi, [ebp-$4C]
006AC151   8D7DC4                 lea     edi, [ebp-$3C]
006AC154   A5                     movsd
006AC155   A5                     movsd
006AC156   A5                     movsd
006AC157   A5                     movsd
006AC158   8D45A4                 lea     eax, [ebp-$5C]
006AC15B   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006AC15E   E861CBD6FF             call    00418CC4
006AC163   8D75A4                 lea     esi, [ebp-$5C]
006AC166   8D7DD4                 lea     edi, [ebp-$2C]
006AC169   A5                     movsd
006AC16A   A5                     movsd
006AC16B   A5                     movsd
006AC16C   A5                     movsd
006AC16D   8D45C4                 lea     eax, [ebp-$3C]
006AC170   8D4DE4                 lea     ecx, [ebp-$1C]
006AC173   BA01000000             mov     edx, $00000001

* Reference to: Variants.VarArrayOf(arrayofVariant;arrayofVariant;0..-1):Variant;
|
006AC178   E88FF4D6FF             call    0041B60C
006AC17D   8D4DE4                 lea     ecx, [ebp-$1C]
006AC180   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC185   8B00                   mov     eax, [eax]
006AC187   8B80FC040000           mov     eax, [eax+$04FC]

* Possible String Reference to: 'Especie;Serie'
|
006AC18D   BA70C36A00             mov     edx, $006AC370
006AC192   8B18                   mov     ebx, [eax]
006AC194   FF9344020000           call    dword ptr [ebx+$0244]
006AC19A   84C0                   test    al, al
006AC19C   7450                   jz      006AC1EE
006AC19E   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC1A3   8B00                   mov     eax, [eax]
006AC1A5   8B80FC040000           mov     eax, [eax+$04FC]

* Possible String Reference to: 'UltimaVenda'
|
006AC1AB   BA88C36A00             mov     edx, $006AC388

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006AC1B0   E84FDAE3FF             call    004E9C04
006AC1B5   8B10                   mov     edx, [eax]
006AC1B7   FF5258                 call    dword ptr [edx+$58]
006AC1BA   85C0                   test    eax, eax
006AC1BC   7E24                   jle     006AC1E2
006AC1BE   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC1C3   8B00                   mov     eax, [eax]
006AC1C5   8B80FC040000           mov     eax, [eax+$04FC]

* Possible String Reference to: 'UltimaVenda'
|
006AC1CB   BA88C36A00             mov     edx, $006AC388

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006AC1D0   E82FDAE3FF             call    004E9C04
006AC1D5   8B10                   mov     edx, [eax]
006AC1D7   FF5258                 call    dword ptr [edx+$58]
006AC1DA   8945F4                 mov     [ebp-$0C], eax
006AC1DD   E9D8000000             jmp     006AC2BA
006AC1E2   C745F401000000         mov     dword ptr [ebp-$0C], $00000001
006AC1E9   E9CC000000             jmp     006AC2BA
006AC1EE   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC1F3   8B00                   mov     eax, [eax]
006AC1F5   8B80FC040000           mov     eax, [eax+$04FC]

* Reference to: DB.TDataSet.Insert(TDataSet);
|
006AC1FB   E8CCF2E3FF             call    004EB4CC
006AC200   8B15DCAD7D00           mov     edx, [$007DADDC]
006AC206   8B12                   mov     edx, [edx]
006AC208   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC20D   8B00                   mov     eax, [eax]
006AC20F   8B8000050000           mov     eax, [eax+$0500]
006AC215   8B08                   mov     ecx, [eax]
006AC217   FF91B0000000           call    dword ptr [ecx+$00B0]
006AC21D   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC222   8B00                   mov     eax, [eax]
006AC224   8B8004050000           mov     eax, [eax+$0504]
006AC22A   8B55FC                 mov     edx, [ebp-$04]
006AC22D   8B08                   mov     ecx, [eax]
006AC22F   FF91B0000000           call    dword ptr [ecx+$00B0]
006AC235   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC23A   8B00                   mov     eax, [eax]
006AC23C   8B8008050000           mov     eax, [eax+$0508]
006AC242   8B55F8                 mov     edx, [ebp-$08]
006AC245   8B08                   mov     ecx, [eax]
006AC247   FF91B0000000           call    dword ptr [ecx+$00B0]
006AC24D   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC252   8B00                   mov     eax, [eax]
006AC254   8B801C050000           mov     eax, [eax+$051C]
006AC25A   BA9CC36A00             mov     edx, $006AC39C
006AC25F   8B08                   mov     ecx, [eax]
006AC261   FF91B0000000           call    dword ptr [ecx+$00B0]
006AC267   8B1508AF7D00           mov     edx, [$007DAF08]
006AC26D   8A12                   mov     dl, byte ptr [edx]
006AC26F   80F201                 xor     dl, $01
006AC272   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC277   8B00                   mov     eax, [eax]
006AC279   8B800C050000           mov     eax, [eax+$050C]
006AC27F   8B08                   mov     ecx, [eax]
006AC281   FF9194000000           call    dword ptr [ecx+$0094]
006AC287   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC28C   8B00                   mov     eax, [eax]
006AC28E   8B8010050000           mov     eax, [eax+$0510]
006AC294   BA01000000             mov     edx, $00000001
006AC299   8B08                   mov     ecx, [eax]
006AC29B   FF91A8000000           call    dword ptr [ecx+$00A8]
006AC2A1   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006AC2A6   8B00                   mov     eax, [eax]
006AC2A8   8B80FC040000           mov     eax, [eax+$04FC]

|
006AC2AE   E8ADAC0F00             call    007A6F60
006AC2B3   C745F401000000         mov     dword ptr [ebp-$0C], $00000001
006AC2BA   33C0                   xor     eax, eax
006AC2BC   5A                     pop     edx
006AC2BD   59                     pop     ecx
006AC2BE   59                     pop     ecx
006AC2BF   648910                 mov     fs:[eax], edx
006AC2C2   EB3B                   jmp     006AC2FF

* Reference to: System.@HandleOnException;
|
006AC2C4   E9E788D5FF             jmp     00404BB0
006AC2C9   0100                   add     [eax], eax
006AC2CB   0000                   add     [eax], al
006AC2CD   40                     inc     eax
006AC2CE   95                     xchg    eax, ebp
006AC2CF   40                     inc     eax
006AC2D0   00D5                   add     ch, dl
006AC2D2   C26A00                 ret     $006A

006AC2D5   89C3                   mov     ebx, eax
006AC2D7   6A00                   push    $00
006AC2D9   8B4B04                 mov     ecx, [ebx+$04]
006AC2DC   8D45A0                 lea     eax, [ebp-$60]

* Possible String Reference to: 'Erro ao pegar o ultimo número do cu
|                                pom!'
|
006AC2DF   BAA8C36A00             mov     edx, $006AC3A8

* Reference to: System.@LStrCat3;
|
006AC2E4   E8BF94D5FF             call    004057A8
006AC2E9   8B45A0                 mov     eax, [ebp-$60]
006AC2EC   668B0DD4C36A00         mov     cx, word ptr [$006AC3D4]
006AC2F3   B201                   mov     dl, $01

|
006AC2F5   E83278D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006AC2FA   E8B18BD5FF             call    00404EB0

****** END
|
006AC2FF   33C0                   xor     eax, eax
006AC301   5A                     pop     edx
006AC302   59                     pop     ecx
006AC303   59                     pop     ecx
006AC304   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AC307   6814C36A00             push    $006AC314
006AC30C   C3                     ret


* Reference to: System.@HandleFinally;
|
006AC30D   E9268AD5FF             jmp     00404D38
006AC312   EBF8                   jmp     006AC30C

****** END
|
006AC314   33C0                   xor     eax, eax
006AC316   5A                     pop     edx
006AC317   59                     pop     ecx
006AC318   59                     pop     ecx
006AC319   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '‹Eô_^[‹å]Ã'
|
006AC31C   6859C36A00             push    $006AC359
006AC321   8D45A0                 lea     eax, [ebp-$60]

* Reference to: System.@LStrClr(void;void);
|
006AC324   E87391D5FF             call    0040549C
006AC329   8D45A4                 lea     eax, [ebp-$5C]

* Reference to object Variant
|
006AC32C   8B1524114000           mov     edx, [$00401124]
006AC332   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006AC337   E8609DD5FF             call    0040609C
006AC33C   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006AC33F   E83482D6FF             call    00414578
006AC344   8D45F8                 lea     eax, [ebp-$08]
006AC347   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AC34C   E86F91D5FF             call    004054C0
006AC351   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AC352(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006AC352   E9E189D5FF             jmp     00404D38

|
006AC357   EBC8                   jmp     006AC321
006AC359   8B45F4                 mov     eax, [ebp-$0C]
006AC35C   5F                     pop     edi
006AC35D   5E                     pop     esi
006AC35E   5B                     pop     ebx
006AC35F   8BE5                   mov     esp, ebp
006AC361   5D                     pop     ebp
006AC362   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AC363(Sender : TObject);
begin
(*
006AC363   0001                   add     [ecx], al
006AC365   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AC389(Sender : TObject);
begin
(*
006AC389   6C                     insb
006AC38A   7469                   jz      006AC3F5
006AC38C   6D                     insd
006AC38D   61                     popa
006AC38E   56                     push    esi
006AC38F   656E                   outsb
006AC391   6461                   popa
006AC393   00FF                   add     bh, bh
006AC395   FFFF                   DB  $FF, $FF  //      
006AC397   FF01                   inc     dword ptr [ecx]
006AC399   0000                   add     [eax], al

006AC39B   004300                 add     [ebx+$00], al
006AC39E   0000                   add     [eax], al

006AC3A0   FFFF                   DB  $FF, $FF  //      
006AC3A2   FFFF                   DB  $FF, $FF  //      
006AC3A4   2900                   sub     dword ptr [eax], eax
006AC3A6   0000                   add     [eax], al

006AC3A8   45                     inc     ebp
006AC3A9   7272                   jb      006AC41D
006AC3AB   6F                     outsd
006AC3AC   20616F                 and     [ecx+$6F], ah
006AC3AF   207065                 and     [eax+$65], dh
006AC3B2   6761                   popa
006AC3B4   7220                   jb      006AC3D6
006AC3B6   6F                     outsd
006AC3B7   20756C                 and     [ebp+$6C], dh
006AC3BA   7469                   jz      006AC425
006AC3BC   6D                     insd
006AC3BD   6F                     outsd
006AC3BE   206EFA                 and     [esi-$06], ch
006AC3C1   6D                     insd
006AC3C2   65726F                 jb      006AC434
006AC3C5   20646F20               and     [edi+ebp*2+$20], ah
006AC3C9   637570                 arpl    [ebp+$70], si
006AC3CC   6F                     outsd
006AC3CD   6D                     insd
006AC3CE   210D0D000000           and     [$0000000D], ecx
006AC3D4   0400                   add     al, +$00
006AC3D6   0000                   add     [eax], al

006AC3D8   55                     push    ebp
006AC3D9   8BEC                   mov     ebp, esp
006AC3DB   83C4F8                 add     esp, -$08
006AC3DE   53                     push    ebx
006AC3DF   56                     push    esi
006AC3E0   57                     push    edi
006AC3E1   33C0                   xor     eax, eax
006AC3E3   8945F8                 mov     [ebp-$08], eax
006AC3E6   33C0                   xor     eax, eax
006AC3E8   55                     push    ebp

* Possible String Reference to: 'éjˆÕÿëðŠEÿ_^[YY]Ã'
|
006AC3E9   68C9C46A00             push    $006AC4C9

***** TRY
|
006AC3EE   64FF30                 push    dword ptr fs:[eax]
006AC3F1   648920                 mov     fs:[eax], esp
006AC3F4   C645FF00               mov     byte ptr [ebp-$01], $00
006AC3F8   33C9                   xor     ecx, ecx
006AC3FA   B201                   mov     dl, $01

* Reference to class TFrmLeituraX
|
006AC3FC   A1944F6700             mov     eax, dword ptr [$00674F94]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006AC401   E80A1BE0FF             call    004ADF10
006AC406   8B15CCB07D00           mov     edx, [$007DB0CC]
006AC40C   8902                   mov     [edx], eax
006AC40E   33C0                   xor     eax, eax
006AC410   55                     push    ebp
006AC411   68ACC46A00             push    $006AC4AC

***** TRY
|
006AC416   64FF30                 push    dword ptr fs:[eax]
006AC419   648920                 mov     fs:[eax], esp
006AC41C   33C0                   xor     eax, eax
006AC41E   55                     push    ebp
006AC41F   6888C46A00             push    $006AC488

***** TRY
|
006AC424   64FF30                 push    dword ptr fs:[eax]
006AC427   648920                 mov     fs:[eax], esp
006AC42A   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AC42F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006AC431   BAE4C46A00             mov     edx, $006AC4E4

* Reference to: System.@LStrCmp;
|
006AC436   E86D94D5FF             call    004058A8
006AC43B   753C                   jnz     006AC479
006AC43D   A1CCB07D00             mov     eax, dword ptr [$007DB0CC]
006AC442   8B00                   mov     eax, [eax]
006AC444   8B10                   mov     edx, [eax]
006AC446   FF92EC000000           call    dword ptr [edx+$00EC]
006AC44C   48                     dec     eax
006AC44D   752A                   jnz     006AC479
006AC44F   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006AC454   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006AC456   E80599E0FF             call    004B5D60
006AC45B   8D45F8                 lea     eax, [ebp-$08]

|
006AC45E   E87D0AFCFF             call    0066CEE0
006AC463   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A5BC4()
|
006AC466   E859970F00             call    007A5BC4

* Possible String Reference to: 'Leitura X efetuada...'
|
006AC46B   B8F8C46A00             mov     eax, $006AC4F8

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckOrigValue(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006AC470   E863090000             call    006ACDD8
006AC475   C645FF01               mov     byte ptr [ebp-$01], $01

|
006AC479   E8CAF7FFFF             call    006ABC48
006AC47E   33C0                   xor     eax, eax
006AC480   5A                     pop     edx
006AC481   59                     pop     ecx
006AC482   59                     pop     ecx
006AC483   648910                 mov     fs:[eax], edx
006AC486   EB0A                   jmp     006AC492

* Reference to: System.@HandleAnyException;
|
006AC488   E9F785D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AC48D   E81E8AD5FF             call    00404EB0

****** END
|
006AC492   33C0                   xor     eax, eax
006AC494   5A                     pop     edx
006AC495   59                     pop     ecx
006AC496   59                     pop     ecx
006AC497   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AC49A   68B3C46A00             push    $006AC4B3
006AC49F   A1CCB07D00             mov     eax, dword ptr [$007DB0CC]
006AC4A4   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006AC4A6   E8F180D5FF             call    0040459C
006AC4AB   C3                     ret


* Reference to: System.@HandleFinally;
|
006AC4AC   E98788D5FF             jmp     00404D38
006AC4B1   EBEC                   jmp     006AC49F

****** END
|
006AC4B3   33C0                   xor     eax, eax
006AC4B5   5A                     pop     edx
006AC4B6   59                     pop     ecx
006AC4B7   59                     pop     ecx
006AC4B8   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
006AC4BB   68D0C46A00             push    $006AC4D0
006AC4C0   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006AC4C3   E8D48FD5FF             call    0040549C
006AC4C8   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AC4C9(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006AC4C9   E96A88D5FF             jmp     00404D38

|
006AC4CE   EBF0                   jmp     006AC4C0
006AC4D0   8A45FF                 mov     al, byte ptr [ebp-$01]
006AC4D3   5F                     pop     edi
006AC4D4   5E                     pop     esi
006AC4D5   5B                     pop     ebx
006AC4D6   59                     pop     ecx
006AC4D7   59                     pop     ecx
006AC4D8   5D                     pop     ebp
006AC4D9   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AC511(Sender : TObject);
begin
(*
006AC511   8BEC                   mov     ebp, esp
006AC513   33C9                   xor     ecx, ecx
006AC515   51                     push    ecx
006AC516   51                     push    ecx
006AC517   51                     push    ecx
006AC518   51                     push    ecx
006AC519   51                     push    ecx
006AC51A   51                     push    ecx
006AC51B   53                     push    ebx
006AC51C   56                     push    esi
006AC51D   57                     push    edi
006AC51E   33C0                   xor     eax, eax
006AC520   55                     push    ebp

* Possible String Reference to: 'éJ†ÕÿëÑ‹Ã_^[‹å]Ã'
|
006AC521   68E9C66A00             push    $006AC6E9

***** TRY
|
006AC526   64FF30                 push    dword ptr fs:[eax]
006AC529   648920                 mov     fs:[eax], esp
006AC52C   33DB                   xor     ebx, ebx
006AC52E   8B0D54AE7D00           mov     ecx, [$007DAE54]
006AC534   8B09                   mov     ecx, [ecx]
006AC536   B201                   mov     dl, $01

* Reference to class TFrmReducaoZ
|
006AC538   A1B0516700             mov     eax, dword ptr [$006751B0]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006AC53D   E8CE19E0FF             call    004ADF10
006AC542   8B1514A67D00           mov     edx, [$007DA614]
006AC548   8902                   mov     [edx], eax
006AC54A   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AC54F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006AC551   BA04C76A00             mov     edx, $006AC704

* Reference to: System.@LStrCmp;
|
006AC556   E84D93D5FF             call    004058A8
006AC55B   0F8542010000           jnz     006AC6A3
006AC561   A114A67D00             mov     eax, dword ptr [$007DA614]
006AC566   8B00                   mov     eax, [eax]
006AC568   8B10                   mov     edx, [eax]
006AC56A   FF92EC000000           call    dword ptr [edx+$00EC]
006AC570   48                     dec     eax
006AC571   0F852C010000           jnz     006AC6A3
006AC577   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006AC57C   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006AC57E   E8DD97E0FF             call    004B5D60
006AC583   A114A67D00             mov     eax, dword ptr [$007DA614]
006AC588   8B00                   mov     eax, [eax]
006AC58A   8B8008030000           mov     eax, [eax+$0308]
006AC590   8B10                   mov     edx, [eax]
006AC592   FF92C8000000           call    dword ptr [edx+$00C8]
006AC598   84C0                   test    al, al
006AC59A   0F84E3000000           jz      006AC683
006AC5A0   33C0                   xor     eax, eax
006AC5A2   55                     push    ebp

* Possible String Reference to: 'é–„Õÿ¸(Çj'
|
006AC5A3   68E9C56A00             push    $006AC5E9

***** TRY
|
006AC5A8   64FF30                 push    dword ptr fs:[eax]
006AC5AB   648920                 mov     fs:[eax], esp
006AC5AE   8D55F4                 lea     edx, [ebp-$0C]
006AC5B1   A114A67D00             mov     eax, dword ptr [$007DA614]
006AC5B6   8B00                   mov     eax, [eax]
006AC5B8   8B801C030000           mov     eax, [eax+$031C]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006AC5BE   E87919E5FF             call    004FDF3C
006AC5C3   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
006AC5C6   E8852FD6FF             call    0040F550
006AC5CB   83C4F8                 add     esp, -$08
006AC5CE   DD1C24                 fstp    qword ptr [esp]
006AC5D1   9B                     wait
006AC5D2   8D55FC                 lea     edx, [ebp-$04]

* Possible String Reference to: 'HHMMSS'
|
006AC5D5   B818C76A00             mov     eax, $006AC718

|
006AC5DA   E8F922D6FF             call    0040E8D8
006AC5DF   33C0                   xor     eax, eax
006AC5E1   5A                     pop     edx
006AC5E2   59                     pop     ecx
006AC5E3   59                     pop     ecx
006AC5E4   648910                 mov     fs:[eax], edx
006AC5E7   EB19                   jmp     006AC602

* Reference to: System.@HandleAnyException;
|
006AC5E9   E99684D5FF             jmp     00404A84

* Possible String Reference to: 'Você informou uma hora inválida. Te
|                                nte Novamente!'
|
006AC5EE   B828C76A00             mov     eax, $006AC728

* Reference to: Dialogs.ShowMessage(AnsiString);
|
006AC5F3   E82C76D9FF             call    00443C24

* Reference to: SysUtils.Abort;
|
006AC5F8   E88738D6FF             call    0040FE84

* Reference to: System.@DoneExcept;
|
006AC5FD   E8AE88D5FF             call    00404EB0

****** END
|
006AC602   33C0                   xor     eax, eax
006AC604   55                     push    ebp

* Possible String Reference to: 'é4„Õÿ¸tÇj'
|
006AC605   684BC66A00             push    $006AC64B

***** TRY
|
006AC60A   64FF30                 push    dword ptr fs:[eax]
006AC60D   648920                 mov     fs:[eax], esp
006AC610   8D55F0                 lea     edx, [ebp-$10]
006AC613   A114A67D00             mov     eax, dword ptr [$007DA614]
006AC618   8B00                   mov     eax, [eax]
006AC61A   8B8018030000           mov     eax, [eax+$0318]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006AC620   E81719E5FF             call    004FDF3C
006AC625   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
006AC628   E84F2ED6FF             call    0040F47C
006AC62D   83C4F8                 add     esp, -$08
006AC630   DD1C24                 fstp    qword ptr [esp]
006AC633   9B                     wait
006AC634   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: 'ddmmyy'
|
006AC637   B864C76A00             mov     eax, $006AC764

|
006AC63C   E89722D6FF             call    0040E8D8
006AC641   33C0                   xor     eax, eax
006AC643   5A                     pop     edx
006AC644   59                     pop     ecx
006AC645   59                     pop     ecx
006AC646   648910                 mov     fs:[eax], edx
006AC649   EB14                   jmp     006AC65F

* Reference to: System.@HandleAnyException;
|
006AC64B   E93484D5FF             jmp     00404A84

* Possible String Reference to: 'Você informou uma data inválida. Te
|                                nte novamente!'
|
006AC650   B874C76A00             mov     eax, $006AC774

* Reference to: Dialogs.ShowMessage(AnsiString);
|
006AC655   E8CA75D9FF             call    00443C24

* Reference to: System.@DoneExcept;
|
006AC65A   E85188D5FF             call    00404EB0

****** END
|
006AC65F   8D4DEC                 lea     ecx, [ebp-$14]
006AC662   8B55FC                 mov     edx, [ebp-$04]
006AC665   8B45F8                 mov     eax, [ebp-$08]

|
006AC668   E8E708FCFF             call    0066CF54
006AC66D   8B45EC                 mov     eax, [ebp-$14]

* Reference to : TFrmInfoAtu._PROC_007A5BC4()
|
006AC670   E84F950F00             call    007A5BC4

* Possible String Reference to: 'Redução Z com ajauste de data e hor
|                                a efetuada...'
|
006AC675   B8B0C76A00             mov     eax, $006AC7B0

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckOrigValue(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006AC67A   E859070000             call    006ACDD8
006AC67F   B301                   mov     bl, $01
006AC681   EB20                   jmp     006AC6A3
006AC683   8D4DE8                 lea     ecx, [ebp-$18]
006AC686   33D2                   xor     edx, edx
006AC688   33C0                   xor     eax, eax

|
006AC68A   E8C508FCFF             call    0066CF54
006AC68F   8B45E8                 mov     eax, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A5BC4()
|
006AC692   E82D950F00             call    007A5BC4

* Possible String Reference to: 'Redução Z Efetuada...'
|
006AC697   B8ECC76A00             mov     eax, $006AC7EC

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckOrigValue(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006AC69C   E837070000             call    006ACDD8
006AC6A1   B301                   mov     bl, $01
006AC6A3   A114A67D00             mov     eax, dword ptr [$007DA614]
006AC6A8   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006AC6AA   E8ED7ED5FF             call    0040459C

|
006AC6AF   E894F5FFFF             call    006ABC48
006AC6B4   33C0                   xor     eax, eax
006AC6B6   5A                     pop     edx
006AC6B7   59                     pop     ecx
006AC6B8   59                     pop     ecx
006AC6B9   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '‹Ã_^[‹å]Ã'
|
006AC6BC   68F0C66A00             push    $006AC6F0
006AC6C1   8D45E8                 lea     eax, [ebp-$18]
006AC6C4   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AC6C9   E8F28DD5FF             call    004054C0
006AC6CE   8D45F0                 lea     eax, [ebp-$10]
006AC6D1   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AC6D6   E8E58DD5FF             call    004054C0
006AC6DB   8D45F8                 lea     eax, [ebp-$08]
006AC6DE   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AC6E3   E8D88DD5FF             call    004054C0
006AC6E8   C3                     ret


* Reference to: System.@HandleFinally;
|
006AC6E9   E94A86D5FF             jmp     00404D38
006AC6EE   EBD1                   jmp     006AC6C1

****** END
|
006AC6F0   8BC3                   mov     eax, ebx
006AC6F2   5F                     pop     edi
006AC6F3   5E                     pop     esi
006AC6F4   5B                     pop     ebx
006AC6F5   8BE5                   mov     esp, ebp
006AC6F7   5D                     pop     ebp
006AC6F8   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AC805(Sender : TObject);
begin
(*
006AC805   8BEC                   mov     ebp, esp
006AC807   83C4D0                 add     esp, -$30
006AC80A   33C0                   xor     eax, eax
006AC80C   8945D0                 mov     [ebp-$30], eax
006AC80F   8945D4                 mov     [ebp-$2C], eax
006AC812   8945D8                 mov     [ebp-$28], eax
006AC815   8945DC                 mov     [ebp-$24], eax
006AC818   8945E4                 mov     [ebp-$1C], eax
006AC81B   8945E0                 mov     [ebp-$20], eax
006AC81E   33C0                   xor     eax, eax
006AC820   55                     push    ebp

* Possible String Reference to: 'éZƒÕÿëÑŠEÿ‹å]Ã'
|
006AC821   68D9C96A00             push    $006AC9D9

***** TRY
|
006AC826   64FF30                 push    dword ptr fs:[eax]
006AC829   648920                 mov     fs:[eax], esp
006AC82C   C645FF00               mov     byte ptr [ebp-$01], $00
006AC830   8B0D54AE7D00           mov     ecx, [$007DAE54]
006AC836   8B09                   mov     ecx, [ecx]
006AC838   B201                   mov     dl, $01

* Reference to class TFrmLeituraMemoriaFiscal
|
006AC83A   A160556700             mov     eax, dword ptr [$00675560]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006AC83F   E8CC16E0FF             call    004ADF10
006AC844   8B1564B07D00           mov     edx, [$007DB064]
006AC84A   8902                   mov     [edx], eax
006AC84C   33C0                   xor     eax, eax
006AC84E   55                     push    ebp
006AC84F   689DC96A00             push    $006AC99D

***** TRY
|
006AC854   64FF30                 push    dword ptr fs:[eax]
006AC857   648920                 mov     fs:[eax], esp
006AC85A   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AC85F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006AC861   BAF0C96A00             mov     edx, $006AC9F0

* Reference to: System.@LStrCmp;
|
006AC866   E83D90D5FF             call    004058A8
006AC86B   0F8512010000           jnz     006AC983
006AC871   A164B07D00             mov     eax, dword ptr [$007DB064]
006AC876   8B00                   mov     eax, [eax]
006AC878   8B10                   mov     edx, [eax]
006AC87A   FF92EC000000           call    dword ptr [edx+$00EC]
006AC880   48                     dec     eax
006AC881   0F85FC000000           jnz     006AC983
006AC887   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006AC88C   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006AC88E   E8CD94E0FF             call    004B5D60
006AC893   A164B07D00             mov     eax, dword ptr [$007DB064]
006AC898   8B00                   mov     eax, [eax]
006AC89A   8B8028030000           mov     eax, [eax+$0328]
006AC8A0   83B81802000000         cmp     dword ptr [eax+$0218], +$00
006AC8A7   756E                   jnz     006AC917
006AC8A9   8D55DC                 lea     edx, [ebp-$24]
006AC8AC   A164B07D00             mov     eax, dword ptr [$007DB064]
006AC8B1   8B00                   mov     eax, [eax]
006AC8B3   8B8014030000           mov     eax, [eax+$0314]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006AC8B9   E87E16E5FF             call    004FDF3C
006AC8BE   8B45DC                 mov     eax, [ebp-$24]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
006AC8C1   E8B62BD6FF             call    0040F47C
006AC8C6   DD5DF0                 fstp    qword ptr [ebp-$10]
006AC8C9   9B                     wait
006AC8CA   8D55D8                 lea     edx, [ebp-$28]
006AC8CD   A164B07D00             mov     eax, dword ptr [$007DB064]
006AC8D2   8B00                   mov     eax, [eax]
006AC8D4   8B8010030000           mov     eax, [eax+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
006AC8DA   E85D16E5FF             call    004FDF3C
006AC8DF   8B45D8                 mov     eax, [ebp-$28]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
006AC8E2   E8952BD6FF             call    0040F47C
006AC8E7   DD5DE8                 fstp    qword ptr [ebp-$18]
006AC8EA   9B                     wait
006AC8EB   FF75F4                 push    dword ptr [ebp-$0C]
006AC8EE   FF75F0                 push    dword ptr [ebp-$10]
006AC8F1   FF75EC                 push    dword ptr [ebp-$14]
006AC8F4   FF75E8                 push    dword ptr [ebp-$18]
006AC8F7   8D45D4                 lea     eax, [ebp-$2C]
006AC8FA   50                     push    eax
006AC8FB   33C9                   xor     ecx, ecx
006AC8FD   33D2                   xor     edx, edx

* Possible String Reference to: 'data'
|
006AC8FF   B804CA6A00             mov     eax, $006ACA04

|
006AC904   E8E706FCFF             call    0066CFF0
006AC909   8B45D4                 mov     eax, [ebp-$2C]

* Reference to : TFrmInfoAtu._PROC_007A5BC4()
|
006AC90C   E8B3920F00             call    007A5BC4
006AC911   C645FF01               mov     byte ptr [ebp-$01], $01
006AC915   EB62                   jmp     006AC979
006AC917   8D55E4                 lea     edx, [ebp-$1C]
006AC91A   A164B07D00             mov     eax, dword ptr [$007DB064]
006AC91F   8B00                   mov     eax, [eax]
006AC921   8B8018030000           mov     eax, [eax+$0318]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006AC927   E8A06DDEFF             call    004936CC
006AC92C   8D55E0                 lea     edx, [ebp-$20]
006AC92F   A164B07D00             mov     eax, dword ptr [$007DB064]
006AC934   8B00                   mov     eax, [eax]
006AC936   8B801C030000           mov     eax, [eax+$031C]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006AC93C   E88B6DDEFF             call    004936CC

* Reference to: SysUtils.Date:TDateTime;
|
006AC941   E8B612D6FF             call    0040DBFC
006AC946   83C4F8                 add     esp, -$08
006AC949   DD1C24                 fstp    qword ptr [esp]
006AC94C   9B                     wait

* Reference to: SysUtils.Date:TDateTime;
|
006AC94D   E8AA12D6FF             call    0040DBFC
006AC952   83C4F8                 add     esp, -$08
006AC955   DD1C24                 fstp    qword ptr [esp]
006AC958   9B                     wait
006AC959   8D45D0                 lea     eax, [ebp-$30]
006AC95C   50                     push    eax
006AC95D   8B4DE0                 mov     ecx, [ebp-$20]
006AC960   8B55E4                 mov     edx, [ebp-$1C]

* Possible String Reference to: 'reducao'
|
006AC963   B814CA6A00             mov     eax, $006ACA14

|
006AC968   E88306FCFF             call    0066CFF0
006AC96D   8B45D0                 mov     eax, [ebp-$30]

* Reference to : TFrmInfoAtu._PROC_007A5BC4()
|
006AC970   E84F920F00             call    007A5BC4
006AC975   C645FF01               mov     byte ptr [ebp-$01], $01

* Possible String Reference to: 'Executada uma leitura da memoria fi
|                                scal da impressora...'
|
006AC979   B824CA6A00             mov     eax, $006ACA24

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckOrigValue(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006AC97E   E855040000             call    006ACDD8
006AC983   33C0                   xor     eax, eax
006AC985   5A                     pop     edx
006AC986   59                     pop     ecx
006AC987   59                     pop     ecx
006AC988   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AC98B   68A4C96A00             push    $006AC9A4
006AC990   A164B07D00             mov     eax, dword ptr [$007DB064]
006AC995   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006AC997   E8007CD5FF             call    0040459C
006AC99C   C3                     ret


* Reference to: System.@HandleFinally;
|
006AC99D   E99683D5FF             jmp     00404D38
006AC9A2   EBEC                   jmp     006AC990

****** END
|
006AC9A4   33C0                   xor     eax, eax
006AC9A6   5A                     pop     edx
006AC9A7   59                     pop     ecx
006AC9A8   59                     pop     ecx
006AC9A9   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ‹å]Ã'
|
006AC9AC   68E0C96A00             push    $006AC9E0
006AC9B1   8D45D0                 lea     eax, [ebp-$30]
006AC9B4   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AC9B9   E8028BD5FF             call    004054C0
006AC9BE   8D45D8                 lea     eax, [ebp-$28]
006AC9C1   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AC9C6   E8F58AD5FF             call    004054C0
006AC9CB   8D45E0                 lea     eax, [ebp-$20]
006AC9CE   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AC9D3   E8E88AD5FF             call    004054C0
006AC9D8   C3                     ret


* Reference to: System.@HandleFinally;
|
006AC9D9   E95A83D5FF             jmp     00404D38
006AC9DE   EBD1                   jmp     006AC9B1

****** END
|
006AC9E0   8A45FF                 mov     al, byte ptr [ebp-$01]
006AC9E3   8BE5                   mov     esp, ebp
006AC9E5   5D                     pop     ebp
006AC9E6   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ACA61(Sender : TObject);
begin
(*
006ACA61   8BEC                   mov     ebp, esp
006ACA63   83C4F8                 add     esp, -$08
006ACA66   33C0                   xor     eax, eax
006ACA68   8945F8                 mov     [ebp-$08], eax
006ACA6B   33C0                   xor     eax, eax
006ACA6D   55                     push    ebp

* Possible String Reference to: 'éºÕÿëðŠEÿYY]Ã'
|
006ACA6E   6879CB6A00             push    $006ACB79

***** TRY
|
006ACA73   64FF30                 push    dword ptr fs:[eax]
006ACA76   648920                 mov     fs:[eax], esp
006ACA79   C645FF00               mov     byte ptr [ebp-$01], $00
006ACA7D   8B0D54AE7D00           mov     ecx, [$007DAE54]
006ACA83   8B09                   mov     ecx, [ecx]
006ACA85   B201                   mov     dl, $01

* Reference to class TFrmHorarioVerao
|
006ACA87   A1AC586700             mov     eax, dword ptr [$006758AC]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006ACA8C   E87F14E0FF             call    004ADF10
006ACA91   8B15B89E7D00           mov     edx, [$007D9EB8]
006ACA97   8902                   mov     [edx], eax
006ACA99   33C0                   xor     eax, eax
006ACA9B   55                     push    ebp
006ACA9C   685CCB6A00             push    $006ACB5C

***** TRY
|
006ACAA1   64FF30                 push    dword ptr fs:[eax]
006ACAA4   648920                 mov     fs:[eax], esp
006ACAA7   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ACAAC   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006ACAAE   BA90CB6A00             mov     edx, $006ACB90

* Reference to: System.@LStrCmp;
|
006ACAB3   E8F08DD5FF             call    004058A8
006ACAB8   0F8584000000           jnz     006ACB42
006ACABE   A1B89E7D00             mov     eax, dword ptr [$007D9EB8]
006ACAC3   8B00                   mov     eax, [eax]
006ACAC5   8B8004030000           mov     eax, [eax+$0304]
006ACACB   BA03000000             mov     edx, $00000003

* Reference to: ExtCtrls.TNotebook.SetPageIndex(TNotebook;Integer);
|
006ACAD0   E86FCBD9FF             call    00449644
006ACAD5   A1B89E7D00             mov     eax, dword ptr [$007D9EB8]
006ACADA   8B00                   mov     eax, [eax]
006ACADC   8B10                   mov     edx, [eax]
006ACADE   FF92EC000000           call    dword ptr [edx+$00EC]
006ACAE4   48                     dec     eax
006ACAE5   7551                   jnz     006ACB38
006ACAE7   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006ACAEC   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006ACAEE   E86D92E0FF             call    004B5D60
006ACAF3   6A00                   push    $00
006ACAF5   668B0D9CCB6A00         mov     cx, word ptr [$006ACB9C]
006ACAFC   B203                   mov     dl, $03

* Possible String Reference to: 'Você solicitou que seja ajustado o 
|                                horário de verão da impressora. Tem
|                                 certeza?'
|
006ACAFE   B8A8CB6A00             mov     eax, $006ACBA8

|
006ACB03   E82470D9FF             call    00443B2C
006ACB08   83F806                 cmp     eax, +$06
006ACB0B   752B                   jnz     006ACB38
006ACB0D   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006ACB12   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006ACB14   E84792E0FF             call    004B5D60
006ACB19   8D45F8                 lea     eax, [ebp-$08]

|
006ACB1C   E8B70BFCFF             call    0066D6D8
006ACB21   8B45F8                 mov     eax, [ebp-$08]
006ACB24   B201                   mov     dl, $01

|
006ACB26   E8D10AFCFF             call    0066D5FC
006ACB2B   84C0                   test    al, al
006ACB2D   7405                   jz      006ACB34

|
006ACB2F   E814F1FFFF             call    006ABC48
006ACB34   C645FF01               mov     byte ptr [ebp-$01], $01

* Possible String Reference to: 'Ajustado o horário de verão...'
|
006ACB38   B800CC6A00             mov     eax, $006ACC00

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckOrigValue(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006ACB3D   E896020000             call    006ACDD8
006ACB42   33C0                   xor     eax, eax
006ACB44   5A                     pop     edx
006ACB45   59                     pop     ecx
006ACB46   59                     pop     ecx
006ACB47   648910                 mov     fs:[eax], edx

****** FINALLY
|
006ACB4A   6863CB6A00             push    $006ACB63
006ACB4F   A1B89E7D00             mov     eax, dword ptr [$007D9EB8]
006ACB54   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006ACB56   E8417AD5FF             call    0040459C
006ACB5B   C3                     ret


* Reference to: System.@HandleFinally;
|
006ACB5C   E9D781D5FF             jmp     00404D38
006ACB61   EBEC                   jmp     006ACB4F

****** END
|
006ACB63   33C0                   xor     eax, eax
006ACB65   5A                     pop     edx
006ACB66   59                     pop     ecx
006ACB67   59                     pop     ecx
006ACB68   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿYY]Ã'
|
006ACB6B   6880CB6A00             push    $006ACB80
006ACB70   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006ACB73   E82489D5FF             call    0040549C
006ACB78   C3                     ret


* Reference to: System.@HandleFinally;
|
006ACB79   E9BA81D5FF             jmp     00404D38
006ACB7E   EBF0                   jmp     006ACB70

****** END
|
006ACB80   8A45FF                 mov     al, byte ptr [ebp-$01]
006ACB83   59                     pop     ecx
006ACB84   59                     pop     ecx
006ACB85   5D                     pop     ebp
006ACB86   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ACC21(Sender : TObject);
begin
(*
006ACC21   8BEC                   mov     ebp, esp
006ACC23   33C9                   xor     ecx, ecx
006ACC25   51                     push    ecx
006ACC26   51                     push    ecx
006ACC27   51                     push    ecx
006ACC28   51                     push    ecx
006ACC29   53                     push    ebx
006ACC2A   56                     push    esi
006ACC2B   57                     push    edi
006ACC2C   33C0                   xor     eax, eax
006ACC2E   55                     push    ebp

* Possible String Reference to: 'éÓÕÿëëŠEÿ_^[‹å]Ã'
|
006ACC2F   6860CD6A00             push    $006ACD60

***** TRY
|
006ACC34   64FF30                 push    dword ptr fs:[eax]
006ACC37   648920                 mov     fs:[eax], esp
006ACC3A   C645FF00               mov     byte ptr [ebp-$01], $00
006ACC3E   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ACC43   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006ACC45   BA7CCD6A00             mov     edx, $006ACD7C

* Reference to: System.@LStrCmp;
|
006ACC4A   E8598CD5FF             call    004058A8
006ACC4F   0F85F0000000           jnz     006ACD45
006ACC55   33C9                   xor     ecx, ecx
006ACC57   B201                   mov     dl, $01

* Reference to class TFrmArredondaTrunca
|
006ACC59   A1A85E6700             mov     eax, dword ptr [$00675EA8]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006ACC5E   E8AD12E0FF             call    004ADF10
006ACC63   8B1594A07D00           mov     edx, [$007DA094]
006ACC69   8902                   mov     [edx], eax
006ACC6B   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: '-1'
|
006ACC6E   BA90CD6A00             mov     edx, $006ACD90

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ACC73   E8BC88D5FF             call    00405534
006ACC78   68F4010000             push    $000001F4

* Reference to: kernel32.Sleep()
|
006ACC7D   E82AB6D5FF             call    004082AC
006ACC82   33C0                   xor     eax, eax
006ACC84   55                     push    ebp
006ACC85   68A3CC6A00             push    $006ACCA3

***** TRY
|
006ACC8A   64FF30                 push    dword ptr fs:[eax]
006ACC8D   648920                 mov     fs:[eax], esp
006ACC90   8B45F8                 mov     eax, [ebp-$08]
006ACC93   50                     push    eax

* Reference to: BEMAFI32.Bematech_FI_VerificaTruncamento()
|
006ACC94   E857E2FBFF             call    0066AEF0
006ACC99   33C0                   xor     eax, eax
006ACC9B   5A                     pop     edx
006ACC9C   59                     pop     ecx
006ACC9D   59                     pop     ecx
006ACC9E   648910                 mov     fs:[eax], edx
006ACCA1   EB0A                   jmp     006ACCAD

* Reference to: System.@HandleAnyException;
|
006ACCA3   E9DC7DD5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006ACCA8   E80382D5FF             call    00404EB0

****** END
|
006ACCAD   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: '  '
|
006ACCB0   BA9CCD6A00             mov     edx, $006ACD9C

* Reference to: System.@LStrCmp;
|
006ACCB5   E8EE8BD5FF             call    004058A8
006ACCBA   750D                   jnz     006ACCC9
006ACCBC   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: '-1'
|
006ACCBF   BA90CD6A00             mov     edx, $006ACD90

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ACCC4   E86B88D5FF             call    00405534
006ACCC9   8B45F8                 mov     eax, [ebp-$08]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006ACCCC   E8FFE1D5FF             call    0040AED0
006ACCD1   8BD0                   mov     edx, eax
006ACCD3   A194A07D00             mov     eax, dword ptr [$007DA094]
006ACCD8   8B00                   mov     eax, [eax]

* Reference to control meTexto : N.A.
|
006ACCDA   8B80FC020000           mov     eax, [eax+$02FC]

* Reference to: ExtCtrls.TCustomRadioGroup.SetItemIndex(TCustomRadioGroup;Integer);
|
006ACCE0   E897E0D9FF             call    0044AD7C
006ACCE5   A194A07D00             mov     eax, dword ptr [$007DA094]
006ACCEA   8B00                   mov     eax, [eax]
006ACCEC   8B10                   mov     edx, [eax]
006ACCEE   FF92EC000000           call    dword ptr [edx+$00EC]
006ACCF4   48                     dec     eax
006ACCF5   7542                   jnz     006ACD39
006ACCF7   A194A07D00             mov     eax, dword ptr [$007DA094]
006ACCFC   8B00                   mov     eax, [eax]

* Reference to control meTexto : N.A.
|
006ACCFE   8B80FC020000           mov     eax, [eax+$02FC]

* Reference to field N.A..OFFS_0218
|
006ACD04   8B8018020000           mov     eax, [eax+$0218]
006ACD0A   83E801                 sub     eax, +$01
006ACD0D   7204                   jb      006ACD13
006ACD0F   7414                   jz      006ACD25
006ACD11   EB22                   jmp     006ACD35
006ACD13   8D45F4                 lea     eax, [ebp-$0C]

|
006ACD16   E8C115FCFF             call    0066E2DC
006ACD1B   8B45F4                 mov     eax, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007A5BC4()
|
006ACD1E   E8A18E0F00             call    007A5BC4
006ACD23   EB10                   jmp     006ACD35
006ACD25   8D45F0                 lea     eax, [ebp-$10]

|
006ACD28   E82B16FCFF             call    0066E358
006ACD2D   8B45F0                 mov     eax, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A5BC4()
|
006ACD30   E88F8E0F00             call    007A5BC4
006ACD35   C645FF01               mov     byte ptr [ebp-$01], $01
006ACD39   A194A07D00             mov     eax, dword ptr [$007DA094]
006ACD3E   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006ACD40   E85778D5FF             call    0040459C
006ACD45   33C0                   xor     eax, eax
006ACD47   5A                     pop     edx
006ACD48   59                     pop     ecx
006ACD49   59                     pop     ecx
006ACD4A   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
006ACD4D   6867CD6A00             push    $006ACD67
006ACD52   8D45F0                 lea     eax, [ebp-$10]
006ACD55   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006ACD5A   E86187D5FF             call    004054C0
006ACD5F   C3                     ret


* Reference to: System.@HandleFinally;
|
006ACD60   E9D37FD5FF             jmp     00404D38
006ACD65   EBEB                   jmp     006ACD52

****** END
|
006ACD67   8A45FF                 mov     al, byte ptr [ebp-$01]
006ACD6A   5F                     pop     edi
006ACD6B   5E                     pop     esi
006ACD6C   5B                     pop     ebx
006ACD6D   8BE5                   mov     esp, ebp
006ACD6F   5D                     pop     ebp
006ACD70   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ACDA1(Sender : TObject);
begin
(*
006ACDA1   8BEC                   mov     ebp, esp
006ACDA3   33C9                   xor     ecx, ecx
006ACDA5   B201                   mov     dl, $01

* Reference to class TFrmAliquotas
|
006ACDA7   A1DC5A6700             mov     eax, dword ptr [$00675ADC]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
006ACDAC   E85F11E0FF             call    004ADF10
006ACDB1   8B15F8A77D00           mov     edx, [$007DA7F8]
006ACDB7   8902                   mov     [edx], eax
006ACDB9   A1F8A77D00             mov     eax, dword ptr [$007DA7F8]
006ACDBE   8B00                   mov     eax, [eax]
006ACDC0   8B10                   mov     edx, [eax]
006ACDC2   FF92EC000000           call    dword ptr [edx+$00EC]
006ACDC8   A1F8A77D00             mov     eax, dword ptr [$007DA7F8]
006ACDCD   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
006ACDCF   E8C877D5FF             call    0040459C
006ACDD4   B001                   mov     al, $01
006ACDD6   5D                     pop     ebp
006ACDD7   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ACDD8(Sender : TObject);
begin
(*
006ACDD8   55                     push    ebp
006ACDD9   8BEC                   mov     ebp, esp
006ACDDB   33C0                   xor     eax, eax
006ACDDD   55                     push    ebp
006ACDDE   68F7CD6A00             push    $006ACDF7

***** TRY
|
006ACDE3   64FF30                 push    dword ptr fs:[eax]
006ACDE6   648920                 mov     fs:[eax], esp
006ACDE9   33C0                   xor     eax, eax
006ACDEB   5A                     pop     edx
006ACDEC   59                     pop     ecx
006ACDED   59                     pop     ecx
006ACDEE   648910                 mov     fs:[eax], edx

****** FINALLY
|
006ACDF1   68FECD6A00             push    $006ACDFE
006ACDF6   C3                     ret


* Reference to: System.@HandleFinally;
|
006ACDF7   E93C7FD5FF             jmp     00404D38
006ACDFC   EBF8                   jmp     006ACDF6

****** END
|
006ACDFE   5D                     pop     ebp
006ACDFF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ACE00(Sender : TObject);
begin
(*
006ACE00   55                     push    ebp
006ACE01   8BEC                   mov     ebp, esp
006ACE03   B91D000000             mov     ecx, $0000001D
006ACE08   6A00                   push    $00
006ACE0A   6A00                   push    $00
006ACE0C   49                     dec     ecx
006ACE0D   75F9                   jnz     006ACE08
006ACE0F   51                     push    ecx
006ACE10   53                     push    ebx
006ACE11   56                     push    esi
006ACE12   57                     push    edi
006ACE13   8955F8                 mov     [ebp-$08], edx
006ACE16   8945FC                 mov     [ebp-$04], eax
006ACE19   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006ACE1C   E82B8BD5FF             call    0040594C
006ACE21   33C0                   xor     eax, eax
006ACE23   55                     push    ebp

* Possible String Reference to: 'é=vÕÿëÓ_^[‹å]Ãÿÿÿÿ@'
|
006ACE24   68F6D66A00             push    $006AD6F6

***** TRY
|
006ACE29   64FF30                 push    dword ptr fs:[eax]
006ACE2C   648920                 mov     fs:[eax], esp
006ACE2F   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
006ACE32   E82589D5FF             call    0040575C
006ACE37   8BF0                   mov     esi, eax
006ACE39   BF01000000             mov     edi, $00000001
006ACE3E   85F6                   test    esi, esi
006ACE40   0F8E75080000           jle     006AD6BB
006ACE46   3BF7                   cmp     esi, edi
006ACE48   0F8E2A080000           jle     006AD678
006ACE4E   8B45FC                 mov     eax, [ebp-$04]
006ACE51   8A5C38FF               mov     bl, byte ptr [eax+edi-$01]
006ACE55   80FB26                 cmp     bl, $26
006ACE58   0F8588060000           jnz     006AD4E6
006ACE5E   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
006ACE61   E83686D5FF             call    0040549C
006ACE66   47                     inc     edi
006ACE67   EB2F                   jmp     006ACE98
006ACE69   8D45E0                 lea     eax, [ebp-$20]
006ACE6C   8B55FC                 mov     edx, [ebp-$04]
006ACE6F   8A543AFF               mov     dl, byte ptr [edx+edi-$01]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006ACE73   E80C88D5FF             call    00405684
006ACE78   8B55E0                 mov     edx, [ebp-$20]
006ACE7B   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrCat;
|
006ACE7E   E8E188D5FF             call    00405764
006ACE83   47                     inc     edi
006ACE84   83FF32                 cmp     edi, +$32
006ACE87   7E0F                   jle     006ACE98

* Possible String Reference to: 'Comando inválido na definição de ca
|                                beçalho ou rodapé. verifique.'
|
006ACE89   B80CD76A00             mov     eax, $006AD70C

* Reference to: Dialogs.ShowMessage(AnsiString);
|
006ACE8E   E8916DD9FF             call    00443C24
006ACE93   E92B080000             jmp     006AD6C3
006ACE98   3BF7                   cmp     esi, edi
006ACE9A   7C0A                   jl      006ACEA6
006ACE9C   8B45FC                 mov     eax, [ebp-$04]
006ACE9F   807C38FF26             cmp     byte ptr [eax+edi-$01], $26
006ACEA4   75C3                   jnz     006ACE69
006ACEA6   8D55DC                 lea     edx, [ebp-$24]
006ACEA9   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006ACEAC   E877D6D5FF             call    0040A528
006ACEB1   8B45DC                 mov     eax, [ebp-$24]

* Possible String Reference to: 'HORA'
|
006ACEB4   BA58D76A00             mov     edx, $006AD758

* Reference to: System.@LStrCmp;
|
006ACEB9   E8EA89D5FF             call    004058A8
006ACEBE   751E                   jnz     006ACEDE

* Reference to: SysUtils.Now:TDateTime;
|
006ACEC0   E8970DD6FF             call    0040DC5C
006ACEC5   83C4F8                 add     esp, -$08
006ACEC8   DD1C24                 fstp    qword ptr [esp]
006ACECB   9B                     wait
006ACECC   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: 'hh:mm'
|
006ACECF   B868D76A00             mov     eax, $006AD768

|
006ACED4   E8FF19D6FF             call    0040E8D8
006ACED9   E9BE050000             jmp     006AD49C
006ACEDE   8D55D8                 lea     edx, [ebp-$28]
006ACEE1   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006ACEE4   E83FD6D5FF             call    0040A528
006ACEE9   8B45D8                 mov     eax, [ebp-$28]

* Possible String Reference to: 'DATA'
|
006ACEEC   BA78D76A00             mov     edx, $006AD778

* Reference to: System.@LStrCmp;
|
006ACEF1   E8B289D5FF             call    004058A8
006ACEF6   751E                   jnz     006ACF16

* Reference to: SysUtils.Date:TDateTime;
|
006ACEF8   E8FF0CD6FF             call    0040DBFC
006ACEFD   83C4F8                 add     esp, -$08
006ACF00   DD1C24                 fstp    qword ptr [esp]
006ACF03   9B                     wait
006ACF04   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: 'dd/mm/yyyy'
|
006ACF07   B888D76A00             mov     eax, $006AD788

|
006ACF0C   E8C719D6FF             call    0040E8D8
006ACF11   E986050000             jmp     006AD49C
006ACF16   8D55D4                 lea     edx, [ebp-$2C]
006ACF19   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006ACF1C   E807D6D5FF             call    0040A528
006ACF21   8B45D4                 mov     eax, [ebp-$2C]

* Possible String Reference to: 'DATAEX'
|
006ACF24   BA9CD76A00             mov     edx, $006AD79C

* Reference to: System.@LStrCmp;
|
006ACF29   E87A89D5FF             call    004058A8
006ACF2E   751E                   jnz     006ACF4E

* Reference to: SysUtils.Date:TDateTime;
|
006ACF30   E8C70CD6FF             call    0040DBFC
006ACF35   83C4F8                 add     esp, -$08
006ACF38   DD1C24                 fstp    qword ptr [esp]
006ACF3B   9B                     wait
006ACF3C   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: 'dddd "," dd "de" mmmm "de" yyyy'
|
006ACF3F   B8ACD76A00             mov     eax, $006AD7AC

|
006ACF44   E88F19D6FF             call    0040E8D8
006ACF49   E94E050000             jmp     006AD49C
006ACF4E   8D55D0                 lea     edx, [ebp-$30]
006ACF51   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006ACF54   E8CFD5D5FF             call    0040A528
006ACF59   8B45D0                 mov     eax, [ebp-$30]

* Possible String Reference to: 'DATAFISCAL'
|
006ACF5C   BAD4D76A00             mov     edx, $006AD7D4

* Reference to: System.@LStrCmp;
|
006ACF61   E84289D5FF             call    004058A8
006ACF66   751C                   jnz     006ACF84
006ACF68   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006ACF6D   FF7004                 push    dword ptr [eax+$04]
006ACF70   FF30                   push    dword ptr [eax]
006ACF72   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: 'dd/mm/yyyy'
|
006ACF75   B888D76A00             mov     eax, $006AD788

|
006ACF7A   E85919D6FF             call    0040E8D8
006ACF7F   E918050000             jmp     006AD49C
006ACF84   8D55CC                 lea     edx, [ebp-$34]
006ACF87   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006ACF8A   E899D5D5FF             call    0040A528
006ACF8F   8B45CC                 mov     eax, [ebp-$34]

* Possible String Reference to: 'CUPOM'
|
006ACF92   BAE8D76A00             mov     edx, $006AD7E8

* Reference to: System.@LStrCmp;
|
006ACF97   E80C89D5FF             call    004058A8
006ACF9C   752D                   jnz     006ACFCB
006ACF9E   A1FCB07D00             mov     eax, dword ptr [$007DB0FC]
006ACFA3   8B00                   mov     eax, [eax]
006ACFA5   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
006ACFA7   E860DFD5FF             call    0040AF0C
006ACFAC   8945C8                 mov     [ebp-$38], eax
006ACFAF   DB45C8                 fild    dword ptr [ebp-$38]
006ACFB2   83C4F4                 add     esp, -$0C
006ACFB5   DB3C24                 fstp    tbyte ptr [esp]
006ACFB8   9B                     wait
006ACFB9   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: '000000'
|
006ACFBC   B8F8D76A00             mov     eax, $006AD7F8

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006ACFC1   E87605D6FF             call    0040D53C
006ACFC6   E9D1040000             jmp     006AD49C
006ACFCB   8D55C4                 lea     edx, [ebp-$3C]
006ACFCE   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006ACFD1   E852D5D5FF             call    0040A528
006ACFD6   8B45C4                 mov     eax, [ebp-$3C]

* Possible String Reference to: 'PDV'
|
006ACFD9   BA08D86A00             mov     edx, $006AD808

* Reference to: System.@LStrCmp;
|
006ACFDE   E8C588D5FF             call    004058A8
006ACFE3   7517                   jnz     006ACFFC
006ACFE5   8D55EC                 lea     edx, [ebp-$14]
006ACFE8   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ACFED   8B00                   mov     eax, [eax]
006ACFEF   8B4070                 mov     eax, [eax+$70]
006ACFF2   8B08                   mov     ecx, [eax]
006ACFF4   FF5160                 call    dword ptr [ecx+$60]
006ACFF7   E9A0040000             jmp     006AD49C
006ACFFC   8D55C0                 lea     edx, [ebp-$40]
006ACFFF   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD002   E821D5D5FF             call    0040A528
006AD007   8B45C0                 mov     eax, [ebp-$40]

* Possible String Reference to: 'USUARIO'
|
006AD00A   BA14D86A00             mov     edx, $006AD814

* Reference to: System.@LStrCmp;
|
006AD00F   E89488D5FF             call    004058A8
006AD014   7515                   jnz     006AD02B
006AD016   8D45EC                 lea     eax, [ebp-$14]
006AD019   8B15AC9D7D00           mov     edx, [$007D9DAC]
006AD01F   8B12                   mov     edx, [edx]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AD021   E80E85D5FF             call    00405534
006AD026   E971040000             jmp     006AD49C
006AD02B   8D55BC                 lea     edx, [ebp-$44]
006AD02E   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD031   E8F2D4D5FF             call    0040A528
006AD036   8B45BC                 mov     eax, [ebp-$44]

* Possible String Reference to: 'FUNCIONARIO'
|
006AD039   BA24D86A00             mov     edx, $006AD824

* Reference to: System.@LStrCmp;
|
006AD03E   E86588D5FF             call    004058A8
006AD043   751A                   jnz     006AD05F
006AD045   8D55EC                 lea     edx, [ebp-$14]
006AD048   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AD04D   8B00                   mov     eax, [eax]
006AD04F   8B8034010000           mov     eax, [eax+$0134]
006AD055   8B08                   mov     ecx, [eax]
006AD057   FF5160                 call    dword ptr [ecx+$60]
006AD05A   E93D040000             jmp     006AD49C
006AD05F   8D55B8                 lea     edx, [ebp-$48]
006AD062   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD065   E8BED4D5FF             call    0040A528
006AD06A   8B45B8                 mov     eax, [ebp-$48]

* Possible String Reference to: 'FCODNOME'
|
006AD06D   BA38D86A00             mov     edx, $006AD838

* Reference to: System.@LStrCmp;
|
006AD072   E83188D5FF             call    004058A8
006AD077   754D                   jnz     006AD0C6

* Possible String Reference to: 'FANTASIA'
|
006AD079   684CD86A00             push    $006AD84C
006AD07E   8D45EC                 lea     eax, [ebp-$14]
006AD081   50                     push    eax
006AD082   8D55AC                 lea     edx, [ebp-$54]
006AD085   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AD08A   8B00                   mov     eax, [eax]
006AD08C   8B8034010000           mov     eax, [eax+$0134]
006AD092   8B08                   mov     ecx, [eax]
006AD094   FF5160                 call    dword ptr [ecx+$60]
006AD097   8B45AC                 mov     eax, [ebp-$54]
006AD09A   8D55B0                 lea     edx, [ebp-$50]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
006AD09D   E8B22A1000             call    007AFB54
006AD0A2   8B4DB0                 mov     ecx, [ebp-$50]
006AD0A5   8D45B4                 lea     eax, [ebp-$4C]

* Possible String Reference to: 'CODFUNC = '
|
006AD0A8   BA60D86A00             mov     edx, $006AD860

* Reference to: System.@LStrCat3;
|
006AD0AD   E8F686D5FF             call    004057A8
006AD0B2   8B4DB4                 mov     ecx, [ebp-$4C]

* Possible String Reference to: 'FUNCREPR'
|
006AD0B5   BA74D86A00             mov     edx, $006AD874
006AD0BA   33C0                   xor     eax, eax

|
006AD0BC   E84FC20F00             call    007A9310
006AD0C1   E9D6030000             jmp     006AD49C
006AD0C6   8D55A8                 lea     edx, [ebp-$58]
006AD0C9   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD0CC   E857D4D5FF             call    0040A528
006AD0D1   8B45A8                 mov     eax, [ebp-$58]

* Possible String Reference to: 'FNOME'
|
006AD0D4   BA88D86A00             mov     edx, $006AD888

* Reference to: System.@LStrCmp;
|
006AD0D9   E8CA87D5FF             call    004058A8
006AD0DE   754D                   jnz     006AD12D

* Possible String Reference to: 'NOME'
|
006AD0E0   6898D86A00             push    $006AD898
006AD0E5   8D45EC                 lea     eax, [ebp-$14]
006AD0E8   50                     push    eax
006AD0E9   8D559C                 lea     edx, [ebp-$64]
006AD0EC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AD0F1   8B00                   mov     eax, [eax]
006AD0F3   8B8034010000           mov     eax, [eax+$0134]
006AD0F9   8B08                   mov     ecx, [eax]
006AD0FB   FF5160                 call    dword ptr [ecx+$60]
006AD0FE   8B459C                 mov     eax, [ebp-$64]
006AD101   8D55A0                 lea     edx, [ebp-$60]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
006AD104   E84B2A1000             call    007AFB54
006AD109   8B4DA0                 mov     ecx, [ebp-$60]
006AD10C   8D45A4                 lea     eax, [ebp-$5C]

* Possible String Reference to: 'CODFUNC = '
|
006AD10F   BA60D86A00             mov     edx, $006AD860

* Reference to: System.@LStrCat3;
|
006AD114   E88F86D5FF             call    004057A8
006AD119   8B4DA4                 mov     ecx, [ebp-$5C]

* Possible String Reference to: 'FUNCREPR'
|
006AD11C   BA74D86A00             mov     edx, $006AD874
006AD121   33C0                   xor     eax, eax

|
006AD123   E8E8C10F00             call    007A9310
006AD128   E96F030000             jmp     006AD49C
006AD12D   8D5598                 lea     edx, [ebp-$68]
006AD130   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD133   E8F0D3D5FF             call    0040A528
006AD138   8B4598                 mov     eax, [ebp-$68]

* Possible String Reference to: 'FILIAL'
|
006AD13B   BAA8D86A00             mov     edx, $006AD8A8

* Reference to: System.@LStrCmp;
|
006AD140   E86387D5FF             call    004058A8
006AD145   7515                   jnz     006AD15C
006AD147   8D45EC                 lea     eax, [ebp-$14]
006AD14A   8B15DCAD7D00           mov     edx, [$007DADDC]
006AD150   8B12                   mov     edx, [edx]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AD152   E8DD83D5FF             call    00405534
006AD157   E940030000             jmp     006AD49C
006AD15C   8D5594                 lea     edx, [ebp-$6C]
006AD15F   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD162   E8C1D3D5FF             call    0040A528
006AD167   8B4594                 mov     eax, [ebp-$6C]

* Possible String Reference to: 'CGC'
|
006AD16A   BAB8D86A00             mov     edx, $006AD8B8

* Reference to: System.@LStrCmp;
|
006AD16F   E83487D5FF             call    004058A8
006AD174   7515                   jnz     006AD18B
006AD176   8D45EC                 lea     eax, [ebp-$14]
006AD179   8B1518A67D00           mov     edx, [$007DA618]
006AD17F   8B12                   mov     edx, [edx]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AD181   E8AE83D5FF             call    00405534
006AD186   E911030000             jmp     006AD49C
006AD18B   8D5590                 lea     edx, [ebp-$70]
006AD18E   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD191   E892D3D5FF             call    0040A528
006AD196   8B4590                 mov     eax, [ebp-$70]

* Possible String Reference to: 'RAZAO'
|
006AD199   BAC4D86A00             mov     edx, $006AD8C4

* Reference to: System.@LStrCmp;
|
006AD19E   E80587D5FF             call    004058A8
006AD1A3   753C                   jnz     006AD1E1

* Possible String Reference to: 'RAZAO'
|
006AD1A5   68C4D86A00             push    $006AD8C4
006AD1AA   8D45EC                 lea     eax, [ebp-$14]
006AD1AD   50                     push    eax
006AD1AE   8D5588                 lea     edx, [ebp-$78]
006AD1B1   A118A67D00             mov     eax, dword ptr [$007DA618]
006AD1B6   8B00                   mov     eax, [eax]

* Reference to: SysUtils.QuotedStr(AnsiString):AnsiString;
|
006AD1B8   E80BD7D5FF             call    0040A8C8
006AD1BD   8B4D88                 mov     ecx, [ebp-$78]
006AD1C0   8D458C                 lea     eax, [ebp-$74]

* Possible String Reference to: 'CGCCLIE = '
|
006AD1C3   BAD4D86A00             mov     edx, $006AD8D4

* Reference to: System.@LStrCat3;
|
006AD1C8   E8DB85D5FF             call    004057A8
006AD1CD   8B4D8C                 mov     ecx, [ebp-$74]

* Possible String Reference to: 'CLIENTES'
|
006AD1D0   BAE8D86A00             mov     edx, $006AD8E8
006AD1D5   33C0                   xor     eax, eax

|
006AD1D7   E834C10F00             call    007A9310
006AD1DC   E9BB020000             jmp     006AD49C
006AD1E1   8D5584                 lea     edx, [ebp-$7C]
006AD1E4   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD1E7   E83CD3D5FF             call    0040A528
006AD1EC   8B4584                 mov     eax, [ebp-$7C]

* Possible String Reference to: 'FANTASIA'
|
006AD1EF   BA4CD86A00             mov     edx, $006AD84C

* Reference to: System.@LStrCmp;
|
006AD1F4   E8AF86D5FF             call    004058A8
006AD1F9   7542                   jnz     006AD23D

* Possible String Reference to: 'FANTASIA'
|
006AD1FB   684CD86A00             push    $006AD84C
006AD200   8D45EC                 lea     eax, [ebp-$14]
006AD203   50                     push    eax
006AD204   8D957CFFFFFF           lea     edx, [ebp+$FFFFFF7C]
006AD20A   A118A67D00             mov     eax, dword ptr [$007DA618]
006AD20F   8B00                   mov     eax, [eax]

* Reference to: SysUtils.QuotedStr(AnsiString):AnsiString;
|
006AD211   E8B2D6D5FF             call    0040A8C8
006AD216   8B8D7CFFFFFF           mov     ecx, [ebp+$FFFFFF7C]
006AD21C   8D4580                 lea     eax, [ebp-$80]

* Possible String Reference to: 'CGCCLIE = '
|
006AD21F   BAD4D86A00             mov     edx, $006AD8D4

* Reference to: System.@LStrCat3;
|
006AD224   E87F85D5FF             call    004057A8
006AD229   8B4D80                 mov     ecx, [ebp-$80]

* Possible String Reference to: 'CLIENTES'
|
006AD22C   BAE8D86A00             mov     edx, $006AD8E8
006AD231   33C0                   xor     eax, eax

|
006AD233   E8D8C00F00             call    007A9310
006AD238   E95F020000             jmp     006AD49C
006AD23D   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
006AD243   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD246   E8DDD2D5FF             call    0040A528
006AD24B   8B8578FFFFFF           mov     eax, [ebp+$FFFFFF78]

* Possible String Reference to: 'TELEFONE'
|
006AD251   BAFCD86A00             mov     edx, $006AD8FC

* Reference to: System.@LStrCmp;
|
006AD256   E84D86D5FF             call    004058A8
006AD25B   7548                   jnz     006AD2A5

* Possible String Reference to: 'TELEFONE'
|
006AD25D   68FCD86A00             push    $006AD8FC
006AD262   8D45EC                 lea     eax, [ebp-$14]
006AD265   50                     push    eax
006AD266   8D9570FFFFFF           lea     edx, [ebp+$FFFFFF70]
006AD26C   A118A67D00             mov     eax, dword ptr [$007DA618]
006AD271   8B00                   mov     eax, [eax]

* Reference to: SysUtils.QuotedStr(AnsiString):AnsiString;
|
006AD273   E850D6D5FF             call    0040A8C8
006AD278   8B8D70FFFFFF           mov     ecx, [ebp+$FFFFFF70]
006AD27E   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]

* Possible String Reference to: 'CGCCLIE = '
|
006AD284   BAD4D86A00             mov     edx, $006AD8D4

* Reference to: System.@LStrCat3;
|
006AD289   E81A85D5FF             call    004057A8
006AD28E   8B8D74FFFFFF           mov     ecx, [ebp+$FFFFFF74]

* Possible String Reference to: 'CLIENTES'
|
006AD294   BAE8D86A00             mov     edx, $006AD8E8
006AD299   33C0                   xor     eax, eax

|
006AD29B   E870C00F00             call    007A9310
006AD2A0   E9F7010000             jmp     006AD49C
006AD2A5   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
006AD2AB   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD2AE   E875D2D5FF             call    0040A528
006AD2B3   8B856CFFFFFF           mov     eax, [ebp+$FFFFFF6C]

* Possible String Reference to: 'ADICIONAL'
|
006AD2B9   BA10D96A00             mov     edx, $006AD910

* Reference to: System.@LStrCmp;
|
006AD2BE   E8E585D5FF             call    004058A8
006AD2C3   7548                   jnz     006AD30D

* Possible String Reference to: 'ADICIONAL'
|
006AD2C5   6810D96A00             push    $006AD910
006AD2CA   8D45EC                 lea     eax, [ebp-$14]
006AD2CD   50                     push    eax
006AD2CE   8D9564FFFFFF           lea     edx, [ebp+$FFFFFF64]
006AD2D4   A118A67D00             mov     eax, dword ptr [$007DA618]
006AD2D9   8B00                   mov     eax, [eax]

* Reference to: SysUtils.QuotedStr(AnsiString):AnsiString;
|
006AD2DB   E8E8D5D5FF             call    0040A8C8
006AD2E0   8B8D64FFFFFF           mov     ecx, [ebp+$FFFFFF64]
006AD2E6   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Possible String Reference to: 'CGCCLIE = '
|
006AD2EC   BAD4D86A00             mov     edx, $006AD8D4

* Reference to: System.@LStrCat3;
|
006AD2F1   E8B284D5FF             call    004057A8
006AD2F6   8B8D68FFFFFF           mov     ecx, [ebp+$FFFFFF68]

* Possible String Reference to: 'CLIENTES'
|
006AD2FC   BAE8D86A00             mov     edx, $006AD8E8
006AD301   33C0                   xor     eax, eax

|
006AD303   E808C00F00             call    007A9310
006AD308   E98F010000             jmp     006AD49C
006AD30D   8D9560FFFFFF           lea     edx, [ebp+$FFFFFF60]
006AD313   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD316   E80DD2D5FF             call    0040A528
006AD31B   8B8560FFFFFF           mov     eax, [ebp+$FFFFFF60]

* Possible String Reference to: 'ADICIONAL2'
|
006AD321   BA24D96A00             mov     edx, $006AD924

* Reference to: System.@LStrCmp;
|
006AD326   E87D85D5FF             call    004058A8
006AD32B   7548                   jnz     006AD375

* Possible String Reference to: 'ADICIONAL2'
|
006AD32D   6824D96A00             push    $006AD924
006AD332   8D45EC                 lea     eax, [ebp-$14]
006AD335   50                     push    eax
006AD336   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
006AD33C   A118A67D00             mov     eax, dword ptr [$007DA618]
006AD341   8B00                   mov     eax, [eax]

* Reference to: SysUtils.QuotedStr(AnsiString):AnsiString;
|
006AD343   E880D5D5FF             call    0040A8C8
006AD348   8B8D58FFFFFF           mov     ecx, [ebp+$FFFFFF58]
006AD34E   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]

* Possible String Reference to: 'CGCCLIE = '
|
006AD354   BAD4D86A00             mov     edx, $006AD8D4

* Reference to: System.@LStrCat3;
|
006AD359   E84A84D5FF             call    004057A8
006AD35E   8B8D5CFFFFFF           mov     ecx, [ebp+$FFFFFF5C]

* Possible String Reference to: 'CLIENTES'
|
006AD364   BAE8D86A00             mov     edx, $006AD8E8
006AD369   33C0                   xor     eax, eax

|
006AD36B   E8A0BF0F00             call    007A9310
006AD370   E927010000             jmp     006AD49C
006AD375   8D9554FFFFFF           lea     edx, [ebp+$FFFFFF54]
006AD37B   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD37E   E8A5D1D5FF             call    0040A528
006AD383   8B8554FFFFFF           mov     eax, [ebp+$FFFFFF54]

* Possible String Reference to: 'ADICIONAL3'
|
006AD389   BA38D96A00             mov     edx, $006AD938

* Reference to: System.@LStrCmp;
|
006AD38E   E81585D5FF             call    004058A8
006AD393   7548                   jnz     006AD3DD

* Possible String Reference to: 'ADICIONAL3'
|
006AD395   6838D96A00             push    $006AD938
006AD39A   8D45EC                 lea     eax, [ebp-$14]
006AD39D   50                     push    eax
006AD39E   8D954CFFFFFF           lea     edx, [ebp+$FFFFFF4C]
006AD3A4   A118A67D00             mov     eax, dword ptr [$007DA618]
006AD3A9   8B00                   mov     eax, [eax]

* Reference to: SysUtils.QuotedStr(AnsiString):AnsiString;
|
006AD3AB   E818D5D5FF             call    0040A8C8
006AD3B0   8B8D4CFFFFFF           mov     ecx, [ebp+$FFFFFF4C]
006AD3B6   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]

* Possible String Reference to: 'CGCCLIE = '
|
006AD3BC   BAD4D86A00             mov     edx, $006AD8D4

* Reference to: System.@LStrCat3;
|
006AD3C1   E8E283D5FF             call    004057A8
006AD3C6   8B8D50FFFFFF           mov     ecx, [ebp+$FFFFFF50]

* Possible String Reference to: 'CLIENTES'
|
006AD3CC   BAE8D86A00             mov     edx, $006AD8E8
006AD3D1   33C0                   xor     eax, eax

|
006AD3D3   E838BF0F00             call    007A9310
006AD3D8   E9BF000000             jmp     006AD49C
006AD3DD   8D9548FFFFFF           lea     edx, [ebp+$FFFFFF48]
006AD3E3   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD3E6   E83DD1D5FF             call    0040A528
006AD3EB   8B8548FFFFFF           mov     eax, [ebp+$FFFFFF48]

* Possible String Reference to: 'ADICIONAL4'
|
006AD3F1   BA4CD96A00             mov     edx, $006AD94C

* Reference to: System.@LStrCmp;
|
006AD3F6   E8AD84D5FF             call    004058A8
006AD3FB   7545                   jnz     006AD442

* Possible String Reference to: 'ADICIONAL4'
|
006AD3FD   684CD96A00             push    $006AD94C
006AD402   8D45EC                 lea     eax, [ebp-$14]
006AD405   50                     push    eax
006AD406   8D9540FFFFFF           lea     edx, [ebp+$FFFFFF40]
006AD40C   A118A67D00             mov     eax, dword ptr [$007DA618]
006AD411   8B00                   mov     eax, [eax]

* Reference to: SysUtils.QuotedStr(AnsiString):AnsiString;
|
006AD413   E8B0D4D5FF             call    0040A8C8
006AD418   8B8D40FFFFFF           mov     ecx, [ebp+$FFFFFF40]
006AD41E   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Possible String Reference to: 'CGCCLIE = '
|
006AD424   BAD4D86A00             mov     edx, $006AD8D4

* Reference to: System.@LStrCat3;
|
006AD429   E87A83D5FF             call    004057A8
006AD42E   8B8D44FFFFFF           mov     ecx, [ebp+$FFFFFF44]

* Possible String Reference to: 'CLIENTES'
|
006AD434   BAE8D86A00             mov     edx, $006AD8E8
006AD439   33C0                   xor     eax, eax

|
006AD43B   E8D0BE0F00             call    007A9310
006AD440   EB5A                   jmp     006AD49C
006AD442   8D953CFFFFFF           lea     edx, [ebp+$FFFFFF3C]
006AD448   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD44B   E8D8D0D5FF             call    0040A528
006AD450   8B853CFFFFFF           mov     eax, [ebp+$FFFFFF3C]

* Possible String Reference to: 'ESPECIE'
|
006AD456   BA60D96A00             mov     edx, $006AD960

* Reference to: System.@LStrCmp;
|
006AD45B   E84884D5FF             call    004058A8
006AD460   7512                   jnz     006AD474
006AD462   8D45EC                 lea     eax, [ebp-$14]
006AD465   8B1554A37D00           mov     edx, [$007DA354]
006AD46B   8B12                   mov     edx, [edx]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AD46D   E8C280D5FF             call    00405534
006AD472   EB28                   jmp     006AD49C
006AD474   8D9538FFFFFF           lea     edx, [ebp+$FFFFFF38]
006AD47A   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD47D   E8A6D0D5FF             call    0040A528
006AD482   8B8538FFFFFF           mov     eax, [ebp+$FFFFFF38]

* Possible String Reference to: 'SERIE'
|
006AD488   BA70D96A00             mov     edx, $006AD970

* Reference to: System.@LStrCmp;
|
006AD48D   E81684D5FF             call    004058A8
006AD492   7508                   jnz     006AD49C
006AD494   8D45EC                 lea     eax, [ebp-$14]

|
006AD497   E8B0050000             call    006ADA4C
006AD49C   8B45EC                 mov     eax, [ebp-$14]

* Reference to: System.@LStrLen(String):Integer;
|
006AD49F   E8B882D5FF             call    0040575C
006AD4A4   83F819                 cmp     eax, +$19
006AD4A7   7E1A                   jle     006AD4C3
006AD4A9   FF75EC                 push    dword ptr [ebp-$14]
006AD4AC   6880D96A00             push    $006AD980
006AD4B1   688CD96A00             push    $006AD98C
006AD4B6   8D45EC                 lea     eax, [ebp-$14]
006AD4B9   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AD4BE   E85983D5FF             call    0040581C
006AD4C3   FF75F4                 push    dword ptr [ebp-$0C]
006AD4C6   6898D96A00             push    $006AD998
006AD4CB   FF75EC                 push    dword ptr [ebp-$14]
006AD4CE   6898D96A00             push    $006AD998
006AD4D3   8D45F4                 lea     eax, [ebp-$0C]
006AD4D6   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
006AD4DB   E83C83D5FF             call    0040581C
006AD4E0   47                     inc     edi
006AD4E1   E989010000             jmp     006AD66F
006AD4E6   80FB3C                 cmp     bl, $3C
006AD4E9   0F8544010000           jnz     006AD633
006AD4EF   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrClr(void;void);
|
006AD4F2   E8A57FD5FF             call    0040549C
006AD4F7   47                     inc     edi
006AD4F8   EB35                   jmp     006AD52F
006AD4FA   8D8534FFFFFF           lea     eax, [ebp+$FFFFFF34]
006AD500   8B55FC                 mov     edx, [ebp-$04]
006AD503   8A543AFF               mov     dl, byte ptr [edx+edi-$01]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006AD507   E87881D5FF             call    00405684
006AD50C   8B9534FFFFFF           mov     edx, [ebp+$FFFFFF34]
006AD512   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrCat;
|
006AD515   E84A82D5FF             call    00405764
006AD51A   47                     inc     edi
006AD51B   83FF32                 cmp     edi, +$32
006AD51E   7E0F                   jle     006AD52F

* Possible String Reference to: 'Comando de alinhamento inválido na 
|                                definição de cabeçalho ou rodapé. v
|                                erifique.'
|
006AD520   B8A4D96A00             mov     eax, $006AD9A4

* Reference to: Dialogs.ShowMessage(AnsiString);
|
006AD525   E8FA66D9FF             call    00443C24
006AD52A   E994010000             jmp     006AD6C3
006AD52F   3BF7                   cmp     esi, edi
006AD531   7C0A                   jl      006AD53D
006AD533   8B45FC                 mov     eax, [ebp-$04]
006AD536   807C38FF3E             cmp     byte ptr [eax+edi-$01], $3E
006AD53B   75BD                   jnz     006AD4FA
006AD53D   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]
006AD543   50                     push    eax
006AD544   B901000000             mov     ecx, $00000001
006AD549   BA01000000             mov     edx, $00000001
006AD54E   8B45E8                 mov     eax, [ebp-$18]

* Reference to: System.@LStrCopy;
|
006AD551   E86684D5FF             call    004059BC
006AD556   8B852CFFFFFF           mov     eax, [ebp+$FFFFFF2C]
006AD55C   8D9530FFFFFF           lea     edx, [ebp+$FFFFFF30]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD562   E8C1CFD5FF             call    0040A528
006AD567   8B8530FFFFFF           mov     eax, [ebp+$FFFFFF30]
006AD56D   BAFCD96A00             mov     edx, $006AD9FC

* Reference to: System.@LStrCmp;
|
006AD572   E83183D5FF             call    004058A8
006AD577   7512                   jnz     006AD58B
006AD579   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'direita'
|
006AD57C   BA08DA6A00             mov     edx, $006ADA08

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AD581   E8AE7FD5FF             call    00405534
006AD586   E9E4000000             jmp     006AD66F
006AD58B   8D8524FFFFFF           lea     eax, [ebp+$FFFFFF24]
006AD591   50                     push    eax
006AD592   B901000000             mov     ecx, $00000001
006AD597   BA01000000             mov     edx, $00000001
006AD59C   8B45E8                 mov     eax, [ebp-$18]

* Reference to: System.@LStrCopy;
|
006AD59F   E81884D5FF             call    004059BC
006AD5A4   8B8524FFFFFF           mov     eax, [ebp+$FFFFFF24]
006AD5AA   8D9528FFFFFF           lea     edx, [ebp+$FFFFFF28]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD5B0   E873CFD5FF             call    0040A528
006AD5B5   8B8528FFFFFF           mov     eax, [ebp+$FFFFFF28]
006AD5BB   BA18DA6A00             mov     edx, $006ADA18

* Reference to: System.@LStrCmp;
|
006AD5C0   E8E382D5FF             call    004058A8
006AD5C5   7512                   jnz     006AD5D9
006AD5C7   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'esquerda'
|
006AD5CA   BA24DA6A00             mov     edx, $006ADA24

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AD5CF   E8607FD5FF             call    00405534
006AD5D4   E996000000             jmp     006AD66F
006AD5D9   8D851CFFFFFF           lea     eax, [ebp+$FFFFFF1C]
006AD5DF   50                     push    eax
006AD5E0   B901000000             mov     ecx, $00000001
006AD5E5   BA01000000             mov     edx, $00000001
006AD5EA   8B45E8                 mov     eax, [ebp-$18]

* Reference to: System.@LStrCopy;
|
006AD5ED   E8CA83D5FF             call    004059BC
006AD5F2   8B851CFFFFFF           mov     eax, [ebp+$FFFFFF1C]
006AD5F8   8D9520FFFFFF           lea     edx, [ebp+$FFFFFF20]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
006AD5FE   E825CFD5FF             call    0040A528
006AD603   8B8520FFFFFF           mov     eax, [ebp+$FFFFFF20]
006AD609   BA38DA6A00             mov     edx, $006ADA38

* Reference to: System.@LStrCmp;
|
006AD60E   E89582D5FF             call    004058A8
006AD613   750F                   jnz     006AD624
006AD615   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'centro'
|
006AD618   BA44DA6A00             mov     edx, $006ADA44

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AD61D   E8127FD5FF             call    00405534
006AD622   EB4B                   jmp     006AD66F
006AD624   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'esquerda'
|
006AD627   BA24DA6A00             mov     edx, $006ADA24

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AD62C   E8037FD5FF             call    00405534
006AD631   EB3C                   jmp     006AD66F
006AD633   80FB23                 cmp     bl, $23
006AD636   751C                   jnz     006AD654
006AD638   FF75F4                 push    dword ptr [ebp-$0C]
006AD63B   6880D96A00             push    $006AD980
006AD640   688CD96A00             push    $006AD98C
006AD645   8D45F4                 lea     eax, [ebp-$0C]
006AD648   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AD64D   E8CA81D5FF             call    0040581C
006AD652   EB1B                   jmp     006AD66F
006AD654   8D8518FFFFFF           lea     eax, [ebp+$FFFFFF18]
006AD65A   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
006AD65C   E82380D5FF             call    00405684
006AD661   8B9518FFFFFF           mov     edx, [ebp+$FFFFFF18]
006AD667   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrCat;
|
006AD66A   E8F580D5FF             call    00405764
006AD66F   47                     inc     edi
006AD670   3BF7                   cmp     esi, edi
006AD672   0F8FD6F7FFFF           jnle    006ACE4E
006AD678   3BF7                   cmp     esi, edi
006AD67A   7C20                   jl      006AD69C
006AD67C   8D8514FFFFFF           lea     eax, [ebp+$FFFFFF14]
006AD682   8B55FC                 mov     edx, [ebp-$04]
006AD685   8A543AFF               mov     dl, byte ptr [edx+edi-$01]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006AD689   E8F67FD5FF             call    00405684
006AD68E   8B9514FFFFFF           mov     edx, [ebp+$FFFFFF14]
006AD694   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrCat;
|
006AD697   E8C880D5FF             call    00405764
006AD69C   8B45E4                 mov     eax, [ebp-$1C]
006AD69F   50                     push    eax
006AD6A0   8B45F8                 mov     eax, [ebp-$08]
006AD6A3   50                     push    eax
006AD6A4   8B0D40A47D00           mov     ecx, [$007DA440]
006AD6AA   8B09                   mov     ecx, [ecx]
006AD6AC   8B55F4                 mov     edx, [ebp-$0C]
006AD6AF   B898D96A00             mov     eax, $006AD998

|
006AD6B4   E80F500F00             call    007A26C8
006AD6B9   EB08                   jmp     006AD6C3
006AD6BB   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006AD6BE   E8D97DD5FF             call    0040549C
006AD6C3   33C0                   xor     eax, eax
006AD6C5   5A                     pop     edx
006AD6C6   59                     pop     ecx
006AD6C7   59                     pop     ecx
006AD6C8   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ãÿÿÿÿ@'
|
006AD6CB   68FDD66A00             push    $006AD6FD
006AD6D0   8D8514FFFFFF           lea     eax, [ebp+$FFFFFF14]
006AD6D6   BA2D000000             mov     edx, $0000002D

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AD6DB   E8E07DD5FF             call    004054C0
006AD6E0   8D45CC                 lea     eax, [ebp-$34]
006AD6E3   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AD6E8   E8D37DD5FF             call    004054C0
006AD6ED   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006AD6F0   E8A77DD5FF             call    0040549C
006AD6F5   C3                     ret


* Reference to: System.@HandleFinally;
|
006AD6F6   E93D76D5FF             jmp     00404D38
006AD6FB   EBD3                   jmp     006AD6D0

****** END
|
006AD6FD   5F                     pop     edi
006AD6FE   5E                     pop     esi
006AD6FF   5B                     pop     ebx
006AD700   8BE5                   mov     esp, ebp
006AD702   5D                     pop     ebp
006AD703   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AD7EA(Sender : TObject);
begin
(*
006AD7EA   50                     push    eax
006AD7EB   4F                     dec     edi
006AD7EC   4D                     dec     ebp
006AD7ED   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AD815(Sender : TObject);
begin
(*
006AD815   53                     push    ebx
006AD816   55                     push    ebp
006AD817   41                     inc     ecx
006AD818   52                     push    edx
006AD819   49                     dec     ecx
006AD81A   4F                     dec     edi
006AD81B   00FF                   add     bh, bh
006AD81D   FFFF                   DB  $FF, $FF  //      
006AD81F   FF0B                   dec     dword ptr [ebx]
006AD821   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AD826(Sender : TObject);
begin
(*
006AD826   4E                     dec     esi
006AD827   43                     inc     ebx
006AD828   49                     dec     ecx
006AD829   4F                     dec     edi
006AD82A   4E                     dec     esi
006AD82B   41                     inc     ecx
006AD82C   52                     push    edx
006AD82D   49                     dec     ecx
006AD82E   4F                     dec     edi
006AD82F   00FF                   add     bh, bh
006AD831   FFFF                   DB  $FF, $FF  //      
006AD833   FF08                   dec     dword ptr [eax]
006AD835   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AD865(Sender : TObject);
begin
(*
006AD865   4E                     dec     esi
006AD866   43                     inc     ebx
006AD867   203D200000FF           and     [$FF000020], bh
006AD86D   FFFF                   DB  $FF, $FF  //      
006AD86F   FF08                   dec     dword ptr [eax]
006AD871   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AD876(Sender : TObject);
begin
(*
006AD876   4E                     dec     esi
006AD877   43                     inc     ebx
006AD878   52                     push    edx
006AD879   45                     inc     ebp
006AD87A   50                     push    eax
006AD87B   52                     push    edx
006AD87C   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006ADA4D(Sender : TObject);
begin
(*
006ADA4D   8BEC                   mov     ebp, esp
006ADA4F   6A00                   push    $00
006ADA51   6A00                   push    $00
006ADA53   6A00                   push    $00
006ADA55   53                     push    ebx
006ADA56   8BD8                   mov     ebx, eax
006ADA58   33C0                   xor     eax, eax
006ADA5A   55                     push    ebp

* Possible String Reference to: 'éüpÕÿëë[‹å]Ã'
|
006ADA5B   6837DC6A00             push    $006ADC37

***** TRY
|
006ADA60   64FF30                 push    dword ptr fs:[eax]
006ADA63   648920                 mov     fs:[eax], esp
006ADA66   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADA6B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'sweda'
|
006ADA6D   BA4CDC6A00             mov     edx, $006ADC4C

* Reference to: System.@LStrCmp;
|
006ADA72   E8317ED5FF             call    004058A8
006ADA77   7512                   jnz     006ADA8B
006ADA79   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'SW'
|
006ADA7C   BA5CDC6A00             mov     edx, $006ADC5C

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADA81   E8AE7AD5FF             call    00405534
006ADA86   E93F010000             jmp     006ADBCA
006ADA8B   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADA90   8B00                   mov     eax, [eax]

* Possible String Reference to: 'zanthus'
|
006ADA92   BA68DC6A00             mov     edx, $006ADC68

* Reference to: System.@LStrCmp;
|
006ADA97   E80C7ED5FF             call    004058A8
006ADA9C   7512                   jnz     006ADAB0
006ADA9E   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'ZN'
|
006ADAA1   BA78DC6A00             mov     edx, $006ADC78

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADAA6   E8897AD5FF             call    00405534
006ADAAB   E91A010000             jmp     006ADBCA
006ADAB0   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADAB5   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mecaf'
|
006ADAB7   BA84DC6A00             mov     edx, $006ADC84

* Reference to: System.@LStrCmp;
|
006ADABC   E8E77DD5FF             call    004058A8
006ADAC1   7512                   jnz     006ADAD5
006ADAC3   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'MC'
|
006ADAC6   BA94DC6A00             mov     edx, $006ADC94

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADACB   E8647AD5FF             call    00405534
006ADAD0   E9F5000000             jmp     006ADBCA
006ADAD5   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADADA   8B00                   mov     eax, [eax]

* Possible String Reference to: 'trends'
|
006ADADC   BAA0DC6A00             mov     edx, $006ADCA0

* Reference to: System.@LStrCmp;
|
006ADAE1   E8C27DD5FF             call    004058A8
006ADAE6   7512                   jnz     006ADAFA
006ADAE8   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'TR'
|
006ADAEB   BAB0DC6A00             mov     edx, $006ADCB0

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADAF0   E83F7AD5FF             call    00405534
006ADAF5   E9D0000000             jmp     006ADBCA
006ADAFA   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADAFF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006ADB01   BABCDC6A00             mov     edx, $006ADCBC

* Reference to: System.@LStrCmp;
|
006ADB06   E89D7DD5FF             call    004058A8
006ADB0B   7512                   jnz     006ADB1F
006ADB0D   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'BM'
|
006ADB10   BAD0DC6A00             mov     edx, $006ADCD0

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADB15   E81A7AD5FF             call    00405534
006ADB1A   E9AB000000             jmp     006ADBCA
006ADB1F   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADB24   8B00                   mov     eax, [eax]

* Possible String Reference to: 'daruma'
|
006ADB26   BADCDC6A00             mov     edx, $006ADCDC

* Reference to: System.@LStrCmp;
|
006ADB2B   E8787DD5FF             call    004058A8
006ADB30   7512                   jnz     006ADB44
006ADB32   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'DA'
|
006ADB35   BAECDC6A00             mov     edx, $006ADCEC

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADB3A   E8F579D5FF             call    00405534
006ADB3F   E986000000             jmp     006ADBCA
006ADB44   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADB49   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006ADB4B   BAF8DC6A00             mov     edx, $006ADCF8

* Reference to: System.@LStrCmp;
|
006ADB50   E8537DD5FF             call    004058A8
006ADB55   750F                   jnz     006ADB66
006ADB57   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'MP'
|
006ADB5A   BA08DD6A00             mov     edx, $006ADD08

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADB5F   E8D079D5FF             call    00405534
006ADB64   EB64                   jmp     006ADBCA
006ADB66   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADB6B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006ADB6D   BA14DD6A00             mov     edx, $006ADD14

* Reference to: System.@LStrCmp;
|
006ADB72   E8317DD5FF             call    004058A8
006ADB77   750F                   jnz     006ADB88
006ADB79   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'WS'
|
006ADB7C   BA24DD6A00             mov     edx, $006ADD24

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADB81   E8AE79D5FF             call    00405534
006ADB86   EB42                   jmp     006ADBCA
006ADB88   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADB8D   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006ADB8F   BA30DD6A00             mov     edx, $006ADD30

* Reference to: System.@LStrCmp;
|
006ADB94   E80F7DD5FF             call    004058A8
006ADB99   750F                   jnz     006ADBAA
006ADB9B   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'TM'
|
006ADB9E   BA44DD6A00             mov     edx, $006ADD44

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADBA3   E88C79D5FF             call    00405534
006ADBA8   EB20                   jmp     006ADBCA
006ADBAA   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADBAF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'nenhuma'
|
006ADBB1   BA50DD6A00             mov     edx, $006ADD50

* Reference to: System.@LStrCmp;
|
006ADBB6   E8ED7CD5FF             call    004058A8
006ADBBB   750D                   jnz     006ADBCA
006ADBBD   8D45FC                 lea     eax, [ebp-$04]

* Possible String Reference to: 'NN'
|
006ADBC0   BA60DD6A00             mov     edx, $006ADD60

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006ADBC5   E86A79D5FF             call    00405534
006ADBCA   A154B47D00             mov     eax, dword ptr [$007DB454]
006ADBCF   8B00                   mov     eax, [eax]

* Reference to: System.@LStrLen(String):Integer;
|
006ADBD1   E8867BD5FF             call    0040575C
006ADBD6   85C0                   test    eax, eax
006ADBD8   750F                   jnz     006ADBE9
006ADBDA   A154B47D00             mov     eax, dword ptr [$007DB454]
006ADBDF   BA6CDD6A00             mov     edx, $006ADD6C

* Reference to: System.@LStrAsg(void;void;void;void);
|
006ADBE4   E80779D5FF             call    004054F0
006ADBE9   A154B47D00             mov     eax, dword ptr [$007DB454]
006ADBEE   8B00                   mov     eax, [eax]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
006ADBF0   E8DBD2D5FF             call    0040AED0
006ADBF5   8945F4                 mov     [ebp-$0C], eax
006ADBF8   DB45F4                 fild    dword ptr [ebp-$0C]
006ADBFB   83C4F4                 add     esp, -$0C
006ADBFE   DB3C24                 fstp    tbyte ptr [esp]
006ADC01   9B                     wait
006ADC02   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: '000'
|
006ADC05   B878DD6A00             mov     eax, $006ADD78

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006ADC0A   E82DF9D5FF             call    0040D53C
006ADC0F   8BC3                   mov     eax, ebx
006ADC11   8B4DF8                 mov     ecx, [ebp-$08]
006ADC14   8B55FC                 mov     edx, [ebp-$04]

* Reference to: System.@LStrCat3;
|
006ADC17   E88C7BD5FF             call    004057A8
006ADC1C   33C0                   xor     eax, eax
006ADC1E   5A                     pop     edx
006ADC1F   59                     pop     ecx
006ADC20   59                     pop     ecx
006ADC21   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[‹å]Ã'
|
006ADC24   683EDC6A00             push    $006ADC3E
006ADC29   8D45F8                 lea     eax, [ebp-$08]
006ADC2C   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006ADC31   E88A78D5FF             call    004054C0
006ADC36   C3                     ret


* Reference to: System.@HandleFinally;
|
006ADC37   E9FC70D5FF             jmp     00404D38
006ADC3C   EBEB                   jmp     006ADC29

****** END
|
006ADC3E   5B                     pop     ebx
006ADC3F   8BE5                   mov     esp, ebp
006ADC41   5D                     pop     ebp
006ADC42   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ADD7D(Sender : TObject);
begin
(*
006ADD7D   8BEC                   mov     ebp, esp
006ADD7F   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADD84   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006ADD86   BAC8DD6A00             mov     edx, $006ADDC8

* Reference to: System.@LStrCmp;
|
006ADD8B   E8187BD5FF             call    004058A8
006ADD90   742A                   jz      006ADDBC
006ADD92   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADD97   8B00                   mov     eax, [eax]

* Possible String Reference to: 'nenhuma'
|
006ADD99   BAD8DD6A00             mov     edx, $006ADDD8

* Reference to: System.@LStrCmp;
|
006ADD9E   E8057BD5FF             call    004058A8
006ADDA3   7417                   jz      006ADDBC
006ADDA5   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADDAA   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006ADDAC   BAE8DD6A00             mov     edx, $006ADDE8

* Reference to: System.@LStrCmp;
|
006ADDB1   E8F27AD5FF             call    004058A8
006ADDB6   7404                   jz      006ADDBC
006ADDB8   33C0                   xor     eax, eax
006ADDBA   5D                     pop     ebp
006ADDBB   C3                     ret

006ADDBC   B001                   mov     al, $01
006ADDBE   5D                     pop     ebp
006ADDBF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006ADDF1(Sender : TObject);
begin
(*
006ADDF1   8BEC                   mov     ebp, esp
006ADDF3   B909000000             mov     ecx, $00000009
006ADDF8   6A00                   push    $00
006ADDFA   6A00                   push    $00
006ADDFC   49                     dec     ecx
006ADDFD   75F9                   jnz     006ADDF8
006ADDFF   53                     push    ebx
006ADE00   56                     push    esi
006ADE01   57                     push    edi
006ADE02   33C0                   xor     eax, eax
006ADE04   55                     push    ebp
006ADE05   68EAE16A00             push    $006AE1EA

***** TRY
|
006ADE0A   64FF30                 push    dword ptr fs:[eax]
006ADE0D   648920                 mov     fs:[eax], esp
006ADE10   33C0                   xor     eax, eax
006ADE12   55                     push    ebp
006ADE13   68C8E16A00             push    $006AE1C8

***** TRY
|
006ADE18   64FF30                 push    dword ptr fs:[eax]
006ADE1B   648920                 mov     fs:[eax], esp
006ADE1E   33C0                   xor     eax, eax
006ADE20   55                     push    ebp
006ADE21   687FE16A00             push    $006AE17F

***** TRY
|
006ADE26   64FF30                 push    dword ptr fs:[eax]
006ADE29   648920                 mov     fs:[eax], esp
006ADE2C   A12CB57D00             mov     eax, dword ptr [$007DB52C]
006ADE31   8B00                   mov     eax, [eax]

* Possible String Reference to: 'ecf'
|
006ADE33   BA00E26A00             mov     edx, $006AE200

* Reference to: System.@LStrCmp;
|
006ADE38   E86B7AD5FF             call    004058A8
006ADE3D   740E                   jz      006ADE4D
006ADE3F   A12CB57D00             mov     eax, dword ptr [$007DB52C]
006ADE44   833800                 cmp     dword ptr [eax], +$00
006ADE47   0F852E020000           jnz     006AE07B
006ADE4D   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADE52   8B00                   mov     eax, [eax]

* Possible String Reference to: 'sweda'
|
006ADE54   BA0CE26A00             mov     edx, $006AE20C

* Reference to: System.@LStrCmp;
|
006ADE59   E84A7AD5FF             call    004058A8
006ADE5E   0F8411030000           jz      006AE175
006ADE64   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADE69   8B00                   mov     eax, [eax]

* Possible String Reference to: 'zanthus'
|
006ADE6B   BA1CE26A00             mov     edx, $006AE21C

* Reference to: System.@LStrCmp;
|
006ADE70   E8337AD5FF             call    004058A8
006ADE75   0F84FA020000           jz      006AE175
006ADE7B   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADE80   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mecaf'
|
006ADE82   BA2CE26A00             mov     edx, $006AE22C

* Reference to: System.@LStrCmp;
|
006ADE87   E81C7AD5FF             call    004058A8
006ADE8C   0F84E3020000           jz      006AE175
006ADE92   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADE97   8B00                   mov     eax, [eax]

* Possible String Reference to: 'trends'
|
006ADE99   BA3CE26A00             mov     edx, $006AE23C

* Reference to: System.@LStrCmp;
|
006ADE9E   E8057AD5FF             call    004058A8
006ADEA3   0F84CC020000           jz      006AE175
006ADEA9   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADEAE   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006ADEB0   BA4CE26A00             mov     edx, $006AE24C

* Reference to: System.@LStrCmp;
|
006ADEB5   E8EE79D5FF             call    004058A8
006ADEBA   750D                   jnz     006ADEC9
006ADEBC   8D45F8                 lea     eax, [ebp-$08]

|
006ADEBF   E8E0FDFBFF             call    0066DCA4
006ADEC4   E9AC020000             jmp     006AE175
006ADEC9   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADECE   8B00                   mov     eax, [eax]

* Possible String Reference to: 'daruma'
|
006ADED0   BA60E26A00             mov     edx, $006AE260

* Reference to: System.@LStrCmp;
|
006ADED5   E8CE79D5FF             call    004058A8
006ADEDA   0F8495020000           jz      006AE175
006ADEE0   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006ADEE5   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006ADEE7   BA70E26A00             mov     edx, $006AE270

* Reference to: System.@LStrCmp;
|
006ADEEC   E8B779D5FF             call    004058A8
006ADEF1   7549                   jnz     006ADF3C
006ADEF3   8D55F4                 lea     edx, [ebp-$0C]
006ADEF6   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ADEFB   8B00                   mov     eax, [eax]
006ADEFD   8B8014020000           mov     eax, [eax+$0214]
006ADF03   8B08                   mov     ecx, [eax]
006ADF05   FF5160                 call    dword ptr [ecx+$60]
006ADF08   837DF400               cmp     dword ptr [ebp-$0C], +$00
006ADF0C   7424                   jz      006ADF32
006ADF0E   8D55F0                 lea     edx, [ebp-$10]
006ADF11   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ADF16   8B00                   mov     eax, [eax]
006ADF18   8B8014020000           mov     eax, [eax+$0214]
006ADF1E   8B08                   mov     ecx, [eax]
006ADF20   FF5160                 call    dword ptr [ecx+$60]
006ADF23   8B45F0                 mov     eax, [ebp-$10]

* Possible String Reference to: 'mp-20ci'
|
006ADF26   BA70E26A00             mov     edx, $006AE270

* Reference to: System.@LStrCmp;
|
006ADF2B   E87879D5FF             call    004058A8
006ADF30   750A                   jnz     006ADF3C

|
006ADF32   E821D4FFFF             call    006AB358
006ADF37   E939020000             jmp     006AE175

|
006ADF3C   E83BFEFFFF             call    006ADD7C
006ADF41   84C0                   test    al, al
006ADF43   0F842C020000           jz      006AE175
006ADF49   8D55EC                 lea     edx, [ebp-$14]
006ADF4C   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ADF51   8B00                   mov     eax, [eax]
006ADF53   8B8014020000           mov     eax, [eax+$0214]
006ADF59   8B08                   mov     ecx, [eax]
006ADF5B   FF5160                 call    dword ptr [ecx+$60]
006ADF5E   837DEC00               cmp     dword ptr [ebp-$14], +$00
006ADF62   7417                   jz      006ADF7B
006ADF64   8D55FC                 lea     edx, [ebp-$04]
006ADF67   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ADF6C   8B00                   mov     eax, [eax]
006ADF6E   8B8014020000           mov     eax, [eax+$0214]
006ADF74   8B08                   mov     ecx, [eax]
006ADF76   FF5160                 call    dword ptr [ecx+$60]
006ADF79   EB15                   jmp     006ADF90
006ADF7B   8D55FC                 lea     edx, [ebp-$04]
006ADF7E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006ADF83   8B00                   mov     eax, [eax]
006ADF85   8B80B8000000           mov     eax, [eax+$00B8]
006ADF8B   8B08                   mov     ecx, [eax]
006ADF8D   FF5160                 call    dword ptr [ecx+$60]
006ADF90   8D55E8                 lea     edx, [ebp-$18]
006ADF93   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006ADF96   E8C9C5D5FF             call    0040A564
006ADF9B   8B45E8                 mov     eax, [ebp-$18]

* Possible String Reference to: 'sweda'
|
006ADF9E   BA0CE26A00             mov     edx, $006AE20C

* Reference to: System.@LStrCmp;
|
006ADFA3   E80079D5FF             call    004058A8
006ADFA8   0F84C7010000           jz      006AE175
006ADFAE   8D55E4                 lea     edx, [ebp-$1C]
006ADFB1   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006ADFB4   E8ABC5D5FF             call    0040A564
006ADFB9   8B45E4                 mov     eax, [ebp-$1C]

* Possible String Reference to: 'bematech'
|
006ADFBC   BA4CE26A00             mov     edx, $006AE24C

* Reference to: System.@LStrCmp;
|
006ADFC1   E8E278D5FF             call    004058A8
006ADFC6   750D                   jnz     006ADFD5
006ADFC8   8D45E0                 lea     eax, [ebp-$20]

|
006ADFCB   E8D4FCFBFF             call    0066DCA4
006ADFD0   E9A0010000             jmp     006AE175
006ADFD5   8D55DC                 lea     edx, [ebp-$24]
006ADFD8   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006ADFDB   E884C5D5FF             call    0040A564
006ADFE0   8B45DC                 mov     eax, [ebp-$24]

* Possible String Reference to: 'daruma'
|
006ADFE3   BA60E26A00             mov     edx, $006AE260

* Reference to: System.@LStrCmp;
|
006ADFE8   E8BB78D5FF             call    004058A8
006ADFED   0F8482010000           jz      006AE175
006ADFF3   8D55D8                 lea     edx, [ebp-$28]
006ADFF6   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006ADFF9   E866C5D5FF             call    0040A564
006ADFFE   8B45D8                 mov     eax, [ebp-$28]

* Possible String Reference to: 'trends'
|
006AE001   BA3CE26A00             mov     edx, $006AE23C

* Reference to: System.@LStrCmp;
|
006AE006   E89D78D5FF             call    004058A8
006AE00B   0F8464010000           jz      006AE175
006AE011   8D55D4                 lea     edx, [ebp-$2C]
006AE014   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006AE017   E848C5D5FF             call    0040A564
006AE01C   8B45D4                 mov     eax, [ebp-$2C]

* Possible String Reference to: 'mecaf'
|
006AE01F   BA2CE26A00             mov     edx, $006AE22C

* Reference to: System.@LStrCmp;
|
006AE024   E87F78D5FF             call    004058A8
006AE029   0F8446010000           jz      006AE175
006AE02F   8D55D0                 lea     edx, [ebp-$30]
006AE032   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006AE035   E82AC5D5FF             call    0040A564
006AE03A   8B45D0                 mov     eax, [ebp-$30]

* Possible String Reference to: 'mp-20ci'
|
006AE03D   BA70E26A00             mov     edx, $006AE270

* Reference to: System.@LStrCmp;
|
006AE042   E86178D5FF             call    004058A8
006AE047   0F8528010000           jnz     006AE175
006AE04D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AE052   8B00                   mov     eax, [eax]
006AE054   8B8048020000           mov     eax, [eax+$0248]
006AE05A   8B10                   mov     edx, [eax]
006AE05C   FF5258                 call    dword ptr [edx+$58]

|
006AE05F   E868B0FFFF             call    006A90CC
006AE064   84C0                   test    al, al
006AE066   0F8409010000           jz      006AE175

|
006AE06C   E8E7D2FFFF             call    006AB358

|
006AE071   E81AB3FFFF             call    006A9390
006AE076   E9FA000000             jmp     006AE175
006AE07B   A12CB57D00             mov     eax, dword ptr [$007DB52C]
006AE080   8B00                   mov     eax, [eax]

* Possible String Reference to: 'serial'
|
006AE082   BA80E26A00             mov     edx, $006AE280

* Reference to: System.@LStrCmp;
|
006AE087   E81C78D5FF             call    004058A8
006AE08C   0F85A1000000           jnz     006AE133
006AE092   A18CB37D00             mov     eax, dword ptr [$007DB38C]
006AE097   803800                 cmp     byte ptr [eax], $00
006AE09A   754F                   jnz     006AE0EB
006AE09C   8D55CC                 lea     edx, [ebp-$34]
006AE09F   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AE0A4   8B00                   mov     eax, [eax]
006AE0A6   8B8010020000           mov     eax, [eax+$0210]
006AE0AC   8B08                   mov     ecx, [eax]
006AE0AE   FF5160                 call    dword ptr [ecx+$60]
006AE0B1   8B45CC                 mov     eax, [ebp-$34]

* Possible String Reference to: 'MENNO'
|
006AE0B4   BA90E26A00             mov     edx, $006AE290

* Reference to: System.@LStrCmp;
|
006AE0B9   E8EA77D5FF             call    004058A8
006AE0BE   0F84B1000000           jz      006AE175
006AE0C4   8D55C8                 lea     edx, [ebp-$38]
006AE0C7   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AE0CC   8B00                   mov     eax, [eax]
006AE0CE   8B8010020000           mov     eax, [eax+$0210]
006AE0D4   8B08                   mov     ecx, [eax]
006AE0D6   FF5160                 call    dword ptr [ecx+$60]
006AE0D9   8B45C8                 mov     eax, [ebp-$38]

* Possible String Reference to: 'GERBO'
|
006AE0DC   BAA0E26A00             mov     edx, $006AE2A0

* Reference to: System.@LStrCmp;
|
006AE0E1   E8C277D5FF             call    004058A8
006AE0E6   E98A000000             jmp     006AE175
006AE0EB   8D55C4                 lea     edx, [ebp-$3C]
006AE0EE   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AE0F3   8B00                   mov     eax, [eax]
006AE0F5   8B8010020000           mov     eax, [eax+$0210]
006AE0FB   8B08                   mov     ecx, [eax]
006AE0FD   FF5160                 call    dword ptr [ecx+$60]
006AE100   8B45C4                 mov     eax, [ebp-$3C]

* Possible String Reference to: 'MENNO'
|
006AE103   BA90E26A00             mov     edx, $006AE290

* Reference to: System.@LStrCmp;
|
006AE108   E89B77D5FF             call    004058A8
006AE10D   7466                   jz      006AE175
006AE10F   8D55C0                 lea     edx, [ebp-$40]
006AE112   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AE117   8B00                   mov     eax, [eax]
006AE119   8B8010020000           mov     eax, [eax+$0210]
006AE11F   8B08                   mov     ecx, [eax]
006AE121   FF5160                 call    dword ptr [ecx+$60]
006AE124   8B45C0                 mov     eax, [ebp-$40]

* Possible String Reference to: 'GERBO'
|
006AE127   BAA0E26A00             mov     edx, $006AE2A0

* Reference to: System.@LStrCmp;
|
006AE12C   E87777D5FF             call    004058A8
006AE131   EB42                   jmp     006AE175
006AE133   A12CB57D00             mov     eax, dword ptr [$007DB52C]
006AE138   8B00                   mov     eax, [eax]

* Possible String Reference to: 'lote'
|
006AE13A   BAB0E26A00             mov     edx, $006AE2B0

* Reference to: System.@LStrCmp;
|
006AE13F   E86477D5FF             call    004058A8
006AE144   752F                   jnz     006AE175
006AE146   A1FCA77D00             mov     eax, dword ptr [$007DA7FC]
006AE14B   FF30                   push    dword ptr [eax]
006AE14D   68C0E26A00             push    $006AE2C0
006AE152   A15CA77D00             mov     eax, dword ptr [$007DA75C]
006AE157   FF30                   push    dword ptr [eax]

* Possible String Reference to: '.Bat'
|
006AE159   68CCE26A00             push    $006AE2CC
006AE15E   8D45BC                 lea     eax, [ebp-$44]
006AE161   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
006AE166   E8B176D5FF             call    0040581C
006AE16B   8B45BC                 mov     eax, [ebp-$44]

* Reference to: SysUtils.FileExists(AnsiString):Boolean;
|
006AE16E   E85DD2D5FF             call    0040B3D0
006AE173   84C0                   test    al, al
006AE175   33C0                   xor     eax, eax
006AE177   5A                     pop     edx
006AE178   59                     pop     ecx
006AE179   59                     pop     ecx
006AE17A   648910                 mov     fs:[eax], edx
006AE17D   EB3B                   jmp     006AE1BA

* Reference to: System.@HandleOnException;
|
006AE17F   E92C6AD5FF             jmp     00404BB0
006AE184   0100                   add     [eax], eax
006AE186   0000                   add     [eax], al
006AE188   40                     inc     eax
006AE189   95                     xchg    eax, ebp
006AE18A   40                     inc     eax
006AE18B   0090E16A0089           add     [eax+$89006AE1], dl
006AE191   C3                     ret

006AE192   6A00                   push    $00
006AE194   8B4B04                 mov     ecx, [ebx+$04]
006AE197   8D45B8                 lea     eax, [ebp-$48]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
006AE19A   BADCE26A00             mov     edx, $006AE2DC

* Reference to: System.@LStrCat3;
|
006AE19F   E80476D5FF             call    004057A8
006AE1A4   8B45B8                 mov     eax, [ebp-$48]
006AE1A7   668B0DFCE26A00         mov     cx, word ptr [$006AE2FC]
006AE1AE   B201                   mov     dl, $01

|
006AE1B0   E87759D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006AE1B5   E8F66CD5FF             call    00404EB0

****** END
|
006AE1BA   33C0                   xor     eax, eax
006AE1BC   5A                     pop     edx
006AE1BD   59                     pop     ecx
006AE1BE   59                     pop     ecx
006AE1BF   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AE1C2   68CFE16A00             push    $006AE1CF
006AE1C7   C3                     ret


* Reference to: System.@HandleFinally;
|
006AE1C8   E96B6BD5FF             jmp     00404D38
006AE1CD   EBF8                   jmp     006AE1C7

****** END
|
006AE1CF   33C0                   xor     eax, eax
006AE1D1   5A                     pop     edx
006AE1D2   59                     pop     ecx
006AE1D3   59                     pop     ecx
006AE1D4   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AE1D7   68F1E16A00             push    $006AE1F1
006AE1DC   8D45B8                 lea     eax, [ebp-$48]
006AE1DF   BA12000000             mov     edx, $00000012

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AE1E4   E8D772D5FF             call    004054C0
006AE1E9   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AE1EA(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006AE1EA   E9496BD5FF             jmp     00404D38

|
006AE1EF   EBEB                   jmp     006AE1DC
006AE1F1   5F                     pop     edi
006AE1F2   5E                     pop     esi
006AE1F3   5B                     pop     ebx
006AE1F4   8BE5                   mov     esp, ebp
006AE1F6   5D                     pop     ebp
006AE1F7   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AE301(Sender : TObject);
begin
(*
006AE301   8BEC                   mov     ebp, esp
006AE303   6A00                   push    $00
006AE305   53                     push    ebx
006AE306   56                     push    esi
006AE307   57                     push    edi
006AE308   8BD8                   mov     ebx, eax
006AE30A   33C0                   xor     eax, eax
006AE30C   55                     push    ebp

* Possible String Reference to: 'é÷hÕÿëð_^[Y]Ã'
|
006AE30D   683CE46A00             push    $006AE43C

***** TRY
|
006AE312   64FF30                 push    dword ptr fs:[eax]
006AE315   648920                 mov     fs:[eax], esp
006AE318   8BC3                   mov     eax, ebx

* Possible String Reference to: 'COM1'
|
006AE31A   BA54E46A00             mov     edx, $006AE454

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AE31F   E8CC71D5FF             call    004054F0
006AE324   33D2                   xor     edx, edx
006AE326   55                     push    ebp
006AE327   681FE46A00             push    $006AE41F

***** TRY
|
006AE32C   64FF32                 push    dword ptr fs:[edx]
006AE32F   648922                 mov     fs:[edx], esp
006AE332   33D2                   xor     edx, edx
006AE334   55                     push    ebp
006AE335   68D6E36A00             push    $006AE3D6

***** TRY
|
006AE33A   64FF32                 push    dword ptr fs:[edx]
006AE33D   648922                 mov     fs:[edx], esp
006AE340   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AE345   8B00                   mov     eax, [eax]
006AE347   8B8048020000           mov     eax, [eax+$0248]
006AE34D   8B10                   mov     edx, [eax]
006AE34F   FF5258                 call    dword ptr [edx+$58]
006AE352   83F806                 cmp     eax, +$06
006AE355   7775                   jnbe    006AE3CC
006AE357   FF24855EE36A00         jmp     dword ptr [$6AE35E+eax*4]
006AE35E   CC                     int     3
006AE35F   E36A                   jcxz    +$6A
006AE361   007AE3                 add     [edx-$1D], bh
006AE364   6A00                   push    $00
006AE366   88E3                   mov     bl, ah
006AE368   6A00                   push    $00
006AE36A   96                     xchg    eax, esi
006AE36B   E36A                   jcxz    +$6A
006AE36D   00A4E36A00B2E3         add     [ebx+$E3B2006A], ah
006AE374   6A00                   push    $00
006AE376   C0E36A                 shl     bl, $6A
006AE379   008BC3BA54E4           add     [ebx+$E454BAC3], cl
006AE37F   6A00                   push    $00

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AE381   E86A71D5FF             call    004054F0
006AE386   EB44                   jmp     006AE3CC
006AE388   8BC3                   mov     eax, ebx

* Possible String Reference to: 'COM2'
|
006AE38A   BA64E46A00             mov     edx, $006AE464

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AE38F   E85C71D5FF             call    004054F0
006AE394   EB36                   jmp     006AE3CC
006AE396   8BC3                   mov     eax, ebx

* Possible String Reference to: 'COM3'
|
006AE398   BA74E46A00             mov     edx, $006AE474

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AE39D   E84E71D5FF             call    004054F0
006AE3A2   EB28                   jmp     006AE3CC
006AE3A4   8BC3                   mov     eax, ebx

* Possible String Reference to: 'COM4'
|
006AE3A6   BA84E46A00             mov     edx, $006AE484

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AE3AB   E84071D5FF             call    004054F0
006AE3B0   EB1A                   jmp     006AE3CC
006AE3B2   8BC3                   mov     eax, ebx

* Possible String Reference to: 'COM5'
|
006AE3B4   BA94E46A00             mov     edx, $006AE494

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AE3B9   E83271D5FF             call    004054F0
006AE3BE   EB0C                   jmp     006AE3CC
006AE3C0   8BC3                   mov     eax, ebx

* Possible String Reference to: 'LPT1'
|
006AE3C2   BAA4E46A00             mov     edx, $006AE4A4

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AE3C7   E82471D5FF             call    004054F0
006AE3CC   33C0                   xor     eax, eax
006AE3CE   5A                     pop     edx
006AE3CF   59                     pop     ecx
006AE3D0   59                     pop     ecx
006AE3D1   648910                 mov     fs:[eax], edx
006AE3D4   EB3B                   jmp     006AE411

* Reference to: System.@HandleOnException;
|
006AE3D6   E9D567D5FF             jmp     00404BB0
006AE3DB   0100                   add     [eax], eax
006AE3DD   0000                   add     [eax], al
006AE3DF   40                     inc     eax
006AE3E0   95                     xchg    eax, ebp
006AE3E1   40                     inc     eax
006AE3E2   00E7                   add     bh, ah
006AE3E4   E36A                   jcxz    +$6A
006AE3E6   0089C36A008B           add     [ecx+$8B006AC3], cl
006AE3EC   4B                     dec     ebx
006AE3ED   048D                   add     al, -$73
006AE3EF   45                     inc     ebp
006AE3F0   FC                     cld

* Possible String Reference to: 'Erro ao executar a rotina!'
|
006AE3F1   BAB4E46A00             mov     edx, $006AE4B4

* Reference to: System.@LStrCat3;
|
006AE3F6   E8AD73D5FF             call    004057A8
006AE3FB   8B45FC                 mov     eax, [ebp-$04]
006AE3FE   668B0DD4E46A00         mov     cx, word ptr [$006AE4D4]
006AE405   B201                   mov     dl, $01

|
006AE407   E82057D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006AE40C   E89F6AD5FF             call    00404EB0

****** END
|
006AE411   33C0                   xor     eax, eax
006AE413   5A                     pop     edx
006AE414   59                     pop     ecx
006AE415   59                     pop     ecx
006AE416   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AE419   6826E46A00             push    $006AE426
006AE41E   C3                     ret


* Reference to: System.@HandleFinally;
|
006AE41F   E91469D5FF             jmp     00404D38
006AE424   EBF8                   jmp     006AE41E

****** END
|
006AE426   33C0                   xor     eax, eax
006AE428   5A                     pop     edx
006AE429   59                     pop     ecx
006AE42A   59                     pop     ecx
006AE42B   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[Y]Ã'
|
006AE42E   6843E46A00             push    $006AE443
006AE433   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006AE436   E86170D5FF             call    0040549C
006AE43B   C3                     ret


* Reference to: System.@HandleFinally;
|
006AE43C   E9F768D5FF             jmp     00404D38
006AE441   EBF0                   jmp     006AE433

****** END
|
006AE443   5F                     pop     edi
006AE444   5E                     pop     esi
006AE445   5B                     pop     ebx
006AE446   59                     pop     ecx
006AE447   5D                     pop     ebp
006AE448   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AE41F(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006AE41F   E91469D5FF             jmp     00404D38

|
006AE424   EBF8                   jmp     006AE41E
006AE426   33C0                   xor     eax, eax
006AE428   5A                     pop     edx
006AE429   59                     pop     ecx
006AE42A   59                     pop     ecx
006AE42B   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[Y]Ã'
|
006AE42E   6843E46A00             push    $006AE443
006AE433   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006AE436   E86170D5FF             call    0040549C
006AE43B   C3                     ret


* Reference to: System.@HandleFinally;
|
006AE43C   E9F768D5FF             jmp     00404D38
006AE441   EBF0                   jmp     006AE433

****** END
|
006AE443   5F                     pop     edi
006AE444   5E                     pop     esi
006AE445   5B                     pop     ebx
006AE446   59                     pop     ecx
006AE447   5D                     pop     ebp
006AE448   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AE4D9(Sender : TObject);
begin
(*
006AE4D9   8BEC                   mov     ebp, esp
006AE4DB   83C4F4                 add     esp, -$0C
006AE4DE   53                     push    ebx
006AE4DF   56                     push    esi
006AE4E0   33C9                   xor     ecx, ecx
006AE4E2   894DF4                 mov     [ebp-$0C], ecx
006AE4E5   8955F8                 mov     [ebp-$08], edx
006AE4E8   8945FC                 mov     [ebp-$04], eax
006AE4EB   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AE4EE   E85974D5FF             call    0040594C
006AE4F3   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AE4F6   E85174D5FF             call    0040594C
006AE4FB   33C0                   xor     eax, eax
006AE4FD   55                     push    ebp

* Possible String Reference to: 'éïfÕÿëë‹Ã^[‹å]Ã'
|
006AE4FE   6844E66A00             push    $006AE644

***** TRY
|
006AE503   64FF30                 push    dword ptr fs:[eax]
006AE506   648920                 mov     fs:[eax], esp
006AE509   BE01000000             mov     esi, $00000001
006AE50E   8D55F4                 lea     edx, [ebp-$0C]
006AE511   8B45F8                 mov     eax, [ebp-$08]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006AE514   E84BC0D5FF             call    0040A564
006AE519   8B55F4                 mov     edx, [ebp-$0C]
006AE51C   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AE51F   E81070D5FF             call    00405534
006AE524   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'com1'
|
006AE527   BA5CE66A00             mov     edx, $006AE65C

* Reference to: System.@LStrCmp;
|
006AE52C   E87773D5FF             call    004058A8
006AE531   7507                   jnz     006AE53A
006AE533   BE01000000             mov     esi, $00000001
006AE538   EB6C                   jmp     006AE5A6
006AE53A   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'com2'
|
006AE53D   BA6CE66A00             mov     edx, $006AE66C

* Reference to: System.@LStrCmp;
|
006AE542   E86173D5FF             call    004058A8
006AE547   7507                   jnz     006AE550
006AE549   BE02000000             mov     esi, $00000002
006AE54E   EB56                   jmp     006AE5A6
006AE550   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'com3'
|
006AE553   BA7CE66A00             mov     edx, $006AE67C

* Reference to: System.@LStrCmp;
|
006AE558   E84B73D5FF             call    004058A8
006AE55D   7507                   jnz     006AE566
006AE55F   BE03000000             mov     esi, $00000003
006AE564   EB40                   jmp     006AE5A6
006AE566   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'com4'
|
006AE569   BA8CE66A00             mov     edx, $006AE68C

* Reference to: System.@LStrCmp;
|
006AE56E   E83573D5FF             call    004058A8
006AE573   7507                   jnz     006AE57C
006AE575   BE04000000             mov     esi, $00000004
006AE57A   EB2A                   jmp     006AE5A6
006AE57C   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'com5'
|
006AE57F   BA9CE66A00             mov     edx, $006AE69C

* Reference to: System.@LStrCmp;
|
006AE584   E81F73D5FF             call    004058A8
006AE589   7507                   jnz     006AE592
006AE58B   BE05000000             mov     esi, $00000005
006AE590   EB14                   jmp     006AE5A6
006AE592   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'lpt1'
|
006AE595   BAACE66A00             mov     edx, $006AE6AC

* Reference to: System.@LStrCmp;
|
006AE59A   E80973D5FF             call    004058A8
006AE59F   7505                   jnz     006AE5A6
006AE5A1   BE06000000             mov     esi, $00000006
006AE5A6   33DB                   xor     ebx, ebx
006AE5A8   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'sweda'
|
006AE5AB   BABCE66A00             mov     edx, $006AE6BC

* Reference to: System.@LStrCmp;
|
006AE5B0   E8F372D5FF             call    004058A8
006AE5B5   7472                   jz      006AE629
006AE5B7   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'zanthus'
|
006AE5BA   BACCE66A00             mov     edx, $006AE6CC

* Reference to: System.@LStrCmp;
|
006AE5BF   E8E472D5FF             call    004058A8
006AE5C4   7463                   jz      006AE629
006AE5C6   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'mecaf'
|
006AE5C9   BADCE66A00             mov     edx, $006AE6DC

* Reference to: System.@LStrCmp;
|
006AE5CE   E8D572D5FF             call    004058A8
006AE5D3   7454                   jz      006AE629
006AE5D5   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'trends'
|
006AE5D8   BAECE66A00             mov     edx, $006AE6EC

* Reference to: System.@LStrCmp;
|
006AE5DD   E8C672D5FF             call    004058A8
006AE5E2   7445                   jz      006AE629
006AE5E4   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'bematech'
|
006AE5E7   BAFCE66A00             mov     edx, $006AE6FC

* Reference to: System.@LStrCmp;
|
006AE5EC   E8B772D5FF             call    004058A8
006AE5F1   750B                   jnz     006AE5FE
006AE5F3   B001                   mov     al, $01

|
006AE5F5   E80AD6FBFF             call    0066BC04
006AE5FA   8BD8                   mov     ebx, eax
006AE5FC   EB2B                   jmp     006AE629
006AE5FE   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'daruma'
|
006AE601   BA10E76A00             mov     edx, $006AE710

* Reference to: System.@LStrCmp;
|
006AE606   E89D72D5FF             call    004058A8
006AE60B   741C                   jz      006AE629
006AE60D   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'mp-20ci'
|
006AE610   BA20E76A00             mov     edx, $006AE720

* Reference to: System.@LStrCmp;
|
006AE615   E88E72D5FF             call    004058A8
006AE61A   750B                   jnz     006AE627
006AE61C   8BC6                   mov     eax, esi

|
006AE61E   E8A9AAFFFF             call    006A90CC
006AE623   8BD8                   mov     ebx, eax
006AE625   EB02                   jmp     006AE629
006AE627   B301                   mov     bl, $01
006AE629   33C0                   xor     eax, eax
006AE62B   5A                     pop     edx
006AE62C   59                     pop     ecx
006AE62D   59                     pop     ecx
006AE62E   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '‹Ã^[‹å]Ã'
|
006AE631   684BE66A00             push    $006AE64B
006AE636   8D45F4                 lea     eax, [ebp-$0C]
006AE639   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AE63E   E87D6ED5FF             call    004054C0
006AE643   C3                     ret


* Reference to: System.@HandleFinally;
|
006AE644   E9EF66D5FF             jmp     00404D38
006AE649   EBEB                   jmp     006AE636

****** END
|
006AE64B   8BC3                   mov     eax, ebx
006AE64D   5E                     pop     esi
006AE64E   5B                     pop     ebx
006AE64F   8BE5                   mov     esp, ebp
006AE651   5D                     pop     ebp
006AE652   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AE729(Sender : TObject);
begin
(*
006AE729   8BEC                   mov     ebp, esp
006AE72B   53                     push    ebx
006AE72C   33DB                   xor     ebx, ebx
006AE72E   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AE733   8B00                   mov     eax, [eax]

* Possible String Reference to: 'sweda'
|
006AE735   BAD8E76A00             mov     edx, $006AE7D8

* Reference to: System.@LStrCmp;
|
006AE73A   E86971D5FF             call    004058A8
006AE73F   0F8486000000           jz      006AE7CB
006AE745   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AE74A   8B00                   mov     eax, [eax]

* Possible String Reference to: 'zanthus'
|
006AE74C   BAE8E76A00             mov     edx, $006AE7E8

* Reference to: System.@LStrCmp;
|
006AE751   E85271D5FF             call    004058A8
006AE756   7473                   jz      006AE7CB
006AE758   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AE75D   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mecaf'
|
006AE75F   BAF8E76A00             mov     edx, $006AE7F8

* Reference to: System.@LStrCmp;
|
006AE764   E83F71D5FF             call    004058A8
006AE769   7460                   jz      006AE7CB
006AE76B   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AE770   8B00                   mov     eax, [eax]

* Possible String Reference to: 'trends'
|
006AE772   BA08E86A00             mov     edx, $006AE808

* Reference to: System.@LStrCmp;
|
006AE777   E82C71D5FF             call    004058A8
006AE77C   744D                   jz      006AE7CB
006AE77E   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AE783   8B00                   mov     eax, [eax]

* Possible String Reference to: 'bematech'
|
006AE785   BA18E86A00             mov     edx, $006AE818

* Reference to: System.@LStrCmp;
|
006AE78A   E81971D5FF             call    004058A8
006AE78F   7509                   jnz     006AE79A

|
006AE791   E84ED4FBFF             call    0066BBE4
006AE796   8BD8                   mov     ebx, eax
006AE798   EB31                   jmp     006AE7CB
006AE79A   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AE79F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'daruma'
|
006AE7A1   BA2CE86A00             mov     edx, $006AE82C

* Reference to: System.@LStrCmp;
|
006AE7A6   E8FD70D5FF             call    004058A8
006AE7AB   741E                   jz      006AE7CB
006AE7AD   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AE7B2   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006AE7B4   BA3CE86A00             mov     edx, $006AE83C

* Reference to: System.@LStrCmp;
|
006AE7B9   E8EA70D5FF             call    004058A8
006AE7BE   7509                   jnz     006AE7C9

|
006AE7C0   E8CBABFFFF             call    006A9390
006AE7C5   8BD8                   mov     ebx, eax
006AE7C7   EB02                   jmp     006AE7CB
006AE7C9   B301                   mov     bl, $01
006AE7CB   8BC3                   mov     eax, ebx
006AE7CD   5B                     pop     ebx
006AE7CE   5D                     pop     ebp
006AE7CF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AE845(Sender : TObject);
begin
(*
006AE845   8BEC                   mov     ebp, esp
006AE847   33C0                   xor     eax, eax
006AE849   55                     push    ebp

* Possible String Reference to: 'éÊdÕÿëø]Ã‹Àƒ-hí}'
|
006AE84A   6869E86A00             push    $006AE869

***** TRY
|
006AE84F   64FF30                 push    dword ptr fs:[eax]
006AE852   648920                 mov     fs:[eax], esp
006AE855   FF0568ED7D00           inc     dword ptr [$007DED68]
006AE85B   33C0                   xor     eax, eax
006AE85D   5A                     pop     edx
006AE85E   59                     pop     ecx
006AE85F   59                     pop     ecx
006AE860   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-hí}'
|
006AE863   6870E86A00             push    $006AE870
006AE868   C3                     ret


* Reference to: System.@HandleFinally;
|
006AE869   E9CA64D5FF             jmp     00404D38
006AE86E   EBF8                   jmp     006AE868

****** END
|
006AE870   5D                     pop     ebp
006AE871   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AE874(Sender : TObject);
begin
(*
006AE874   832D68ED7D0001         sub     dword ptr [$007DED68], +$01
006AE87B   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AE87C(Sender : TObject);
begin
(*
006AE87C   80E86A                 sub     al, $6A
006AE87F   0011                   add     [ecx], dl
006AE881   022E                   add     ch, byte ptr [esi]
006AE883   310C00                 xor     [eax+eax], ecx
006AE886   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AE89D(Sender : TObject);
begin
(*
006AE89D   8BEC                   mov     ebp, esp
006AE89F   51                     push    ecx
006AE8A0   C745FC13000000         mov     dword ptr [ebp-$04], $00000013
006AE8A7   6A00                   push    $00
006AE8A9   8D45FC                 lea     eax, [ebp-$04]
006AE8AC   50                     push    eax
006AE8AD   6A01                   push    $01
006AE8AF   6A08                   push    $08

* Reference to: Clipbrd.Clipboard:TClipboard;
|
006AE8B1   E8EEF2D8FF             call    0043DBA4

* Reference to: Printers.TPrinter.GetHandle(TPrinter):HDC;
|
006AE8B6   E899EBD8FF             call    0043D454
006AE8BB   50                     push    eax

* Reference to: gdi32.Escape()
|
006AE8BC   E8CB9BD5FF             call    0040848C
006AE8C1   85C0                   test    eax, eax
006AE8C3   7E05                   jle     006AE8CA
006AE8C5   B001                   mov     al, $01
006AE8C7   59                     pop     ecx
006AE8C8   5D                     pop     ebp
006AE8C9   C3                     ret

006AE8CA   33C0                   xor     eax, eax
006AE8CC   59                     pop     ecx
006AE8CD   5D                     pop     ebp
006AE8CE   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AE8D0(Sender : TObject);
begin
(*
006AE8D0   55                     push    ebp
006AE8D1   8BEC                   mov     ebp, esp
006AE8D3   33C9                   xor     ecx, ecx
006AE8D5   51                     push    ecx
006AE8D6   51                     push    ecx
006AE8D7   51                     push    ecx
006AE8D8   51                     push    ecx
006AE8D9   51                     push    ecx
006AE8DA   51                     push    ecx
006AE8DB   51                     push    ecx
006AE8DC   51                     push    ecx
006AE8DD   53                     push    ebx
006AE8DE   56                     push    esi
006AE8DF   57                     push    edi
006AE8E0   8945FC                 mov     [ebp-$04], eax
006AE8E3   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AE8E6   E86170D5FF             call    0040594C
006AE8EB   33C0                   xor     eax, eax
006AE8ED   55                     push    ebp
006AE8EE   683BEA6A00             push    $006AEA3B

***** TRY
|
006AE8F3   64FF30                 push    dword ptr fs:[eax]
006AE8F6   648920                 mov     fs:[eax], esp
006AE8F9   C645FB00               mov     byte ptr [ebp-$05], $00
006AE8FD   33C0                   xor     eax, eax
006AE8FF   55                     push    ebp
006AE900   6811EA6A00             push    $006AEA11

***** TRY
|
006AE905   64FF30                 push    dword ptr fs:[eax]
006AE908   648920                 mov     fs:[eax], esp
006AE90B   33C0                   xor     eax, eax
006AE90D   55                     push    ebp
006AE90E   68C8E96A00             push    $006AE9C8

***** TRY
|
006AE913   64FF30                 push    dword ptr fs:[eax]
006AE916   648920                 mov     fs:[eax], esp
006AE919   837DFC00               cmp     dword ptr [ebp-$04], +$00
006AE91D   0F8497000000           jz      006AE9BA

* Reference to: Clipbrd.Clipboard:TClipboard;
|
006AE923   E87CF2D8FF             call    0043DBA4

* Reference to: Printers.TPrinter.GetPrinters(TPrinter):TStrings;
|
006AE928   E8EFEDD8FF             call    0043D71C
006AE92D   8B10                   mov     edx, [eax]

* Reference to method TfrmGerenciador.ReadState(TReader)
|
006AE92F   FF5214                 call    dword ptr [edx+$14]
006AE932   8BF0                   mov     esi, eax
006AE934   4E                     dec     esi
006AE935   85F6                   test    esi, esi
006AE937   0F8C81000000           jl      006AE9BE
006AE93D   46                     inc     esi
006AE93E   33DB                   xor     ebx, ebx
006AE940   8D55F4                 lea     edx, [ebp-$0C]
006AE943   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
006AE946   E851BDD5FF             call    0040A69C
006AE94B   8B45F4                 mov     eax, [ebp-$0C]
006AE94E   50                     push    eax

* Reference to: Clipbrd.Clipboard:TClipboard;
|
006AE94F   E850F2D8FF             call    0043DBA4

* Reference to: Printers.TPrinter.GetPrinters(TPrinter):TStrings;
|
006AE954   E8C3EDD8FF             call    0043D71C
006AE959   8D4DEC                 lea     ecx, [ebp-$14]
006AE95C   8BD3                   mov     edx, ebx
006AE95E   8B38                   mov     edi, [eax]
006AE960   FF570C                 call    dword ptr [edi+$0C]
006AE963   8B45EC                 mov     eax, [ebp-$14]
006AE966   8D55F0                 lea     edx, [ebp-$10]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
006AE969   E82EBDD5FF             call    0040A69C
006AE96E   8B55F0                 mov     edx, [ebp-$10]
006AE971   58                     pop     eax

* Reference to: System.@LStrCmp;
|
006AE972   E8316FD5FF             call    004058A8
006AE977   7435                   jz      006AE9AE

* Reference to: Clipbrd.Clipboard:TClipboard;
|
006AE979   E826F2D8FF             call    0043DBA4

* Reference to: Printers.TPrinter.GetPrinters(TPrinter):TStrings;
|
006AE97E   E899EDD8FF             call    0043D71C
006AE983   8D4DE8                 lea     ecx, [ebp-$18]
006AE986   8BD3                   mov     edx, ebx
006AE988   8B38                   mov     edi, [eax]
006AE98A   FF570C                 call    dword ptr [edi+$0C]
006AE98D   8B45E8                 mov     eax, [ebp-$18]
006AE990   50                     push    eax
006AE991   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: ' on '
|
006AE994   B954EA6A00             mov     ecx, $006AEA54
006AE999   8B55FC                 mov     edx, [ebp-$04]

* Reference to: System.@LStrCat3;
|
006AE99C   E8076ED5FF             call    004057A8
006AE9A1   8B45E4                 mov     eax, [ebp-$1C]
006AE9A4   5A                     pop     edx

* Reference to: System.@LStrPos;
|
006AE9A5   E8F670D5FF             call    00405AA0
006AE9AA   85C0                   test    eax, eax
006AE9AC   7E06                   jle     006AE9B4
006AE9AE   C645FB01               mov     byte ptr [ebp-$05], $01
006AE9B2   EB0A                   jmp     006AE9BE
006AE9B4   43                     inc     ebx
006AE9B5   4E                     dec     esi
006AE9B6   7588                   jnz     006AE940
006AE9B8   EB04                   jmp     006AE9BE
006AE9BA   C645FB01               mov     byte ptr [ebp-$05], $01
006AE9BE   33C0                   xor     eax, eax
006AE9C0   5A                     pop     edx
006AE9C1   59                     pop     ecx
006AE9C2   59                     pop     ecx
006AE9C3   648910                 mov     fs:[eax], edx
006AE9C6   EB3B                   jmp     006AEA03

* Reference to: System.@HandleOnException;
|
006AE9C8   E9E361D5FF             jmp     00404BB0
006AE9CD   0100                   add     [eax], eax
006AE9CF   0000                   add     [eax], al
006AE9D1   40                     inc     eax
006AE9D2   95                     xchg    eax, ebp
006AE9D3   40                     inc     eax
006AE9D4   00D9                   add     cl, bl
006AE9D6   E96A0089C3             jmp     C3F3EA45
006AE9DB   6A00                   push    $00
006AE9DD   8B4B04                 mov     ecx, [ebx+$04]
006AE9E0   8D45E0                 lea     eax, [ebp-$20]

* Possible String Reference to: 'Erro ao verificar se a impressora e
|                                xiste!'
|
006AE9E3   BA64EA6A00             mov     edx, $006AEA64

* Reference to: System.@LStrCat3;
|
006AE9E8   E8BB6DD5FF             call    004057A8
006AE9ED   8B45E0                 mov     eax, [ebp-$20]
006AE9F0   668B0D90EA6A00         mov     cx, word ptr [$006AEA90]
006AE9F7   B201                   mov     dl, $01

|
006AE9F9   E82E51D9FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006AE9FE   E8AD64D5FF             call    00404EB0

****** END
|
006AEA03   33C0                   xor     eax, eax
006AEA05   5A                     pop     edx
006AEA06   59                     pop     ecx
006AEA07   59                     pop     ecx
006AEA08   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AEA0B   6818EA6A00             push    $006AEA18
006AEA10   C3                     ret


* Reference to: System.@HandleFinally;
|
006AEA11   E92263D5FF             jmp     00404D38
006AEA16   EBF8                   jmp     006AEA10

****** END
|
006AEA18   33C0                   xor     eax, eax
006AEA1A   5A                     pop     edx
006AEA1B   59                     pop     ecx
006AEA1C   59                     pop     ecx
006AEA1D   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AEA20   6842EA6A00             push    $006AEA42
006AEA25   8D45E0                 lea     eax, [ebp-$20]
006AEA28   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AEA2D   E88E6AD5FF             call    004054C0
006AEA32   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006AEA35   E8626AD5FF             call    0040549C
006AEA3A   C3                     ret


* Reference to: System.@HandleFinally;
|
006AEA3B   E9F862D5FF             jmp     00404D38
006AEA40   EBE3                   jmp     006AEA25

****** END
|
006AEA42   8A45FB                 mov     al, byte ptr [ebp-$05]
006AEA45   5F                     pop     edi
006AEA46   5E                     pop     esi
006AEA47   5B                     pop     ebx
006AEA48   8BE5                   mov     esp, ebp
006AEA4A   5D                     pop     ebp
006AEA4B   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AEA3B(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006AEA3B   E9F862D5FF             jmp     00404D38

|
006AEA40   EBE3                   jmp     006AEA25
006AEA42   8A45FB                 mov     al, byte ptr [ebp-$05]
006AEA45   5F                     pop     edi
006AEA46   5E                     pop     esi
006AEA47   5B                     pop     ebx
006AEA48   8BE5                   mov     esp, ebp
006AEA4A   5D                     pop     ebp
006AEA4B   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AEA95(Sender : TObject);
begin
(*
006AEA95   8BEC                   mov     ebp, esp
006AEA97   53                     push    ebx
006AEA98   56                     push    esi
006AEA99   57                     push    edi
006AEA9A   33C0                   xor     eax, eax
006AEA9C   55                     push    ebp

* Possible String Reference to: 'é™_Õÿ¡h¶}'
|
006AEA9D   68E6EA6A00             push    $006AEAE6

***** TRY
|
006AEAA2   64FF30                 push    dword ptr fs:[eax]
006AEAA5   648920                 mov     fs:[eax], esp
006AEAA8   A118B17D00             mov     eax, dword ptr [$007DB118]
006AEAAD   833800                 cmp     dword ptr [eax], +$00
006AEAB0   742A                   jz      006AEADC
006AEAB2   A118B17D00             mov     eax, dword ptr [$007DB118]
006AEAB7   8B00                   mov     eax, [eax]

* Reference to : TfrmGerenciador._PROC_006AE8D0()
|
006AEAB9   E812FEFFFF             call    006AE8D0
006AEABE   84C0                   test    al, al
006AEAC0   741A                   jz      006AEADC
006AEAC2   A178B47D00             mov     eax, dword ptr [$007DB478]
006AEAC7   8B00                   mov     eax, [eax]
006AEAC9   8B4068                 mov     eax, [eax+$68]
006AEACC   83C034                 add     eax, +$34
006AEACF   8B1518B17D00           mov     edx, [$007DB118]
006AEAD5   8B12                   mov     edx, [edx]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AEAD7   E8146AD5FF             call    004054F0
006AEADC   33C0                   xor     eax, eax
006AEADE   5A                     pop     edx
006AEADF   59                     pop     ecx
006AEAE0   59                     pop     ecx
006AEAE1   648910                 mov     fs:[eax], edx
006AEAE4   EB18                   jmp     006AEAFE

* Reference to: System.@HandleAnyException;
|
006AEAE6   E9995FD5FF             jmp     00404A84
006AEAEB   A168B67D00             mov     eax, dword ptr [$007DB668]
006AEAF0   8B00                   mov     eax, [eax]
006AEAF2   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
006AEAF4   E83352E0FF             call    004B3D2C

* Reference to: System.@DoneExcept;
|
006AEAF9   E8B263D5FF             call    00404EB0

****** END
|
006AEAFE   5F                     pop     edi
006AEAFF   5E                     pop     esi
006AEB00   5B                     pop     ebx
006AEB01   5D                     pop     ebp
006AEB02   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AEB04(Sender : TObject);
begin
(*
006AEB04   55                     push    ebp
006AEB05   8BEC                   mov     ebp, esp
006AEB07   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AEB0C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006AEB0E   BA2CEB6A00             mov     edx, $006AEB2C

* Reference to: System.@LStrCmp;
|
006AEB13   E8906DD5FF             call    004058A8
006AEB18   7504                   jnz     006AEB1E
006AEB1A   B00F                   mov     al, $0F
006AEB1C   5D                     pop     ebp
006AEB1D   C3                     ret

006AEB1E   33C0                   xor     eax, eax
006AEB20   5D                     pop     ebp
006AEB21   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AEB35(Sender : TObject);
begin
(*
006AEB35   8BEC                   mov     ebp, esp
006AEB37   53                     push    ebx
006AEB38   B301                   mov     bl, $01
006AEB3A   A16CED7D00             mov     eax, dword ptr [$007DED6C]

* Reference to: System.@LStrLen(String):Integer;
|
006AEB3F   E8B07ED5FF             call    004069F4
006AEB44   40                     inc     eax
006AEB45   50                     push    eax
006AEB46   B86CED7D00             mov     eax, $007DED6C
006AEB4B   B901000000             mov     ecx, $00000001
006AEB50   8B157CE86A00           mov     edx, [$006AE87C]

* Reference to: System.@DynArraySetLength;
|
006AEB56   E85580D5FF             call    00406BB0
006AEB5B   83C404                 add     esp, +$04
006AEB5E   8BC3                   mov     eax, ebx
006AEB60   5B                     pop     ebx
006AEB61   5D                     pop     ebp
006AEB62   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AEB64(Sender : TObject);
begin
(*
006AEB64   55                     push    ebp
006AEB65   8BEC                   mov     ebp, esp
006AEB67   A16CED7D00             mov     eax, dword ptr [$007DED6C]

* Reference to: System.@DynArrayHigh;
|
006AEB6C   E88B7ED5FF             call    004069FC
006AEB71   5D                     pop     ebp
006AEB72   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AEB74(Sender : TObject);
begin
(*
006AEB74   55                     push    ebp
006AEB75   8BEC                   mov     ebp, esp

|
006AEB77   E8B8FFFFFF             call    006AEB34

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AEB7C   E8E3FFFFFF             call    006AEB64
006AEB81   8D0440                 lea     eax, [eax+eax*2]
006AEB84   8B156CED7D00           mov     edx, [$007DED6C]
006AEB8A   8D448204               lea     eax, [edx+eax*4+$04]

* Reference to: System.@LStrClr(void;void);
|
006AEB8E   E80969D5FF             call    0040549C
006AEB93   B001                   mov     al, $01
006AEB95   5D                     pop     ebp
006AEB96   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AEB98(Sender : TObject);
begin
(*
006AEB98   55                     push    ebp
006AEB99   8BEC                   mov     ebp, esp
006AEB9B   53                     push    ebx
006AEB9C   8BD8                   mov     ebx, eax
006AEB9E   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006AEBA0   E8F768D5FF             call    0040549C
006AEBA5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AEBAA   8B00                   mov     eax, [eax]
006AEBAC   8B407C                 mov     eax, [eax+$7C]
006AEBAF   8B10                   mov     edx, [eax]
006AEBB1   FF5258                 call    dword ptr [edx+$58]
006AEBB4   85C0                   test    eax, eax
006AEBB6   7E23                   jle     006AEBDB

* Possible String Reference to: 'esquerda'
|
006AEBB8   68E8EB6A00             push    $006AEBE8
006AEBBD   53                     push    ebx
006AEBBE   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AEBC3   8B00                   mov     eax, [eax]
006AEBC5   8B407C                 mov     eax, [eax+$7C]
006AEBC8   8B10                   mov     edx, [eax]
006AEBCA   FF5258                 call    dword ptr [edx+$58]
006AEBCD   8BC8                   mov     ecx, eax
006AEBCF   33D2                   xor     edx, edx
006AEBD1   B8FCEB6A00             mov     eax, $006AEBFC

|
006AEBD6   E8ED3A0F00             call    007A26C8
006AEBDB   5B                     pop     ebx
006AEBDC   5D                     pop     ebp
006AEBDD   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AEC01(Sender : TObject);
begin
(*
006AEC01   8BEC                   mov     ebp, esp
006AEC03   6A00                   push    $00
006AEC05   6A00                   push    $00
006AEC07   6A00                   push    $00
006AEC09   53                     push    ebx
006AEC0A   56                     push    esi
006AEC0B   8BF1                   mov     esi, ecx
006AEC0D   8955FC                 mov     [ebp-$04], edx
006AEC10   8BD8                   mov     ebx, eax
006AEC12   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AEC15   E8326DD5FF             call    0040594C
006AEC1A   33C0                   xor     eax, eax
006AEC1C   55                     push    ebp
006AEC1D   68B3EC6A00             push    $006AECB3

***** TRY
|
006AEC22   64FF30                 push    dword ptr fs:[eax]
006AEC25   648920                 mov     fs:[eax], esp
006AEC28   8BC6                   mov     eax, esi

* Reference to: System.@LStrClr(void;void);
|
006AEC2A   E86D68D5FF             call    0040549C

|
006AEC2F   E800FFFFFF             call    006AEB34

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AEC34   E82BFFFFFF             call    006AEB64
006AEC39   8D0440                 lea     eax, [eax+eax*2]
006AEC3C   8B156CED7D00           mov     edx, [$007DED6C]
006AEC42   891C82                 mov     [edx+eax*4], ebx

* Possible String Reference to: 'esquerda'
|
006AEC45   68C8EC6A00             push    $006AECC8
006AEC4A   8D45F8                 lea     eax, [ebp-$08]
006AEC4D   50                     push    eax
006AEC4E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AEC53   8B00                   mov     eax, [eax]
006AEC55   8B8098000000           mov     eax, [eax+$0098]
006AEC5B   8B10                   mov     edx, [eax]
006AEC5D   FF5258                 call    dword ptr [edx+$58]
006AEC60   8BC8                   mov     ecx, eax
006AEC62   8B55FC                 mov     edx, [ebp-$04]
006AEC65   B8DCEC6A00             mov     eax, $006AECDC

|
006AEC6A   E8593A0F00             call    007A26C8
006AEC6F   8B45F8                 mov     eax, [ebp-$08]
006AEC72   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AEC73   E8ECFEFFFF             call    006AEB64
006AEC78   8D0440                 lea     eax, [eax+eax*2]
006AEC7B   8B156CED7D00           mov     edx, [$007DED6C]
006AEC81   8D448204               lea     eax, [edx+eax*4+$04]
006AEC85   50                     push    eax
006AEC86   8D45F4                 lea     eax, [ebp-$0C]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
006AEC89   E80AFFFFFF             call    006AEB98
006AEC8E   8B55F4                 mov     edx, [ebp-$0C]
006AEC91   58                     pop     eax
006AEC92   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006AEC93   E8106BD5FF             call    004057A8
006AEC98   33C0                   xor     eax, eax
006AEC9A   5A                     pop     edx
006AEC9B   59                     pop     ecx
006AEC9C   59                     pop     ecx
006AEC9D   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AECA0   68BAEC6A00             push    $006AECBA
006AECA5   8D45F4                 lea     eax, [ebp-$0C]
006AECA8   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AECAD   E80E68D5FF             call    004054C0
006AECB2   C3                     ret


* Reference to: System.@HandleFinally;
|
006AECB3   E98060D5FF             jmp     00404D38
006AECB8   EBEB                   jmp     006AECA5

****** END
|
006AECBA   5E                     pop     esi
006AECBB   5B                     pop     ebx
006AECBC   8BE5                   mov     esp, ebp
006AECBE   5D                     pop     ebp
006AECBF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AECE1(Sender : TObject);
begin
(*
006AECE1   8BEC                   mov     ebp, esp
006AECE3   51                     push    ecx
006AECE4   B90A000000             mov     ecx, $0000000A
006AECE9   6A00                   push    $00
006AECEB   6A00                   push    $00
006AECED   49                     dec     ecx
006AECEE   75F9                   jnz     006AECE9
006AECF0   874DFC                 xchg    [ebp-$04], ecx
006AECF3   53                     push    ebx
006AECF4   56                     push    esi
006AECF5   57                     push    edi
006AECF6   894DF8                 mov     [ebp-$08], ecx
006AECF9   8955FC                 mov     [ebp-$04], edx
006AECFC   8BD8                   mov     ebx, eax
006AECFE   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AED01   E8466CD5FF             call    0040594C
006AED06   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AED09   E83E6CD5FF             call    0040594C
006AED0E   8B4518                 mov     eax, [ebp+$18]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AED11   E8366CD5FF             call    0040594C
006AED16   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AED19   E82E6CD5FF             call    0040594C
006AED1E   8B4510                 mov     eax, [ebp+$10]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AED21   E8266CD5FF             call    0040594C
006AED26   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AED29   E81E6CD5FF             call    0040594C
006AED2E   8B357CB37D00           mov     esi, [$007DB37C]
006AED34   33C0                   xor     eax, eax
006AED36   55                     push    ebp
006AED37   685BEF6A00             push    $006AEF5B

***** TRY
|
006AED3C   64FF30                 push    dword ptr fs:[eax]
006AED3F   648920                 mov     fs:[eax], esp
006AED42   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
006AED45   E85267D5FF             call    0040549C
006AED4A   33C0                   xor     eax, eax
006AED4C   55                     push    ebp
006AED4D   68F9EE6A00             push    $006AEEF9

***** TRY
|
006AED52   64FF30                 push    dword ptr fs:[eax]
006AED55   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'esquerda'
|
006AED58   6874EF6A00             push    $006AEF74
006AED5D   8D45F4                 lea     eax, [ebp-$0C]
006AED60   50                     push    eax
006AED61   8B06                   mov     eax, [esi]
006AED63   8B8084000000           mov     eax, [eax+$0084]
006AED69   8B10                   mov     edx, [eax]
006AED6B   FF5258                 call    dword ptr [edx+$58]
006AED6E   8BC8                   mov     ecx, eax
006AED70   8B55FC                 mov     edx, [ebp-$04]
006AED73   B888EF6A00             mov     eax, $006AEF88

|
006AED78   E84B390F00             call    007A26C8
006AED7D   8B55F4                 mov     edx, [ebp-$0C]
006AED80   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AED83   E8AC67D5FF             call    00405534
006AED88   8D45E4                 lea     eax, [ebp-$1C]
006AED8B   50                     push    eax

* Possible String Reference to: 'direita'
|
006AED8C   6894EF6A00             push    $006AEF94
006AED91   8D45D0                 lea     eax, [ebp-$30]
006AED94   50                     push    eax
006AED95   8B06                   mov     eax, [esi]
006AED97   8B8080000000           mov     eax, [eax+$0080]
006AED9D   8B10                   mov     edx, [eax]
006AED9F   FF5258                 call    dword ptr [edx+$58]
006AEDA2   8BC8                   mov     ecx, eax
006AEDA4   8B55F8                 mov     edx, [ebp-$08]
006AEDA7   B888EF6A00             mov     eax, $006AEF88

|
006AEDAC   E817390F00             call    007A26C8
006AEDB1   8B55D0                 mov     edx, [ebp-$30]
006AEDB4   8D45D4                 lea     eax, [ebp-$2C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006AEDB7   E8089FD6FF             call    00418CC4
006AEDBC   8D45D4                 lea     eax, [ebp-$2C]
006AEDBF   50                     push    eax
006AEDC0   8D45C0                 lea     eax, [ebp-$40]
006AEDC3   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006AEDC5   E8FA9ED6FF             call    00418CC4
006AEDCA   8D4DC0                 lea     ecx, [ebp-$40]
006AEDCD   33C0                   xor     eax, eax
006AEDCF   5A                     pop     edx

|
006AEDD0   E897150F00             call    007A036C
006AEDD5   8D55E4                 lea     edx, [ebp-$1C]
006AEDD8   8D45F8                 lea     eax, [ebp-$08]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
006AEDDB   E8188ED6FF             call    00417BF8

* Possible String Reference to: 'direita'
|
006AEDE0   6894EF6A00             push    $006AEF94
006AEDE5   8D45BC                 lea     eax, [ebp-$44]
006AEDE8   50                     push    eax
006AEDE9   8B06                   mov     eax, [esi]
006AEDEB   8B808C000000           mov     eax, [eax+$008C]
006AEDF1   8B10                   mov     edx, [eax]
006AEDF3   FF5258                 call    dword ptr [edx+$58]
006AEDF6   8BC8                   mov     ecx, eax
006AEDF8   8B5518                 mov     edx, [ebp+$18]
006AEDFB   B888EF6A00             mov     eax, $006AEF88

|
006AEE00   E8C3380F00             call    007A26C8
006AEE05   8B55BC                 mov     edx, [ebp-$44]
006AEE08   8D4518                 lea     eax, [ebp+$18]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AEE0B   E82467D5FF             call    00405534

* Possible String Reference to: 'direita'
|
006AEE10   6894EF6A00             push    $006AEF94
006AEE15   8D45B8                 lea     eax, [ebp-$48]
006AEE18   50                     push    eax
006AEE19   8B06                   mov     eax, [esi]
006AEE1B   8B8088000000           mov     eax, [eax+$0088]
006AEE21   8B10                   mov     edx, [eax]
006AEE23   FF5258                 call    dword ptr [edx+$58]
006AEE26   8BC8                   mov     ecx, eax
006AEE28   8B5514                 mov     edx, [ebp+$14]
006AEE2B   B888EF6A00             mov     eax, $006AEF88

|
006AEE30   E893380F00             call    007A26C8
006AEE35   8B55B8                 mov     edx, [ebp-$48]
006AEE38   8D4514                 lea     eax, [ebp+$14]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AEE3B   E8F466D5FF             call    00405534

* Possible String Reference to: 'direita'
|
006AEE40   6894EF6A00             push    $006AEF94
006AEE45   8D45B4                 lea     eax, [ebp-$4C]
006AEE48   50                     push    eax
006AEE49   8B06                   mov     eax, [esi]
006AEE4B   8B8090000000           mov     eax, [eax+$0090]
006AEE51   8B10                   mov     edx, [eax]
006AEE53   FF5258                 call    dword ptr [edx+$58]
006AEE56   8BC8                   mov     ecx, eax
006AEE58   8B5510                 mov     edx, [ebp+$10]
006AEE5B   B888EF6A00             mov     eax, $006AEF88

|
006AEE60   E863380F00             call    007A26C8
006AEE65   8B55B4                 mov     edx, [ebp-$4C]
006AEE68   8D4510                 lea     eax, [ebp+$10]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AEE6B   E8C466D5FF             call    00405534

* Possible String Reference to: 'direita'
|
006AEE70   6894EF6A00             push    $006AEF94
006AEE75   8D45B0                 lea     eax, [ebp-$50]
006AEE78   50                     push    eax
006AEE79   8B06                   mov     eax, [esi]
006AEE7B   8B8094000000           mov     eax, [eax+$0094]
006AEE81   8B10                   mov     edx, [eax]
006AEE83   FF5258                 call    dword ptr [edx+$58]
006AEE86   8BC8                   mov     ecx, eax
006AEE88   8B550C                 mov     edx, [ebp+$0C]
006AEE8B   B888EF6A00             mov     eax, $006AEF88

|
006AEE90   E833380F00             call    007A26C8
006AEE95   8B55B0                 mov     edx, [ebp-$50]
006AEE98   8D450C                 lea     eax, [ebp+$0C]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006AEE9B   E89466D5FF             call    00405534

|
006AEEA0   E88FFCFFFF             call    006AEB34

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AEEA5   E8BAFCFFFF             call    006AEB64
006AEEAA   8D0440                 lea     eax, [eax+eax*2]
006AEEAD   8B156CED7D00           mov     edx, [$007DED6C]
006AEEB3   891C82                 mov     [edx+eax*4], ebx
006AEEB6   8D45AC                 lea     eax, [ebp-$54]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
006AEEB9   E8DAFCFFFF             call    006AEB98
006AEEBE   FF75AC                 push    dword ptr [ebp-$54]
006AEEC1   FF75FC                 push    dword ptr [ebp-$04]
006AEEC4   FF75F8                 push    dword ptr [ebp-$08]
006AEEC7   FF7518                 push    dword ptr [ebp+$18]
006AEECA   FF7514                 push    dword ptr [ebp+$14]
006AEECD   FF7510                 push    dword ptr [ebp+$10]
006AEED0   FF750C                 push    dword ptr [ebp+$0C]

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AEED3   E88CFCFFFF             call    006AEB64
006AEED8   8D0440                 lea     eax, [eax+eax*2]
006AEEDB   8B156CED7D00           mov     edx, [$007DED6C]
006AEEE1   8D448204               lea     eax, [edx+eax*4+$04]
006AEEE5   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrCatN;
|
006AEEEA   E82D69D5FF             call    0040581C
006AEEEF   33C0                   xor     eax, eax
006AEEF1   5A                     pop     edx
006AEEF2   59                     pop     ecx
006AEEF3   59                     pop     ecx
006AEEF4   648910                 mov     fs:[eax], edx
006AEEF7   EB0A                   jmp     006AEF03

* Reference to: System.@HandleAnyException;
|
006AEEF9   E9865BD5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AEEFE   E8AD5FD5FF             call    00404EB0

****** END
|
006AEF03   33C0                   xor     eax, eax
006AEF05   5A                     pop     edx
006AEF06   59                     pop     ecx
006AEF07   59                     pop     ecx
006AEF08   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AEF0B   6862EF6A00             push    $006AEF62
006AEF10   8D45AC                 lea     eax, [ebp-$54]
006AEF13   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AEF18   E8A365D5FF             call    004054C0
006AEF1D   8D45C0                 lea     eax, [ebp-$40]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006AEF20   E85356D6FF             call    00414578
006AEF25   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
006AEF28   E86F65D5FF             call    0040549C
006AEF2D   8D45D4                 lea     eax, [ebp-$2C]

* Reference to object Variant
|
006AEF30   8B1524114000           mov     edx, [$00401124]
006AEF36   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006AEF3B   E85C71D5FF             call    0040609C
006AEF40   8D45F4                 lea     eax, [ebp-$0C]
006AEF43   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AEF48   E87365D5FF             call    004054C0
006AEF4D   8D450C                 lea     eax, [ebp+$0C]
006AEF50   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AEF55   E86665D5FF             call    004054C0
006AEF5A   C3                     ret


* Reference to: System.@HandleFinally;
|
006AEF5B   E9D85DD5FF             jmp     00404D38
006AEF60   EBAE                   jmp     006AEF10

****** END
|
006AEF62   5F                     pop     edi
006AEF63   5E                     pop     esi
006AEF64   5B                     pop     ebx
006AEF65   8BE5                   mov     esp, ebp
006AEF67   5D                     pop     ebp
006AEF68   C21400                 ret     $0014

*)
end;

procedure TfrmGerenciador._PROC_006AEF9D(Sender : TObject);
begin
(*
006AEF9D   8BEC                   mov     ebp, esp
006AEF9F   51                     push    ecx
006AEFA0   B90A000000             mov     ecx, $0000000A
006AEFA5   6A00                   push    $00
006AEFA7   6A00                   push    $00
006AEFA9   49                     dec     ecx
006AEFAA   75F9                   jnz     006AEFA5
006AEFAC   51                     push    ecx
006AEFAD   874DFC                 xchg    [ebp-$04], ecx
006AEFB0   53                     push    ebx
006AEFB1   56                     push    esi
006AEFB2   57                     push    edi
006AEFB3   894DF8                 mov     [ebp-$08], ecx
006AEFB6   8955FC                 mov     [ebp-$04], edx
006AEFB9   8BD8                   mov     ebx, eax
006AEFBB   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AEFBE   E88969D5FF             call    0040594C
006AEFC3   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006AEFC6   E88169D5FF             call    0040594C
006AEFCB   33C0                   xor     eax, eax
006AEFCD   55                     push    ebp
006AEFCE   684BF16A00             push    $006AF14B

***** TRY
|
006AEFD3   64FF30                 push    dword ptr fs:[eax]
006AEFD6   648920                 mov     fs:[eax], esp
006AEFD9   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006AEFDC   E8BB64D5FF             call    0040549C
006AEFE1   33C0                   xor     eax, eax
006AEFE3   55                     push    ebp
006AEFE4   6806F16A00             push    $006AF106

***** TRY
|
006AEFE9   64FF30                 push    dword ptr fs:[eax]
006AEFEC   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'esquerda'
|
006AEFEF   6864F16A00             push    $006AF164
006AEFF4   8D45F0                 lea     eax, [ebp-$10]
006AEFF7   50                     push    eax
006AEFF8   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AEFFD   8B00                   mov     eax, [eax]
006AEFFF   8B809C000000           mov     eax, [eax+$009C]
006AF005   8B10                   mov     edx, [eax]
006AF007   FF5258                 call    dword ptr [edx+$58]
006AF00A   8BD0                   mov     edx, eax
006AF00C   8D45E0                 lea     eax, [ebp-$20]
006AF00F   B1FC                   mov     cl, $FC

|
006AF011   E85A9AD6FF             call    00418A70
006AF016   8D45E0                 lea     eax, [ebp-$20]
006AF019   50                     push    eax
006AF01A   8D45D0                 lea     eax, [ebp-$30]
006AF01D   50                     push    eax
006AF01E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF023   8B00                   mov     eax, [eax]
006AF025   8B8080000000           mov     eax, [eax+$0080]
006AF02B   8B10                   mov     edx, [eax]
006AF02D   FF5258                 call    dword ptr [edx+$58]
006AF030   8BD0                   mov     edx, eax
006AF032   8D45C0                 lea     eax, [ebp-$40]
006AF035   B1FC                   mov     cl, $FC

|
006AF037   E8349AD6FF             call    00418A70
006AF03C   8D45C0                 lea     eax, [ebp-$40]
006AF03F   50                     push    eax
006AF040   8D45B0                 lea     eax, [ebp-$50]
006AF043   33D2                   xor     edx, edx
006AF045   B101                   mov     cl, $01

|
006AF047   E8249AD6FF             call    00418A70
006AF04C   8D4DB0                 lea     ecx, [ebp-$50]
006AF04F   33C0                   xor     eax, eax
006AF051   5A                     pop     edx

|
006AF052   E815130F00             call    007A036C
006AF057   8D55D0                 lea     edx, [ebp-$30]
006AF05A   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
006AF05B   E844E0D6FF             call    0041D0A4
006AF060   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarToInteger(TVarData;TVarData):Integer;
|
006AF063   E83062D6FF             call    00415298
006AF068   8BC8                   mov     ecx, eax
006AF06A   8B55FC                 mov     edx, [ebp-$04]
006AF06D   B878F16A00             mov     eax, $006AF178

|
006AF072   E851360F00             call    007A26C8
006AF077   8B55F0                 mov     edx, [ebp-$10]
006AF07A   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrCat;
|
006AF07D   E8E266D5FF             call    00405764

* Possible String Reference to: 'direita'
|
006AF082   6884F16A00             push    $006AF184
006AF087   8D45AC                 lea     eax, [ebp-$54]
006AF08A   50                     push    eax
006AF08B   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF090   8B00                   mov     eax, [eax]
006AF092   8B8094000000           mov     eax, [eax+$0094]
006AF098   8B10                   mov     edx, [eax]
006AF09A   FF5258                 call    dword ptr [edx+$58]
006AF09D   8BC8                   mov     ecx, eax
006AF09F   8B55F8                 mov     edx, [ebp-$08]
006AF0A2   B878F16A00             mov     eax, $006AF178

|
006AF0A7   E81C360F00             call    007A26C8
006AF0AC   8B55AC                 mov     edx, [ebp-$54]
006AF0AF   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrCat;
|
006AF0B2   E8AD66D5FF             call    00405764

|
006AF0B7   E878FAFFFF             call    006AEB34

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AF0BC   E8A3FAFFFF             call    006AEB64
006AF0C1   8D0440                 lea     eax, [eax+eax*2]
006AF0C4   8B156CED7D00           mov     edx, [$007DED6C]
006AF0CA   891C82                 mov     [edx+eax*4], ebx

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AF0CD   E892FAFFFF             call    006AEB64
006AF0D2   8D0440                 lea     eax, [eax+eax*2]
006AF0D5   8B156CED7D00           mov     edx, [$007DED6C]
006AF0DB   8D448204               lea     eax, [edx+eax*4+$04]
006AF0DF   50                     push    eax
006AF0E0   8D45A8                 lea     eax, [ebp-$58]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
006AF0E3   E8B0FAFFFF             call    006AEB98
006AF0E8   8B55A8                 mov     edx, [ebp-$58]
006AF0EB   8B4DF4                 mov     ecx, [ebp-$0C]
006AF0EE   58                     pop     eax

* Reference to: System.@LStrCat3;
|
006AF0EF   E8B466D5FF             call    004057A8
006AF0F4   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
006AF0F7   E8A063D5FF             call    0040549C
006AF0FC   33C0                   xor     eax, eax
006AF0FE   5A                     pop     edx
006AF0FF   59                     pop     ecx
006AF100   59                     pop     ecx
006AF101   648910                 mov     fs:[eax], edx
006AF104   EB0A                   jmp     006AF110

* Reference to: System.@HandleAnyException;
|
006AF106   E97959D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AF10B   E8A05DD5FF             call    00404EB0

****** END
|
006AF110   33C0                   xor     eax, eax
006AF112   5A                     pop     edx
006AF113   59                     pop     ecx
006AF114   59                     pop     ecx
006AF115   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AF118   6852F16A00             push    $006AF152
006AF11D   8D45A8                 lea     eax, [ebp-$58]
006AF120   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AF125   E89663D5FF             call    004054C0
006AF12A   8D45B0                 lea     eax, [ebp-$50]

* Reference to object Variant
|
006AF12D   8B1524114000           mov     edx, [$00401124]
006AF133   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006AF138   E85F6FD5FF             call    0040609C
006AF13D   8D45F0                 lea     eax, [ebp-$10]
006AF140   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AF145   E87663D5FF             call    004054C0
006AF14A   C3                     ret


* Reference to: System.@HandleFinally;
|
006AF14B   E9E85BD5FF             jmp     00404D38
006AF150   EBCB                   jmp     006AF11D

****** END
|
006AF152   5F                     pop     edi
006AF153   5E                     pop     esi
006AF154   5B                     pop     ebx
006AF155   8BE5                   mov     esp, ebp
006AF157   5D                     pop     ebp
006AF158   C20400                 ret     $0004

*)
end;

procedure TfrmGerenciador._PROC_006AF18D(Sender : TObject);
begin
(*
006AF18D   8BEC                   mov     ebp, esp
006AF18F   B90F000000             mov     ecx, $0000000F
006AF194   6A00                   push    $00
006AF196   6A00                   push    $00
006AF198   49                     dec     ecx
006AF199   75F9                   jnz     006AF194
006AF19B   53                     push    ebx
006AF19C   56                     push    esi
006AF19D   57                     push    edi
006AF19E   8945FC                 mov     [ebp-$04], eax
006AF1A1   33C0                   xor     eax, eax
006AF1A3   55                     push    ebp
006AF1A4   685AF56A00             push    $006AF55A

***** TRY
|
006AF1A9   64FF30                 push    dword ptr fs:[eax]
006AF1AC   648920                 mov     fs:[eax], esp
006AF1AF   B201                   mov     dl, $01

* Reference to class TStringList
|
006AF1B1   A1D4044200             mov     eax, dword ptr [$004204D4]

* Reference to: System.TObject.Create(TObject;Boolean);
|
006AF1B6   E8B153D5FF             call    0040456C
006AF1BB   8945F8                 mov     [ebp-$08], eax
006AF1BE   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006AF1C1   E8D662D5FF             call    0040549C
006AF1C6   6A00                   push    $00
006AF1C8   B86CED7D00             mov     eax, $007DED6C
006AF1CD   B901000000             mov     ecx, $00000001
006AF1D2   8B157CE86A00           mov     edx, [$006AE87C]

* Reference to: System.@DynArraySetLength;
|
006AF1D8   E8D379D5FF             call    00406BB0
006AF1DD   83C404                 add     esp, +$04

|
006AF1E0   E8AFF8FFFF             call    006AEA94

|
006AF1E5   E8B2F6FFFF             call    006AE89C
006AF1EA   84C0                   test    al, al
006AF1EC   0F841D030000           jz      006AF50F
006AF1F2   8D55F4                 lea     edx, [ebp-$0C]
006AF1F5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF1FA   8B00                   mov     eax, [eax]
006AF1FC   8B80A8000000           mov     eax, [eax+$00A8]
006AF202   8B08                   mov     ecx, [eax]
006AF204   FF5160                 call    dword ptr [ecx+$60]
006AF207   8B55F4                 mov     edx, [ebp-$0C]
006AF20A   8B45F8                 mov     eax, [ebp-$08]
006AF20D   8B08                   mov     ecx, [eax]

* Reference to method TStringList.SetTextStr(string)
|
006AF20F   FF512C                 call    dword ptr [ecx+$2C]
006AF212   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF217   8B00                   mov     eax, [eax]
006AF219   8B8084000000           mov     eax, [eax+$0084]
006AF21F   8B10                   mov     edx, [eax]
006AF221   FF5258                 call    dword ptr [edx+$58]
006AF224   8BD8                   mov     ebx, eax
006AF226   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF22B   8B00                   mov     eax, [eax]
006AF22D   8B8088000000           mov     eax, [eax+$0088]
006AF233   8B10                   mov     edx, [eax]
006AF235   FF5258                 call    dword ptr [edx+$58]
006AF238   03D8                   add     ebx, eax
006AF23A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF23F   8B00                   mov     eax, [eax]
006AF241   8B808C000000           mov     eax, [eax+$008C]
006AF247   8B10                   mov     edx, [eax]
006AF249   FF5258                 call    dword ptr [edx+$58]
006AF24C   03D8                   add     ebx, eax
006AF24E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF253   8B00                   mov     eax, [eax]
006AF255   8B8090000000           mov     eax, [eax+$0090]
006AF25B   8B10                   mov     edx, [eax]
006AF25D   FF5258                 call    dword ptr [edx+$58]
006AF260   03D8                   add     ebx, eax
006AF262   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF267   8B00                   mov     eax, [eax]
006AF269   8B8094000000           mov     eax, [eax+$0094]
006AF26F   8B10                   mov     edx, [eax]
006AF271   FF5258                 call    dword ptr [edx+$58]
006AF274   03D8                   add     ebx, eax
006AF276   8BD3                   mov     edx, ebx
006AF278   8D45E4                 lea     eax, [ebp-$1C]
006AF27B   B1FC                   mov     cl, $FC

|
006AF27D   E8EE97D6FF             call    00418A70
006AF282   8D45E4                 lea     eax, [ebp-$1C]
006AF285   50                     push    eax
006AF286   8D45D4                 lea     eax, [ebp-$2C]
006AF289   50                     push    eax
006AF28A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF28F   8B00                   mov     eax, [eax]
006AF291   8B8080000000           mov     eax, [eax+$0080]
006AF297   8B10                   mov     edx, [eax]
006AF299   FF5258                 call    dword ptr [edx+$58]
006AF29C   8BD0                   mov     edx, eax
006AF29E   8D45C4                 lea     eax, [ebp-$3C]
006AF2A1   B1FC                   mov     cl, $FC

|
006AF2A3   E8C897D6FF             call    00418A70
006AF2A8   8D45C4                 lea     eax, [ebp-$3C]
006AF2AB   50                     push    eax
006AF2AC   8D45B4                 lea     eax, [ebp-$4C]
006AF2AF   33D2                   xor     edx, edx
006AF2B1   B101                   mov     cl, $01

|
006AF2B3   E8B897D6FF             call    00418A70
006AF2B8   8D4DB4                 lea     ecx, [ebp-$4C]
006AF2BB   33C0                   xor     eax, eax
006AF2BD   5A                     pop     edx

|
006AF2BE   E8A9100F00             call    007A036C
006AF2C3   8D55D4                 lea     edx, [ebp-$2C]
006AF2C6   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
006AF2C7   E8D8DDD6FF             call    0041D0A4
006AF2CC   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: Variants.@VarToInteger(TVarData;TVarData):Integer;
|
006AF2CF   E8C45FD6FF             call    00415298
006AF2D4   8B1540A47D00           mov     edx, [$007DA440]
006AF2DA   8902                   mov     [edx], eax
006AF2DC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AF2E1   8B00                   mov     eax, [eax]
006AF2E3   8B4068                 mov     eax, [eax+$68]
006AF2E6   8B10                   mov     edx, [eax]
006AF2E8   FF5258                 call    dword ptr [edx+$58]
006AF2EB   8BD8                   mov     ebx, eax
006AF2ED   85DB                   test    ebx, ebx
006AF2EF   7E4E                   jle     006AF33F

|
006AF2F1   E83EF8FFFF             call    006AEB34

* Possible String Reference to: 'esquerda'
|
006AF2F6   6870F56A00             push    $006AF570
006AF2FB   8D45B0                 lea     eax, [ebp-$50]
006AF2FE   50                     push    eax
006AF2FF   B914000000             mov     ecx, $00000014
006AF304   BA84F56A00             mov     edx, $006AF584
006AF309   B884F56A00             mov     eax, $006AF584

|
006AF30E   E8B5330F00             call    007A26C8
006AF313   8B45B0                 mov     eax, [ebp-$50]
006AF316   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AF317   E848F8FFFF             call    006AEB64
006AF31C   8D0440                 lea     eax, [eax+eax*2]
006AF31F   8B156CED7D00           mov     edx, [$007DED6C]
006AF325   8D448204               lea     eax, [edx+eax*4+$04]
006AF329   50                     push    eax
006AF32A   8D45AC                 lea     eax, [ebp-$54]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
006AF32D   E866F8FFFF             call    006AEB98
006AF332   8B55AC                 mov     edx, [ebp-$54]
006AF335   58                     pop     eax
006AF336   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006AF337   E86C64D5FF             call    004057A8
006AF33C   4B                     dec     ebx
006AF33D   75B2                   jnz     006AF2F1
006AF33F   8B45F8                 mov     eax, [ebp-$08]
006AF342   8B10                   mov     edx, [eax]

* Reference to method TStringList.GetCount()
|
006AF344   FF5214                 call    dword ptr [edx+$14]
006AF347   8BD8                   mov     ebx, eax
006AF349   4B                     dec     ebx
006AF34A   85DB                   test    ebx, ebx
006AF34C   7C60                   jl      006AF3AE
006AF34E   43                     inc     ebx
006AF34F   33F6                   xor     esi, esi
006AF351   8D4DA8                 lea     ecx, [ebp-$58]
006AF354   8BD6                   mov     edx, esi
006AF356   8B45F8                 mov     eax, [ebp-$08]
006AF359   8B38                   mov     edi, [eax]

* Reference to method TStringList.Get(Integer)
|
006AF35B   FF570C                 call    dword ptr [edi+$0C]
006AF35E   837DA800               cmp     dword ptr [ebp-$58], +$00
006AF362   7446                   jz      006AF3AA

|
006AF364   E8CBF7FFFF             call    006AEB34
006AF369   8D4DA0                 lea     ecx, [ebp-$60]
006AF36C   8BD6                   mov     edx, esi
006AF36E   8B45F8                 mov     eax, [ebp-$08]
006AF371   8B38                   mov     edi, [eax]

* Reference to method TStringList.Get(Integer)
|
006AF373   FF570C                 call    dword ptr [edi+$0C]
006AF376   8B45A0                 mov     eax, [ebp-$60]
006AF379   8D55A4                 lea     edx, [ebp-$5C]

* Reference to : TfrmGerenciador._PROC_006ACE00()
|
006AF37C   E87FDAFFFF             call    006ACE00
006AF381   8B45A4                 mov     eax, [ebp-$5C]
006AF384   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AF385   E8DAF7FFFF             call    006AEB64
006AF38A   8D0440                 lea     eax, [eax+eax*2]
006AF38D   8B156CED7D00           mov     edx, [$007DED6C]
006AF393   8D448204               lea     eax, [edx+eax*4+$04]
006AF397   50                     push    eax
006AF398   8D459C                 lea     eax, [ebp-$64]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
006AF39B   E8F8F7FFFF             call    006AEB98
006AF3A0   8B559C                 mov     edx, [ebp-$64]
006AF3A3   58                     pop     eax
006AF3A4   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006AF3A5   E8FE63D5FF             call    004057A8
006AF3AA   46                     inc     esi
006AF3AB   4B                     dec     ebx
006AF3AC   75A3                   jnz     006AF351
006AF3AE   A1BCB17D00             mov     eax, dword ptr [$007DB1BC]
006AF3B3   833800                 cmp     dword ptr [eax], +$00
006AF3B6   7E43                   jle     006AF3FB

|
006AF3B8   E877F7FFFF             call    006AEB34
006AF3BD   8D4598                 lea     eax, [ebp-$68]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
006AF3C0   E8D3F7FFFF             call    006AEB98
006AF3C5   FF7598                 push    dword ptr [ebp-$68]

* Possible String Reference to: 'MESA.:'
|
006AF3C8   6890F56A00             push    $006AF590
006AF3CD   8D5594                 lea     edx, [ebp-$6C]
006AF3D0   A1BCB17D00             mov     eax, dword ptr [$007DB1BC]
006AF3D5   8B00                   mov     eax, [eax]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
006AF3D7   E888B9D5FF             call    0040AD64
006AF3DC   FF7594                 push    dword ptr [ebp-$6C]

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AF3DF   E880F7FFFF             call    006AEB64
006AF3E4   8D0440                 lea     eax, [eax+eax*2]
006AF3E7   8B156CED7D00           mov     edx, [$007DED6C]
006AF3ED   8D448204               lea     eax, [edx+eax*4+$04]
006AF3F1   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AF3F6   E82164D5FF             call    0040581C

* Possible String Reference to: 'Qtde'
|
006AF3FB   68A0F56A00             push    $006AF5A0

* Possible String Reference to: 'UN'
|
006AF400   68B0F56A00             push    $006AF5B0

* Possible String Reference to: 'Unit'
|
006AF405   68BCF56A00             push    $006AF5BC

* Possible String Reference to: 'Total'
|
006AF40A   68CCF56A00             push    $006AF5CC
006AF40F   8D4590                 lea     eax, [ebp-$70]
006AF412   50                     push    eax

* Possible String Reference to: 'Vol'
|
006AF413   B9DCF56A00             mov     ecx, $006AF5DC

* Possible String Reference to: 'Produto'
|
006AF418   BAE8F56A00             mov     edx, $006AF5E8
006AF41D   33C0                   xor     eax, eax

|
006AF41F   E8BCF8FFFF             call    006AECE0
006AF424   8D458C                 lea     eax, [ebp-$74]

|
006AF427   E828220000             call    006B1654
006AF42C   A158A97D00             mov     eax, dword ptr [$007DA958]
006AF431   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AF433   BAF8F56A00             mov     edx, $006AF5F8

* Reference to: System.@LStrCmp;
|
006AF438   E86B64D5FF             call    004058A8
006AF43D   0F85BD000000           jnz     006AF500
006AF443   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AF448   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006AF44A   BA0CF66A00             mov     edx, $006AF60C

* Reference to: System.@LStrCmp;
|
006AF44F   E85464D5FF             call    004058A8
006AF454   7417                   jz      006AF46D
006AF456   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AF45B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006AF45D   BA1CF66A00             mov     edx, $006AF61C

* Reference to: System.@LStrCmp;
|
006AF462   E84164D5FF             call    004058A8
006AF467   0F8593000000           jnz     006AF500
006AF46D   A178B47D00             mov     eax, dword ptr [$007DB478]
006AF472   8B00                   mov     eax, [eax]
006AF474   8B4068                 mov     eax, [eax+$68]

|
006AF477   E8C0B2EEFF             call    0059A73C
006AF47C   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AF481   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006AF483   BA0CF66A00             mov     edx, $006AF60C

* Reference to: System.@LStrCmp;
|
006AF488   E81B64D5FF             call    004058A8
006AF48D   7514                   jnz     006AF4A3
006AF48F   A178B47D00             mov     eax, dword ptr [$007DB478]
006AF494   8B00                   mov     eax, [eax]
006AF496   8B4068                 mov     eax, [eax+$68]
006AF499   BA30F66A00             mov     edx, $006AF630

* Reference to : TRAWPrinter._PROC_0059A8A8()
|
006AF49E   E805B4EEFF             call    0059A8A8
006AF4A3   A16CED7D00             mov     eax, dword ptr [$007DED6C]

* Reference to: System.@LStrLen(String):Integer;
|
006AF4A8   E84775D5FF             call    004069F4
006AF4AD   8BD8                   mov     ebx, eax
006AF4AF   4B                     dec     ebx
006AF4B0   85DB                   test    ebx, ebx
006AF4B2   7C3D                   jl      006AF4F1
006AF4B4   43                     inc     ebx
006AF4B5   33F6                   xor     esi, esi

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006AF4B7   E848F6FFFF             call    006AEB04
006AF4BC   8BD0                   mov     edx, eax
006AF4BE   8D4588                 lea     eax, [ebp-$78]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006AF4C1   E8BE61D5FF             call    00405684
006AF4C6   8D4588                 lea     eax, [ebp-$78]
006AF4C9   8D1476                 lea     edx, [esi+esi*2]
006AF4CC   8B0D6CED7D00           mov     ecx, [$007DED6C]
006AF4D2   8B549104               mov     edx, [ecx+edx*4+$04]

* Reference to: System.@LStrCat;
|
006AF4D6   E88962D5FF             call    00405764
006AF4DB   8B5588                 mov     edx, [ebp-$78]
006AF4DE   A178B47D00             mov     eax, dword ptr [$007DB478]
006AF4E3   8B00                   mov     eax, [eax]
006AF4E5   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006AF4E8   E8E7B3EEFF             call    0059A8D4
006AF4ED   46                     inc     esi
006AF4EE   4B                     dec     ebx
006AF4EF   75C6                   jnz     006AF4B7
006AF4F1   A178B47D00             mov     eax, dword ptr [$007DB478]
006AF4F6   8B00                   mov     eax, [eax]
006AF4F8   8B4068                 mov     eax, [eax+$68]

|
006AF4FB   E8E0B2EEFF             call    0059A7E0
006AF500   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'CUPOM ABERTO...'
|
006AF503   BA3CF66A00             mov     edx, $006AF63C

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AF508   E8E35FD5FF             call    004054F0
006AF50D   EB0D                   jmp     006AF51C
006AF50F   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'IMPRESSORA NÃO TEM SUPORTE PARA IMP
|                                RESSÃO DOS!'
|
006AF512   BA54F66A00             mov     edx, $006AF654

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AF517   E8D45FD5FF             call    004054F0
006AF51C   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.TObject.Free(TObject);
|
006AF51F   E87850D5FF             call    0040459C
006AF524   33C0                   xor     eax, eax
006AF526   5A                     pop     edx
006AF527   59                     pop     ecx
006AF528   59                     pop     ecx
006AF529   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AF52C   6861F56A00             push    $006AF561
006AF531   8D4588                 lea     eax, [ebp-$78]
006AF534   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AF539   E8825FD5FF             call    004054C0
006AF53E   8D45B4                 lea     eax, [ebp-$4C]

* Reference to object Variant
|
006AF541   8B1524114000           mov     edx, [$00401124]
006AF547   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006AF54C   E84B6BD5FF             call    0040609C
006AF551   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
006AF554   E8435FD5FF             call    0040549C
006AF559   C3                     ret


* Reference to: System.@HandleFinally;
|
006AF55A   E9D957D5FF             jmp     00404D38
006AF55F   EBD0                   jmp     006AF531

****** END
|
006AF561   5F                     pop     edi
006AF562   5E                     pop     esi
006AF563   5B                     pop     ebx
006AF564   8BE5                   mov     esp, ebp
006AF566   5D                     pop     ebp
006AF567   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AF5B1(Sender : TObject);
begin
(*
006AF5B1   4E                     dec     esi
006AF5B2   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006AF5BD(Sender : TObject);
begin
(*
006AF5BD   6E                     outsb
006AF5BE   697400000000FFFF       imul    esi, [eax+eax+$00], $FFFF0000
006AF5C6   FFFF                   DB  $FF, $FF  //      
006AF5C8   0500000054             add     eax, +$54000000
006AF5CD   6F                     outsd
006AF5CE   7461                   jz      006AF631
006AF5D0   6C                     insb
006AF5D1   0000                   add     [eax], al

006AF5D3   00FF                   add     bh, bh
006AF5D5   FFFF                   DB  $FF, $FF  //      
006AF5D7   FF03                   inc     dword ptr [ebx]
006AF5D9   0000                   add     [eax], al

006AF5DB   00566F                 add     [esi+$6F], dl
006AF5DE   6C                     insb
006AF5DF   00FF                   add     bh, bh
006AF5E1   FFFF                   DB  $FF, $FF  //      
006AF5E3   FF07                   inc     dword ptr [edi]
006AF5E5   0000                   add     [eax], al

006AF5E7   005072                 add     [eax+$72], dl
006AF5EA   6F                     outsd
006AF5EB   647574                 jnz     006AF662
006AF5EE   6F                     outsd
006AF5EF   00FF                   add     bh, bh
006AF5F1   FFFF                   DB  $FF, $FF  //      
006AF5F3   FF09                   dec     dword ptr [ecx]
006AF5F5   0000                   add     [eax], al

006AF5F7   0074656D               add     [ebp+$6D], dh
006AF5FB   706F                   jo      006AF66C
006AF5FD   7265                   jb      006AF664
006AF5FF   61                     popa
006AF600   6C                     insb
006AF601   0000                   add     [eax], al

006AF603   00FF                   add     bh, bh
006AF605   FFFF                   DB  $FF, $FF  //      
006AF607   FF07                   inc     dword ptr [edi]
006AF609   0000                   add     [eax], al

006AF60B   007769                 add     [edi+$69], dh
006AF60E   6E                     outsb
006AF60F   646F                   outsd
006AF611   7773                   jnbe    006AF686
006AF613   00FF                   add     bh, bh
006AF615   FFFF                   DB  $FF, $FF  //      
006AF617   FF09                   dec     dword ptr [ecx]
006AF619   0000                   add     [eax], al

006AF61B   00746D2D               add     [ebp+ebp*2+$2D], dh
006AF61F   7563                   jnz     006AF684
006AF621   3330                   xor     esi, [eax]
006AF623   306300                 xor     [ebx+$00], ah
006AF626   0000                   add     [eax], al

006AF628   FFFF                   DB  $FF, $FF  //      
006AF62A   FFFF                   DB  $FF, $FF  //      
006AF62C   0200                   add     al, byte ptr [eax]
006AF62E   0000                   add     [eax], al

006AF630   1B4000                 sbb     eax, [eax+$00]
006AF633   00FF                   add     bh, bh
006AF635   FFFF                   DB  $FF, $FF  //      
006AF637   FF0F                   dec     dword ptr [edi]
006AF639   0000                   add     [eax], al

006AF63B   004355                 add     [ebx+$55], al
006AF63E   50                     push    eax
006AF63F   4F                     dec     edi
006AF640   4D                     dec     ebp
006AF641   204142                 and     [ecx+$42], al
006AF644   45                     inc     ebp
006AF645   52                     push    edx
006AF646   54                     push    esp
006AF647   4F                     dec     edi
006AF648   2E2E2E00FF             add     bh, bh
006AF64D   FFFF                   DB  $FF, $FF  //      
006AF64F   FF2E                   jmp     [esi]
006AF651   0000                   add     [eax], al

006AF653   00494D                 add     [ecx+$4D], cl
006AF656   50                     push    eax
006AF657   52                     push    edx
006AF658   45                     inc     ebp
006AF659   53                     push    ebx
006AF65A   53                     push    ebx
006AF65B   4F                     dec     edi
006AF65C   52                     push    edx
006AF65D   41                     inc     ecx
006AF65E   204EC3                 and     [esi-$3D], cl
006AF661   4F                     dec     edi
006AF662   2054454D               and     [ebp+eax*2+$4D], dl
006AF666   205355                 and     [ebx+$55], dl
006AF669   50                     push    eax
006AF66A   4F                     dec     edi
006AF66B   52                     push    edx
006AF66C   54                     push    esp
006AF66D   45                     inc     ebp
006AF66E   205041                 and     [eax+$41], dl
006AF671   52                     push    edx
006AF672   41                     inc     ecx
006AF673   20494D                 and     [ecx+$4D], cl
006AF676   50                     push    eax
006AF677   52                     push    edx
006AF678   45                     inc     ebp
006AF679   53                     push    ebx
006AF67A   53                     push    ebx
006AF67B   C3                     ret

006AF67C   4F                     dec     edi
006AF67D   20444F53               and     [edi+ecx*2+$53], al
006AF681   2100                   and     [eax], eax
006AF683   00558B                 add     [ebp-$75], dl
006AF686   EC                     in      al, dx
006AF687   B914000000             mov     ecx, $00000014
006AF68C   6A00                   push    $00
006AF68E   6A00                   push    $00
006AF690   49                     dec     ecx
006AF691   75F9                   jnz     006AF68C
006AF693   51                     push    ecx
006AF694   53                     push    ebx
006AF695   56                     push    esi
006AF696   57                     push    edi
006AF697   8BD8                   mov     ebx, eax
006AF699   8B3D7CB37D00           mov     edi, [$007DB37C]
006AF69F   33C0                   xor     eax, eax
006AF6A1   55                     push    ebp
006AF6A2   6827FB6A00             push    $006AFB27

***** TRY
|
006AF6A7   64FF30                 push    dword ptr fs:[eax]
006AF6AA   648920                 mov     fs:[eax], esp
006AF6AD   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006AF6AF   E8E85DD5FF             call    0040549C

|
006AF6B4   E8E3F1FFFF             call    006AE89C
006AF6B9   84C0                   test    al, al
006AF6BB   0F8407040000           jz      006AFAC8
006AF6C1   8B07                   mov     eax, [edi]
006AF6C3   8B80C8000000           mov     eax, [eax+$00C8]
006AF6C9   8B10                   mov     edx, [eax]
006AF6CB   FF5258                 call    dword ptr [edx+$58]
006AF6CE   8BF0                   mov     esi, eax
006AF6D0   A1B8B47D00             mov     eax, dword ptr [$007DB4B8]
006AF6D5   803800                 cmp     byte ptr [eax], $00
006AF6D8   744B                   jz      006AF725
006AF6DA   8B07                   mov     eax, [edi]
006AF6DC   8B8084000000           mov     eax, [eax+$0084]
006AF6E2   8B10                   mov     edx, [eax]
006AF6E4   FF5258                 call    dword ptr [edx+$58]
006AF6E7   83F80D                 cmp     eax, +$0D
006AF6EA   7C39                   jl      006AF725

* Possible String Reference to: 'esquerda'
|
006AF6EC   6840FB6A00             push    $006AFB40
006AF6F1   8D45FC                 lea     eax, [ebp-$04]
006AF6F4   50                     push    eax
006AF6F5   8D55E0                 lea     edx, [ebp-$20]
006AF6F8   8B07                   mov     eax, [edi]
006AF6FA   8B80EC000000           mov     eax, [eax+$00EC]
006AF700   8B08                   mov     ecx, [eax]
006AF702   FF5160                 call    dword ptr [ecx+$60]
006AF705   8B45E0                 mov     eax, [ebp-$20]
006AF708   50                     push    eax
006AF709   8B07                   mov     eax, [edi]
006AF70B   8B8084000000           mov     eax, [eax+$0084]
006AF711   8B10                   mov     edx, [eax]
006AF713   FF5258                 call    dword ptr [edx+$58]
006AF716   8BC8                   mov     ecx, eax
006AF718   B854FB6A00             mov     eax, $006AFB54
006AF71D   5A                     pop     edx

|
006AF71E   E8A52F0F00             call    007A26C8
006AF723   EB37                   jmp     006AF75C

* Possible String Reference to: 'esquerda'
|
006AF725   6840FB6A00             push    $006AFB40
006AF72A   8D45FC                 lea     eax, [ebp-$04]
006AF72D   50                     push    eax
006AF72E   8D55DC                 lea     edx, [ebp-$24]
006AF731   8B07                   mov     eax, [edi]
006AF733   8B80E8000000           mov     eax, [eax+$00E8]
006AF739   8B08                   mov     ecx, [eax]
006AF73B   FF5160                 call    dword ptr [ecx+$60]
006AF73E   8B45DC                 mov     eax, [ebp-$24]
006AF741   50                     push    eax
006AF742   8B07                   mov     eax, [edi]
006AF744   8B8084000000           mov     eax, [eax+$0084]
006AF74A   8B10                   mov     edx, [eax]
006AF74C   FF5258                 call    dword ptr [edx+$58]
006AF74F   8BC8                   mov     ecx, eax
006AF751   B854FB6A00             mov     eax, $006AFB54
006AF756   5A                     pop     edx

|
006AF757   E86C2F0F00             call    007A26C8

* Possible String Reference to: 'esquerda'
|
006AF75C   6840FB6A00             push    $006AFB40
006AF761   8D45F8                 lea     eax, [ebp-$08]
006AF764   50                     push    eax
006AF765   8D55D4                 lea     edx, [ebp-$2C]
006AF768   8B07                   mov     eax, [edi]
006AF76A   8B80CC000000           mov     eax, [eax+$00CC]
006AF770   8B08                   mov     ecx, [eax]
006AF772   FF5160                 call    dword ptr [ecx+$60]
006AF775   8B45D4                 mov     eax, [ebp-$2C]
006AF778   8D55D8                 lea     edx, [ebp-$28]

* Reference to : TFrmInfoAtu._PROC_007A0A38()
|
006AF77B   E8B8120F00             call    007A0A38
006AF780   8B45D8                 mov     eax, [ebp-$28]
006AF783   50                     push    eax
006AF784   8B07                   mov     eax, [edi]
006AF786   8B8098000000           mov     eax, [eax+$0098]
006AF78C   8B10                   mov     edx, [eax]
006AF78E   FF5258                 call    dword ptr [edx+$58]
006AF791   8BC8                   mov     ecx, eax
006AF793   B854FB6A00             mov     eax, $006AFB54
006AF798   5A                     pop     edx

|
006AF799   E82A2F0F00             call    007A26C8
006AF79E   8D45C4                 lea     eax, [ebp-$3C]
006AF7A1   50                     push    eax

* Possible String Reference to: 'direita'
|
006AF7A2   6860FB6A00             push    $006AFB60
006AF7A7   8D45B0                 lea     eax, [ebp-$50]
006AF7AA   50                     push    eax
006AF7AB   8D55A8                 lea     edx, [ebp-$58]
006AF7AE   B870FB6A00             mov     eax, $006AFB70

|
006AF7B3   E848471000             call    007B3F00
006AF7B8   8B45A8                 mov     eax, [ebp-$58]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AF7BB   E82CDED5FF             call    0040D5EC
006AF7C0   83C4F4                 add     esp, -$0C
006AF7C3   DB3C24                 fstp    tbyte ptr [esp]
006AF7C6   9B                     wait
006AF7C7   8D55AC                 lea     edx, [ebp-$54]

* Possible String Reference to: '#.###'
|
006AF7CA   B87CFB6A00             mov     eax, $006AFB7C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AF7CF   E868DDD5FF             call    0040D53C
006AF7D4   8B45AC                 mov     eax, [ebp-$54]
006AF7D7   50                     push    eax
006AF7D8   8B07                   mov     eax, [edi]
006AF7DA   8B8080000000           mov     eax, [eax+$0080]
006AF7E0   8B10                   mov     edx, [eax]
006AF7E2   FF5258                 call    dword ptr [edx+$58]
006AF7E5   8BC8                   mov     ecx, eax
006AF7E7   B854FB6A00             mov     eax, $006AFB54
006AF7EC   5A                     pop     edx

|
006AF7ED   E8D62E0F00             call    007A26C8
006AF7F2   8B55B0                 mov     edx, [ebp-$50]
006AF7F5   8D45B4                 lea     eax, [ebp-$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006AF7F8   E8C794D6FF             call    00418CC4
006AF7FD   8D45B4                 lea     eax, [ebp-$4C]
006AF800   50                     push    eax
006AF801   8D4598                 lea     eax, [ebp-$68]
006AF804   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006AF806   E8B994D6FF             call    00418CC4
006AF80B   8D4D98                 lea     ecx, [ebp-$68]
006AF80E   33C0                   xor     eax, eax
006AF810   5A                     pop     edx

|
006AF811   E8560B0F00             call    007A036C
006AF816   8D55C4                 lea     edx, [ebp-$3C]
006AF819   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
006AF81C   E8D783D6FF             call    00417BF8

* Possible String Reference to: 'direita'
|
006AF821   6860FB6A00             push    $006AFB60
006AF826   8D45F0                 lea     eax, [ebp-$10]
006AF829   50                     push    eax
006AF82A   8D558C                 lea     edx, [ebp-$74]
006AF82D   8B07                   mov     eax, [edi]
006AF82F   8B80F4000000           mov     eax, [eax+$00F4]
006AF835   8B08                   mov     ecx, [eax]
006AF837   FF5160                 call    dword ptr [ecx+$60]
006AF83A   8B458C                 mov     eax, [ebp-$74]
006AF83D   8D5590                 lea     edx, [ebp-$70]

|
006AF840   E8BB461000             call    007B3F00
006AF845   8B4590                 mov     eax, [ebp-$70]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AF848   E89FDDD5FF             call    0040D5EC
006AF84D   83C4F4                 add     esp, -$0C
006AF850   DB3C24                 fstp    tbyte ptr [esp]
006AF853   9B                     wait
006AF854   8D5594                 lea     edx, [ebp-$6C]

* Possible String Reference to: '#,##0.###'
|
006AF857   B88CFB6A00             mov     eax, $006AFB8C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AF85C   E8DBDCD5FF             call    0040D53C
006AF861   8B4594                 mov     eax, [ebp-$6C]
006AF864   50                     push    eax
006AF865   8B07                   mov     eax, [edi]
006AF867   8B808C000000           mov     eax, [eax+$008C]
006AF86D   8B10                   mov     edx, [eax]
006AF86F   FF5258                 call    dword ptr [edx+$58]
006AF872   8BC8                   mov     ecx, eax
006AF874   B854FB6A00             mov     eax, $006AFB54
006AF879   5A                     pop     edx

|
006AF87A   E8492E0F00             call    007A26C8

* Possible String Reference to: 'direita'
|
006AF87F   6860FB6A00             push    $006AFB60
006AF884   8D45EC                 lea     eax, [ebp-$14]
006AF887   50                     push    eax
006AF888   8D5584                 lea     edx, [ebp-$7C]
006AF88B   8B07                   mov     eax, [edi]
006AF88D   8B8020010000           mov     eax, [eax+$0120]
006AF893   8B08                   mov     ecx, [eax]
006AF895   FF5160                 call    dword ptr [ecx+$60]
006AF898   8B4584                 mov     eax, [ebp-$7C]
006AF89B   8D5588                 lea     edx, [ebp-$78]

* Reference to : TFrmInfoAtu._PROC_007A0A38()
|
006AF89E   E895110F00             call    007A0A38
006AF8A3   8B4588                 mov     eax, [ebp-$78]
006AF8A6   50                     push    eax
006AF8A7   8B07                   mov     eax, [edi]
006AF8A9   8B8088000000           mov     eax, [eax+$0088]
006AF8AF   8B10                   mov     edx, [eax]
006AF8B1   FF5258                 call    dword ptr [edx+$58]
006AF8B4   8BC8                   mov     ecx, eax
006AF8B6   B854FB6A00             mov     eax, $006AFB54
006AF8BB   5A                     pop     edx

|
006AF8BC   E8072E0F00             call    007A26C8

* Possible String Reference to: 'direita'
|
006AF8C1   6860FB6A00             push    $006AFB60
006AF8C6   8D45E8                 lea     eax, [ebp-$18]
006AF8C9   50                     push    eax
006AF8CA   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
006AF8D0   8B07                   mov     eax, [edi]
006AF8D2   8B80F8000000           mov     eax, [eax+$00F8]
006AF8D8   8B08                   mov     ecx, [eax]
006AF8DA   FF5160                 call    dword ptr [ecx+$60]
006AF8DD   8B8578FFFFFF           mov     eax, [ebp+$FFFFFF78]
006AF8E3   8D957CFFFFFF           lea     edx, [ebp+$FFFFFF7C]

|
006AF8E9   E812461000             call    007B3F00
006AF8EE   8B857CFFFFFF           mov     eax, [ebp+$FFFFFF7C]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AF8F4   E8F3DCD5FF             call    0040D5EC
006AF8F9   83C4F4                 add     esp, -$0C
006AF8FC   DB3C24                 fstp    tbyte ptr [esp]
006AF8FF   9B                     wait
006AF900   8D5580                 lea     edx, [ebp-$80]

* Possible String Reference to: '##,##0.00'
|
006AF903   B8A0FB6A00             mov     eax, $006AFBA0

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AF908   E82FDCD5FF             call    0040D53C
006AF90D   8B4580                 mov     eax, [ebp-$80]
006AF910   50                     push    eax
006AF911   8B07                   mov     eax, [edi]
006AF913   8B8090000000           mov     eax, [eax+$0090]
006AF919   8B10                   mov     edx, [eax]
006AF91B   FF5258                 call    dword ptr [edx+$58]
006AF91E   8BC8                   mov     ecx, eax
006AF920   B854FB6A00             mov     eax, $006AFB54
006AF925   5A                     pop     edx

|
006AF926   E89D2D0F00             call    007A26C8

* Possible String Reference to: 'direita'
|
006AF92B   6860FB6A00             push    $006AFB60
006AF930   8D45E4                 lea     eax, [ebp-$1C]
006AF933   50                     push    eax
006AF934   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
006AF93A   8B07                   mov     eax, [edi]
006AF93C   8B80C0010000           mov     eax, [eax+$01C0]
006AF942   8B08                   mov     ecx, [eax]
006AF944   FF5160                 call    dword ptr [ecx+$60]
006AF947   8B856CFFFFFF           mov     eax, [ebp+$FFFFFF6C]
006AF94D   8D9570FFFFFF           lea     edx, [ebp+$FFFFFF70]

|
006AF953   E8A8451000             call    007B3F00
006AF958   8B8570FFFFFF           mov     eax, [ebp+$FFFFFF70]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AF95E   E889DCD5FF             call    0040D5EC
006AF963   83C4F4                 add     esp, -$0C
006AF966   DB3C24                 fstp    tbyte ptr [esp]
006AF969   9B                     wait
006AF96A   8D9574FFFFFF           lea     edx, [ebp+$FFFFFF74]

* Possible String Reference to: '#,###,##0.00'
|
006AF970   B8B4FB6A00             mov     eax, $006AFBB4

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AF975   E8C2DBD5FF             call    0040D53C
006AF97A   8B8574FFFFFF           mov     eax, [ebp+$FFFFFF74]
006AF980   50                     push    eax
006AF981   8B07                   mov     eax, [edi]
006AF983   8B8094000000           mov     eax, [eax+$0094]
006AF989   8B10                   mov     edx, [eax]
006AF98B   FF5258                 call    dword ptr [edx+$58]
006AF98E   8BC8                   mov     ecx, eax
006AF990   B854FB6A00             mov     eax, $006AFB54
006AF995   5A                     pop     edx

|
006AF996   E82D2D0F00             call    007A26C8
006AF99B   8D8D68FFFFFF           lea     ecx, [ebp+$FFFFFF68]
006AF9A1   8B55F8                 mov     edx, [ebp-$08]
006AF9A4   8BC6                   mov     eax, esi

|
006AF9A6   E855F2FFFF             call    006AEC00
006AF9AB   8B45F0                 mov     eax, [ebp-$10]
006AF9AE   50                     push    eax
006AF9AF   8B45EC                 mov     eax, [ebp-$14]
006AF9B2   50                     push    eax
006AF9B3   8B45E8                 mov     eax, [ebp-$18]
006AF9B6   50                     push    eax
006AF9B7   8B45E4                 mov     eax, [ebp-$1C]
006AF9BA   50                     push    eax
006AF9BB   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
006AF9C1   50                     push    eax
006AF9C2   8B4DF4                 mov     ecx, [ebp-$0C]
006AF9C5   8B55FC                 mov     edx, [ebp-$04]
006AF9C8   8BC6                   mov     eax, esi

|
006AF9CA   E811F3FFFF             call    006AECE0
006AF9CF   A158A97D00             mov     eax, dword ptr [$007DA958]
006AF9D4   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AF9D6   BACCFB6A00             mov     edx, $006AFBCC

* Reference to: System.@LStrCmp;
|
006AF9DB   E8C85ED5FF             call    004058A8
006AF9E0   0F85D4000000           jnz     006AFABA
006AF9E6   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AF9EB   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006AF9ED   BAE0FB6A00             mov     edx, $006AFBE0

* Reference to: System.@LStrCmp;
|
006AF9F2   E8B15ED5FF             call    004058A8
006AF9F7   7417                   jz      006AFA10
006AF9F9   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AF9FE   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006AFA00   BAF0FB6A00             mov     edx, $006AFBF0

* Reference to: System.@LStrCmp;
|
006AFA05   E89E5ED5FF             call    004058A8
006AFA0A   0F85AA000000           jnz     006AFABA
006AFA10   A178B47D00             mov     eax, dword ptr [$007DB478]
006AFA15   8B00                   mov     eax, [eax]
006AFA17   8B4068                 mov     eax, [eax+$68]

|
006AFA1A   E81DADEEFF             call    0059A73C

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006AFA1F   E8E0F0FFFF             call    006AEB04
006AFA24   8BD0                   mov     edx, eax
006AFA26   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006AFA2C   E8535CD5FF             call    00405684
006AFA31   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
006AFA37   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AFA38   E827F1FFFF             call    006AEB64
006AFA3D   8D0440                 lea     eax, [eax+eax*2]
006AFA40   8B156CED7D00           mov     edx, [$007DED6C]
006AFA46   8B5482F8               mov     edx, [edx+eax*4-$08]
006AFA4A   58                     pop     eax

* Reference to: System.@LStrCat;
|
006AFA4B   E8145DD5FF             call    00405764
006AFA50   8B9560FFFFFF           mov     edx, [ebp+$FFFFFF60]
006AFA56   A178B47D00             mov     eax, dword ptr [$007DB478]
006AFA5B   8B00                   mov     eax, [eax]
006AFA5D   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006AFA60   E86FAEEEFF             call    0059A8D4

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006AFA65   E89AF0FFFF             call    006AEB04
006AFA6A   8BD0                   mov     edx, eax
006AFA6C   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006AFA72   E80D5CD5FF             call    00405684
006AFA77   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]
006AFA7D   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AFA7E   E8E1F0FFFF             call    006AEB64
006AFA83   8D0440                 lea     eax, [eax+eax*2]
006AFA86   8B156CED7D00           mov     edx, [$007DED6C]
006AFA8C   8B548204               mov     edx, [edx+eax*4+$04]
006AFA90   58                     pop     eax

* Reference to: System.@LStrCat;
|
006AFA91   E8CE5CD5FF             call    00405764
006AFA96   8B955CFFFFFF           mov     edx, [ebp+$FFFFFF5C]
006AFA9C   A178B47D00             mov     eax, dword ptr [$007DB478]
006AFAA1   8B00                   mov     eax, [eax]
006AFAA3   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006AFAA6   E829AEEEFF             call    0059A8D4
006AFAAB   A178B47D00             mov     eax, dword ptr [$007DB478]
006AFAB0   8B00                   mov     eax, [eax]
006AFAB2   8B4068                 mov     eax, [eax+$68]

|
006AFAB5   E826ADEEFF             call    0059A7E0
006AFABA   8BC3                   mov     eax, ebx

* Possible String Reference to: 'ITEM REGISTRADO...'
|
006AFABC   BA04FC6A00             mov     edx, $006AFC04

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AFAC1   E82A5AD5FF             call    004054F0
006AFAC6   EB0C                   jmp     006AFAD4
006AFAC8   8BC3                   mov     eax, ebx

* Possible String Reference to: 'IMPRESSORA NÃO TEM SUPORTE PARA IMP
|                                RESSÃO DOS!'
|
006AFACA   BA20FC6A00             mov     edx, $006AFC20

* Reference to: System.@LStrAsg(void;void;void;void);
|
006AFACF   E81C5AD5FF             call    004054F0
006AFAD4   33C0                   xor     eax, eax
006AFAD6   5A                     pop     edx
006AFAD7   59                     pop     ecx
006AFAD8   59                     pop     ecx
006AFAD9   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006AFADC   682EFB6A00             push    $006AFB2E
006AFAE1   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]
006AFAE7   BA0F000000             mov     edx, $0000000F

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AFAEC   E8CF59D5FF             call    004054C0
006AFAF1   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006AFAF4   E87F4AD6FF             call    00414578
006AFAF9   8D45A8                 lea     eax, [ebp-$58]
006AFAFC   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AFB01   E8BA59D5FF             call    004054C0
006AFB06   8D45B4                 lea     eax, [ebp-$4C]

* Reference to object Variant
|
006AFB09   8B1524114000           mov     edx, [$00401124]
006AFB0F   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006AFB14   E88365D5FF             call    0040609C
006AFB19   8D45D4                 lea     eax, [ebp-$2C]
006AFB1C   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AFB21   E89A59D5FF             call    004054C0
006AFB26   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AFB27(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006AFB27   E90C52D5FF             jmp     00404D38

|
006AFB2C   EBB3                   jmp     006AFAE1
006AFB2E   5F                     pop     edi
006AFB2F   5E                     pop     esi
006AFB30   5B                     pop     ebx
006AFB31   8BE5                   mov     esp, ebp
006AFB33   5D                     pop     ebp
006AFB34   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AFC35(Sender : TObject);
begin
(*
006AFC35   50                     push    eax
006AFC36   4F                     dec     edi
006AFC37   52                     push    edx
006AFC38   54                     push    esp
006AFC39   45                     inc     ebp
006AFC3A   205041                 and     [eax+$41], dl
006AFC3D   52                     push    edx
006AFC3E   41                     inc     ecx
006AFC3F   20494D                 and     [ecx+$4D], cl
006AFC42   50                     push    eax
006AFC43   52                     push    edx
006AFC44   45                     inc     ebp
006AFC45   53                     push    ebx
006AFC46   53                     push    ebx
006AFC47   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AFC48(Sender : TObject);
begin
(*
006AFC48   4F                     dec     edi
006AFC49   20444F53               and     [edi+ecx*2+$53], al
006AFC4D   2100                   and     [eax], eax
006AFC4F   00558B                 add     [ebp-$75], dl
006AFC52   EC                     in      al, dx
006AFC53   33C9                   xor     ecx, ecx
006AFC55   51                     push    ecx
006AFC56   51                     push    ecx
006AFC57   51                     push    ecx
006AFC58   51                     push    ecx
006AFC59   51                     push    ecx
006AFC5A   51                     push    ecx
006AFC5B   51                     push    ecx
006AFC5C   51                     push    ecx
006AFC5D   53                     push    ebx
006AFC5E   56                     push    esi
006AFC5F   57                     push    edi
006AFC60   8BDA                   mov     ebx, edx
006AFC62   8BF0                   mov     esi, eax
006AFC64   33C0                   xor     eax, eax
006AFC66   55                     push    ebp

* Possible String Reference to: 'éÿNÕÿëã_^[‹å]Ã'
|
006AFC67   6834FE6A00             push    $006AFE34

***** TRY
|
006AFC6C   64FF30                 push    dword ptr fs:[eax]
006AFC6F   648920                 mov     fs:[eax], esp
006AFC72   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006AFC74   E82358D5FF             call    0040549C
006AFC79   33DB                   xor     ebx, ebx
006AFC7B   55                     push    ebp
006AFC7C   680AFE6A00             push    $006AFE0A
006AFC81   64FF33                 push    dword ptr fs:[ebx]
006AFC84   648923                 mov     fs:[ebx], esp
006AFC87   33DB                   xor     ebx, ebx
006AFC89   55                     push    ebp
006AFC8A   68F2FD6A00             push    $006AFDF2
006AFC8F   64FF33                 push    dword ptr fs:[ebx]
006AFC92   648923                 mov     fs:[ebx], esp
006AFC95   8D45FC                 lea     eax, [ebp-$04]
006AFC98   50                     push    eax
006AFC99   8D55F0                 lea     edx, [ebp-$10]
006AFC9C   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AFCA1   8B00                   mov     eax, [eax]
006AFCA3   8B80C0010000           mov     eax, [eax+$01C0]
006AFCA9   8B08                   mov     ecx, [eax]
006AFCAB   FF5160                 call    dword ptr [ecx+$60]
006AFCAE   8B45F0                 mov     eax, [ebp-$10]
006AFCB1   8D55F4                 lea     edx, [ebp-$0C]

|
006AFCB4   E847421000             call    007B3F00
006AFCB9   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006AFCBC   E82BD9D5FF             call    0040D5EC
006AFCC1   D80D44FE6A00           fmul    dword ptr [$006AFE44]
006AFCC7   83C4F4                 add     esp, -$0C
006AFCCA   DB3C24                 fstp    tbyte ptr [esp]
006AFCCD   9B                     wait
006AFCCE   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: '#,###,###,##0.00'
|
006AFCD1   B850FE6A00             mov     eax, $006AFE50

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AFCD6   E861D8D5FF             call    0040D53C
006AFCDB   8B45F8                 mov     eax, [ebp-$08]
006AFCDE   50                     push    eax

* Possible String Reference to: 'ITEM '
|
006AFCDF   686CFE6A00             push    $006AFE6C
006AFCE4   8975E4                 mov     [ebp-$1C], esi
006AFCE7   DB45E4                 fild    dword ptr [ebp-$1C]
006AFCEA   83C4F4                 add     esp, -$0C
006AFCED   DB3C24                 fstp    tbyte ptr [esp]
006AFCF0   9B                     wait
006AFCF1   8D55E8                 lea     edx, [ebp-$18]

* Possible String Reference to: '000'
|
006AFCF4   B87CFE6A00             mov     eax, $006AFE7C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006AFCF9   E83ED8D5FF             call    0040D53C
006AFCFE   FF75E8                 push    dword ptr [ebp-$18]

* Possible String Reference to: ' CANCELADO'
|
006AFD01   6888FE6A00             push    $006AFE88
006AFD06   8D45EC                 lea     eax, [ebp-$14]
006AFD09   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006AFD0E   E8095BD5FF             call    0040581C
006AFD13   8B55EC                 mov     edx, [ebp-$14]
006AFD16   8BC6                   mov     eax, esi
006AFD18   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006AFD19   E87EF2FFFF             call    006AEF9C
006AFD1E   A158A97D00             mov     eax, dword ptr [$007DA958]
006AFD23   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AFD25   BA9CFE6A00             mov     edx, $006AFE9C

* Reference to: System.@LStrCmp;
|
006AFD2A   E8795BD5FF             call    004058A8
006AFD2F   0F8583000000           jnz     006AFDB8
006AFD35   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AFD3A   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006AFD3C   BAB0FE6A00             mov     edx, $006AFEB0

* Reference to: System.@LStrCmp;
|
006AFD41   E8625BD5FF             call    004058A8
006AFD46   7413                   jz      006AFD5B
006AFD48   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006AFD4D   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006AFD4F   BAC0FE6A00             mov     edx, $006AFEC0

* Reference to: System.@LStrCmp;
|
006AFD54   E84F5BD5FF             call    004058A8
006AFD59   755D                   jnz     006AFDB8
006AFD5B   A178B47D00             mov     eax, dword ptr [$007DB478]
006AFD60   8B00                   mov     eax, [eax]
006AFD62   8B4068                 mov     eax, [eax+$68]

|
006AFD65   E8D2A9EEFF             call    0059A73C

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006AFD6A   E895EDFFFF             call    006AEB04
006AFD6F   8BD0                   mov     edx, eax
006AFD71   8D45E0                 lea     eax, [ebp-$20]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006AFD74   E80B59D5FF             call    00405684
006AFD79   8D45E0                 lea     eax, [ebp-$20]
006AFD7C   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AFD7D   E8E2EDFFFF             call    006AEB64
006AFD82   8D0440                 lea     eax, [eax+eax*2]
006AFD85   8B156CED7D00           mov     edx, [$007DED6C]
006AFD8B   8B548204               mov     edx, [edx+eax*4+$04]
006AFD8F   58                     pop     eax

* Reference to: System.@LStrCat;
|
006AFD90   E8CF59D5FF             call    00405764
006AFD95   8B55E0                 mov     edx, [ebp-$20]
006AFD98   A178B47D00             mov     eax, dword ptr [$007DB478]
006AFD9D   8B00                   mov     eax, [eax]
006AFD9F   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006AFDA2   E82DABEEFF             call    0059A8D4
006AFDA7   A178B47D00             mov     eax, dword ptr [$007DB478]
006AFDAC   8B00                   mov     eax, [eax]
006AFDAE   8B4068                 mov     eax, [eax+$68]

|
006AFDB1   E82AAAEEFF             call    0059A7E0
006AFDB6   EB30                   jmp     006AFDE8
006AFDB8   A16CED7D00             mov     eax, dword ptr [$007DED6C]

* Reference to: System.@DynArrayHigh;
|
006AFDBD   E83A6CD5FF             call    004069FC
006AFDC2   8BD0                   mov     edx, eax
006AFDC4   85D2                   test    edx, edx
006AFDC6   7C20                   jl      006AFDE8
006AFDC8   42                     inc     edx
006AFDC9   33C0                   xor     eax, eax
006AFDCB   8D0C40                 lea     ecx, [eax+eax*2]
006AFDCE   8B1D6CED7D00           mov     ebx, [$007DED6C]
006AFDD4   3B348B                 cmp     esi, [ebx+ecx*4]
006AFDD7   750B                   jnz     006AFDE4
006AFDD9   8B1D6CED7D00           mov     ebx, [$007DED6C]
006AFDDF   C6448B0801             mov     byte ptr [ebx+ecx*4+$08], $01
006AFDE4   40                     inc     eax
006AFDE5   4A                     dec     edx
006AFDE6   75E3                   jnz     006AFDCB
006AFDE8   33C0                   xor     eax, eax
006AFDEA   5A                     pop     edx
006AFDEB   59                     pop     ecx
006AFDEC   59                     pop     ecx
006AFDED   648910                 mov     fs:[eax], edx
006AFDF0   EB0A                   jmp     006AFDFC

* Reference to: System.@HandleAnyException;
|
006AFDF2   E98D4CD5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006AFDF7   E8B450D5FF             call    00404EB0

****** END
|
006AFDFC   33C0                   xor     eax, eax
006AFDFE   5A                     pop     edx
006AFDFF   59                     pop     ecx
006AFE00   59                     pop     ecx
006AFE01   648910                 mov     fs:[eax], edx

****** FINALLY
|
006AFE04   6811FE6A00             push    $006AFE11
006AFE09   C3                     ret


* Reference to: System.@HandleFinally;
|
006AFE0A   E9294FD5FF             jmp     00404D38
006AFE0F   EBF8                   jmp     006AFE09

****** END
|
006AFE11   33C0                   xor     eax, eax
006AFE13   5A                     pop     edx
006AFE14   59                     pop     ecx
006AFE15   59                     pop     ecx
006AFE16   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006AFE19   683BFE6A00             push    $006AFE3B
006AFE1E   8D45E0                 lea     eax, [ebp-$20]

* Reference to: System.@LStrClr(void;void);
|
006AFE21   E87656D5FF             call    0040549C
006AFE26   8D45E8                 lea     eax, [ebp-$18]
006AFE29   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006AFE2E   E88D56D5FF             call    004054C0
006AFE33   C3                     ret


* Reference to: System.@HandleFinally;
|
006AFE34   E9FF4ED5FF             jmp     00404D38
006AFE39   EBE3                   jmp     006AFE1E

****** END
|
006AFE3B   5F                     pop     edi
006AFE3C   5E                     pop     esi
006AFE3D   5B                     pop     ebx
006AFE3E   8BE5                   mov     esp, ebp
006AFE40   5D                     pop     ebp
006AFE41   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006AFECD(Sender : TObject);
begin
(*
006AFECD   8BEC                   mov     ebp, esp
006AFECF   33C9                   xor     ecx, ecx
006AFED1   51                     push    ecx
006AFED2   51                     push    ecx
006AFED3   51                     push    ecx
006AFED4   51                     push    ecx
006AFED5   51                     push    ecx
006AFED6   51                     push    ecx
006AFED7   51                     push    ecx
006AFED8   53                     push    ebx
006AFED9   56                     push    esi
006AFEDA   57                     push    edi
006AFEDB   8BD8                   mov     ebx, eax
006AFEDD   33C0                   xor     eax, eax
006AFEDF   55                     push    ebp

* Possible String Reference to: 'éVLÕÿëë_^[‹å]Ã'
|
006AFEE0   68DD006B00             push    $006B00DD

***** TRY
|
006AFEE5   64FF30                 push    dword ptr fs:[eax]
006AFEE8   648920                 mov     fs:[eax], esp
006AFEEB   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006AFEED   E8AA55D5FF             call    0040549C
006AFEF2   33C0                   xor     eax, eax
006AFEF4   55                     push    ebp
006AFEF5   68BB006B00             push    $006B00BB

***** TRY
|
006AFEFA   64FF30                 push    dword ptr fs:[eax]
006AFEFD   648920                 mov     fs:[eax], esp
006AFF00   33C0                   xor     eax, eax
006AFF02   55                     push    ebp
006AFF03   68A3006B00             push    $006B00A3

***** TRY
|
006AFF08   64FF30                 push    dword ptr fs:[eax]
006AFF0B   648920                 mov     fs:[eax], esp

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AFF0E   E851ECFFFF             call    006AEB64
006AFF13   8BD8                   mov     ebx, eax
006AFF15   43                     inc     ebx

* Possible String Reference to: 'esquerda'
|
006AFF16   68F4006B00             push    $006B00F4
006AFF1B   8D45F8                 lea     eax, [ebp-$08]
006AFF1E   50                     push    eax
006AFF1F   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AFF24   8B00                   mov     eax, [eax]
006AFF26   8B8098000000           mov     eax, [eax+$0098]
006AFF2C   8B10                   mov     edx, [eax]
006AFF2E   FF5258                 call    dword ptr [edx+$58]
006AFF31   8BC8                   mov     ecx, eax
006AFF33   BA08016B00             mov     edx, $006B0108
006AFF38   B808016B00             mov     eax, $006B0108

|
006AFF3D   E886270F00             call    007A26C8
006AFF42   8B55F8                 mov     edx, [ebp-$08]
006AFF45   8D4DFC                 lea     ecx, [ebp-$04]
006AFF48   33C0                   xor     eax, eax

|
006AFF4A   E8B1ECFFFF             call    006AEC00

* Reference to : TfrmGerenciador._PROC_006AEB74()
|
006AFF4F   E820ECFFFF             call    006AEB74

* Reference to : TfrmGerenciador._PROC_006AEB74()
|
006AFF54   E81BECFFFF             call    006AEB74

|
006AFF59   E8D6EBFFFF             call    006AEB34

* Possible String Reference to: 'centro'
|
006AFF5E   6814016B00             push    $006B0114
006AFF63   8D45F4                 lea     eax, [ebp-$0C]
006AFF66   50                     push    eax
006AFF67   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AFF6C   8B00                   mov     eax, [eax]
006AFF6E   8B8098000000           mov     eax, [eax+$0098]
006AFF74   8B10                   mov     edx, [eax]
006AFF76   FF5258                 call    dword ptr [edx+$58]
006AFF79   8BC8                   mov     ecx, eax

* Possible String Reference to: '*** CUPOM CANCELADO ***'
|
006AFF7B   BA24016B00             mov     edx, $006B0124
006AFF80   B844016B00             mov     eax, $006B0144

|
006AFF85   E83E270F00             call    007A26C8
006AFF8A   8B45F4                 mov     eax, [ebp-$0C]
006AFF8D   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006AFF8E   E8D1EBFFFF             call    006AEB64
006AFF93   8D0440                 lea     eax, [eax+eax*2]
006AFF96   8B156CED7D00           mov     edx, [$007DED6C]
006AFF9C   8D448204               lea     eax, [edx+eax*4+$04]
006AFFA0   50                     push    eax
006AFFA1   8D45F0                 lea     eax, [ebp-$10]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
006AFFA4   E8EFEBFFFF             call    006AEB98
006AFFA9   8B55F0                 mov     edx, [ebp-$10]
006AFFAC   58                     pop     eax
006AFFAD   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006AFFAE   E8F557D5FF             call    004057A8

* Reference to : TfrmGerenciador._PROC_006AEB74()
|
006AFFB3   E8BCEBFFFF             call    006AEB74

* Reference to : TfrmGerenciador._PROC_006AEB74()
|
006AFFB8   E8B7EBFFFF             call    006AEB74

* Possible String Reference to: 'esquerda'
|
006AFFBD   68F4006B00             push    $006B00F4
006AFFC2   8D45E8                 lea     eax, [ebp-$18]
006AFFC5   50                     push    eax
006AFFC6   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006AFFCB   8B00                   mov     eax, [eax]
006AFFCD   8B8098000000           mov     eax, [eax+$0098]
006AFFD3   8B10                   mov     edx, [eax]
006AFFD5   FF5258                 call    dword ptr [edx+$58]
006AFFD8   8BC8                   mov     ecx, eax
006AFFDA   BA08016B00             mov     edx, $006B0108
006AFFDF   B808016B00             mov     eax, $006B0108

|
006AFFE4   E8DF260F00             call    007A26C8
006AFFE9   8B55E8                 mov     edx, [ebp-$18]
006AFFEC   8D4DEC                 lea     ecx, [ebp-$14]
006AFFEF   33C0                   xor     eax, eax

|
006AFFF1   E80AECFFFF             call    006AEC00
006AFFF6   A158A97D00             mov     eax, dword ptr [$007DA958]
006AFFFB   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006AFFFD   BA50016B00             mov     edx, $006B0150

* Reference to: System.@LStrCmp;
|
006B0002   E8A158D5FF             call    004058A8
006B0007   0F858C000000           jnz     006B0099
006B000D   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0012   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B0014   BA64016B00             mov     edx, $006B0164

* Reference to: System.@LStrCmp;
|
006B0019   E88A58D5FF             call    004058A8
006B001E   7413                   jz      006B0033
006B0020   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0025   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B0027   BA74016B00             mov     edx, $006B0174

* Reference to: System.@LStrCmp;
|
006B002C   E87758D5FF             call    004058A8
006B0031   7566                   jnz     006B0099
006B0033   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0038   8B00                   mov     eax, [eax]
006B003A   8B4068                 mov     eax, [eax+$68]

|
006B003D   E8FAA6EEFF             call    0059A73C
006B0042   8BF3                   mov     esi, ebx

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B0044   E81BEBFFFF             call    006AEB64
006B0049   8BD8                   mov     ebx, eax
006B004B   2BDE                   sub     ebx, esi
006B004D   7C3B                   jl      006B008A
006B004F   43                     inc     ebx

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B0050   E8AFEAFFFF             call    006AEB04
006B0055   8BD0                   mov     edx, eax
006B0057   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B005A   E82556D5FF             call    00405684
006B005F   8D45E4                 lea     eax, [ebp-$1C]
006B0062   8D1476                 lea     edx, [esi+esi*2]
006B0065   8B0D6CED7D00           mov     ecx, [$007DED6C]
006B006B   8B549104               mov     edx, [ecx+edx*4+$04]

* Reference to: System.@LStrCat;
|
006B006F   E8F056D5FF             call    00405764
006B0074   8B55E4                 mov     edx, [ebp-$1C]
006B0077   A178B47D00             mov     eax, dword ptr [$007DB478]
006B007C   8B00                   mov     eax, [eax]
006B007E   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B0081   E84EA8EEFF             call    0059A8D4
006B0086   46                     inc     esi
006B0087   4B                     dec     ebx
006B0088   75C6                   jnz     006B0050
006B008A   A178B47D00             mov     eax, dword ptr [$007DB478]
006B008F   8B00                   mov     eax, [eax]
006B0091   8B4068                 mov     eax, [eax+$68]

|
006B0094   E847A7EEFF             call    0059A7E0
006B0099   33C0                   xor     eax, eax
006B009B   5A                     pop     edx
006B009C   59                     pop     ecx
006B009D   59                     pop     ecx
006B009E   648910                 mov     fs:[eax], edx
006B00A1   EB0A                   jmp     006B00AD

* Reference to: System.@HandleAnyException;
|
006B00A3   E9DC49D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B00A8   E8034ED5FF             call    00404EB0

****** END
|
006B00AD   33C0                   xor     eax, eax
006B00AF   5A                     pop     edx
006B00B0   59                     pop     ecx
006B00B1   59                     pop     ecx
006B00B2   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B00B5   68C2006B00             push    $006B00C2
006B00BA   C3                     ret


* Reference to: System.@HandleFinally;
|
006B00BB   E9784CD5FF             jmp     00404D38
006B00C0   EBF8                   jmp     006B00BA

****** END
|
006B00C2   33C0                   xor     eax, eax
006B00C4   5A                     pop     edx
006B00C5   59                     pop     ecx
006B00C6   59                     pop     ecx
006B00C7   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006B00CA   68E4006B00             push    $006B00E4
006B00CF   8D45E4                 lea     eax, [ebp-$1C]
006B00D2   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B00D7   E8E453D5FF             call    004054C0
006B00DC   C3                     ret


* Reference to: System.@HandleFinally;
|
006B00DD   E9564CD5FF             jmp     00404D38
006B00E2   EBEB                   jmp     006B00CF

****** END
|
006B00E4   5F                     pop     edi
006B00E5   5E                     pop     esi
006B00E6   5B                     pop     ebx
006B00E7   8BE5                   mov     esp, ebp
006B00E9   5D                     pop     ebp
006B00EA   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B012A(Sender : TObject);
begin
(*
006B012A   50                     push    eax
006B012B   4F                     dec     edi
006B012C   4D                     dec     ebp
006B012D   204341                 and     [ebx+$41], al
006B0130   4E                     dec     esi
006B0131   43                     inc     ebx
006B0132   45                     inc     ebp
006B0133   4C                     dec     esp
006B0134   41                     inc     ecx
006B0135   44                     inc     esp
006B0136   4F                     dec     edi
006B0137   202A                   and     [edx], ch
006B0139   2A2A                   sub     ch, byte ptr [edx]
006B013B   00FF                   add     bh, bh
006B013D   FFFF                   DB  $FF, $FF  //      
006B013F   FF01                   inc     dword ptr [ecx]
006B0141   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006B0181(Sender : TObject);
begin
(*
006B0181   8BEC                   mov     ebp, esp
006B0183   33C9                   xor     ecx, ecx
006B0185   51                     push    ecx
006B0186   51                     push    ecx
006B0187   51                     push    ecx
006B0188   51                     push    ecx
006B0189   51                     push    ecx
006B018A   51                     push    ecx
006B018B   53                     push    ebx
006B018C   56                     push    esi
006B018D   57                     push    edi
006B018E   8BF2                   mov     esi, edx
006B0190   8BD8                   mov     ebx, eax
006B0192   33C0                   xor     eax, eax
006B0194   55                     push    ebp

* Possible String Reference to: 'é0JÕÿëë_^[‹å]Ã'
|
006B0195   6803036B00             push    $006B0303

***** TRY
|
006B019A   64FF30                 push    dword ptr fs:[eax]
006B019D   648920                 mov     fs:[eax], esp
006B01A0   8BC6                   mov     eax, esi

* Reference to: System.@LStrClr(void;void);
|
006B01A2   E8F552D5FF             call    0040549C
006B01A7   33C0                   xor     eax, eax
006B01A9   55                     push    ebp
006B01AA   68E1026B00             push    $006B02E1

***** TRY
|
006B01AF   64FF30                 push    dword ptr fs:[eax]
006B01B2   648920                 mov     fs:[eax], esp
006B01B5   33C0                   xor     eax, eax
006B01B7   55                     push    ebp
006B01B8   68C9026B00             push    $006B02C9

***** TRY
|
006B01BD   64FF30                 push    dword ptr fs:[eax]
006B01C0   648920                 mov     fs:[eax], esp
006B01C3   8D45FC                 lea     eax, [ebp-$04]
006B01C6   50                     push    eax
006B01C7   8D55F0                 lea     edx, [ebp-$10]
006B01CA   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B01CF   8B00                   mov     eax, [eax]
006B01D1   8B80C0010000           mov     eax, [eax+$01C0]
006B01D7   8B08                   mov     ecx, [eax]
006B01D9   FF5160                 call    dword ptr [ecx+$60]
006B01DC   8B45F0                 mov     eax, [ebp-$10]
006B01DF   8D55F4                 lea     edx, [ebp-$0C]

|
006B01E2   E8193D1000             call    007B3F00
006B01E7   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006B01EA   E8FDD3D5FF             call    0040D5EC
006B01EF   83C4F4                 add     esp, -$0C
006B01F2   DB3C24                 fstp    tbyte ptr [esp]
006B01F5   9B                     wait
006B01F6   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: '#,###,###,##0.00'
|
006B01F9   B81C036B00             mov     eax, $006B031C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006B01FE   E839D3D5FF             call    0040D53C
006B0203   8B45F8                 mov     eax, [ebp-$08]
006B0206   50                     push    eax
006B0207   8D55EC                 lea     edx, [ebp-$14]
006B020A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B020F   8B00                   mov     eax, [eax]
006B0211   8B80CC000000           mov     eax, [eax+$00CC]
006B0217   8B08                   mov     ecx, [eax]
006B0219   FF5160                 call    dword ptr [ecx+$60]
006B021C   8B55EC                 mov     edx, [ebp-$14]
006B021F   8BC3                   mov     eax, ebx
006B0221   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006B0222   E875EDFFFF             call    006AEF9C
006B0227   A158A97D00             mov     eax, dword ptr [$007DA958]
006B022C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006B022E   BA38036B00             mov     edx, $006B0338

* Reference to: System.@LStrCmp;
|
006B0233   E87056D5FF             call    004058A8
006B0238   0F8581000000           jnz     006B02BF
006B023E   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0243   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B0245   BA4C036B00             mov     edx, $006B034C

* Reference to: System.@LStrCmp;
|
006B024A   E85956D5FF             call    004058A8
006B024F   7413                   jz      006B0264
006B0251   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0256   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B0258   BA5C036B00             mov     edx, $006B035C

* Reference to: System.@LStrCmp;
|
006B025D   E84656D5FF             call    004058A8
006B0262   755B                   jnz     006B02BF
006B0264   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0269   8B00                   mov     eax, [eax]
006B026B   8B4068                 mov     eax, [eax+$68]

|
006B026E   E8C9A4EEFF             call    0059A73C

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B0273   E88CE8FFFF             call    006AEB04
006B0278   8BD0                   mov     edx, eax
006B027A   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B027D   E80254D5FF             call    00405684
006B0282   8D45E8                 lea     eax, [ebp-$18]
006B0285   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B0286   E8D9E8FFFF             call    006AEB64
006B028B   8D0440                 lea     eax, [eax+eax*2]
006B028E   8B156CED7D00           mov     edx, [$007DED6C]
006B0294   8B548204               mov     edx, [edx+eax*4+$04]
006B0298   58                     pop     eax

* Reference to: System.@LStrCat;
|
006B0299   E8C654D5FF             call    00405764
006B029E   8B55E8                 mov     edx, [ebp-$18]
006B02A1   A178B47D00             mov     eax, dword ptr [$007DB478]
006B02A6   8B00                   mov     eax, [eax]
006B02A8   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B02AB   E824A6EEFF             call    0059A8D4
006B02B0   A178B47D00             mov     eax, dword ptr [$007DB478]
006B02B5   8B00                   mov     eax, [eax]
006B02B7   8B4068                 mov     eax, [eax+$68]

|
006B02BA   E821A5EEFF             call    0059A7E0
006B02BF   33C0                   xor     eax, eax
006B02C1   5A                     pop     edx
006B02C2   59                     pop     ecx
006B02C3   59                     pop     ecx
006B02C4   648910                 mov     fs:[eax], edx
006B02C7   EB0A                   jmp     006B02D3

* Reference to: System.@HandleAnyException;
|
006B02C9   E9B647D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B02CE   E8DD4BD5FF             call    00404EB0

****** END
|
006B02D3   33C0                   xor     eax, eax
006B02D5   5A                     pop     edx
006B02D6   59                     pop     ecx
006B02D7   59                     pop     ecx
006B02D8   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B02DB   68E8026B00             push    $006B02E8
006B02E0   C3                     ret


* Reference to: System.@HandleFinally;
|
006B02E1   E9524AD5FF             jmp     00404D38
006B02E6   EBF8                   jmp     006B02E0

****** END
|
006B02E8   33C0                   xor     eax, eax
006B02EA   5A                     pop     edx
006B02EB   59                     pop     ecx
006B02EC   59                     pop     ecx
006B02ED   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006B02F0   680A036B00             push    $006B030A
006B02F5   8D45E8                 lea     eax, [ebp-$18]
006B02F8   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B02FD   E8BE51D5FF             call    004054C0
006B0302   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0303   E9304AD5FF             jmp     00404D38
006B0308   EBEB                   jmp     006B02F5

****** END
|
006B030A   5F                     pop     edi
006B030B   5E                     pop     esi
006B030C   5B                     pop     ebx
006B030D   8BE5                   mov     esp, ebp
006B030F   5D                     pop     ebp
006B0310   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B0369(Sender : TObject);
begin
(*
006B0369   8BEC                   mov     ebp, esp
006B036B   33C9                   xor     ecx, ecx
006B036D   51                     push    ecx
006B036E   51                     push    ecx
006B036F   51                     push    ecx
006B0370   51                     push    ecx
006B0371   51                     push    ecx
006B0372   51                     push    ecx
006B0373   51                     push    ecx
006B0374   51                     push    ecx
006B0375   53                     push    ebx
006B0376   56                     push    esi
006B0377   57                     push    edi
006B0378   8BD8                   mov     ebx, eax
006B037A   33C0                   xor     eax, eax
006B037C   55                     push    ebp

* Possible String Reference to: 'éüGÕÿëë_^[‹å]Ã'
|
006B037D   6837056B00             push    $006B0537

***** TRY
|
006B0382   64FF30                 push    dword ptr fs:[eax]
006B0385   648920                 mov     fs:[eax], esp
006B0388   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006B038A   E80D51D5FF             call    0040549C
006B038F   33C0                   xor     eax, eax
006B0391   55                     push    ebp
006B0392   6815056B00             push    $006B0515

***** TRY
|
006B0397   64FF30                 push    dword ptr fs:[eax]
006B039A   648920                 mov     fs:[eax], esp
006B039D   33C0                   xor     eax, eax
006B039F   55                     push    ebp
006B03A0   68FD046B00             push    $006B04FD

***** TRY
|
006B03A5   64FF30                 push    dword ptr fs:[eax]
006B03A8   648920                 mov     fs:[eax], esp

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B03AB   E8B4E7FFFF             call    006AEB64
006B03B0   8BD8                   mov     ebx, eax
006B03B2   43                     inc     ebx
006B03B3   8D45FC                 lea     eax, [ebp-$04]
006B03B6   50                     push    eax
006B03B7   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B03BC   8B00                   mov     eax, [eax]
006B03BE   8B80C0010000           mov     eax, [eax+$01C0]
006B03C4   8B10                   mov     edx, [eax]
006B03C6   FF5254                 call    dword ptr [edx+$54]
006B03C9   83C4F4                 add     esp, -$0C
006B03CC   DB3C24                 fstp    tbyte ptr [esp]
006B03CF   9B                     wait
006B03D0   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: '#,###,###,##0.00'
|
006B03D3   B850056B00             mov     eax, $006B0550

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006B03D8   E85FD1D5FF             call    0040D53C
006B03DD   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: 'SUBTOTAL'
|
006B03E0   BA6C056B00             mov     edx, $006B056C
006B03E5   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006B03E7   E8B0EBFFFF             call    006AEF9C
006B03EC   8D45F4                 lea     eax, [ebp-$0C]
006B03EF   50                     push    eax
006B03F0   8D55E8                 lea     edx, [ebp-$18]
006B03F3   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B03F8   8B00                   mov     eax, [eax]
006B03FA   8B80C0010000           mov     eax, [eax+$01C0]
006B0400   8B08                   mov     ecx, [eax]
006B0402   FF5160                 call    dword ptr [ecx+$60]
006B0405   8B45E8                 mov     eax, [ebp-$18]
006B0408   8D55EC                 lea     edx, [ebp-$14]

|
006B040B   E8F03A1000             call    007B3F00
006B0410   8B45EC                 mov     eax, [ebp-$14]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006B0413   E8D4D1D5FF             call    0040D5EC
006B0418   83C4F4                 add     esp, -$0C
006B041B   DB3C24                 fstp    tbyte ptr [esp]
006B041E   9B                     wait
006B041F   8D55F0                 lea     edx, [ebp-$10]

* Possible String Reference to: '#,###,###,##0.00'
|
006B0422   B850056B00             mov     eax, $006B0550

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006B0427   E810D1D5FF             call    0040D53C
006B042C   8B45F0                 mov     eax, [ebp-$10]
006B042F   50                     push    eax
006B0430   8D55E4                 lea     edx, [ebp-$1C]
006B0433   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0438   8B00                   mov     eax, [eax]
006B043A   8B80CC000000           mov     eax, [eax+$00CC]
006B0440   8B08                   mov     ecx, [eax]
006B0442   FF5160                 call    dword ptr [ecx+$60]
006B0445   8B55E4                 mov     edx, [ebp-$1C]
006B0448   33C0                   xor     eax, eax
006B044A   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006B044B   E84CEBFFFF             call    006AEF9C
006B0450   A158A97D00             mov     eax, dword ptr [$007DA958]
006B0455   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006B0457   BA80056B00             mov     edx, $006B0580

* Reference to: System.@LStrCmp;
|
006B045C   E84754D5FF             call    004058A8
006B0461   0F858C000000           jnz     006B04F3
006B0467   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B046C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B046E   BA94056B00             mov     edx, $006B0594

* Reference to: System.@LStrCmp;
|
006B0473   E83054D5FF             call    004058A8
006B0478   7413                   jz      006B048D
006B047A   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B047F   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B0481   BAA4056B00             mov     edx, $006B05A4

* Reference to: System.@LStrCmp;
|
006B0486   E81D54D5FF             call    004058A8
006B048B   7566                   jnz     006B04F3
006B048D   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0492   8B00                   mov     eax, [eax]
006B0494   8B4068                 mov     eax, [eax+$68]

|
006B0497   E8A0A2EEFF             call    0059A73C
006B049C   8BF3                   mov     esi, ebx

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B049E   E8C1E6FFFF             call    006AEB64
006B04A3   8BD8                   mov     ebx, eax
006B04A5   2BDE                   sub     ebx, esi
006B04A7   7C3B                   jl      006B04E4
006B04A9   43                     inc     ebx

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B04AA   E855E6FFFF             call    006AEB04
006B04AF   8BD0                   mov     edx, eax
006B04B1   8D45E0                 lea     eax, [ebp-$20]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B04B4   E8CB51D5FF             call    00405684
006B04B9   8D45E0                 lea     eax, [ebp-$20]
006B04BC   8D1476                 lea     edx, [esi+esi*2]
006B04BF   8B0D6CED7D00           mov     ecx, [$007DED6C]
006B04C5   8B549104               mov     edx, [ecx+edx*4+$04]

* Reference to: System.@LStrCat;
|
006B04C9   E89652D5FF             call    00405764
006B04CE   8B55E0                 mov     edx, [ebp-$20]
006B04D1   A178B47D00             mov     eax, dword ptr [$007DB478]
006B04D6   8B00                   mov     eax, [eax]
006B04D8   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B04DB   E8F4A3EEFF             call    0059A8D4
006B04E0   46                     inc     esi
006B04E1   4B                     dec     ebx
006B04E2   75C6                   jnz     006B04AA
006B04E4   A178B47D00             mov     eax, dword ptr [$007DB478]
006B04E9   8B00                   mov     eax, [eax]
006B04EB   8B4068                 mov     eax, [eax+$68]

|
006B04EE   E8EDA2EEFF             call    0059A7E0
006B04F3   33C0                   xor     eax, eax
006B04F5   5A                     pop     edx
006B04F6   59                     pop     ecx
006B04F7   59                     pop     ecx
006B04F8   648910                 mov     fs:[eax], edx
006B04FB   EB0A                   jmp     006B0507

* Reference to: System.@HandleAnyException;
|
006B04FD   E98245D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B0502   E8A949D5FF             call    00404EB0

****** END
|
006B0507   33C0                   xor     eax, eax
006B0509   5A                     pop     edx
006B050A   59                     pop     ecx
006B050B   59                     pop     ecx
006B050C   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B050F   681C056B00             push    $006B051C
006B0514   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0515   E91E48D5FF             jmp     00404D38
006B051A   EBF8                   jmp     006B0514

****** END
|
006B051C   33C0                   xor     eax, eax
006B051E   5A                     pop     edx
006B051F   59                     pop     ecx
006B0520   59                     pop     ecx
006B0521   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006B0524   683E056B00             push    $006B053E
006B0529   8D45E0                 lea     eax, [ebp-$20]
006B052C   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B0531   E88A4FD5FF             call    004054C0
006B0536   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0537   E9FC47D5FF             jmp     00404D38
006B053C   EBEB                   jmp     006B0529

****** END
|
006B053E   5F                     pop     edi
006B053F   5E                     pop     esi
006B0540   5B                     pop     ebx
006B0541   8BE5                   mov     esp, ebp
006B0543   5D                     pop     ebp
006B0544   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B056E(Sender : TObject);
begin
(*
006B056E   42                     inc     edx
006B056F   54                     push    esp
006B0570   4F                     dec     edi
006B0571   54                     push    esp
006B0572   41                     inc     ecx
006B0573   4C                     dec     esp
006B0574   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006B05B1(Sender : TObject);
begin
(*
006B05B1   8BEC                   mov     ebp, esp
006B05B3   33C9                   xor     ecx, ecx
006B05B5   51                     push    ecx
006B05B6   51                     push    ecx
006B05B7   51                     push    ecx
006B05B8   51                     push    ecx
006B05B9   51                     push    ecx
006B05BA   51                     push    ecx
006B05BB   51                     push    ecx
006B05BC   51                     push    ecx
006B05BD   53                     push    ebx
006B05BE   56                     push    esi
006B05BF   57                     push    edi
006B05C0   8BD8                   mov     ebx, eax
006B05C2   33C0                   xor     eax, eax
006B05C4   55                     push    ebp

* Possible String Reference to: 'é¾EÕÿëë_^[‹å]Ã'
|
006B05C5   6875076B00             push    $006B0775

***** TRY
|
006B05CA   64FF30                 push    dword ptr fs:[eax]
006B05CD   648920                 mov     fs:[eax], esp
006B05D0   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006B05D2   E8C54ED5FF             call    0040549C
006B05D7   33C0                   xor     eax, eax
006B05D9   55                     push    ebp
006B05DA   6853076B00             push    $006B0753

***** TRY
|
006B05DF   64FF30                 push    dword ptr fs:[eax]
006B05E2   648920                 mov     fs:[eax], esp
006B05E5   33C0                   xor     eax, eax
006B05E7   55                     push    ebp
006B05E8   683B076B00             push    $006B073B

***** TRY
|
006B05ED   64FF30                 push    dword ptr fs:[eax]
006B05F0   648920                 mov     fs:[eax], esp

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B05F3   E86CE5FFFF             call    006AEB64
006B05F8   8BD8                   mov     ebx, eax
006B05FA   43                     inc     ebx
006B05FB   8D45FC                 lea     eax, [ebp-$04]
006B05FE   50                     push    eax
006B05FF   A130B57D00             mov     eax, dword ptr [$007DB530]
006B0604   668B5008               mov     dx, word ptr [eax+$08]
006B0608   52                     push    edx
006B0609   FF7004                 push    dword ptr [eax+$04]
006B060C   FF30                   push    dword ptr [eax]
006B060E   8D55F8                 lea     edx, [ebp-$08]

* Possible String Reference to: '#,###,###,##0.00'
|
006B0611   B88C076B00             mov     eax, $006B078C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006B0616   E821CFD5FF             call    0040D53C
006B061B   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: 'SUBTOTAL'
|
006B061E   BAA8076B00             mov     edx, $006B07A8
006B0623   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006B0625   E872E9FFFF             call    006AEF9C
006B062A   8D45F4                 lea     eax, [ebp-$0C]
006B062D   50                     push    eax
006B062E   8D55E8                 lea     edx, [ebp-$18]
006B0631   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0636   8B00                   mov     eax, [eax]
006B0638   8B80C0010000           mov     eax, [eax+$01C0]
006B063E   8B08                   mov     ecx, [eax]
006B0640   FF5160                 call    dword ptr [ecx+$60]
006B0643   8B45E8                 mov     eax, [ebp-$18]
006B0646   8D55EC                 lea     edx, [ebp-$14]

|
006B0649   E8B2381000             call    007B3F00
006B064E   8B45EC                 mov     eax, [ebp-$14]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006B0651   E896CFD5FF             call    0040D5EC
006B0656   83C4F4                 add     esp, -$0C
006B0659   DB3C24                 fstp    tbyte ptr [esp]
006B065C   9B                     wait
006B065D   8D55F0                 lea     edx, [ebp-$10]

* Possible String Reference to: '#,###,###,##0.00'
|
006B0660   B88C076B00             mov     eax, $006B078C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006B0665   E8D2CED5FF             call    0040D53C
006B066A   8B45F0                 mov     eax, [ebp-$10]
006B066D   50                     push    eax
006B066E   8D55E4                 lea     edx, [ebp-$1C]
006B0671   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0676   8B00                   mov     eax, [eax]
006B0678   8B80CC000000           mov     eax, [eax+$00CC]
006B067E   8B08                   mov     ecx, [eax]
006B0680   FF5160                 call    dword ptr [ecx+$60]
006B0683   8B55E4                 mov     edx, [ebp-$1C]
006B0686   33C0                   xor     eax, eax
006B0688   59                     pop     ecx

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006B0689   E80EE9FFFF             call    006AEF9C
006B068E   A158A97D00             mov     eax, dword ptr [$007DA958]
006B0693   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006B0695   BABC076B00             mov     edx, $006B07BC

* Reference to: System.@LStrCmp;
|
006B069A   E80952D5FF             call    004058A8
006B069F   0F858C000000           jnz     006B0731
006B06A5   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B06AA   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B06AC   BAD0076B00             mov     edx, $006B07D0

* Reference to: System.@LStrCmp;
|
006B06B1   E8F251D5FF             call    004058A8
006B06B6   7413                   jz      006B06CB
006B06B8   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B06BD   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B06BF   BAE0076B00             mov     edx, $006B07E0

* Reference to: System.@LStrCmp;
|
006B06C4   E8DF51D5FF             call    004058A8
006B06C9   7566                   jnz     006B0731
006B06CB   A178B47D00             mov     eax, dword ptr [$007DB478]
006B06D0   8B00                   mov     eax, [eax]
006B06D2   8B4068                 mov     eax, [eax+$68]

|
006B06D5   E862A0EEFF             call    0059A73C
006B06DA   8BF3                   mov     esi, ebx

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B06DC   E883E4FFFF             call    006AEB64
006B06E1   8BD8                   mov     ebx, eax
006B06E3   2BDE                   sub     ebx, esi
006B06E5   7C3B                   jl      006B0722
006B06E7   43                     inc     ebx

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B06E8   E817E4FFFF             call    006AEB04
006B06ED   8BD0                   mov     edx, eax
006B06EF   8D45E0                 lea     eax, [ebp-$20]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B06F2   E88D4FD5FF             call    00405684
006B06F7   8D45E0                 lea     eax, [ebp-$20]
006B06FA   8D1476                 lea     edx, [esi+esi*2]
006B06FD   8B0D6CED7D00           mov     ecx, [$007DED6C]
006B0703   8B549104               mov     edx, [ecx+edx*4+$04]

* Reference to: System.@LStrCat;
|
006B0707   E85850D5FF             call    00405764
006B070C   8B55E0                 mov     edx, [ebp-$20]
006B070F   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0714   8B00                   mov     eax, [eax]
006B0716   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B0719   E8B6A1EEFF             call    0059A8D4
006B071E   46                     inc     esi
006B071F   4B                     dec     ebx
006B0720   75C6                   jnz     006B06E8
006B0722   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0727   8B00                   mov     eax, [eax]
006B0729   8B4068                 mov     eax, [eax+$68]

|
006B072C   E8AFA0EEFF             call    0059A7E0
006B0731   33C0                   xor     eax, eax
006B0733   5A                     pop     edx
006B0734   59                     pop     ecx
006B0735   59                     pop     ecx
006B0736   648910                 mov     fs:[eax], edx
006B0739   EB0A                   jmp     006B0745

* Reference to: System.@HandleAnyException;
|
006B073B   E94443D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B0740   E86B47D5FF             call    00404EB0

****** END
|
006B0745   33C0                   xor     eax, eax
006B0747   5A                     pop     edx
006B0748   59                     pop     ecx
006B0749   59                     pop     ecx
006B074A   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B074D   685A076B00             push    $006B075A
006B0752   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0753   E9E045D5FF             jmp     00404D38
006B0758   EBF8                   jmp     006B0752

****** END
|
006B075A   33C0                   xor     eax, eax
006B075C   5A                     pop     edx
006B075D   59                     pop     ecx
006B075E   59                     pop     ecx
006B075F   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006B0762   687C076B00             push    $006B077C
006B0767   8D45E0                 lea     eax, [ebp-$20]
006B076A   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B076F   E84C4DD5FF             call    004054C0
006B0774   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0775   E9BE45D5FF             jmp     00404D38
006B077A   EBEB                   jmp     006B0767

****** END
|
006B077C   5F                     pop     edi
006B077D   5E                     pop     esi
006B077E   5B                     pop     ebx
006B077F   8BE5                   mov     esp, ebp
006B0781   5D                     pop     ebp
006B0782   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B07AA(Sender : TObject);
begin
(*
006B07AA   42                     inc     edx
006B07AB   54                     push    esp
006B07AC   4F                     dec     edi
006B07AD   54                     push    esp
006B07AE   41                     inc     ecx
006B07AF   4C                     dec     esp
006B07B0   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006B07ED(Sender : TObject);
begin
(*
006B07ED   8BEC                   mov     ebp, esp
006B07EF   B904000000             mov     ecx, $00000004
006B07F4   6A00                   push    $00
006B07F6   6A00                   push    $00
006B07F8   49                     dec     ecx
006B07F9   75F9                   jnz     006B07F4
006B07FB   51                     push    ecx
006B07FC   53                     push    ebx
006B07FD   56                     push    esi
006B07FE   57                     push    edi
006B07FF   8BD8                   mov     ebx, eax
006B0801   8B357CB37D00           mov     esi, [$007DB37C]
006B0807   33C0                   xor     eax, eax
006B0809   55                     push    ebp
006B080A   68240A6B00             push    $006B0A24

***** TRY
|
006B080F   64FF30                 push    dword ptr fs:[eax]
006B0812   648920                 mov     fs:[eax], esp
006B0815   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006B0817   E8804CD5FF             call    0040549C
006B081C   33C0                   xor     eax, eax
006B081E   55                     push    ebp
006B081F   68020A6B00             push    $006B0A02

***** TRY
|
006B0824   64FF30                 push    dword ptr fs:[eax]
006B0827   648920                 mov     fs:[eax], esp
006B082A   33C0                   xor     eax, eax
006B082C   55                     push    ebp
006B082D   68EA096B00             push    $006B09EA

***** TRY
|
006B0832   64FF30                 push    dword ptr fs:[eax]
006B0835   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'esquerda'
|
006B0838   683C0A6B00             push    $006B0A3C
006B083D   8D45FC                 lea     eax, [ebp-$04]
006B0840   50                     push    eax
006B0841   8B06                   mov     eax, [esi]
006B0843   8B808C000000           mov     eax, [eax+$008C]
006B0849   8B10                   mov     edx, [eax]
006B084B   FF5258                 call    dword ptr [edx+$58]
006B084E   8BD8                   mov     ebx, eax
006B0850   8B06                   mov     eax, [esi]
006B0852   8B8090000000           mov     eax, [eax+$0090]
006B0858   8B10                   mov     edx, [eax]
006B085A   FF5258                 call    dword ptr [edx+$58]
006B085D   03D8                   add     ebx, eax
006B085F   8B06                   mov     eax, [esi]
006B0861   8B809C000000           mov     eax, [eax+$009C]
006B0867   8B10                   mov     edx, [eax]
006B0869   FF5258                 call    dword ptr [edx+$58]
006B086C   2BC3                   sub     eax, ebx
006B086E   50                     push    eax
006B086F   8D55F8                 lea     edx, [ebp-$08]
006B0872   8B06                   mov     eax, [esi]
006B0874   8B80CC000000           mov     eax, [eax+$00CC]
006B087A   8B08                   mov     ecx, [eax]
006B087C   FF5160                 call    dword ptr [ecx+$60]
006B087F   8B55F8                 mov     edx, [ebp-$08]
006B0882   B8500A6B00             mov     eax, $006B0A50
006B0887   59                     pop     ecx

|
006B0888   E83B1E0F00             call    007A26C8

* Possible String Reference to: 'esquerda'
|
006B088D   683C0A6B00             push    $006B0A3C
006B0892   8D45F4                 lea     eax, [ebp-$0C]
006B0895   50                     push    eax
006B0896   8B06                   mov     eax, [esi]
006B0898   8B808C000000           mov     eax, [eax+$008C]
006B089E   8B10                   mov     edx, [eax]
006B08A0   FF5258                 call    dword ptr [edx+$58]
006B08A3   8BC8                   mov     ecx, eax
006B08A5   BA500A6B00             mov     edx, $006B0A50
006B08AA   B8500A6B00             mov     eax, $006B0A50

|
006B08AF   E8141E0F00             call    007A26C8
006B08B4   8B55F4                 mov     edx, [ebp-$0C]
006B08B7   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrCat;
|
006B08BA   E8A54ED5FF             call    00405764
006B08BF   8D45F0                 lea     eax, [ebp-$10]
006B08C2   50                     push    eax
006B08C3   8D55E4                 lea     edx, [ebp-$1C]
006B08C6   8B06                   mov     eax, [esi]
006B08C8   8B80C0010000           mov     eax, [eax+$01C0]
006B08CE   8B08                   mov     ecx, [eax]
006B08D0   FF5160                 call    dword ptr [ecx+$60]
006B08D3   8B45E4                 mov     eax, [ebp-$1C]
006B08D6   8D55E8                 lea     edx, [ebp-$18]

|
006B08D9   E822361000             call    007B3F00
006B08DE   8B45E8                 mov     eax, [ebp-$18]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006B08E1   E806CDD5FF             call    0040D5EC
006B08E6   83C4F4                 add     esp, -$0C
006B08E9   DB3C24                 fstp    tbyte ptr [esp]
006B08EC   9B                     wait
006B08ED   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: '#,###,###,##0.00'
|
006B08F0   B85C0A6B00             mov     eax, $006B0A5C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006B08F5   E842CCD5FF             call    0040D53C
006B08FA   8B4DEC                 mov     ecx, [ebp-$14]
006B08FD   8B55FC                 mov     edx, [ebp-$04]
006B0900   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006B0902   E895E6FFFF             call    006AEF9C
006B0907   A158A97D00             mov     eax, dword ptr [$007DA958]
006B090C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006B090E   BA780A6B00             mov     edx, $006B0A78

* Reference to: System.@LStrCmp;
|
006B0913   E8904FD5FF             call    004058A8
006B0918   0F85C2000000           jnz     006B09E0
006B091E   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0923   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B0925   BA8C0A6B00             mov     edx, $006B0A8C

* Reference to: System.@LStrCmp;
|
006B092A   E8794FD5FF             call    004058A8
006B092F   7417                   jz      006B0948
006B0931   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0936   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B0938   BA9C0A6B00             mov     edx, $006B0A9C

* Reference to: System.@LStrCmp;
|
006B093D   E8664FD5FF             call    004058A8
006B0942   0F8598000000           jnz     006B09E0
006B0948   A178B47D00             mov     eax, dword ptr [$007DB478]
006B094D   8B00                   mov     eax, [eax]
006B094F   8B4068                 mov     eax, [eax+$68]

|
006B0952   E8E59DEEFF             call    0059A73C

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B0957   E8A8E1FFFF             call    006AEB04
006B095C   8BD0                   mov     edx, eax
006B095E   8D45E0                 lea     eax, [ebp-$20]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B0961   E81E4DD5FF             call    00405684
006B0966   8D45E0                 lea     eax, [ebp-$20]
006B0969   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B096A   E8F5E1FFFF             call    006AEB64
006B096F   8D0440                 lea     eax, [eax+eax*2]
006B0972   8B156CED7D00           mov     edx, [$007DED6C]
006B0978   8B5482F8               mov     edx, [edx+eax*4-$08]
006B097C   58                     pop     eax

* Reference to: System.@LStrCat;
|
006B097D   E8E24DD5FF             call    00405764
006B0982   8B55E0                 mov     edx, [ebp-$20]
006B0985   A178B47D00             mov     eax, dword ptr [$007DB478]
006B098A   8B00                   mov     eax, [eax]
006B098C   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B098F   E8409FEEFF             call    0059A8D4

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B0994   E86BE1FFFF             call    006AEB04
006B0999   8BD0                   mov     edx, eax
006B099B   8D45DC                 lea     eax, [ebp-$24]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B099E   E8E14CD5FF             call    00405684
006B09A3   8D45DC                 lea     eax, [ebp-$24]
006B09A6   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B09A7   E8B8E1FFFF             call    006AEB64
006B09AC   8D0440                 lea     eax, [eax+eax*2]
006B09AF   8B156CED7D00           mov     edx, [$007DED6C]
006B09B5   8B548204               mov     edx, [edx+eax*4+$04]
006B09B9   58                     pop     eax

* Reference to: System.@LStrCat;
|
006B09BA   E8A54DD5FF             call    00405764
006B09BF   8B55DC                 mov     edx, [ebp-$24]
006B09C2   A178B47D00             mov     eax, dword ptr [$007DB478]
006B09C7   8B00                   mov     eax, [eax]
006B09C9   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B09CC   E8039FEEFF             call    0059A8D4
006B09D1   A178B47D00             mov     eax, dword ptr [$007DB478]
006B09D6   8B00                   mov     eax, [eax]
006B09D8   8B4068                 mov     eax, [eax+$68]

|
006B09DB   E8009EEEFF             call    0059A7E0
006B09E0   33C0                   xor     eax, eax
006B09E2   5A                     pop     edx
006B09E3   59                     pop     ecx
006B09E4   59                     pop     ecx
006B09E5   648910                 mov     fs:[eax], edx
006B09E8   EB0A                   jmp     006B09F4

* Reference to: System.@HandleAnyException;
|
006B09EA   E99540D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B09EF   E8BC44D5FF             call    00404EB0

****** END
|
006B09F4   33C0                   xor     eax, eax
006B09F6   5A                     pop     edx
006B09F7   59                     pop     ecx
006B09F8   59                     pop     ecx
006B09F9   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B09FC   68090A6B00             push    $006B0A09
006B0A01   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0A02   E93143D5FF             jmp     00404D38
006B0A07   EBF8                   jmp     006B0A01

****** END
|
006B0A09   33C0                   xor     eax, eax
006B0A0B   5A                     pop     edx
006B0A0C   59                     pop     ecx
006B0A0D   59                     pop     ecx
006B0A0E   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006B0A11   682B0A6B00             push    $006B0A2B
006B0A16   8D45DC                 lea     eax, [ebp-$24]
006B0A19   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B0A1E   E89D4AD5FF             call    004054C0
006B0A23   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0A24   E90F43D5FF             jmp     00404D38
006B0A29   EBEB                   jmp     006B0A16

****** END
|
006B0A2B   5F                     pop     edi
006B0A2C   5E                     pop     esi
006B0A2D   5B                     pop     ebx
006B0A2E   8BE5                   mov     esp, ebp
006B0A30   5D                     pop     ebp
006B0A31   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B0AA9(Sender : TObject);
begin
(*
006B0AA9   8BEC                   mov     ebp, esp
006B0AAB   33C9                   xor     ecx, ecx
006B0AAD   51                     push    ecx
006B0AAE   51                     push    ecx
006B0AAF   51                     push    ecx
006B0AB0   51                     push    ecx
006B0AB1   53                     push    ebx
006B0AB2   8BD8                   mov     ebx, eax
006B0AB4   33C0                   xor     eax, eax
006B0AB6   55                     push    ebp

* Possible String Reference to: 'éõAÕÿëë[‹å]Ã'
|
006B0AB7   683E0B6B00             push    $006B0B3E

***** TRY
|
006B0ABC   64FF30                 push    dword ptr fs:[eax]
006B0ABF   648920                 mov     fs:[eax], esp
006B0AC2   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006B0AC4   E8D349D5FF             call    0040549C
006B0AC9   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0ACE   8B00                   mov     eax, [eax]
006B0AD0   8B80D0000000           mov     eax, [eax+$00D0]
006B0AD6   8B10                   mov     edx, [eax]
006B0AD8   FF5244                 call    dword ptr [edx+$44]
006B0ADB   84C0                   test    al, al
006B0ADD   743C                   jz      006B0B1B
006B0ADF   8D45FC                 lea     eax, [ebp-$04]
006B0AE2   50                     push    eax
006B0AE3   A198A97D00             mov     eax, dword ptr [$007DA998]
006B0AE8   668B5008               mov     dx, word ptr [eax+$08]
006B0AEC   52                     push    edx
006B0AED   FF7004                 push    dword ptr [eax+$04]
006B0AF0   FF30                   push    dword ptr [eax]
006B0AF2   8D55F4                 lea     edx, [ebp-$0C]

* Possible String Reference to: '#.##'
|
006B0AF5   B8540B6B00             mov     eax, $006B0B54

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006B0AFA   E83DCAD5FF             call    0040D53C
006B0AFF   8B4DF4                 mov     ecx, [ebp-$0C]
006B0B02   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'VOLUMES..:'
|
006B0B05   BA640B6B00             mov     edx, $006B0B64

* Reference to: System.@LStrCat3;
|
006B0B0A   E8994CD5FF             call    004057A8
006B0B0F   8B55F8                 mov     edx, [ebp-$08]
006B0B12   33C9                   xor     ecx, ecx
006B0B14   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006B0B16   E881E4FFFF             call    006AEF9C
006B0B1B   8D45F0                 lea     eax, [ebp-$10]

|
006B0B1E   E8310B0000             call    006B1654
006B0B23   33C0                   xor     eax, eax
006B0B25   5A                     pop     edx
006B0B26   59                     pop     ecx
006B0B27   59                     pop     ecx
006B0B28   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[‹å]Ã'
|
006B0B2B   68450B6B00             push    $006B0B45
006B0B30   8D45F0                 lea     eax, [ebp-$10]
006B0B33   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B0B38   E88349D5FF             call    004054C0
006B0B3D   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0B3E   E9F541D5FF             jmp     00404D38
006B0B43   EBEB                   jmp     006B0B30

****** END
|
006B0B45   5B                     pop     ebx
006B0B46   8BE5                   mov     esp, ebp
006B0B48   5D                     pop     ebp
006B0B49   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B0B68(Sender : TObject);
begin
(*
006B0B68   4D                     dec     ebp
006B0B69   45                     inc     ebp
006B0B6A   53                     push    ebx
006B0B6B   2E2E3A00               cmp     al, byte ptr cs:[eax]
006B0B6F   00558B                 add     [ebp-$75], dl
006B0B72   EC                     in      al, dx
006B0B73   B909000000             mov     ecx, $00000009
006B0B78   6A00                   push    $00
006B0B7A   6A00                   push    $00
006B0B7C   49                     dec     ecx
006B0B7D   75F9                   jnz     006B0B78
006B0B7F   53                     push    ebx
006B0B80   56                     push    esi
006B0B81   57                     push    edi
006B0B82   8BD8                   mov     ebx, eax
006B0B84   33C0                   xor     eax, eax
006B0B86   55                     push    ebp

* Possible String Reference to: 'éK>Õÿëë_^[‹å]Ã'
|
006B0B87   68E80E6B00             push    $006B0EE8

***** TRY
|
006B0B8C   64FF30                 push    dword ptr fs:[eax]
006B0B8F   648920                 mov     fs:[eax], esp
006B0B92   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006B0B94   E80349D5FF             call    0040549C
006B0B99   33C0                   xor     eax, eax
006B0B9B   55                     push    ebp
006B0B9C   68C60E6B00             push    $006B0EC6

***** TRY
|
006B0BA1   64FF30                 push    dword ptr fs:[eax]
006B0BA4   648920                 mov     fs:[eax], esp
006B0BA7   33C0                   xor     eax, eax
006B0BA9   55                     push    ebp
006B0BAA   68AE0E6B00             push    $006B0EAE

***** TRY
|
006B0BAF   64FF30                 push    dword ptr fs:[eax]
006B0BB2   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'esquerda'
|
006B0BB5   68000F6B00             push    $006B0F00
006B0BBA   8D45FC                 lea     eax, [ebp-$04]
006B0BBD   50                     push    eax
006B0BBE   8D55F8                 lea     edx, [ebp-$08]
006B0BC1   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0BC6   8B00                   mov     eax, [eax]
006B0BC8   8B80CC000000           mov     eax, [eax+$00CC]
006B0BCE   8B08                   mov     ecx, [eax]
006B0BD0   FF5160                 call    dword ptr [ecx+$60]
006B0BD3   8B45F8                 mov     eax, [ebp-$08]
006B0BD6   50                     push    eax
006B0BD7   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0BDC   8B00                   mov     eax, [eax]
006B0BDE   8B809C000000           mov     eax, [eax+$009C]
006B0BE4   8B10                   mov     edx, [eax]
006B0BE6   FF5258                 call    dword ptr [edx+$58]
006B0BE9   8BC8                   mov     ecx, eax
006B0BEB   B8140F6B00             mov     eax, $006B0F14
006B0BF0   5A                     pop     edx

|
006B0BF1   E8D21A0F00             call    007A26C8
006B0BF6   8D55F4                 lea     edx, [ebp-$0C]
006B0BF9   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0BFE   8B00                   mov     eax, [eax]
006B0C00   8B80D4000000           mov     eax, [eax+$00D4]
006B0C06   8B08                   mov     ecx, [eax]
006B0C08   FF5160                 call    dword ptr [ecx+$60]
006B0C0B   8B45F4                 mov     eax, [ebp-$0C]
006B0C0E   BA200F6B00             mov     edx, $006B0F20

* Reference to: System.@LStrCmp;
|
006B0C13   E8904CD5FF             call    004058A8
006B0C18   0F8579010000           jnz     006B0D97
006B0C1E   8D55EC                 lea     edx, [ebp-$14]
006B0C21   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0C26   8B00                   mov     eax, [eax]
006B0C28   8B80CC000000           mov     eax, [eax+$00CC]
006B0C2E   8B08                   mov     ecx, [eax]
006B0C30   FF5160                 call    dword ptr [ecx+$60]
006B0C33   8B45EC                 mov     eax, [ebp-$14]
006B0C36   8D55F0                 lea     edx, [ebp-$10]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
006B0C39   E82699D5FF             call    0040A564
006B0C3E   8B45F0                 mov     eax, [ebp-$10]

* Possible String Reference to: 'cartao'
|
006B0C41   BA2C0F6B00             mov     edx, $006B0F2C

* Reference to: System.@LStrCmp;
|
006B0C46   E85D4CD5FF             call    004058A8
006B0C4B   755C                   jnz     006B0CA9
006B0C4D   8D55E8                 lea     edx, [ebp-$18]
006B0C50   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0C55   8B00                   mov     eax, [eax]
006B0C57   8B80D8000000           mov     eax, [eax+$00D8]
006B0C5D   8B08                   mov     ecx, [eax]
006B0C5F   FF5160                 call    dword ptr [ecx+$60]
006B0C62   837DE800               cmp     dword ptr [ebp-$18], +$00
006B0C66   7441                   jz      006B0CA9

* Possible String Reference to: 'esquerda'
|
006B0C68   68000F6B00             push    $006B0F00
006B0C6D   8D45FC                 lea     eax, [ebp-$04]
006B0C70   50                     push    eax
006B0C71   8D55E4                 lea     edx, [ebp-$1C]
006B0C74   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0C79   8B00                   mov     eax, [eax]
006B0C7B   8B80D8000000           mov     eax, [eax+$00D8]
006B0C81   8B08                   mov     ecx, [eax]
006B0C83   FF5160                 call    dword ptr [ecx+$60]
006B0C86   8B45E4                 mov     eax, [ebp-$1C]
006B0C89   50                     push    eax
006B0C8A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0C8F   8B00                   mov     eax, [eax]
006B0C91   8B809C000000           mov     eax, [eax+$009C]
006B0C97   8B10                   mov     edx, [eax]
006B0C99   FF5258                 call    dword ptr [edx+$58]
006B0C9C   8BC8                   mov     ecx, eax
006B0C9E   B8140F6B00             mov     eax, $006B0F14
006B0CA3   5A                     pop     edx

|
006B0CA4   E81F1A0F00             call    007A26C8
006B0CA9   8D45E0                 lea     eax, [ebp-$20]
006B0CAC   50                     push    eax
006B0CAD   8D55D4                 lea     edx, [ebp-$2C]
006B0CB0   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0CB5   8B00                   mov     eax, [eax]
006B0CB7   8B80C0010000           mov     eax, [eax+$01C0]
006B0CBD   8B08                   mov     ecx, [eax]
006B0CBF   FF5160                 call    dword ptr [ecx+$60]
006B0CC2   8B45D4                 mov     eax, [ebp-$2C]
006B0CC5   8D55D8                 lea     edx, [ebp-$28]

|
006B0CC8   E833321000             call    007B3F00
006B0CCD   8B45D8                 mov     eax, [ebp-$28]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006B0CD0   E817C9D5FF             call    0040D5EC
006B0CD5   83C4F4                 add     esp, -$0C
006B0CD8   DB3C24                 fstp    tbyte ptr [esp]
006B0CDB   9B                     wait
006B0CDC   8D55DC                 lea     edx, [ebp-$24]

* Possible String Reference to: '#,###,###,##0.00'
|
006B0CDF   B83C0F6B00             mov     eax, $006B0F3C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006B0CE4   E853C8D5FF             call    0040D53C
006B0CE9   8B4DDC                 mov     ecx, [ebp-$24]
006B0CEC   8B55FC                 mov     edx, [ebp-$04]
006B0CEF   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006B0CF1   E8A6E2FFFF             call    006AEF9C
006B0CF6   A158A97D00             mov     eax, dword ptr [$007DA958]
006B0CFB   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006B0CFD   BA580F6B00             mov     edx, $006B0F58

* Reference to: System.@LStrCmp;
|
006B0D02   E8A14BD5FF             call    004058A8
006B0D07   0F8597010000           jnz     006B0EA4
006B0D0D   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0D12   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B0D14   BA6C0F6B00             mov     edx, $006B0F6C

* Reference to: System.@LStrCmp;
|
006B0D19   E88A4BD5FF             call    004058A8
006B0D1E   7417                   jz      006B0D37
006B0D20   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0D25   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B0D27   BA7C0F6B00             mov     edx, $006B0F7C

* Reference to: System.@LStrCmp;
|
006B0D2C   E8774BD5FF             call    004058A8
006B0D31   0F856D010000           jnz     006B0EA4
006B0D37   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0D3C   8B00                   mov     eax, [eax]
006B0D3E   8B4068                 mov     eax, [eax+$68]

|
006B0D41   E8F699EEFF             call    0059A73C

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B0D46   E8B9DDFFFF             call    006AEB04
006B0D4B   8BD0                   mov     edx, eax
006B0D4D   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B0D50   E82F49D5FF             call    00405684
006B0D55   8D45D0                 lea     eax, [ebp-$30]
006B0D58   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B0D59   E806DEFFFF             call    006AEB64
006B0D5E   8D0440                 lea     eax, [eax+eax*2]
006B0D61   8B156CED7D00           mov     edx, [$007DED6C]
006B0D67   8B548204               mov     edx, [edx+eax*4+$04]
006B0D6B   58                     pop     eax

* Reference to: System.@LStrCat;
|
006B0D6C   E8F349D5FF             call    00405764
006B0D71   8B55D0                 mov     edx, [ebp-$30]
006B0D74   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0D79   8B00                   mov     eax, [eax]
006B0D7B   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B0D7E   E8519BEEFF             call    0059A8D4
006B0D83   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0D88   8B00                   mov     eax, [eax]
006B0D8A   8B4068                 mov     eax, [eax+$68]

|
006B0D8D   E84E9AEEFF             call    0059A7E0
006B0D92   E90D010000             jmp     006B0EA4
006B0D97   8D55CC                 lea     edx, [ebp-$34]
006B0D9A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0D9F   8B00                   mov     eax, [eax]
006B0DA1   8B80D4000000           mov     eax, [eax+$00D4]
006B0DA7   8B08                   mov     ecx, [eax]
006B0DA9   FF5160                 call    dword ptr [ecx+$60]
006B0DAC   8B45CC                 mov     eax, [ebp-$34]
006B0DAF   BA900F6B00             mov     edx, $006B0F90

* Reference to: System.@LStrCmp;
|
006B0DB4   E8EF4AD5FF             call    004058A8
006B0DB9   0F85E5000000           jnz     006B0EA4
006B0DBF   8D45C8                 lea     eax, [ebp-$38]
006B0DC2   50                     push    eax
006B0DC3   8D55BC                 lea     edx, [ebp-$44]
006B0DC6   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B0DCB   8B00                   mov     eax, [eax]
006B0DCD   8B80C0010000           mov     eax, [eax+$01C0]
006B0DD3   8B08                   mov     ecx, [eax]
006B0DD5   FF5160                 call    dword ptr [ecx+$60]
006B0DD8   8B45BC                 mov     eax, [ebp-$44]
006B0DDB   8D55C0                 lea     edx, [ebp-$40]

|
006B0DDE   E81D311000             call    007B3F00
006B0DE3   8B45C0                 mov     eax, [ebp-$40]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006B0DE6   E801C8D5FF             call    0040D5EC
006B0DEB   83C4F4                 add     esp, -$0C
006B0DEE   DB3C24                 fstp    tbyte ptr [esp]
006B0DF1   9B                     wait
006B0DF2   8D55C4                 lea     edx, [ebp-$3C]

* Possible String Reference to: '#,###,###,##0.00'
|
006B0DF5   B83C0F6B00             mov     eax, $006B0F3C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
006B0DFA   E83DC7D5FF             call    0040D53C
006B0DFF   8B4DC4                 mov     ecx, [ebp-$3C]
006B0E02   8B55FC                 mov     edx, [ebp-$04]
006B0E05   33C0                   xor     eax, eax

* Reference to: IBExtract.TIBExtract.ExtractListTable(TIBExtract;AnsiString;AnsiString;Boolean):Boolean;
|
006B0E07   E890E1FFFF             call    006AEF9C
006B0E0C   A158A97D00             mov     eax, dword ptr [$007DA958]
006B0E11   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006B0E13   BA580F6B00             mov     edx, $006B0F58

* Reference to: System.@LStrCmp;
|
006B0E18   E88B4AD5FF             call    004058A8
006B0E1D   0F8581000000           jnz     006B0EA4
006B0E23   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0E28   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B0E2A   BA6C0F6B00             mov     edx, $006B0F6C

* Reference to: System.@LStrCmp;
|
006B0E2F   E8744AD5FF             call    004058A8
006B0E34   7413                   jz      006B0E49
006B0E36   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B0E3B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B0E3D   BA7C0F6B00             mov     edx, $006B0F7C

* Reference to: System.@LStrCmp;
|
006B0E42   E8614AD5FF             call    004058A8
006B0E47   755B                   jnz     006B0EA4
006B0E49   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0E4E   8B00                   mov     eax, [eax]
006B0E50   8B4068                 mov     eax, [eax+$68]

|
006B0E53   E8E498EEFF             call    0059A73C

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B0E58   E8A7DCFFFF             call    006AEB04
006B0E5D   8BD0                   mov     edx, eax
006B0E5F   8D45B8                 lea     eax, [ebp-$48]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B0E62   E81D48D5FF             call    00405684
006B0E67   8D45B8                 lea     eax, [ebp-$48]
006B0E6A   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B0E6B   E8F4DCFFFF             call    006AEB64
006B0E70   8D0440                 lea     eax, [eax+eax*2]
006B0E73   8B156CED7D00           mov     edx, [$007DED6C]
006B0E79   8B548204               mov     edx, [edx+eax*4+$04]
006B0E7D   58                     pop     eax

* Reference to: System.@LStrCat;
|
006B0E7E   E8E148D5FF             call    00405764
006B0E83   8B55B8                 mov     edx, [ebp-$48]
006B0E86   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0E8B   8B00                   mov     eax, [eax]
006B0E8D   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B0E90   E83F9AEEFF             call    0059A8D4
006B0E95   A178B47D00             mov     eax, dword ptr [$007DB478]
006B0E9A   8B00                   mov     eax, [eax]
006B0E9C   8B4068                 mov     eax, [eax+$68]

|
006B0E9F   E83C99EEFF             call    0059A7E0
006B0EA4   33C0                   xor     eax, eax
006B0EA6   5A                     pop     edx
006B0EA7   59                     pop     ecx
006B0EA8   59                     pop     ecx
006B0EA9   648910                 mov     fs:[eax], edx
006B0EAC   EB0A                   jmp     006B0EB8

* Reference to: System.@HandleAnyException;
|
006B0EAE   E9D13BD5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B0EB3   E8F83FD5FF             call    00404EB0

****** END
|
006B0EB8   33C0                   xor     eax, eax
006B0EBA   5A                     pop     edx
006B0EBB   59                     pop     ecx
006B0EBC   59                     pop     ecx
006B0EBD   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B0EC0   68CD0E6B00             push    $006B0ECD
006B0EC5   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0EC6   E96D3ED5FF             jmp     00404D38
006B0ECB   EBF8                   jmp     006B0EC5

****** END
|
006B0ECD   33C0                   xor     eax, eax
006B0ECF   5A                     pop     edx
006B0ED0   59                     pop     ecx
006B0ED1   59                     pop     ecx
006B0ED2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006B0ED5   68EF0E6B00             push    $006B0EEF
006B0EDA   8D45B8                 lea     eax, [ebp-$48]
006B0EDD   BA12000000             mov     edx, $00000012

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B0EE2   E8D945D5FF             call    004054C0
006B0EE7   C3                     ret


* Reference to: System.@HandleFinally;
|
006B0EE8   E94B3ED5FF             jmp     00404D38
006B0EED   EBEB                   jmp     006B0EDA

****** END
|
006B0EEF   5F                     pop     edi
006B0EF0   5E                     pop     esi
006B0EF1   5B                     pop     ebx
006B0EF2   8BE5                   mov     esp, ebp
006B0EF4   5D                     pop     ebp
006B0EF5   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B0F95(Sender : TObject);
begin
(*
006B0F95   8BEC                   mov     ebp, esp
006B0F97   B905000000             mov     ecx, $00000005
006B0F9C   6A00                   push    $00
006B0F9E   6A00                   push    $00
006B0FA0   49                     dec     ecx
006B0FA1   75F9                   jnz     006B0F9C
006B0FA3   53                     push    ebx
006B0FA4   56                     push    esi
006B0FA5   57                     push    edi
006B0FA6   8BD8                   mov     ebx, eax
006B0FA8   33C0                   xor     eax, eax
006B0FAA   55                     push    ebp
006B0FAB   68E2116B00             push    $006B11E2

***** TRY
|
006B0FB0   64FF30                 push    dword ptr fs:[eax]
006B0FB3   648920                 mov     fs:[eax], esp
006B0FB6   B201                   mov     dl, $01

* Reference to class TStringList
|
006B0FB8   A1D4044200             mov     eax, dword ptr [$004204D4]

* Reference to: System.TObject.Create(TObject;Boolean);
|
006B0FBD   E8AA35D5FF             call    0040456C
006B0FC2   8945F8                 mov     [ebp-$08], eax
006B0FC5   8BC3                   mov     eax, ebx

* Possible String Reference to: 'CUPOM FINALIZADO...'
|
006B0FC7   BAF8116B00             mov     edx, $006B11F8

* Reference to: System.@LStrAsg(void;void;void;void);
|
006B0FCC   E81F45D5FF             call    004054F0
006B0FD1   33C0                   xor     eax, eax
006B0FD3   55                     push    ebp
006B0FD4   68C0116B00             push    $006B11C0

***** TRY
|
006B0FD9   64FF30                 push    dword ptr fs:[eax]
006B0FDC   648920                 mov     fs:[eax], esp
006B0FDF   33C0                   xor     eax, eax
006B0FE1   55                     push    ebp
006B0FE2   68A0116B00             push    $006B11A0

***** TRY
|
006B0FE7   64FF30                 push    dword ptr fs:[eax]
006B0FEA   648920                 mov     fs:[eax], esp
006B0FED   A16CED7D00             mov     eax, dword ptr [$007DED6C]

* Reference to: System.@DynArrayHigh;
|
006B0FF2   E8055AD5FF             call    004069FC
006B0FF7   40                     inc     eax
006B0FF8   8945FC                 mov     [ebp-$04], eax
006B0FFB   8D55F4                 lea     edx, [ebp-$0C]
006B0FFE   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B1003   8B00                   mov     eax, [eax]
006B1005   8B80AC000000           mov     eax, [eax+$00AC]
006B100B   8B08                   mov     ecx, [eax]
006B100D   FF5160                 call    dword ptr [ecx+$60]
006B1010   8B55F4                 mov     edx, [ebp-$0C]
006B1013   8B45F8                 mov     eax, [ebp-$08]
006B1016   8B08                   mov     ecx, [eax]

* Reference to method TStringList.SetTextStr(string)
|
006B1018   FF512C                 call    dword ptr [ecx+$2C]
006B101B   8B45F8                 mov     eax, [ebp-$08]
006B101E   8B10                   mov     edx, [eax]

* Reference to method TStringList.GetCount()
|
006B1020   FF5214                 call    dword ptr [edx+$14]
006B1023   8BD8                   mov     ebx, eax
006B1025   4B                     dec     ebx
006B1026   85DB                   test    ebx, ebx
006B1028   7C60                   jl      006B108A
006B102A   43                     inc     ebx
006B102B   33F6                   xor     esi, esi
006B102D   8D4DF0                 lea     ecx, [ebp-$10]
006B1030   8BD6                   mov     edx, esi
006B1032   8B45F8                 mov     eax, [ebp-$08]
006B1035   8B38                   mov     edi, [eax]

* Reference to method TStringList.Get(Integer)
|
006B1037   FF570C                 call    dword ptr [edi+$0C]
006B103A   837DF000               cmp     dword ptr [ebp-$10], +$00
006B103E   7446                   jz      006B1086

|
006B1040   E8EFDAFFFF             call    006AEB34
006B1045   8D4DE8                 lea     ecx, [ebp-$18]
006B1048   8BD6                   mov     edx, esi
006B104A   8B45F8                 mov     eax, [ebp-$08]
006B104D   8B38                   mov     edi, [eax]

* Reference to method TStringList.Get(Integer)
|
006B104F   FF570C                 call    dword ptr [edi+$0C]
006B1052   8B45E8                 mov     eax, [ebp-$18]
006B1055   8D55EC                 lea     edx, [ebp-$14]

* Reference to : TfrmGerenciador._PROC_006ACE00()
|
006B1058   E8A3BDFFFF             call    006ACE00
006B105D   8B45EC                 mov     eax, [ebp-$14]
006B1060   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B1061   E8FEDAFFFF             call    006AEB64
006B1066   8D0440                 lea     eax, [eax+eax*2]
006B1069   8B156CED7D00           mov     edx, [$007DED6C]
006B106F   8D448204               lea     eax, [edx+eax*4+$04]
006B1073   50                     push    eax
006B1074   8D45E4                 lea     eax, [ebp-$1C]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
006B1077   E81CDBFFFF             call    006AEB98
006B107C   8B55E4                 mov     edx, [ebp-$1C]
006B107F   58                     pop     eax
006B1080   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006B1081   E82247D5FF             call    004057A8
006B1086   46                     inc     esi
006B1087   4B                     dec     ebx
006B1088   75A3                   jnz     006B102D
006B108A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B108F   8B00                   mov     eax, [eax]
006B1091   8B406C                 mov     eax, [eax+$6C]
006B1094   8B10                   mov     edx, [eax]
006B1096   FF5258                 call    dword ptr [edx+$58]
006B1099   8BD8                   mov     ebx, eax
006B109B   85DB                   test    ebx, ebx
006B109D   7E4E                   jle     006B10ED

|
006B109F   E890DAFFFF             call    006AEB34

* Possible String Reference to: 'esquerda'
|
006B10A4   6814126B00             push    $006B1214
006B10A9   8D45E0                 lea     eax, [ebp-$20]
006B10AC   50                     push    eax
006B10AD   B914000000             mov     ecx, $00000014
006B10B2   BA28126B00             mov     edx, $006B1228
006B10B7   B828126B00             mov     eax, $006B1228

|
006B10BC   E807160F00             call    007A26C8
006B10C1   8B45E0                 mov     eax, [ebp-$20]
006B10C4   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B10C5   E89ADAFFFF             call    006AEB64
006B10CA   8D0440                 lea     eax, [eax+eax*2]
006B10CD   8B156CED7D00           mov     edx, [$007DED6C]
006B10D3   8D448204               lea     eax, [edx+eax*4+$04]
006B10D7   50                     push    eax
006B10D8   8D45DC                 lea     eax, [ebp-$24]

* Reference to : TfrmGerenciador._PROC_006AEB98()
|
006B10DB   E8B8DAFFFF             call    006AEB98
006B10E0   8B55DC                 mov     edx, [ebp-$24]
006B10E3   58                     pop     eax
006B10E4   59                     pop     ecx

* Reference to: System.@LStrCat3;
|
006B10E5   E8BE46D5FF             call    004057A8
006B10EA   4B                     dec     ebx
006B10EB   75B2                   jnz     006B109F
006B10ED   A158A97D00             mov     eax, dword ptr [$007DA958]
006B10F2   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006B10F4   BA34126B00             mov     edx, $006B1234

* Reference to: System.@LStrCmp;
|
006B10F9   E8AA47D5FF             call    004058A8
006B10FE   0F8592000000           jnz     006B1196
006B1104   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B1109   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B110B   BA48126B00             mov     edx, $006B1248

* Reference to: System.@LStrCmp;
|
006B1110   E89347D5FF             call    004058A8
006B1115   7413                   jz      006B112A
006B1117   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B111C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B111E   BA58126B00             mov     edx, $006B1258

* Reference to: System.@LStrCmp;
|
006B1123   E88047D5FF             call    004058A8
006B1128   756C                   jnz     006B1196
006B112A   A178B47D00             mov     eax, dword ptr [$007DB478]
006B112F   8B00                   mov     eax, [eax]
006B1131   8B4068                 mov     eax, [eax+$68]

|
006B1134   E80396EEFF             call    0059A73C
006B1139   8B75FC                 mov     esi, [ebp-$04]
006B113C   A16CED7D00             mov     eax, dword ptr [$007DED6C]

* Reference to: System.@DynArrayHigh;
|
006B1141   E8B658D5FF             call    004069FC
006B1146   8BD8                   mov     ebx, eax
006B1148   2BDE                   sub     ebx, esi
006B114A   7C3B                   jl      006B1187
006B114C   43                     inc     ebx

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B114D   E8B2D9FFFF             call    006AEB04
006B1152   8BD0                   mov     edx, eax
006B1154   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B1157   E82845D5FF             call    00405684
006B115C   8D45D8                 lea     eax, [ebp-$28]
006B115F   8D1476                 lea     edx, [esi+esi*2]
006B1162   8B0D6CED7D00           mov     ecx, [$007DED6C]
006B1168   8B549104               mov     edx, [ecx+edx*4+$04]

* Reference to: System.@LStrCat;
|
006B116C   E8F345D5FF             call    00405764
006B1171   8B55D8                 mov     edx, [ebp-$28]
006B1174   A178B47D00             mov     eax, dword ptr [$007DB478]
006B1179   8B00                   mov     eax, [eax]
006B117B   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B117E   E85197EEFF             call    0059A8D4
006B1183   46                     inc     esi
006B1184   4B                     dec     ebx
006B1185   75C6                   jnz     006B114D
006B1187   A178B47D00             mov     eax, dword ptr [$007DB478]
006B118C   8B00                   mov     eax, [eax]
006B118E   8B4068                 mov     eax, [eax+$68]

|
006B1191   E84A96EEFF             call    0059A7E0
006B1196   33C0                   xor     eax, eax
006B1198   5A                     pop     edx
006B1199   59                     pop     ecx
006B119A   59                     pop     ecx
006B119B   648910                 mov     fs:[eax], edx
006B119E   EB0A                   jmp     006B11AA

* Reference to: System.@HandleAnyException;
|
006B11A0   E9DF38D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B11A5   E8063DD5FF             call    00404EB0

****** END
|
006B11AA   33C0                   xor     eax, eax
006B11AC   5A                     pop     edx
006B11AD   59                     pop     ecx
006B11AE   59                     pop     ecx
006B11AF   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B11B2   68C7116B00             push    $006B11C7
006B11B7   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.TObject.Free(TObject);
|
006B11BA   E8DD33D5FF             call    0040459C
006B11BF   C3                     ret


* Reference to: System.@HandleFinally;
|
006B11C0   E9733BD5FF             jmp     00404D38
006B11C5   EBF0                   jmp     006B11B7

****** END
|
006B11C7   33C0                   xor     eax, eax
006B11C9   5A                     pop     edx
006B11CA   59                     pop     ecx
006B11CB   59                     pop     ecx
006B11CC   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B11CF   68E9116B00             push    $006B11E9
006B11D4   8D45D8                 lea     eax, [ebp-$28]
006B11D7   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B11DC   E8DF42D5FF             call    004054C0
006B11E1   C3                     ret


* Reference to: System.@HandleFinally;
|
006B11E2   E9513BD5FF             jmp     00404D38
006B11E7   EBEB                   jmp     006B11D4

****** END
|
006B11E9   5F                     pop     edi
006B11EA   5E                     pop     esi
006B11EB   5B                     pop     ebx
006B11EC   8BE5                   mov     esp, ebp
006B11EE   5D                     pop     ebp
006B11EF   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B11FA(Sender : TObject);
begin
(*
006B11FA   50                     push    eax
006B11FB   4F                     dec     edi
006B11FC   4D                     dec     ebp
006B11FD   204649                 and     [esi+$49], al
006B1200   4E                     dec     esi
006B1201   41                     inc     ecx
006B1202   4C                     dec     esp
006B1203   49                     dec     ecx
006B1204   5A                     pop     edx
006B1205   41                     inc     ecx
006B1206   44                     inc     esp
006B1207   4F                     dec     edi
006B1208   2E2E2E00FF             add     bh, bh
006B120D   FFFF                   DB  $FF, $FF  //      
006B120F   FF08                   dec     dword ptr [eax]
006B1211   0000                   add     [eax], al

*)
end;

procedure TfrmGerenciador._PROC_006B1265(Sender : TObject);
begin
(*
006B1265   8BEC                   mov     ebp, esp
006B1267   6A00                   push    $00
006B1269   53                     push    ebx
006B126A   56                     push    esi
006B126B   57                     push    edi
006B126C   8BDA                   mov     ebx, edx
006B126E   33C0                   xor     eax, eax
006B1270   55                     push    ebp
006B1271   6831146B00             push    $006B1431

***** TRY
|
006B1276   64FF30                 push    dword ptr fs:[eax]
006B1279   648920                 mov     fs:[eax], esp
006B127C   33C0                   xor     eax, eax
006B127E   55                     push    ebp
006B127F   6814146B00             push    $006B1414

***** TRY
|
006B1284   64FF30                 push    dword ptr fs:[eax]
006B1287   648920                 mov     fs:[eax], esp
006B128A   33C0                   xor     eax, eax
006B128C   55                     push    ebp
006B128D   68FC136B00             push    $006B13FC

***** TRY
|
006B1292   64FF30                 push    dword ptr fs:[eax]
006B1295   648920                 mov     fs:[eax], esp

|
006B1298   E8FFD5FFFF             call    006AE89C
006B129D   84C0                   test    al, al
006B129F   0F8448010000           jz      006B13ED
006B12A5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B12AA   8B00                   mov     eax, [eax]
006B12AC   8B80E8010000           mov     eax, [eax+$01E8]
006B12B2   8B10                   mov     edx, [eax]
006B12B4   FF5258                 call    dword ptr [edx+$58]

|
006B12B7   E804351000             call    007B47C0

|
006B12BC   E8D3D7FFFF             call    006AEA94
006B12C1   A158A97D00             mov     eax, dword ptr [$007DA958]
006B12C6   8B00                   mov     eax, [eax]

* Possible String Reference to: 'buffer'
|
006B12C8   BA48146B00             mov     edx, $006B1448

* Reference to: System.@LStrCmp;
|
006B12CD   E8D645D5FF             call    004058A8
006B12D2   7408                   jz      006B12DC
006B12D4   84DB                   test    bl, bl
006B12D6   0F8411010000           jz      006B13ED
006B12DC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B12E1   8B00                   mov     eax, [eax]
006B12E3   8B80DC000000           mov     eax, [eax+$00DC]
006B12E9   8B10                   mov     edx, [eax]
006B12EB   FF5244                 call    dword ptr [edx+$44]
006B12EE   84C0                   test    al, al
006B12F0   0F85F7000000           jnz     006B13ED
006B12F6   A178B47D00             mov     eax, dword ptr [$007DB478]
006B12FB   8B00                   mov     eax, [eax]
006B12FD   8B4068                 mov     eax, [eax+$68]

|
006B1300   E83794EEFF             call    0059A73C
006B1305   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B130A   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B130C   BA58146B00             mov     edx, $006B1458

* Reference to: System.@LStrCmp;
|
006B1311   E89245D5FF             call    004058A8
006B1316   7414                   jz      006B132C
006B1318   A178B47D00             mov     eax, dword ptr [$007DB478]
006B131D   8B00                   mov     eax, [eax]
006B131F   8B4068                 mov     eax, [eax+$68]
006B1322   BA6C146B00             mov     edx, $006B146C

* Reference to : TRAWPrinter._PROC_0059A8A8()
|
006B1327   E87C95EEFF             call    0059A8A8
006B132C   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B1331   8B00                   mov     eax, [eax]
006B1333   8B4068                 mov     eax, [eax+$68]
006B1336   8B10                   mov     edx, [eax]
006B1338   FF5258                 call    dword ptr [edx+$58]
006B133B   8BD8                   mov     ebx, eax
006B133D   85DB                   test    ebx, ebx
006B133F   7E17                   jle     006B1358
006B1341   A178B47D00             mov     eax, dword ptr [$007DB478]
006B1346   8B00                   mov     eax, [eax]
006B1348   8B4068                 mov     eax, [eax+$68]
006B134B   BA78146B00             mov     edx, $006B1478

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B1350   E87F95EEFF             call    0059A8D4
006B1355   4B                     dec     ebx
006B1356   75E9                   jnz     006B1341
006B1358   A16CED7D00             mov     eax, dword ptr [$007DED6C]

* Reference to: System.@LStrLen(String):Integer;
|
006B135D   E89256D5FF             call    004069F4
006B1362   8BD8                   mov     ebx, eax
006B1364   4B                     dec     ebx
006B1365   85DB                   test    ebx, ebx
006B1367   7C49                   jl      006B13B2
006B1369   43                     inc     ebx
006B136A   33F6                   xor     esi, esi
006B136C   8D3C76                 lea     edi, [esi+esi*2]
006B136F   A16CED7D00             mov     eax, dword ptr [$007DED6C]
006B1374   807CB80800             cmp     byte ptr [eax+edi*4+$08], $00
006B1379   7533                   jnz     006B13AE

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B137B   E884D7FFFF             call    006AEB04
006B1380   8BD0                   mov     edx, eax
006B1382   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B1385   E8FA42D5FF             call    00405684
006B138A   8D45FC                 lea     eax, [ebp-$04]
006B138D   8B156CED7D00           mov     edx, [$007DED6C]
006B1393   8B54BA04               mov     edx, [edx+edi*4+$04]

* Reference to: System.@LStrCat;
|
006B1397   E8C843D5FF             call    00405764
006B139C   8B55FC                 mov     edx, [ebp-$04]
006B139F   A178B47D00             mov     eax, dword ptr [$007DB478]
006B13A4   8B00                   mov     eax, [eax]
006B13A6   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B13A9   E82695EEFF             call    0059A8D4
006B13AE   46                     inc     esi
006B13AF   4B                     dec     ebx
006B13B0   75BA                   jnz     006B136C
006B13B2   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B13B7   8B00                   mov     eax, [eax]
006B13B9   8B406C                 mov     eax, [eax+$6C]
006B13BC   8B10                   mov     edx, [eax]
006B13BE   FF5258                 call    dword ptr [edx+$58]
006B13C1   8BD8                   mov     ebx, eax
006B13C3   85DB                   test    ebx, ebx
006B13C5   7E17                   jle     006B13DE
006B13C7   A178B47D00             mov     eax, dword ptr [$007DB478]
006B13CC   8B00                   mov     eax, [eax]
006B13CE   8B4068                 mov     eax, [eax+$68]
006B13D1   BA78146B00             mov     edx, $006B1478

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B13D6   E8F994EEFF             call    0059A8D4
006B13DB   4B                     dec     ebx
006B13DC   75E9                   jnz     006B13C7
006B13DE   A178B47D00             mov     eax, dword ptr [$007DB478]
006B13E3   8B00                   mov     eax, [eax]
006B13E5   8B4068                 mov     eax, [eax+$68]

|
006B13E8   E8F393EEFF             call    0059A7E0

|
006B13ED   E856A8FFFF             call    006ABC48
006B13F2   33C0                   xor     eax, eax
006B13F4   5A                     pop     edx
006B13F5   59                     pop     ecx
006B13F6   59                     pop     ecx
006B13F7   648910                 mov     fs:[eax], edx
006B13FA   EB0A                   jmp     006B1406

* Reference to: System.@HandleAnyException;
|
006B13FC   E98336D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B1401   E8AA3AD5FF             call    00404EB0

****** END
|
006B1406   33C0                   xor     eax, eax
006B1408   5A                     pop     edx
006B1409   59                     pop     ecx
006B140A   59                     pop     ecx
006B140B   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B140E   681B146B00             push    $006B141B
006B1413   C3                     ret


* Reference to: System.@HandleFinally;
|
006B1414   E91F39D5FF             jmp     00404D38
006B1419   EBF8                   jmp     006B1413

****** END
|
006B141B   33C0                   xor     eax, eax
006B141D   5A                     pop     edx
006B141E   59                     pop     ecx
006B141F   59                     pop     ecx
006B1420   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[Y]Ã'
|
006B1423   6838146B00             push    $006B1438
006B1428   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006B142B   E86C40D5FF             call    0040549C
006B1430   C3                     ret


* Reference to: System.@HandleFinally;
|
006B1431   E90239D5FF             jmp     00404D38
006B1436   EBF0                   jmp     006B1428

****** END
|
006B1438   5F                     pop     edi
006B1439   5E                     pop     esi
006B143A   5B                     pop     ebx
006B143B   59                     pop     ecx
006B143C   5D                     pop     ebp
006B143D   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B147D(Sender : TObject);
begin
(*
006B147D   8BEC                   mov     ebp, esp
006B147F   81C42CFEFFFF           add     esp, $FFFFFE2C
006B1485   53                     push    ebx
006B1486   56                     push    esi
006B1487   57                     push    edi
006B1488   33D2                   xor     edx, edx
006B148A   899530FEFFFF           mov     [ebp+$FFFFFE30], edx
006B1490   89952CFEFFFF           mov     [ebp+$FFFFFE2C], edx
006B1496   33C0                   xor     eax, eax
006B1498   55                     push    ebp

* Possible String Reference to: 'é77Õÿëè_^[‹å]Ã'
|
006B1499   68FC156B00             push    $006B15FC

***** TRY
|
006B149E   64FF30                 push    dword ptr fs:[eax]
006B14A1   648920                 mov     fs:[eax], esp
006B14A4   33C0                   xor     eax, eax
006B14A6   55                     push    ebp
006B14A7   68D7156B00             push    $006B15D7

***** TRY
|
006B14AC   64FF30                 push    dword ptr fs:[eax]
006B14AF   648920                 mov     fs:[eax], esp
006B14B2   33C0                   xor     eax, eax
006B14B4   55                     push    ebp
006B14B5   68BF156B00             push    $006B15BF

***** TRY
|
006B14BA   64FF30                 push    dword ptr fs:[eax]
006B14BD   648920                 mov     fs:[eax], esp
006B14C0   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B14C5   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B14C7   BA14166B00             mov     edx, $006B1614

* Reference to: System.@LStrCmp;
|
006B14CC   E8D743D5FF             call    004058A8
006B14D1   7417                   jz      006B14EA
006B14D3   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006B14D8   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B14DA   BA24166B00             mov     edx, $006B1624

* Reference to: System.@LStrCmp;
|
006B14DF   E8C443D5FF             call    004058A8
006B14E4   0F85CB000000           jnz     006B15B5
006B14EA   A158A97D00             mov     eax, dword ptr [$007DA958]
006B14EF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'buffer'
|
006B14F1   BA38166B00             mov     edx, $006B1638

* Reference to: System.@LStrCmp;
|
006B14F6   E8AD43D5FF             call    004058A8
006B14FB   0F85B4000000           jnz     006B15B5
006B1501   8D952CFEFFFF           lea     edx, [ebp+$FFFFFE2C]
006B1507   33C0                   xor     eax, eax

* Reference to: System.ParamStr(Integer):String;
|
006B1509   E8DE17D5FF             call    00402CEC
006B150E   8B852CFEFFFF           mov     eax, [ebp+$FFFFFE2C]
006B1514   8D9530FEFFFF           lea     edx, [ebp+$FFFFFE30]

* Reference to: SysUtils.ExtractFilePath(AnsiString):AnsiString;
|
006B151A   E81DA3D5FF             call    0040B83C
006B151F   8D8530FEFFFF           lea     eax, [ebp+$FFFFFE30]

* Possible String Reference to: 'cupom.txt'
|
006B1525   BA48166B00             mov     edx, $006B1648

* Reference to: System.@LStrCat;
|
006B152A   E83542D5FF             call    00405764
006B152F   8B9530FEFFFF           mov     edx, [ebp+$FFFFFE30]
006B1535   8D8534FEFFFF           lea     eax, [ebp+$FFFFFE34]

* Reference to: System.@Assign(TTextRec;TTextRec;String):Integer;
|
006B153B   E8381CD5FF             call    00403178
006B1540   8D8534FEFFFF           lea     eax, [ebp+$FFFFFE34]

* Reference to: System.@RewritText(TTextRec;TTextRec):Integer;
|
006B1546   E8BD19D5FF             call    00402F08

|
006B154B   E85C14D5FF             call    004029AC
006B1550   A16CED7D00             mov     eax, dword ptr [$007DED6C]

* Reference to: System.@LStrLen(String):Integer;
|
006B1555   E89A54D5FF             call    004069F4
006B155A   8BF0                   mov     esi, eax
006B155C   4E                     dec     esi
006B155D   85F6                   test    esi, esi
006B155F   7C44                   jl      006B15A5
006B1561   46                     inc     esi
006B1562   33DB                   xor     ebx, ebx
006B1564   8D3C5B                 lea     edi, [ebx+ebx*2]
006B1567   A16CED7D00             mov     eax, dword ptr [$007DED6C]
006B156C   807CB80800             cmp     byte ptr [eax+edi*4+$08], $00
006B1571   752E                   jnz     006B15A1
006B1573   8D8534FEFFFF           lea     eax, [ebp+$FFFFFE34]

* Reference to: System.@Append(TTextRec;TTextRec):Integer;
|
006B1579   E89619D5FF             call    00402F14

|
006B157E   E82914D5FF             call    004029AC
006B1583   A16CED7D00             mov     eax, dword ptr [$007DED6C]
006B1588   8B54B804               mov     edx, [eax+edi*4+$04]
006B158C   8D8534FEFFFF           lea     eax, [ebp+$FFFFFE34]

* Reference to: Classes.TStream.WriteComponent(TStream;TComponent);
|
006B1592   E8E145D5FF             call    00405B78

* Reference to: System.@WriteLn(TTextRec;TTextRec):Pointer;
|
006B1597   E8A827D5FF             call    00403D44

|
006B159C   E80B14D5FF             call    004029AC
006B15A1   43                     inc     ebx
006B15A2   4E                     dec     esi
006B15A3   75BF                   jnz     006B1564
006B15A5   8D8534FEFFFF           lea     eax, [ebp+$FFFFFE34]

* Reference to: System.@Close(TTextRec;TTextRec):Integer;
|
006B15AB   E86C1DD5FF             call    0040331C

|
006B15B0   E8F713D5FF             call    004029AC
006B15B5   33C0                   xor     eax, eax
006B15B7   5A                     pop     edx
006B15B8   59                     pop     ecx
006B15B9   59                     pop     ecx
006B15BA   648910                 mov     fs:[eax], edx
006B15BD   EB0A                   jmp     006B15C9

* Reference to: System.@HandleAnyException;
|
006B15BF   E9C034D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B15C4   E8E738D5FF             call    00404EB0

****** END
|
006B15C9   33C0                   xor     eax, eax
006B15CB   5A                     pop     edx
006B15CC   59                     pop     ecx
006B15CD   59                     pop     ecx
006B15CE   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B15D1   68DE156B00             push    $006B15DE
006B15D6   C3                     ret


* Reference to: System.@HandleFinally;
|
006B15D7   E95C37D5FF             jmp     00404D38
006B15DC   EBF8                   jmp     006B15D6

****** END
|
006B15DE   33C0                   xor     eax, eax
006B15E0   5A                     pop     edx
006B15E1   59                     pop     ecx
006B15E2   59                     pop     ecx
006B15E3   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006B15E6   6803166B00             push    $006B1603
006B15EB   8D852CFEFFFF           lea     eax, [ebp+$FFFFFE2C]
006B15F1   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B15F6   E8C53ED5FF             call    004054C0
006B15FB   C3                     ret


* Reference to: System.@HandleFinally;
|
006B15FC   E93737D5FF             jmp     00404D38
006B1601   EBE8                   jmp     006B15EB

****** END
|
006B1603   5F                     pop     edi
006B1604   5E                     pop     esi
006B1605   5B                     pop     ebx
006B1606   8BE5                   mov     esp, ebp
006B1608   5D                     pop     ebp
006B1609   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B1655(Sender : TObject);
begin
(*
006B1655   8BEC                   mov     ebp, esp
006B1657   6A00                   push    $00
006B1659   6A00                   push    $00
006B165B   6A00                   push    $00
006B165D   53                     push    ebx
006B165E   56                     push    esi
006B165F   57                     push    edi
006B1660   33C0                   xor     eax, eax
006B1662   55                     push    ebp

* Possible String Reference to: 'é˜5Õÿëë_^[‹å]Ã'
|
006B1663   689B176B00             push    $006B179B

***** TRY
|
006B1668   64FF30                 push    dword ptr fs:[eax]
006B166B   648920                 mov     fs:[eax], esp
006B166E   33C0                   xor     eax, eax
006B1670   55                     push    ebp
006B1671   6879176B00             push    $006B1779

***** TRY
|
006B1676   64FF30                 push    dword ptr fs:[eax]
006B1679   648920                 mov     fs:[eax], esp
006B167C   33C0                   xor     eax, eax
006B167E   55                     push    ebp
006B167F   6861176B00             push    $006B1761

***** TRY
|
006B1684   64FF30                 push    dword ptr fs:[eax]
006B1687   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'esquerda'
|
006B168A   68B4176B00             push    $006B17B4
006B168F   8D45F8                 lea     eax, [ebp-$08]
006B1692   50                     push    eax
006B1693   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006B1698   8B00                   mov     eax, [eax]
006B169A   8B8098000000           mov     eax, [eax+$0098]
006B16A0   8B10                   mov     edx, [eax]
006B16A2   FF5258                 call    dword ptr [edx+$58]
006B16A5   8BC8                   mov     ecx, eax
006B16A7   BAC8176B00             mov     edx, $006B17C8
006B16AC   B8C8176B00             mov     eax, $006B17C8

|
006B16B1   E812100F00             call    007A26C8
006B16B6   8B55F8                 mov     edx, [ebp-$08]
006B16B9   8D4DFC                 lea     ecx, [ebp-$04]
006B16BC   33C0                   xor     eax, eax

|
006B16BE   E83DD5FFFF             call    006AEC00
006B16C3   A16CA17D00             mov     eax, dword ptr [$007DA16C]
006B16C8   8B00                   mov     eax, [eax]

* Possible String Reference to: 'windows'
|
006B16CA   BAD4176B00             mov     edx, $006B17D4

* Reference to: System.@LStrCmp;
|
006B16CF   E8D441D5FF             call    004058A8
006B16D4   7413                   jz      006B16E9
006B16D6   A16CA17D00             mov     eax, dword ptr [$007DA16C]
006B16DB   8B00                   mov     eax, [eax]

* Possible String Reference to: 'tm-uc300c'
|
006B16DD   BAE4176B00             mov     edx, $006B17E4

* Reference to: System.@LStrCmp;
|
006B16E2   E8C141D5FF             call    004058A8
006B16E7   756E                   jnz     006B1757
006B16E9   A158A97D00             mov     eax, dword ptr [$007DA958]
006B16EE   8B00                   mov     eax, [eax]

* Possible String Reference to: 'temporeal'
|
006B16F0   BAF8176B00             mov     edx, $006B17F8

* Reference to: System.@LStrCmp;
|
006B16F5   E8AE41D5FF             call    004058A8
006B16FA   755B                   jnz     006B1757
006B16FC   A178B47D00             mov     eax, dword ptr [$007DB478]
006B1701   8B00                   mov     eax, [eax]
006B1703   8B4068                 mov     eax, [eax+$68]

|
006B1706   E83190EEFF             call    0059A73C

* Reference to : TfrmGerenciador._PROC_006AEB04()
|
006B170B   E8F4D3FFFF             call    006AEB04
006B1710   8BD0                   mov     edx, eax
006B1712   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrFromChar(String;String;Char);
|
006B1715   E86A3FD5FF             call    00405684
006B171A   8D45F4                 lea     eax, [ebp-$0C]
006B171D   50                     push    eax

* Reference to : TfrmGerenciador._PROC_006AEB64()
|
006B171E   E841D4FFFF             call    006AEB64
006B1723   8D0440                 lea     eax, [eax+eax*2]
006B1726   8B156CED7D00           mov     edx, [$007DED6C]
006B172C   8B548204               mov     edx, [edx+eax*4+$04]
006B1730   58                     pop     eax

* Reference to: System.@LStrCat;
|
006B1731   E82E40D5FF             call    00405764
006B1736   8B55F4                 mov     edx, [ebp-$0C]
006B1739   A178B47D00             mov     eax, dword ptr [$007DB478]
006B173E   8B00                   mov     eax, [eax]
006B1740   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006B1743   E88C91EEFF             call    0059A8D4
006B1748   A178B47D00             mov     eax, dword ptr [$007DB478]
006B174D   8B00                   mov     eax, [eax]
006B174F   8B4068                 mov     eax, [eax+$68]

|
006B1752   E88990EEFF             call    0059A7E0
006B1757   33C0                   xor     eax, eax
006B1759   5A                     pop     edx
006B175A   59                     pop     ecx
006B175B   59                     pop     ecx
006B175C   648910                 mov     fs:[eax], edx
006B175F   EB0A                   jmp     006B176B

* Reference to: System.@HandleAnyException;
|
006B1761   E91E33D5FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
006B1766   E84537D5FF             call    00404EB0

****** END
|
006B176B   33C0                   xor     eax, eax
006B176D   5A                     pop     edx
006B176E   59                     pop     ecx
006B176F   59                     pop     ecx
006B1770   648910                 mov     fs:[eax], edx

****** FINALLY
|
006B1773   6880176B00             push    $006B1780
006B1778   C3                     ret


* Reference to: System.@HandleFinally;
|
006B1779   E9BA35D5FF             jmp     00404D38
006B177E   EBF8                   jmp     006B1778

****** END
|
006B1780   33C0                   xor     eax, eax
006B1782   5A                     pop     edx
006B1783   59                     pop     ecx
006B1784   59                     pop     ecx
006B1785   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
006B1788   68A2176B00             push    $006B17A2
006B178D   8D45F4                 lea     eax, [ebp-$0C]
006B1790   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006B1795   E8263DD5FF             call    004054C0
006B179A   C3                     ret


* Reference to: System.@HandleFinally;
|
006B179B   E99835D5FF             jmp     00404D38
006B17A0   EBEB                   jmp     006B178D

****** END
|
006B17A2   5F                     pop     edi
006B17A3   5E                     pop     esi
006B17A4   5B                     pop     ebx
006B17A5   8BE5                   mov     esp, ebp
006B17A7   5D                     pop     ebp
006B17A8   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B1805(Sender : TObject);
begin
(*
006B1805   8BEC                   mov     ebp, esp
006B1807   33C0                   xor     eax, eax
006B1809   55                     push    ebp

* Possible String Reference to: 'éø4Õÿëø]Ãƒ-pí}'
|
006B180A   683B186B00             push    $006B183B

***** TRY
|
006B180F   64FF30                 push    dword ptr fs:[eax]
006B1812   648920                 mov     fs:[eax], esp
006B1815   FF0570ED7D00           inc     dword ptr [$007DED70]
006B181B   7510                   jnz     006B182D
006B181D   B86CED7D00             mov     eax, $007DED6C
006B1822   8B157CE86A00           mov     edx, [$006AE87C]

* Reference to: System.@DynArrayClear(Pointer;Pointer;Pointer);
|
006B1828   E8A354D5FF             call    00406CD0
006B182D   33C0                   xor     eax, eax
006B182F   5A                     pop     edx
006B1830   59                     pop     ecx
006B1831   59                     pop     ecx
006B1832   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ãƒ-pí}'
|
006B1835   6842186B00             push    $006B1842
006B183A   C3                     ret


* Reference to: System.@HandleFinally;
|
006B183B   E9F834D5FF             jmp     00404D38
006B1840   EBF8                   jmp     006B183A

****** END
|
006B1842   5D                     pop     ebp
006B1843   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B1844(Sender : TObject);
begin
(*
006B1844   832D70ED7D0001         sub     dword ptr [$007DED70], +$01
006B184B   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B184C(Sender : TObject);
begin
(*
006B184C   55                     push    ebp
006B184D   8BEC                   mov     ebp, esp
006B184F   33C0                   xor     eax, eax
006B1851   55                     push    ebp

* Possible String Reference to: 'éÂ4Õÿëø]Ã‹Àƒ-tí}'
|
006B1852   6871186B00             push    $006B1871

***** TRY
|
006B1857   64FF30                 push    dword ptr fs:[eax]
006B185A   648920                 mov     fs:[eax], esp
006B185D   FF0574ED7D00           inc     dword ptr [$007DED74]
006B1863   33C0                   xor     eax, eax
006B1865   5A                     pop     edx
006B1866   59                     pop     ecx
006B1867   59                     pop     ecx
006B1868   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-tí}'
|
006B186B   6878186B00             push    $006B1878
006B1870   C3                     ret


* Reference to: System.@HandleFinally;
|
006B1871   E9C234D5FF             jmp     00404D38
006B1876   EBF8                   jmp     006B1870

****** END
|
006B1878   5D                     pop     ebp
006B1879   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B187C(Sender : TObject);
begin
(*
006B187C   832D74ED7D0001         sub     dword ptr [$007DED74], +$01
006B1883   C3                     ret

*)
end;

procedure TfrmGerenciador._PROC_006B1884(Sender : TObject);
begin
(*
006B1884   D018                   rcr     byte ptr [eax], 1
006B1886   6B0000                 imul    eax, [eax], $00
006B1889   0000                   add     [eax], al

*)
end;

end.