unit PrevRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls
type
  TFrmPreview=class(TForm)
    Preview: TFrmPreview;
    sbPreview: TStatusBar;
    LMDSimplePanel1: TLMDSimplePanel;
    SpeedButton6: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label1: TLabel;
    EdZoom: TEdit;
    UdZoom: TUpDown;
    sbConfigura: TSpeedButton;
    sbWindows: TSpeedButton;
    sbFechar: TSpeedButton;
    sbDos: TSpeedButton;
    sbTXT: TSpeedButton;
    sdTXT: TSaveDialog;
    PrintSetup1: TPBPrinterSetupDialog;
    PrintSetup: TPrinterSetupDialog;
    pfPrevRel: TJvProgressComponent;
    GmRtfPreview1: TGmRtfPreview;
    pdImpress: TJvProgressDialog;
    OFFS_0385: N.A.;
    OFFS_0384: N.A.;
    OFFS_0386: N.A.;
    procedure SpeedButton1Click(Sender : TObject);
    procedure SpeedButton2Click(Sender : TObject);
    procedure sbWindowsClick(Sender : TObject);
    procedure sbConfiguraClick(Sender : TObject);
    procedure SpeedButton5Click(Sender : TObject);
    procedure SpeedButton6Click(Sender : TObject);
    procedure sbFecharClick(Sender : TObject);
    procedure UdZoomMouseUp(Sender : TObject);
    procedure UdZoomMouseDown(Sender : TObject);
    procedure sbDosClick(Sender : TObject);
    procedure sbTXTClick(Sender : TObject);
    procedure FormCreate(Sender : TObject);
    procedure EdZoomChange(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure naTela(Sender : TObject);
    procedure ModoDOS(Sender : TObject);
    procedure PreviewPageChange(Sender : TObject);
    procedure PreviewPrintProgress(Sender : TObject);
    procedure PreviewAfterPrint(Sender : TObject);
    procedure PreviewBeforePrint(Sender : TObject);
    procedure _PROC_0072CF3C(Sender : TObject);
    procedure _PROC_0072D061(Sender : TObject);
    procedure _PROC_0072D86D(Sender : TObject);
    procedure _PROC_0072D9ED(Sender : TObject);
    procedure _PROC_0072DDA5(Sender : TObject);
    procedure _PROC_0072DF41(Sender : TObject);
    procedure _PROC_0072E44E(Sender : TObject);
    procedure _PROC_0072E4D0(Sender : TObject);
    procedure _PROC_0072E559(Sender : TObject);
    procedure _PROC_0072E5DD(Sender : TObject);
    procedure _PROC_0072E69A(Sender : TObject);
    procedure _PROC_0072E6A8(Sender : TObject);
    procedure _PROC_0072E759(Sender : TObject);
    procedure _PROC_0072E768(Sender : TObject);
    procedure _PROC_0072E7E8(Sender : TObject);
    procedure _PROC_0072E81C(Sender : TObject);
    procedure _PROC_0072E820(Sender : TObject);
    procedure _PROC_0072EBAB(Sender : TObject);
    procedure _PROC_0072EC7A(Sender : TObject);
    procedure _PROC_0072ECAD(Sender : TObject);
    procedure _PROC_0072EF4D(Sender : TObject);
    procedure _PROC_0072F0EC(Sender : TObject);
    procedure _PROC_0072F1E5(Sender : TObject);
    procedure _PROC_0072F77C(Sender : TObject);
    procedure _PROC_0072F982(Sender : TObject);
    procedure _PROC_0072F9D8(Sender : TObject);
    procedure _PROC_0072FB64(Sender : TObject);
    procedure _PROC_0072FBEC(Sender : TObject);
    procedure _PROC_007301DD(Sender : TObject);
    procedure _PROC_0073035C(Sender : TObject);
    procedure _PROC_0073048C(Sender : TObject);
    procedure _PROC_00730528(Sender : TObject);
    procedure _PROC_007306F5(Sender : TObject);
    procedure _PROC_007307D5(Sender : TObject);
    procedure _PROC_0073086C(Sender : TObject);
    procedure _PROC_00730904(Sender : TObject);
    procedure _PROC_00731205(Sender : TObject);
    procedure _PROC_0073130C(Sender : TObject);
    procedure _PROC_007313AC(Sender : TObject);
    procedure _PROC_00731517(Sender : TObject);
    procedure _PROC_00731790(Sender : TObject);
    procedure _PROC_007317A4(Sender : TObject);
    procedure _PROC_007317D1(Sender : TObject);
    procedure _PROC_00731811(Sender : TObject);
    procedure _PROC_007318F5(Sender : TObject);
    procedure _PROC_00731E89(Sender : TObject);
    procedure _PROC_00732014(Sender : TObject);
    procedure _PROC_00732155(Sender : TObject);
    procedure _PROC_00732275(Sender : TObject);
    procedure _PROC_00732519(Sender : TObject);
    procedure _PROC_007325A1(Sender : TObject);
    procedure _PROC_00732845(Sender : TObject);
    procedure _PROC_00732A91(Sender : TObject);
    procedure _PROC_00732AF9(Sender : TObject);
    procedure _PROC_00732B20(Sender : TObject);
    procedure _PROC_00732D6D(Sender : TObject);
    procedure _PROC_00732DD5(Sender : TObject);
    procedure _PROC_00732DFC(Sender : TObject);
    procedure _PROC_00732EE8(Sender : TObject);
    procedure _PROC_00732F09(Sender : TObject);
    procedure _PROC_00733009(Sender : TObject);
    procedure _PROC_00733109(Sender : TObject);
    procedure _PROC_00733239(Sender : TObject);
    procedure _PROC_007332C9(Sender : TObject);
    procedure _PROC_007333CF(Sender : TObject);
    procedure _PROC_007334D7(Sender : TObject);
    procedure _PROC_00733509(Sender : TObject);
    procedure _PROC_00733621(Sender : TObject);
    procedure _PROC_0073369C(Sender : TObject);
    procedure _PROC_00733AF5(Sender : TObject);
    procedure _PROC_00733B98(Sender : TObject);
    procedure _PROC_007340E0(Sender : TObject);
    procedure _PROC_0073411C(Sender : TObject);
    procedure _PROC_00734124(Sender : TObject);
    procedure _PROC_00734154(Sender : TObject);
    procedure _PROC_0073415C(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrmPreview: TFrmPreview;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TFrmPreview.SpeedButton1Click(Sender : TObject);
begin
(*
0072CE44   55                     push    ebp
0072CE45   8BEC                   mov     ebp, esp

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CE47   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to : TGmPreview._PROC_0071C1CC()
|
0072CE4D   E87AF3FEFF             call    0071C1CC
0072CE52   5D                     pop     ebp
0072CE53   C3                     ret

*)
end;

procedure TFrmPreview.SpeedButton2Click(Sender : TObject);
begin
(*
0072CE54   55                     push    ebp
0072CE55   8BEC                   mov     ebp, esp

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CE57   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to : TGmPreview._PROC_0071C1F4()
|
0072CE5D   E892F3FEFF             call    0071C1F4
0072CE62   5D                     pop     ebp
0072CE63   C3                     ret

*)
end;

procedure TFrmPreview.sbWindowsClick(Sender : TObject);
begin
(*
0072CE64   55                     push    ebp
0072CE65   8BEC                   mov     ebp, esp

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CE67   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to : TGmPreview._PROC_0071C20C()
|
0072CE6D   E89AF3FEFF             call    0071C20C
0072CE72   5D                     pop     ebp
0072CE73   C3                     ret

*)
end;

procedure TFrmPreview.sbConfiguraClick(Sender : TObject);
begin
(*
0072CE74   55                     push    ebp
0072CE75   8BEC                   mov     ebp, esp
0072CE77   53                     push    ebx
0072CE78   8BD8                   mov     ebx, eax

* Reference to control TFrmPreview.PrintSetup : TPrinterSetupDialog
|
0072CE7A   8B833C030000           mov     eax, [ebx+$033C]
0072CE80   8B10                   mov     edx, [eax]

* Reference to method TPrinterSetupDialog.Execute()
|
0072CE82   FF523C                 call    dword ptr [edx+$3C]
0072CE85   84C0                   test    al, al
0072CE87   743A                   jz      0072CEC3

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CE89   8B83F8020000           mov     eax, [ebx+$02F8]

|
0072CE8F   E8D8E9FEFF             call    0071B86C

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CE94   8B83F8020000           mov     eax, [ebx+$02F8]

* Reference to : TGmPreview._PROC_0071B6D0()
|
0072CE9A   E831E8FEFF             call    0071B6D0

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CE9F   8B83F8020000           mov     eax, [ebx+$02F8]

* Reference to field TFrmPreview.OFFS_028C
|
0072CEA5   8B908C020000           mov     edx, [eax+$028C]
0072CEAB   42                     inc     edx

* Reference to : TGmPreview._PROC_0071B608()
|
0072CEAC   E857E7FEFF             call    0071B608

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CEB1   8B83F8020000           mov     eax, [ebx+$02F8]

* Reference to field TFrmPreview.OFFS_028C
|
0072CEB7   8B908C020000           mov     edx, [eax+$028C]
0072CEBD   4A                     dec     edx

* Reference to : TGmPreview._PROC_0071B608()
|
0072CEBE   E845E7FEFF             call    0071B608
0072CEC3   5B                     pop     ebx
0072CEC4   5D                     pop     ebp
0072CEC5   C3                     ret

*)
end;

procedure TFrmPreview.SpeedButton5Click(Sender : TObject);
begin
(*
0072CEC8   55                     push    ebp
0072CEC9   8BEC                   mov     ebp, esp

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CECB   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to : TGmPreview._PROC_0071C1A4()
|
0072CED1   E8CEF2FEFF             call    0071C1A4
0072CED6   5D                     pop     ebp
0072CED7   C3                     ret

*)
end;

procedure TFrmPreview.SpeedButton6Click(Sender : TObject);
begin
(*
0072CED8   55                     push    ebp
0072CED9   8BEC                   mov     ebp, esp

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CEDB   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to : TGmPreview._PROC_0071C18C()
|
0072CEE1   E8A6F2FEFF             call    0071C18C
0072CEE6   5D                     pop     ebp
0072CEE7   C3                     ret

*)
end;

procedure TFrmPreview.sbFecharClick(Sender : TObject);
begin
(*
0072CEE8   55                     push    ebp
0072CEE9   8BEC                   mov     ebp, esp

* Reference to: Forms.TCustomForm.Close(TCustomForm);
|
0072CEEB   E8D051D8FF             call    004B20C0
0072CEF0   5D                     pop     ebp
0072CEF1   C3                     ret

*)
end;

procedure TFrmPreview.UdZoomMouseUp(Sender : TObject);
begin
(*
0072CEF4   55                     push    ebp
0072CEF5   8BEC                   mov     ebp, esp
0072CEF7   53                     push    ebx
0072CEF8   8BD8                   mov     ebx, eax

* Reference to control TFrmPreview.UdZoom : TUpDown
|
0072CEFA   8B831C030000           mov     eax, [ebx+$031C]

* Reference to: ComCtrls.TCustomUpDown.GetPosition(TCustomUpDown):Smallint;
|
0072CF00   E8B724D4FF             call    0046F3BC
0072CF05   0FBFD0                 movsx   edx, ax

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CF08   8B83F8020000           mov     eax, [ebx+$02F8]

* Reference to : TGmPreview._PROC_0071B608()
|
0072CF0E   E8F5E6FEFF             call    0071B608
0072CF13   5B                     pop     ebx
0072CF14   5D                     pop     ebp
0072CF15   C20C00                 ret     $000C

*)
end;

procedure TFrmPreview.UdZoomMouseDown(Sender : TObject);
begin
(*
0072CF18   55                     push    ebp
0072CF19   8BEC                   mov     ebp, esp
0072CF1B   53                     push    ebx
0072CF1C   8BD8                   mov     ebx, eax

* Reference to control TFrmPreview.UdZoom : TUpDown
|
0072CF1E   8B831C030000           mov     eax, [ebx+$031C]

* Reference to: ComCtrls.TCustomUpDown.GetPosition(TCustomUpDown):Smallint;
|
0072CF24   E89324D4FF             call    0046F3BC
0072CF29   0FBFD0                 movsx   edx, ax

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072CF2C   8B83F8020000           mov     eax, [ebx+$02F8]

* Reference to : TGmPreview._PROC_0071B608()
|
0072CF32   E8D1E6FEFF             call    0071B608
0072CF37   5B                     pop     ebx
0072CF38   5D                     pop     ebp
0072CF39   C20C00                 ret     $000C

*)
end;

procedure TFrmPreview.sbDosClick(Sender : TObject);
begin
(*
0072F9A0   55                     push    ebp
0072F9A1   8BEC                   mov     ebp, esp
0072F9A3   53                     push    ebx
0072F9A4   8BD8                   mov     ebx, eax
0072F9A6   803D009D7D0000         cmp     byte ptr [$007D9D00], $00
0072F9AD   740D                   jz      0072F9BC
0072F9AF   33D2                   xor     edx, edx

* Reference to control TFrmPreview.sbDos : TSpeedButton
|
0072F9B1   8B832C030000           mov     eax, [ebx+$032C]
0072F9B7   8B08                   mov     ecx, [eax]

* Reference to method TSpeedButton.SetEnabled(Boolean)
|
0072F9B9   FF5164                 call    dword ptr [ecx+$64]
0072F9BC   8BC3                   mov     eax, ebx

|
0072F9BE   E821F8FFFF             call    0072F1E4
0072F9C3   803D009D7D0000         cmp     byte ptr [$007D9D00], $00
0072F9CA   7407                   jz      0072F9D3
0072F9CC   8BC3                   mov     eax, ebx

* Reference to: Forms.TCustomForm.Close(TCustomForm);
|
0072F9CE   E8ED26D8FF             call    004B20C0
0072F9D3   5B                     pop     ebx
0072F9D4   5D                     pop     ebp
0072F9D5   C3                     ret

*)
end;

procedure TFrmPreview.sbTXTClick(Sender : TObject);
begin
(*
00730350   55                     push    ebp
00730351   8BEC                   mov     ebp, esp

* Reference to : TFrmPreview._PROC_0072FBEC()
|
00730353   E894F8FFFF             call    0072FBEC
00730358   5D                     pop     ebp
00730359   C3                     ret

*)
end;

procedure TFrmPreview.FormCreate(Sender : TObject);
begin
(*
00731570   55                     push    ebp
00731571   8BEC                   mov     ebp, esp
00731573   6A00                   push    $00
00731575   53                     push    ebx
00731576   56                     push    esi
00731577   8BD8                   mov     ebx, eax
00731579   33C0                   xor     eax, eax
0073157B   55                     push    ebp

* Possible String Reference to: 'È(7ÕˇÎ^[Y]√'
|
0073157C   680B167300             push    $0073160B

***** TRY
|
00731581   64FF30                 push    dword ptr fs:[eax]
00731584   648920                 mov     fs:[eax], esp
00731587   A1C09E7D00             mov     eax, dword ptr [$007D9EC0]
0073158C   833800                 cmp     dword ptr [eax], +$00
0073158F   745F                   jz      007315F0
00731591   A1C09E7D00             mov     eax, dword ptr [$007D9EC0]
00731596   8B00                   mov     eax, [eax]

* Reference to : TFrmPreview._PROC_007313AC()
|
00731598   E80FFEFFFF             call    007313AC
0073159D   84C0                   test    al, al
0073159F   754F                   jnz     007315F0
007315A1   6A00                   push    $00

* Possible String Reference to: 'AtenÁ„o!A impressora definida para 
|                                este relatÛrio ('
|
007315A3   6820167300             push    $00731620
007315A8   A1C09E7D00             mov     eax, dword ptr [$007D9EC0]
007315AD   FF30                   push    dword ptr [eax]

* Possible String Reference to: ') n„o foi localizada. Selecione a s
|                                eguir uma impressora v·lida!'
|
007315AF   6860167300             push    $00731660
007315B4   68A8167300             push    $007316A8
007315B9   68A8167300             push    $007316A8

* Possible String Reference to: 'Para corrigir este erro, verifique 
|                                as opÁıes de relatÛrio na definiÁıe
|                                s de formul·rio!'
|
007315BE   68B4167300             push    $007316B4
007315C3   8D45FC                 lea     eax, [ebp-$04]
007315C6   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrCatN;
|
007315CB   E84C42CDFF             call    0040581C
007315D0   8B45FC                 mov     eax, [ebp-$04]
007315D3   668B0D0C177300         mov     cx, word ptr [$0073170C]
007315DA   B202                   mov     dl, $02

|
007315DC   E84B25D1FF             call    00443B2C

* Reference to control TFrmPreview.sbConfigura : TSpeedButton
|
007315E1   8B8320030000           mov     eax, [ebx+$0320]
007315E7   66BEEBFF               mov     si, $FFEB

* Reference to: System.@CallDynaInst;
|
007315EB   E8B031CDFF             call    004047A0

* Reference to : TFrmPreview._PROC_0073130C()
|
007315F0   E817FDFFFF             call    0073130C
007315F5   33C0                   xor     eax, eax
007315F7   5A                     pop     edx
007315F8   59                     pop     ecx
007315F9   59                     pop     ecx
007315FA   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[Y]√'
|
007315FD   6812167300             push    $00731612
00731602   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00731605   E8923ECDFF             call    0040549C
0073160A   C3                     ret


* Reference to: System.@HandleFinally;
|
0073160B   E92837CDFF             jmp     00404D38
00731610   EBF0                   jmp     00731602

****** END
|
00731612   5E                     pop     esi
00731613   5B                     pop     ebx
00731614   59                     pop     ecx
00731615   5D                     pop     ebp
00731616   C3                     ret

*)
end;

procedure TFrmPreview.EdZoomChange(Sender : TObject);
begin
(*
00731710   55                     push    ebp
00731711   8BEC                   mov     ebp, esp
00731713   6A00                   push    $00
00731715   53                     push    ebx
00731716   56                     push    esi
00731717   57                     push    edi
00731718   8BD8                   mov     ebx, eax
0073171A   33C0                   xor     eax, eax
0073171C   55                     push    ebp
0073171D   6883177300             push    $00731783

***** TRY
|
00731722   64FF30                 push    dword ptr fs:[eax]
00731725   648920                 mov     fs:[eax], esp
00731728   33C0                   xor     eax, eax
0073172A   55                     push    ebp
0073172B   6863177300             push    $00731763

***** TRY
|
00731730   64FF30                 push    dword ptr fs:[eax]
00731733   648920                 mov     fs:[eax], esp
00731736   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmPreview.EdZoom : TEdit
|
00731739   8B8318030000           mov     eax, [ebx+$0318]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0073173F   E8881FD6FF             call    004936CC
00731744   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
00731747   E88497CDFF             call    0040AED0
0073174C   8BD0                   mov     edx, eax

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0073174E   8B83F8020000           mov     eax, [ebx+$02F8]

* Reference to : TGmPreview._PROC_0071B608()
|
00731754   E8AF9EFEFF             call    0071B608
00731759   33C0                   xor     eax, eax
0073175B   5A                     pop     edx
0073175C   59                     pop     ecx
0073175D   59                     pop     ecx
0073175E   648910                 mov     fs:[eax], edx
00731761   EB0A                   jmp     0073176D

* Reference to: System.@HandleAnyException;
|
00731763   E91C33CDFF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
00731768   E84337CDFF             call    00404EB0

****** END
|
0073176D   33C0                   xor     eax, eax
0073176F   5A                     pop     edx
00731770   59                     pop     ecx
00731771   59                     pop     ecx
00731772   648910                 mov     fs:[eax], edx

****** FINALLY
|
00731775   688A177300             push    $0073178A
0073177A   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0073177D   E81A3DCDFF             call    0040549C
00731782   C3                     ret


* Reference to: System.@HandleFinally;
|
00731783   E9B035CDFF             jmp     00404D38
00731788   EBF0                   jmp     0073177A

****** END
|
0073178A   5F                     pop     edi
0073178B   5E                     pop     esi
0073178C   5B                     pop     ebx
0073178D   59                     pop     ecx
0073178E   5D                     pop     ebp
0073178F   C3                     ret

*)
end;

procedure TFrmPreview.FormShow(Sender : TObject);
begin
(*
00731F64   55                     push    ebp
00731F65   8BEC                   mov     ebp, esp
00731F67   53                     push    ebx
00731F68   8BD8                   mov     ebx, eax
00731F6A   A160B17D00             mov     eax, dword ptr [$007DB160]
00731F6F   8B00                   mov     eax, [eax]

|
00731F71   E892110000             call    00733108
00731F76   A2009D7D00             mov     byte ptr [$007D9D00], al
00731F7B   803D009D7D0000         cmp     byte ptr [$007D9D00], $00
00731F82   750A                   jnz     00731F8E
00731F84   A1E4AE7D00             mov     eax, dword ptr [$007DAEE4]
00731F89   803800                 cmp     byte ptr [eax], $00
00731F8C   7404                   jz      00731F92
00731F8E   33D2                   xor     edx, edx
00731F90   EB02                   jmp     00731F94
00731F92   B201                   mov     dl, $01

* Reference to control TFrmPreview.sbConfigura : TSpeedButton
|
00731F94   8B8320030000           mov     eax, [ebx+$0320]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
00731F9A   E84D16D6FF             call    004935EC
00731F9F   803D009D7D0000         cmp     byte ptr [$007D9D00], $00
00731FA6   750A                   jnz     00731FB2
00731FA8   A1E4AE7D00             mov     eax, dword ptr [$007DAEE4]
00731FAD   803800                 cmp     byte ptr [eax], $00
00731FB0   7404                   jz      00731FB6
00731FB2   33D2                   xor     edx, edx
00731FB4   EB02                   jmp     00731FB8
00731FB6   B201                   mov     dl, $01

* Reference to control TFrmPreview.sbWindows : TSpeedButton
|
00731FB8   8B8324030000           mov     eax, [ebx+$0324]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
00731FBE   E82916D6FF             call    004935EC
00731FC3   8B15E4AE7D00           mov     edx, [$007DAEE4]
00731FC9   8A12                   mov     dl, byte ptr [edx]
00731FCB   80F201                 xor     dl, $01

* Reference to control TFrmPreview.sbDos : TSpeedButton
|
00731FCE   8B832C030000           mov     eax, [ebx+$032C]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
00731FD4   E81316D6FF             call    004935EC
00731FD9   803D009D7D0000         cmp     byte ptr [$007D9D00], $00
00731FE0   750A                   jnz     00731FEC
00731FE2   A1E4AE7D00             mov     eax, dword ptr [$007DAEE4]
00731FE7   803800                 cmp     byte ptr [eax], $00
00731FEA   7404                   jz      00731FF0
00731FEC   33D2                   xor     edx, edx
00731FEE   EB02                   jmp     00731FF2
00731FF0   B201                   mov     dl, $01

* Reference to control TFrmPreview.sbTXT : TSpeedButton
|
00731FF2   8B8330030000           mov     eax, [ebx+$0330]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
00731FF8   E8EF15D6FF             call    004935EC
00731FFD   8A15009D7D00           mov     dl, byte ptr [$007D9D00]
00732003   80F201                 xor     dl, $01

* Reference to control TFrmPreview.sbFechar : TSpeedButton
|
00732006   8B8328030000           mov     eax, [ebx+$0328]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
0073200C   E8DB15D6FF             call    004935EC
00732011   5B                     pop     ebx
00732012   5D                     pop     ebp
00732013   C3                     ret

*)
end;

procedure TFrmPreview.naTela(Sender : TObject);
begin
(*
007336D0   55                     push    ebp
007336D1   8BEC                   mov     ebp, esp
007336D3   6A00                   push    $00
007336D5   6A00                   push    $00
007336D7   53                     push    ebx
007336D8   56                     push    esi
007336D9   57                     push    edi
007336DA   8BD8                   mov     ebx, eax
007336DC   33C0                   xor     eax, eax
007336DE   55                     push    ebp
007336DF   688C3A7300             push    $00733A8C

***** TRY
|
007336E4   64FF30                 push    dword ptr fs:[eax]
007336E7   648920                 mov     fs:[eax], esp

* Reference to field TFrmPreview.OFFS_034C
|
007336EA   8B834C030000           mov     eax, [ebx+$034C]
007336F0   8D04C0                 lea     eax, [eax+eax*8]
007336F3   8B1578AE7D00           mov     edx, [$007DAE78]
007336F9   8B12                   mov     edx, [edx]
007336FB   8B548210               mov     edx, [edx+eax*4+$10]
007336FF   8BC3                   mov     eax, ebx

|
00733701   E81AFFFFFF             call    00733620

* Reference to field TFrmPreview.OFFS_034C
|
00733706   8B834C030000           mov     eax, [ebx+$034C]
0073370C   8D04C0                 lea     eax, [eax+eax*8]
0073370F   8B1578AE7D00           mov     edx, [$007DAE78]
00733715   8B12                   mov     edx, [edx]
00733717   8B448210               mov     eax, [edx+eax*4+$10]

|
0073371B   E84C520700             call    007A896C

* Possible String Reference to: 'Montando relatÛrio...'
|
00733720   68A43A7300             push    $00733AA4

* Reference to field TFrmPreview.OFFS_034C
|
00733725   8B834C030000           mov     eax, [ebx+$034C]
0073372B   8D04C0                 lea     eax, [eax+eax*8]
0073372E   8B1578AE7D00           mov     edx, [$007DAE78]
00733734   8B12                   mov     edx, [edx]
00733736   8B448210               mov     eax, [edx+eax*4+$10]
0073373A   8B10                   mov     edx, [eax]
0073373C   FF924C010000           call    dword ptr [edx+$014C]
00733742   8BD0                   mov     edx, eax

* Possible String Reference to: 'Aguarde, processando dados...'
|
00733744   B9C43A7300             mov     ecx, $00733AC4
00733749   8BC3                   mov     eax, ebx

|
0073374B   E8A4030000             call    00733AF4

* Reference to field TFrmPreview.OFFS_034C
|
00733750   8B834C030000           mov     eax, [ebx+$034C]
00733756   8D04C0                 lea     eax, [eax+eax*8]
00733759   8B1578AE7D00           mov     edx, [$007DAE78]
0073375F   8B12                   mov     edx, [edx]
00733761   8B448210               mov     eax, [edx+eax*4+$10]

* Reference to: DB.TDataSet.First(TDataSet);
|
00733765   E8C278DBFF             call    004EB02C
0073376A   E9C4020000             jmp     00733A33

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
0073376F   8B9340030000           mov     edx, [ebx+$0340]

* Reference to field TJvProgressComponent.OFFS_0050
|
00733775   807A5000               cmp     byte ptr [edx+$50], $00
00733779   0F85F2020000           jnz     00733A71
0073377F   8B1578AE7D00           mov     edx, [$007DAE78]
00733785   8B12                   mov     edx, [edx]
00733787   8B448214               mov     eax, [edx+eax*4+$14]
0073378B   8B7010                 mov     esi, [eax+$10]
0073378E   4E                     dec     esi
0073378F   85F6                   test    esi, esi
00733791   7C7A                   jl      0073380D
00733793   46                     inc     esi
00733794   33FF                   xor     edi, edi

* Reference to field TFrmPreview.OFFS_034C
|
00733796   8B834C030000           mov     eax, [ebx+$034C]
0073379C   8D04C0                 lea     eax, [eax+eax*8]
0073379F   8B1578AE7D00           mov     edx, [$007DAE78]
007337A5   8B12                   mov     edx, [edx]
007337A7   8B448214               mov     eax, [edx+eax*4+$14]
007337AB   8D4DF8                 lea     ecx, [ebp-$08]
007337AE   8BD7                   mov     edx, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
007337B0   E8EF60E6FF             call    005998A4
007337B5   8B45F8                 mov     eax, [ebp-$08]
007337B8   8D55FC                 lea     edx, [ebp-$04]

|
007337BB   E880A7FFFF             call    0072DF40

* Reference to field TFrmPreview.OFFS_0358
|
007337C0   8D8358030000           lea     eax, [ebx+$0358]
007337C6   50                     push    eax

* Reference to field TFrmPreview.OFFS_0360
|
007337C7   8D8360030000           lea     eax, [ebx+$0360]
007337CD   50                     push    eax

* Reference to field TFrmPreview.OFFS_0368
|
007337CE   8B8368030000           mov     eax, [ebx+$0368]
007337D4   50                     push    eax

* Reference to field TFrmPreview.OFFS_0350
|
007337D5   8D8B50030000           lea     ecx, [ebx+$0350]
007337DB   8B55FC                 mov     edx, [ebp-$04]
007337DE   8BC3                   mov     eax, ebx

|
007337E0   E807A2FFFF             call    0072D9EC
007337E5   FFB374030000           push    dword ptr [ebx+$0374]
007337EB   FFB370030000           push    dword ptr [ebx+$0370]

* Possible String Reference to: 'tela'
|
007337F1   68EC3A7300             push    $00733AEC

* Reference to field TFrmPreview.OFFS_0360
|
007337F6   8D9360030000           lea     edx, [ebx+$0360]

* Reference to field TFrmPreview.OFFS_0378
|
007337FC   8B8B78030000           mov     ecx, [ebx+$0378]
00733802   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0072F0EC()
|
00733804   E8E3B8FFFF             call    0072F0EC
00733809   47                     inc     edi
0073380A   4E                     dec     esi
0073380B   7589                   jnz     00733796

* Reference to field TFrmPreview.OFFS_034C
|
0073380D   8B834C030000           mov     eax, [ebx+$034C]
00733813   8D04C0                 lea     eax, [eax+eax*8]
00733816   8B1578AE7D00           mov     edx, [$007DAE78]
0073381C   8B12                   mov     edx, [edx]
0073381E   807C821800             cmp     byte ptr [edx+eax*4+$18], $00
00733823   7468                   jz      0073388D
00733825   8B1578AE7D00           mov     edx, [$007DAE78]
0073382B   8B12                   mov     edx, [edx]
0073382D   8B44821C               mov     eax, [edx+eax*4+$1C]
00733831   8D04C0                 lea     eax, [eax+eax*8]
00733834   8B1578AE7D00           mov     edx, [$007DAE78]
0073383A   8B12                   mov     edx, [edx]
0073383C   8B548214               mov     edx, [edx+eax*4+$14]

* Reference to field TFrmPreview.OFFS_0380
|
00733840   899380030000           mov     [ebx+$0380], edx

* Reference to field TFrmPreview.OFFS_0350
|
00733846   8D8350030000           lea     eax, [ebx+$0350]
0073384C   50                     push    eax

* Reference to field TFrmPreview.OFFS_0358
|
0073384D   8D8358030000           lea     eax, [ebx+$0358]
00733853   50                     push    eax

* Reference to field TFrmPreview.OFFS_0360
|
00733854   8D8360030000           lea     eax, [ebx+$0360]
0073385A   50                     push    eax

* Reference to field TFrmPreview.OFFS_0368
|
0073385B   8B8368030000           mov     eax, [ebx+$0368]
00733861   50                     push    eax

* Reference to field TFrmPreview.OFFS_034C
|
00733862   8B834C030000           mov     eax, [ebx+$034C]
00733868   8D04C0                 lea     eax, [eax+eax*8]
0073386B   8B0D78AE7D00           mov     ecx, [$007DAE78]
00733871   8B09                   mov     ecx, [ecx]
00733873   8B44811C               mov     eax, [ecx+eax*4+$1C]
00733877   8D04C0                 lea     eax, [eax+eax*8]
0073387A   8B0D78AE7D00           mov     ecx, [$007DAE78]
00733880   8B09                   mov     ecx, [ecx]
00733882   8B4C8110               mov     ecx, [ecx+eax*4+$10]
00733886   8BC3                   mov     eax, ebx

|
00733888   E8BFB6FFFF             call    0072EF4C
0073388D   A1E4A57D00             mov     eax, dword ptr [$007DA5E4]
00733892   803800                 cmp     byte ptr [eax], $00
00733895   742A                   jz      007338C1

* Reference to field TFrmPreview.OFFS_0358
|
00733897   8D8358030000           lea     eax, [ebx+$0358]
0073389D   50                     push    eax

* Reference to field TFrmPreview.OFFS_0360
|
0073389E   8D8360030000           lea     eax, [ebx+$0360]
007338A4   50                     push    eax

* Reference to field TFrmPreview.OFFS_0368
|
007338A5   8B8368030000           mov     eax, [ebx+$0368]
007338AB   50                     push    eax

* Reference to field TFrmPreview.OFFS_0350
|
007338AC   8D8B50030000           lea     ecx, [ebx+$0350]

* Reference to field TFrmPreview.OFFS_034C
|
007338B2   8B934C030000           mov     edx, [ebx+$034C]
007338B8   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_00732DFC()
|
007338BA   E83DF5FFFF             call    00732DFC
007338BF   EB32                   jmp     007338F3
007338C1   A17CB57D00             mov     eax, dword ptr [$007DB57C]
007338C6   803800                 cmp     byte ptr [eax], $00
007338C9   7428                   jz      007338F3

* Reference to field TFrmPreview.OFFS_0358
|
007338CB   8D8358030000           lea     eax, [ebx+$0358]
007338D1   50                     push    eax

* Reference to field TFrmPreview.OFFS_0360
|
007338D2   8D8360030000           lea     eax, [ebx+$0360]
007338D8   50                     push    eax

* Reference to field TFrmPreview.OFFS_0368
|
007338D9   8B8368030000           mov     eax, [ebx+$0368]
007338DF   50                     push    eax

* Reference to field TFrmPreview.OFFS_0350
|
007338E0   8D8B50030000           lea     ecx, [ebx+$0350]

* Reference to field TFrmPreview.OFFS_034C
|
007338E6   8B934C030000           mov     edx, [ebx+$034C]
007338EC   8BC3                   mov     eax, ebx

|
007338EE   E8D5F9FFFF             call    007332C8

* Reference to field TFrmPreview.OFFS_034C
|
007338F3   8BB34C030000           mov     esi, [ebx+$034C]
007338F9   8D34F6                 lea     esi, [esi+esi*8]
007338FC   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733901   8B00                   mov     eax, [eax]
00733903   807CB01900             cmp     byte ptr [eax+esi*4+$19], $00
00733908   745C                   jz      00733966
0073390A   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0073390F   8B00                   mov     eax, [eax]
00733911   8B44B010               mov     eax, [eax+esi*4+$10]
00733915   8B10                   mov     edx, [eax]
00733917   FF9250010000           call    dword ptr [edx+$0150]
0073391D   8BF0                   mov     esi, eax

* Reference to field TFrmPreview.OFFS_034C
|
0073391F   8B834C030000           mov     eax, [ebx+$034C]
00733925   8D04C0                 lea     eax, [eax+eax*8]
00733928   8B1578AE7D00           mov     edx, [$007DAE78]
0073392E   8B12                   mov     edx, [edx]
00733930   8B448210               mov     eax, [edx+eax*4+$10]
00733934   8B10                   mov     edx, [eax]
00733936   FF924C010000           call    dword ptr [edx+$014C]
0073393C   3BF0                   cmp     esi, eax
0073393E   7426                   jz      00733966

* Reference to field TFrmPreview.OFFS_037C
|
00733940   8B837C030000           mov     eax, [ebx+$037C]
00733946   50                     push    eax

* Possible String Reference to: 'tela'
|
00733947   68EC3A7300             push    $00733AEC
0073394C   6A01                   push    $01

* Reference to field TFrmPreview.OFFS_0360
|
0073394E   8D9360030000           lea     edx, [ebx+$0360]

* Reference to field TFrmPreview.OFFS_0378
|
00733954   8B8B78030000           mov     ecx, [ebx+$0378]
0073395A   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_00730528()
|
0073395C   E8C7CBFFFF             call    00730528
00733961   E999000000             jmp     007339FF

* Reference to field TFrmPreview.OFFS_034C
|
00733966   8B834C030000           mov     eax, [ebx+$034C]
0073396C   8D04C0                 lea     eax, [eax+eax*8]
0073396F   8B1578AE7D00           mov     edx, [$007DAE78]
00733975   8B12                   mov     edx, [edx]
00733977   8B448210               mov     eax, [edx+eax*4+$10]
0073397B   8B10                   mov     edx, [eax]
0073397D   FF9250010000           call    dword ptr [edx+$0150]
00733983   8BF0                   mov     esi, eax

* Reference to field TFrmPreview.OFFS_034C
|
00733985   8B834C030000           mov     eax, [ebx+$034C]
0073398B   8D04C0                 lea     eax, [eax+eax*8]
0073398E   8B1578AE7D00           mov     edx, [$007DAE78]
00733994   8B12                   mov     edx, [edx]
00733996   8B448210               mov     eax, [edx+eax*4+$10]
0073399A   8B10                   mov     edx, [eax]
0073399C   FF924C010000           call    dword ptr [edx+$014C]
007339A2   3BF0                   cmp     esi, eax
007339A4   7559                   jnz     007339FF

* Reference to field TFrmPreview.OFFS_0385 : Byte
|
007339A6   80BB8503000000         cmp     byte ptr [ebx+$0385], $00
007339AD   7542                   jnz     007339F1

* Reference to field TFrmPreview.OFFS_037C
|
007339AF   8B837C030000           mov     eax, [ebx+$037C]
007339B5   50                     push    eax

* Possible String Reference to: 'tela'
|
007339B6   68EC3A7300             push    $00733AEC
007339BB   A188A77D00             mov     eax, dword ptr [$007DA788]
007339C0   833801                 cmp     dword ptr [eax], +$01
007339C3   7E09                   jle     007339CE

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
007339C5   80BB8403000000         cmp     byte ptr [ebx+$0384], $00
007339CC   7504                   jnz     007339D2
007339CE   33C0                   xor     eax, eax
007339D0   EB02                   jmp     007339D4
007339D2   B001                   mov     al, $01
007339D4   50                     push    eax

* Reference to field TFrmPreview.OFFS_0360
|
007339D5   8D9360030000           lea     edx, [ebx+$0360]

* Reference to field TFrmPreview.OFFS_0378
|
007339DB   8B8B78030000           mov     ecx, [ebx+$0378]
007339E1   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_00730528()
|
007339E3   E840CBFFFF             call    00730528

* Reference to field TFrmPreview.OFFS_0386 : Byte
|
007339E8   C6838603000001         mov     byte ptr [ebx+$0386], $01
007339EF   EB0E                   jmp     007339FF

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
007339F1   C6838403000000         mov     byte ptr [ebx+$0384], $00

* Reference to field TFrmPreview.OFFS_0386 : Byte
|
007339F8   C6838603000000         mov     byte ptr [ebx+$0386], $00

* Possible String Reference to: 'Montando relatÛrio...'
|
007339FF   B9A43A7300             mov     ecx, $00733AA4

* Possible String Reference to: 'Aguarde, processando dados...'
|
00733A04   BAC43A7300             mov     edx, $00733AC4
00733A09   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_00733B98()
|
00733A0B   E888010000             call    00733B98

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
00733A10   80BB8403000000         cmp     byte ptr [ebx+$0384], $00
00733A17   751A                   jnz     00733A33

* Reference to field TFrmPreview.OFFS_034C
|
00733A19   8B834C030000           mov     eax, [ebx+$034C]
00733A1F   8D04C0                 lea     eax, [eax+eax*8]
00733A22   8B1578AE7D00           mov     edx, [$007DAE78]
00733A28   8B12                   mov     edx, [edx]
00733A2A   8B448210               mov     eax, [edx+eax*4+$10]

* Reference to: DB.TDataSet.Next(TDataSet);
|
00733A2E   E81179DBFF             call    004EB344

* Reference to field TFrmPreview.OFFS_034C
|
00733A33   8B834C030000           mov     eax, [ebx+$034C]
00733A39   8D04C0                 lea     eax, [eax+eax*8]
00733A3C   8B1578AE7D00           mov     edx, [$007DAE78]
00733A42   8B12                   mov     edx, [edx]
00733A44   8B548210               mov     edx, [edx+eax*4+$10]
00733A48   80BAA100000000         cmp     byte ptr [edx+$00A1], $00
00733A4F   0F841AFDFFFF           jz      0073376F

* Reference to field TFrmPreview.OFFS_034C
|
00733A55   8B834C030000           mov     eax, [ebx+$034C]
00733A5B   8D04C0                 lea     eax, [eax+eax*8]
00733A5E   8B1578AE7D00           mov     edx, [$007DAE78]
00733A64   8B12                   mov     edx, [edx]
00733A66   8B548210               mov     edx, [edx+eax*4+$10]
00733A6A   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0073369C()
|
00733A6C   E82BFCFFFF             call    0073369C
00733A71   33C0                   xor     eax, eax
00733A73   5A                     pop     edx
00733A74   59                     pop     ecx
00733A75   59                     pop     ecx
00733A76   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[YY]√'
|
00733A79   68933A7300             push    $00733A93
00733A7E   8D45F8                 lea     eax, [ebp-$08]
00733A81   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00733A86   E8351ACDFF             call    004054C0
00733A8B   C3                     ret


* Reference to: System.@HandleFinally;
|
00733A8C   E9A712CDFF             jmp     00404D38
00733A91   EBEB                   jmp     00733A7E

****** END
|
00733A93   5F                     pop     edi
00733A94   5E                     pop     esi
00733A95   5B                     pop     ebx
00733A96   59                     pop     ecx
00733A97   59                     pop     ecx
00733A98   5D                     pop     ebp
00733A99   C3                     ret

*)
end;

procedure TFrmPreview.ModoDOS(Sender : TObject);
begin
(*
00733C28   55                     push    ebp
00733C29   8BEC                   mov     ebp, esp
00733C2B   6A00                   push    $00
00733C2D   6A00                   push    $00
00733C2F   53                     push    ebx
00733C30   56                     push    esi
00733C31   57                     push    edi
00733C32   8BD8                   mov     ebx, eax
00733C34   33C0                   xor     eax, eax
00733C36   55                     push    ebp
00733C37   68763F7300             push    $00733F76

***** TRY
|
00733C3C   64FF30                 push    dword ptr fs:[eax]
00733C3F   648920                 mov     fs:[eax], esp

* Reference to field TFrmPreview.OFFS_034C
|
00733C42   8B834C030000           mov     eax, [ebx+$034C]
00733C48   8D04C0                 lea     eax, [eax+eax*8]
00733C4B   8B1578AE7D00           mov     edx, [$007DAE78]
00733C51   8B12                   mov     edx, [edx]
00733C53   8B548210               mov     edx, [edx+eax*4+$10]
00733C57   8BC3                   mov     eax, ebx

|
00733C59   E8C2F9FFFF             call    00733620

* Possible String Reference to: 'Montando relatÛrio...'
|
00733C5E   688C3F7300             push    $00733F8C

* Reference to field TFrmPreview.OFFS_034C
|
00733C63   8B834C030000           mov     eax, [ebx+$034C]
00733C69   8D04C0                 lea     eax, [eax+eax*8]
00733C6C   8B1578AE7D00           mov     edx, [$007DAE78]
00733C72   8B12                   mov     edx, [edx]
00733C74   8B448210               mov     eax, [edx+eax*4+$10]
00733C78   8B10                   mov     edx, [eax]
00733C7A   FF924C010000           call    dword ptr [edx+$014C]
00733C80   8BD0                   mov     edx, eax

* Possible String Reference to: 'Aguarde, processando dados...'
|
00733C82   B9AC3F7300             mov     ecx, $00733FAC
00733C87   8BC3                   mov     eax, ebx

|
00733C89   E866FEFFFF             call    00733AF4

* Reference to field TFrmPreview.OFFS_034C
|
00733C8E   8B834C030000           mov     eax, [ebx+$034C]
00733C94   8D04C0                 lea     eax, [eax+eax*8]
00733C97   8B1578AE7D00           mov     edx, [$007DAE78]
00733C9D   8B12                   mov     edx, [edx]
00733C9F   8B448210               mov     eax, [edx+eax*4+$10]

* Reference to: DB.TDataSet.First(TDataSet);
|
00733CA3   E88473DBFF             call    004EB02C
00733CA8   E970020000             jmp     00733F1D

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
00733CAD   8B9340030000           mov     edx, [ebx+$0340]

* Reference to field TJvProgressComponent.OFFS_0050
|
00733CB3   807A5000               cmp     byte ptr [edx+$50], $00
00733CB7   0F859E020000           jnz     00733F5B
00733CBD   8B1578AE7D00           mov     edx, [$007DAE78]
00733CC3   8B12                   mov     edx, [edx]
00733CC5   8B448214               mov     eax, [edx+eax*4+$14]
00733CC9   8B7010                 mov     esi, [eax+$10]
00733CCC   4E                     dec     esi
00733CCD   85F6                   test    esi, esi
00733CCF   7C65                   jl      00733D36
00733CD1   46                     inc     esi
00733CD2   33FF                   xor     edi, edi

* Reference to field TFrmPreview.OFFS_034C
|
00733CD4   8B834C030000           mov     eax, [ebx+$034C]
00733CDA   8D04C0                 lea     eax, [eax+eax*8]
00733CDD   8B1578AE7D00           mov     edx, [$007DAE78]
00733CE3   8B12                   mov     edx, [edx]
00733CE5   8B448214               mov     eax, [edx+eax*4+$14]
00733CE9   8D4DF8                 lea     ecx, [ebp-$08]
00733CEC   8BD7                   mov     edx, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
00733CEE   E8B15BE6FF             call    005998A4
00733CF3   8B45F8                 mov     eax, [ebp-$08]
00733CF6   8D55FC                 lea     edx, [ebp-$04]

|
00733CF9   E842A2FFFF             call    0072DF40

* Reference to field TFrmPreview.OFFS_0360
|
00733CFE   8D8B60030000           lea     ecx, [ebx+$0360]
00733D04   8B55FC                 mov     edx, [ebp-$04]
00733D07   8BC3                   mov     eax, ebx

|
00733D09   E806BBFFFF             call    0072F814
00733D0E   FFB374030000           push    dword ptr [ebx+$0374]
00733D14   FFB370030000           push    dword ptr [ebx+$0370]

* Possible String Reference to: 'dos'
|
00733D1A   68D43F7300             push    $00733FD4

* Reference to field TFrmPreview.OFFS_0360
|
00733D1F   8D9360030000           lea     edx, [ebx+$0360]

* Reference to field TFrmPreview.OFFS_0378
|
00733D25   8B8B78030000           mov     ecx, [ebx+$0378]
00733D2B   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0072F0EC()
|
00733D2D   E8BAB3FFFF             call    0072F0EC
00733D32   47                     inc     edi
00733D33   4E                     dec     esi
00733D34   759E                   jnz     00733CD4

* Reference to field TFrmPreview.OFFS_034C
|
00733D36   8B834C030000           mov     eax, [ebx+$034C]
00733D3C   8D04C0                 lea     eax, [eax+eax*8]
00733D3F   8B1578AE7D00           mov     edx, [$007DAE78]
00733D45   8B12                   mov     edx, [edx]
00733D47   807C821800             cmp     byte ptr [edx+eax*4+$18], $00
00733D4C   7453                   jz      00733DA1
00733D4E   8B1578AE7D00           mov     edx, [$007DAE78]
00733D54   8B12                   mov     edx, [edx]
00733D56   8B44821C               mov     eax, [edx+eax*4+$1C]
00733D5A   8D04C0                 lea     eax, [eax+eax*8]
00733D5D   8B1578AE7D00           mov     edx, [$007DAE78]
00733D63   8B12                   mov     edx, [edx]
00733D65   8B548214               mov     edx, [edx+eax*4+$14]

* Reference to field TFrmPreview.OFFS_0380
|
00733D69   899380030000           mov     [ebx+$0380], edx

* Reference to field TFrmPreview.OFFS_0360
|
00733D6F   8D8360030000           lea     eax, [ebx+$0360]
00733D75   50                     push    eax

* Reference to field TFrmPreview.OFFS_034C
|
00733D76   8B834C030000           mov     eax, [ebx+$034C]
00733D7C   8D04C0                 lea     eax, [eax+eax*8]
00733D7F   8B0D78AE7D00           mov     ecx, [$007DAE78]
00733D85   8B09                   mov     ecx, [ecx]
00733D87   8B44811C               mov     eax, [ecx+eax*4+$1C]
00733D8B   8D04C0                 lea     eax, [eax+eax*8]
00733D8E   8B0D78AE7D00           mov     ecx, [$007DAE78]
00733D94   8B09                   mov     ecx, [ecx]
00733D96   8B4C8110               mov     ecx, [ecx+eax*4+$10]
00733D9A   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0072F9D8()
|
00733D9C   E837BCFFFF             call    0072F9D8
00733DA1   A1E4A57D00             mov     eax, dword ptr [$007DA5E4]
00733DA6   803800                 cmp     byte ptr [eax], $00
00733DA9   7415                   jz      00733DC0

* Reference to field TFrmPreview.OFFS_0360
|
00733DAB   8D8B60030000           lea     ecx, [ebx+$0360]

* Reference to field TFrmPreview.OFFS_034C
|
00733DB1   8B934C030000           mov     edx, [ebx+$034C]
00733DB7   8BC3                   mov     eax, ebx

|
00733DB9   E84AF1FFFF             call    00732F08
00733DBE   EB1D                   jmp     00733DDD
00733DC0   A17CB57D00             mov     eax, dword ptr [$007DB57C]
00733DC5   803800                 cmp     byte ptr [eax], $00
00733DC8   7413                   jz      00733DDD

* Reference to field TFrmPreview.OFFS_0360
|
00733DCA   8D8B60030000           lea     ecx, [ebx+$0360]

* Reference to field TFrmPreview.OFFS_034C
|
00733DD0   8B934C030000           mov     edx, [ebx+$034C]
00733DD6   8BC3                   mov     eax, ebx

|
00733DD8   E813F6FFFF             call    007333F0

* Reference to field TFrmPreview.OFFS_034C
|
00733DDD   8BB34C030000           mov     esi, [ebx+$034C]
00733DE3   8D34F6                 lea     esi, [esi+esi*8]
00733DE6   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733DEB   8B00                   mov     eax, [eax]
00733DED   807CB01900             cmp     byte ptr [eax+esi*4+$19], $00
00733DF2   745C                   jz      00733E50
00733DF4   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733DF9   8B00                   mov     eax, [eax]
00733DFB   8B44B010               mov     eax, [eax+esi*4+$10]
00733DFF   8B10                   mov     edx, [eax]
00733E01   FF9250010000           call    dword ptr [edx+$0150]
00733E07   8BF0                   mov     esi, eax

* Reference to field TFrmPreview.OFFS_034C
|
00733E09   8B834C030000           mov     eax, [ebx+$034C]
00733E0F   8D04C0                 lea     eax, [eax+eax*8]
00733E12   8B1578AE7D00           mov     edx, [$007DAE78]
00733E18   8B12                   mov     edx, [edx]
00733E1A   8B448210               mov     eax, [edx+eax*4+$10]
00733E1E   8B10                   mov     edx, [eax]
00733E20   FF924C010000           call    dword ptr [edx+$014C]
00733E26   3BF0                   cmp     esi, eax
00733E28   7426                   jz      00733E50

* Reference to field TFrmPreview.OFFS_037C
|
00733E2A   8B837C030000           mov     eax, [ebx+$037C]
00733E30   50                     push    eax

* Possible String Reference to: 'dos'
|
00733E31   68D43F7300             push    $00733FD4
00733E36   6A01                   push    $01

* Reference to field TFrmPreview.OFFS_0360
|
00733E38   8D9360030000           lea     edx, [ebx+$0360]

* Reference to field TFrmPreview.OFFS_0378
|
00733E3E   8B8B78030000           mov     ecx, [ebx+$0378]
00733E44   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_00730528()
|
00733E46   E8DDC6FFFF             call    00730528
00733E4B   E999000000             jmp     00733EE9

* Reference to field TFrmPreview.OFFS_034C
|
00733E50   8B834C030000           mov     eax, [ebx+$034C]
00733E56   8D04C0                 lea     eax, [eax+eax*8]
00733E59   8B1578AE7D00           mov     edx, [$007DAE78]
00733E5F   8B12                   mov     edx, [edx]
00733E61   8B448210               mov     eax, [edx+eax*4+$10]
00733E65   8B10                   mov     edx, [eax]
00733E67   FF9250010000           call    dword ptr [edx+$0150]
00733E6D   8BF0                   mov     esi, eax

* Reference to field TFrmPreview.OFFS_034C
|
00733E6F   8B834C030000           mov     eax, [ebx+$034C]
00733E75   8D04C0                 lea     eax, [eax+eax*8]
00733E78   8B1578AE7D00           mov     edx, [$007DAE78]
00733E7E   8B12                   mov     edx, [edx]
00733E80   8B448210               mov     eax, [edx+eax*4+$10]
00733E84   8B10                   mov     edx, [eax]
00733E86   FF924C010000           call    dword ptr [edx+$014C]
00733E8C   3BF0                   cmp     esi, eax
00733E8E   7559                   jnz     00733EE9

* Reference to field TFrmPreview.OFFS_0385 : Byte
|
00733E90   80BB8503000000         cmp     byte ptr [ebx+$0385], $00
00733E97   7542                   jnz     00733EDB

* Reference to field TFrmPreview.OFFS_037C
|
00733E99   8B837C030000           mov     eax, [ebx+$037C]
00733E9F   50                     push    eax

* Possible String Reference to: 'dos'
|
00733EA0   68D43F7300             push    $00733FD4
00733EA5   A188A77D00             mov     eax, dword ptr [$007DA788]
00733EAA   833801                 cmp     dword ptr [eax], +$01
00733EAD   7E09                   jle     00733EB8

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
00733EAF   80BB8403000000         cmp     byte ptr [ebx+$0384], $00
00733EB6   7504                   jnz     00733EBC
00733EB8   33C0                   xor     eax, eax
00733EBA   EB02                   jmp     00733EBE
00733EBC   B001                   mov     al, $01
00733EBE   50                     push    eax

* Reference to field TFrmPreview.OFFS_0360
|
00733EBF   8D9360030000           lea     edx, [ebx+$0360]

* Reference to field TFrmPreview.OFFS_0378
|
00733EC5   8B8B78030000           mov     ecx, [ebx+$0378]
00733ECB   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_00730528()
|
00733ECD   E856C6FFFF             call    00730528

* Reference to field TFrmPreview.OFFS_0386 : Byte
|
00733ED2   C6838603000001         mov     byte ptr [ebx+$0386], $01
00733ED9   EB0E                   jmp     00733EE9

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
00733EDB   C6838403000000         mov     byte ptr [ebx+$0384], $00

* Reference to field TFrmPreview.OFFS_0386 : Byte
|
00733EE2   C6838603000000         mov     byte ptr [ebx+$0386], $00

* Possible String Reference to: 'Montando relatÛrio...'
|
00733EE9   B98C3F7300             mov     ecx, $00733F8C

* Possible String Reference to: 'Aguarde, processando dados...'
|
00733EEE   BAAC3F7300             mov     edx, $00733FAC
00733EF3   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_00733B98()
|
00733EF5   E89EFCFFFF             call    00733B98

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
00733EFA   80BB8403000000         cmp     byte ptr [ebx+$0384], $00
00733F01   751A                   jnz     00733F1D

* Reference to field TFrmPreview.OFFS_034C
|
00733F03   8B834C030000           mov     eax, [ebx+$034C]
00733F09   8D04C0                 lea     eax, [eax+eax*8]
00733F0C   8B1578AE7D00           mov     edx, [$007DAE78]
00733F12   8B12                   mov     edx, [edx]
00733F14   8B448210               mov     eax, [edx+eax*4+$10]

* Reference to: DB.TDataSet.Next(TDataSet);
|
00733F18   E82774DBFF             call    004EB344

* Reference to field TFrmPreview.OFFS_034C
|
00733F1D   8B834C030000           mov     eax, [ebx+$034C]
00733F23   8D04C0                 lea     eax, [eax+eax*8]
00733F26   8B1578AE7D00           mov     edx, [$007DAE78]
00733F2C   8B12                   mov     edx, [edx]
00733F2E   8B548210               mov     edx, [edx+eax*4+$10]
00733F32   80BAA100000000         cmp     byte ptr [edx+$00A1], $00
00733F39   0F846EFDFFFF           jz      00733CAD

* Reference to field TFrmPreview.OFFS_034C
|
00733F3F   8B834C030000           mov     eax, [ebx+$034C]
00733F45   8D04C0                 lea     eax, [eax+eax*8]
00733F48   8B1578AE7D00           mov     edx, [$007DAE78]
00733F4E   8B12                   mov     edx, [edx]
00733F50   8B548210               mov     edx, [edx+eax*4+$10]
00733F54   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0073369C()
|
00733F56   E841F7FFFF             call    0073369C
00733F5B   33C0                   xor     eax, eax
00733F5D   5A                     pop     edx
00733F5E   59                     pop     ecx
00733F5F   59                     pop     ecx
00733F60   648910                 mov     fs:[eax], edx

****** FINALLY
|
00733F63   687D3F7300             push    $00733F7D
00733F68   8D45F8                 lea     eax, [ebp-$08]
00733F6B   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00733F70   E84B15CDFF             call    004054C0
00733F75   C3                     ret


* Reference to: System.@HandleFinally;
|
00733F76   E9BD0DCDFF             jmp     00404D38
00733F7B   EBEB                   jmp     00733F68

****** END
|
00733F7D   5F                     pop     edi
00733F7E   5E                     pop     esi
00733F7F   5B                     pop     ebx
00733F80   59                     pop     ecx
00733F81   59                     pop     ecx
00733F82   5D                     pop     ebp
00733F83   C3                     ret

*)
end;

procedure TFrmPreview.PreviewPageChange(Sender : TObject);
begin
(*
00733FD8   55                     push    ebp
00733FD9   8BEC                   mov     ebp, esp
00733FDB   6A00                   push    $00
00733FDD   6A00                   push    $00
00733FDF   6A00                   push    $00
00733FE1   53                     push    ebx
00733FE2   56                     push    esi
00733FE3   8BF1                   mov     esi, ecx
00733FE5   8BD8                   mov     ebx, eax
00733FE7   33C0                   xor     eax, eax
00733FE9   55                     push    ebp
00733FEA   6867407300             push    $00734067

***** TRY
|
00733FEF   64FF30                 push    dword ptr fs:[eax]
00733FF2   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'P·gina.:'
|
00733FF5   687C407300             push    $0073407C
00733FFA   8D55F8                 lea     edx, [ebp-$08]
00733FFD   8BC6                   mov     eax, esi

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
00733FFF   E8606DCDFF             call    0040AD64
00734004   FF75F8                 push    dword ptr [ebp-$08]
00734007   6890407300             push    $00734090

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0073400C   8B83F8020000           mov     eax, [ebx+$02F8]

* Reference to : TGmPreview._PROC_0071B020()
|
00734012   E80970FEFF             call    0071B020
00734017   8D55F4                 lea     edx, [ebp-$0C]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0073401A   E8456DCDFF             call    0040AD64
0073401F   FF75F4                 push    dword ptr [ebp-$0C]
00734022   8D45FC                 lea     eax, [ebp-$04]
00734025   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
0073402A   E8ED17CDFF             call    0040581C
0073402F   8B45FC                 mov     eax, [ebp-$04]
00734032   50                     push    eax

* Reference to control TFrmPreview.sbPreview : TStatusBar
|
00734033   8B83FC020000           mov     eax, [ebx+$02FC]

* Reference to field TStatusBar.Panels : TStatusPanels
|
00734039   8B8008020000           mov     eax, [eax+$0208]
0073403F   33D2                   xor     edx, edx

* Reference to: ComCtrls.TStatusPanels.GetItem(TStatusPanels;Integer):TStatusPanel;
|
00734041   E8CEFFD2FF             call    00464014
00734046   5A                     pop     edx

* Reference to: ComCtrls.TStatusPanel.SetText(TStatusPanel;AnsiString);
|
00734047   E824FFD2FF             call    00463F70
0073404C   33C0                   xor     eax, eax
0073404E   5A                     pop     edx
0073404F   59                     pop     ecx
00734050   59                     pop     ecx
00734051   648910                 mov     fs:[eax], edx

****** FINALLY
|
00734054   686E407300             push    $0073406E
00734059   8D45F4                 lea     eax, [ebp-$0C]
0073405C   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00734061   E85A14CDFF             call    004054C0
00734066   C3                     ret


* Reference to: System.@HandleFinally;
|
00734067   E9CC0CCDFF             jmp     00404D38
0073406C   EBEB                   jmp     00734059

****** END
|
0073406E   5E                     pop     esi
0073406F   5B                     pop     ebx
00734070   8BE5                   mov     esp, ebp
00734072   5D                     pop     ebp
00734073   C3                     ret

*)
end;

procedure TFrmPreview.PreviewPrintProgress(Sender : TObject);
begin
(*
00734094   55                     push    ebp
00734095   8BEC                   mov     ebp, esp
00734097   53                     push    ebx
00734098   56                     push    esi
00734099   8BF1                   mov     esi, ecx
0073409B   8BD8                   mov     ebx, eax
0073409D   8B5508                 mov     edx, [ebp+$08]

* Reference to control TFrmPreview.pdImpress : TJvProgressDialog
|
007340A0   8B8348030000           mov     eax, [ebx+$0348]

* Reference to : TJvProgressDialog._PROC_0071D0DC()
|
007340A6   E83190FEFF             call    0071D0DC
007340AB   8BD6                   mov     edx, esi

* Reference to control TFrmPreview.pdImpress : TJvProgressDialog
|
007340AD   8B8348030000           mov     eax, [ebx+$0348]

* Reference to : TJvProgressDialog._PROC_0071D134()
|
007340B3   E87C90FEFF             call    0071D134
007340B8   5E                     pop     esi
007340B9   5B                     pop     ebx
007340BA   5D                     pop     ebp
007340BB   C20400                 ret     $0004

*)
end;

procedure TFrmPreview.PreviewAfterPrint(Sender : TObject);
begin
(*
007340C0   55                     push    ebp
007340C1   8BEC                   mov     ebp, esp

* Reference to control TFrmPreview.pdImpress : TJvProgressDialog
|
007340C3   8B8048030000           mov     eax, [eax+$0348]

* Reference to : TJvProgressDialog._PROC_0071CFA0()
|
007340C9   E8D28EFEFF             call    0071CFA0
007340CE   5D                     pop     ebp
007340CF   C3                     ret

*)
end;

procedure TFrmPreview.PreviewBeforePrint(Sender : TObject);
begin
(*
007340D0   55                     push    ebp
007340D1   8BEC                   mov     ebp, esp

* Reference to control TFrmPreview.pdImpress : TJvProgressDialog
|
007340D3   8B8048030000           mov     eax, [eax+$0348]

* Reference to : TJvProgressDialog._PROC_0071CFBC()
|
007340D9   E8DE8EFEFF             call    0071CFBC
007340DE   5D                     pop     ebp
007340DF   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072CF3C(Sender : TObject);
begin
(*
0072CF3C   55                     push    ebp
0072CF3D   8BEC                   mov     ebp, esp
0072CF3F   83C4DC                 add     esp, -$24
0072CF42   53                     push    ebx
0072CF43   56                     push    esi
0072CF44   57                     push    edi
0072CF45   33C9                   xor     ecx, ecx
0072CF47   894DF8                 mov     [ebp-$08], ecx
0072CF4A   8955FC                 mov     [ebp-$04], edx
0072CF4D   8BF8                   mov     edi, eax
0072CF4F   33C0                   xor     eax, eax
0072CF51   55                     push    ebp
0072CF52   682AD07200             push    $0072D02A

***** TRY
|
0072CF57   64FF30                 push    dword ptr fs:[eax]
0072CF5A   648920                 mov     fs:[eax], esp
0072CF5D   8B45FC                 mov     eax, [ebp-$04]
0072CF60   83781000               cmp     dword ptr [eax+$10], +$00
0072CF64   0F8EAA000000           jle     0072D014
0072CF6A   6A00                   push    $00
0072CF6C   A038D07200             mov     al, byte ptr [$0072D038]
0072CF71   50                     push    eax
0072CF72   8B87F8020000           mov     eax, [edi+$02F8]
0072CF78   8B8024020000           mov     eax, [eax+$0224]
0072CF7E   B908000000             mov     ecx, $00000008

* Possible String Reference to: 'Courier New'
|
0072CF83   BA44D07200             mov     edx, $0072D044

|
0072CF88   E8974FFEFF             call    00711F24
0072CF8D   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
0072CF92   33D2                   xor     edx, edx
0072CF94   8910                   mov     [eax], edx
0072CF96   895004                 mov     [eax+$04], edx
0072CF99   8B87F8020000           mov     eax, [edi+$02F8]
0072CF9F   8B8024020000           mov     eax, [eax+$0224]
0072CFA5   BA58D07200             mov     edx, $0072D058

|
0072CFAA   E85D4DFEFF             call    00711D0C

|
0072CFAF   E8E09EFEFF             call    00716E94
0072CFB4   DD5DF0                 fstp    qword ptr [ebp-$10]
0072CFB7   9B                     wait
0072CFB8   DD45F0                 fld     qword ptr [ebp-$10]
0072CFBB   D80D5CD07200           fmul    dword ptr [$0072D05C]
0072CFC1   DD5DE0                 fstp    qword ptr [ebp-$20]
0072CFC4   9B                     wait
0072CFC5   C745DC05000000         mov     dword ptr [ebp-$24], $00000005
0072CFCC   8B45FC                 mov     eax, [ebp-$04]
0072CFCF   8B5810                 mov     ebx, [eax+$10]
0072CFD2   4B                     dec     ebx
0072CFD3   85DB                   test    ebx, ebx
0072CFD5   7C2D                   jl      0072D004
0072CFD7   43                     inc     ebx
0072CFD8   33F6                   xor     esi, esi
0072CFDA   8D4DF8                 lea     ecx, [ebp-$08]
0072CFDD   8BD6                   mov     edx, esi
0072CFDF   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0072CFE2   E8BDC8E6FF             call    005998A4
0072CFE7   8D45E8                 lea     eax, [ebp-$18]
0072CFEA   50                     push    eax
0072CFEB   8D45E0                 lea     eax, [ebp-$20]
0072CFEE   50                     push    eax
0072CFEF   8B45DC                 mov     eax, [ebp-$24]
0072CFF2   50                     push    eax
0072CFF3   8D4DF0                 lea     ecx, [ebp-$10]
0072CFF6   8B55F8                 mov     edx, [ebp-$08]
0072CFF9   8BC7                   mov     eax, edi

|
0072CFFB   E8EC090000             call    0072D9EC
0072D000   46                     inc     esi
0072D001   4B                     dec     ebx
0072D002   75D6                   jnz     0072CFDA
0072D004   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
0072D009   8B55E0                 mov     edx, [ebp-$20]
0072D00C   8910                   mov     [eax], edx
0072D00E   8B55E4                 mov     edx, [ebp-$1C]
0072D011   895004                 mov     [eax+$04], edx
0072D014   33C0                   xor     eax, eax
0072D016   5A                     pop     edx
0072D017   59                     pop     ecx
0072D018   59                     pop     ecx
0072D019   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0072D01C   6831D07200             push    $0072D031
0072D021   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0072D024   E87384CDFF             call    0040549C
0072D029   C3                     ret


* Reference to: System.@HandleFinally;
|
0072D02A   E9097DCDFF             jmp     00404D38
0072D02F   EBF0                   jmp     0072D021

****** END
|
0072D031   5F                     pop     edi
0072D032   5E                     pop     esi
0072D033   5B                     pop     ebx
0072D034   8BE5                   mov     esp, ebp
0072D036   5D                     pop     ebp
0072D037   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072D061(Sender : TObject);
begin
(*
0072D061   8BEC                   mov     ebp, esp
0072D063   83C4C0                 add     esp, -$40
0072D066   53                     push    ebx
0072D067   56                     push    esi
0072D068   57                     push    edi
0072D069   33D2                   xor     edx, edx
0072D06B   8955C0                 mov     [ebp-$40], edx
0072D06E   8955C4                 mov     [ebp-$3C], edx
0072D071   8955CC                 mov     [ebp-$34], edx
0072D074   8955C8                 mov     [ebp-$38], edx
0072D077   8955F0                 mov     [ebp-$10], edx
0072D07A   8945FC                 mov     [ebp-$04], eax
0072D07D   33C0                   xor     eax, eax
0072D07F   55                     push    ebp

* Possible String Reference to: 'ÈútÕˇÎ„_^[ãÂ]√'
|
0072D080   6897D87200             push    $0072D897

***** TRY
|
0072D085   64FF30                 push    dword ptr fs:[eax]
0072D088   648920                 mov     fs:[eax], esp
0072D08B   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072D08E   8B80F8020000           mov     eax, [eax+$02F8]

|
0072D094   E8D3E7FEFF             call    0071B86C
0072D099   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
0072D09C   C6808403000000         mov     byte ptr [eax+$0384], $00
0072D0A3   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0385 : Byte
|
0072D0A6   C6808503000000         mov     byte ptr [eax+$0385], $00
0072D0AD   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0386 : Byte
|
0072D0B0   C6808603000000         mov     byte ptr [eax+$0386], $00

|
0072D0B7   E838480000             call    007318F4
0072D0BC   6A00                   push    $00
0072D0BE   33C9                   xor     ecx, ecx
0072D0C0   B201                   mov     dl, $01

* Reference to class TStringArray
|
0072D0C2   A1E48D5900             mov     eax, dword ptr [$00598DE4]

* Reference to: Mxarrays.TStringArray.Create(TStringArray;boolean;Integer;Integer);
|
0072D0C7   E8F0C3E6FF             call    005994BC
0072D0CC   8B55FC                 mov     edx, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0378
|
0072D0CF   898278030000           mov     [edx+$0378], eax
0072D0D5   6A00                   push    $00
0072D0D7   33C9                   xor     ecx, ecx
0072D0D9   B201                   mov     dl, $01

* Reference to class TStringArray
|
0072D0DB   A1E48D5900             mov     eax, dword ptr [$00598DE4]

* Reference to: Mxarrays.TStringArray.Create(TStringArray;boolean;Integer;Integer);
|
0072D0E0   E8D7C3E6FF             call    005994BC
0072D0E5   8B55FC                 mov     edx, [ebp-$04]

* Reference to field TFrmPreview.OFFS_037C
|
0072D0E8   89827C030000           mov     [edx+$037C], eax
0072D0EE   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D0F3   8B00                   mov     eax, [eax]

* Reference to: System.@LStrLen(String):Integer;
|
0072D0F5   E8FA98CDFF             call    004069F4
0072D0FA   48                     dec     eax
0072D0FB   85C0                   test    eax, eax
0072D0FD   0F8C80000000           jl      0072D183
0072D103   40                     inc     eax
0072D104   8945D8                 mov     [ebp-$28], eax
0072D107   C745F800000000         mov     dword ptr [ebp-$08], $00000000
0072D10E   8B5DF8                 mov     ebx, [ebp-$08]
0072D111   8D1CDB                 lea     ebx, [ebx+ebx*8]
0072D114   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D119   8B00                   mov     eax, [eax]
0072D11B   8D0498                 lea     eax, [eax+ebx*4]
0072D11E   BAA8D87200             mov     edx, $0072D8A8
0072D123   33C9                   xor     ecx, ecx
0072D125   8A08                   mov     cl, byte ptr [eax]
0072D127   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D128   E82363CDFF             call    00403450
0072D12D   7516                   jnz     0072D145
0072D12F   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D134   8B00                   mov     eax, [eax]
0072D136   8B449814               mov     eax, [eax+ebx*4+$14]
0072D13A   8B55FC                 mov     edx, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0378
|
0072D13D   898278030000           mov     [edx+$0378], eax
0072D143   EB36                   jmp     0072D17B
0072D145   8B45F8                 mov     eax, [ebp-$08]
0072D148   8D04C0                 lea     eax, [eax+eax*8]
0072D14B   8B1578AE7D00           mov     edx, [$007DAE78]
0072D151   8B12                   mov     edx, [edx]
0072D153   8D0482                 lea     eax, [edx+eax*4]
0072D156   BAB4D87200             mov     edx, $0072D8B4
0072D15B   33C9                   xor     ecx, ecx
0072D15D   8A08                   mov     cl, byte ptr [eax]
0072D15F   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D160   E8EB62CDFF             call    00403450
0072D165   7514                   jnz     0072D17B
0072D167   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D16C   8B00                   mov     eax, [eax]
0072D16E   8B449814               mov     eax, [eax+ebx*4+$14]
0072D172   8B55FC                 mov     edx, [ebp-$04]

* Reference to field TFrmPreview.OFFS_037C
|
0072D175   89827C030000           mov     [edx+$037C], eax
0072D17B   FF45F8                 inc     dword ptr [ebp-$08]
0072D17E   FF4DD8                 dec     dword ptr [ebp-$28]
0072D181   758B                   jnz     0072D10E
0072D183   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072D186   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to : TGmPreview._PROC_0071C064()
|
0072D18C   E8D3EEFEFF             call    0071C064
0072D191   33D2                   xor     edx, edx
0072D193   55                     push    ebp
0072D194   686DD87200             push    $0072D86D

***** TRY
|
0072D199   64FF32                 push    dword ptr fs:[edx]
0072D19C   648922                 mov     fs:[edx], esp
0072D19F   33D2                   xor     edx, edx
0072D1A1   55                     push    ebp
0072D1A2   6816D87200             push    $0072D816

***** TRY
|
0072D1A7   64FF32                 push    dword ptr fs:[edx]
0072D1AA   648922                 mov     fs:[edx], esp
0072D1AD   C745F401000000         mov     dword ptr [ebp-$0C], $00000001
0072D1B4   A188A77D00             mov     eax, dword ptr [$007DA788]
0072D1B9   8B00                   mov     eax, [eax]
0072D1BB   3B45F4                 cmp     eax, [ebp-$0C]
0072D1BE   0F8C48060000           jl      0072D80C
0072D1C4   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
0072D1C7   80B88403000000         cmp     byte ptr [eax+$0384], $00
0072D1CE   7426                   jz      0072D1F6
0072D1D0   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
0072D1D3   C6808403000000         mov     byte ptr [eax+$0384], $00
0072D1DA   A174AE7D00             mov     eax, dword ptr [$007DAE74]
0072D1DF   33D2                   xor     edx, edx
0072D1E1   8910                   mov     [eax], edx
0072D1E3   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072D1E6   8B80F8020000           mov     eax, [eax+$02F8]
0072D1EC   8B10                   mov     edx, [eax]

* Possible reference to virtual method TFrmPreview.OFFS_00D4
|
0072D1EE   FF92D4000000           call    dword ptr [edx+$00D4]
0072D1F4   EB27                   jmp     0072D21D
0072D1F6   837DF401               cmp     dword ptr [ebp-$0C], +$01
0072D1FA   7E21                   jle     0072D21D
0072D1FC   A174AE7D00             mov     eax, dword ptr [$007DAE74]
0072D201   33D2                   xor     edx, edx
0072D203   8910                   mov     [eax], edx
0072D205   A1E89F7D00             mov     eax, dword ptr [$007D9FE8]
0072D20A   FF00                   inc     dword ptr [eax]
0072D20C   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072D20F   8B80F8020000           mov     eax, [eax+$02F8]
0072D215   8B10                   mov     edx, [eax]

* Possible reference to virtual method TFrmPreview.OFFS_00D4
|
0072D217   FF92D4000000           call    dword ptr [edx+$00D4]
0072D21D   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072D220   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to field TFrmPreview.OFFS_0224
|
0072D226   8B9824020000           mov     ebx, [eax+$0224]
0072D22C   8B435C                 mov     eax, [ebx+$5C]

* Reference to : TGmPaperImage._PROC_00718B68()
|
0072D22F   E834B9FEFF             call    00718B68
0072D234   6A00                   push    $00

* Reference to class titulo
|
0072D236   A0BCD87200             mov     al, byte ptr [$0072D8BC]
0072D23B   50                     push    eax
0072D23C   B908000000             mov     ecx, $00000008

* Possible String Reference to: 'Courier New'
|
0072D241   BAC8D87200             mov     edx, $0072D8C8
0072D246   8BC3                   mov     eax, ebx

|
0072D248   E8D74CFEFF             call    00711F24
0072D24D   B101                   mov     cl, $01
0072D24F   BAFFFFFF00             mov     edx, $00FFFFFF
0072D254   8BC3                   mov     eax, ebx

|
0072D256   E8994CFEFF             call    00711EF4
0072D25B   6A05                   push    $05
0072D25D   33C9                   xor     ecx, ecx
0072D25F   BA01000000             mov     edx, $00000001
0072D264   8BC3                   mov     eax, ebx

|
0072D266   E8414DFEFF             call    00711FAC
0072D26B   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072D270   8B00                   mov     eax, [eax]

* Possible String Reference to: 'etiqueta'
|
0072D272   BADCD87200             mov     edx, $0072D8DC

* Reference to: System.@LStrCmp;
|
0072D277   E82C86CDFF             call    004058A8
0072D27C   743A                   jz      0072D2B8
0072D27E   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0378
|
0072D281   8B9078030000           mov     edx, [eax+$0378]
0072D287   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmPreview._PROC_0072CF3C()
|
0072D28A   E8ADFCFFFF             call    0072CF3C
0072D28F   8B45FC                 mov     eax, [ebp-$04]
0072D292   8B15F4A17D00           mov     edx, [$007DA1F4]
0072D298   8B0A                   mov     ecx, [edx]

* Reference to field TFrmPreview.OFFS_0360
|
0072D29A   898860030000           mov     [eax+$0360], ecx
0072D2A0   8B4A04                 mov     ecx, [edx+$04]

* Reference to field TFrmPreview.OFFS_0364
|
0072D2A3   898864030000           mov     [eax+$0364], ecx
0072D2A9   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0368
|
0072D2AC   C7806803000005000000   mov     dword ptr [eax+$0368], $00000005
0072D2B6   EB4D                   jmp     0072D305
0072D2B8   A1B0AC7D00             mov     eax, dword ptr [$007DACB0]
0072D2BD   833800                 cmp     dword ptr [eax], +$00
0072D2C0   7410                   jz      0072D2D2
0072D2C2   8B15B0AC7D00           mov     edx, [$007DACB0]
0072D2C8   8B12                   mov     edx, [edx]
0072D2CA   8B45FC                 mov     eax, [ebp-$04]

|
0072D2CD   E8CE520000             call    007325A0
0072D2D2   8B45FC                 mov     eax, [ebp-$04]
0072D2D5   33D2                   xor     edx, edx

* Reference to field TFrmPreview.OFFS_0360
|
0072D2D7   899060030000           mov     [eax+$0360], edx

* Reference to field TFrmPreview.OFFS_0364
|
0072D2DD   C780640300000000F03F   mov     dword ptr [eax+$0364], $3FF00000
0072D2E7   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0368
|
0072D2EA   C7806803000001000000   mov     dword ptr [eax+$0368], $00000001
0072D2F4   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0360
|
0072D2F7   8D9060030000           lea     edx, [eax+$0360]
0072D2FD   8B45FC                 mov     eax, [ebp-$04]

|
0072D300   E87B520000             call    00732580
0072D305   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072D308   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to field TFrmPreview.OFFS_0224
|
0072D30E   8B8024020000           mov     eax, [eax+$0224]
0072D314   BAF0D87200             mov     edx, $0072D8F0

|
0072D319   E8EE49FEFF             call    00711D0C

|
0072D31E   E8719BFEFF             call    00716E94
0072D323   8B45FC                 mov     eax, [ebp-$04]
0072D326   DD9850030000           fstp    qword ptr [eax+$0350]
0072D32C   9B                     wait
0072D32D   A118B77D00             mov     eax, dword ptr [$007DB718]
0072D332   DB00                   fild    dword ptr [eax]
0072D334   8B45FC                 mov     eax, [ebp-$04]
0072D337   DC8850030000           fmul    qword ptr [eax+$0350]
0072D33D   8B45FC                 mov     eax, [ebp-$04]
0072D340   DD9870030000           fstp    qword ptr [eax+$0370]
0072D346   9B                     wait
0072D347   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D34C   8B00                   mov     eax, [eax]

* Reference to: System.@LStrLen(String):Integer;
|
0072D34E   E8A196CDFF             call    004069F4
0072D353   48                     dec     eax
0072D354   85C0                   test    eax, eax
0072D356   0F8C6B040000           jl      0072D7C7
0072D35C   40                     inc     eax
0072D35D   8945D8                 mov     [ebp-$28], eax
0072D360   C745F800000000         mov     dword ptr [ebp-$08], $00000000
0072D367   8B45F8                 mov     eax, [ebp-$08]
0072D36A   8D04C0                 lea     eax, [eax+eax*8]
0072D36D   8B1578AE7D00           mov     edx, [$007DAE78]
0072D373   8B12                   mov     edx, [edx]
0072D375   8D0482                 lea     eax, [edx+eax*4]
0072D378   BAF4D87200             mov     edx, $0072D8F4
0072D37D   33C9                   xor     ecx, ecx
0072D37F   8A08                   mov     cl, byte ptr [eax]
0072D381   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D382   E8C960CDFF             call    00403450
0072D387   0F842E040000           jz      0072D7BB
0072D38D   8B45F8                 mov     eax, [ebp-$08]
0072D390   8D04C0                 lea     eax, [eax+eax*8]
0072D393   8B1578AE7D00           mov     edx, [$007DAE78]
0072D399   8B12                   mov     edx, [edx]
0072D39B   8D0482                 lea     eax, [edx+eax*4]
0072D39E   BAA8D87200             mov     edx, $0072D8A8
0072D3A3   33C9                   xor     ecx, ecx
0072D3A5   8A08                   mov     cl, byte ptr [eax]
0072D3A7   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D3A8   E8A360CDFF             call    00403450
0072D3AD   0F8408040000           jz      0072D7BB
0072D3B3   8B45F8                 mov     eax, [ebp-$08]
0072D3B6   8D04C0                 lea     eax, [eax+eax*8]
0072D3B9   8B1578AE7D00           mov     edx, [$007DAE78]
0072D3BF   8B12                   mov     edx, [edx]
0072D3C1   8D0482                 lea     eax, [edx+eax*4]
0072D3C4   BAFCD87200             mov     edx, $0072D8FC
0072D3C9   33C9                   xor     ecx, ecx
0072D3CB   8A08                   mov     cl, byte ptr [eax]
0072D3CD   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D3CE   E87D60CDFF             call    00403450
0072D3D3   0F84E2030000           jz      0072D7BB
0072D3D9   8B45F8                 mov     eax, [ebp-$08]
0072D3DC   8D04C0                 lea     eax, [eax+eax*8]
0072D3DF   8B1578AE7D00           mov     edx, [$007DAE78]
0072D3E5   8B12                   mov     edx, [edx]
0072D3E7   8D0482                 lea     eax, [edx+eax*4]
0072D3EA   BAB4D87200             mov     edx, $0072D8B4
0072D3EF   33C9                   xor     ecx, ecx
0072D3F1   8A08                   mov     cl, byte ptr [eax]
0072D3F3   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D3F4   E85760CDFF             call    00403450
0072D3F9   0F84BC030000           jz      0072D7BB
0072D3FF   8B45F8                 mov     eax, [ebp-$08]
0072D402   8D04C0                 lea     eax, [eax+eax*8]
0072D405   8B1578AE7D00           mov     edx, [$007DAE78]
0072D40B   8B12                   mov     edx, [edx]
0072D40D   8D0482                 lea     eax, [edx+eax*4]

* Possible String Reference to: 'subdetalhe'
|
0072D410   BA08D97200             mov     edx, $0072D908
0072D415   33C9                   xor     ecx, ecx
0072D417   8A08                   mov     cl, byte ptr [eax]
0072D419   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D41A   E83160CDFF             call    00403450
0072D41F   0F8496030000           jz      0072D7BB
0072D425   8B5DF8                 mov     ebx, [ebp-$08]
0072D428   8D1CDB                 lea     ebx, [ebx+ebx*8]
0072D42B   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D430   8B00                   mov     eax, [eax]
0072D432   8D0498                 lea     eax, [eax+ebx*4]
0072D435   BA14D97200             mov     edx, $0072D914
0072D43A   33C9                   xor     ecx, ecx
0072D43C   8A08                   mov     cl, byte ptr [eax]
0072D43E   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D43F   E80C60CDFF             call    00403450
0072D444   7551                   jnz     0072D497
0072D446   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072D44B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
0072D44D   BA24D97200             mov     edx, $0072D924

* Reference to: System.@LStrCmp;
|
0072D452   E85184CDFF             call    004058A8
0072D457   753E                   jnz     0072D497
0072D459   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D45E   8B00                   mov     eax, [eax]
0072D460   837C981000             cmp     dword ptr [eax+ebx*4+$10], +$00
0072D465   0F8450030000           jz      0072D7BB
0072D46B   8B45FC                 mov     eax, [ebp-$04]
0072D46E   8B55F8                 mov     edx, [ebp-$08]

* Reference to field TFrmPreview.OFFS_034C
|
0072D471   89904C030000           mov     [eax+$034C], edx
0072D477   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
0072D47A   8B8040030000           mov     eax, [eax+$0340]
0072D480   8B55FC                 mov     edx, [ebp-$04]

* Reference to field TJvProgressComponent.OFFS_004C
|
0072D483   89504C                 mov     [eax+$4C], edx

* Reference to field TJvProgressComponent.OFFS_0048
|
0072D486   C74048D0367300         mov     dword ptr [eax+$48], $007336D0

* Reference to : TJvProgressForm._PROC_005B8EC4()
|
0072D48D   E832BAE8FF             call    005B8EC4
0072D492   E924030000             jmp     0072D7BB
0072D497   8B5DF8                 mov     ebx, [ebp-$08]
0072D49A   8D1CDB                 lea     ebx, [ebx+ebx*8]
0072D49D   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D4A2   8B00                   mov     eax, [eax]
0072D4A4   8D0498                 lea     eax, [eax+ebx*4]

* Possible String Reference to: 'textolivre'
|
0072D4A7   BA30D97200             mov     edx, $0072D930
0072D4AC   33C9                   xor     ecx, ecx
0072D4AE   8A08                   mov     cl, byte ptr [eax]
0072D4B0   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D4B1   E89A5FCDFF             call    00403450
0072D4B6   0F85B4000000           jnz     0072D570
0072D4BC   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072D4C1   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
0072D4C3   BA24D97200             mov     edx, $0072D924

* Reference to: System.@LStrCmp;
|
0072D4C8   E8DB83CDFF             call    004058A8
0072D4CD   0F859D000000           jnz     0072D570
0072D4D3   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D4D8   8B00                   mov     eax, [eax]
0072D4DA   8B449814               mov     eax, [eax+ebx*4+$14]
0072D4DE   8B7010                 mov     esi, [eax+$10]
0072D4E1   4E                     dec     esi
0072D4E2   85F6                   test    esi, esi
0072D4E4   0F8CD1020000           jl      0072D7BB
0072D4EA   46                     inc     esi
0072D4EB   33DB                   xor     ebx, ebx
0072D4ED   8B45F8                 mov     eax, [ebp-$08]
0072D4F0   8D04C0                 lea     eax, [eax+eax*8]
0072D4F3   8B1578AE7D00           mov     edx, [$007DAE78]
0072D4F9   8B12                   mov     edx, [edx]
0072D4FB   8B448214               mov     eax, [edx+eax*4+$14]
0072D4FF   8D4DF0                 lea     ecx, [ebp-$10]
0072D502   8BD3                   mov     edx, ebx

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0072D504   E89BC3E6FF             call    005998A4
0072D509   8B45FC                 mov     eax, [ebp-$04]
0072D50C   0558030000             add     eax, +$00000358
0072D511   50                     push    eax
0072D512   8B45FC                 mov     eax, [ebp-$04]
0072D515   0560030000             add     eax, +$00000360
0072D51A   50                     push    eax
0072D51B   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0368
|
0072D51E   8B8068030000           mov     eax, [eax+$0368]
0072D524   50                     push    eax
0072D525   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0350
|
0072D528   8D8850030000           lea     ecx, [eax+$0350]
0072D52E   8B55F0                 mov     edx, [ebp-$10]
0072D531   8B45FC                 mov     eax, [ebp-$04]

|
0072D534   E8B3040000             call    0072D9EC
0072D539   8B45FC                 mov     eax, [ebp-$04]
0072D53C   FFB074030000           push    dword ptr [eax+$0374]
0072D542   FFB070030000           push    dword ptr [eax+$0370]

* Possible String Reference to: 'tela'
|
0072D548   6844D97200             push    $0072D944
0072D54D   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0378
|
0072D550   8B8878030000           mov     ecx, [eax+$0378]
0072D556   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0360
|
0072D559   8D9060030000           lea     edx, [eax+$0360]
0072D55F   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmPreview._PROC_0072F0EC()
|
0072D562   E8851B0000             call    0072F0EC
0072D567   43                     inc     ebx
0072D568   4E                     dec     esi
0072D569   7582                   jnz     0072D4ED
0072D56B   E94B020000             jmp     0072D7BB
0072D570   8B45F8                 mov     eax, [ebp-$08]
0072D573   8D04C0                 lea     eax, [eax+eax*8]
0072D576   8B1578AE7D00           mov     edx, [$007DAE78]
0072D57C   8B12                   mov     edx, [edx]
0072D57E   8D0482                 lea     eax, [edx+eax*4]
0072D581   BA4CD97200             mov     edx, $0072D94C
0072D586   33C9                   xor     ecx, ecx
0072D588   8A08                   mov     cl, byte ptr [eax]
0072D58A   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072D58B   E8C05ECDFF             call    00403450
0072D590   0F8525020000           jnz     0072D7BB
0072D596   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072D59B   8B00                   mov     eax, [eax]

* Possible String Reference to: 'etiqueta'
|
0072D59D   BADCD87200             mov     edx, $0072D8DC

* Reference to: System.@LStrCmp;
|
0072D5A2   E80183CDFF             call    004058A8
0072D5A7   0F850E020000           jnz     0072D7BB
0072D5AD   8B45F8                 mov     eax, [ebp-$08]
0072D5B0   8D04C0                 lea     eax, [eax+eax*8]
0072D5B3   8B1578AE7D00           mov     edx, [$007DAE78]
0072D5B9   8B12                   mov     edx, [edx]
0072D5BB   837C821000             cmp     dword ptr [edx+eax*4+$10], +$00
0072D5C0   0F84F5010000           jz      0072D7BB

|
0072D5C6   E821850700             call    007A5AEC
0072D5CB   33C0                   xor     eax, eax
0072D5CD   55                     push    ebp
0072D5CE   68B4D77200             push    $0072D7B4

***** TRY
|
0072D5D3   64FF30                 push    dword ptr fs:[eax]
0072D5D6   648920                 mov     fs:[eax], esp
0072D5D9   33C0                   xor     eax, eax
0072D5DB   55                     push    ebp
0072D5DC   6866D77200             push    $0072D766

***** TRY
|
0072D5E1   64FF30                 push    dword ptr fs:[eax]
0072D5E4   648920                 mov     fs:[eax], esp
0072D5E7   33F6                   xor     esi, esi
0072D5E9   33DB                   xor     ebx, ebx
0072D5EB   8B45F8                 mov     eax, [ebp-$08]
0072D5EE   8D04C0                 lea     eax, [eax+eax*8]
0072D5F1   8B1578AE7D00           mov     edx, [$007DAE78]
0072D5F7   8B12                   mov     edx, [edx]
0072D5F9   8B448210               mov     eax, [edx+eax*4+$10]
0072D5FD   8B10                   mov     edx, [eax]
0072D5FF   FF924C010000           call    dword ptr [edx+$014C]
0072D605   8B15BCAE7D00           mov     edx, [$007DAEBC]
0072D60B   F72A                   imul    dword ptr [edx] 
0072D60D   8945D4                 mov     [ebp-$2C], eax
0072D610   DB45D4                 fild    dword ptr [ebp-$2C]
0072D613   A114B67D00             mov     eax, dword ptr [$007DB614]
0072D618   8B00                   mov     eax, [eax]
0072D61A   8B15A8B47D00           mov     edx, [$007DB4A8]
0072D620   F72A                   imul    dword ptr [edx] 
0072D622   8945D0                 mov     [ebp-$30], eax
0072D625   DB45D0                 fild    dword ptr [ebp-$30]

* Reference to: System.@FSafeDivide;
|
0072D628   E8D35ECDFF             call    00403500
0072D62D   83C4F8                 add     esp, -$08
0072D630   DD1C24                 fstp    qword ptr [esp]
0072D633   9B                     wait
0072D634   33C0                   xor     eax, eax

|
0072D636   E80D3C0700             call    007A1248
0072D63B   DB7DE0                 fstp    tbyte ptr [ebp-$20]
0072D63E   9B                     wait
0072D63F   C745DC01000000         mov     dword ptr [ebp-$24], $00000001
0072D646   A160AB7D00             mov     eax, dword ptr [$007DAB60]
0072D64B   33D2                   xor     edx, edx
0072D64D   8910                   mov     [eax], edx
0072D64F   A120AD7D00             mov     eax, dword ptr [$007DAD20]
0072D654   33D2                   xor     edx, edx
0072D656   8910                   mov     [eax], edx
0072D658   8B45F8                 mov     eax, [ebp-$08]
0072D65B   8D04C0                 lea     eax, [eax+eax*8]
0072D65E   8B1578AE7D00           mov     edx, [$007DAE78]
0072D664   8B12                   mov     edx, [edx]
0072D666   8B448210               mov     eax, [edx+eax*4+$10]

* Reference to: DB.TDataSet.First(TDataSet);
|
0072D66A   E8BDD9DBFF             call    004EB02C
0072D66F   E9CA000000             jmp     0072D73E
0072D674   A1A8B47D00             mov     eax, dword ptr [$007DB4A8]
0072D679   0318                   add     ebx, [eax]

* Possible String Reference to: 'Aguarde... gerando etiqueta '
|
0072D67B   6860D97200             push    $0072D960
0072D680   8D55C8                 lea     edx, [ebp-$38]
0072D683   8BC3                   mov     eax, ebx

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0072D685   E8DAD6CDFF             call    0040AD64
0072D68A   FF75C8                 push    dword ptr [ebp-$38]
0072D68D   6888D97200             push    $0072D988
0072D692   8D45CC                 lea     eax, [ebp-$34]
0072D695   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0072D69A   E87D81CDFF             call    0040581C
0072D69F   8B45CC                 mov     eax, [ebp-$34]

|
0072D6A2   E89D840700             call    007A5B44
0072D6A7   8B45FC                 mov     eax, [ebp-$04]
0072D6AA   0558030000             add     eax, +$00000358
0072D6AF   50                     push    eax
0072D6B0   8B45FC                 mov     eax, [ebp-$04]
0072D6B3   0560030000             add     eax, +$00000360
0072D6B8   50                     push    eax
0072D6B9   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0368
|
0072D6BC   8B8068030000           mov     eax, [eax+$0368]
0072D6C2   50                     push    eax
0072D6C3   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D6C8   8B00                   mov     eax, [eax]
0072D6CA   8D44B810               lea     eax, [eax+edi*4+$10]
0072D6CE   50                     push    eax
0072D6CF   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D6D4   8B00                   mov     eax, [eax]
0072D6D6   8B54B814               mov     edx, [eax+edi*4+$14]
0072D6DA   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0350
|
0072D6DD   8D8850030000           lea     ecx, [eax+$0350]
0072D6E3   8B45FC                 mov     eax, [ebp-$04]

|
0072D6E6   E8894B0000             call    00732274
0072D6EB   46                     inc     esi
0072D6EC   A114B67D00             mov     eax, dword ptr [$007DB614]
0072D6F1   3B30                   cmp     esi, [eax]
0072D6F3   7C49                   jl      0072D73E
0072D6F5   DB45DC                 fild    dword ptr [ebp-$24]
0072D6F8   DB6DE0                 fld     tbyte ptr [ebp-$20]
0072D6FB   DED9                   fcompp
0072D6FD   DFE0                   fstsw   ax
0072D6FF   9E                     sahf
0072D700   763C                   jbe     0072D73E
0072D702   8B45FC                 mov     eax, [ebp-$04]
0072D705   33D2                   xor     edx, edx

* Reference to field TFrmPreview.OFFS_0360
|
0072D707   899060030000           mov     [eax+$0360], edx

* Reference to field TFrmPreview.OFFS_0364
|
0072D70D   C780640300000000F03F   mov     dword ptr [eax+$0364], $3FF00000
0072D717   33F6                   xor     esi, esi
0072D719   FF45DC                 inc     dword ptr [ebp-$24]
0072D71C   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072D71F   8B80F8020000           mov     eax, [eax+$02F8]
0072D725   8B10                   mov     edx, [eax]

* Possible reference to virtual method TFrmPreview.OFFS_00D4
|
0072D727   FF92D4000000           call    dword ptr [edx+$00D4]
0072D72D   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0360
|
0072D730   8D9060030000           lea     edx, [eax+$0360]
0072D736   8B45FC                 mov     eax, [ebp-$04]

|
0072D739   E8424E0000             call    00732580
0072D73E   8B7DF8                 mov     edi, [ebp-$08]
0072D741   8D3CFF                 lea     edi, [edi+edi*8]
0072D744   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072D749   8B00                   mov     eax, [eax]
0072D74B   8B44B810               mov     eax, [eax+edi*4+$10]
0072D74F   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0072D756   0F8418FFFFFF           jz      0072D674
0072D75C   33C0                   xor     eax, eax
0072D75E   5A                     pop     edx
0072D75F   59                     pop     ecx
0072D760   59                     pop     ecx
0072D761   648910                 mov     fs:[eax], edx
0072D764   EB3B                   jmp     0072D7A1

* Reference to: System.@HandleOnException;
|
0072D766   E94574CDFF             jmp     00404BB0
0072D76B   0100                   add     [eax], eax
0072D76D   0000                   add     [eax], al
0072D76F   40                     inc     eax
0072D770   95                     xchg    eax, ebp
0072D771   40                     inc     eax
0072D772   0077D7                 add     [edi-$29], dh
0072D775   7200                   jb      0072D777
0072D777   89C3                   mov     ebx, eax
0072D779   6A00                   push    $00
0072D77B   8B4B04                 mov     ecx, [ebx+$04]
0072D77E   8D45C4                 lea     eax, [ebp-$3C]

* Possible String Reference to: 'Ocorreu uma exceÁ„o ao gerar as eti
|                                quetas: '
|
0072D781   BA94D97200             mov     edx, $0072D994

* Reference to: System.@LStrCat3;
|
0072D786   E81D80CDFF             call    004057A8
0072D78B   8B45C4                 mov     eax, [ebp-$3C]
0072D78E   668B0DC0D97200         mov     cx, word ptr [$0072D9C0]
0072D795   B202                   mov     dl, $02

|
0072D797   E89063D1FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0072D79C   E80F77CDFF             call    00404EB0

****** END
|
0072D7A1   33C0                   xor     eax, eax
0072D7A3   5A                     pop     edx
0072D7A4   59                     pop     ecx
0072D7A5   59                     pop     ecx
0072D7A6   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072D7A9   68BBD77200             push    $0072D7BB

* Reference to : TFrmInfoAtu._PROC_007A5BB0()
|
0072D7AE   E8FD830700             call    007A5BB0
0072D7B3   C3                     ret


* Reference to: System.@HandleFinally;
|
0072D7B4   E97F75CDFF             jmp     00404D38
0072D7B9   EBF3                   jmp     0072D7AE

****** END
|
0072D7BB   FF45F8                 inc     dword ptr [ebp-$08]
0072D7BE   FF4DD8                 dec     dword ptr [ebp-$28]
0072D7C1   0F85A0FBFFFF           jnz     0072D367
0072D7C7   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0386 : Byte
|
0072D7CA   80B88603000000         cmp     byte ptr [eax+$0386], $00
0072D7D1   751A                   jnz     0072D7ED
0072D7D3   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0360
|
0072D7D6   8D8860030000           lea     ecx, [eax+$0360]
0072D7DC   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_037C
|
0072D7DF   8B907C030000           mov     edx, [eax+$037C]
0072D7E5   8B45FC                 mov     eax, [ebp-$04]

|
0072D7E8   E8072F0000             call    007306F4
0072D7ED   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
0072D7F0   80B88403000000         cmp     byte ptr [eax+$0384], $00
0072D7F7   7503                   jnz     0072D7FC
0072D7F9   FF45F4                 inc     dword ptr [ebp-$0C]
0072D7FC   A188A77D00             mov     eax, dword ptr [$007DA788]
0072D801   8B00                   mov     eax, [eax]
0072D803   3B45F4                 cmp     eax, [ebp-$0C]
0072D806   0F8DB8F9FFFF           jnl     0072D1C4
0072D80C   33C0                   xor     eax, eax
0072D80E   5A                     pop     edx
0072D80F   59                     pop     ecx
0072D810   59                     pop     ecx
0072D811   648910                 mov     fs:[eax], edx
0072D814   EB3B                   jmp     0072D851

* Reference to: System.@HandleOnException;
|
0072D816   E99573CDFF             jmp     00404BB0
0072D81B   0100                   add     [eax], eax
0072D81D   0000                   add     [eax], al
0072D81F   40                     inc     eax
0072D820   95                     xchg    eax, ebp
0072D821   40                     inc     eax
0072D822   0027                   add     [edi], ah
0072D824   D87200                 fdiv    dword ptr [edx+$00]
0072D827   89C3                   mov     ebx, eax
0072D829   6A00                   push    $00
0072D82B   8B4B04                 mov     ecx, [ebx+$04]
0072D82E   8D45C0                 lea     eax, [ebp-$40]

* Possible String Reference to: 'Erro ao gerar o relatÛrio!'
|
0072D831   BACCD97200             mov     edx, $0072D9CC

* Reference to: System.@LStrCat3;
|
0072D836   E86D7FCDFF             call    004057A8
0072D83B   8B45C0                 mov     eax, [ebp-$40]
0072D83E   668B0DC0D97200         mov     cx, word ptr [$0072D9C0]
0072D845   B201                   mov     dl, $01

|
0072D847   E8E062D1FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0072D84C   E85F76CDFF             call    00404EB0

****** END
|
0072D851   33C0                   xor     eax, eax
0072D853   5A                     pop     edx
0072D854   59                     pop     ecx
0072D855   59                     pop     ecx
0072D856   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072D859   6874D87200             push    $0072D874
0072D85E   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072D861   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to : TGmPreview._PROC_0071C138()
|
0072D867   E8CCE8FEFF             call    0071C138
0072D86C   C3                     ret


* Reference to: System.@HandleFinally;
|
0072D86D   E9C674CDFF             jmp     00404D38
0072D872   EBEA                   jmp     0072D85E

****** END
|
0072D874   33C0                   xor     eax, eax
0072D876   5A                     pop     edx
0072D877   59                     pop     ecx
0072D878   59                     pop     ecx
0072D879   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0072D87C   689ED87200             push    $0072D89E
0072D881   8D45C0                 lea     eax, [ebp-$40]
0072D884   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072D889   E8327CCDFF             call    004054C0
0072D88E   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0072D891   E8067CCDFF             call    0040549C
0072D896   C3                     ret


* Reference to: System.@HandleFinally;
|
0072D897   E99C74CDFF             jmp     00404D38
0072D89C   EBE3                   jmp     0072D881

****** END
|
0072D89E   5F                     pop     edi
0072D89F   5E                     pop     esi
0072D8A0   5B                     pop     ebx
0072D8A1   8BE5                   mov     esp, ebp
0072D8A3   5D                     pop     ebp
0072D8A4   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072D86D(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0072D86D   E9C674CDFF             jmp     00404D38

|
0072D872   EBEA                   jmp     0072D85E
0072D874   33C0                   xor     eax, eax
0072D876   5A                     pop     edx
0072D877   59                     pop     ecx
0072D878   59                     pop     ecx
0072D879   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0072D87C   689ED87200             push    $0072D89E
0072D881   8D45C0                 lea     eax, [ebp-$40]
0072D884   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072D889   E8327CCDFF             call    004054C0
0072D88E   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0072D891   E8067CCDFF             call    0040549C
0072D896   C3                     ret


* Reference to: System.@HandleFinally;
|
0072D897   E99C74CDFF             jmp     00404D38
0072D89C   EBE3                   jmp     0072D881

****** END
|
0072D89E   5F                     pop     edi
0072D89F   5E                     pop     esi
0072D8A0   5B                     pop     ebx
0072D8A1   8BE5                   mov     esp, ebp
0072D8A3   5D                     pop     ebp
0072D8A4   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072D9ED(Sender : TObject);
begin
(*
0072D9ED   8BEC                   mov     ebp, esp
0072D9EF   51                     push    ecx
0072D9F0   B905000000             mov     ecx, $00000005
0072D9F5   6A00                   push    $00
0072D9F7   6A00                   push    $00
0072D9F9   49                     dec     ecx
0072D9FA   75F9                   jnz     0072D9F5
0072D9FC   51                     push    ecx
0072D9FD   874DFC                 xchg    [ebp-$04], ecx
0072DA00   53                     push    ebx
0072DA01   56                     push    esi
0072DA02   57                     push    edi
0072DA03   894DF8                 mov     [ebp-$08], ecx
0072DA06   8955FC                 mov     [ebp-$04], edx
0072DA09   8BF8                   mov     edi, eax
0072DA0B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0072DA0E   E8397FCDFF             call    0040594C
0072DA13   33C0                   xor     eax, eax
0072DA15   55                     push    ebp
0072DA16   6864DD7200             push    $0072DD64

***** TRY
|
0072DA1B   64FF30                 push    dword ptr fs:[eax]
0072DA1E   648920                 mov     fs:[eax], esp
0072DA21   8B55FC                 mov     edx, [ebp-$04]
0072DA24   B87CDD7200             mov     eax, $0072DD7C

* Reference to: System.@LStrPos;
|
0072DA29   E87280CDFF             call    00405AA0
0072DA2E   85C0                   test    eax, eax
0072DA30   0F8E08020000           jle     0072DC3E
0072DA36   BE01000000             mov     esi, $00000001
0072DA3B   33C0                   xor     eax, eax
0072DA3D   8945F0                 mov     [ebp-$10], eax
0072DA40   8945F4                 mov     [ebp-$0C], eax
0072DA43   E9E1010000             jmp     0072DC29
0072DA48   8B45FC                 mov     eax, [ebp-$04]
0072DA4B   807C30FF7E             cmp     byte ptr [eax+esi-$01], $7E
0072DA50   753C                   jnz     0072DA8E
0072DA52   46                     inc     esi
0072DA53   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0072DA56   E8417ACDFF             call    0040549C
0072DA5B   EB16                   jmp     0072DA73
0072DA5D   8D45E4                 lea     eax, [ebp-$1C]
0072DA60   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072DA62   E81D7CCDFF             call    00405684
0072DA67   8B55E4                 mov     edx, [ebp-$1C]
0072DA6A   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrCat;
|
0072DA6D   E8F27CCDFF             call    00405764
0072DA72   46                     inc     esi
0072DA73   8B45FC                 mov     eax, [ebp-$04]
0072DA76   8A5C30FF               mov     bl, byte ptr [eax+esi-$01]
0072DA7A   80FB7E                 cmp     bl, $7E
0072DA7D   75DE                   jnz     0072DA5D
0072DA7F   8B55EC                 mov     edx, [ebp-$14]
0072DA82   8BC7                   mov     eax, edi

|
0072DA84   E8174B0000             call    007325A0
0072DA89   E99A010000             jmp     0072DC28
0072DA8E   8D45E8                 lea     eax, [ebp-$18]
0072DA91   50                     push    eax
0072DA92   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0072DA95   E8C27CCDFF             call    0040575C
0072DA9A   8BC8                   mov     ecx, eax
0072DA9C   41                     inc     ecx
0072DA9D   2BCE                   sub     ecx, esi
0072DA9F   8BD6                   mov     edx, esi
0072DAA1   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrCopy;
|
0072DAA4   E8137FCDFF             call    004059BC
0072DAA9   8D45E0                 lea     eax, [ebp-$20]
0072DAAC   8B55FC                 mov     edx, [ebp-$04]
0072DAAF   8A5432FF               mov     dl, byte ptr [edx+esi-$01]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072DAB3   E8CC7BCDFF             call    00405684
0072DAB8   8B55E0                 mov     edx, [ebp-$20]
0072DABB   8B87F8020000           mov     eax, [edi+$02F8]
0072DAC1   8B8024020000           mov     eax, [eax+$0224]

|
0072DAC7   E84042FEFF             call    00711D0C

|
0072DACC   E8C393FEFF             call    00716E94
0072DAD1   D80580DD7200           fadd    dword ptr [$0072DD80]
0072DAD7   8B45F8                 mov     eax, [ebp-$08]
0072DADA   DD18                   fstp    qword ptr [eax]
0072DADC   9B                     wait
0072DADD   8D45DC                 lea     eax, [ebp-$24]
0072DAE0   8B55FC                 mov     edx, [ebp-$04]
0072DAE3   8A5432FF               mov     dl, byte ptr [edx+esi-$01]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072DAE7   E8987BCDFF             call    00405684
0072DAEC   8B55DC                 mov     edx, [ebp-$24]
0072DAEF   8B87F8020000           mov     eax, [edi+$02F8]
0072DAF5   8B8024020000           mov     eax, [eax+$0224]

|
0072DAFB   E8A842FEFF             call    00711DA8

|
0072DB00   E88F93FEFF             call    00716E94
0072DB05   8B4510                 mov     eax, [ebp+$10]
0072DB08   DD18                   fstp    qword ptr [eax]
0072DB0A   9B                     wait
0072DB0B   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072DB10   8B00                   mov     eax, [eax]

* Possible String Reference to: 'formulario'
|
0072DB12   BA8CDD7200             mov     edx, $0072DD8C

* Reference to: System.@LStrCmp;
|
0072DB17   E88C7DCDFF             call    004058A8
0072DB1C   7573                   jnz     0072DB91
0072DB1E   8B45FC                 mov     eax, [ebp-$04]
0072DB21   8A5C30FF               mov     bl, byte ptr [eax+esi-$01]
0072DB25   80FB20                 cmp     bl, $20
0072DB28   7450                   jz      0072DB7A
0072DB2A   DB4508                 fild    dword ptr [ebp+$08]
0072DB2D   DC45F0                 fadd    qword ptr [ebp-$10]
0072DB30   83C4F4                 add     esp, -$0C
0072DB33   DB3C24                 fstp    tbyte ptr [esp]
0072DB36   9B                     wait
0072DB37   8B450C                 mov     eax, [ebp+$0C]
0072DB3A   DD00                   fld     qword ptr [eax]
0072DB3C   83C4F4                 add     esp, -$0C
0072DB3F   DB3C24                 fstp    tbyte ptr [esp]
0072DB42   9B                     wait
0072DB43   8D45D8                 lea     eax, [ebp-$28]
0072DB46   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072DB48   E8377BCDFF             call    00405684
0072DB4D   8B55D8                 mov     edx, [ebp-$28]
0072DB50   8B87F8020000           mov     eax, [edi+$02F8]
0072DB56   8B8024020000           mov     eax, [eax+$0224]
0072DB5C   B102                   mov     cl, $02

|
0072DB5E   E82143FEFF             call    00711E84
0072DB63   DD45F0                 fld     qword ptr [ebp-$10]
0072DB66   8B4510                 mov     eax, [ebp+$10]
0072DB69   DC00                   fadd    qword ptr [eax]
0072DB6B   D80580DD7200           fadd    dword ptr [$0072DD80]
0072DB71   DD5DF0                 fstp    qword ptr [ebp-$10]
0072DB74   9B                     wait
0072DB75   E9AE000000             jmp     0072DC28
0072DB7A   DD45F0                 fld     qword ptr [ebp-$10]
0072DB7D   8B4510                 mov     eax, [ebp+$10]
0072DB80   DC00                   fadd    qword ptr [eax]
0072DB82   D80580DD7200           fadd    dword ptr [$0072DD80]
0072DB88   DD5DF0                 fstp    qword ptr [ebp-$10]
0072DB8B   9B                     wait
0072DB8C   E997000000             jmp     0072DC28
0072DB91   8B55E8                 mov     edx, [ebp-$18]
0072DB94   B87CDD7200             mov     eax, $0072DD7C

* Reference to: System.@LStrPos;
|
0072DB99   E8027FCDFF             call    00405AA0
0072DB9E   85C0                   test    eax, eax
0072DBA0   7452                   jz      0072DBF4
0072DBA2   DB4508                 fild    dword ptr [ebp+$08]
0072DBA5   DC45F0                 fadd    qword ptr [ebp-$10]
0072DBA8   83C4F4                 add     esp, -$0C
0072DBAB   DB3C24                 fstp    tbyte ptr [esp]
0072DBAE   9B                     wait
0072DBAF   8B450C                 mov     eax, [ebp+$0C]
0072DBB2   DD00                   fld     qword ptr [eax]
0072DBB4   83C4F4                 add     esp, -$0C
0072DBB7   DB3C24                 fstp    tbyte ptr [esp]
0072DBBA   9B                     wait
0072DBBB   8D45D4                 lea     eax, [ebp-$2C]
0072DBBE   8B55FC                 mov     edx, [ebp-$04]
0072DBC1   8A5432FF               mov     dl, byte ptr [edx+esi-$01]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072DBC5   E8BA7ACDFF             call    00405684
0072DBCA   8B55D4                 mov     edx, [ebp-$2C]
0072DBCD   8B87F8020000           mov     eax, [edi+$02F8]
0072DBD3   8B8024020000           mov     eax, [eax+$0224]
0072DBD9   B102                   mov     cl, $02

|
0072DBDB   E8A442FEFF             call    00711E84
0072DBE0   DD45F0                 fld     qword ptr [ebp-$10]
0072DBE3   8B4510                 mov     eax, [ebp+$10]
0072DBE6   DC00                   fadd    qword ptr [eax]
0072DBE8   D80580DD7200           fadd    dword ptr [$0072DD80]
0072DBEE   DD5DF0                 fstp    qword ptr [ebp-$10]
0072DBF1   9B                     wait
0072DBF2   EB34                   jmp     0072DC28
0072DBF4   DB4508                 fild    dword ptr [ebp+$08]
0072DBF7   DC45F0                 fadd    qword ptr [ebp-$10]
0072DBFA   83C4F4                 add     esp, -$0C
0072DBFD   DB3C24                 fstp    tbyte ptr [esp]
0072DC00   9B                     wait
0072DC01   8B450C                 mov     eax, [ebp+$0C]
0072DC04   DD00                   fld     qword ptr [eax]
0072DC06   83C4F4                 add     esp, -$0C
0072DC09   DB3C24                 fstp    tbyte ptr [esp]
0072DC0C   9B                     wait
0072DC0D   8B87F8020000           mov     eax, [edi+$02F8]
0072DC13   8B8024020000           mov     eax, [eax+$0224]
0072DC19   B102                   mov     cl, $02
0072DC1B   8B55E8                 mov     edx, [ebp-$18]

|
0072DC1E   E86142FEFF             call    00711E84
0072DC23   E909010000             jmp     0072DD31
0072DC28   46                     inc     esi
0072DC29   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0072DC2C   E82B7BCDFF             call    0040575C
0072DC31   3BF0                   cmp     esi, eax
0072DC33   0F8E0FFEFFFF           jle     0072DA48
0072DC39   E9F3000000             jmp     0072DD31
0072DC3E   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072DC43   8B00                   mov     eax, [eax]

* Possible String Reference to: 'formulario'
|
0072DC45   BA8CDD7200             mov     edx, $0072DD8C

* Reference to: System.@LStrCmp;
|
0072DC4A   E8597CCDFF             call    004058A8
0072DC4F   0F8589000000           jnz     0072DCDE
0072DC55   BE01000000             mov     esi, $00000001
0072DC5A   33C0                   xor     eax, eax
0072DC5C   8945F0                 mov     [ebp-$10], eax
0072DC5F   8945F4                 mov     [ebp-$0C], eax
0072DC62   EB6C                   jmp     0072DCD0
0072DC64   8B45FC                 mov     eax, [ebp-$04]
0072DC67   8A5C30FF               mov     bl, byte ptr [eax+esi-$01]
0072DC6B   80FB20                 cmp     bl, $20
0072DC6E   744D                   jz      0072DCBD
0072DC70   DB4508                 fild    dword ptr [ebp+$08]
0072DC73   DC45F0                 fadd    qword ptr [ebp-$10]
0072DC76   83C4F4                 add     esp, -$0C
0072DC79   DB3C24                 fstp    tbyte ptr [esp]
0072DC7C   9B                     wait
0072DC7D   8B450C                 mov     eax, [ebp+$0C]
0072DC80   DD00                   fld     qword ptr [eax]
0072DC82   83C4F4                 add     esp, -$0C
0072DC85   DB3C24                 fstp    tbyte ptr [esp]
0072DC88   9B                     wait
0072DC89   8D45D0                 lea     eax, [ebp-$30]
0072DC8C   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072DC8E   E8F179CDFF             call    00405684
0072DC93   8B55D0                 mov     edx, [ebp-$30]
0072DC96   8B87F8020000           mov     eax, [edi+$02F8]
0072DC9C   8B8024020000           mov     eax, [eax+$0224]
0072DCA2   B102                   mov     cl, $02

|
0072DCA4   E8DB41FEFF             call    00711E84
0072DCA9   DD45F0                 fld     qword ptr [ebp-$10]
0072DCAC   8B4510                 mov     eax, [ebp+$10]
0072DCAF   DC00                   fadd    qword ptr [eax]
0072DCB1   D80580DD7200           fadd    dword ptr [$0072DD80]
0072DCB7   DD5DF0                 fstp    qword ptr [ebp-$10]
0072DCBA   9B                     wait
0072DCBB   EB12                   jmp     0072DCCF
0072DCBD   DD45F0                 fld     qword ptr [ebp-$10]
0072DCC0   8B4510                 mov     eax, [ebp+$10]
0072DCC3   DC00                   fadd    qword ptr [eax]
0072DCC5   D80580DD7200           fadd    dword ptr [$0072DD80]
0072DCCB   DD5DF0                 fstp    qword ptr [ebp-$10]
0072DCCE   9B                     wait
0072DCCF   46                     inc     esi
0072DCD0   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0072DCD3   E8847ACDFF             call    0040575C
0072DCD8   3BF0                   cmp     esi, eax
0072DCDA   7E88                   jle     0072DC64
0072DCDC   EB53                   jmp     0072DD31
0072DCDE   8B87F8020000           mov     eax, [edi+$02F8]
0072DCE4   8B8024020000           mov     eax, [eax+$0224]
0072DCEA   BAA0DD7200             mov     edx, $0072DDA0

|
0072DCEF   E81840FEFF             call    00711D0C

|
0072DCF4   E89B91FEFF             call    00716E94
0072DCF9   D80580DD7200           fadd    dword ptr [$0072DD80]
0072DCFF   8B45F8                 mov     eax, [ebp-$08]
0072DD02   DD18                   fstp    qword ptr [eax]
0072DD04   9B                     wait
0072DD05   DB4508                 fild    dword ptr [ebp+$08]
0072DD08   83C4F4                 add     esp, -$0C
0072DD0B   DB3C24                 fstp    tbyte ptr [esp]
0072DD0E   9B                     wait
0072DD0F   8B450C                 mov     eax, [ebp+$0C]
0072DD12   DD00                   fld     qword ptr [eax]
0072DD14   83C4F4                 add     esp, -$0C
0072DD17   DB3C24                 fstp    tbyte ptr [esp]
0072DD1A   9B                     wait
0072DD1B   8B87F8020000           mov     eax, [edi+$02F8]
0072DD21   8B8024020000           mov     eax, [eax+$0224]
0072DD27   B102                   mov     cl, $02
0072DD29   8B55FC                 mov     edx, [ebp-$04]

|
0072DD2C   E85341FEFF             call    00711E84
0072DD31   8B450C                 mov     eax, [ebp+$0C]
0072DD34   DD00                   fld     qword ptr [eax]
0072DD36   8B45F8                 mov     eax, [ebp-$08]
0072DD39   DC00                   fadd    qword ptr [eax]
0072DD3B   8B450C                 mov     eax, [ebp+$0C]
0072DD3E   DD18                   fstp    qword ptr [eax]
0072DD40   9B                     wait
0072DD41   33C0                   xor     eax, eax
0072DD43   5A                     pop     edx
0072DD44   59                     pop     ecx
0072DD45   59                     pop     ecx
0072DD46   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072DD49   686BDD7200             push    $0072DD6B
0072DD4E   8D45D0                 lea     eax, [ebp-$30]
0072DD51   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072DD56   E86577CDFF             call    004054C0
0072DD5B   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0072DD5E   E83977CDFF             call    0040549C
0072DD63   C3                     ret


* Reference to: System.@HandleFinally;
|
0072DD64   E9CF6FCDFF             jmp     00404D38
0072DD69   EBE3                   jmp     0072DD4E

****** END
|
0072DD6B   5F                     pop     edi
0072DD6C   5E                     pop     esi
0072DD6D   5B                     pop     ebx
0072DD6E   8BE5                   mov     esp, ebp
0072DD70   5D                     pop     ebp
0072DD71   C20C00                 ret     $000C

*)
end;

procedure TFrmPreview._PROC_0072DDA5(Sender : TObject);
begin
(*
0072DDA5   8BEC                   mov     ebp, esp
0072DDA7   51                     push    ecx
0072DDA8   B907000000             mov     ecx, $00000007
0072DDAD   6A00                   push    $00
0072DDAF   6A00                   push    $00
0072DDB1   49                     dec     ecx
0072DDB2   75F9                   jnz     0072DDAD
0072DDB4   874DFC                 xchg    [ebp-$04], ecx
0072DDB7   53                     push    ebx
0072DDB8   56                     push    esi
0072DDB9   894DF4                 mov     [ebp-$0C], ecx
0072DDBC   8955F8                 mov     [ebp-$08], edx
0072DDBF   8945FC                 mov     [ebp-$04], eax
0072DDC2   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0072DDC5   E8827BCDFF             call    0040594C
0072DDCA   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0072DDCD   E87A7BCDFF             call    0040594C
0072DDD2   33C0                   xor     eax, eax
0072DDD4   55                     push    ebp
0072DDD5   6822DF7200             push    $0072DF22

***** TRY
|
0072DDDA   64FF30                 push    dword ptr fs:[eax]
0072DDDD   648920                 mov     fs:[eax], esp
0072DDE0   8B4508                 mov     eax, [ebp+$08]
0072DDE3   8B55F4                 mov     edx, [ebp-$0C]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0072DDE6   E80577CDFF             call    004054F0
0072DDEB   8B45F8                 mov     eax, [ebp-$08]
0072DDEE   8B00                   mov     eax, [eax]
0072DDF0   8B10                   mov     edx, [eax]
0072DDF2   FF5214                 call    dword ptr [edx+$14]
0072DDF5   48                     dec     eax
0072DDF6   85C0                   test    eax, eax
0072DDF8   0F8CEC000000           jl      0072DEEA
0072DDFE   40                     inc     eax
0072DDFF   8945E0                 mov     [ebp-$20], eax
0072DE02   C745F000000000         mov     dword ptr [ebp-$10], $00000000
0072DE09   8D4DDC                 lea     ecx, [ebp-$24]
0072DE0C   8B45F8                 mov     eax, [ebp-$08]
0072DE0F   8B00                   mov     eax, [eax]
0072DE11   8B55F0                 mov     edx, [ebp-$10]
0072DE14   8B18                   mov     ebx, [eax]
0072DE16   FF530C                 call    dword ptr [ebx+$0C]
0072DE19   8B45DC                 mov     eax, [ebp-$24]
0072DE1C   8D55EC                 lea     edx, [ebp-$14]

* Reference to : TFrmInfoAtu._PROC_007A0480()
|
0072DE1F   E85C260700             call    007A0480
0072DE24   8D45D8                 lea     eax, [ebp-$28]
0072DE27   50                     push    eax
0072DE28   B901000000             mov     ecx, $00000001
0072DE2D   BA01000000             mov     edx, $00000001
0072DE32   8B45EC                 mov     eax, [ebp-$14]

* Reference to: System.@LStrCopy;
|
0072DE35   E8827BCDFF             call    004059BC
0072DE3A   8B45D8                 mov     eax, [ebp-$28]
0072DE3D   BA3CDF7200             mov     edx, $0072DF3C

* Reference to: System.@LStrCmp;
|
0072DE42   E8617ACDFF             call    004058A8
0072DE47   0F8591000000           jnz     0072DEDE
0072DE4D   BE02000000             mov     esi, $00000002
0072DE52   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrClr(void;void);
|
0072DE55   E84276CDFF             call    0040549C
0072DE5A   EB16                   jmp     0072DE72
0072DE5C   8D45D4                 lea     eax, [ebp-$2C]
0072DE5F   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072DE61   E81E78CDFF             call    00405684
0072DE66   8B55D4                 mov     edx, [ebp-$2C]
0072DE69   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrCat;
|
0072DE6C   E8F378CDFF             call    00405764
0072DE71   46                     inc     esi
0072DE72   8B45EC                 mov     eax, [ebp-$14]
0072DE75   8A5C30FF               mov     bl, byte ptr [eax+esi-$01]
0072DE79   80FB3D                 cmp     bl, $3D
0072DE7C   75DE                   jnz     0072DE5C
0072DE7E   8D55CC                 lea     edx, [ebp-$34]
0072DE81   8B45E8                 mov     eax, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
0072DE84   E86F250700             call    007A03F8
0072DE89   8B45CC                 mov     eax, [ebp-$34]
0072DE8C   8D55D0                 lea     edx, [ebp-$30]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
0072DE8F   E8D0C6CDFF             call    0040A564
0072DE94   8B45D0                 mov     eax, [ebp-$30]
0072DE97   50                     push    eax
0072DE98   8D55C8                 lea     edx, [ebp-$38]
0072DE9B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
0072DE9E   E8C1C6CDFF             call    0040A564
0072DEA3   8B55C8                 mov     edx, [ebp-$38]
0072DEA6   58                     pop     eax

* Reference to: System.@LStrCmp;
|
0072DEA7   E8FC79CDFF             call    004058A8
0072DEAC   7530                   jnz     0072DEDE
0072DEAE   46                     inc     esi
0072DEAF   EB16                   jmp     0072DEC7
0072DEB1   8D45C4                 lea     eax, [ebp-$3C]
0072DEB4   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072DEB6   E8C977CDFF             call    00405684
0072DEBB   8B55C4                 mov     edx, [ebp-$3C]
0072DEBE   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072DEC1   E89E78CDFF             call    00405764
0072DEC6   46                     inc     esi
0072DEC7   8B45EC                 mov     eax, [ebp-$14]
0072DECA   8A5C30FF               mov     bl, byte ptr [eax+esi-$01]
0072DECE   80FB3E                 cmp     bl, $3E
0072DED1   75DE                   jnz     0072DEB1
0072DED3   8B4508                 mov     eax, [ebp+$08]
0072DED6   8B55E4                 mov     edx, [ebp-$1C]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0072DED9   E81276CDFF             call    004054F0
0072DEDE   FF45F0                 inc     dword ptr [ebp-$10]
0072DEE1   FF4DE0                 dec     dword ptr [ebp-$20]
0072DEE4   0F851FFFFFFF           jnz     0072DE09
0072DEEA   33C0                   xor     eax, eax
0072DEEC   5A                     pop     edx
0072DEED   59                     pop     ecx
0072DEEE   59                     pop     ecx
0072DEEF   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072DEF2   6829DF7200             push    $0072DF29
0072DEF7   8D45C4                 lea     eax, [ebp-$3C]
0072DEFA   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072DEFF   E8BC75CDFF             call    004054C0
0072DF04   8D45E4                 lea     eax, [ebp-$1C]
0072DF07   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072DF0C   E8AF75CDFF             call    004054C0
0072DF11   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0072DF14   E88375CDFF             call    0040549C
0072DF19   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0072DF1C   E87B75CDFF             call    0040549C
0072DF21   C3                     ret


* Reference to: System.@HandleFinally;
|
0072DF22   E9116ECDFF             jmp     00404D38
0072DF27   EBCE                   jmp     0072DEF7

****** END
|
0072DF29   5E                     pop     esi
0072DF2A   5B                     pop     ebx
0072DF2B   8BE5                   mov     esp, ebp
0072DF2D   5D                     pop     ebp
0072DF2E   C20400                 ret     $0004

*)
end;

procedure TFrmPreview._PROC_0072DF41(Sender : TObject);
begin
(*
0072DF41   8BEC                   mov     ebp, esp
0072DF43   B914000000             mov     ecx, $00000014
0072DF48   6A00                   push    $00
0072DF4A   6A00                   push    $00
0072DF4C   49                     dec     ecx
0072DF4D   75F9                   jnz     0072DF48
0072DF4F   53                     push    ebx
0072DF50   56                     push    esi
0072DF51   57                     push    edi
0072DF52   8955F8                 mov     [ebp-$08], edx
0072DF55   8945FC                 mov     [ebp-$04], eax
0072DF58   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0072DF5B   E8EC79CDFF             call    0040594C
0072DF60   33C0                   xor     eax, eax
0072DF62   55                     push    ebp
0072DF63   68C2E47200             push    $0072E4C2

***** TRY
|
0072DF68   64FF30                 push    dword ptr fs:[eax]
0072DF6B   648920                 mov     fs:[eax], esp
0072DF6E   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrClr(void;void);
|
0072DF71   E82675CDFF             call    0040549C
0072DF76   B201                   mov     dl, $01

* Reference to class TStringList
|
0072DF78   A1D4044200             mov     eax, dword ptr [$004204D4]

* Reference to: System.TObject.Create(TObject;Boolean);
|
0072DF7D   E8EA65CDFF             call    0040456C
0072DF82   8945DC                 mov     [ebp-$24], eax
0072DF85   33D2                   xor     edx, edx
0072DF87   55                     push    ebp
0072DF88   684EE47200             push    $0072E44E

***** TRY
|
0072DF8D   64FF32                 push    dword ptr fs:[edx]
0072DF90   648922                 mov     fs:[edx], esp
0072DF93   33D2                   xor     edx, edx
0072DF95   55                     push    ebp
0072DF96   680FE47200             push    $0072E40F

***** TRY
|
0072DF9B   64FF32                 push    dword ptr fs:[edx]
0072DF9E   648922                 mov     fs:[edx], esp
0072DFA1   C745F401000000         mov     dword ptr [ebp-$0C], $00000001
0072DFA8   E947040000             jmp     0072E3F4
0072DFAD   8B45FC                 mov     eax, [ebp-$04]
0072DFB0   8B55F4                 mov     edx, [ebp-$0C]
0072DFB3   807C10FF5B             cmp     byte ptr [eax+edx-$01], $5B
0072DFB8   0F85F8030000           jnz     0072E3B6
0072DFBE   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0072DFC1   E8D674CDFF             call    0040549C
0072DFC6   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0072DFC9   E8CE74CDFF             call    0040549C
0072DFCE   FF45F4                 inc     dword ptr [ebp-$0C]
0072DFD1   EB78                   jmp     0072E04B
0072DFD3   80FB7C                 cmp     bl, $7C
0072DFD6   7533                   jnz     0072E00B
0072DFD8   FF45F4                 inc     dword ptr [ebp-$0C]
0072DFDB   EB18                   jmp     0072DFF5
0072DFDD   8D45D8                 lea     eax, [ebp-$28]
0072DFE0   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072DFE2   E89D76CDFF             call    00405684
0072DFE7   8B55D8                 mov     edx, [ebp-$28]
0072DFEA   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrCat;
|
0072DFED   E87277CDFF             call    00405764
0072DFF2   FF45F4                 inc     dword ptr [ebp-$0C]
0072DFF5   8B45FC                 mov     eax, [ebp-$04]
0072DFF8   8B55F4                 mov     edx, [ebp-$0C]
0072DFFB   8A5C10FF               mov     bl, byte ptr [eax+edx-$01]
0072DFFF   80FB5D                 cmp     bl, $5D
0072E002   7447                   jz      0072E04B
0072E004   80FB2F                 cmp     bl, $2F
0072E007   75D4                   jnz     0072DFDD
0072E009   EB40                   jmp     0072E04B
0072E00B   80FB2F                 cmp     bl, $2F
0072E00E   7523                   jnz     0072E033
0072E010   FF45F4                 inc     dword ptr [ebp-$0C]
0072E013   EB0D                   jmp     0072E022
0072E015   8D45E8                 lea     eax, [ebp-$18]
0072E018   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072E01A   E86576CDFF             call    00405684
0072E01F   FF45F4                 inc     dword ptr [ebp-$0C]
0072E022   8B45FC                 mov     eax, [ebp-$04]
0072E025   8B55F4                 mov     edx, [ebp-$0C]
0072E028   8A5C10FF               mov     bl, byte ptr [eax+edx-$01]
0072E02C   80FB5D                 cmp     bl, $5D
0072E02F   75E4                   jnz     0072E015
0072E031   EB18                   jmp     0072E04B
0072E033   8D45D4                 lea     eax, [ebp-$2C]
0072E036   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072E038   E84776CDFF             call    00405684
0072E03D   8B55D4                 mov     edx, [ebp-$2C]
0072E040   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrCat;
|
0072E043   E81C77CDFF             call    00405764
0072E048   FF45F4                 inc     dword ptr [ebp-$0C]
0072E04B   8B45FC                 mov     eax, [ebp-$04]
0072E04E   8B55F4                 mov     edx, [ebp-$0C]
0072E051   8A5C10FF               mov     bl, byte ptr [eax+edx-$01]
0072E055   80FB5D                 cmp     bl, $5D
0072E058   0F8575FFFFFF           jnz     0072DFD3
0072E05E   FF45F4                 inc     dword ptr [ebp-$0C]
0072E061   A0D0E47200             mov     al, byte ptr [$0072E4D0]
0072E066   50                     push    eax
0072E067   8D45C4                 lea     eax, [ebp-$3C]
0072E06A   8B55F0                 mov     edx, [ebp-$10]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0072E06D   E852ACCEFF             call    00418CC4
0072E072   8D4DC4                 lea     ecx, [ebp-$3C]
0072E075   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0072E07A   8B00                   mov     eax, [eax]
0072E07C   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'NOME'
|
0072E07F   BADCE47200             mov     edx, $0072E4DC

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
0072E084   E86FA30700             call    007A83F8
0072E089   84C0                   test    al, al
0072E08B   0F8482010000           jz      0072E213
0072E091   8B45DC                 mov     eax, [ebp-$24]
0072E094   8B10                   mov     edx, [eax]

* Reference to method TStringList.Clear()
|
0072E096   FF5244                 call    dword ptr [edx+$44]
0072E099   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0072E09E   8B00                   mov     eax, [eax]
0072E0A0   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'funcao'
|
0072E0A3   BAECE47200             mov     edx, $0072E4EC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0072E0A8   E857BBDBFF             call    004E9C04
0072E0AD   8D55C0                 lea     edx, [ebp-$40]
0072E0B0   8B08                   mov     ecx, [eax]
0072E0B2   FF5160                 call    dword ptr [ecx+$60]
0072E0B5   8B55C0                 mov     edx, [ebp-$40]
0072E0B8   8B45DC                 mov     eax, [ebp-$24]
0072E0BB   8B08                   mov     ecx, [eax]

* Reference to method TStringList.SetTextStr(string)
|
0072E0BD   FF512C                 call    dword ptr [ecx+$2C]
0072E0C0   8D4DB0                 lea     ecx, [ebp-$50]
0072E0C3   A178B47D00             mov     eax, dword ptr [$007DB478]
0072E0C8   8B00                   mov     eax, [eax]
0072E0CA   8B55DC                 mov     edx, [ebp-$24]

|
0072E0CD   E8CEEA0800             call    007BCBA0
0072E0D2   8D55B0                 lea     edx, [ebp-$50]
0072E0D5   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
0072E0D8   E81B9BCEFF             call    00417BF8
0072E0DD   837DEC00               cmp     dword ptr [ebp-$14], +$00
0072E0E1   7438                   jz      0072E11B
0072E0E3   33C0                   xor     eax, eax
0072E0E5   55                     push    ebp
0072E0E6   6805E17200             push    $0072E105

***** TRY
|
0072E0EB   64FF30                 push    dword ptr fs:[eax]
0072E0EE   648920                 mov     fs:[eax], esp
0072E0F1   8B45EC                 mov     eax, [ebp-$14]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0072E0F4   E8D7CDCDFF             call    0040AED0
0072E0F9   8BD8                   mov     ebx, eax
0072E0FB   33C0                   xor     eax, eax
0072E0FD   5A                     pop     edx
0072E0FE   59                     pop     ecx
0072E0FF   59                     pop     ecx
0072E100   648910                 mov     fs:[eax], edx
0072E103   EB20                   jmp     0072E125

* Reference to: System.@HandleAnyException;
|
0072E105   E97A69CDFF             jmp     00404A84
0072E10A   8B45E0                 mov     eax, [ebp-$20]

* Reference to: System.@LStrLen(String):Integer;
|
0072E10D   E84A76CDFF             call    0040575C
0072E112   8BD8                   mov     ebx, eax

* Reference to: System.@DoneExcept;
|
0072E114   E8976DCDFF             call    00404EB0
0072E119   EB0A                   jmp     0072E125
0072E11B   8B45E0                 mov     eax, [ebp-$20]

* Reference to: System.@LStrLen(String):Integer;
|
0072E11E   E83976CDFF             call    0040575C
0072E123   8BD8                   mov     ebx, eax

****** END
|
0072E125   8D55AC                 lea     edx, [ebp-$54]
0072E128   8B45E8                 mov     eax, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
0072E12B   E8C8220700             call    007A03F8
0072E130   8B45AC                 mov     eax, [ebp-$54]
0072E133   BAFCE47200             mov     edx, $0072E4FC

* Reference to: System.@LStrCmp;
|
0072E138   E86B77CDFF             call    004058A8
0072E13D   7528                   jnz     0072E167

* Possible String Reference to: 'esquerda'
|
0072E13F   6808E57200             push    $0072E508
0072E144   8D45A8                 lea     eax, [ebp-$58]
0072E147   50                     push    eax
0072E148   8BCB                   mov     ecx, ebx
0072E14A   8B55E0                 mov     edx, [ebp-$20]
0072E14D   B81CE57200             mov     eax, $0072E51C

|
0072E152   E871450700             call    007A26C8
0072E157   8B55A8                 mov     edx, [ebp-$58]
0072E15A   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072E15D   E80276CDFF             call    00405764
0072E162   E94F020000             jmp     0072E3B6
0072E167   8D55A4                 lea     edx, [ebp-$5C]
0072E16A   8B45E8                 mov     eax, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
0072E16D   E886220700             call    007A03F8
0072E172   8B45A4                 mov     eax, [ebp-$5C]
0072E175   BA28E57200             mov     edx, $0072E528

* Reference to: System.@LStrCmp;
|
0072E17A   E82977CDFF             call    004058A8
0072E17F   7528                   jnz     0072E1A9

* Possible String Reference to: 'direita'
|
0072E181   6834E57200             push    $0072E534
0072E186   8D45A0                 lea     eax, [ebp-$60]
0072E189   50                     push    eax
0072E18A   8BCB                   mov     ecx, ebx
0072E18C   8B55E0                 mov     edx, [ebp-$20]
0072E18F   B81CE57200             mov     eax, $0072E51C

|
0072E194   E82F450700             call    007A26C8
0072E199   8B55A0                 mov     edx, [ebp-$60]
0072E19C   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072E19F   E8C075CDFF             call    00405764
0072E1A4   E90D020000             jmp     0072E3B6
0072E1A9   8D559C                 lea     edx, [ebp-$64]
0072E1AC   8B45E8                 mov     eax, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
0072E1AF   E844220700             call    007A03F8
0072E1B4   8B459C                 mov     eax, [ebp-$64]
0072E1B7   BA44E57200             mov     edx, $0072E544

* Reference to: System.@LStrCmp;
|
0072E1BC   E8E776CDFF             call    004058A8
0072E1C1   7528                   jnz     0072E1EB

* Possible String Reference to: 'centro'
|
0072E1C3   6850E57200             push    $0072E550
0072E1C8   8D4598                 lea     eax, [ebp-$68]
0072E1CB   50                     push    eax
0072E1CC   8BCB                   mov     ecx, ebx
0072E1CE   8B55E0                 mov     edx, [ebp-$20]
0072E1D1   B81CE57200             mov     eax, $0072E51C

|
0072E1D6   E8ED440700             call    007A26C8
0072E1DB   8B5598                 mov     edx, [ebp-$68]
0072E1DE   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072E1E1   E87E75CDFF             call    00405764
0072E1E6   E9CB010000             jmp     0072E3B6

* Possible String Reference to: 'esquerda'
|
0072E1EB   6808E57200             push    $0072E508
0072E1F0   8D4594                 lea     eax, [ebp-$6C]
0072E1F3   50                     push    eax
0072E1F4   8BCB                   mov     ecx, ebx
0072E1F6   8B55E0                 mov     edx, [ebp-$20]
0072E1F9   B81CE57200             mov     eax, $0072E51C

|
0072E1FE   E8C5440700             call    007A26C8
0072E203   8B5594                 mov     edx, [ebp-$6C]
0072E206   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072E209   E85675CDFF             call    00405764
0072E20E   E9A3010000             jmp     0072E3B6
0072E213   8D5590                 lea     edx, [ebp-$70]
0072E216   8B45F0                 mov     eax, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
0072E219   E8DA210700             call    007A03F8
0072E21E   837D9000               cmp     dword ptr [ebp-$70], +$00
0072E222   7432                   jz      0072E256
0072E224   8B45DC                 mov     eax, [ebp-$24]
0072E227   8B10                   mov     edx, [eax]

* Reference to method TStringList.Clear()
|
0072E229   FF5244                 call    dword ptr [edx+$44]
0072E22C   8B55F0                 mov     edx, [ebp-$10]
0072E22F   8B45DC                 mov     eax, [ebp-$24]
0072E232   8B08                   mov     ecx, [eax]

* Reference to method TStringList.SetTextStr(string)
|
0072E234   FF512C                 call    dword ptr [ecx+$2C]
0072E237   8D4D80                 lea     ecx, [ebp-$80]
0072E23A   A178B47D00             mov     eax, dword ptr [$007DB478]
0072E23F   8B00                   mov     eax, [eax]
0072E241   8B55DC                 mov     edx, [ebp-$24]

|
0072E244   E857E90800             call    007BCBA0
0072E249   8D5580                 lea     edx, [ebp-$80]
0072E24C   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
0072E24F   E8A499CEFF             call    00417BF8
0072E254   EB0B                   jmp     0072E261
0072E256   8D45E0                 lea     eax, [ebp-$20]
0072E259   8B55F0                 mov     edx, [ebp-$10]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
0072E25C   E8D372CDFF             call    00405534
0072E261   837DEC00               cmp     dword ptr [ebp-$14], +$00
0072E265   7438                   jz      0072E29F
0072E267   33C0                   xor     eax, eax
0072E269   55                     push    ebp
0072E26A   6889E27200             push    $0072E289

***** TRY
|
0072E26F   64FF30                 push    dword ptr fs:[eax]
0072E272   648920                 mov     fs:[eax], esp
0072E275   8B45EC                 mov     eax, [ebp-$14]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0072E278   E853CCCDFF             call    0040AED0
0072E27D   8BD8                   mov     ebx, eax
0072E27F   33C0                   xor     eax, eax
0072E281   5A                     pop     edx
0072E282   59                     pop     ecx
0072E283   59                     pop     ecx
0072E284   648910                 mov     fs:[eax], edx
0072E287   EB20                   jmp     0072E2A9

* Reference to: System.@HandleAnyException;
|
0072E289   E9F667CDFF             jmp     00404A84
0072E28E   8B45E0                 mov     eax, [ebp-$20]

* Reference to: System.@LStrLen(String):Integer;
|
0072E291   E8C674CDFF             call    0040575C
0072E296   8BD8                   mov     ebx, eax

* Reference to: System.@DoneExcept;
|
0072E298   E8136CCDFF             call    00404EB0
0072E29D   EB0A                   jmp     0072E2A9
0072E29F   8B45E0                 mov     eax, [ebp-$20]

* Reference to: System.@LStrLen(String):Integer;
|
0072E2A2   E8B574CDFF             call    0040575C
0072E2A7   8BD8                   mov     ebx, eax

****** END
|
0072E2A9   8D957CFFFFFF           lea     edx, [ebp+$FFFFFF7C]
0072E2AF   8B45E8                 mov     eax, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
0072E2B2   E841210700             call    007A03F8
0072E2B7   8B857CFFFFFF           mov     eax, [ebp+$FFFFFF7C]
0072E2BD   BAFCE47200             mov     edx, $0072E4FC

* Reference to: System.@LStrCmp;
|
0072E2C2   E8E175CDFF             call    004058A8
0072E2C7   752E                   jnz     0072E2F7

* Possible String Reference to: 'esquerda'
|
0072E2C9   6808E57200             push    $0072E508
0072E2CE   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
0072E2D4   50                     push    eax
0072E2D5   8BCB                   mov     ecx, ebx
0072E2D7   8B55E0                 mov     edx, [ebp-$20]
0072E2DA   B81CE57200             mov     eax, $0072E51C

|
0072E2DF   E8E4430700             call    007A26C8
0072E2E4   8B9578FFFFFF           mov     edx, [ebp+$FFFFFF78]
0072E2EA   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072E2ED   E87274CDFF             call    00405764
0072E2F2   E9BF000000             jmp     0072E3B6
0072E2F7   8D9574FFFFFF           lea     edx, [ebp+$FFFFFF74]
0072E2FD   8B45E8                 mov     eax, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
0072E300   E8F3200700             call    007A03F8
0072E305   8B8574FFFFFF           mov     eax, [ebp+$FFFFFF74]
0072E30B   BA28E57200             mov     edx, $0072E528

* Reference to: System.@LStrCmp;
|
0072E310   E89375CDFF             call    004058A8
0072E315   752B                   jnz     0072E342

* Possible String Reference to: 'direita'
|
0072E317   6834E57200             push    $0072E534
0072E31C   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]
0072E322   50                     push    eax
0072E323   8BCB                   mov     ecx, ebx
0072E325   8B55E0                 mov     edx, [ebp-$20]
0072E328   B81CE57200             mov     eax, $0072E51C

|
0072E32D   E896430700             call    007A26C8
0072E332   8B9570FFFFFF           mov     edx, [ebp+$FFFFFF70]
0072E338   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072E33B   E82474CDFF             call    00405764
0072E340   EB74                   jmp     0072E3B6
0072E342   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
0072E348   8B45E8                 mov     eax, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
0072E34B   E8A8200700             call    007A03F8
0072E350   8B856CFFFFFF           mov     eax, [ebp+$FFFFFF6C]
0072E356   BA44E57200             mov     edx, $0072E544

* Reference to: System.@LStrCmp;
|
0072E35B   E84875CDFF             call    004058A8
0072E360   752B                   jnz     0072E38D

* Possible String Reference to: 'centro'
|
0072E362   6850E57200             push    $0072E550
0072E367   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
0072E36D   50                     push    eax
0072E36E   8BCB                   mov     ecx, ebx
0072E370   8B55E0                 mov     edx, [ebp-$20]
0072E373   B81CE57200             mov     eax, $0072E51C

|
0072E378   E84B430700             call    007A26C8
0072E37D   8B9568FFFFFF           mov     edx, [ebp+$FFFFFF68]
0072E383   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072E386   E8D973CDFF             call    00405764
0072E38B   EB29                   jmp     0072E3B6

* Possible String Reference to: 'esquerda'
|
0072E38D   6808E57200             push    $0072E508
0072E392   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
0072E398   50                     push    eax
0072E399   8BCB                   mov     ecx, ebx
0072E39B   8B55E0                 mov     edx, [ebp-$20]
0072E39E   B81CE57200             mov     eax, $0072E51C

|
0072E3A3   E820430700             call    007A26C8
0072E3A8   8B9564FFFFFF           mov     edx, [ebp+$FFFFFF64]
0072E3AE   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072E3B1   E8AE73CDFF             call    00405764
0072E3B6   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0072E3B9   E89E73CDFF             call    0040575C
0072E3BE   3B45F4                 cmp     eax, [ebp-$0C]
0072E3C1   7C31                   jl      0072E3F4
0072E3C3   8B45FC                 mov     eax, [ebp-$04]
0072E3C6   8B55F4                 mov     edx, [ebp-$0C]
0072E3C9   8A5C10FF               mov     bl, byte ptr [eax+edx-$01]
0072E3CD   80FB5B                 cmp     bl, $5B
0072E3D0   7422                   jz      0072E3F4
0072E3D2   84DB                   test    bl, bl
0072E3D4   741B                   jz      0072E3F1
0072E3D6   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
0072E3DC   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072E3DE   E8A172CDFF             call    00405684
0072E3E3   8B9560FFFFFF           mov     edx, [ebp+$FFFFFF60]
0072E3E9   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrCat;
|
0072E3EC   E87373CDFF             call    00405764
0072E3F1   FF45F4                 inc     dword ptr [ebp-$0C]
0072E3F4   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0072E3F7   E86073CDFF             call    0040575C
0072E3FC   3B45F4                 cmp     eax, [ebp-$0C]
0072E3FF   0F8DA8FBFFFF           jnl     0072DFAD
0072E405   33C0                   xor     eax, eax
0072E407   5A                     pop     edx
0072E408   59                     pop     ecx
0072E409   59                     pop     ecx
0072E40A   648910                 mov     fs:[eax], edx
0072E40D   EB1E                   jmp     0072E42D

* Reference to: System.@HandleOnException;
|
0072E40F   E99C67CDFF             jmp     00404BB0
0072E414   0100                   add     [eax], eax
0072E416   0000                   add     [eax], al
0072E418   40                     inc     eax
0072E419   95                     xchg    eax, ebp
0072E41A   40                     inc     eax
0072E41B   0020                   add     [eax], ah
0072E41D   E472                   in      al, $72
0072E41F   008B4004E8FC           add     [ebx+$FCE80440], cl
0072E425   57                     push    edi
0072E426   D1FF                   sar     edi, 1

* Reference to: System.@DoneExcept;
|
0072E428   E8836ACDFF             call    00404EB0

****** END
|
0072E42D   33C0                   xor     eax, eax
0072E42F   5A                     pop     edx
0072E430   59                     pop     ecx
0072E431   59                     pop     ecx
0072E432   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072E435   6855E47200             push    $0072E455
0072E43A   8B45F8                 mov     eax, [ebp-$08]
0072E43D   8B55E4                 mov     edx, [ebp-$1C]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0072E440   E8AB70CDFF             call    004054F0
0072E445   8B45DC                 mov     eax, [ebp-$24]

* Reference to: System.TObject.Free(TObject);
|
0072E448   E84F61CDFF             call    0040459C
0072E44D   C3                     ret


* Reference to: System.@HandleFinally;
|
0072E44E   E9E568CDFF             jmp     00404D38
0072E453   EBE5                   jmp     0072E43A

****** END
|
0072E455   33C0                   xor     eax, eax
0072E457   5A                     pop     edx
0072E458   59                     pop     ecx
0072E459   59                     pop     ecx
0072E45A   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072E45D   68C9E47200             push    $0072E4C9
0072E462   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
0072E468   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072E46D   E84E70CDFF             call    004054C0
0072E472   8D4580                 lea     eax, [ebp-$80]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0072E475   E8FE60CEFF             call    00414578
0072E47A   8D4590                 lea     eax, [ebp-$70]
0072E47D   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072E482   E83970CDFF             call    004054C0
0072E487   8D45B0                 lea     eax, [ebp-$50]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0072E48A   E8E960CEFF             call    00414578
0072E48F   8D45C0                 lea     eax, [ebp-$40]

* Reference to: System.@LStrClr(void;void);
|
0072E492   E80570CDFF             call    0040549C
0072E497   8D45C4                 lea     eax, [ebp-$3C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0072E49A   E8D960CEFF             call    00414578
0072E49F   8D45D4                 lea     eax, [ebp-$2C]
0072E4A2   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072E4A7   E81470CDFF             call    004054C0
0072E4AC   8D45E0                 lea     eax, [ebp-$20]
0072E4AF   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072E4B4   E80770CDFF             call    004054C0
0072E4B9   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0072E4BC   E8DB6FCDFF             call    0040549C
0072E4C1   C3                     ret


* Reference to: System.@HandleFinally;
|
0072E4C2   E97168CDFF             jmp     00404D38
0072E4C7   EB99                   jmp     0072E462

****** END
|
0072E4C9   5F                     pop     edi
0072E4CA   5E                     pop     esi
0072E4CB   5B                     pop     ebx
0072E4CC   8BE5                   mov     esp, ebp
0072E4CE   5D                     pop     ebp
0072E4CF   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E44E(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0072E44E   E9E568CDFF             jmp     00404D38

|
0072E453   EBE5                   jmp     0072E43A
0072E455   33C0                   xor     eax, eax
0072E457   5A                     pop     edx
0072E458   59                     pop     ecx
0072E459   59                     pop     ecx
0072E45A   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072E45D   68C9E47200             push    $0072E4C9
0072E462   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
0072E468   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072E46D   E84E70CDFF             call    004054C0
0072E472   8D4580                 lea     eax, [ebp-$80]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0072E475   E8FE60CEFF             call    00414578
0072E47A   8D4590                 lea     eax, [ebp-$70]
0072E47D   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072E482   E83970CDFF             call    004054C0
0072E487   8D45B0                 lea     eax, [ebp-$50]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0072E48A   E8E960CEFF             call    00414578
0072E48F   8D45C0                 lea     eax, [ebp-$40]

* Reference to: System.@LStrClr(void;void);
|
0072E492   E80570CDFF             call    0040549C
0072E497   8D45C4                 lea     eax, [ebp-$3C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0072E49A   E8D960CEFF             call    00414578
0072E49F   8D45D4                 lea     eax, [ebp-$2C]
0072E4A2   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072E4A7   E81470CDFF             call    004054C0
0072E4AC   8D45E0                 lea     eax, [ebp-$20]
0072E4AF   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072E4B4   E80770CDFF             call    004054C0
0072E4B9   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0072E4BC   E8DB6FCDFF             call    0040549C
0072E4C1   C3                     ret


* Reference to: System.@HandleFinally;
|
0072E4C2   E97168CDFF             jmp     00404D38
0072E4C7   EB99                   jmp     0072E462

****** END
|
0072E4C9   5F                     pop     edi
0072E4CA   5E                     pop     esi
0072E4CB   5B                     pop     ebx
0072E4CC   8BE5                   mov     esp, ebp
0072E4CE   5D                     pop     ebp
0072E4CF   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E4D0(Sender : TObject);
begin
(*
0072E4D0   0100                   add     [eax], eax
0072E4D2   0000                   add     [eax], al

*)
end;

procedure TFrmPreview._PROC_0072E559(Sender : TObject);
begin
(*
0072E559   8BEC                   mov     ebp, esp

* Reference to : TFrmPreview._PROC_0073130C()
|
0072E55B   E8AC2D0000             call    0073130C
0072E560   A1C0A27D00             mov     eax, dword ptr [$007DA2C0]
0072E565   8B00                   mov     eax, [eax]
0072E567   83F806                 cmp     eax, +$06
0072E56A   775B                   jnbe    0072E5C7
0072E56C   FF248573E57200         jmp     dword ptr [$72E573+eax*4]
0072E573   8FE5                   pop     ebp
0072E575   7200                   jb      0072E577
0072E577   96                     xchg    eax, esi
0072E578   E572                   in      eax, $72
0072E57A   009DE57200A4           add     [ebp+$A40072E5], bl
0072E580   E572                   in      eax, $72
0072E582   00C7                   add     bh, al
0072E584   E572                   in      eax, $72
0072E586   00ABE57200C2           add     [ebx+$C20072E5], ch
0072E58C   E572                   in      eax, $72
0072E58E   00E8                   add     al, ch
0072E590   48                     dec     eax
0072E591   0000                   add     [eax], al

0072E593   005DC3                 add     [ebp-$3D], bl

* Reference to : TFrmPreview._PROC_0072E6A8()
|
0072E596   E80D010000             call    0072E6A8
0072E59B   5D                     pop     ebp
0072E59C   C3                     ret


* Reference to : TFrmPreview._PROC_0072E768()
|
0072E59D   E8C6010000             call    0072E768
0072E5A2   5D                     pop     ebp
0072E5A3   C3                     ret


* Reference to : TFrmPreview._PROC_0072E7E8()
|
0072E5A4   E83F020000             call    0072E7E8
0072E5A9   5D                     pop     ebp
0072E5AA   C3                     ret


* Reference to : TFrmPreview._PROC_0072E7E8()
|
0072E5AB   E838020000             call    0072E7E8
0072E5B0   6A01                   push    $01
0072E5B2   33C9                   xor     ecx, ecx
0072E5B4   33D2                   xor     edx, edx

* Possible String Reference to: 'mailto:'
|
0072E5B6   B8D4E57200             mov     eax, $0072E5D4

|
0072E5BB   E89074EAFF             call    005D5A50
0072E5C0   5D                     pop     ebp
0072E5C1   C3                     ret


* Reference to : TFrmPreview._PROC_0072E81C()
|
0072E5C2   E855020000             call    0072E81C
0072E5C7   5D                     pop     ebp
0072E5C8   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E5DD(Sender : TObject);
begin
(*
0072E5DD   8BEC                   mov     ebp, esp
0072E5DF   53                     push    ebx
0072E5E0   56                     push    esi
0072E5E1   57                     push    edi
0072E5E2   33D2                   xor     edx, edx
0072E5E4   55                     push    ebp

* Possible String Reference to: 'ÈôfÕˇÎÍ_^[]√ã¿UãÏSVW3“UhYÁr'
|
0072E5E5   689AE67200             push    $0072E69A

***** TRY
|
0072E5EA   64FF32                 push    dword ptr fs:[edx]
0072E5ED   648922                 mov     fs:[edx], esp
0072E5F0   33D2                   xor     edx, edx
0072E5F2   55                     push    ebp
0072E5F3   6860E67200             push    $0072E660

***** TRY
|
0072E5F8   64FF32                 push    dword ptr fs:[edx]
0072E5FB   648922                 mov     fs:[edx], esp
0072E5FE   A168B67D00             mov     eax, dword ptr [$007DB668]
0072E603   8B00                   mov     eax, [eax]
0072E605   66BAF5FF               mov     dx, $FFF5

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0072E609   E81E57D8FF             call    004B3D2C
0072E60E   8B0D54AE7D00           mov     ecx, [$007DAE54]
0072E614   8B09                   mov     ecx, [ecx]
0072E616   B201                   mov     dl, $01

* Reference to class TFrmPreview
|
0072E618   A1A0C97200             mov     eax, dword ptr [$0072C9A0]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
0072E61D   E8EEF8D7FF             call    004ADF10

* Reference to GlobalVar_007DF338
|
0072E622   A338F37D00             mov     dword ptr [$007DF338], eax
0072E627   A138F37D00             mov     eax, dword ptr [$007DF338]

|
0072E62C   E82FEAFFFF             call    0072D060
0072E631   A168B67D00             mov     eax, dword ptr [$007DB668]
0072E636   8B00                   mov     eax, [eax]
0072E638   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0072E63A   E8ED56D8FF             call    004B3D2C
0072E63F   A138F37D00             mov     eax, dword ptr [$007DF338]
0072E644   8B10                   mov     edx, [eax]
0072E646   FF92EC000000           call    dword ptr [edx+$00EC]
0072E64C   A138F37D00             mov     eax, dword ptr [$007DF338]

* Reference to: System.TObject.Free(TObject);
|
0072E651   E8465FCDFF             call    0040459C
0072E656   33C0                   xor     eax, eax
0072E658   5A                     pop     edx
0072E659   59                     pop     ecx
0072E65A   59                     pop     ecx
0072E65B   648910                 mov     fs:[eax], edx
0072E65E   EB1E                   jmp     0072E67E

* Reference to: System.@HandleOnException;
|
0072E660   E94B65CDFF             jmp     00404BB0
0072E665   0100                   add     [eax], eax
0072E667   0000                   add     [eax], al
0072E669   40                     inc     eax
0072E66A   95                     xchg    eax, ebp
0072E66B   40                     inc     eax
0072E66C   0071E6                 add     [ecx-$1A], dh
0072E66F   7200                   jb      0072E671
0072E671   8B4004                 mov     eax, [eax+$04]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0072E674   E8AB55D1FF             call    00443C24

* Reference to: System.@DoneExcept;
|
0072E679   E83268CDFF             call    00404EB0

****** END
|
0072E67E   33C0                   xor     eax, eax
0072E680   5A                     pop     edx
0072E681   59                     pop     ecx
0072E682   59                     pop     ecx
0072E683   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[]√ã¿UãÏSVW3“UhYÁr'
|
0072E686   68A1E67200             push    $0072E6A1
0072E68B   A168B67D00             mov     eax, dword ptr [$007DB668]
0072E690   8B00                   mov     eax, [eax]
0072E692   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0072E694   E89356D8FF             call    004B3D2C
0072E699   C3                     ret


* Reference to: System.@HandleFinally;
|
0072E69A   E99966CDFF             jmp     00404D38
0072E69F   EBEA                   jmp     0072E68B

****** END
|
0072E6A1   5F                     pop     edi
0072E6A2   5E                     pop     esi
0072E6A3   5B                     pop     ebx
0072E6A4   5D                     pop     ebp
0072E6A5   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E69A(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0072E69A   E99966CDFF             jmp     00404D38

|
0072E69F   EBEA                   jmp     0072E68B
0072E6A1   5F                     pop     edi
0072E6A2   5E                     pop     esi
0072E6A3   5B                     pop     ebx
0072E6A4   5D                     pop     ebp
0072E6A5   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E6A8(Sender : TObject);
begin
(*
0072E6A8   55                     push    ebp
0072E6A9   8BEC                   mov     ebp, esp
0072E6AB   53                     push    ebx
0072E6AC   56                     push    esi
0072E6AD   57                     push    edi
0072E6AE   33D2                   xor     edx, edx
0072E6B0   55                     push    ebp

* Possible String Reference to: 'È⁄eÕˇÎÍ_^[]√ç@'
|
0072E6B1   6859E77200             push    $0072E759

***** TRY
|
0072E6B6   64FF32                 push    dword ptr fs:[edx]
0072E6B9   648922                 mov     fs:[edx], esp
0072E6BC   33D2                   xor     edx, edx
0072E6BE   55                     push    ebp
0072E6BF   681FE77200             push    $0072E71F

***** TRY
|
0072E6C4   64FF32                 push    dword ptr fs:[edx]
0072E6C7   648922                 mov     fs:[edx], esp
0072E6CA   A168B67D00             mov     eax, dword ptr [$007DB668]
0072E6CF   8B00                   mov     eax, [eax]
0072E6D1   66BAF5FF               mov     dx, $FFF5

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0072E6D5   E85256D8FF             call    004B3D2C
0072E6DA   8B0D54AE7D00           mov     ecx, [$007DAE54]
0072E6E0   8B09                   mov     ecx, [ecx]
0072E6E2   B201                   mov     dl, $01

* Reference to class TFrmPreview
|
0072E6E4   A1A0C97200             mov     eax, dword ptr [$0072C9A0]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
0072E6E9   E822F8D7FF             call    004ADF10

* Reference to GlobalVar_007DF338
|
0072E6EE   A338F37D00             mov     dword ptr [$007DF338], eax
0072E6F3   A138F37D00             mov     eax, dword ptr [$007DF338]

|
0072E6F8   E8E70A0000             call    0072F1E4
0072E6FD   A138F37D00             mov     eax, dword ptr [$007DF338]

* Reference to: System.TObject.Free(TObject);
|
0072E702   E8955ECDFF             call    0040459C
0072E707   A168B67D00             mov     eax, dword ptr [$007DB668]
0072E70C   8B00                   mov     eax, [eax]
0072E70E   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0072E710   E81756D8FF             call    004B3D2C
0072E715   33C0                   xor     eax, eax
0072E717   5A                     pop     edx
0072E718   59                     pop     ecx
0072E719   59                     pop     ecx
0072E71A   648910                 mov     fs:[eax], edx
0072E71D   EB1E                   jmp     0072E73D

* Reference to: System.@HandleOnException;
|
0072E71F   E98C64CDFF             jmp     00404BB0
0072E724   0100                   add     [eax], eax
0072E726   0000                   add     [eax], al
0072E728   40                     inc     eax
0072E729   95                     xchg    eax, ebp
0072E72A   40                     inc     eax
0072E72B   0030                   add     [eax], dh
0072E72D   E772                   out     $72, eax
0072E72F   008B4004E8EC           add     [ebx+$ECE80440], cl
0072E735   54                     push    esp
0072E736   D1FF                   sar     edi, 1

* Reference to: System.@DoneExcept;
|
0072E738   E87367CDFF             call    00404EB0

****** END
|
0072E73D   33C0                   xor     eax, eax
0072E73F   5A                     pop     edx
0072E740   59                     pop     ecx
0072E741   59                     pop     ecx
0072E742   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[]√ç@'
|
0072E745   6860E77200             push    $0072E760
0072E74A   A168B67D00             mov     eax, dword ptr [$007DB668]
0072E74F   8B00                   mov     eax, [eax]
0072E751   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0072E753   E8D455D8FF             call    004B3D2C
0072E758   C3                     ret


* Reference to: System.@HandleFinally;
|
0072E759   E9DA65CDFF             jmp     00404D38
0072E75E   EBEA                   jmp     0072E74A

****** END
|
0072E760   5F                     pop     edi
0072E761   5E                     pop     esi
0072E762   5B                     pop     ebx
0072E763   5D                     pop     ebp
0072E764   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E759(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0072E759   E9DA65CDFF             jmp     00404D38

|
0072E75E   EBEA                   jmp     0072E74A
0072E760   5F                     pop     edi
0072E761   5E                     pop     esi
0072E762   5B                     pop     ebx
0072E763   5D                     pop     ebp
0072E764   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E768(Sender : TObject);
begin
(*
0072E768   55                     push    ebp
0072E769   8BEC                   mov     ebp, esp
0072E76B   53                     push    ebx
0072E76C   56                     push    esi
0072E76D   57                     push    edi
0072E76E   33D2                   xor     edx, edx
0072E770   55                     push    ebp
0072E771   68C3E77200             push    $0072E7C3

***** TRY
|
0072E776   64FF32                 push    dword ptr fs:[edx]
0072E779   648922                 mov     fs:[edx], esp
0072E77C   8B0D54AE7D00           mov     ecx, [$007DAE54]
0072E782   8B09                   mov     ecx, [ecx]
0072E784   B201                   mov     dl, $01

* Reference to class TFrmPreview
|
0072E786   A1A0C97200             mov     eax, dword ptr [$0072C9A0]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
0072E78B   E880F7D7FF             call    004ADF10

* Reference to GlobalVar_007DF338
|
0072E790   A338F37D00             mov     dword ptr [$007DF338], eax
0072E795   A138F37D00             mov     eax, dword ptr [$007DF338]

|
0072E79A   E8C1E8FFFF             call    0072D060
0072E79F   A138F37D00             mov     eax, dword ptr [$007DF338]

* Reference to control lbTitulo : N.A.
|
0072E7A4   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to : TGmPreview._PROC_0071C20C()
|
0072E7AA   E85DDAFEFF             call    0071C20C
0072E7AF   A138F37D00             mov     eax, dword ptr [$007DF338]

* Reference to: System.TObject.Free(TObject);
|
0072E7B4   E8E35DCDFF             call    0040459C
0072E7B9   33C0                   xor     eax, eax
0072E7BB   5A                     pop     edx
0072E7BC   59                     pop     ecx
0072E7BD   59                     pop     ecx
0072E7BE   648910                 mov     fs:[eax], edx
0072E7C1   EB1E                   jmp     0072E7E1

* Reference to: System.@HandleOnException;
|
0072E7C3   E9E863CDFF             jmp     00404BB0
0072E7C8   0100                   add     [eax], eax
0072E7CA   0000                   add     [eax], al

0072E7CC   40                     inc     eax
0072E7CD   95                     xchg    eax, ebp
0072E7CE   40                     inc     eax
0072E7CF   00D4                   add     ah, dl
0072E7D1   E772                   out     $72, eax
0072E7D3   008B4004E848           add     [ebx+$48E80440], cl
0072E7D9   54                     push    esp
0072E7DA   D1FF                   sar     edi, 1

* Reference to: System.@DoneExcept;
|
0072E7DC   E8CF66CDFF             call    00404EB0

****** END
|
0072E7E1   5F                     pop     edi
0072E7E2   5E                     pop     esi
0072E7E3   5B                     pop     ebx
0072E7E4   5D                     pop     ebp
0072E7E5   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E7E8(Sender : TObject);
begin
(*
0072E7E8   55                     push    ebp
0072E7E9   8BEC                   mov     ebp, esp
0072E7EB   8B0D54AE7D00           mov     ecx, [$007DAE54]
0072E7F1   8B09                   mov     ecx, [ecx]
0072E7F3   B201                   mov     dl, $01

* Reference to class TFrmPreview
|
0072E7F5   A1A0C97200             mov     eax, dword ptr [$0072C9A0]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
0072E7FA   E811F7D7FF             call    004ADF10

* Reference to GlobalVar_007DF338
|
0072E7FF   A338F37D00             mov     dword ptr [$007DF338], eax
0072E804   A138F37D00             mov     eax, dword ptr [$007DF338]

* Reference to : TFrmPreview._PROC_0072FBEC()
|
0072E809   E8DE130000             call    0072FBEC
0072E80E   A138F37D00             mov     eax, dword ptr [$007DF338]

* Reference to: System.TObject.Free(TObject);
|
0072E813   E8845DCDFF             call    0040459C
0072E818   5D                     pop     ebp
0072E819   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E81C(Sender : TObject);
begin
(*
0072E81C   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072E820(Sender : TObject);
begin
(*
0072E820   55                     push    ebp
0072E821   8BEC                   mov     ebp, esp
0072E823   B905000000             mov     ecx, $00000005
0072E828   6A00                   push    $00
0072E82A   6A00                   push    $00
0072E82C   49                     dec     ecx
0072E82D   75F9                   jnz     0072E828
0072E82F   51                     push    ecx
0072E830   53                     push    ebx
0072E831   56                     push    esi
0072E832   57                     push    edi
0072E833   8BD8                   mov     ebx, eax
0072E835   33C0                   xor     eax, eax
0072E837   55                     push    ebp

* Possible String Reference to: 'ÈàaÕˇÎÎ_^[ãÂ]√'
|
0072E838   68ABEB7200             push    $0072EBAB

***** TRY
|
0072E83D   64FF30                 push    dword ptr fs:[eax]
0072E840   648920                 mov     fs:[eax], esp
0072E843   A160B17D00             mov     eax, dword ptr [$007DB160]
0072E848   33D2                   xor     edx, edx
0072E84A   8910                   mov     [eax], edx
0072E84C   A18CA77D00             mov     eax, dword ptr [$007DA78C]

* Reference to: System.@LStrClr(void;void);
|
0072E851   E8466CCDFF             call    0040549C
0072E856   8B15C8A07D00           mov     edx, [$007DA0C8]
0072E85C   8B12                   mov     edx, [edx]
0072E85E   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'ws.ini'
|
0072E861   B9C4EB7200             mov     ecx, $0072EBC4

* Reference to: System.@LStrCat3;
|
0072E866   E83D6FCDFF             call    004057A8
0072E86B   8B4DF8                 mov     ecx, [ebp-$08]
0072E86E   B201                   mov     dl, $01

* Reference to class TIniFile
|
0072E870   A1540F4500             mov     eax, dword ptr [$00450F54]

* Reference to: IniFiles.TCustomIniFile.Create(TCustomIniFile;boolean;AnsiString);
|
0072E875   E88A27D2FF             call    00451004
0072E87A   8945FC                 mov     [ebp-$04], eax
0072E87D   68D4EB7200             push    $0072EBD4
0072E882   8D45F4                 lea     eax, [ebp-$0C]
0072E885   50                     push    eax

* Possible String Reference to: 'Impressora'
|
0072E886   B9E0EB7200             mov     ecx, $0072EBE0

* Possible String Reference to: 'Relatorios'
|
0072E88B   BAF4EB7200             mov     edx, $0072EBF4
0072E890   8B45FC                 mov     eax, [ebp-$04]
0072E893   8B30                   mov     esi, [eax]
0072E895   FF16                   call    dword ptr [esi]
0072E897   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0072E89A   E831C6CDFF             call    0040AED0
0072E89F   8B152CAA7D00           mov     edx, [$007DAA2C]
0072E8A5   8902                   mov     [edx], eax
0072E8A7   6A01                   push    $01

* Possible String Reference to: 'ApagaPrinterSetupDialog.cfg'
|
0072E8A9   B908EC7200             mov     ecx, $0072EC08

* Possible String Reference to: 'Relatorios'
|
0072E8AE   BAF4EB7200             mov     edx, $0072EBF4
0072E8B3   8B45FC                 mov     eax, [ebp-$04]
0072E8B6   8B30                   mov     esi, [eax]

* Reference to method TIniFile.ReadBool(string,string,Boolean)
|
0072E8B8   FF5610                 call    dword ptr [esi+$10]
0072E8BB   84C0                   test    al, al
0072E8BD   746C                   jz      0072E92B
0072E8BF   8D55EC                 lea     edx, [ebp-$14]
0072E8C2   33C0                   xor     eax, eax

* Reference to: System.ParamStr(Integer):String;
|
0072E8C4   E82344CDFF             call    00402CEC
0072E8C9   8B45EC                 mov     eax, [ebp-$14]
0072E8CC   8D55F0                 lea     edx, [ebp-$10]

* Reference to: SysUtils.ExtractFilePath(AnsiString):AnsiString;
|
0072E8CF   E868CFCDFF             call    0040B83C
0072E8D4   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'PrinterSetup.Cfg'
|
0072E8D7   BA2CEC7200             mov     edx, $0072EC2C

* Reference to: System.@LStrCat;
|
0072E8DC   E8836ECDFF             call    00405764
0072E8E1   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.FileExists(AnsiString):Boolean;
|
0072E8E4   E8E7CACDFF             call    0040B3D0
0072E8E9   84C0                   test    al, al
0072E8EB   743E                   jz      0072E92B
0072E8ED   8D55E4                 lea     edx, [ebp-$1C]
0072E8F0   33C0                   xor     eax, eax

* Reference to: System.ParamStr(Integer):String;
|
0072E8F2   E8F543CDFF             call    00402CEC
0072E8F7   8B45E4                 mov     eax, [ebp-$1C]
0072E8FA   8D55E8                 lea     edx, [ebp-$18]

* Reference to: SysUtils.ExtractFilePath(AnsiString):AnsiString;
|
0072E8FD   E83ACFCDFF             call    0040B83C
0072E902   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'PrinterSetup.Cfg'
|
0072E905   BA2CEC7200             mov     edx, $0072EC2C

* Reference to: System.@LStrCat;
|
0072E90A   E8556ECDFF             call    00405764
0072E90F   8B45E8                 mov     eax, [ebp-$18]

* Reference to: Grids.TInplaceEdit.Visible(TInplaceEdit):Boolean;
|
0072E912   E8ADCDCDFF             call    0040B6C4
0072E917   6A00                   push    $00

* Possible String Reference to: 'ApagaPrinterSetupDialog.cfg'
|
0072E919   B908EC7200             mov     ecx, $0072EC08

* Possible String Reference to: 'Relatorios'
|
0072E91E   BAF4EB7200             mov     edx, $0072EBF4
0072E923   8B45FC                 mov     eax, [ebp-$04]
0072E926   8B30                   mov     esi, [eax]

* Reference to method TIniFile.WriteBool(string,string,Boolean)
|
0072E928   FF5614                 call    dword ptr [esi+$14]
0072E92B   33C0                   xor     eax, eax
0072E92D   55                     push    ebp
0072E92E   6889EB7200             push    $0072EB89

***** TRY
|
0072E933   64FF30                 push    dword ptr fs:[eax]
0072E936   648920                 mov     fs:[eax], esp
0072E939   33C0                   xor     eax, eax
0072E93B   55                     push    ebp
0072E93C   6816EB7200             push    $0072EB16

***** TRY
|
0072E941   64FF30                 push    dword ptr fs:[eax]
0072E944   648920                 mov     fs:[eax], esp
0072E947   8D55DC                 lea     edx, [ebp-$24]
0072E94A   8BC3                   mov     eax, ebx

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0072E94C   E813C4CDFF             call    0040AD64
0072E951   8B4DDC                 mov     ecx, [ebp-$24]
0072E954   8D45E0                 lea     eax, [ebp-$20]

* Possible String Reference to: 'CODIGO = '
|
0072E957   BA48EC7200             mov     edx, $0072EC48

* Reference to: System.@LStrCat3;
|
0072E95C   E8476ECDFF             call    004057A8
0072E961   8B45E0                 mov     eax, [ebp-$20]
0072E964   50                     push    eax
0072E965   6A00                   push    $00
0072E967   6A01                   push    $01
0072E969   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0072E96E   8B00                   mov     eax, [eax]
0072E970   8B4074                 mov     eax, [eax+$74]
0072E973   B95CEC7200             mov     ecx, $0072EC5C

* Possible String Reference to: 'RELATOR'
|
0072E978   BA68EC7200             mov     edx, $0072EC68

|
0072E97D   E8E6900700             call    007A7A68
0072E982   84C0                   test    al, al
0072E984   0F8482010000           jz      0072EB0C
0072E98A   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0072E98F   8B00                   mov     eax, [eax]
0072E991   8B80C8000000           mov     eax, [eax+$00C8]

|
0072E997   E86C7B0700             call    007A6508
0072E99C   6A00                   push    $00
0072E99E   6A00                   push    $00
0072E9A0   6A01                   push    $01
0072E9A2   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0072E9A7   8B00                   mov     eax, [eax]
0072E9A9   8B4058                 mov     eax, [eax+$58]
0072E9AC   B95CEC7200             mov     ecx, $0072EC5C

* Possible String Reference to: 'FUNCOES'
|
0072E9B1   BA78EC7200             mov     edx, $0072EC78

|
0072E9B6   E8AD900700             call    007A7A68
0072E9BB   A160B17D00             mov     eax, dword ptr [$007DB160]
0072E9C0   8918                   mov     [eax], ebx

|
0072E9C2   E82D2F0000             call    007318F4
0072E9C7   8BC3                   mov     eax, ebx

|
0072E9C9   E8DE020000             call    0072ECAC
0072E9CE   84C0                   test    al, al
0072E9D0   0F8436010000           jz      0072EB0C
0072E9D6   8D55D8                 lea     edx, [ebp-$28]
0072E9D9   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0072E9DE   8B00                   mov     eax, [eax]
0072E9E0   8B8090000000           mov     eax, [eax+$0090]
0072E9E6   8B08                   mov     ecx, [eax]
0072E9E8   FF5160                 call    dword ptr [ecx+$60]
0072E9EB   837DD800               cmp     dword ptr [ebp-$28], +$00
0072E9EF   741C                   jz      0072EA0D
0072E9F1   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0072E9F6   8B00                   mov     eax, [eax]
0072E9F8   8B8090000000           mov     eax, [eax+$0090]
0072E9FE   8B10                   mov     edx, [eax]
0072EA00   FF5258                 call    dword ptr [edx+$58]
0072EA03   8B15DC9D7D00           mov     edx, [$007D9DDC]
0072EA09   8902                   mov     [edx], eax
0072EA0B   EB0B                   jmp     0072EA18
0072EA0D   A1DC9D7D00             mov     eax, dword ptr [$007D9DDC]
0072EA12   C700FFFFFFFF           mov     dword ptr [eax], $FFFFFFFF
0072EA18   A1DC9D7D00             mov     eax, dword ptr [$007D9DDC]
0072EA1D   833806                 cmp     dword ptr [eax], +$06
0072EA20   7E0B                   jle     0072EA2D
0072EA22   A1DC9D7D00             mov     eax, dword ptr [$007D9DDC]
0072EA27   C700FFFFFFFF           mov     dword ptr [eax], $FFFFFFFF
0072EA2D   A1DC9D7D00             mov     eax, dword ptr [$007D9DDC]
0072EA32   833800                 cmp     dword ptr [eax], +$00
0072EA35   0F8D87000000           jnl     0072EAC2
0072EA3B   8B0D54AE7D00           mov     ecx, [$007DAE54]
0072EA41   8B09                   mov     ecx, [ecx]
0072EA43   B201                   mov     dl, $01

* Reference to class TFrmSaidaRelatorio
|
0072EA45   A1A8D27100             mov     eax, dword ptr [$0071D2A8]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
0072EA4A   E8C1F4D7FF             call    004ADF10
0072EA4F   8B1564AB7D00           mov     edx, [$007DAB64]
0072EA55   8902                   mov     [edx], eax
0072EA57   A164AB7D00             mov     eax, dword ptr [$007DAB64]
0072EA5C   8B00                   mov     eax, [eax]
0072EA5E   8B10                   mov     edx, [eax]
0072EA60   FF92EC000000           call    dword ptr [edx+$00EC]
0072EA66   48                     dec     eax
0072EA67   754B                   jnz     0072EAB4
0072EA69   A164AB7D00             mov     eax, dword ptr [$007DAB64]
0072EA6E   8B00                   mov     eax, [eax]

* Reference to control lbTitulo : N.A.
|
0072EA70   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to field N.A..OFFS_0218
|
0072EA76   8B8018020000           mov     eax, [eax+$0218]
0072EA7C   8B15C0A27D00           mov     edx, [$007DA2C0]
0072EA82   8902                   mov     [edx], eax
0072EA84   A178B47D00             mov     eax, dword ptr [$007DB478]
0072EA89   8B00                   mov     eax, [eax]
0072EA8B   8B4070                 mov     eax, [eax+$70]

* Reference to : TJvProgressForm._PROC_005B8EC4()
|
0072EA8E   E831A4E8FF             call    005B8EC4
0072EA93   A154AE7D00             mov     eax, dword ptr [$007DAE54]
0072EA98   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
0072EA9A   E8C172D8FF             call    004B5D60
0072EA9F   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072EAA4   8B00                   mov     eax, [eax]

* Reference to: System.@LStrLen(String):Integer;
|
0072EAA6   E8497FCDFF             call    004069F4
0072EAAB   85C0                   test    eax, eax
0072EAAD   7E05                   jle     0072EAB4

|
0072EAAF   E8A4FAFFFF             call    0072E558
0072EAB4   A164AB7D00             mov     eax, dword ptr [$007DAB64]
0072EAB9   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
0072EABB   E8DC5ACDFF             call    0040459C
0072EAC0   EB4A                   jmp     0072EB0C
0072EAC2   A1DC9D7D00             mov     eax, dword ptr [$007D9DDC]
0072EAC7   8B00                   mov     eax, [eax]
0072EAC9   8B15C0A27D00           mov     edx, [$007DA2C0]
0072EACF   8902                   mov     [edx], eax
0072EAD1   A1DC9D7D00             mov     eax, dword ptr [$007D9DDC]
0072EAD6   C700FFFFFFFF           mov     dword ptr [eax], $FFFFFFFF
0072EADC   A178B47D00             mov     eax, dword ptr [$007DB478]
0072EAE1   8B00                   mov     eax, [eax]
0072EAE3   8B4070                 mov     eax, [eax+$70]

* Reference to : TJvProgressForm._PROC_005B8EC4()
|
0072EAE6   E8D9A3E8FF             call    005B8EC4
0072EAEB   A154AE7D00             mov     eax, dword ptr [$007DAE54]
0072EAF0   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
0072EAF2   E86972D8FF             call    004B5D60
0072EAF7   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0072EAFC   8B00                   mov     eax, [eax]

* Reference to: System.@LStrLen(String):Integer;
|
0072EAFE   E8F17ECDFF             call    004069F4
0072EB03   85C0                   test    eax, eax
0072EB05   7E05                   jle     0072EB0C

|
0072EB07   E84CFAFFFF             call    0072E558
0072EB0C   33C0                   xor     eax, eax
0072EB0E   5A                     pop     edx
0072EB0F   59                     pop     ecx
0072EB10   59                     pop     ecx
0072EB11   648910                 mov     fs:[eax], edx
0072EB14   EB3B                   jmp     0072EB51

* Reference to: System.@HandleOnException;
|
0072EB16   E99560CDFF             jmp     00404BB0
0072EB1B   0100                   add     [eax], eax
0072EB1D   0000                   add     [eax], al
0072EB1F   40                     inc     eax
0072EB20   95                     xchg    eax, ebp
0072EB21   40                     inc     eax
0072EB22   0027                   add     [edi], ah
0072EB24   EB72                   jmp     0072EB98
0072EB26   0089C36A008B           add     [ecx+$8B006AC3], cl
0072EB2C   4B                     dec     ebx
0072EB2D   048D                   add     al, -$73
0072EB2F   45                     inc     ebp
0072EB30   D4                     aam

* Possible String Reference to: 'Erro ao executar o relatÛrio!'
|
0072EB31   BA88EC7200             mov     edx, $0072EC88

* Reference to: System.@LStrCat3;
|
0072EB36   E86D6CCDFF             call    004057A8
0072EB3B   8B45D4                 mov     eax, [ebp-$2C]
0072EB3E   668B0DA8EC7200         mov     cx, word ptr [$0072ECA8]
0072EB45   B201                   mov     dl, $01

|
0072EB47   E8E04FD1FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0072EB4C   E85F63CDFF             call    00404EB0

****** END
|
0072EB51   33C0                   xor     eax, eax
0072EB53   5A                     pop     edx
0072EB54   59                     pop     ecx
0072EB55   59                     pop     ecx
0072EB56   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072EB59   6890EB7200             push    $0072EB90
0072EB5E   A1E4AE7D00             mov     eax, dword ptr [$007DAEE4]
0072EB63   C60000                 mov     byte ptr [eax], $00
0072EB66   A1E89F7D00             mov     eax, dword ptr [$007D9FE8]
0072EB6B   C70001000000           mov     dword ptr [eax], $00000001
0072EB71   A18CA77D00             mov     eax, dword ptr [$007DA78C]

* Reference to: System.@LStrClr(void;void);
|
0072EB76   E82169CDFF             call    0040549C

|
0072EB7B   E808330000             call    00731E88
0072EB80   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.TObject.Free(TObject);
|
0072EB83   E8145ACDFF             call    0040459C
0072EB88   C3                     ret


* Reference to: System.@HandleFinally;
|
0072EB89   E9AA61CDFF             jmp     00404D38
0072EB8E   EBCE                   jmp     0072EB5E

****** END
|
0072EB90   33C0                   xor     eax, eax
0072EB92   5A                     pop     edx
0072EB93   59                     pop     ecx
0072EB94   59                     pop     ecx
0072EB95   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0072EB98   68B2EB7200             push    $0072EBB2
0072EB9D   8D45D4                 lea     eax, [ebp-$2C]
0072EBA0   BA0A000000             mov     edx, $0000000A

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072EBA5   E81669CDFF             call    004054C0
0072EBAA   C3                     ret


* Reference to: System.@HandleFinally;
|
0072EBAB   E98861CDFF             jmp     00404D38
0072EBB0   EBEB                   jmp     0072EB9D

****** END
|
0072EBB2   5F                     pop     edi
0072EBB3   5E                     pop     esi
0072EBB4   5B                     pop     ebx
0072EBB5   8BE5                   mov     esp, ebp
0072EBB7   5D                     pop     ebp
0072EBB8   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072EBAB(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0072EBAB   E98861CDFF             jmp     00404D38

|
0072EBB0   EBEB                   jmp     0072EB9D
0072EBB2   5F                     pop     edi
0072EBB3   5E                     pop     esi
0072EBB4   5B                     pop     ebx
0072EBB5   8BE5                   mov     esp, ebp
0072EBB7   5D                     pop     ebp
0072EBB8   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072EC7A(Sender : TObject);
begin
(*
0072EC7A   4E                     dec     esi
0072EC7B   43                     inc     ebx
0072EC7C   4F                     dec     edi
0072EC7D   45                     inc     ebp
0072EC7E   53                     push    ebx
0072EC7F   00FF                   add     bh, bh
0072EC81   FFFF                   DB  $FF, $FF  //      
0072EC83   FF1F                   call    [edi]
0072EC85   0000                   add     [eax], al

*)
end;

procedure TFrmPreview._PROC_0072ECAD(Sender : TObject);
begin
(*
0072ECAD   8BEC                   mov     ebp, esp
0072ECAF   B904000000             mov     ecx, $00000004
0072ECB4   6A00                   push    $00
0072ECB6   6A00                   push    $00
0072ECB8   49                     dec     ecx
0072ECB9   75F9                   jnz     0072ECB4
0072ECBB   51                     push    ecx
0072ECBC   53                     push    ebx
0072ECBD   56                     push    esi
0072ECBE   57                     push    edi
0072ECBF   8BD8                   mov     ebx, eax
0072ECC1   33C0                   xor     eax, eax
0072ECC3   55                     push    ebp
0072ECC4   6883EE7200             push    $0072EE83

***** TRY
|
0072ECC9   64FF30                 push    dword ptr fs:[eax]
0072ECCC   648920                 mov     fs:[eax], esp
0072ECCF   C645FF00               mov     byte ptr [ebp-$01], $00
0072ECD3   8B15C8A07D00           mov     edx, [$007DA0C8]
0072ECD9   8B12                   mov     edx, [edx]
0072ECDB   8D45DC                 lea     eax, [ebp-$24]

* Possible String Reference to: 'ws.ini'
|
0072ECDE   B99CEE7200             mov     ecx, $0072EE9C

* Reference to: System.@LStrCat3;
|
0072ECE3   E8C06ACDFF             call    004057A8
0072ECE8   8B4DDC                 mov     ecx, [ebp-$24]
0072ECEB   B201                   mov     dl, $01

* Reference to class TIniFile
|
0072ECED   A1540F4500             mov     eax, dword ptr [$00450F54]

* Reference to: IniFiles.TCustomIniFile.Create(TCustomIniFile;boolean;AnsiString);
|
0072ECF2   E80D23D2FF             call    00451004
0072ECF7   8945E0                 mov     [ebp-$20], eax
0072ECFA   33C0                   xor     eax, eax
0072ECFC   55                     push    ebp
0072ECFD   6859EE7200             push    $0072EE59

***** TRY
|
0072ED02   64FF30                 push    dword ptr fs:[eax]
0072ED05   648920                 mov     fs:[eax], esp
0072ED08   33C0                   xor     eax, eax
0072ED0A   55                     push    ebp
0072ED0B   6839EE7200             push    $0072EE39

***** TRY
|
0072ED10   64FF30                 push    dword ptr fs:[eax]
0072ED13   648920                 mov     fs:[eax], esp
0072ED16   68ACEE7200             push    $0072EEAC
0072ED1B   8D45F8                 lea     eax, [ebp-$08]
0072ED1E   50                     push    eax

* Possible String Reference to: 'PedidoVenda'
|
0072ED1F   B9B8EE7200             mov     ecx, $0072EEB8

* Possible String Reference to: 'Relatorios'
|
0072ED24   BACCEE7200             mov     edx, $0072EECC
0072ED29   8B45E0                 mov     eax, [ebp-$20]
0072ED2C   8B30                   mov     esi, [eax]
0072ED2E   FF16                   call    dword ptr [esi]
0072ED30   68ACEE7200             push    $0072EEAC
0072ED35   8D45F4                 lea     eax, [ebp-$0C]
0072ED38   50                     push    eax

* Possible String Reference to: 'OrcamentoVenda'
|
0072ED39   B9E0EE7200             mov     ecx, $0072EEE0

* Possible String Reference to: 'Relatorios'
|
0072ED3E   BACCEE7200             mov     edx, $0072EECC
0072ED43   8B45E0                 mov     eax, [ebp-$20]
0072ED46   8B30                   mov     esi, [eax]
0072ED48   FF16                   call    dword ptr [esi]
0072ED4A   68ACEE7200             push    $0072EEAC
0072ED4F   8D45F0                 lea     eax, [ebp-$10]
0072ED52   50                     push    eax

* Possible String Reference to: 'RequisicaoVenda'
|
0072ED53   B9F8EE7200             mov     ecx, $0072EEF8

* Possible String Reference to: 'Relatorios'
|
0072ED58   BACCEE7200             mov     edx, $0072EECC
0072ED5D   8B45E0                 mov     eax, [ebp-$20]
0072ED60   8B30                   mov     esi, [eax]
0072ED62   FF16                   call    dword ptr [esi]
0072ED64   68ACEE7200             push    $0072EEAC
0072ED69   8D45EC                 lea     eax, [ebp-$14]
0072ED6C   50                     push    eax

* Possible String Reference to: 'NotaFiscalVenda'
|
0072ED6D   B910EF7200             mov     ecx, $0072EF10

* Possible String Reference to: 'Relatorios'
|
0072ED72   BACCEE7200             mov     edx, $0072EECC
0072ED77   8B45E0                 mov     eax, [ebp-$20]
0072ED7A   8B30                   mov     esi, [eax]
0072ED7C   FF16                   call    dword ptr [esi]
0072ED7E   68ACEE7200             push    $0072EEAC
0072ED83   8D45E8                 lea     eax, [ebp-$18]
0072ED86   50                     push    eax

* Possible String Reference to: 'PreNotaVenda'
|
0072ED87   B928EF7200             mov     ecx, $0072EF28

* Possible String Reference to: 'Relatorios'
|
0072ED8C   BACCEE7200             mov     edx, $0072EECC
0072ED91   8B45E0                 mov     eax, [ebp-$20]
0072ED94   8B30                   mov     esi, [eax]
0072ED96   FF16                   call    dword ptr [esi]
0072ED98   68ACEE7200             push    $0072EEAC
0072ED9D   8D45E4                 lea     eax, [ebp-$1C]
0072EDA0   50                     push    eax

* Possible String Reference to: 'CupomVenda'
|
0072EDA1   B940EF7200             mov     ecx, $0072EF40

* Possible String Reference to: 'Relatorios'
|
0072EDA6   BACCEE7200             mov     edx, $0072EECC
0072EDAB   8B45E0                 mov     eax, [ebp-$20]
0072EDAE   8B30                   mov     esi, [eax]
0072EDB0   FF16                   call    dword ptr [esi]
0072EDB2   8B45F8                 mov     eax, [ebp-$08]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0072EDB5   E816C1CDFF             call    0040AED0
0072EDBA   3BD8                   cmp     ebx, eax
0072EDBC   7506                   jnz     0072EDC4
0072EDBE   C645FF01               mov     byte ptr [ebp-$01], $01
0072EDC2   EB6B                   jmp     0072EE2F
0072EDC4   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0072EDC7   E804C1CDFF             call    0040AED0
0072EDCC   3BD8                   cmp     ebx, eax
0072EDCE   7506                   jnz     0072EDD6
0072EDD0   C645FF01               mov     byte ptr [ebp-$01], $01
0072EDD4   EB59                   jmp     0072EE2F
0072EDD6   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0072EDD9   E8F2C0CDFF             call    0040AED0
0072EDDE   3BD8                   cmp     ebx, eax
0072EDE0   744D                   jz      0072EE2F
0072EDE2   8B45EC                 mov     eax, [ebp-$14]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0072EDE5   E8E6C0CDFF             call    0040AED0
0072EDEA   3BD8                   cmp     ebx, eax
0072EDEC   7506                   jnz     0072EDF4
0072EDEE   C645FF01               mov     byte ptr [ebp-$01], $01
0072EDF2   EB3B                   jmp     0072EE2F
0072EDF4   8B45E8                 mov     eax, [ebp-$18]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0072EDF7   E8D4C0CDFF             call    0040AED0
0072EDFC   3BD8                   cmp     ebx, eax
0072EDFE   7506                   jnz     0072EE06
0072EE00   C645FF01               mov     byte ptr [ebp-$01], $01
0072EE04   EB29                   jmp     0072EE2F
0072EE06   8B45E4                 mov     eax, [ebp-$1C]

|
0072EE09   E82A2F0700             call    007A1D38

* Reference to: System.@TRUNC;
|
0072EE0E   E85140CDFF             call    00402E64
0072EE13   52                     push    edx
0072EE14   50                     push    eax
0072EE15   8BC3                   mov     eax, ebx
0072EE17   99                     cdq
0072EE18   3B542404               cmp     edx, [esp+$04]
0072EE1C   7503                   jnz     0072EE21
0072EE1E   3B0424                 cmp     eax, [esp]
0072EE21   5A                     pop     edx
0072EE22   58                     pop     eax
0072EE23   7506                   jnz     0072EE2B
0072EE25   C645FF01               mov     byte ptr [ebp-$01], $01
0072EE29   EB04                   jmp     0072EE2F
0072EE2B   C645FF01               mov     byte ptr [ebp-$01], $01
0072EE2F   33C0                   xor     eax, eax
0072EE31   5A                     pop     edx
0072EE32   59                     pop     ecx
0072EE33   59                     pop     ecx
0072EE34   648910                 mov     fs:[eax], edx
0072EE37   EB0A                   jmp     0072EE43

* Reference to: System.@HandleAnyException;
|
0072EE39   E9465CCDFF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
0072EE3E   E86D60CDFF             call    00404EB0

****** END
|
0072EE43   33C0                   xor     eax, eax
0072EE45   5A                     pop     edx
0072EE46   59                     pop     ecx
0072EE47   59                     pop     ecx
0072EE48   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072EE4B   6860EE7200             push    $0072EE60
0072EE50   8B45E0                 mov     eax, [ebp-$20]

* Reference to: System.TObject.Free(TObject);
|
0072EE53   E84457CDFF             call    0040459C
0072EE58   C3                     ret


* Reference to: System.@HandleFinally;
|
0072EE59   E9DA5ECDFF             jmp     00404D38
0072EE5E   EBF0                   jmp     0072EE50

****** END
|
0072EE60   33C0                   xor     eax, eax
0072EE62   5A                     pop     edx
0072EE63   59                     pop     ecx
0072EE64   59                     pop     ecx
0072EE65   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072EE68   688AEE7200             push    $0072EE8A
0072EE6D   8D45DC                 lea     eax, [ebp-$24]

* Reference to: System.@LStrClr(void;void);
|
0072EE70   E82766CDFF             call    0040549C
0072EE75   8D45E4                 lea     eax, [ebp-$1C]
0072EE78   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072EE7D   E83E66CDFF             call    004054C0
0072EE82   C3                     ret


* Reference to: System.@HandleFinally;
|
0072EE83   E9B05ECDFF             jmp     00404D38
0072EE88   EBE3                   jmp     0072EE6D

****** END
|
0072EE8A   8A45FF                 mov     al, byte ptr [ebp-$01]
0072EE8D   5F                     pop     edi
0072EE8E   5E                     pop     esi
0072EE8F   5B                     pop     ebx
0072EE90   8BE5                   mov     esp, ebp
0072EE92   5D                     pop     ebp
0072EE93   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072EF4D(Sender : TObject);
begin
(*
0072EF4D   8BEC                   mov     ebp, esp
0072EF4F   83C4EC                 add     esp, -$14
0072EF52   53                     push    ebx
0072EF53   56                     push    esi
0072EF54   57                     push    edi
0072EF55   33DB                   xor     ebx, ebx
0072EF57   895DEC                 mov     [ebp-$14], ebx
0072EF5A   895DF4                 mov     [ebp-$0C], ebx
0072EF5D   894DF8                 mov     [ebp-$08], ecx
0072EF60   8955FC                 mov     [ebp-$04], edx
0072EF63   8BF8                   mov     edi, eax
0072EF65   33C0                   xor     eax, eax
0072EF67   55                     push    ebp
0072EF68   68DCF07200             push    $0072F0DC

***** TRY
|
0072EF6D   64FF30                 push    dword ptr fs:[eax]
0072EF70   648920                 mov     fs:[eax], esp
0072EF73   8B45FC                 mov     eax, [ebp-$04]
0072EF76   83781000               cmp     dword ptr [eax+$10], +$00
0072EF7A   0F8E3E010000           jle     0072F0BE
0072EF80   837DF800               cmp     dword ptr [ebp-$08], +$00
0072EF84   0F8434010000           jz      0072F0BE
0072EF8A   33C0                   xor     eax, eax
0072EF8C   8945F0                 mov     [ebp-$10], eax
0072EF8F   80BF8403000000         cmp     byte ptr [edi+$0384], $00
0072EF96   750D                   jnz     0072EFA5
0072EF98   8B45F8                 mov     eax, [ebp-$08]

* Reference to: DB.TDataSet.First(TDataSet);
|
0072EF9B   E88CC0DBFF             call    004EB02C
0072EFA0   E9AE000000             jmp     0072F053
0072EFA5   C6878403000000         mov     byte ptr [edi+$0384], $00
0072EFAC   C6878503000001         mov     byte ptr [edi+$0385], $01
0072EFB3   8B9788030000           mov     edx, [edi+$0388]
0072EFB9   8B45F8                 mov     eax, [ebp-$08]

* Reference to: DB.TDataSet.GotoBookmark(TDataSet;Pointer);
|
0072EFBC   E86BCEDBFF             call    004EBE2C
0072EFC1   E98D000000             jmp     0072F053
0072EFC6   8B45FC                 mov     eax, [ebp-$04]
0072EFC9   8B5810                 mov     ebx, [eax+$10]
0072EFCC   4B                     dec     ebx
0072EFCD   85DB                   test    ebx, ebx
0072EFCF   7C38                   jl      0072F009
0072EFD1   43                     inc     ebx
0072EFD2   33F6                   xor     esi, esi
0072EFD4   8D4DEC                 lea     ecx, [ebp-$14]
0072EFD7   8BD6                   mov     edx, esi
0072EFD9   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0072EFDC   E8C3A8E6FF             call    005998A4
0072EFE1   8B45EC                 mov     eax, [ebp-$14]
0072EFE4   8D55F4                 lea     edx, [ebp-$0C]

|
0072EFE7   E854EFFFFF             call    0072DF40
0072EFEC   8B4510                 mov     eax, [ebp+$10]
0072EFEF   50                     push    eax
0072EFF0   8B450C                 mov     eax, [ebp+$0C]
0072EFF3   50                     push    eax
0072EFF4   8B4508                 mov     eax, [ebp+$08]
0072EFF7   50                     push    eax
0072EFF8   8B4D14                 mov     ecx, [ebp+$14]
0072EFFB   8B55F4                 mov     edx, [ebp-$0C]
0072EFFE   8BC7                   mov     eax, edi

|
0072F000   E8E7E9FFFF             call    0072D9EC
0072F005   46                     inc     esi
0072F006   4B                     dec     ebx
0072F007   75CB                   jnz     0072EFD4
0072F009   8B45F8                 mov     eax, [ebp-$08]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0072F00C   E833C3DBFF             call    004EB344
0072F011   FF45F0                 inc     dword ptr [ebp-$10]
0072F014   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072F019   833800                 cmp     dword ptr [eax], +$00
0072F01C   7E35                   jle     0072F053
0072F01E   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072F023   8B00                   mov     eax, [eax]
0072F025   8B1570B17D00           mov     edx, [$007DB170]
0072F02B   2B02                   sub     eax, dword ptr [edx]
0072F02D   3B45F0                 cmp     eax, [ebp-$10]
0072F030   7D21                   jnl     0072F053
0072F032   C6878403000001         mov     byte ptr [edi+$0384], $01
0072F039   C6878503000000         mov     byte ptr [edi+$0385], $00
0072F040   8B45F8                 mov     eax, [ebp-$08]
0072F043   8B10                   mov     edx, [eax]
0072F045   FF921C020000           call    dword ptr [edx+$021C]
0072F04B   898788030000           mov     [edi+$0388], eax
0072F051   EB6B                   jmp     0072F0BE
0072F053   8B45F8                 mov     eax, [ebp-$08]
0072F056   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0072F05D   0F8463FFFFFF           jz      0072EFC6
0072F063   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072F068   833800                 cmp     dword ptr [eax], +$00
0072F06B   7E51                   jle     0072F0BE
0072F06D   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072F072   8B00                   mov     eax, [eax]
0072F074   8B1570B17D00           mov     edx, [$007DB170]
0072F07A   2B02                   sub     eax, dword ptr [edx]
0072F07C   3B45F0                 cmp     eax, [ebp-$10]
0072F07F   7E3D                   jle     0072F0BE
0072F081   EB27                   jmp     0072F0AA
0072F083   8B45FC                 mov     eax, [ebp-$04]
0072F086   8B5810                 mov     ebx, [eax+$10]
0072F089   4B                     dec     ebx
0072F08A   85DB                   test    ebx, ebx
0072F08C   7C19                   jl      0072F0A7
0072F08E   43                     inc     ebx
0072F08F   8B450C                 mov     eax, [ebp+$0C]
0072F092   50                     push    eax
0072F093   8B4508                 mov     eax, [ebp+$08]
0072F096   50                     push    eax
0072F097   8B4D10                 mov     ecx, [ebp+$10]
0072F09A   8B5514                 mov     edx, [ebp+$14]
0072F09D   8BC7                   mov     eax, edi

* Reference to : TFrmPreview._PROC_00731790()
|
0072F09F   E8EC260000             call    00731790
0072F0A4   4B                     dec     ebx
0072F0A5   75E8                   jnz     0072F08F
0072F0A7   FF45F0                 inc     dword ptr [ebp-$10]
0072F0AA   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072F0AF   8B00                   mov     eax, [eax]
0072F0B1   8B1570B17D00           mov     edx, [$007DB170]
0072F0B7   2B02                   sub     eax, dword ptr [edx]
0072F0B9   3B45F0                 cmp     eax, [ebp-$10]
0072F0BC   7FC5                   jnle    0072F083
0072F0BE   33C0                   xor     eax, eax
0072F0C0   5A                     pop     edx
0072F0C1   59                     pop     ecx
0072F0C2   59                     pop     ecx
0072F0C3   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072F0C6   68E3F07200             push    $0072F0E3
0072F0CB   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0072F0CE   E8C963CDFF             call    0040549C
0072F0D3   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0072F0D6   E8C163CDFF             call    0040549C
0072F0DB   C3                     ret


* Reference to: System.@HandleFinally;
|
0072F0DC   E9575CCDFF             jmp     00404D38
0072F0E1   EBE8                   jmp     0072F0CB

****** END
|
0072F0E3   5F                     pop     edi
0072F0E4   5E                     pop     esi
0072F0E5   5B                     pop     ebx
0072F0E6   8BE5                   mov     esp, ebp
0072F0E8   5D                     pop     ebp
0072F0E9   C21000                 ret     $0010

*)
end;

procedure TFrmPreview._PROC_0072F0EC(Sender : TObject);
begin
(*
0072F0EC   55                     push    ebp
0072F0ED   8BEC                   mov     ebp, esp
0072F0EF   53                     push    ebx
0072F0F0   56                     push    esi
0072F0F1   57                     push    edi
0072F0F2   8BF9                   mov     edi, ecx
0072F0F4   8BF2                   mov     esi, edx
0072F0F6   8BD8                   mov     ebx, eax
0072F0F8   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0072F0FB   E84C68CDFF             call    0040594C
0072F100   33C0                   xor     eax, eax
0072F102   55                     push    ebp
0072F103   68AEF17200             push    $0072F1AE

***** TRY
|
0072F108   64FF30                 push    dword ptr fs:[eax]
0072F10B   648920                 mov     fs:[eax], esp
0072F10E   8B4508                 mov     eax, [ebp+$08]

* Possible String Reference to: 'tela'
|
0072F111   BAC4F17200             mov     edx, $0072F1C4

* Reference to: System.@LStrCmp;
|
0072F116   E88D67CDFF             call    004058A8
0072F11B   753D                   jnz     0072F15A
0072F11D   DD06                   fld     qword ptr [esi]
0072F11F   DC5D0C                 fcomp   qword ptr [ebp+$0C]
0072F122   DFE0                   fstsw   ax
0072F124   9E                     sahf
0072F125   7271                   jb      0072F198

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072F127   8B83F8020000           mov     eax, [ebx+$02F8]
0072F12D   8B10                   mov     edx, [eax]

* Possible reference to virtual method TFrmPreview.OFFS_00D4
|
0072F12F   FF92D4000000           call    dword ptr [edx+$00D4]

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0072F135   8B83F8020000           mov     eax, [ebx+$02F8]

* Reference to : TGmPreview._PROC_0071C1A4()
|
0072F13B   E864D0FEFF             call    0071C1A4
0072F140   8BD7                   mov     edx, edi
0072F142   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0072CF3C()
|
0072F144   E8F3DDFFFF             call    0072CF3C
0072F149   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
0072F14E   8B10                   mov     edx, [eax]
0072F150   8916                   mov     [esi], edx
0072F152   8B5004                 mov     edx, [eax+$04]
0072F155   895604                 mov     [esi+$04], edx
0072F158   EB3E                   jmp     0072F198
0072F15A   8B4508                 mov     eax, [ebp+$08]

* Possible String Reference to: 'dos'
|
0072F15D   BAD4F17200             mov     edx, $0072F1D4

* Reference to: System.@LStrCmp;
|
0072F162   E84167CDFF             call    004058A8
0072F167   752F                   jnz     0072F198
0072F169   A1B4AC7D00             mov     eax, dword ptr [$007DACB4]
0072F16E   8B00                   mov     eax, [eax]
0072F170   BAE0F17200             mov     edx, $0072F1E0

* Reference to: System.@LStrCmp;
|
0072F175   E82E67CDFF             call    004058A8
0072F17A   751C                   jnz     0072F198
0072F17C   DD06                   fld     qword ptr [esi]
0072F17E   DC5D0C                 fcomp   qword ptr [ebp+$0C]
0072F181   DFE0                   fstsw   ax
0072F183   9E                     sahf
0072F184   7212                   jb      0072F198
0072F186   8BC3                   mov     eax, ebx

|
0072F188   E8C72F0000             call    00732154
0072F18D   8BCE                   mov     ecx, esi
0072F18F   8BD7                   mov     edx, edi
0072F191   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0072FB64()
|
0072F193   E8CC090000             call    0072FB64
0072F198   33C0                   xor     eax, eax
0072F19A   5A                     pop     edx
0072F19B   59                     pop     ecx
0072F19C   59                     pop     ecx
0072F19D   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072F1A0   68B5F17200             push    $0072F1B5
0072F1A5   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
0072F1A8   E8EF62CDFF             call    0040549C
0072F1AD   C3                     ret


* Reference to: System.@HandleFinally;
|
0072F1AE   E9855BCDFF             jmp     00404D38
0072F1B3   EBF0                   jmp     0072F1A5

****** END
|
0072F1B5   5F                     pop     edi
0072F1B6   5E                     pop     esi
0072F1B7   5B                     pop     ebx
0072F1B8   5D                     pop     ebp
0072F1B9   C20C00                 ret     $000C

*)
end;

procedure TFrmPreview._PROC_0072F1E5(Sender : TObject);
begin
(*
0072F1E5   8BEC                   mov     ebp, esp
0072F1E7   83C4CC                 add     esp, -$34
0072F1EA   53                     push    ebx
0072F1EB   56                     push    esi
0072F1EC   57                     push    edi
0072F1ED   33D2                   xor     edx, edx
0072F1EF   8955F4                 mov     [ebp-$0C], edx
0072F1F2   8BF0                   mov     esi, eax
0072F1F4   8B3D78AE7D00           mov     edi, [$007DAE78]
0072F1FA   33C0                   xor     eax, eax
0072F1FC   55                     push    ebp
0072F1FD   686EF77200             push    $0072F76E

***** TRY
|
0072F202   64FF30                 push    dword ptr fs:[eax]
0072F205   648920                 mov     fs:[eax], esp

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
0072F208   C6868403000000         mov     byte ptr [esi+$0384], $00

* Reference to field TFrmPreview.OFFS_0385 : Byte
|
0072F20F   C6868503000000         mov     byte ptr [esi+$0385], $00

* Reference to field TFrmPreview.OFFS_0386 : Byte
|
0072F216   C6868603000000         mov     byte ptr [esi+$0386], $00

|
0072F21D   E8D2260000             call    007318F4

* Reference to : TFrmPreview._PROC_0073130C()
|
0072F222   E8E5200000             call    0073130C
0072F227   A178B47D00             mov     eax, dword ptr [$007DB478]
0072F22C   8B00                   mov     eax, [eax]
0072F22E   8B4068                 mov     eax, [eax+$68]

|
0072F231   E806B5E6FF             call    0059A73C
0072F236   6A00                   push    $00
0072F238   33C9                   xor     ecx, ecx
0072F23A   B201                   mov     dl, $01

* Reference to class TStringArray
|
0072F23C   A1E48D5900             mov     eax, dword ptr [$00598DE4]

* Reference to: Mxarrays.TStringArray.Create(TStringArray;boolean;Integer;Integer);
|
0072F241   E876A2E6FF             call    005994BC

* Reference to field TFrmPreview.OFFS_0378
|
0072F246   898678030000           mov     [esi+$0378], eax
0072F24C   6A00                   push    $00
0072F24E   33C9                   xor     ecx, ecx
0072F250   B201                   mov     dl, $01

* Reference to class TStringArray
|
0072F252   A1E48D5900             mov     eax, dword ptr [$00598DE4]

* Reference to: Mxarrays.TStringArray.Create(TStringArray;boolean;Integer;Integer);
|
0072F257   E860A2E6FF             call    005994BC

* Reference to field TFrmPreview.OFFS_037C
|
0072F25C   89867C030000           mov     [esi+$037C], eax
0072F262   8B07                   mov     eax, [edi]

* Reference to: System.@LStrLen(String):Integer;
|
0072F264   E88B77CDFF             call    004069F4
0072F269   48                     dec     eax
0072F26A   85C0                   test    eax, eax
0072F26C   7C5E                   jl      0072F2CC
0072F26E   40                     inc     eax
0072F26F   8945D8                 mov     [ebp-$28], eax
0072F272   33DB                   xor     ebx, ebx
0072F274   8D04DB                 lea     eax, [ebx+ebx*8]
0072F277   8B17                   mov     edx, [edi]
0072F279   8D0482                 lea     eax, [edx+eax*4]
0072F27C   BA7CF77200             mov     edx, $0072F77C
0072F281   33C9                   xor     ecx, ecx
0072F283   8A08                   mov     cl, byte ptr [eax]
0072F285   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072F286   E8C541CDFF             call    00403450
0072F28B   7511                   jnz     0072F29E
0072F28D   8D04DB                 lea     eax, [ebx+ebx*8]
0072F290   8B17                   mov     edx, [edi]
0072F292   8B448214               mov     eax, [edx+eax*4+$14]

* Reference to field TFrmPreview.OFFS_0378
|
0072F296   898678030000           mov     [esi+$0378], eax
0072F29C   EB28                   jmp     0072F2C6
0072F29E   8D04DB                 lea     eax, [ebx+ebx*8]
0072F2A1   8B17                   mov     edx, [edi]
0072F2A3   8D0482                 lea     eax, [edx+eax*4]
0072F2A6   BA88F77200             mov     edx, $0072F788
0072F2AB   33C9                   xor     ecx, ecx
0072F2AD   8A08                   mov     cl, byte ptr [eax]
0072F2AF   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072F2B0   E89B41CDFF             call    00403450
0072F2B5   750F                   jnz     0072F2C6
0072F2B7   8D04DB                 lea     eax, [ebx+ebx*8]
0072F2BA   8B17                   mov     edx, [edi]
0072F2BC   8B448214               mov     eax, [edx+eax*4+$14]

* Reference to field TFrmPreview.OFFS_037C
|
0072F2C0   89867C030000           mov     [esi+$037C], eax
0072F2C6   43                     inc     ebx
0072F2C7   FF4DD8                 dec     dword ptr [ebp-$28]
0072F2CA   75A8                   jnz     0072F274
0072F2CC   8B152CAA7D00           mov     edx, [$007DAA2C]
0072F2D2   8B12                   mov     edx, [edx]
0072F2D4   8BC6                   mov     eax, esi

* Reference to : TFrmPreview._PROC_00732014()
|
0072F2D6   E8392D0000             call    00732014
0072F2DB   C745F801000000         mov     dword ptr [ebp-$08], $00000001
0072F2E2   A188A77D00             mov     eax, dword ptr [$007DA788]
0072F2E7   8B00                   mov     eax, [eax]
0072F2E9   3B45F8                 cmp     eax, [ebp-$08]
0072F2EC   0F8C57040000           jl      0072F749

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
0072F2F2   80BE8403000000         cmp     byte ptr [esi+$0384], $00
0072F2F9   7424                   jz      0072F31F

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
0072F2FB   C6868403000000         mov     byte ptr [esi+$0384], $00
0072F302   A174AE7D00             mov     eax, dword ptr [$007DAE74]
0072F307   33D2                   xor     edx, edx
0072F309   8910                   mov     [eax], edx
0072F30B   33C0                   xor     eax, eax

* Reference to field TFrmPreview.OFFS_0360
|
0072F30D   898660030000           mov     [esi+$0360], eax

* Reference to field TFrmPreview.OFFS_0364
|
0072F313   C786640300000000F03F   mov     dword ptr [esi+$0364], $3FF00000
0072F31D   EB28                   jmp     0072F347
0072F31F   837DF801               cmp     dword ptr [ebp-$08], +$01
0072F323   7E22                   jle     0072F347
0072F325   A174AE7D00             mov     eax, dword ptr [$007DAE74]
0072F32A   33D2                   xor     edx, edx
0072F32C   8910                   mov     [eax], edx
0072F32E   33C0                   xor     eax, eax

* Reference to field TFrmPreview.OFFS_0360
|
0072F330   898660030000           mov     [esi+$0360], eax

* Reference to field TFrmPreview.OFFS_0364
|
0072F336   C786640300000000F03F   mov     dword ptr [esi+$0364], $3FF00000
0072F340   A1E89F7D00             mov     eax, dword ptr [$007D9FE8]
0072F345   FF00                   inc     dword ptr [eax]
0072F347   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072F34C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'etiqueta'
|
0072F34E   BA98F77200             mov     edx, $0072F798

* Reference to: System.@LStrCmp;
|
0072F353   E85065CDFF             call    004058A8
0072F358   7415                   jz      0072F36F

* Reference to field TFrmPreview.OFFS_0360
|
0072F35A   8D8E60030000           lea     ecx, [esi+$0360]

* Reference to field TFrmPreview.OFFS_0378
|
0072F360   8B9678030000           mov     edx, [esi+$0378]
0072F366   8BC6                   mov     eax, esi

* Reference to : TFrmPreview._PROC_0072FB64()
|
0072F368   E8F7070000             call    0072FB64
0072F36D   EB40                   jmp     0072F3AF
0072F36F   A1B0AC7D00             mov     eax, dword ptr [$007DACB0]
0072F374   833800                 cmp     dword ptr [eax], +$00
0072F377   7417                   jz      0072F390
0072F379   8B0DB0AC7D00           mov     ecx, [$007DACB0]
0072F37F   8B09                   mov     ecx, [ecx]
0072F381   8B152CAA7D00           mov     edx, [$007DAA2C]
0072F387   8B12                   mov     edx, [edx]
0072F389   8BC6                   mov     eax, esi

* Reference to : TFrmPreview._PROC_00730904()
|
0072F38B   E874150000             call    00730904
0072F390   33C0                   xor     eax, eax

* Reference to field TFrmPreview.OFFS_0360
|
0072F392   898660030000           mov     [esi+$0360], eax

* Reference to field TFrmPreview.OFFS_0364
|
0072F398   C786640300000000F03F   mov     dword ptr [esi+$0364], $3FF00000

* Reference to field TFrmPreview.OFFS_0360
|
0072F3A2   8D9660030000           lea     edx, [esi+$0360]
0072F3A8   8BC6                   mov     eax, esi

|
0072F3AA   E849370000             call    00732AF8
0072F3AF   A118B77D00             mov     eax, dword ptr [$007DB718]
0072F3B4   DB00                   fild    dword ptr [eax]
0072F3B6   DD9E70030000           fstp    qword ptr [esi+$0370]
0072F3BC   9B                     wait
0072F3BD   8B07                   mov     eax, [edi]

* Reference to: System.@LStrLen(String):Integer;
|
0072F3BF   E83076CDFF             call    004069F4
0072F3C4   48                     dec     eax
0072F3C5   85C0                   test    eax, eax
0072F3C7   0F8CCD020000           jl      0072F69A
0072F3CD   40                     inc     eax
0072F3CE   8945D8                 mov     [ebp-$28], eax
0072F3D1   33DB                   xor     ebx, ebx
0072F3D3   8D04DB                 lea     eax, [ebx+ebx*8]
0072F3D6   8B17                   mov     edx, [edi]
0072F3D8   8D0482                 lea     eax, [edx+eax*4]
0072F3DB   BAA4F77200             mov     edx, $0072F7A4
0072F3E0   33C9                   xor     ecx, ecx
0072F3E2   8A08                   mov     cl, byte ptr [eax]
0072F3E4   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072F3E5   E86640CDFF             call    00403450
0072F3EA   0F84A0020000           jz      0072F690
0072F3F0   8D04DB                 lea     eax, [ebx+ebx*8]
0072F3F3   8B17                   mov     edx, [edi]
0072F3F5   8D0482                 lea     eax, [edx+eax*4]
0072F3F8   BA7CF77200             mov     edx, $0072F77C
0072F3FD   33C9                   xor     ecx, ecx
0072F3FF   8A08                   mov     cl, byte ptr [eax]
0072F401   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072F402   E84940CDFF             call    00403450
0072F407   0F8483020000           jz      0072F690
0072F40D   8D04DB                 lea     eax, [ebx+ebx*8]
0072F410   8B17                   mov     edx, [edi]
0072F412   8D0482                 lea     eax, [edx+eax*4]
0072F415   BA88F77200             mov     edx, $0072F788
0072F41A   33C9                   xor     ecx, ecx
0072F41C   8A08                   mov     cl, byte ptr [eax]
0072F41E   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072F41F   E82C40CDFF             call    00403450
0072F424   0F8466020000           jz      0072F690
0072F42A   8D04DB                 lea     eax, [ebx+ebx*8]
0072F42D   8B17                   mov     edx, [edi]
0072F42F   8D0482                 lea     eax, [edx+eax*4]

* Possible String Reference to: 'subdetalhe'
|
0072F432   BAACF77200             mov     edx, $0072F7AC
0072F437   33C9                   xor     ecx, ecx
0072F439   8A08                   mov     cl, byte ptr [eax]
0072F43B   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072F43C   E80F40CDFF             call    00403450
0072F441   0F8449020000           jz      0072F690
0072F447   8D04DB                 lea     eax, [ebx+ebx*8]
0072F44A   8B17                   mov     edx, [edi]
0072F44C   8D0482                 lea     eax, [edx+eax*4]
0072F44F   BAB8F77200             mov     edx, $0072F7B8
0072F454   33C9                   xor     ecx, ecx
0072F456   8A08                   mov     cl, byte ptr [eax]
0072F458   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072F459   E8F23FCDFF             call    00403450
0072F45E   7549                   jnz     0072F4A9
0072F460   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072F465   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
0072F467   BAC8F77200             mov     edx, $0072F7C8

* Reference to: System.@LStrCmp;
|
0072F46C   E83764CDFF             call    004058A8
0072F471   7536                   jnz     0072F4A9
0072F473   8D04DB                 lea     eax, [ebx+ebx*8]
0072F476   8B17                   mov     edx, [edi]
0072F478   837C821000             cmp     dword ptr [edx+eax*4+$10], +$00
0072F47D   0F840D020000           jz      0072F690

* Reference to field TFrmPreview.OFFS_034C
|
0072F483   899E4C030000           mov     [esi+$034C], ebx

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
0072F489   8B8640030000           mov     eax, [esi+$0340]

* Reference to field TJvProgressComponent.OFFS_004C
|
0072F48F   89704C                 mov     [eax+$4C], esi

* Reference to field TJvProgressComponent.OFFS_0048
|
0072F492   C74048283C7300         mov     dword ptr [eax+$48], $00733C28

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
0072F499   8B8640030000           mov     eax, [esi+$0340]

* Reference to : TJvProgressForm._PROC_005B8EC4()
|
0072F49F   E8209AE8FF             call    005B8EC4
0072F4A4   E9E7010000             jmp     0072F690
0072F4A9   8D04DB                 lea     eax, [ebx+ebx*8]
0072F4AC   8B17                   mov     edx, [edi]
0072F4AE   8D0482                 lea     eax, [edx+eax*4]

* Possible String Reference to: 'textolivre'
|
0072F4B1   BAD4F77200             mov     edx, $0072F7D4
0072F4B6   33C9                   xor     ecx, ecx
0072F4B8   8A08                   mov     cl, byte ptr [eax]
0072F4BA   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072F4BB   E8903FCDFF             call    00403450
0072F4C0   0F8588000000           jnz     0072F54E
0072F4C6   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072F4CB   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
0072F4CD   BAC8F77200             mov     edx, $0072F7C8

* Reference to: System.@LStrCmp;
|
0072F4D2   E8D163CDFF             call    004058A8
0072F4D7   7575                   jnz     0072F54E
0072F4D9   8D04DB                 lea     eax, [ebx+ebx*8]
0072F4DC   8B17                   mov     edx, [edi]
0072F4DE   8B448214               mov     eax, [edx+eax*4+$14]
0072F4E2   8B4010                 mov     eax, [eax+$10]
0072F4E5   48                     dec     eax
0072F4E6   85C0                   test    eax, eax
0072F4E8   0F8CA2010000           jl      0072F690
0072F4EE   40                     inc     eax
0072F4EF   8945D4                 mov     [ebp-$2C], eax
0072F4F2   C745FC00000000         mov     dword ptr [ebp-$04], $00000000
0072F4F9   8D04DB                 lea     eax, [ebx+ebx*8]
0072F4FC   8B17                   mov     edx, [edi]
0072F4FE   8B448214               mov     eax, [edx+eax*4+$14]
0072F502   8D4DF4                 lea     ecx, [ebp-$0C]
0072F505   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0072F508   E897A3E6FF             call    005998A4

* Reference to field TFrmPreview.OFFS_0360
|
0072F50D   8D8E60030000           lea     ecx, [esi+$0360]
0072F513   8B55F4                 mov     edx, [ebp-$0C]
0072F516   8BC6                   mov     eax, esi

|
0072F518   E8F7020000             call    0072F814
0072F51D   FFB674030000           push    dword ptr [esi+$0374]
0072F523   FFB670030000           push    dword ptr [esi+$0370]

* Possible String Reference to: 'dos'
|
0072F529   68E8F77200             push    $0072F7E8

* Reference to field TFrmPreview.OFFS_0360
|
0072F52E   8D9660030000           lea     edx, [esi+$0360]

* Reference to field TFrmPreview.OFFS_0378
|
0072F534   8B8E78030000           mov     ecx, [esi+$0378]
0072F53A   8BC6                   mov     eax, esi

* Reference to : TFrmPreview._PROC_0072F0EC()
|
0072F53C   E8ABFBFFFF             call    0072F0EC
0072F541   FF45FC                 inc     dword ptr [ebp-$04]
0072F544   FF4DD4                 dec     dword ptr [ebp-$2C]
0072F547   75B0                   jnz     0072F4F9
0072F549   E942010000             jmp     0072F690
0072F54E   8D04DB                 lea     eax, [ebx+ebx*8]
0072F551   8B17                   mov     edx, [edi]
0072F553   8D0482                 lea     eax, [edx+eax*4]
0072F556   BAECF77200             mov     edx, $0072F7EC
0072F55B   33C9                   xor     ecx, ecx
0072F55D   8A08                   mov     cl, byte ptr [eax]
0072F55F   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072F560   E8EB3ECDFF             call    00403450
0072F565   0F8525010000           jnz     0072F690
0072F56B   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072F570   8B00                   mov     eax, [eax]

* Possible String Reference to: 'etiqueta'
|
0072F572   BA98F77200             mov     edx, $0072F798

* Reference to: System.@LStrCmp;
|
0072F577   E82C63CDFF             call    004058A8
0072F57C   0F850E010000           jnz     0072F690
0072F582   8D04DB                 lea     eax, [ebx+ebx*8]
0072F585   8B17                   mov     edx, [edi]
0072F587   837C821000             cmp     dword ptr [edx+eax*4+$10], +$00
0072F58C   0F84FE000000           jz      0072F690
0072F592   33C0                   xor     eax, eax
0072F594   8945F0                 mov     [ebp-$10], eax
0072F597   8D04DB                 lea     eax, [ebx+ebx*8]
0072F59A   8B17                   mov     edx, [edi]
0072F59C   8B448210               mov     eax, [edx+eax*4+$10]
0072F5A0   8B10                   mov     edx, [eax]
0072F5A2   FF924C010000           call    dword ptr [edx+$014C]
0072F5A8   8945D0                 mov     [ebp-$30], eax
0072F5AB   DB45D0                 fild    dword ptr [ebp-$30]
0072F5AE   A114B67D00             mov     eax, dword ptr [$007DB614]
0072F5B3   8B00                   mov     eax, [eax]
0072F5B5   8B15A8B47D00           mov     edx, [$007DB4A8]
0072F5BB   F72A                   imul    dword ptr [edx] 
0072F5BD   8945CC                 mov     [ebp-$34], eax
0072F5C0   DB45CC                 fild    dword ptr [ebp-$34]

* Reference to: System.@FSafeDivide;
|
0072F5C3   E8383FCDFF             call    00403500
0072F5C8   83C4F8                 add     esp, -$08
0072F5CB   DD1C24                 fstp    qword ptr [esp]
0072F5CE   9B                     wait
0072F5CF   33C0                   xor     eax, eax

|
0072F5D1   E8721C0700             call    007A1248
0072F5D6   DB7DE0                 fstp    tbyte ptr [ebp-$20]
0072F5D9   9B                     wait
0072F5DA   C745DC01000000         mov     dword ptr [ebp-$24], $00000001
0072F5E1   8D04DB                 lea     eax, [ebx+ebx*8]
0072F5E4   8B17                   mov     edx, [edi]
0072F5E6   8B448210               mov     eax, [edx+eax*4+$10]

* Reference to: DB.TDataSet.First(TDataSet);
|
0072F5EA   E83DBADBFF             call    004EB02C
0072F5EF   E986000000             jmp     0072F67A
0072F5F4   FFB664030000           push    dword ptr [esi+$0364]
0072F5FA   FFB660030000           push    dword ptr [esi+$0360]
0072F600   8B17                   mov     edx, [edi]
0072F602   8D548210               lea     edx, [edx+eax*4+$10]
0072F606   52                     push    edx
0072F607   8B17                   mov     edx, [edi]
0072F609   8B548214               mov     edx, [edx+eax*4+$14]
0072F60D   8BC6                   mov     eax, esi
0072F60F   59                     pop     ecx

|
0072F610   E82F320000             call    00732844
0072F615   FF45F0                 inc     dword ptr [ebp-$10]
0072F618   A114B67D00             mov     eax, dword ptr [$007DB614]
0072F61D   8B00                   mov     eax, [eax]
0072F61F   3B45F0                 cmp     eax, [ebp-$10]
0072F622   7F56                   jnle    0072F67A
0072F624   DB45DC                 fild    dword ptr [ebp-$24]
0072F627   DB6DE0                 fld     tbyte ptr [ebp-$20]
0072F62A   DED9                   fcompp
0072F62C   DFE0                   fstsw   ax
0072F62E   9E                     sahf
0072F62F   7649                   jbe     0072F67A
0072F631   33C0                   xor     eax, eax

* Reference to field TFrmPreview.OFFS_0360
|
0072F633   898660030000           mov     [esi+$0360], eax

* Reference to field TFrmPreview.OFFS_0364
|
0072F639   C786640300000000F03F   mov     dword ptr [esi+$0364], $3FF00000
0072F643   33C0                   xor     eax, eax
0072F645   8945F0                 mov     [ebp-$10], eax
0072F648   FF45F0                 inc     dword ptr [ebp-$10]
0072F64B   A1B4AC7D00             mov     eax, dword ptr [$007DACB4]
0072F650   8B00                   mov     eax, [eax]
0072F652   BA00F87200             mov     edx, $0072F800

* Reference to: System.@LStrCmp;
|
0072F657   E84C62CDFF             call    004058A8
0072F65C   750F                   jnz     0072F66D
0072F65E   A178B47D00             mov     eax, dword ptr [$007DB478]
0072F663   8B00                   mov     eax, [eax]
0072F665   8B4068                 mov     eax, [eax+$68]

|
0072F668   E8CBB2E6FF             call    0059A938

* Reference to field TFrmPreview.OFFS_0360
|
0072F66D   8D9660030000           lea     edx, [esi+$0360]
0072F673   8BC6                   mov     eax, esi

|
0072F675   E87E340000             call    00732AF8
0072F67A   8D04DB                 lea     eax, [ebx+ebx*8]
0072F67D   8B17                   mov     edx, [edi]
0072F67F   8B548210               mov     edx, [edx+eax*4+$10]
0072F683   80BAA100000000         cmp     byte ptr [edx+$00A1], $00
0072F68A   0F8464FFFFFF           jz      0072F5F4
0072F690   43                     inc     ebx
0072F691   FF4DD8                 dec     dword ptr [ebp-$28]
0072F694   0F8539FDFFFF           jnz     0072F3D3

* Reference to field TFrmPreview.OFFS_0386 : Byte
|
0072F69A   80BE8603000000         cmp     byte ptr [esi+$0386], $00
0072F6A1   7513                   jnz     0072F6B6

* Reference to field TFrmPreview.OFFS_0360
|
0072F6A3   8D8E60030000           lea     ecx, [esi+$0360]

* Reference to field TFrmPreview.OFFS_037C
|
0072F6A9   8B967C030000           mov     edx, [esi+$037C]
0072F6AF   8BC6                   mov     eax, esi

|
0072F6B1   E81E110000             call    007307D4
0072F6B6   A1B4AC7D00             mov     eax, dword ptr [$007DACB4]
0072F6BB   8B00                   mov     eax, [eax]
0072F6BD   BA00F87200             mov     edx, $0072F800

* Reference to: System.@LStrCmp;
|
0072F6C2   E8E161CDFF             call    004058A8
0072F6C7   7509                   jnz     0072F6D2
0072F6C9   8BC6                   mov     eax, esi

|
0072F6CB   E8842A0000             call    00732154
0072F6D0   EB5B                   jmp     0072F72D
0072F6D2   A1B4AC7D00             mov     eax, dword ptr [$007DACB4]
0072F6D7   8B00                   mov     eax, [eax]

* Possible String Reference to: 'NC'
|
0072F6D9   BA0CF87200             mov     edx, $0072F80C

* Reference to: System.@LStrCmp;
|
0072F6DE   E8C561CDFF             call    004058A8
0072F6E3   7548                   jnz     0072F72D
0072F6E5   DD8660030000           fld     qword ptr [esi+$0360]
0072F6EB   DC9E70030000           fcomp   qword ptr [esi+$0370]
0072F6F1   DFE0                   fstsw   ax
0072F6F3   9E                     sahf
0072F6F4   7737                   jnbe    0072F72D
0072F6F6   EB24                   jmp     0072F71C
0072F6F8   DD8660030000           fld     qword ptr [esi+$0360]
0072F6FE   D80510F87200           fadd    dword ptr [$0072F810]
0072F704   DD9E60030000           fstp    qword ptr [esi+$0360]
0072F70A   9B                     wait
0072F70B   A178B47D00             mov     eax, dword ptr [$007DB478]
0072F710   8B00                   mov     eax, [eax]
0072F712   8B4068                 mov     eax, [eax+$68]
0072F715   33D2                   xor     edx, edx

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0072F717   E8B8B1E6FF             call    0059A8D4
0072F71C   DD8660030000           fld     qword ptr [esi+$0360]
0072F722   DC9E70030000           fcomp   qword ptr [esi+$0370]
0072F728   DFE0                   fstsw   ax
0072F72A   9E                     sahf
0072F72B   76CB                   jbe     0072F6F8

* Reference to field TFrmPreview.OFFS_0384 : Byte
|
0072F72D   80BE8403000000         cmp     byte ptr [esi+$0384], $00
0072F734   7503                   jnz     0072F739
0072F736   FF45F8                 inc     dword ptr [ebp-$08]
0072F739   A188A77D00             mov     eax, dword ptr [$007DA788]
0072F73E   8B00                   mov     eax, [eax]
0072F740   3B45F8                 cmp     eax, [ebp-$08]
0072F743   0F8DA9FBFFFF           jnl     0072F2F2
0072F749   A178B47D00             mov     eax, dword ptr [$007DB478]
0072F74E   8B00                   mov     eax, [eax]
0072F750   8B4068                 mov     eax, [eax+$68]

|
0072F753   E888B0E6FF             call    0059A7E0
0072F758   33C0                   xor     eax, eax
0072F75A   5A                     pop     edx
0072F75B   59                     pop     ecx
0072F75C   59                     pop     ecx
0072F75D   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072F760   6875F77200             push    $0072F775
0072F765   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0072F768   E82F5DCDFF             call    0040549C
0072F76D   C3                     ret


* Reference to: System.@HandleFinally;
|
0072F76E   E9C555CDFF             jmp     00404D38
0072F773   EBF0                   jmp     0072F765

****** END
|
0072F775   5F                     pop     edi
0072F776   5E                     pop     esi
0072F777   5B                     pop     ebx
0072F778   8BE5                   mov     esp, ebp
0072F77A   5D                     pop     ebp
0072F77B   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072F77C(Sender : TObject);
begin
(*
0072F77C   096361                 or      [ebx+$61], esp
0072F77F   626563                 bound   esp, qword ptr [ebp+$63]
0072F782   61                     popa
0072F783   6C                     insb
0072F784   686F000006             push    $0600006F
0072F789   726F                   jb      0072F7FA
0072F78B   6461                   popa
0072F78D   7065                   jo      0072F7F4
0072F78F   00FF                   add     bh, bh
0072F791   FFFF                   DB  $FF, $FF  //      
0072F793   FF08                   dec     dword ptr [eax]
0072F795   0000                   add     [eax], al

0072F797   006574                 add     [ebp+$74], ah
0072F79A   69717565746100         imul    esi, [ecx+$75], $00617465
0072F7A1   0000                   add     [eax], al

0072F7A3   0006                   add     [esi], al
0072F7A5   7469                   jz      0072F810
0072F7A7   7475                   jz      0072F81E
0072F7A9   6C                     insb
0072F7AA   6F                     outsd
0072F7AB   000A                   add     [edx], cl
0072F7AD   7375                   jnb     0072F824
0072F7AF   62646574               bound   esp, qword ptr [ebp+$74]
0072F7B3   61                     popa
0072F7B4   6C                     insb
0072F7B5   6865000764             push    $64070065
0072F7BA   657461                 jz      0072F81E
0072F7BD   6C                     insb
0072F7BE   6865FFFFFF             push    $FFFFFF65
0072F7C3   FF08                   dec     dword ptr [eax]
0072F7C5   0000                   add     [eax], al

0072F7C7   006C6973               add     [ecx+ebp*2+$73], ch
0072F7CB   7461                   jz      0072F82E
0072F7CD   67656D                 insd
0072F7D0   0000                   add     [eax], al

0072F7D2   0000                   add     [eax], al

0072F7D4   0A746578               or      dh, byte ptr [ebp+$78]
0072F7D8   746F                   jz      0072F849
0072F7DA   6C                     insb
0072F7DB   6976726500FFFF         imul    esi, [esi+$72], $FFFF0065
0072F7E2   FFFF                   DB  $FF, $FF  //      
0072F7E4   0300                   add     eax, [eax]
0072F7E6   0000                   add     [eax], al

0072F7E8   646F                   outsd
0072F7EA   7300                   jnb     0072F7EC
0072F7EC   086574                 or      [ebp+$74], ah
0072F7EF   69717565746100         imul    esi, [ecx+$75], $00617465
0072F7F6   0000                   add     [eax], al

0072F7F8   FFFF                   DB  $FF, $FF  //      
0072F7FA   FFFF                   DB  $FF, $FF  //      
0072F7FC   0100                   add     [eax], eax
0072F7FE   0000                   add     [eax], al

0072F800   53                     push    ebx
0072F801   0000                   add     [eax], al

0072F803   00FF                   add     bh, bh
0072F805   FFFF                   DB  $FF, $FF  //      
0072F807   FF02                   inc     dword ptr [edx]
0072F809   0000                   add     [eax], al

0072F80B   004E43                 add     [esi+$43], cl
0072F80E   0000                   add     [eax], al

0072F810   0000                   add     [eax], al

0072F812   803F55                 cmp     byte ptr [edi], $55
0072F815   8BEC                   mov     ebp, esp
0072F817   6A00                   push    $00
0072F819   6A00                   push    $00
0072F81B   6A00                   push    $00
0072F81D   6A00                   push    $00
0072F81F   6A00                   push    $00
0072F821   6A00                   push    $00
0072F823   6A00                   push    $00
0072F825   53                     push    ebx
0072F826   56                     push    esi
0072F827   57                     push    edi
0072F828   894DF8                 mov     [ebp-$08], ecx
0072F82B   8955FC                 mov     [ebp-$04], edx
0072F82E   8BF8                   mov     edi, eax
0072F830   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0072F833   E81461CDFF             call    0040594C
0072F838   33C0                   xor     eax, eax
0072F83A   55                     push    ebp
0072F83B   6882F97200             push    $0072F982

***** TRY
|
0072F840   64FF30                 push    dword ptr fs:[eax]
0072F843   648920                 mov     fs:[eax], esp
0072F846   8D55EC                 lea     edx, [ebp-$14]
0072F849   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A0A38()
|
0072F84C   E8E7110700             call    007A0A38
0072F851   8B55EC                 mov     edx, [ebp-$14]
0072F854   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
0072F857   E8D85CCDFF             call    00405534
0072F85C   8B55FC                 mov     edx, [ebp-$04]
0072F85F   B898F97200             mov     eax, $0072F998

* Reference to: System.@LStrPos;
|
0072F864   E83762CDFF             call    00405AA0
0072F869   85C0                   test    eax, eax
0072F86B   0F8ECB000000           jle     0072F93C
0072F871   BE01000000             mov     esi, $00000001
0072F876   E9AF000000             jmp     0072F92A
0072F87B   8B45FC                 mov     eax, [ebp-$04]
0072F87E   807C30FF7E             cmp     byte ptr [eax+esi-$01], $7E
0072F883   7541                   jnz     0072F8C6
0072F885   46                     inc     esi
0072F886   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0072F889   E80E5CCDFF             call    0040549C
0072F88E   EB16                   jmp     0072F8A6
0072F890   8D45E8                 lea     eax, [ebp-$18]
0072F893   8BD3                   mov     edx, ebx

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072F895   E8EA5DCDFF             call    00405684
0072F89A   8B55E8                 mov     edx, [ebp-$18]
0072F89D   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrCat;
|
0072F8A0   E8BF5ECDFF             call    00405764
0072F8A5   46                     inc     esi
0072F8A6   8B45FC                 mov     eax, [ebp-$04]
0072F8A9   8A5C30FF               mov     bl, byte ptr [eax+esi-$01]
0072F8AD   80FB7E                 cmp     bl, $7E
0072F8B0   75DE                   jnz     0072F890
0072F8B2   8B152CAA7D00           mov     edx, [$007DAA2C]
0072F8B8   8B12                   mov     edx, [edx]
0072F8BA   8B4DF4                 mov     ecx, [ebp-$0C]
0072F8BD   8BC7                   mov     eax, edi

* Reference to : TFrmPreview._PROC_00730904()
|
0072F8BF   E840100000             call    00730904
0072F8C4   EB63                   jmp     0072F929
0072F8C6   8D45F0                 lea     eax, [ebp-$10]
0072F8C9   50                     push    eax
0072F8CA   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0072F8CD   E88A5ECDFF             call    0040575C
0072F8D2   8BC8                   mov     ecx, eax
0072F8D4   41                     inc     ecx
0072F8D5   2BCE                   sub     ecx, esi
0072F8D7   8BD6                   mov     edx, esi
0072F8D9   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrCopy;
|
0072F8DC   E8DB60CDFF             call    004059BC
0072F8E1   8B55F0                 mov     edx, [ebp-$10]
0072F8E4   B898F97200             mov     eax, $0072F998

* Reference to: System.@LStrPos;
|
0072F8E9   E8B261CDFF             call    00405AA0
0072F8EE   85C0                   test    eax, eax
0072F8F0   7423                   jz      0072F915
0072F8F2   8D45E4                 lea     eax, [ebp-$1C]
0072F8F5   8B55FC                 mov     edx, [ebp-$04]
0072F8F8   8A5432FF               mov     dl, byte ptr [edx+esi-$01]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0072F8FC   E8835DCDFF             call    00405684
0072F901   8B55E4                 mov     edx, [ebp-$1C]
0072F904   A178B47D00             mov     eax, dword ptr [$007DB478]
0072F909   8B00                   mov     eax, [eax]
0072F90B   8B4068                 mov     eax, [eax+$68]

* Reference to : TRAWPrinter._PROC_0059A8A8()
|
0072F90E   E895AFE6FF             call    0059A8A8
0072F913   EB14                   jmp     0072F929
0072F915   A178B47D00             mov     eax, dword ptr [$007DB478]
0072F91A   8B00                   mov     eax, [eax]
0072F91C   8B4068                 mov     eax, [eax+$68]
0072F91F   8B55F0                 mov     edx, [ebp-$10]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0072F922   E8ADAFE6FF             call    0059A8D4
0072F927   EB25                   jmp     0072F94E
0072F929   46                     inc     esi
0072F92A   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0072F92D   E82A5ECDFF             call    0040575C
0072F932   3BF0                   cmp     esi, eax
0072F934   0F8E41FFFFFF           jle     0072F87B
0072F93A   EB12                   jmp     0072F94E
0072F93C   A178B47D00             mov     eax, dword ptr [$007DB478]
0072F941   8B00                   mov     eax, [eax]
0072F943   8B4068                 mov     eax, [eax+$68]
0072F946   8B55FC                 mov     edx, [ebp-$04]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0072F949   E886AFE6FF             call    0059A8D4
0072F94E   8B45F8                 mov     eax, [ebp-$08]
0072F951   DD00                   fld     qword ptr [eax]
0072F953   D8059CF97200           fadd    dword ptr [$0072F99C]
0072F959   8B45F8                 mov     eax, [ebp-$08]
0072F95C   DD18                   fstp    qword ptr [eax]
0072F95E   9B                     wait
0072F95F   33C0                   xor     eax, eax
0072F961   5A                     pop     edx
0072F962   59                     pop     ecx
0072F963   59                     pop     ecx
0072F964   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072F967   6889F97200             push    $0072F989
0072F96C   8D45E4                 lea     eax, [ebp-$1C]
0072F96F   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0072F974   E8475BCDFF             call    004054C0
0072F979   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0072F97C   E81B5BCDFF             call    0040549C
0072F981   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072F982(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0072F982   E9B153CDFF             jmp     00404D38

|
0072F987   EBE3                   jmp     0072F96C
0072F989   5F                     pop     edi
0072F98A   5E                     pop     esi
0072F98B   5B                     pop     ebx
0072F98C   8BE5                   mov     esp, ebp
0072F98E   5D                     pop     ebp
0072F98F   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072F9D8(Sender : TObject);
begin
(*
0072F9D8   55                     push    ebp
0072F9D9   8BEC                   mov     ebp, esp
0072F9DB   83C4EC                 add     esp, -$14
0072F9DE   53                     push    ebx
0072F9DF   56                     push    esi
0072F9E0   57                     push    edi
0072F9E1   33DB                   xor     ebx, ebx
0072F9E3   895DEC                 mov     [ebp-$14], ebx
0072F9E6   895DF4                 mov     [ebp-$0C], ebx
0072F9E9   894DF8                 mov     [ebp-$08], ecx
0072F9EC   8955FC                 mov     [ebp-$04], edx
0072F9EF   8BF8                   mov     edi, eax
0072F9F1   33C0                   xor     eax, eax
0072F9F3   55                     push    ebp
0072F9F4   6851FB7200             push    $0072FB51

***** TRY
|
0072F9F9   64FF30                 push    dword ptr fs:[eax]
0072F9FC   648920                 mov     fs:[eax], esp
0072F9FF   8B45FC                 mov     eax, [ebp-$04]
0072FA02   83781000               cmp     dword ptr [eax+$10], +$00
0072FA06   0F8E27010000           jle     0072FB33
0072FA0C   837DF800               cmp     dword ptr [ebp-$08], +$00
0072FA10   0F841D010000           jz      0072FB33
0072FA16   33C0                   xor     eax, eax
0072FA18   8945F0                 mov     [ebp-$10], eax
0072FA1B   80BF8403000000         cmp     byte ptr [edi+$0384], $00
0072FA22   750D                   jnz     0072FA31
0072FA24   8B45F8                 mov     eax, [ebp-$08]

* Reference to: DB.TDataSet.First(TDataSet);
|
0072FA27   E800B6DBFF             call    004EB02C
0072FA2C   E9A2000000             jmp     0072FAD3
0072FA31   C6878403000000         mov     byte ptr [edi+$0384], $00
0072FA38   C6878503000001         mov     byte ptr [edi+$0385], $01
0072FA3F   8B9788030000           mov     edx, [edi+$0388]
0072FA45   8B45F8                 mov     eax, [ebp-$08]

* Reference to: DB.TDataSet.GotoBookmark(TDataSet;Pointer);
|
0072FA48   E8DFC3DBFF             call    004EBE2C
0072FA4D   E981000000             jmp     0072FAD3
0072FA52   8B45FC                 mov     eax, [ebp-$04]
0072FA55   8B5810                 mov     ebx, [eax+$10]
0072FA58   4B                     dec     ebx
0072FA59   85DB                   test    ebx, ebx
0072FA5B   7C2C                   jl      0072FA89
0072FA5D   43                     inc     ebx
0072FA5E   33F6                   xor     esi, esi
0072FA60   8D4DEC                 lea     ecx, [ebp-$14]
0072FA63   8BD6                   mov     edx, esi
0072FA65   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0072FA68   E8379EE6FF             call    005998A4
0072FA6D   8B45EC                 mov     eax, [ebp-$14]
0072FA70   8D55F4                 lea     edx, [ebp-$0C]

|
0072FA73   E8C8E4FFFF             call    0072DF40
0072FA78   8B4D08                 mov     ecx, [ebp+$08]
0072FA7B   8B55F4                 mov     edx, [ebp-$0C]
0072FA7E   8BC7                   mov     eax, edi

|
0072FA80   E88FFDFFFF             call    0072F814
0072FA85   46                     inc     esi
0072FA86   4B                     dec     ebx
0072FA87   75D7                   jnz     0072FA60
0072FA89   8B45F8                 mov     eax, [ebp-$08]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0072FA8C   E8B3B8DBFF             call    004EB344
0072FA91   FF45F0                 inc     dword ptr [ebp-$10]
0072FA94   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072FA99   833800                 cmp     dword ptr [eax], +$00
0072FA9C   7E35                   jle     0072FAD3
0072FA9E   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072FAA3   8B00                   mov     eax, [eax]
0072FAA5   8B1570B17D00           mov     edx, [$007DB170]
0072FAAB   2B02                   sub     eax, dword ptr [edx]
0072FAAD   3B45F0                 cmp     eax, [ebp-$10]
0072FAB0   7D21                   jnl     0072FAD3
0072FAB2   C6878403000001         mov     byte ptr [edi+$0384], $01
0072FAB9   C6878503000000         mov     byte ptr [edi+$0385], $00
0072FAC0   8B45F8                 mov     eax, [ebp-$08]
0072FAC3   8B10                   mov     edx, [eax]
0072FAC5   FF921C020000           call    dword ptr [edx+$021C]
0072FACB   898788030000           mov     [edi+$0388], eax
0072FAD1   EB60                   jmp     0072FB33
0072FAD3   8B45F8                 mov     eax, [ebp-$08]
0072FAD6   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0072FADD   0F846FFFFFFF           jz      0072FA52
0072FAE3   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072FAE8   833800                 cmp     dword ptr [eax], +$00
0072FAEB   7E46                   jle     0072FB33
0072FAED   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072FAF2   8B00                   mov     eax, [eax]
0072FAF4   8B1570B17D00           mov     edx, [$007DB170]
0072FAFA   2B02                   sub     eax, dword ptr [edx]
0072FAFC   3B45F0                 cmp     eax, [ebp-$10]
0072FAFF   7E32                   jle     0072FB33
0072FB01   EB1C                   jmp     0072FB1F
0072FB03   8B45FC                 mov     eax, [ebp-$04]
0072FB06   8B5810                 mov     ebx, [eax+$10]
0072FB09   4B                     dec     ebx
0072FB0A   85DB                   test    ebx, ebx
0072FB0C   7C0E                   jl      0072FB1C
0072FB0E   43                     inc     ebx
0072FB0F   8B5508                 mov     edx, [ebp+$08]
0072FB12   8BC7                   mov     eax, edi

* Reference to : TFrmPreview._PROC_007317A4()
|
0072FB14   E88B1C0000             call    007317A4
0072FB19   4B                     dec     ebx
0072FB1A   75F3                   jnz     0072FB0F
0072FB1C   FF45F0                 inc     dword ptr [ebp-$10]
0072FB1F   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0072FB24   8B00                   mov     eax, [eax]
0072FB26   8B1570B17D00           mov     edx, [$007DB170]
0072FB2C   2B02                   sub     eax, dword ptr [edx]
0072FB2E   3B45F0                 cmp     eax, [ebp-$10]
0072FB31   7FD0                   jnle    0072FB03
0072FB33   33C0                   xor     eax, eax
0072FB35   5A                     pop     edx
0072FB36   59                     pop     ecx
0072FB37   59                     pop     ecx
0072FB38   648910                 mov     fs:[eax], edx

****** FINALLY
|
0072FB3B   6858FB7200             push    $0072FB58
0072FB40   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0072FB43   E85459CDFF             call    0040549C
0072FB48   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0072FB4B   E84C59CDFF             call    0040549C
0072FB50   C3                     ret


* Reference to: System.@HandleFinally;
|
0072FB51   E9E251CDFF             jmp     00404D38
0072FB56   EBE8                   jmp     0072FB40

****** END
|
0072FB58   5F                     pop     edi
0072FB59   5E                     pop     esi
0072FB5A   5B                     pop     ebx
0072FB5B   8BE5                   mov     esp, ebp
0072FB5D   5D                     pop     ebp
0072FB5E   C20400                 ret     $0004

*)
end;

procedure TFrmPreview._PROC_0072FB64(Sender : TObject);
begin
(*
0072FB64   55                     push    ebp
0072FB65   8BEC                   mov     ebp, esp
0072FB67   83C4F4                 add     esp, -$0C
0072FB6A   53                     push    ebx
0072FB6B   56                     push    esi
0072FB6C   57                     push    edi
0072FB6D   33DB                   xor     ebx, ebx
0072FB6F   895DF4                 mov     [ebp-$0C], ebx
0072FB72   894DF8                 mov     [ebp-$08], ecx
0072FB75   8BFA                   mov     edi, edx
0072FB77   8945FC                 mov     [ebp-$04], eax
0072FB7A   33C0                   xor     eax, eax
0072FB7C   55                     push    ebp

* Possible String Reference to: 'ÈXQÕˇÎ_^[ãÂ]√ç@'
|
0072FB7D   68DBFB7200             push    $0072FBDB

***** TRY
|
0072FB82   64FF30                 push    dword ptr fs:[eax]
0072FB85   648920                 mov     fs:[eax], esp
0072FB88   8B45F8                 mov     eax, [ebp-$08]
0072FB8B   33D2                   xor     edx, edx
0072FB8D   8910                   mov     [eax], edx
0072FB8F   C740040000F03F         mov     dword ptr [eax+$04], $3FF00000
0072FB96   8B4710                 mov     eax, [edi+$10]
0072FB99   85C0                   test    eax, eax
0072FB9B   7E28                   jle     0072FBC5
0072FB9D   8BD8                   mov     ebx, eax
0072FB9F   4B                     dec     ebx
0072FBA0   85DB                   test    ebx, ebx
0072FBA2   7C21                   jl      0072FBC5
0072FBA4   43                     inc     ebx
0072FBA5   33F6                   xor     esi, esi
0072FBA7   8D4DF4                 lea     ecx, [ebp-$0C]
0072FBAA   8BD6                   mov     edx, esi
0072FBAC   8BC7                   mov     eax, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0072FBAE   E8F19CE6FF             call    005998A4
0072FBB3   8B4DF8                 mov     ecx, [ebp-$08]
0072FBB6   8B55F4                 mov     edx, [ebp-$0C]
0072FBB9   8B45FC                 mov     eax, [ebp-$04]

|
0072FBBC   E853FCFFFF             call    0072F814
0072FBC1   46                     inc     esi
0072FBC2   4B                     dec     ebx
0072FBC3   75E2                   jnz     0072FBA7
0072FBC5   33C0                   xor     eax, eax
0072FBC7   5A                     pop     edx
0072FBC8   59                     pop     ecx
0072FBC9   59                     pop     ecx
0072FBCA   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√ç@'
|
0072FBCD   68E2FB7200             push    $0072FBE2
0072FBD2   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0072FBD5   E8C258CDFF             call    0040549C
0072FBDA   C3                     ret


* Reference to: System.@HandleFinally;
|
0072FBDB   E95851CDFF             jmp     00404D38
0072FBE0   EBF0                   jmp     0072FBD2

****** END
|
0072FBE2   5F                     pop     edi
0072FBE3   5E                     pop     esi
0072FBE4   5B                     pop     ebx
0072FBE5   8BE5                   mov     esp, ebp
0072FBE7   5D                     pop     ebp
0072FBE8   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0072FBEC(Sender : TObject);
begin
(*
0072FBEC   55                     push    ebp
0072FBED   8BEC                   mov     ebp, esp
0072FBEF   83C4C4                 add     esp, -$3C
0072FBF2   53                     push    ebx
0072FBF3   56                     push    esi
0072FBF4   57                     push    edi
0072FBF5   33D2                   xor     edx, edx
0072FBF7   8955C4                 mov     [ebp-$3C], edx
0072FBFA   8955C8                 mov     [ebp-$38], edx
0072FBFD   8955D0                 mov     [ebp-$30], edx
0072FC00   8955CC                 mov     [ebp-$34], edx
0072FC03   8955F0                 mov     [ebp-$10], edx
0072FC06   8955E4                 mov     [ebp-$1C], edx
0072FC09   8945FC                 mov     [ebp-$04], eax
0072FC0C   8B3578AE7D00           mov     esi, [$007DAE78]
0072FC12   33C0                   xor     eax, eax
0072FC14   55                     push    ebp
0072FC15   682F017300             push    $0073012F

***** TRY
|
0072FC1A   64FF30                 push    dword ptr fs:[eax]
0072FC1D   648920                 mov     fs:[eax], esp

|
0072FC20   E8CF1C0000             call    007318F4
0072FC25   8D55CC                 lea     edx, [ebp-$34]
0072FC28   33C0                   xor     eax, eax

* Reference to: System.ParamStr(Integer):String;
|
0072FC2A   E8BD30CDFF             call    00402CEC
0072FC2F   8B45CC                 mov     eax, [ebp-$34]
0072FC32   8D55D0                 lea     edx, [ebp-$30]

* Reference to: SysUtils.ExtractFilePath(AnsiString):AnsiString;
|
0072FC35   E802BCCDFF             call    0040B83C
0072FC3A   8B55D0                 mov     edx, [ebp-$30]
0072FC3D   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.sdTXT : TSaveDialog
|
0072FC40   8B8034030000           mov     eax, [eax+$0334]

* Reference to: Dialogs.TOpenDialog.SetInitialDir(TOpenDialog;AnsiString);
|
0072FC46   E85D1ED1FF             call    00441AA8
0072FC4B   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.sdTXT : TSaveDialog
|
0072FC4E   8B8034030000           mov     eax, [eax+$0334]
0072FC54   8B10                   mov     edx, [eax]

* Reference to method TSaveDialog.Execute()
|
0072FC56   FF523C                 call    dword ptr [edx+$3C]
0072FC59   84C0                   test    al, al
0072FC5B   0F84A3040000           jz      00730104
0072FC61   8D55E4                 lea     edx, [ebp-$1C]
0072FC64   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmPreview.sdTXT : TSaveDialog
|
0072FC67   8B8034030000           mov     eax, [eax+$0334]

* Reference to: Dialogs.TOpenDialog.GetFileName(TOpenDialog):TFileName;
|
0072FC6D   E8BE1DD1FF             call    00441A30
0072FC72   8B55E4                 mov     edx, [ebp-$1C]
0072FC75   B83CF37D00             mov     eax, $007DF33C

* Reference to: System.@Assign(TTextRec;TTextRec;String):Integer;
|
0072FC7A   E8F934CDFF             call    00403178
0072FC7F   B83CF37D00             mov     eax, $007DF33C

* Reference to: System.@RewritText(TTextRec;TTextRec):Integer;
|
0072FC84   E87F32CDFF             call    00402F08

|
0072FC89   E81E2DCDFF             call    004029AC
0072FC8E   6A00                   push    $00
0072FC90   33C9                   xor     ecx, ecx
0072FC92   B201                   mov     dl, $01

* Reference to class TStringArray
|
0072FC94   A1E48D5900             mov     eax, dword ptr [$00598DE4]

* Reference to: Mxarrays.TStringArray.Create(TStringArray;boolean;Integer;Integer);
|
0072FC99   E81E98E6FF             call    005994BC
0072FC9E   8945E0                 mov     [ebp-$20], eax
0072FCA1   6A00                   push    $00
0072FCA3   33C9                   xor     ecx, ecx
0072FCA5   B201                   mov     dl, $01

* Reference to class TStringArray
|
0072FCA7   A1E48D5900             mov     eax, dword ptr [$00598DE4]

* Reference to: Mxarrays.TStringArray.Create(TStringArray;boolean;Integer;Integer);
|
0072FCAC   E80B98E6FF             call    005994BC
0072FCB1   8945DC                 mov     [ebp-$24], eax
0072FCB4   8B06                   mov     eax, [esi]

* Reference to: System.@LStrLen(String):Integer;
|
0072FCB6   E8396DCDFF             call    004069F4
0072FCBB   48                     dec     eax
0072FCBC   85C0                   test    eax, eax
0072FCBE   7C52                   jl      0072FD12
0072FCC0   40                     inc     eax
0072FCC1   8945D8                 mov     [ebp-$28], eax
0072FCC4   33DB                   xor     ebx, ebx
0072FCC6   8D3CDB                 lea     edi, [ebx+ebx*8]
0072FCC9   8B06                   mov     eax, [esi]
0072FCCB   8D04B8                 lea     eax, [eax+edi*4]
0072FCCE   BA40017300             mov     edx, $00730140
0072FCD3   33C9                   xor     ecx, ecx
0072FCD5   8A08                   mov     cl, byte ptr [eax]
0072FCD7   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072FCD8   E87337CDFF             call    00403450
0072FCDD   750B                   jnz     0072FCEA
0072FCDF   8B06                   mov     eax, [esi]
0072FCE1   8B44B814               mov     eax, [eax+edi*4+$14]
0072FCE5   8945E0                 mov     [ebp-$20], eax
0072FCE8   EB22                   jmp     0072FD0C
0072FCEA   8D04DB                 lea     eax, [ebx+ebx*8]
0072FCED   8B16                   mov     edx, [esi]
0072FCEF   8D0482                 lea     eax, [edx+eax*4]
0072FCF2   BA4C017300             mov     edx, $0073014C
0072FCF7   33C9                   xor     ecx, ecx
0072FCF9   8A08                   mov     cl, byte ptr [eax]
0072FCFB   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072FCFC   E84F37CDFF             call    00403450
0072FD01   7509                   jnz     0072FD0C
0072FD03   8B06                   mov     eax, [esi]
0072FD05   8B44B814               mov     eax, [eax+edi*4+$14]
0072FD09   8945DC                 mov     [ebp-$24], eax
0072FD0C   43                     inc     ebx
0072FD0D   FF4DD8                 dec     dword ptr [ebp-$28]
0072FD10   75B4                   jnz     0072FCC6
0072FD12   A188A77D00             mov     eax, dword ptr [$007DA788]
0072FD17   8B00                   mov     eax, [eax]
0072FD19   85C0                   test    eax, eax
0072FD1B   0F8EAF030000           jle     007300D0
0072FD21   8945D8                 mov     [ebp-$28], eax
0072FD24   C745F401000000         mov     dword ptr [ebp-$0C], $00000001
0072FD2B   837DF401               cmp     dword ptr [ebp-$0C], +$01
0072FD2F   7E10                   jle     0072FD41
0072FD31   A174AE7D00             mov     eax, dword ptr [$007DAE74]
0072FD36   33D2                   xor     edx, edx
0072FD38   8910                   mov     [eax], edx
0072FD3A   A1E89F7D00             mov     eax, dword ptr [$007D9FE8]
0072FD3F   FF00                   inc     dword ptr [eax]
0072FD41   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072FD46   8B00                   mov     eax, [eax]

* Possible String Reference to: 'etiqueta'
|
0072FD48   BA5C017300             mov     edx, $0073015C

* Reference to: System.@LStrCmp;
|
0072FD4D   E8565BCDFF             call    004058A8
0072FD52   740D                   jz      0072FD61
0072FD54   8B55E0                 mov     edx, [ebp-$20]
0072FD57   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmPreview._PROC_0073048C()
|
0072FD5A   E82D070000             call    0073048C
0072FD5F   EB17                   jmp     0072FD78
0072FD61   33C0                   xor     eax, eax
0072FD63   8945E8                 mov     [ebp-$18], eax
0072FD66   C745EC0000F03F         mov     dword ptr [ebp-$14], $3FF00000
0072FD6D   8D55E8                 lea     edx, [ebp-$18]
0072FD70   8B45FC                 mov     eax, [ebp-$04]

|
0072FD73   E85C300000             call    00732DD4
0072FD78   8B06                   mov     eax, [esi]

* Reference to: System.@LStrLen(String):Integer;
|
0072FD7A   E8756CCDFF             call    004069F4
0072FD7F   48                     dec     eax
0072FD80   85C0                   test    eax, eax
0072FD82   0F8C2E030000           jl      007300B6
0072FD88   40                     inc     eax
0072FD89   8945D4                 mov     [ebp-$2C], eax
0072FD8C   33DB                   xor     ebx, ebx
0072FD8E   8D04DB                 lea     eax, [ebx+ebx*8]
0072FD91   8B16                   mov     edx, [esi]
0072FD93   8D0482                 lea     eax, [edx+eax*4]
0072FD96   BA68017300             mov     edx, $00730168
0072FD9B   33C9                   xor     ecx, ecx
0072FD9D   8A08                   mov     cl, byte ptr [eax]
0072FD9F   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072FDA0   E8AB36CDFF             call    00403450
0072FDA5   0F8401030000           jz      007300AC
0072FDAB   8D04DB                 lea     eax, [ebx+ebx*8]
0072FDAE   8B16                   mov     edx, [esi]
0072FDB0   8D0482                 lea     eax, [edx+eax*4]
0072FDB3   BA40017300             mov     edx, $00730140
0072FDB8   33C9                   xor     ecx, ecx
0072FDBA   8A08                   mov     cl, byte ptr [eax]
0072FDBC   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072FDBD   E88E36CDFF             call    00403450
0072FDC2   0F84E4020000           jz      007300AC
0072FDC8   8D04DB                 lea     eax, [ebx+ebx*8]
0072FDCB   8B16                   mov     edx, [esi]
0072FDCD   8D0482                 lea     eax, [edx+eax*4]
0072FDD0   BA4C017300             mov     edx, $0073014C
0072FDD5   33C9                   xor     ecx, ecx
0072FDD7   8A08                   mov     cl, byte ptr [eax]
0072FDD9   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072FDDA   E87136CDFF             call    00403450
0072FDDF   0F84C7020000           jz      007300AC
0072FDE5   8D04DB                 lea     eax, [ebx+ebx*8]
0072FDE8   8B16                   mov     edx, [esi]
0072FDEA   8D0482                 lea     eax, [edx+eax*4]

* Possible String Reference to: 'subdetalhe'
|
0072FDED   BA70017300             mov     edx, $00730170
0072FDF2   33C9                   xor     ecx, ecx
0072FDF4   8A08                   mov     cl, byte ptr [eax]
0072FDF6   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072FDF7   E85436CDFF             call    00403450
0072FDFC   0F84AA020000           jz      007300AC
0072FE02   8D3CDB                 lea     edi, [ebx+ebx*8]
0072FE05   8B06                   mov     eax, [esi]
0072FE07   8D04B8                 lea     eax, [eax+edi*4]
0072FE0A   BA7C017300             mov     edx, $0073017C
0072FE0F   33C9                   xor     ecx, ecx
0072FE11   8A08                   mov     cl, byte ptr [eax]
0072FE13   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072FE14   E83736CDFF             call    00403450
0072FE19   0F8580010000           jnz     0072FF9F
0072FE1F   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072FE24   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
0072FE26   BA8C017300             mov     edx, $0073018C

* Reference to: System.@LStrCmp;
|
0072FE2B   E8785ACDFF             call    004058A8
0072FE30   0F8569010000           jnz     0072FF9F
0072FE36   8B06                   mov     eax, [esi]
0072FE38   837CB81000             cmp     dword ptr [eax+edi*4+$10], +$00
0072FE3D   0F8469020000           jz      007300AC
0072FE43   8D04DB                 lea     eax, [ebx+ebx*8]
0072FE46   8B16                   mov     edx, [esi]
0072FE48   8B548210               mov     edx, [edx+eax*4+$10]
0072FE4C   8B45FC                 mov     eax, [ebp-$04]

|
0072FE4F   E8CC370000             call    00733620
0072FE54   8B06                   mov     eax, [esi]
0072FE56   8B44B810               mov     eax, [eax+edi*4+$10]

* Reference to: DB.TDataSet.First(TDataSet);
|
0072FE5A   E8CDB1DBFF             call    004EB02C
0072FE5F   E90F010000             jmp     0072FF73
0072FE64   8B16                   mov     edx, [esi]
0072FE66   8B448214               mov     eax, [edx+eax*4+$14]
0072FE6A   8B7810                 mov     edi, [eax+$10]
0072FE6D   4F                     dec     edi
0072FE6E   85FF                   test    edi, edi
0072FE70   7C3B                   jl      0072FEAD
0072FE72   47                     inc     edi
0072FE73   C745F800000000         mov     dword ptr [ebp-$08], $00000000
0072FE7A   8D04DB                 lea     eax, [ebx+ebx*8]
0072FE7D   8B16                   mov     edx, [esi]
0072FE7F   8B448214               mov     eax, [edx+eax*4+$14]
0072FE83   8D4DC8                 lea     ecx, [ebp-$38]
0072FE86   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0072FE89   E8169AE6FF             call    005998A4
0072FE8E   8B45C8                 mov     eax, [ebp-$38]
0072FE91   8D55F0                 lea     edx, [ebp-$10]

|
0072FE94   E8A7E0FFFF             call    0072DF40
0072FE99   8D4DE8                 lea     ecx, [ebp-$18]
0072FE9C   8B55F0                 mov     edx, [ebp-$10]
0072FE9F   8B45FC                 mov     eax, [ebp-$04]

|
0072FEA2   E835030000             call    007301DC
0072FEA7   FF45F8                 inc     dword ptr [ebp-$08]
0072FEAA   4F                     dec     edi
0072FEAB   75CD                   jnz     0072FE7A
0072FEAD   8D04DB                 lea     eax, [ebx+ebx*8]
0072FEB0   8B16                   mov     edx, [esi]
0072FEB2   807C821800             cmp     byte ptr [edx+eax*4+$18], $00
0072FEB7   742F                   jz      0072FEE8
0072FEB9   8B16                   mov     edx, [esi]
0072FEBB   8B44821C               mov     eax, [edx+eax*4+$1C]
0072FEBF   8D04C0                 lea     eax, [eax+eax*8]
0072FEC2   8B16                   mov     edx, [esi]
0072FEC4   8B448214               mov     eax, [edx+eax*4+$14]
0072FEC8   8D55E8                 lea     edx, [ebp-$18]
0072FECB   52                     push    edx
0072FECC   8D14DB                 lea     edx, [ebx+ebx*8]
0072FECF   8B0E                   mov     ecx, [esi]
0072FED1   8B54911C               mov     edx, [ecx+edx*4+$1C]
0072FED5   8D14D2                 lea     edx, [edx+edx*8]
0072FED8   8B0E                   mov     ecx, [esi]
0072FEDA   8B4C9110               mov     ecx, [ecx+edx*4+$10]
0072FEDE   8BD0                   mov     edx, eax
0072FEE0   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmPreview._PROC_0073035C()
|
0072FEE3   E874040000             call    0073035C
0072FEE8   A1E4A57D00             mov     eax, dword ptr [$007DA5E4]
0072FEED   803800                 cmp     byte ptr [eax], $00
0072FEF0   740F                   jz      0072FF01
0072FEF2   8D4DE8                 lea     ecx, [ebp-$18]
0072FEF5   8BD3                   mov     edx, ebx
0072FEF7   8B45FC                 mov     eax, [ebp-$04]

|
0072FEFA   E809310000             call    00733008
0072FEFF   EB17                   jmp     0072FF18
0072FF01   A17CB57D00             mov     eax, dword ptr [$007DB57C]
0072FF06   803800                 cmp     byte ptr [eax], $00
0072FF09   740D                   jz      0072FF18
0072FF0B   8D4DE8                 lea     ecx, [ebp-$18]
0072FF0E   8BD3                   mov     edx, ebx
0072FF10   8B45FC                 mov     eax, [ebp-$04]

|
0072FF13   E8F0350000             call    00733508
0072FF18   8D04DB                 lea     eax, [ebx+ebx*8]
0072FF1B   8B16                   mov     edx, [esi]
0072FF1D   807C821900             cmp     byte ptr [edx+eax*4+$19], $00
0072FF22   7441                   jz      0072FF65
0072FF24   8D04DB                 lea     eax, [ebx+ebx*8]
0072FF27   8B16                   mov     edx, [esi]
0072FF29   8B448210               mov     eax, [edx+eax*4+$10]
0072FF2D   8B10                   mov     edx, [eax]
0072FF2F   FF9250010000           call    dword ptr [edx+$0150]
0072FF35   8BF8                   mov     edi, eax
0072FF37   8D04DB                 lea     eax, [ebx+ebx*8]
0072FF3A   8B16                   mov     edx, [esi]
0072FF3C   8B448210               mov     eax, [edx+eax*4+$10]
0072FF40   8B10                   mov     edx, [eax]
0072FF42   FF924C010000           call    dword ptr [edx+$014C]
0072FF48   3BF8                   cmp     edi, eax
0072FF4A   7419                   jz      0072FF65
0072FF4C   8B45DC                 mov     eax, [ebp-$24]
0072FF4F   50                     push    eax

* Possible String Reference to: 'txt'
|
0072FF50   68A0017300             push    $007301A0
0072FF55   6A01                   push    $01
0072FF57   8D55E8                 lea     edx, [ebp-$18]
0072FF5A   8B4DE0                 mov     ecx, [ebp-$20]
0072FF5D   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmPreview._PROC_00730528()
|
0072FF60   E8C3050000             call    00730528
0072FF65   8D04DB                 lea     eax, [ebx+ebx*8]
0072FF68   8B16                   mov     edx, [esi]
0072FF6A   8B448210               mov     eax, [edx+eax*4+$10]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0072FF6E   E8D1B3DBFF             call    004EB344
0072FF73   8D04DB                 lea     eax, [ebx+ebx*8]
0072FF76   8B16                   mov     edx, [esi]
0072FF78   8B548210               mov     edx, [edx+eax*4+$10]
0072FF7C   80BAA100000000         cmp     byte ptr [edx+$00A1], $00
0072FF83   0F84DBFEFFFF           jz      0072FE64
0072FF89   8D04DB                 lea     eax, [ebx+ebx*8]
0072FF8C   8B16                   mov     edx, [esi]
0072FF8E   8B548210               mov     edx, [edx+eax*4+$10]
0072FF92   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmPreview._PROC_0073369C()
|
0072FF95   E802370000             call    0073369C
0072FF9A   E90D010000             jmp     007300AC
0072FF9F   8D3CDB                 lea     edi, [ebx+ebx*8]
0072FFA2   8B06                   mov     eax, [esi]
0072FFA4   8D04B8                 lea     eax, [eax+edi*4]

* Possible String Reference to: 'textolivre'
|
0072FFA7   BAA4017300             mov     edx, $007301A4
0072FFAC   33C9                   xor     ecx, ecx
0072FFAE   8A08                   mov     cl, byte ptr [eax]
0072FFB0   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0072FFB1   E89A34CDFF             call    00403450
0072FFB6   755C                   jnz     00730014
0072FFB8   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
0072FFBD   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
0072FFBF   BA8C017300             mov     edx, $0073018C

* Reference to: System.@LStrCmp;
|
0072FFC4   E8DF58CDFF             call    004058A8
0072FFC9   7549                   jnz     00730014
0072FFCB   8B06                   mov     eax, [esi]
0072FFCD   8B44B814               mov     eax, [eax+edi*4+$14]
0072FFD1   8B4010                 mov     eax, [eax+$10]
0072FFD4   48                     dec     eax
0072FFD5   85C0                   test    eax, eax
0072FFD7   0F8CCF000000           jl      007300AC
0072FFDD   40                     inc     eax
0072FFDE   89C7                   mov     edi, eax
0072FFE0   C745F800000000         mov     dword ptr [ebp-$08], $00000000
0072FFE7   8D04DB                 lea     eax, [ebx+ebx*8]
0072FFEA   8B16                   mov     edx, [esi]
0072FFEC   8B448214               mov     eax, [edx+eax*4+$14]
0072FFF0   8D4DF0                 lea     ecx, [ebp-$10]
0072FFF3   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0072FFF6   E8A998E6FF             call    005998A4
0072FFFB   8D4DE8                 lea     ecx, [ebp-$18]
0072FFFE   8B55F0                 mov     edx, [ebp-$10]
00730001   8B45FC                 mov     eax, [ebp-$04]

|
00730004   E8D3010000             call    007301DC
00730009   FF45F8                 inc     dword ptr [ebp-$08]
0073000C   4F                     dec     edi
0073000D   75D8                   jnz     0072FFE7
0073000F   E998000000             jmp     007300AC
00730014   8D3CDB                 lea     edi, [ebx+ebx*8]
00730017   8B06                   mov     eax, [esi]
00730019   8D04B8                 lea     eax, [eax+edi*4]
0073001C   BAB0017300             mov     edx, $007301B0
00730021   33C9                   xor     ecx, ecx
00730023   8A08                   mov     cl, byte ptr [eax]
00730025   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
00730026   E82534CDFF             call    00403450
0073002B   757F                   jnz     007300AC
0073002D   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
00730032   8B00                   mov     eax, [eax]

* Possible String Reference to: 'etiqueta'
|
00730034   BA5C017300             mov     edx, $0073015C

* Reference to: System.@LStrCmp;
|
00730039   E86A58CDFF             call    004058A8
0073003E   756C                   jnz     007300AC
00730040   8B06                   mov     eax, [esi]
00730042   837CB81000             cmp     dword ptr [eax+edi*4+$10], +$00
00730047   7463                   jz      007300AC
00730049   33FF                   xor     edi, edi
0073004B   8D04DB                 lea     eax, [ebx+ebx*8]
0073004E   8B16                   mov     edx, [esi]
00730050   8B448210               mov     eax, [edx+eax*4+$10]

* Reference to: DB.TDataSet.First(TDataSet);
|
00730054   E8D3AFDBFF             call    004EB02C
00730059   EB3F                   jmp     0073009A
0073005B   FF75EC                 push    dword ptr [ebp-$14]
0073005E   FF75E8                 push    dword ptr [ebp-$18]
00730061   8B16                   mov     edx, [esi]
00730063   8D548210               lea     edx, [edx+eax*4+$10]
00730067   52                     push    edx
00730068   8B16                   mov     edx, [esi]
0073006A   8B548214               mov     edx, [edx+eax*4+$14]
0073006E   8B45FC                 mov     eax, [ebp-$04]
00730071   59                     pop     ecx

* Reference to : TFrmPreview._PROC_00732B20()
|
00730072   E8A92A0000             call    00732B20
00730077   47                     inc     edi
00730078   A114B67D00             mov     eax, dword ptr [$007DB614]
0073007D   3B38                   cmp     edi, [eax]
0073007F   7C19                   jl      0073009A
00730081   33C0                   xor     eax, eax
00730083   8945E8                 mov     [ebp-$18], eax
00730086   C745EC0000F03F         mov     dword ptr [ebp-$14], $3FF00000
0073008D   33FF                   xor     edi, edi
0073008F   8D55E8                 lea     edx, [ebp-$18]
00730092   8B45FC                 mov     eax, [ebp-$04]

|
00730095   E83A2D0000             call    00732DD4
0073009A   8D04DB                 lea     eax, [ebx+ebx*8]
0073009D   8B16                   mov     edx, [esi]
0073009F   8B548210               mov     edx, [edx+eax*4+$10]
007300A3   80BAA100000000         cmp     byte ptr [edx+$00A1], $00
007300AA   74AF                   jz      0073005B
007300AC   43                     inc     ebx
007300AD   FF4DD4                 dec     dword ptr [ebp-$2C]
007300B0   0F85D8FCFFFF           jnz     0072FD8E
007300B6   8D4DE8                 lea     ecx, [ebp-$18]
007300B9   8B55DC                 mov     edx, [ebp-$24]
007300BC   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmPreview._PROC_0073086C()
|
007300BF   E8A8070000             call    0073086C
007300C4   FF45F4                 inc     dword ptr [ebp-$0C]
007300C7   FF4DD8                 dec     dword ptr [ebp-$28]
007300CA   0F855BFCFFFF           jnz     0072FD2B
007300D0   B83CF37D00             mov     eax, $007DF33C

* Reference to: System.@Close(TTextRec;TTextRec):Integer;
|
007300D5   E84232CDFF             call    0040331C

|
007300DA   E8CD28CDFF             call    004029AC
007300DF   8D45C4                 lea     eax, [ebp-$3C]
007300E2   8B4DE4                 mov     ecx, [ebp-$1C]

* Possible String Reference to: 'Arquivo gerado!!!!'
|
007300E5   BAC4017300             mov     edx, $007301C4

* Reference to: System.@LStrCat3;
|
007300EA   E8B956CDFF             call    004057A8
007300EF   8B45C4                 mov     eax, [ebp-$3C]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
007300F2   E82D3BD1FF             call    00443C24
007300F7   B808F57D00             mov     eax, $007DF508
007300FC   8B55E4                 mov     edx, [ebp-$1C]

* Reference to: System.@LStrAsg(void;void;void;void);
|
007300FF   E8EC53CDFF             call    004054F0
00730104   33C0                   xor     eax, eax
00730106   5A                     pop     edx
00730107   59                     pop     ecx
00730108   59                     pop     ecx
00730109   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0073010C   6836017300             push    $00730136
00730111   8D45C4                 lea     eax, [ebp-$3C]
00730114   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00730119   E8A253CDFF             call    004054C0
0073011E   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrClr(void;void);
|
00730121   E87653CDFF             call    0040549C
00730126   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
00730129   E86E53CDFF             call    0040549C
0073012E   C3                     ret


* Reference to: System.@HandleFinally;
|
0073012F   E9044CCDFF             jmp     00404D38
00730134   EBDB                   jmp     00730111

****** END
|
00730136   5F                     pop     edi
00730137   5E                     pop     esi
00730138   5B                     pop     ebx
00730139   8BE5                   mov     esp, ebp
0073013B   5D                     pop     ebp
0073013C   C3                     ret

*)
end;

procedure TFrmPreview._PROC_007301DD(Sender : TObject);
begin
(*
007301DD   8BEC                   mov     ebp, esp
007301DF   6A00                   push    $00
007301E1   6A00                   push    $00
007301E3   6A00                   push    $00
007301E5   53                     push    ebx
007301E6   56                     push    esi
007301E7   8BF1                   mov     esi, ecx
007301E9   8955FC                 mov     [ebp-$04], edx
007301EC   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007301EF   E85857CDFF             call    0040594C
007301F4   33C0                   xor     eax, eax
007301F6   55                     push    ebp
007301F7   6833037300             push    $00730333

***** TRY
|
007301FC   64FF30                 push    dword ptr fs:[eax]
007301FF   648920                 mov     fs:[eax], esp
00730202   8D55F4                 lea     edx, [ebp-$0C]
00730205   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A0A38()
|
00730208   E82B080700             call    007A0A38
0073020D   8B55F4                 mov     edx, [ebp-$0C]
00730210   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
00730213   E81C53CDFF             call    00405534
00730218   8B55FC                 mov     edx, [ebp-$04]
0073021B   B848037300             mov     eax, $00730348

* Reference to: System.@LStrPos;
|
00730220   E87B58CDFF             call    00405AA0
00730225   85C0                   test    eax, eax
00730227   0F8EBA000000           jle     007302E7
0073022D   BB01000000             mov     ebx, $00000001
00730232   E99E000000             jmp     007302D5
00730237   8B45FC                 mov     eax, [ebp-$04]
0073023A   807C18FF7E             cmp     byte ptr [eax+ebx-$01], $7E
0073023F   7513                   jnz     00730254
00730241   43                     inc     ebx
00730242   EB01                   jmp     00730245
00730244   43                     inc     ebx
00730245   8B45FC                 mov     eax, [ebp-$04]
00730248   807C18FF7E             cmp     byte ptr [eax+ebx-$01], $7E
0073024D   75F5                   jnz     00730244
0073024F   E980000000             jmp     007302D4
00730254   8D45F8                 lea     eax, [ebp-$08]
00730257   50                     push    eax
00730258   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0073025B   E8FC54CDFF             call    0040575C
00730260   8BC8                   mov     ecx, eax
00730262   41                     inc     ecx
00730263   2BCB                   sub     ecx, ebx
00730265   8BD3                   mov     edx, ebx
00730267   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrCopy;
|
0073026A   E84D57CDFF             call    004059BC
0073026F   8B55F8                 mov     edx, [ebp-$08]
00730272   B848037300             mov     eax, $00730348

* Reference to: System.@LStrPos;
|
00730277   E82458CDFF             call    00405AA0
0073027C   85C0                   test    eax, eax
0073027E   742C                   jz      007302AC
00730280   8B45FC                 mov     eax, [ebp-$04]
00730283   8A5418FF               mov     dl, byte ptr [eax+ebx-$01]
00730287   B83CF37D00             mov     eax, $007DF33C

* Reference to: System.@Write0Char(TTextRec;TTextRec;Char):Pointer;
|
0073028C   E8773ACDFF             call    00403D08

* Reference to: System.@Flush(TTextRec;TTextRec):Integer;
|
00730291   E89E2FCDFF             call    00403234

|
00730296   E81127CDFF             call    004029AC
0073029B   B83CF37D00             mov     eax, $007DF33C

* Reference to: System.@Append(TTextRec;TTextRec):Integer;
|
007302A0   E86F2CCDFF             call    00402F14

|
007302A5   E80227CDFF             call    004029AC
007302AA   EB28                   jmp     007302D4
007302AC   8B55F8                 mov     edx, [ebp-$08]
007302AF   B83CF37D00             mov     eax, $007DF33C

* Reference to: Classes.TStream.WriteComponent(TStream;TComponent);
|
007302B4   E8BF58CDFF             call    00405B78

* Reference to: System.@WriteLn(TTextRec;TTextRec):Pointer;
|
007302B9   E8863ACDFF             call    00403D44

|
007302BE   E8E926CDFF             call    004029AC
007302C3   B83CF37D00             mov     eax, $007DF33C

* Reference to: System.@Append(TTextRec;TTextRec):Integer;
|
007302C8   E8472CCDFF             call    00402F14

|
007302CD   E8DA26CDFF             call    004029AC
007302D2   EB39                   jmp     0073030D
007302D4   43                     inc     ebx
007302D5   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
007302D8   E87F54CDFF             call    0040575C
007302DD   3BD8                   cmp     ebx, eax
007302DF   0F8E52FFFFFF           jle     00730237
007302E5   EB26                   jmp     0073030D
007302E7   8B55FC                 mov     edx, [ebp-$04]
007302EA   B83CF37D00             mov     eax, $007DF33C

* Reference to: Classes.TStream.WriteComponent(TStream;TComponent);
|
007302EF   E88458CDFF             call    00405B78

* Reference to: System.@WriteLn(TTextRec;TTextRec):Pointer;
|
007302F4   E84B3ACDFF             call    00403D44

|
007302F9   E8AE26CDFF             call    004029AC
007302FE   B83CF37D00             mov     eax, $007DF33C

* Reference to: System.@Append(TTextRec;TTextRec):Integer;
|
00730303   E80C2CCDFF             call    00402F14

|
00730308   E89F26CDFF             call    004029AC
0073030D   DD06                   fld     qword ptr [esi]
0073030F   D8054C037300           fadd    dword ptr [$0073034C]
00730315   DD1E                   fstp    qword ptr [esi]
00730317   9B                     wait
00730318   33C0                   xor     eax, eax
0073031A   5A                     pop     edx
0073031B   59                     pop     ecx
0073031C   59                     pop     ecx
0073031D   648910                 mov     fs:[eax], edx

****** FINALLY
|
00730320   683A037300             push    $0073033A
00730325   8D45F4                 lea     eax, [ebp-$0C]
00730328   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0073032D   E88E51CDFF             call    004054C0
00730332   C3                     ret


* Reference to: System.@HandleFinally;
|
00730333   E9004ACDFF             jmp     00404D38
00730338   EBEB                   jmp     00730325

****** END
|
0073033A   5E                     pop     esi
0073033B   5B                     pop     ebx
0073033C   8BE5                   mov     esp, ebp
0073033E   5D                     pop     ebp
0073033F   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0073035C(Sender : TObject);
begin
(*
0073035C   55                     push    ebp
0073035D   8BEC                   mov     ebp, esp
0073035F   83C4EC                 add     esp, -$14
00730362   53                     push    ebx
00730363   56                     push    esi
00730364   57                     push    edi
00730365   33DB                   xor     ebx, ebx
00730367   895DEC                 mov     [ebp-$14], ebx
0073036A   895DF4                 mov     [ebp-$0C], ebx
0073036D   894DF8                 mov     [ebp-$08], ecx
00730370   8BFA                   mov     edi, edx
00730372   8945FC                 mov     [ebp-$04], eax
00730375   33C0                   xor     eax, eax
00730377   55                     push    ebp
00730378   687B047300             push    $0073047B

***** TRY
|
0073037D   64FF30                 push    dword ptr fs:[eax]
00730380   648920                 mov     fs:[eax], esp
00730383   837F1000               cmp     dword ptr [edi+$10], +$00
00730387   0F8ED0000000           jle     0073045D
0073038D   837DF800               cmp     dword ptr [ebp-$08], +$00
00730391   0F84C6000000           jz      0073045D
00730397   33C0                   xor     eax, eax
00730399   8945F0                 mov     [ebp-$10], eax
0073039C   8B45F8                 mov     eax, [ebp-$08]

* Reference to: DB.TDataSet.First(TDataSet);
|
0073039F   E888ACDBFF             call    004EB02C
007303A4   EB5D                   jmp     00730403
007303A6   8B5F10                 mov     ebx, [edi+$10]
007303A9   4B                     dec     ebx
007303AA   85DB                   test    ebx, ebx
007303AC   7C2C                   jl      007303DA
007303AE   43                     inc     ebx
007303AF   33F6                   xor     esi, esi
007303B1   8D4DEC                 lea     ecx, [ebp-$14]
007303B4   8BD6                   mov     edx, esi
007303B6   8BC7                   mov     eax, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
007303B8   E8E794E6FF             call    005998A4
007303BD   8B45EC                 mov     eax, [ebp-$14]
007303C0   8D55F4                 lea     edx, [ebp-$0C]

|
007303C3   E878DBFFFF             call    0072DF40
007303C8   8B4D08                 mov     ecx, [ebp+$08]
007303CB   8B55F4                 mov     edx, [ebp-$0C]
007303CE   8B45FC                 mov     eax, [ebp-$04]

|
007303D1   E806FEFFFF             call    007301DC
007303D6   46                     inc     esi
007303D7   4B                     dec     ebx
007303D8   75D7                   jnz     007303B1
007303DA   8B45F8                 mov     eax, [ebp-$08]

* Reference to: DB.TDataSet.Next(TDataSet);
|
007303DD   E862AFDBFF             call    004EB344
007303E2   FF45F0                 inc     dword ptr [ebp-$10]
007303E5   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
007303EA   833800                 cmp     dword ptr [eax], +$00
007303ED   7E14                   jle     00730403
007303EF   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
007303F4   8B00                   mov     eax, [eax]
007303F6   8B1570B17D00           mov     edx, [$007DB170]
007303FC   2B02                   sub     eax, dword ptr [edx]
007303FE   3B45F0                 cmp     eax, [ebp-$10]
00730401   7E5A                   jle     0073045D
00730403   8B45F8                 mov     eax, [ebp-$08]
00730406   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0073040D   7497                   jz      007303A6
0073040F   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
00730414   833800                 cmp     dword ptr [eax], +$00
00730417   7E44                   jle     0073045D
00730419   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0073041E   8B00                   mov     eax, [eax]
00730420   8B1570B17D00           mov     edx, [$007DB170]
00730426   2B02                   sub     eax, dword ptr [edx]
00730428   3B45F0                 cmp     eax, [ebp-$10]
0073042B   7E30                   jle     0073045D
0073042D   EB1A                   jmp     00730449
0073042F   8B5F10                 mov     ebx, [edi+$10]
00730432   4B                     dec     ebx
00730433   85DB                   test    ebx, ebx
00730435   7C0F                   jl      00730446
00730437   43                     inc     ebx
00730438   8B5508                 mov     edx, [ebp+$08]
0073043B   8B45FC                 mov     eax, [ebp-$04]

|
0073043E   E88D130000             call    007317D0
00730443   4B                     dec     ebx
00730444   75F2                   jnz     00730438
00730446   FF45F0                 inc     dword ptr [ebp-$10]
00730449   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
0073044E   8B00                   mov     eax, [eax]
00730450   8B1570B17D00           mov     edx, [$007DB170]
00730456   2B02                   sub     eax, dword ptr [edx]
00730458   3B45F0                 cmp     eax, [ebp-$10]
0073045B   7FD2                   jnle    0073042F
0073045D   33C0                   xor     eax, eax
0073045F   5A                     pop     edx
00730460   59                     pop     ecx
00730461   59                     pop     ecx
00730462   648910                 mov     fs:[eax], edx

****** FINALLY
|
00730465   6882047300             push    $00730482
0073046A   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0073046D   E82A50CDFF             call    0040549C
00730472   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
00730475   E82250CDFF             call    0040549C
0073047A   C3                     ret


* Reference to: System.@HandleFinally;
|
0073047B   E9B848CDFF             jmp     00404D38
00730480   EBE8                   jmp     0073046A

****** END
|
00730482   5F                     pop     edi
00730483   5E                     pop     esi
00730484   5B                     pop     ebx
00730485   8BE5                   mov     esp, ebp
00730487   5D                     pop     ebp
00730488   C20400                 ret     $0004

*)
end;

procedure TFrmPreview._PROC_0073048C(Sender : TObject);
begin
(*
0073048C   55                     push    ebp
0073048D   8BEC                   mov     ebp, esp
0073048F   83C4F0                 add     esp, -$10
00730492   53                     push    ebx
00730493   56                     push    esi
00730494   57                     push    edi
00730495   33C9                   xor     ecx, ecx
00730497   894DF8                 mov     [ebp-$08], ecx
0073049A   8BFA                   mov     edi, edx
0073049C   8945FC                 mov     [ebp-$04], eax
0073049F   33C0                   xor     eax, eax
007304A1   55                     push    ebp
007304A2   681A057300             push    $0073051A

***** TRY
|
007304A7   64FF30                 push    dword ptr fs:[eax]
007304AA   648920                 mov     fs:[eax], esp
007304AD   837F1000               cmp     dword ptr [edi+$10], +$00
007304B1   7E51                   jle     00730504
007304B3   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
007304B8   33D2                   xor     edx, edx
007304BA   8910                   mov     [eax], edx
007304BC   895004                 mov     [eax+$04], edx
007304BF   33C0                   xor     eax, eax
007304C1   8945F0                 mov     [ebp-$10], eax
007304C4   C745F40000F03F         mov     dword ptr [ebp-$0C], $3FF00000
007304CB   8B5F10                 mov     ebx, [edi+$10]
007304CE   4B                     dec     ebx
007304CF   85DB                   test    ebx, ebx
007304D1   7C21                   jl      007304F4
007304D3   43                     inc     ebx
007304D4   33F6                   xor     esi, esi
007304D6   8D4DF8                 lea     ecx, [ebp-$08]
007304D9   8BD6                   mov     edx, esi
007304DB   8BC7                   mov     eax, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
007304DD   E8C293E6FF             call    005998A4
007304E2   8D4DF0                 lea     ecx, [ebp-$10]
007304E5   8B55F8                 mov     edx, [ebp-$08]
007304E8   8B45FC                 mov     eax, [ebp-$04]

|
007304EB   E8ECFCFFFF             call    007301DC
007304F0   46                     inc     esi
007304F1   4B                     dec     ebx
007304F2   75E2                   jnz     007304D6
007304F4   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
007304F9   8B55F0                 mov     edx, [ebp-$10]
007304FC   8910                   mov     [eax], edx
007304FE   8B55F4                 mov     edx, [ebp-$0C]
00730501   895004                 mov     [eax+$04], edx
00730504   33C0                   xor     eax, eax
00730506   5A                     pop     edx
00730507   59                     pop     ecx
00730508   59                     pop     ecx
00730509   648910                 mov     fs:[eax], edx

****** FINALLY
|
0073050C   6821057300             push    $00730521
00730511   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
00730514   E8834FCDFF             call    0040549C
00730519   C3                     ret


* Reference to: System.@HandleFinally;
|
0073051A   E91948CDFF             jmp     00404D38
0073051F   EBF0                   jmp     00730511

****** END
|
00730521   5F                     pop     edi
00730522   5E                     pop     esi
00730523   5B                     pop     ebx
00730524   8BE5                   mov     esp, ebp
00730526   5D                     pop     ebp
00730527   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00730528(Sender : TObject);
begin
(*
00730528   55                     push    ebp
00730529   8BEC                   mov     ebp, esp
0073052B   51                     push    ecx
0073052C   53                     push    ebx
0073052D   56                     push    esi
0073052E   57                     push    edi
0073052F   8BF9                   mov     edi, ecx
00730531   8BF2                   mov     esi, edx
00730533   8BD8                   mov     ebx, eax
00730535   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00730538   E80F54CDFF             call    0040594C
0073053D   33C0                   xor     eax, eax
0073053F   55                     push    ebp
00730540   68A1067300             push    $007306A1

***** TRY
|
00730545   64FF30                 push    dword ptr fs:[eax]
00730548   648920                 mov     fs:[eax], esp
0073054B   8B450C                 mov     eax, [ebp+$0C]

* Possible String Reference to: 'tela'
|
0073054E   BAB8067300             mov     edx, $007306B8

* Reference to: System.@LStrCmp;
|
00730553   E85053CDFF             call    004058A8
00730558   7556                   jnz     007305B0
0073055A   8BCE                   mov     ecx, esi
0073055C   8B5510                 mov     edx, [ebp+$10]
0073055F   8BC3                   mov     eax, ebx

|
00730561   E88E010000             call    007306F4
00730566   807D0800               cmp     byte ptr [ebp+$08], $00
0073056A   0F841B010000           jz      0073068B
00730570   A138F37D00             mov     eax, dword ptr [$007DF338]

* Reference to control lbTitulo : N.A.
|
00730575   8B80F8020000           mov     eax, [eax+$02F8]
0073057B   8B10                   mov     edx, [eax]

* Possible reference to virtual method TN.A..OFFS_00D4
|
0073057D   FF92D4000000           call    dword ptr [edx+$00D4]
00730583   A138F37D00             mov     eax, dword ptr [$007DF338]

* Reference to control lbTitulo : N.A.
|
00730588   8B80F8020000           mov     eax, [eax+$02F8]

* Reference to : TGmPreview._PROC_0071C1A4()
|
0073058E   E811BCFEFF             call    0071C1A4
00730593   8BD7                   mov     edx, edi
00730595   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0072CF3C()
|
00730597   E8A0C9FFFF             call    0072CF3C
0073059C   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
007305A1   8B10                   mov     edx, [eax]
007305A3   8916                   mov     [esi], edx
007305A5   8B5004                 mov     edx, [eax+$04]
007305A8   895604                 mov     [esi+$04], edx
007305AB   E9DB000000             jmp     0073068B
007305B0   8B450C                 mov     eax, [ebp+$0C]

* Possible String Reference to: 'dos'
|
007305B3   BAC8067300             mov     edx, $007306C8

* Reference to: System.@LStrCmp;
|
007305B8   E8EB52CDFF             call    004058A8
007305BD   0F8595000000           jnz     00730658
007305C3   8BCE                   mov     ecx, esi
007305C5   8B5510                 mov     edx, [ebp+$10]
007305C8   8BC3                   mov     eax, ebx

|
007305CA   E805020000             call    007307D4
007305CF   807D0800               cmp     byte ptr [ebp+$08], $00
007305D3   0F84B2000000           jz      0073068B
007305D9   A1B4AC7D00             mov     eax, dword ptr [$007DACB4]
007305DE   8B00                   mov     eax, [eax]
007305E0   BAD4067300             mov     edx, $007306D4

* Reference to: System.@LStrCmp;
|
007305E5   E8BE52CDFF             call    004058A8
007305EA   7509                   jnz     007305F5
007305EC   8BC3                   mov     eax, ebx

|
007305EE   E8611B0000             call    00732154
007305F3   EB56                   jmp     0073064B
007305F5   A1B4AC7D00             mov     eax, dword ptr [$007DACB4]
007305FA   8B00                   mov     eax, [eax]

* Possible String Reference to: 'NC'
|
007305FC   BAE0067300             mov     edx, $007306E0

* Reference to: System.@LStrCmp;
|
00730601   E8A252CDFF             call    004058A8
00730606   7543                   jnz     0073064B
00730608   A118B77D00             mov     eax, dword ptr [$007DB718]
0073060D   DB00                   fild    dword ptr [eax]
0073060F   DC1E                   fcomp   qword ptr [esi]
00730611   DFE0                   fstsw   ax
00730613   9E                     sahf
00730614   7235                   jb      0073064B
00730616   EB1C                   jmp     00730634
00730618   DD06                   fld     qword ptr [esi]
0073061A   D805E4067300           fadd    dword ptr [$007306E4]
00730620   DD1E                   fstp    qword ptr [esi]
00730622   9B                     wait
00730623   A178B47D00             mov     eax, dword ptr [$007DB478]
00730628   8B00                   mov     eax, [eax]
0073062A   8B4068                 mov     eax, [eax+$68]
0073062D   33D2                   xor     edx, edx

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0073062F   E8A0A2E6FF             call    0059A8D4
00730634   A118B77D00             mov     eax, dword ptr [$007DB718]
00730639   8B00                   mov     eax, [eax]
0073063B   83C002                 add     eax, +$02
0073063E   8945FC                 mov     [ebp-$04], eax
00730641   DB45FC                 fild    dword ptr [ebp-$04]
00730644   DC1E                   fcomp   qword ptr [esi]
00730646   DFE0                   fstsw   ax
00730648   9E                     sahf
00730649   73CD                   jnb     00730618
0073064B   8BCE                   mov     ecx, esi
0073064D   8BD7                   mov     edx, edi
0073064F   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0072FB64()
|
00730651   E80EF5FFFF             call    0072FB64
00730656   EB33                   jmp     0073068B
00730658   8B450C                 mov     eax, [ebp+$0C]

* Possible String Reference to: 'txt'
|
0073065B   BAF0067300             mov     edx, $007306F0

* Reference to: System.@LStrCmp;
|
00730660   E84352CDFF             call    004058A8
00730665   7524                   jnz     0073068B
00730667   8BCE                   mov     ecx, esi
00730669   8B5510                 mov     edx, [ebp+$10]
0073066C   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0073086C()
|
0073066E   E8F9010000             call    0073086C
00730673   8BD7                   mov     edx, edi
00730675   8BC3                   mov     eax, ebx

* Reference to : TFrmPreview._PROC_0073048C()
|
00730677   E810FEFFFF             call    0073048C
0073067C   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
00730681   8B10                   mov     edx, [eax]
00730683   8916                   mov     [esi], edx
00730685   8B5004                 mov     edx, [eax+$04]
00730688   895604                 mov     [esi+$04], edx
0073068B   33C0                   xor     eax, eax
0073068D   5A                     pop     edx
0073068E   59                     pop     ecx
0073068F   59                     pop     ecx
00730690   648910                 mov     fs:[eax], edx

****** FINALLY
|
00730693   68A8067300             push    $007306A8
00730698   8D450C                 lea     eax, [ebp+$0C]

* Reference to: System.@LStrClr(void;void);
|
0073069B   E8FC4DCDFF             call    0040549C
007306A0   C3                     ret


* Reference to: System.@HandleFinally;
|
007306A1   E99246CDFF             jmp     00404D38
007306A6   EBF0                   jmp     00730698

****** END
|
007306A8   5F                     pop     edi
007306A9   5E                     pop     esi
007306AA   5B                     pop     ebx
007306AB   59                     pop     ecx
007306AC   5D                     pop     ebp
007306AD   C20C00                 ret     $000C

*)
end;

procedure TFrmPreview._PROC_007306F5(Sender : TObject);
begin
(*
007306F5   8BEC                   mov     ebp, esp
007306F7   83C4D8                 add     esp, -$28
007306FA   53                     push    ebx
007306FB   56                     push    esi
007306FC   57                     push    edi
007306FD   33DB                   xor     ebx, ebx
007306FF   895DD8                 mov     [ebp-$28], ebx
00730702   895DF4                 mov     [ebp-$0C], ebx
00730705   894DF8                 mov     [ebp-$08], ecx
00730708   8955FC                 mov     [ebp-$04], edx
0073070B   8BF8                   mov     edi, eax
0073070D   33C0                   xor     eax, eax
0073070F   55                     push    ebp

* Possible String Reference to: 'È|EÕˇÎË_^[ãÂ]√'
|
00730710   68B7077300             push    $007307B7

***** TRY
|
00730715   64FF30                 push    dword ptr fs:[eax]
00730718   648920                 mov     fs:[eax], esp
0073071B   8B45FC                 mov     eax, [ebp-$04]
0073071E   83781000               cmp     dword ptr [eax+$10], +$00
00730722   7E75                   jle     00730799
00730724   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
00730729   33D2                   xor     edx, edx
0073072B   8910                   mov     [eax], edx
0073072D   895004                 mov     [eax+$04], edx
00730730   8B87F8020000           mov     eax, [edi+$02F8]
00730736   8B8024020000           mov     eax, [eax+$0224]
0073073C   BAD0077300             mov     edx, $007307D0

|
00730741   E8C615FEFF             call    00711D0C

|
00730746   E84967FEFF             call    00716E94
0073074B   DD5DE8                 fstp    qword ptr [ebp-$18]
0073074E   9B                     wait
0073074F   C745DC05000000         mov     dword ptr [ebp-$24], $00000005
00730756   8B45FC                 mov     eax, [ebp-$04]
00730759   8B5810                 mov     ebx, [eax+$10]
0073075C   4B                     dec     ebx
0073075D   85DB                   test    ebx, ebx
0073075F   7C38                   jl      00730799
00730761   43                     inc     ebx
00730762   33F6                   xor     esi, esi
00730764   8D4DD8                 lea     ecx, [ebp-$28]
00730767   8BD6                   mov     edx, esi
00730769   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0073076C   E83391E6FF             call    005998A4
00730771   8B45D8                 mov     eax, [ebp-$28]
00730774   8D55F4                 lea     edx, [ebp-$0C]

|
00730777   E8C4D7FFFF             call    0072DF40
0073077C   8D45E0                 lea     eax, [ebp-$20]
0073077F   50                     push    eax
00730780   8B45F8                 mov     eax, [ebp-$08]
00730783   50                     push    eax
00730784   8B45DC                 mov     eax, [ebp-$24]
00730787   50                     push    eax
00730788   8D4DE8                 lea     ecx, [ebp-$18]
0073078B   8B55F4                 mov     edx, [ebp-$0C]
0073078E   8BC7                   mov     eax, edi

|
00730790   E857D2FFFF             call    0072D9EC
00730795   46                     inc     esi
00730796   4B                     dec     ebx
00730797   75CB                   jnz     00730764
00730799   33C0                   xor     eax, eax
0073079B   5A                     pop     edx
0073079C   59                     pop     ecx
0073079D   59                     pop     ecx
0073079E   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
007307A1   68BE077300             push    $007307BE
007307A6   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrClr(void;void);
|
007307A9   E8EE4CCDFF             call    0040549C
007307AE   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
007307B1   E8E64CCDFF             call    0040549C
007307B6   C3                     ret


* Reference to: System.@HandleFinally;
|
007307B7   E97C45CDFF             jmp     00404D38
007307BC   EBE8                   jmp     007307A6

****** END
|
007307BE   5F                     pop     edi
007307BF   5E                     pop     esi
007307C0   5B                     pop     ebx
007307C1   8BE5                   mov     esp, ebp
007307C3   5D                     pop     ebp
007307C4   C3                     ret

*)
end;

procedure TFrmPreview._PROC_007307D5(Sender : TObject);
begin
(*
007307D5   8BEC                   mov     ebp, esp
007307D7   83C4F0                 add     esp, -$10
007307DA   53                     push    ebx
007307DB   56                     push    esi
007307DC   57                     push    edi
007307DD   33DB                   xor     ebx, ebx
007307DF   895DF0                 mov     [ebp-$10], ebx
007307E2   895DF4                 mov     [ebp-$0C], ebx
007307E5   894DF8                 mov     [ebp-$08], ecx
007307E8   8BFA                   mov     edi, edx
007307EA   8945FC                 mov     [ebp-$04], eax
007307ED   33C0                   xor     eax, eax
007307EF   55                     push    ebp
007307F0   685C087300             push    $0073085C

***** TRY
|
007307F5   64FF30                 push    dword ptr fs:[eax]
007307F8   648920                 mov     fs:[eax], esp
007307FB   837F1000               cmp     dword ptr [edi+$10], +$00
007307FF   7E40                   jle     00730841
00730801   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
00730806   33D2                   xor     edx, edx
00730808   8910                   mov     [eax], edx
0073080A   895004                 mov     [eax+$04], edx
0073080D   8B5F10                 mov     ebx, [edi+$10]
00730810   4B                     dec     ebx
00730811   85DB                   test    ebx, ebx
00730813   7C2C                   jl      00730841
00730815   43                     inc     ebx
00730816   33F6                   xor     esi, esi
00730818   8D4DF0                 lea     ecx, [ebp-$10]
0073081B   8BD6                   mov     edx, esi
0073081D   8BC7                   mov     eax, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0073081F   E88090E6FF             call    005998A4
00730824   8B45F0                 mov     eax, [ebp-$10]
00730827   8D55F4                 lea     edx, [ebp-$0C]

|
0073082A   E811D7FFFF             call    0072DF40
0073082F   8B4DF8                 mov     ecx, [ebp-$08]
00730832   8B55F4                 mov     edx, [ebp-$0C]
00730835   8B45FC                 mov     eax, [ebp-$04]

|
00730838   E8D7EFFFFF             call    0072F814
0073083D   46                     inc     esi
0073083E   4B                     dec     ebx
0073083F   75D7                   jnz     00730818
00730841   33C0                   xor     eax, eax
00730843   5A                     pop     edx
00730844   59                     pop     ecx
00730845   59                     pop     ecx
00730846   648910                 mov     fs:[eax], edx

****** FINALLY
|
00730849   6863087300             push    $00730863
0073084E   8D45F0                 lea     eax, [ebp-$10]
00730851   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00730856   E8654CCDFF             call    004054C0
0073085B   C3                     ret


* Reference to: System.@HandleFinally;
|
0073085C   E9D744CDFF             jmp     00404D38
00730861   EBEB                   jmp     0073084E

****** END
|
00730863   5F                     pop     edi
00730864   5E                     pop     esi
00730865   5B                     pop     ebx
00730866   8BE5                   mov     esp, ebp
00730868   5D                     pop     ebp
00730869   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0073086C(Sender : TObject);
begin
(*
0073086C   55                     push    ebp
0073086D   8BEC                   mov     ebp, esp
0073086F   83C4F0                 add     esp, -$10
00730872   53                     push    ebx
00730873   56                     push    esi
00730874   57                     push    edi
00730875   33DB                   xor     ebx, ebx
00730877   895DF0                 mov     [ebp-$10], ebx
0073087A   895DF4                 mov     [ebp-$0C], ebx
0073087D   894DF8                 mov     [ebp-$08], ecx
00730880   8BFA                   mov     edi, edx
00730882   8945FC                 mov     [ebp-$04], eax
00730885   33C0                   xor     eax, eax
00730887   55                     push    ebp
00730888   68F4087300             push    $007308F4

***** TRY
|
0073088D   64FF30                 push    dword ptr fs:[eax]
00730890   648920                 mov     fs:[eax], esp
00730893   837F1000               cmp     dword ptr [edi+$10], +$00
00730897   7E40                   jle     007308D9
00730899   A1F4A17D00             mov     eax, dword ptr [$007DA1F4]
0073089E   33D2                   xor     edx, edx
007308A0   8910                   mov     [eax], edx
007308A2   895004                 mov     [eax+$04], edx
007308A5   8B5F10                 mov     ebx, [edi+$10]
007308A8   4B                     dec     ebx
007308A9   85DB                   test    ebx, ebx
007308AB   7C2C                   jl      007308D9
007308AD   43                     inc     ebx
007308AE   33F6                   xor     esi, esi
007308B0   8D4DF0                 lea     ecx, [ebp-$10]
007308B3   8BD6                   mov     edx, esi
007308B5   8BC7                   mov     eax, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
007308B7   E8E88FE6FF             call    005998A4
007308BC   8B45F0                 mov     eax, [ebp-$10]
007308BF   8D55F4                 lea     edx, [ebp-$0C]

|
007308C2   E879D6FFFF             call    0072DF40
007308C7   8B4DF8                 mov     ecx, [ebp-$08]
007308CA   8B55F4                 mov     edx, [ebp-$0C]
007308CD   8B45FC                 mov     eax, [ebp-$04]

|
007308D0   E807F9FFFF             call    007301DC
007308D5   46                     inc     esi
007308D6   4B                     dec     ebx
007308D7   75D7                   jnz     007308B0
007308D9   33C0                   xor     eax, eax
007308DB   5A                     pop     edx
007308DC   59                     pop     ecx
007308DD   59                     pop     ecx
007308DE   648910                 mov     fs:[eax], edx

****** FINALLY
|
007308E1   68FB087300             push    $007308FB
007308E6   8D45F0                 lea     eax, [ebp-$10]
007308E9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007308EE   E8CD4BCDFF             call    004054C0
007308F3   C3                     ret


* Reference to: System.@HandleFinally;
|
007308F4   E93F44CDFF             jmp     00404D38
007308F9   EBEB                   jmp     007308E6

****** END
|
007308FB   5F                     pop     edi
007308FC   5E                     pop     esi
007308FD   5B                     pop     ebx
007308FE   8BE5                   mov     esp, ebp
00730900   5D                     pop     ebp
00730901   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00730904(Sender : TObject);
begin
(*
00730904   55                     push    ebp
00730905   8BEC                   mov     ebp, esp
00730907   51                     push    ecx
00730908   B913000000             mov     ecx, $00000013
0073090D   6A00                   push    $00
0073090F   6A00                   push    $00
00730911   49                     dec     ecx
00730912   75F9                   jnz     0073090D
00730914   874DFC                 xchg    [ebp-$04], ecx
00730917   53                     push    ebx
00730918   56                     push    esi
00730919   57                     push    edi
0073091A   894DFC                 mov     [ebp-$04], ecx
0073091D   8BFA                   mov     edi, edx
0073091F   8BF0                   mov     esi, eax
00730921   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00730924   E82350CDFF             call    0040594C
00730929   33C0                   xor     eax, eax
0073092B   55                     push    ebp

* Possible String Reference to: 'È©=ÕˇÎÿã√_^[ãÂ]√'
|
0073092C   688A0F7300             push    $00730F8A

***** TRY
|
00730931   64FF30                 push    dword ptr fs:[eax]
00730934   648920                 mov     fs:[eax], esp
00730937   33DB                   xor     ebx, ebx
00730939   A09C0F7300             mov     al, byte ptr [$00730F9C]
0073093E   50                     push    eax
0073093F   8D45EC                 lea     eax, [ebp-$14]
00730942   8BD7                   mov     edx, edi
00730944   B1FC                   mov     cl, $FC

|
00730946   E82581CEFF             call    00418A70
0073094B   8D4DEC                 lea     ecx, [ebp-$14]
0073094E   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730953   8B00                   mov     eax, [eax]
00730955   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'CodImpressora'
|
0073095B   BAA80F7300             mov     edx, $00730FA8

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
00730960   E8937A0700             call    007A83F8
00730965   84C0                   test    al, al
00730967   0F84EF050000           jz      00730F5C
0073096D   8D55E4                 lea     edx, [ebp-$1C]
00730970   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
00730973   E8DCF10700             call    007AFB54
00730978   8B4DE4                 mov     ecx, [ebp-$1C]
0073097B   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'CodFonte = '
|
0073097E   BAC00F7300             mov     edx, $00730FC0

* Reference to: System.@LStrCat3;
|
00730983   E8204ECDFF             call    004057A8
00730988   8B45E8                 mov     eax, [ebp-$18]
0073098B   50                     push    eax
0073098C   6A00                   push    $00
0073098E   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730993   8B00                   mov     eax, [eax]
00730995   8B80F4000000           mov     eax, [eax+$00F4]
0073099B   B9D40F7300             mov     ecx, $00730FD4

* Possible String Reference to: 'RELFONTE'
|
007309A0   BAE00F7300             mov     edx, $00730FE0

|
007309A5   E8127D0700             call    007A86BC
007309AA   84C0                   test    al, al
007309AC   0F84AA050000           jz      00730F5C
007309B2   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007309B7   8B00                   mov     eax, [eax]
007309B9   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'ParaSublinhado'
|
007309BF   BAF40F7300             mov     edx, $00730FF4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007309C4   E83B92DBFF             call    004E9C04
007309C9   8D55E0                 lea     edx, [ebp-$20]
007309CC   8B08                   mov     ecx, [eax]
007309CE   FF5160                 call    dword ptr [ecx+$60]
007309D1   8B55E0                 mov     edx, [ebp-$20]
007309D4   8BC6                   mov     eax, esi

|
007309D6   E829080000             call    00731204
007309DB   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007309E0   8B00                   mov     eax, [eax]
007309E2   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'ParaComprimido'
|
007309E8   BA0C107300             mov     edx, $0073100C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007309ED   E81292DBFF             call    004E9C04
007309F2   8D55DC                 lea     edx, [ebp-$24]
007309F5   8B08                   mov     ecx, [eax]
007309F7   FF5160                 call    dword ptr [ecx+$60]
007309FA   8B55DC                 mov     edx, [ebp-$24]
007309FD   8BC6                   mov     eax, esi

|
007309FF   E800080000             call    00731204
00730A04   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730A09   8B00                   mov     eax, [eax]
00730A0B   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'ParaRomano'
|
00730A11   BA24107300             mov     edx, $00731024

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730A16   E8E991DBFF             call    004E9C04
00730A1B   8D55D8                 lea     edx, [ebp-$28]
00730A1E   8B08                   mov     ecx, [eax]
00730A20   FF5160                 call    dword ptr [ecx+$60]
00730A23   8B55D8                 mov     edx, [ebp-$28]
00730A26   8BC6                   mov     eax, esi

|
00730A28   E8D7070000             call    00731204
00730A2D   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730A32   8B00                   mov     eax, [eax]
00730A34   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'ParaExpandido'
|
00730A3A   BA38107300             mov     edx, $00731038

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730A3F   E8C091DBFF             call    004E9C04
00730A44   8D55D4                 lea     edx, [ebp-$2C]
00730A47   8B08                   mov     ecx, [eax]
00730A49   FF5160                 call    dword ptr [ecx+$60]
00730A4C   8B55D4                 mov     edx, [ebp-$2C]
00730A4F   8BC6                   mov     eax, esi

|
00730A51   E8AE070000             call    00731204
00730A56   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730A5B   8B00                   mov     eax, [eax]
00730A5D   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'ParaIndice'
|
00730A63   BA50107300             mov     edx, $00731050

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730A68   E89791DBFF             call    004E9C04
00730A6D   8D55D0                 lea     edx, [ebp-$30]
00730A70   8B08                   mov     ecx, [eax]
00730A72   FF5160                 call    dword ptr [ecx+$60]
00730A75   8B55D0                 mov     edx, [ebp-$30]
00730A78   8BC6                   mov     eax, esi

|
00730A7A   E885070000             call    00731204
00730A7F   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730A84   8B00                   mov     eax, [eax]
00730A86   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'ParaExpoente'
|
00730A8C   BA64107300             mov     edx, $00731064

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730A91   E86E91DBFF             call    004E9C04
00730A96   8D55CC                 lea     edx, [ebp-$34]
00730A99   8B08                   mov     ecx, [eax]
00730A9B   FF5160                 call    dword ptr [ecx+$60]
00730A9E   8B55CC                 mov     edx, [ebp-$34]
00730AA1   8BC6                   mov     eax, esi

|
00730AA3   E85C070000             call    00731204
00730AA8   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730AAD   8B00                   mov     eax, [eax]
00730AAF   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'ParaItalico'
|
00730AB5   BA7C107300             mov     edx, $0073107C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730ABA   E84591DBFF             call    004E9C04
00730ABF   8D55C8                 lea     edx, [ebp-$38]
00730AC2   8B08                   mov     ecx, [eax]
00730AC4   FF5160                 call    dword ptr [ecx+$60]
00730AC7   8B55C8                 mov     edx, [ebp-$38]
00730ACA   8BC6                   mov     eax, esi

|
00730ACC   E833070000             call    00731204
00730AD1   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730AD6   8B00                   mov     eax, [eax]
00730AD8   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Draft'
|
00730ADE   BA90107300             mov     edx, $00731090

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730AE3   E81C91DBFF             call    004E9C04
00730AE8   8D55C4                 lea     edx, [ebp-$3C]
00730AEB   8B08                   mov     ecx, [eax]
00730AED   FF5160                 call    dword ptr [ecx+$60]
00730AF0   8B55C4                 mov     edx, [ebp-$3C]
00730AF3   8BC6                   mov     eax, esi

|
00730AF5   E80A070000             call    00731204
00730AFA   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730AFF   8B00                   mov     eax, [eax]
00730B01   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'LetraDos'
|
00730B07   BAA0107300             mov     edx, $007310A0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730B0C   E8F390DBFF             call    004E9C04
00730B11   8D55C0                 lea     edx, [ebp-$40]
00730B14   8B08                   mov     ecx, [eax]
00730B16   FF5160                 call    dword ptr [ecx+$60]
00730B19   8B45C0                 mov     eax, [ebp-$40]
00730B1C   BAB4107300             mov     edx, $007310B4

* Reference to: System.@LStrCmp;
|
00730B21   E8824DCDFF             call    004058A8
00730B26   752B                   jnz     00730B53
00730B28   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730B2D   8B00                   mov     eax, [eax]
00730B2F   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Draft'
|
00730B35   BA90107300             mov     edx, $00731090

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730B3A   E8C590DBFF             call    004E9C04
00730B3F   8D55BC                 lea     edx, [ebp-$44]
00730B42   8B08                   mov     ecx, [eax]
00730B44   FF5160                 call    dword ptr [ecx+$60]
00730B47   8B55BC                 mov     edx, [ebp-$44]
00730B4A   8BC6                   mov     eax, esi

|
00730B4C   E8B3060000             call    00731204
00730B51   EB57                   jmp     00730BAA
00730B53   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730B58   8B00                   mov     eax, [eax]
00730B5A   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'LetraDos'
|
00730B60   BAA0107300             mov     edx, $007310A0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730B65   E89A90DBFF             call    004E9C04
00730B6A   8D55B8                 lea     edx, [ebp-$48]
00730B6D   8B08                   mov     ecx, [eax]
00730B6F   FF5160                 call    dword ptr [ecx+$60]
00730B72   8B45B8                 mov     eax, [ebp-$48]
00730B75   BAC0107300             mov     edx, $007310C0

* Reference to: System.@LStrCmp;
|
00730B7A   E8294DCDFF             call    004058A8
00730B7F   7529                   jnz     00730BAA
00730B81   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730B86   8B00                   mov     eax, [eax]
00730B88   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Romano'
|
00730B8E   BACC107300             mov     edx, $007310CC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730B93   E86C90DBFF             call    004E9C04
00730B98   8D55B4                 lea     edx, [ebp-$4C]
00730B9B   8B08                   mov     ecx, [eax]
00730B9D   FF5160                 call    dword ptr [ecx+$60]
00730BA0   8B55B4                 mov     edx, [ebp-$4C]
00730BA3   8BC6                   mov     eax, esi

|
00730BA5   E85A060000             call    00731204
00730BAA   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730BAF   8B00                   mov     eax, [eax]
00730BB1   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'FonteDos'
|
00730BB7   BADC107300             mov     edx, $007310DC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730BBC   E84390DBFF             call    004E9C04
00730BC1   8D55B0                 lea     edx, [ebp-$50]
00730BC4   8B08                   mov     ecx, [eax]
00730BC6   FF5160                 call    dword ptr [ecx+$60]
00730BC9   8B45B0                 mov     eax, [ebp-$50]
00730BCC   BAB4107300             mov     edx, $007310B4

* Reference to: System.@LStrCmp;
|
00730BD1   E8D24CCDFF             call    004058A8
00730BD6   0F8468010000           jz      00730D44
00730BDC   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730BE1   8B00                   mov     eax, [eax]
00730BE3   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'FonteDos'
|
00730BE9   BADC107300             mov     edx, $007310DC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730BEE   E81190DBFF             call    004E9C04
00730BF3   8D55AC                 lea     edx, [ebp-$54]
00730BF6   8B08                   mov     ecx, [eax]
00730BF8   FF5160                 call    dword ptr [ecx+$60]
00730BFB   8B45AC                 mov     eax, [ebp-$54]
00730BFE   BAC0107300             mov     edx, $007310C0

* Reference to: System.@LStrCmp;
|
00730C03   E8A04CCDFF             call    004058A8
00730C08   752E                   jnz     00730C38
00730C0A   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730C0F   8B00                   mov     eax, [eax]
00730C11   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Comprimido'
|
00730C17   BAF0107300             mov     edx, $007310F0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730C1C   E8E38FDBFF             call    004E9C04
00730C21   8D55A8                 lea     edx, [ebp-$58]
00730C24   8B08                   mov     ecx, [eax]
00730C26   FF5160                 call    dword ptr [ecx+$60]
00730C29   8B55A8                 mov     edx, [ebp-$58]
00730C2C   8BC6                   mov     eax, esi

|
00730C2E   E8D1050000             call    00731204
00730C33   E90C010000             jmp     00730D44
00730C38   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730C3D   8B00                   mov     eax, [eax]
00730C3F   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'FonteDos'
|
00730C45   BADC107300             mov     edx, $007310DC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730C4A   E8B58FDBFF             call    004E9C04
00730C4F   8D55A4                 lea     edx, [ebp-$5C]
00730C52   8B08                   mov     ecx, [eax]
00730C54   FF5160                 call    dword ptr [ecx+$60]
00730C57   8B45A4                 mov     eax, [ebp-$5C]
00730C5A   BA04117300             mov     edx, $00731104

* Reference to: System.@LStrCmp;
|
00730C5F   E8444CCDFF             call    004058A8
00730C64   752E                   jnz     00730C94
00730C66   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730C6B   8B00                   mov     eax, [eax]
00730C6D   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Expandido'
|
00730C73   BA10117300             mov     edx, $00731110

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730C78   E8878FDBFF             call    004E9C04
00730C7D   8D55A0                 lea     edx, [ebp-$60]
00730C80   8B08                   mov     ecx, [eax]
00730C82   FF5160                 call    dword ptr [ecx+$60]
00730C85   8B55A0                 mov     edx, [ebp-$60]
00730C88   8BC6                   mov     eax, esi

|
00730C8A   E875050000             call    00731204
00730C8F   E9B0000000             jmp     00730D44
00730C94   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730C99   8B00                   mov     eax, [eax]
00730C9B   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'FonteDos'
|
00730CA1   BADC107300             mov     edx, $007310DC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730CA6   E8598FDBFF             call    004E9C04
00730CAB   8D559C                 lea     edx, [ebp-$64]
00730CAE   8B08                   mov     ecx, [eax]
00730CB0   FF5160                 call    dword ptr [ecx+$60]
00730CB3   8B459C                 mov     eax, [ebp-$64]
00730CB6   BA24117300             mov     edx, $00731124

* Reference to: System.@LStrCmp;
|
00730CBB   E8E84BCDFF             call    004058A8
00730CC0   752B                   jnz     00730CED
00730CC2   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730CC7   8B00                   mov     eax, [eax]
00730CC9   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Indice'
|
00730CCF   BA30117300             mov     edx, $00731130

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730CD4   E82B8FDBFF             call    004E9C04
00730CD9   8D5598                 lea     edx, [ebp-$68]
00730CDC   8B08                   mov     ecx, [eax]
00730CDE   FF5160                 call    dword ptr [ecx+$60]
00730CE1   8B5598                 mov     edx, [ebp-$68]
00730CE4   8BC6                   mov     eax, esi

|
00730CE6   E819050000             call    00731204
00730CEB   EB57                   jmp     00730D44
00730CED   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730CF2   8B00                   mov     eax, [eax]
00730CF4   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'FonteDos'
|
00730CFA   BADC107300             mov     edx, $007310DC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730CFF   E8008FDBFF             call    004E9C04
00730D04   8D5594                 lea     edx, [ebp-$6C]
00730D07   8B08                   mov     ecx, [eax]
00730D09   FF5160                 call    dword ptr [ecx+$60]
00730D0C   8B4594                 mov     eax, [ebp-$6C]
00730D0F   BA40117300             mov     edx, $00731140

* Reference to: System.@LStrCmp;
|
00730D14   E88F4BCDFF             call    004058A8
00730D19   7529                   jnz     00730D44
00730D1B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730D20   8B00                   mov     eax, [eax]
00730D22   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Expoente'
|
00730D28   BA4C117300             mov     edx, $0073114C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730D2D   E8D28EDBFF             call    004E9C04
00730D32   8D5590                 lea     edx, [ebp-$70]
00730D35   8B08                   mov     ecx, [eax]
00730D37   FF5160                 call    dword ptr [ecx+$60]
00730D3A   8B5590                 mov     edx, [ebp-$70]
00730D3D   8BC6                   mov     eax, esi

|
00730D3F   E8C0040000             call    00731204
00730D44   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730D49   8B00                   mov     eax, [eax]
00730D4B   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'ItalicoDos'
|
00730D51   BA60117300             mov     edx, $00731160

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730D56   E8A98EDBFF             call    004E9C04
00730D5B   8D558C                 lea     edx, [ebp-$74]
00730D5E   8B08                   mov     ecx, [eax]
00730D60   FF5160                 call    dword ptr [ecx+$60]
00730D63   8B458C                 mov     eax, [ebp-$74]
00730D66   BAB4107300             mov     edx, $007310B4

* Reference to: System.@LStrCmp;
|
00730D6B   E8384BCDFF             call    004058A8
00730D70   7529                   jnz     00730D9B
00730D72   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730D77   8B00                   mov     eax, [eax]
00730D79   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Italico'
|
00730D7F   BA74117300             mov     edx, $00731174

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730D84   E87B8EDBFF             call    004E9C04
00730D89   8D5588                 lea     edx, [ebp-$78]
00730D8C   8B08                   mov     ecx, [eax]
00730D8E   FF5160                 call    dword ptr [ecx+$60]
00730D91   8B5588                 mov     edx, [ebp-$78]
00730D94   8BC6                   mov     eax, esi

|
00730D96   E869040000             call    00731204
00730D9B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730DA0   8B00                   mov     eax, [eax]
00730DA2   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'SublinhadoDos'
|
00730DA8   BA84117300             mov     edx, $00731184

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730DAD   E8528EDBFF             call    004E9C04
00730DB2   8D5584                 lea     edx, [ebp-$7C]
00730DB5   8B08                   mov     ecx, [eax]
00730DB7   FF5160                 call    dword ptr [ecx+$60]
00730DBA   8B4584                 mov     eax, [ebp-$7C]
00730DBD   BAB4107300             mov     edx, $007310B4

* Reference to: System.@LStrCmp;
|
00730DC2   E8E14ACDFF             call    004058A8
00730DC7   7529                   jnz     00730DF2
00730DC9   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730DCE   8B00                   mov     eax, [eax]
00730DD0   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Sublinhado'
|
00730DD6   BA9C117300             mov     edx, $0073119C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730DDB   E8248EDBFF             call    004E9C04
00730DE0   8D5580                 lea     edx, [ebp-$80]
00730DE3   8B08                   mov     ecx, [eax]
00730DE5   FF5160                 call    dword ptr [ecx+$60]
00730DE8   8B5580                 mov     edx, [ebp-$80]
00730DEB   8BC6                   mov     eax, esi

|
00730DED   E812040000             call    00731204
00730DF2   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730DF7   8B00                   mov     eax, [eax]
00730DF9   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'TamanhoDos'
|
00730DFF   BAB0117300             mov     edx, $007311B0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730E04   E8FB8DDBFF             call    004E9C04
00730E09   8D957CFFFFFF           lea     edx, [ebp+$FFFFFF7C]
00730E0F   8B08                   mov     ecx, [eax]
00730E11   FF5160                 call    dword ptr [ecx+$60]
00730E14   8B857CFFFFFF           mov     eax, [ebp+$FFFFFF7C]
00730E1A   BAC4117300             mov     edx, $007311C4

* Reference to: System.@LStrCmp;
|
00730E1F   E8844ACDFF             call    004058A8
00730E24   0F8430010000           jz      00730F5A
00730E2A   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730E2F   8B00                   mov     eax, [eax]
00730E31   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'TamanhoDos'
|
00730E37   BAB0117300             mov     edx, $007311B0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730E3C   E8C38DDBFF             call    004E9C04
00730E41   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
00730E47   8B08                   mov     ecx, [eax]
00730E49   FF5160                 call    dword ptr [ecx+$60]
00730E4C   8B8578FFFFFF           mov     eax, [ebp+$FFFFFF78]
00730E52   BAB4107300             mov     edx, $007310B4

* Reference to: System.@LStrCmp;
|
00730E57   E84C4ACDFF             call    004058A8
00730E5C   7534                   jnz     00730E92
00730E5E   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730E63   8B00                   mov     eax, [eax]
00730E65   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Fonte10Cpp'
|
00730E6B   BAD0117300             mov     edx, $007311D0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730E70   E88F8DDBFF             call    004E9C04
00730E75   8D9574FFFFFF           lea     edx, [ebp+$FFFFFF74]
00730E7B   8B08                   mov     ecx, [eax]
00730E7D   FF5160                 call    dword ptr [ecx+$60]
00730E80   8B9574FFFFFF           mov     edx, [ebp+$FFFFFF74]
00730E86   8BC6                   mov     eax, esi

|
00730E88   E877030000             call    00731204
00730E8D   E9C8000000             jmp     00730F5A
00730E92   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730E97   8B00                   mov     eax, [eax]
00730E99   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'TamanhoDos'
|
00730E9F   BAB0117300             mov     edx, $007311B0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730EA4   E85B8DDBFF             call    004E9C04
00730EA9   8D9570FFFFFF           lea     edx, [ebp+$FFFFFF70]
00730EAF   8B08                   mov     ecx, [eax]
00730EB1   FF5160                 call    dword ptr [ecx+$60]
00730EB4   8B8570FFFFFF           mov     eax, [ebp+$FFFFFF70]
00730EBA   BAC0107300             mov     edx, $007310C0

* Reference to: System.@LStrCmp;
|
00730EBF   E8E449CDFF             call    004058A8
00730EC4   7531                   jnz     00730EF7
00730EC6   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730ECB   8B00                   mov     eax, [eax]
00730ECD   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Fonte12Cpp'
|
00730ED3   BAE4117300             mov     edx, $007311E4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730ED8   E8278DDBFF             call    004E9C04
00730EDD   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
00730EE3   8B08                   mov     ecx, [eax]
00730EE5   FF5160                 call    dword ptr [ecx+$60]
00730EE8   8B956CFFFFFF           mov     edx, [ebp+$FFFFFF6C]
00730EEE   8BC6                   mov     eax, esi

|
00730EF0   E80F030000             call    00731204
00730EF5   EB63                   jmp     00730F5A
00730EF7   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730EFC   8B00                   mov     eax, [eax]
00730EFE   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'TamanhoDos'
|
00730F04   BAB0117300             mov     edx, $007311B0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730F09   E8F68CDBFF             call    004E9C04
00730F0E   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]
00730F14   8B08                   mov     ecx, [eax]
00730F16   FF5160                 call    dword ptr [ecx+$60]
00730F19   8B8568FFFFFF           mov     eax, [ebp+$FFFFFF68]
00730F1F   BA04117300             mov     edx, $00731104

* Reference to: System.@LStrCmp;
|
00730F24   E87F49CDFF             call    004058A8
00730F29   752F                   jnz     00730F5A
00730F2B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00730F30   8B00                   mov     eax, [eax]
00730F32   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Fonte17Cpp'
|
00730F38   BAF8117300             mov     edx, $007311F8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00730F3D   E8C28CDBFF             call    004E9C04
00730F42   8D9564FFFFFF           lea     edx, [ebp+$FFFFFF64]
00730F48   8B08                   mov     ecx, [eax]
00730F4A   FF5160                 call    dword ptr [ecx+$60]
00730F4D   8B9564FFFFFF           mov     edx, [ebp+$FFFFFF64]
00730F53   8BC6                   mov     eax, esi

|
00730F55   E8AA020000             call    00731204
00730F5A   B301                   mov     bl, $01
00730F5C   33C0                   xor     eax, eax
00730F5E   5A                     pop     edx
00730F5F   59                     pop     ecx
00730F60   59                     pop     ecx
00730F61   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ã√_^[ãÂ]√'
|
00730F64   68910F7300             push    $00730F91
00730F69   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
00730F6F   BA22000000             mov     edx, $00000022

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00730F74   E84745CDFF             call    004054C0
00730F79   8D45EC                 lea     eax, [ebp-$14]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00730F7C   E8F735CEFF             call    00414578
00730F81   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00730F84   E81345CDFF             call    0040549C
00730F89   C3                     ret


* Reference to: System.@HandleFinally;
|
00730F8A   E9A93DCDFF             jmp     00404D38
00730F8F   EBD8                   jmp     00730F69

****** END
|
00730F91   8BC3                   mov     eax, ebx
00730F93   5F                     pop     edi
00730F94   5E                     pop     esi
00730F95   5B                     pop     ebx
00730F96   8BE5                   mov     esp, ebp
00730F98   5D                     pop     ebp
00730F99   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00731205(Sender : TObject);
begin
(*
00731205   8BEC                   mov     ebp, esp
00731207   33C9                   xor     ecx, ecx
00731209   51                     push    ecx
0073120A   51                     push    ecx
0073120B   51                     push    ecx
0073120C   51                     push    ecx
0073120D   51                     push    ecx
0073120E   51                     push    ecx
0073120F   51                     push    ecx
00731210   53                     push    ebx
00731211   56                     push    esi
00731212   57                     push    edi
00731213   8955FC                 mov     [ebp-$04], edx
00731216   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00731219   E82E47CDFF             call    0040594C
0073121E   33C0                   xor     eax, eax
00731220   55                     push    ebp
00731221   68F9127300             push    $007312F9

***** TRY
|
00731226   64FF30                 push    dword ptr fs:[eax]
00731229   648920                 mov     fs:[eax], esp
0073122C   C645FB00               mov     byte ptr [ebp-$05], $00
00731230   33C0                   xor     eax, eax
00731232   55                     push    ebp
00731233   68CC127300             push    $007312CC

***** TRY
|
00731238   64FF30                 push    dword ptr fs:[eax]
0073123B   648920                 mov     fs:[eax], esp
0073123E   33C0                   xor     eax, eax
00731240   55                     push    ebp
00731241   68B4127300             push    $007312B4

***** TRY
|
00731246   64FF30                 push    dword ptr fs:[eax]
00731249   648920                 mov     fs:[eax], esp
0073124C   837DFC00               cmp     dword ptr [ebp-$04], +$00
00731250   7458                   jz      007312AA
00731252   B201                   mov     dl, $01

* Reference to class TStringList
|
00731254   A1D4044200             mov     eax, dword ptr [$004204D4]

* Reference to: System.TObject.Create(TObject;Boolean);
|
00731259   E80E33CDFF             call    0040456C
0073125E   8BD8                   mov     ebx, eax
00731260   8BC3                   mov     eax, ebx
00731262   8B10                   mov     edx, [eax]

* Reference to method TStringList.Clear()
|
00731264   FF5244                 call    dword ptr [edx+$44]
00731267   8B55FC                 mov     edx, [ebp-$04]
0073126A   8BC3                   mov     eax, ebx
0073126C   8B08                   mov     ecx, [eax]

* Reference to method TStringList.Add(string)
|
0073126E   FF5138                 call    dword ptr [ecx+$38]
00731271   8D4DE4                 lea     ecx, [ebp-$1C]
00731274   A178B47D00             mov     eax, dword ptr [$007DB478]
00731279   8B00                   mov     eax, [eax]
0073127B   8BD3                   mov     edx, ebx

|
0073127D   E81EB90800             call    007BCBA0
00731282   8D55E4                 lea     edx, [ebp-$1C]
00731285   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
00731288   E86B69CEFF             call    00417BF8
0073128D   A178B47D00             mov     eax, dword ptr [$007DB478]
00731292   8B00                   mov     eax, [eax]
00731294   8B4068                 mov     eax, [eax+$68]
00731297   8B55F4                 mov     edx, [ebp-$0C]

* Reference to : TRAWPrinter._PROC_0059A8A8()
|
0073129A   E80996E6FF             call    0059A8A8
0073129F   C645FB01               mov     byte ptr [ebp-$05], $01
007312A3   8BC3                   mov     eax, ebx

* Reference to: System.TObject.Free(TObject);
|
007312A5   E8F232CDFF             call    0040459C
007312AA   33C0                   xor     eax, eax
007312AC   5A                     pop     edx
007312AD   59                     pop     ecx
007312AE   59                     pop     ecx
007312AF   648910                 mov     fs:[eax], edx
007312B2   EB0A                   jmp     007312BE

* Reference to: System.@HandleAnyException;
|
007312B4   E9CB37CDFF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
007312B9   E8F23BCDFF             call    00404EB0

****** END
|
007312BE   33C0                   xor     eax, eax
007312C0   5A                     pop     edx
007312C1   59                     pop     ecx
007312C2   59                     pop     ecx
007312C3   648910                 mov     fs:[eax], edx

****** FINALLY
|
007312C6   68D3127300             push    $007312D3
007312CB   C3                     ret


* Reference to: System.@HandleFinally;
|
007312CC   E9673ACDFF             jmp     00404D38
007312D1   EBF8                   jmp     007312CB

****** END
|
007312D3   33C0                   xor     eax, eax
007312D5   5A                     pop     edx
007312D6   59                     pop     ecx
007312D7   59                     pop     ecx
007312D8   648910                 mov     fs:[eax], edx

****** FINALLY
|
007312DB   6800137300             push    $00731300
007312E0   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007312E3   E89032CEFF             call    00414578
007312E8   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
007312EB   E8AC41CDFF             call    0040549C
007312F0   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007312F3   E8A441CDFF             call    0040549C
007312F8   C3                     ret


* Reference to: System.@HandleFinally;
|
007312F9   E93A3ACDFF             jmp     00404D38
007312FE   EBE0                   jmp     007312E0

****** END
|
00731300   8A45FB                 mov     al, byte ptr [ebp-$05]
00731303   5F                     pop     edi
00731304   5E                     pop     esi
00731305   5B                     pop     ebx
00731306   8BE5                   mov     esp, ebp
00731308   5D                     pop     ebp
00731309   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0073130C(Sender : TObject);
begin
(*
0073130C   55                     push    ebp
0073130D   8BEC                   mov     ebp, esp
0073130F   53                     push    ebx
00731310   56                     push    esi
00731311   57                     push    edi
00731312   33C0                   xor     eax, eax
00731314   55                     push    ebp

* Possible String Reference to: 'ÈÒ6Õˇ°h∂}'
|
00731315   688E137300             push    $0073138E

***** TRY
|
0073131A   64FF30                 push    dword ptr fs:[eax]
0073131D   648920                 mov     fs:[eax], esp
00731320   A1C09E7D00             mov     eax, dword ptr [$007D9EC0]
00731325   833800                 cmp     dword ptr [eax], +$00
00731328   745A                   jz      00731384
0073132A   A1C09E7D00             mov     eax, dword ptr [$007D9EC0]
0073132F   8B00                   mov     eax, [eax]

* Reference to : TFrmPreview._PROC_007313AC()
|
00731331   E876000000             call    007313AC
00731336   84C0                   test    al, al
00731338   744A                   jz      00731384
0073133A   A178B47D00             mov     eax, dword ptr [$007DB478]
0073133F   8B00                   mov     eax, [eax]
00731341   8B4068                 mov     eax, [eax+$68]
00731344   83C034                 add     eax, +$34
00731347   8B15C09E7D00           mov     edx, [$007D9EC0]
0073134D   8B12                   mov     edx, [edx]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0073134F   E89C41CDFF             call    004054F0
00731354   A1C09E7D00             mov     eax, dword ptr [$007D9EC0]
00731359   8B00                   mov     eax, [eax]

* Reference to : TFrmInfoAtu._PROC_007A2098()
|
0073135B   E8380D0700             call    007A2098
00731360   A10C9F7D00             mov     eax, dword ptr [$007D9F0C]
00731365   8B00                   mov     eax, [eax]
00731367   50                     push    eax
00731368   8B0D10A07D00           mov     ecx, [$007DA010]
0073136E   8B09                   mov     ecx, [ecx]
00731370   8B157CA37D00           mov     edx, [$007DA37C]
00731376   8B12                   mov     edx, [edx]
00731378   A174A17D00             mov     eax, dword ptr [$007DA174]
0073137D   8B00                   mov     eax, [eax]

|
0073137F   E8C80B0700             call    007A1F4C
00731384   33C0                   xor     eax, eax
00731386   5A                     pop     edx
00731387   59                     pop     ecx
00731388   59                     pop     ecx
00731389   648910                 mov     fs:[eax], edx
0073138C   EB18                   jmp     007313A6

* Reference to: System.@HandleAnyException;
|
0073138E   E9F136CDFF             jmp     00404A84
00731393   A168B67D00             mov     eax, dword ptr [$007DB668]
00731398   8B00                   mov     eax, [eax]
0073139A   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0073139C   E88B29D8FF             call    004B3D2C

* Reference to: System.@DoneExcept;
|
007313A1   E80A3BCDFF             call    00404EB0

****** END
|
007313A6   5F                     pop     edi
007313A7   5E                     pop     esi
007313A8   5B                     pop     ebx
007313A9   5D                     pop     ebp
007313AA   C3                     ret

*)
end;

procedure TFrmPreview._PROC_007313AC(Sender : TObject);
begin
(*
007313AC   55                     push    ebp
007313AD   8BEC                   mov     ebp, esp
007313AF   33C9                   xor     ecx, ecx
007313B1   51                     push    ecx
007313B2   51                     push    ecx
007313B3   51                     push    ecx
007313B4   51                     push    ecx
007313B5   51                     push    ecx
007313B6   51                     push    ecx
007313B7   51                     push    ecx
007313B8   51                     push    ecx
007313B9   53                     push    ebx
007313BA   56                     push    esi
007313BB   57                     push    edi
007313BC   8945FC                 mov     [ebp-$04], eax
007313BF   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007313C2   E88545CDFF             call    0040594C
007313C7   33C0                   xor     eax, eax
007313C9   55                     push    ebp
007313CA   6817157300             push    $00731517

***** TRY
|
007313CF   64FF30                 push    dword ptr fs:[eax]
007313D2   648920                 mov     fs:[eax], esp
007313D5   C645FB00               mov     byte ptr [ebp-$05], $00
007313D9   33C0                   xor     eax, eax
007313DB   55                     push    ebp
007313DC   68ED147300             push    $007314ED

***** TRY
|
007313E1   64FF30                 push    dword ptr fs:[eax]
007313E4   648920                 mov     fs:[eax], esp
007313E7   33C0                   xor     eax, eax
007313E9   55                     push    ebp
007313EA   68A4147300             push    $007314A4

***** TRY
|
007313EF   64FF30                 push    dword ptr fs:[eax]
007313F2   648920                 mov     fs:[eax], esp
007313F5   837DFC00               cmp     dword ptr [ebp-$04], +$00
007313F9   0F8497000000           jz      00731496

* Reference to: Clipbrd.Clipboard:TClipboard;
|
007313FF   E8A0C7D0FF             call    0043DBA4

* Reference to: Printers.TPrinter.GetPrinters(TPrinter):TStrings;
|
00731404   E813C3D0FF             call    0043D71C
00731409   8B10                   mov     edx, [eax]

* Reference to method TFrmPreview.ReadState(TReader)
|
0073140B   FF5214                 call    dword ptr [edx+$14]
0073140E   8BF0                   mov     esi, eax
00731410   4E                     dec     esi
00731411   85F6                   test    esi, esi
00731413   0F8C81000000           jl      0073149A
00731419   46                     inc     esi
0073141A   33DB                   xor     ebx, ebx
0073141C   8D55F4                 lea     edx, [ebp-$0C]
0073141F   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
00731422   E87592CDFF             call    0040A69C
00731427   8B45F4                 mov     eax, [ebp-$0C]
0073142A   50                     push    eax

* Reference to: Clipbrd.Clipboard:TClipboard;
|
0073142B   E874C7D0FF             call    0043DBA4

* Reference to: Printers.TPrinter.GetPrinters(TPrinter):TStrings;
|
00731430   E8E7C2D0FF             call    0043D71C
00731435   8D4DEC                 lea     ecx, [ebp-$14]
00731438   8BD3                   mov     edx, ebx
0073143A   8B38                   mov     edi, [eax]
0073143C   FF570C                 call    dword ptr [edi+$0C]
0073143F   8B45EC                 mov     eax, [ebp-$14]
00731442   8D55F0                 lea     edx, [ebp-$10]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
00731445   E85292CDFF             call    0040A69C
0073144A   8B55F0                 mov     edx, [ebp-$10]
0073144D   58                     pop     eax

* Reference to: System.@LStrCmp;
|
0073144E   E85544CDFF             call    004058A8
00731453   7435                   jz      0073148A

* Reference to: Clipbrd.Clipboard:TClipboard;
|
00731455   E84AC7D0FF             call    0043DBA4

* Reference to: Printers.TPrinter.GetPrinters(TPrinter):TStrings;
|
0073145A   E8BDC2D0FF             call    0043D71C
0073145F   8D4DE8                 lea     ecx, [ebp-$18]
00731462   8BD3                   mov     edx, ebx
00731464   8B38                   mov     edi, [eax]
00731466   FF570C                 call    dword ptr [edi+$0C]
00731469   8B45E8                 mov     eax, [ebp-$18]
0073146C   50                     push    eax
0073146D   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: ' on '
|
00731470   B930157300             mov     ecx, $00731530
00731475   8B55FC                 mov     edx, [ebp-$04]

* Reference to: System.@LStrCat3;
|
00731478   E82B43CDFF             call    004057A8
0073147D   8B45E4                 mov     eax, [ebp-$1C]
00731480   5A                     pop     edx

* Reference to: System.@LStrPos;
|
00731481   E81A46CDFF             call    00405AA0
00731486   85C0                   test    eax, eax
00731488   7E06                   jle     00731490
0073148A   C645FB01               mov     byte ptr [ebp-$05], $01
0073148E   EB0A                   jmp     0073149A
00731490   43                     inc     ebx
00731491   4E                     dec     esi
00731492   7588                   jnz     0073141C
00731494   EB04                   jmp     0073149A
00731496   C645FB01               mov     byte ptr [ebp-$05], $01
0073149A   33C0                   xor     eax, eax
0073149C   5A                     pop     edx
0073149D   59                     pop     ecx
0073149E   59                     pop     ecx
0073149F   648910                 mov     fs:[eax], edx
007314A2   EB3B                   jmp     007314DF

* Reference to: System.@HandleOnException;
|
007314A4   E90737CDFF             jmp     00404BB0
007314A9   0100                   add     [eax], eax
007314AB   0000                   add     [eax], al
007314AD   40                     inc     eax
007314AE   95                     xchg    eax, ebp
007314AF   40                     inc     eax
007314B0   00B514730089           add     [ebp+$89007314], dh
007314B6   C3                     ret

007314B7   6A00                   push    $00
007314B9   8B4B04                 mov     ecx, [ebx+$04]
007314BC   8D45E0                 lea     eax, [ebp-$20]

* Possible String Reference to: 'Erro ao verificar se a impressora e
|                                xiste!'
|
007314BF   BA40157300             mov     edx, $00731540

* Reference to: System.@LStrCat3;
|
007314C4   E8DF42CDFF             call    004057A8
007314C9   8B45E0                 mov     eax, [ebp-$20]
007314CC   668B0D6C157300         mov     cx, word ptr [$0073156C]
007314D3   B201                   mov     dl, $01

|
007314D5   E85226D1FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007314DA   E8D139CDFF             call    00404EB0

****** END
|
007314DF   33C0                   xor     eax, eax
007314E1   5A                     pop     edx
007314E2   59                     pop     ecx
007314E3   59                     pop     ecx
007314E4   648910                 mov     fs:[eax], edx

****** FINALLY
|
007314E7   68F4147300             push    $007314F4
007314EC   C3                     ret


* Reference to: System.@HandleFinally;
|
007314ED   E94638CDFF             jmp     00404D38
007314F2   EBF8                   jmp     007314EC

****** END
|
007314F4   33C0                   xor     eax, eax
007314F6   5A                     pop     edx
007314F7   59                     pop     ecx
007314F8   59                     pop     ecx
007314F9   648910                 mov     fs:[eax], edx

****** FINALLY
|
007314FC   681E157300             push    $0073151E
00731501   8D45E0                 lea     eax, [ebp-$20]
00731504   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00731509   E8B23FCDFF             call    004054C0
0073150E   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00731511   E8863FCDFF             call    0040549C
00731516   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00731517(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00731517   E91C38CDFF             jmp     00404D38

|
0073151C   EBE3                   jmp     00731501
0073151E   8A45FB                 mov     al, byte ptr [ebp-$05]
00731521   5F                     pop     edi
00731522   5E                     pop     esi
00731523   5B                     pop     ebx
00731524   8BE5                   mov     esp, ebp
00731526   5D                     pop     ebp
00731527   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00731790(Sender : TObject);
begin
(*
00731790   55                     push    ebp
00731791   8BEC                   mov     ebp, esp
00731793   8B450C                 mov     eax, [ebp+$0C]
00731796   DD00                   fld     qword ptr [eax]
00731798   DC02                   fadd    qword ptr [edx]
0073179A   DD18                   fstp    qword ptr [eax]
0073179C   9B                     wait
0073179D   5D                     pop     ebp
0073179E   C20800                 ret     $0008

*)
end;

procedure TFrmPreview._PROC_007317A4(Sender : TObject);
begin
(*
007317A4   55                     push    ebp
007317A5   8BEC                   mov     ebp, esp
007317A7   53                     push    ebx
007317A8   8BDA                   mov     ebx, edx
007317AA   A178B47D00             mov     eax, dword ptr [$007DB478]
007317AF   8B00                   mov     eax, [eax]
007317B1   8B4068                 mov     eax, [eax+$68]
007317B4   33D2                   xor     edx, edx

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007317B6   E81991E6FF             call    0059A8D4
007317BB   DD03                   fld     qword ptr [ebx]
007317BD   D805CC177300           fadd    dword ptr [$007317CC]
007317C3   DD1B                   fstp    qword ptr [ebx]
007317C5   9B                     wait
007317C6   5B                     pop     ebx
007317C7   5D                     pop     ebp
007317C8   C3                     ret

*)
end;

procedure TFrmPreview._PROC_007317D1(Sender : TObject);
begin
(*
007317D1   8BEC                   mov     ebp, esp
007317D3   53                     push    ebx
007317D4   8BDA                   mov     ebx, edx
007317D6   33D2                   xor     edx, edx
007317D8   B83CF37D00             mov     eax, $007DF33C

* Reference to: Classes.TStream.WriteComponent(TStream;TComponent);
|
007317DD   E89643CDFF             call    00405B78

* Reference to: System.@WriteLn(TTextRec;TTextRec):Pointer;
|
007317E2   E85D25CDFF             call    00403D44

|
007317E7   E8C011CDFF             call    004029AC
007317EC   B83CF37D00             mov     eax, $007DF33C

* Reference to: System.@Append(TTextRec;TTextRec):Integer;
|
007317F1   E81E17CDFF             call    00402F14

|
007317F6   E8B111CDFF             call    004029AC
007317FB   DD03                   fld     qword ptr [ebx]
007317FD   D8050C187300           fadd    dword ptr [$0073180C]
00731803   DD1B                   fstp    qword ptr [ebx]
00731805   9B                     wait
00731806   5B                     pop     ebx
00731807   5D                     pop     ebp
00731808   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00731811(Sender : TObject);
begin
(*
00731811   8BEC                   mov     ebp, esp
00731813   6A00                   push    $00
00731815   6A00                   push    $00
00731817   6A00                   push    $00
00731819   53                     push    ebx
0073181A   56                     push    esi
0073181B   8945FC                 mov     [ebp-$04], eax
0073181E   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00731821   E82641CDFF             call    0040594C
00731826   33C0                   xor     eax, eax
00731828   55                     push    ebp

* Possible String Reference to: 'È4ÕˇÎÎã∆^[ãÂ]√'
|
00731829   68B4187300             push    $007318B4

***** TRY
|
0073182E   64FF30                 push    dword ptr fs:[eax]
00731831   648920                 mov     fs:[eax], esp
00731834   8B15C8A07D00           mov     edx, [$007DA0C8]
0073183A   8B12                   mov     edx, [edx]
0073183C   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'ws.ini'
|
0073183F   B9CC187300             mov     ecx, $007318CC

* Reference to: System.@LStrCat3;
|
00731844   E85F3FCDFF             call    004057A8
00731849   8B4DF4                 mov     ecx, [ebp-$0C]
0073184C   B201                   mov     dl, $01

* Reference to class TIniFile
|
0073184E   A1540F4500             mov     eax, dword ptr [$00450F54]

* Reference to: IniFiles.TCustomIniFile.Create(TCustomIniFile;boolean;AnsiString);
|
00731853   E8ACF7D1FF             call    00451004
00731858   8BD8                   mov     ebx, eax
0073185A   68DC187300             push    $007318DC
0073185F   8D45F8                 lea     eax, [ebp-$08]
00731862   50                     push    eax
00731863   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: 'Relatorios'
|
00731866   BAE8187300             mov     edx, $007318E8
0073186B   8BC3                   mov     eax, ebx
0073186D   8B30                   mov     esi, [eax]
0073186F   FF16                   call    dword ptr [esi]
00731871   33F6                   xor     esi, esi
00731873   8B45F8                 mov     eax, [ebp-$08]
00731876   BADC187300             mov     edx, $007318DC

* Reference to: System.@LStrCmp;
|
0073187B   E82840CDFF             call    004058A8
00731880   7410                   jz      00731892
00731882   837DF800               cmp     dword ptr [ebp-$08], +$00
00731886   740A                   jz      00731892
00731888   8B45F8                 mov     eax, [ebp-$08]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
0073188B   E84096CDFF             call    0040AED0
00731890   8BF0                   mov     esi, eax
00731892   8BC3                   mov     eax, ebx

* Reference to: System.TObject.Free(TObject);
|
00731894   E8032DCDFF             call    0040459C
00731899   33C0                   xor     eax, eax
0073189B   5A                     pop     edx
0073189C   59                     pop     ecx
0073189D   59                     pop     ecx
0073189E   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ã∆^[ãÂ]√'
|
007318A1   68BB187300             push    $007318BB
007318A6   8D45F4                 lea     eax, [ebp-$0C]
007318A9   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007318AE   E80D3CCDFF             call    004054C0
007318B3   C3                     ret


* Reference to: System.@HandleFinally;
|
007318B4   E97F34CDFF             jmp     00404D38
007318B9   EBEB                   jmp     007318A6

****** END
|
007318BB   8BC6                   mov     eax, esi
007318BD   5E                     pop     esi
007318BE   5B                     pop     ebx
007318BF   8BE5                   mov     esp, ebp
007318C1   5D                     pop     ebp
007318C2   C3                     ret

*)
end;

procedure TFrmPreview._PROC_007318F5(Sender : TObject);
begin
(*
007318F5   8BEC                   mov     ebp, esp
007318F7   B905000000             mov     ecx, $00000005
007318FC   6A00                   push    $00
007318FE   6A00                   push    $00
00731900   49                     dec     ecx
00731901   75F9                   jnz     007318FC
00731903   53                     push    ebx
00731904   56                     push    esi
00731905   57                     push    edi
00731906   8B1DB0AA7D00           mov     ebx, [$007DAAB0]
0073190C   33C0                   xor     eax, eax
0073190E   55                     push    ebp

* Possible String Reference to: 'Èó0ÕˇÎÎ_^[ãÂ]√'
|
0073190F   689C1C7300             push    $00731C9C

***** TRY
|
00731914   64FF30                 push    dword ptr fs:[eax]
00731917   648920                 mov     fs:[eax], esp
0073191A   B201                   mov     dl, $01

* Reference to class TStringList
|
0073191C   A1D4044200             mov     eax, dword ptr [$004204D4]

* Reference to: System.TObject.Create(TObject;Boolean);
|
00731921   E8462CCDFF             call    0040456C
00731926   8945FC                 mov     [ebp-$04], eax
00731929   33C0                   xor     eax, eax
0073192B   55                     push    ebp
0073192C   687A1C7300             push    $00731C7A

***** TRY
|
00731931   64FF30                 push    dword ptr fs:[eax]
00731934   648920                 mov     fs:[eax], esp
00731937   33C0                   xor     eax, eax
00731939   55                     push    ebp
0073193A   685A1C7300             push    $00731C5A

***** TRY
|
0073193F   64FF30                 push    dword ptr fs:[eax]
00731942   648920                 mov     fs:[eax], esp
00731945   A1C09E7D00             mov     eax, dword ptr [$007D9EC0]

* Reference to: System.@LStrClr(void;void);
|
0073194A   E84D3BCDFF             call    0040549C
0073194F   A174A17D00             mov     eax, dword ptr [$007DA174]
00731954   33D2                   xor     edx, edx
00731956   8910                   mov     [eax], edx
00731958   A10C9F7D00             mov     eax, dword ptr [$007D9F0C]
0073195D   33D2                   xor     edx, edx
0073195F   8910                   mov     [eax], edx
00731961   A17CA37D00             mov     eax, dword ptr [$007DA37C]
00731966   33D2                   xor     edx, edx
00731968   8910                   mov     [eax], edx
0073196A   A110A07D00             mov     eax, dword ptr [$007DA010]
0073196F   33D2                   xor     edx, edx
00731971   8910                   mov     [eax], edx
00731973   A134A57D00             mov     eax, dword ptr [$007DA534]

* Reference to: System.@LStrClr(void;void);
|
00731978   E81F3BCDFF             call    0040549C
0073197D   8B03                   mov     eax, [ebx]
0073197F   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'Definicao'
|
00731982   BAB41C7300             mov     edx, $00731CB4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731987   E87882DBFF             call    004E9C04
0073198C   8D55F8                 lea     edx, [ebp-$08]
0073198F   8B08                   mov     ecx, [eax]
00731991   FF5160                 call    dword ptr [ecx+$60]
00731994   8B55F8                 mov     edx, [ebp-$08]
00731997   8B45FC                 mov     eax, [ebp-$04]
0073199A   8B08                   mov     ecx, [eax]

* Reference to method TStringList.SetTextStr(string)
|
0073199C   FF512C                 call    dword ptr [ecx+$2C]
0073199F   8B03                   mov     eax, [ebx]

* Reference to field TStringList.OFFS_0074
|
007319A1   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'ComQuebra'
|
007319A4   BAC81C7300             mov     edx, $00731CC8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007319A9   E85682DBFF             call    004E9C04
007319AE   8D55F4                 lea     edx, [ebp-$0C]
007319B1   8B08                   mov     ecx, [eax]
007319B3   FF5160                 call    dword ptr [ecx+$60]
007319B6   8B55F4                 mov     edx, [ebp-$0C]
007319B9   A1B4AC7D00             mov     eax, dword ptr [$007DACB4]

* Reference to: System.@LStrAsg(void;void;void;void);
|
007319BE   E82D3BCDFF             call    004054F0
007319C3   8D45F0                 lea     eax, [ebp-$10]
007319C6   50                     push    eax
007319C7   8D55FC                 lea     edx, [ebp-$04]
007319CA   B9DC1C7300             mov     ecx, $00731CDC

* Possible String Reference to: 'LimiteDetalhe'
|
007319CF   B8E81C7300             mov     eax, $00731CE8

|
007319D4   E8CBC3FFFF             call    0072DDA4
007319D9   8B45F0                 mov     eax, [ebp-$10]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
007319DC   E8EF94CDFF             call    0040AED0
007319E1   8B15E8A57D00           mov     edx, [$007DA5E8]
007319E7   8902                   mov     [edx], eax
007319E9   8D45EC                 lea     eax, [ebp-$14]
007319EC   50                     push    eax
007319ED   8D55FC                 lea     edx, [ebp-$04]
007319F0   B9001D7300             mov     ecx, $00731D00

* Possible String Reference to: 'NumeroVias'
|
007319F5   B80C1D7300             mov     eax, $00731D0C

|
007319FA   E8A5C3FFFF             call    0072DDA4
007319FF   8B45EC                 mov     eax, [ebp-$14]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
00731A02   E8C994CDFF             call    0040AED0
00731A07   8B1588A77D00           mov     edx, [$007DA788]
00731A0D   8902                   mov     [edx], eax
00731A0F   8D45E8                 lea     eax, [ebp-$18]
00731A12   50                     push    eax
00731A13   8D55FC                 lea     edx, [ebp-$04]
00731A16   33C9                   xor     ecx, ecx

* Possible String Reference to: 'FonteEtiqueta'
|
00731A18   B8201D7300             mov     eax, $00731D20

|
00731A1D   E882C3FFFF             call    0072DDA4
00731A22   8B55E8                 mov     edx, [ebp-$18]
00731A25   A1B0AC7D00             mov     eax, dword ptr [$007DACB0]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00731A2A   E8C13ACDFF             call    004054F0
00731A2F   A1E89F7D00             mov     eax, dword ptr [$007D9FE8]
00731A34   C70001000000           mov     dword ptr [eax], $00000001
00731A3A   8B03                   mov     eax, [ebx]
00731A3C   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'TamPaginaDOS'
|
00731A3F   BA381D7300             mov     edx, $00731D38

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731A44   E8BB81DBFF             call    004E9C04
00731A49   8D55E4                 lea     edx, [ebp-$1C]
00731A4C   8B08                   mov     ecx, [eax]
00731A4E   FF5160                 call    dword ptr [ecx+$60]
00731A51   8B55E4                 mov     edx, [ebp-$1C]
00731A54   A134A57D00             mov     eax, dword ptr [$007DA534]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00731A59   E8923ACDFF             call    004054F0
00731A5E   8D45E0                 lea     eax, [ebp-$20]

* Reference to : TFrmInfoAtu._PROC_007A3864()
|
00731A61   E8FE1D0700             call    007A3864
00731A66   8B55E0                 mov     edx, [ebp-$20]
00731A69   A18CA77D00             mov     eax, dword ptr [$007DA78C]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00731A6E   E87D3ACDFF             call    004054F0
00731A73   8D45DC                 lea     eax, [ebp-$24]
00731A76   50                     push    eax
00731A77   8D55FC                 lea     edx, [ebp-$04]
00731A7A   33C9                   xor     ecx, ecx

* Possible String Reference to: 'Indice'
|
00731A7C   B8501D7300             mov     eax, $00731D50

|
00731A81   E81EC3FFFF             call    0072DDA4
00731A86   8B55DC                 mov     edx, [ebp-$24]
00731A89   A100A87D00             mov     eax, dword ptr [$007DA800]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00731A8E   E85D3ACDFF             call    004054F0
00731A93   8B03                   mov     eax, [ebx]
00731A95   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'EtqMargSuperior'
|
00731A98   BA601D7300             mov     edx, $00731D60

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731A9D   E86281DBFF             call    004E9C04
00731AA2   8B10                   mov     edx, [eax]
00731AA4   FF5258                 call    dword ptr [edx+$58]
00731AA7   8B1558A07D00           mov     edx, [$007DA058]
00731AAD   8902                   mov     [edx], eax
00731AAF   8B03                   mov     eax, [ebx]
00731AB1   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'EtqMargLateral'
|
00731AB4   BA781D7300             mov     edx, $00731D78

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731AB9   E84681DBFF             call    004E9C04
00731ABE   8B10                   mov     edx, [eax]
00731AC0   FF5258                 call    dword ptr [edx+$58]
00731AC3   8B15D0B27D00           mov     edx, [$007DB2D0]
00731AC9   8902                   mov     [edx], eax
00731ACB   8B03                   mov     eax, [ebx]
00731ACD   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'EtqDistVertical'
|
00731AD0   BA901D7300             mov     edx, $00731D90

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731AD5   E82A81DBFF             call    004E9C04
00731ADA   8B10                   mov     edx, [eax]
00731ADC   FF5258                 call    dword ptr [edx+$58]
00731ADF   8B1554A07D00           mov     edx, [$007DA054]
00731AE5   8902                   mov     [edx], eax
00731AE7   8B03                   mov     eax, [ebx]
00731AE9   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'EtqDistHorizontal'
|
00731AEC   BAA81D7300             mov     edx, $00731DA8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731AF1   E80E81DBFF             call    004E9C04
00731AF6   8B10                   mov     edx, [eax]
00731AF8   FF5258                 call    dword ptr [edx+$58]
00731AFB   8B1530A17D00           mov     edx, [$007DA130]
00731B01   8902                   mov     [edx], eax
00731B03   8B03                   mov     eax, [ebx]
00731B05   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'EtqAltura'
|
00731B08   BAC41D7300             mov     edx, $00731DC4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731B0D   E8F280DBFF             call    004E9C04
00731B12   8B10                   mov     edx, [eax]
00731B14   FF5258                 call    dword ptr [edx+$58]
00731B17   8B15ECAA7D00           mov     edx, [$007DAAEC]
00731B1D   8902                   mov     [edx], eax
00731B1F   8B03                   mov     eax, [ebx]
00731B21   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'EtqLargura'
|
00731B24   BAD81D7300             mov     edx, $00731DD8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731B29   E8D680DBFF             call    004E9C04
00731B2E   8B10                   mov     edx, [eax]
00731B30   FF5258                 call    dword ptr [edx+$58]
00731B33   8B1524A77D00           mov     edx, [$007DA724]
00731B39   8902                   mov     [edx], eax
00731B3B   8B03                   mov     eax, [ebx]
00731B3D   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'EtqPorLinha'
|
00731B40   BAEC1D7300             mov     edx, $00731DEC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731B45   E8BA80DBFF             call    004E9C04
00731B4A   8B10                   mov     edx, [eax]
00731B4C   FF5258                 call    dword ptr [edx+$58]
00731B4F   8B15A8B47D00           mov     edx, [$007DB4A8]
00731B55   8902                   mov     [edx], eax
00731B57   8B03                   mov     eax, [ebx]
00731B59   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'EtqLinhasPorPagina'
|
00731B5C   BA001E7300             mov     edx, $00731E00

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731B61   E89E80DBFF             call    004E9C04
00731B66   8B10                   mov     edx, [eax]
00731B68   FF5258                 call    dword ptr [edx+$58]
00731B6B   8B1514B67D00           mov     edx, [$007DB614]
00731B71   8902                   mov     [edx], eax
00731B73   8B03                   mov     eax, [ebx]
00731B75   8B80C8000000           mov     eax, [eax+$00C8]

* Possible String Reference to: 'Impressora'
|
00731B7B   BA1C1E7300             mov     edx, $00731E1C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731B80   E87F80DBFF             call    004E9C04
00731B85   8D55D8                 lea     edx, [ebp-$28]
00731B88   8B08                   mov     ecx, [eax]
00731B8A   FF5160                 call    dword ptr [ecx+$60]
00731B8D   8B55D8                 mov     edx, [ebp-$28]
00731B90   A1C09E7D00             mov     eax, dword ptr [$007D9EC0]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00731B95   E85639CDFF             call    004054F0
00731B9A   8B03                   mov     eax, [ebx]
00731B9C   8B80C8000000           mov     eax, [eax+$00C8]

* Possible String Reference to: 'Papel'
|
00731BA2   BA301E7300             mov     edx, $00731E30

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731BA7   E85880DBFF             call    004E9C04
00731BAC   8B10                   mov     edx, [eax]
00731BAE   FF5258                 call    dword ptr [edx+$58]
00731BB1   8B1574A17D00           mov     edx, [$007DA174]
00731BB7   8902                   mov     [edx], eax
00731BB9   8B03                   mov     eax, [ebx]
00731BBB   8B80C8000000           mov     eax, [eax+$00C8]

* Possible String Reference to: 'Orientacao'
|
00731BC1   BA401E7300             mov     edx, $00731E40

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731BC6   E83980DBFF             call    004E9C04
00731BCB   8B10                   mov     edx, [eax]
00731BCD   FF5258                 call    dword ptr [edx+$58]
00731BD0   8B150C9F7D00           mov     edx, [$007D9F0C]
00731BD6   8902                   mov     [edx], eax
00731BD8   8B03                   mov     eax, [ebx]
00731BDA   8B80C8000000           mov     eax, [eax+$00C8]

* Possible String Reference to: 'Altura'
|
00731BE0   BA541E7300             mov     edx, $00731E54

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731BE5   E81A80DBFF             call    004E9C04
00731BEA   8B10                   mov     edx, [eax]
00731BEC   FF5258                 call    dword ptr [edx+$58]
00731BEF   8B157CA37D00           mov     edx, [$007DA37C]
00731BF5   8902                   mov     [edx], eax
00731BF7   8B03                   mov     eax, [ebx]
00731BF9   8B80C8000000           mov     eax, [eax+$00C8]

* Possible String Reference to: 'Largura'
|
00731BFF   BA641E7300             mov     edx, $00731E64

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731C04   E8FB7FDBFF             call    004E9C04
00731C09   8B10                   mov     edx, [eax]
00731C0B   FF5258                 call    dword ptr [edx+$58]
00731C0E   8B1510A07D00           mov     edx, [$007DA010]
00731C14   8902                   mov     [edx], eax
00731C16   8B03                   mov     eax, [ebx]
00731C18   8B80C8000000           mov     eax, [eax+$00C8]

* Possible String Reference to: 'FonteImprMatricial'
|
00731C1E   BA741E7300             mov     edx, $00731E74

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731C23   E8DC7FDBFF             call    004E9C04
00731C28   8B10                   mov     edx, [eax]
00731C2A   FF5258                 call    dword ptr [edx+$58]
00731C2D   85C0                   test    eax, eax
00731C2F   7E1F                   jle     00731C50
00731C31   8B03                   mov     eax, [ebx]
00731C33   8B80C8000000           mov     eax, [eax+$00C8]

* Possible String Reference to: 'FonteImprMatricial'
|
00731C39   BA741E7300             mov     edx, $00731E74

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00731C3E   E8C17FDBFF             call    004E9C04
00731C43   8B10                   mov     edx, [eax]
00731C45   FF5258                 call    dword ptr [edx+$58]
00731C48   8B152CAA7D00           mov     edx, [$007DAA2C]
00731C4E   8902                   mov     [edx], eax
00731C50   33C0                   xor     eax, eax
00731C52   5A                     pop     edx
00731C53   59                     pop     ecx
00731C54   59                     pop     ecx
00731C55   648910                 mov     fs:[eax], edx
00731C58   EB0A                   jmp     00731C64

* Reference to: System.@HandleAnyException;
|
00731C5A   E9252ECDFF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
00731C5F   E84C32CDFF             call    00404EB0

****** END
|
00731C64   33C0                   xor     eax, eax
00731C66   5A                     pop     edx
00731C67   59                     pop     ecx
00731C68   59                     pop     ecx
00731C69   648910                 mov     fs:[eax], edx

****** FINALLY
|
00731C6C   68811C7300             push    $00731C81
00731C71   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.TObject.Free(TObject);
|
00731C74   E82329CDFF             call    0040459C
00731C79   C3                     ret


* Reference to: System.@HandleFinally;
|
00731C7A   E9B930CDFF             jmp     00404D38
00731C7F   EBF0                   jmp     00731C71

****** END
|
00731C81   33C0                   xor     eax, eax
00731C83   5A                     pop     edx
00731C84   59                     pop     ecx
00731C85   59                     pop     ecx
00731C86   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
00731C89   68A31C7300             push    $00731CA3
00731C8E   8D45D8                 lea     eax, [ebp-$28]
00731C91   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00731C96   E82538CDFF             call    004054C0
00731C9B   C3                     ret


* Reference to: System.@HandleFinally;
|
00731C9C   E99730CDFF             jmp     00404D38
00731CA1   EBEB                   jmp     00731C8E

****** END
|
00731CA3   5F                     pop     edi
00731CA4   5E                     pop     esi
00731CA5   5B                     pop     ebx
00731CA6   8BE5                   mov     esp, ebp
00731CA8   5D                     pop     ebp
00731CA9   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00731E89(Sender : TObject);
begin
(*
00731E89   8BEC                   mov     ebp, esp
00731E8B   A1C09E7D00             mov     eax, dword ptr [$007D9EC0]

* Reference to: System.@LStrClr(void;void);
|
00731E90   E80736CDFF             call    0040549C
00731E95   A174A17D00             mov     eax, dword ptr [$007DA174]
00731E9A   33D2                   xor     edx, edx
00731E9C   8910                   mov     [eax], edx
00731E9E   A10C9F7D00             mov     eax, dword ptr [$007D9F0C]
00731EA3   33D2                   xor     edx, edx
00731EA5   8910                   mov     [eax], edx
00731EA7   A17CA37D00             mov     eax, dword ptr [$007DA37C]
00731EAC   33D2                   xor     edx, edx
00731EAE   8910                   mov     [eax], edx
00731EB0   A110A07D00             mov     eax, dword ptr [$007DA010]
00731EB5   33D2                   xor     edx, edx
00731EB7   8910                   mov     [eax], edx
00731EB9   A1B4AC7D00             mov     eax, dword ptr [$007DACB4]
00731EBE   BA601F7300             mov     edx, $00731F60

* Reference to: System.@LStrAsg(void;void;void;void);
|
00731EC3   E82836CDFF             call    004054F0
00731EC8   A1E8A57D00             mov     eax, dword ptr [$007DA5E8]
00731ECD   33D2                   xor     edx, edx
00731ECF   8910                   mov     [eax], edx
00731ED1   A188A77D00             mov     eax, dword ptr [$007DA788]
00731ED6   C70001000000           mov     dword ptr [eax], $00000001
00731EDC   A1E89F7D00             mov     eax, dword ptr [$007D9FE8]
00731EE1   C70001000000           mov     dword ptr [eax], $00000001
00731EE7   A134A57D00             mov     eax, dword ptr [$007DA534]

* Reference to: System.@LStrClr(void;void);
|
00731EEC   E8AB35CDFF             call    0040549C
00731EF1   A18CA77D00             mov     eax, dword ptr [$007DA78C]

* Reference to: System.@LStrClr(void;void);
|
00731EF6   E8A135CDFF             call    0040549C
00731EFB   A12CAA7D00             mov     eax, dword ptr [$007DAA2C]
00731F00   33D2                   xor     edx, edx
00731F02   8910                   mov     [eax], edx
00731F04   A158A07D00             mov     eax, dword ptr [$007DA058]
00731F09   33D2                   xor     edx, edx
00731F0B   8910                   mov     [eax], edx
00731F0D   A1D0B27D00             mov     eax, dword ptr [$007DB2D0]
00731F12   33D2                   xor     edx, edx
00731F14   8910                   mov     [eax], edx
00731F16   A154A07D00             mov     eax, dword ptr [$007DA054]
00731F1B   33D2                   xor     edx, edx
00731F1D   8910                   mov     [eax], edx
00731F1F   A130A17D00             mov     eax, dword ptr [$007DA130]
00731F24   33D2                   xor     edx, edx
00731F26   8910                   mov     [eax], edx
00731F28   A1ECAA7D00             mov     eax, dword ptr [$007DAAEC]
00731F2D   33D2                   xor     edx, edx
00731F2F   8910                   mov     [eax], edx
00731F31   A124A77D00             mov     eax, dword ptr [$007DA724]
00731F36   33D2                   xor     edx, edx
00731F38   8910                   mov     [eax], edx
00731F3A   A1A8B47D00             mov     eax, dword ptr [$007DB4A8]
00731F3F   33D2                   xor     edx, edx
00731F41   8910                   mov     [eax], edx
00731F43   A114B67D00             mov     eax, dword ptr [$007DB614]
00731F48   33D2                   xor     edx, edx
00731F4A   8910                   mov     [eax], edx
00731F4C   A1B0AC7D00             mov     eax, dword ptr [$007DACB0]

* Reference to: System.@LStrClr(void;void);
|
00731F51   E84635CDFF             call    0040549C
00731F56   5D                     pop     ebp
00731F57   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00732014(Sender : TObject);
begin
(*
00732014   55                     push    ebp
00732015   8BEC                   mov     ebp, esp
00732017   B904000000             mov     ecx, $00000004
0073201C   6A00                   push    $00
0073201E   6A00                   push    $00
00732020   49                     dec     ecx
00732021   75F9                   jnz     0073201C
00732023   51                     push    ecx
00732024   53                     push    ebx
00732025   56                     push    esi
00732026   8BF2                   mov     esi, edx
00732028   8BD8                   mov     ebx, eax
0073202A   33C0                   xor     eax, eax
0073202C   55                     push    ebp

* Possible String Reference to: 'È-,ÕˇÎ›^[ãÂ]√'
|
0073202D   6806217300             push    $00732106

***** TRY
|
00732032   64FF30                 push    dword ptr fs:[eax]
00732035   648920                 mov     fs:[eax], esp
00732038   A014217300             mov     al, byte ptr [$00732114]
0073203D   50                     push    eax
0073203E   8D45F0                 lea     eax, [ebp-$10]
00732041   8B1560B17D00           mov     edx, [$007DB160]
00732047   8B12                   mov     edx, [edx]
00732049   B1FC                   mov     cl, $FC

|
0073204B   E8206ACEFF             call    00418A70
00732050   8D4DF0                 lea     ecx, [ebp-$10]
00732053   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00732058   8B00                   mov     eax, [eax]
0073205A   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'codigo'
|
0073205D   BA20217300             mov     edx, $00732120

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
00732062   E891630700             call    007A83F8
00732067   84C0                   test    al, al
00732069   7459                   jz      007320C4
0073206B   A014217300             mov     al, byte ptr [$00732114]
00732070   50                     push    eax
00732071   8D45E0                 lea     eax, [ebp-$20]
00732074   8BD6                   mov     edx, esi
00732076   B1FC                   mov     cl, $FC

|
00732078   E8F369CEFF             call    00418A70
0073207D   8D4DE0                 lea     ecx, [ebp-$20]
00732080   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00732085   8B00                   mov     eax, [eax]
00732087   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'CodImpressora'
|
0073208D   BA30217300             mov     edx, $00732130

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
00732092   E861630700             call    007A83F8
00732097   84C0                   test    al, al
00732099   7429                   jz      007320C4
0073209B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007320A0   8B00                   mov     eax, [eax]
007320A2   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Inicializa'
|
007320A8   BA48217300             mov     edx, $00732148

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007320AD   E8527BDBFF             call    004E9C04
007320B2   8D55DC                 lea     edx, [ebp-$24]
007320B5   8B08                   mov     ecx, [eax]
007320B7   FF5160                 call    dword ptr [ecx+$60]
007320BA   8B55DC                 mov     edx, [ebp-$24]
007320BD   8BC3                   mov     eax, ebx

|
007320BF   E840F1FFFF             call    00731204
007320C4   A134A57D00             mov     eax, dword ptr [$007DA534]
007320C9   833800                 cmp     dword ptr [eax], +$00
007320CC   740F                   jz      007320DD
007320CE   8B1534A57D00           mov     edx, [$007DA534]
007320D4   8B12                   mov     edx, [edx]
007320D6   8BC3                   mov     eax, ebx

|
007320D8   E827F1FFFF             call    00731204
007320DD   33C0                   xor     eax, eax
007320DF   5A                     pop     edx
007320E0   59                     pop     ecx
007320E1   59                     pop     ecx
007320E2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[ãÂ]√'
|
007320E5   680D217300             push    $0073210D
007320EA   8D45DC                 lea     eax, [ebp-$24]

* Reference to: System.@LStrClr(void;void);
|
007320ED   E8AA33CDFF             call    0040549C
007320F2   8D45E0                 lea     eax, [ebp-$20]

* Reference to object Variant
|
007320F5   8B1524114000           mov     edx, [$00401124]
007320FB   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00732100   E8973FCDFF             call    0040609C
00732105   C3                     ret


* Reference to: System.@HandleFinally;
|
00732106   E92D2CCDFF             jmp     00404D38
0073210B   EBDD                   jmp     007320EA

****** END
|
0073210D   5E                     pop     esi
0073210E   5B                     pop     ebx
0073210F   8BE5                   mov     esp, ebp
00732111   5D                     pop     ebp
00732112   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00732155(Sender : TObject);
begin
(*
00732155   8BEC                   mov     ebp, esp
00732157   33C9                   xor     ecx, ecx
00732159   51                     push    ecx
0073215A   51                     push    ecx
0073215B   51                     push    ecx
0073215C   51                     push    ecx
0073215D   51                     push    ecx
0073215E   51                     push    ecx
0073215F   53                     push    ebx
00732160   8BD8                   mov     ebx, eax
00732162   33C0                   xor     eax, eax
00732164   55                     push    ebp

* Possible String Reference to: 'È˙*ÕˇÎ„[ãÂ]√'
|
00732165   6839227300             push    $00732239

***** TRY
|
0073216A   64FF30                 push    dword ptr fs:[eax]
0073216D   648920                 mov     fs:[eax], esp
00732170   A048227300             mov     al, byte ptr [$00732248]
00732175   50                     push    eax
00732176   8D45F0                 lea     eax, [ebp-$10]
00732179   8B152CAA7D00           mov     edx, [$007DAA2C]
0073217F   8B12                   mov     edx, [edx]
00732181   B1FC                   mov     cl, $FC

|
00732183   E8E868CEFF             call    00418A70
00732188   8D4DF0                 lea     ecx, [ebp-$10]
0073218B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00732190   8B00                   mov     eax, [eax]
00732192   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'CodImpressora'
|
00732198   BA54227300             mov     edx, $00732254

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
0073219D   E856620700             call    007A83F8
007321A2   84C0                   test    al, al
007321A4   7461                   jz      00732207
007321A6   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007321AB   8B00                   mov     eax, [eax]
007321AD   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Ejeta'
|
007321B3   BA6C227300             mov     edx, $0073226C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007321B8   E8477ADBFF             call    004E9C04
007321BD   8D55EC                 lea     edx, [ebp-$14]
007321C0   8B08                   mov     ecx, [eax]
007321C2   FF5160                 call    dword ptr [ecx+$60]
007321C5   837DEC00               cmp     dword ptr [ebp-$14], +$00
007321C9   742B                   jz      007321F6
007321CB   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007321D0   8B00                   mov     eax, [eax]
007321D2   8B8034010000           mov     eax, [eax+$0134]

* Possible String Reference to: 'Ejeta'
|
007321D8   BA6C227300             mov     edx, $0073226C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007321DD   E8227ADBFF             call    004E9C04
007321E2   8D55E8                 lea     edx, [ebp-$18]
007321E5   8B08                   mov     ecx, [eax]
007321E7   FF5160                 call    dword ptr [ecx+$60]
007321EA   8B55E8                 mov     edx, [ebp-$18]
007321ED   8BC3                   mov     eax, ebx

|
007321EF   E810F0FFFF             call    00731204
007321F4   EB20                   jmp     00732216
007321F6   A178B47D00             mov     eax, dword ptr [$007DB478]
007321FB   8B00                   mov     eax, [eax]
007321FD   8B4068                 mov     eax, [eax+$68]

|
00732200   E83387E6FF             call    0059A938
00732205   EB0F                   jmp     00732216
00732207   A178B47D00             mov     eax, dword ptr [$007DB478]
0073220C   8B00                   mov     eax, [eax]
0073220E   8B4068                 mov     eax, [eax+$68]

|
00732211   E82287E6FF             call    0059A938
00732216   33C0                   xor     eax, eax
00732218   5A                     pop     edx
00732219   59                     pop     ecx
0073221A   59                     pop     ecx
0073221B   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
0073221E   6840227300             push    $00732240
00732223   8D45E8                 lea     eax, [ebp-$18]
00732226   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0073222B   E89032CDFF             call    004054C0
00732230   8D45F0                 lea     eax, [ebp-$10]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00732233   E84023CEFF             call    00414578
00732238   C3                     ret


* Reference to: System.@HandleFinally;
|
00732239   E9FA2ACDFF             jmp     00404D38
0073223E   EBE3                   jmp     00732223

****** END
|
00732240   5B                     pop     ebx
00732241   8BE5                   mov     esp, ebp
00732243   5D                     pop     ebp
00732244   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00732275(Sender : TObject);
begin
(*
00732275   8BEC                   mov     ebp, esp
00732277   83C4D0                 add     esp, -$30
0073227A   53                     push    ebx
0073227B   56                     push    esi
0073227C   57                     push    edi
0073227D   33DB                   xor     ebx, ebx
0073227F   895DD0                 mov     [ebp-$30], ebx
00732282   895DD4                 mov     [ebp-$2C], ebx
00732285   895DE0                 mov     [ebp-$20], ebx
00732288   895DDC                 mov     [ebp-$24], ebx
0073228B   895DD8                 mov     [ebp-$28], ebx
0073228E   895DEC                 mov     [ebp-$14], ebx
00732291   894DF4                 mov     [ebp-$0C], ecx
00732294   8955F8                 mov     [ebp-$08], edx
00732297   8945FC                 mov     [ebp-$04], eax
0073229A   33C0                   xor     eax, eax
0073229C   55                     push    ebp
0073229D   6843257300             push    $00732543

***** TRY
|
007322A2   64FF30                 push    dword ptr fs:[eax]
007322A5   648920                 mov     fs:[eax], esp
007322A8   8B4508                 mov     eax, [ebp+$08]
007322AB   8B00                   mov     eax, [eax]
007322AD   8B10                   mov     edx, [eax]

* Possible reference to virtual method TFrmPreview.OFFS_021C
|
007322AF   FF921C020000           call    dword ptr [edx+$021C]
007322B5   8945E8                 mov     [ebp-$18], eax
007322B8   6A00                   push    $00
007322BA   33C9                   xor     ecx, ecx
007322BC   B201                   mov     dl, $01

* Reference to class TStringArray
|
007322BE   A1E48D5900             mov     eax, dword ptr [$00598DE4]

* Reference to: Mxarrays.TStringArray.Create(TStringArray;boolean;Integer;Integer);
|
007322C3   E8F471E6FF             call    005994BC
007322C8   8945E4                 mov     [ebp-$1C], eax
007322CB   BA3C000000             mov     edx, $0000003C
007322D0   8B45E4                 mov     eax, [ebp-$1C]
007322D3   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TStringArray.OFFS_10
|
007322D5   FF5110                 call    dword ptr [ecx+$10]
007322D8   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TBaseArray.Clear(TBaseArray);
|
007322DB   E8E46CE6FF             call    00598FC4
007322E0   B201                   mov     dl, $01
007322E2   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TBaseArray.SetAutoSize(TBaseArray;Boolean);
|
007322E5   E8AA70E6FF             call    00599394
007322EA   33D2                   xor     edx, edx
007322EC   55                     push    ebp
007322ED   6819257300             push    $00732519

***** TRY
|
007322F2   64FF32                 push    dword ptr fs:[edx]
007322F5   648922                 mov     fs:[edx], esp
007322F8   33D2                   xor     edx, edx
007322FA   55                     push    ebp
007322FB   68D5247300             push    $007324D5

***** TRY
|
00732300   64FF32                 push    dword ptr fs:[edx]
00732303   648922                 mov     fs:[edx], esp
00732306   33DB                   xor     ebx, ebx
00732308   8B3DECAA7D00           mov     edi, [$007DAAEC]
0073230E   8B3F                   mov     edi, [edi]
00732310   4F                     dec     edi
00732311   85FF                   test    edi, edi
00732313   0F8C43010000           jl      0073245C
00732319   47                     inc     edi
0073231A   C745F000000000         mov     dword ptr [ebp-$10], $00000000
00732321   A120AD7D00             mov     eax, dword ptr [$007DAD20]
00732326   8B00                   mov     eax, [eax]
00732328   8B1560AB7D00           mov     edx, [$007DAB60]
0073232E   8902                   mov     [edx], eax

* Possible String Reference to: 'esquerda'
|
00732330   685C257300             push    $0073255C
00732335   8D45EC                 lea     eax, [ebp-$14]
00732338   50                     push    eax
00732339   8B0DD0B27D00           mov     ecx, [$007DB2D0]
0073233F   8B09                   mov     ecx, [ecx]
00732341   BA70257300             mov     edx, $00732570
00732346   B870257300             mov     eax, $00732570

|
0073234B   E878030700             call    007A26C8
00732350   8B35A8B47D00           mov     esi, [$007DB4A8]
00732356   8B36                   mov     esi, [esi]
00732358   85F6                   test    esi, esi
0073235A   0F8EBC000000           jle     0073241C
00732360   A160AB7D00             mov     eax, dword ptr [$007DAB60]
00732365   8B00                   mov     eax, [eax]
00732367   8B15BCAE7D00           mov     edx, [$007DAEBC]
0073236D   3B02                   cmp     eax, [edx]
0073236F   7C13                   jl      00732384
00732371   8B4508                 mov     eax, [ebp+$08]
00732374   8B00                   mov     eax, [eax]

* Reference to: DB.TDataSet.Next(TDataSet);
|
00732376   E8C98FDBFF             call    004EB344
0073237B   A160AB7D00             mov     eax, dword ptr [$007DAB60]
00732380   33D2                   xor     edx, edx
00732382   8910                   mov     [eax], edx
00732384   8B4508                 mov     eax, [ebp+$08]
00732387   8B00                   mov     eax, [eax]
00732389   8A98A1000000           mov     bl, byte ptr [eax+$00A1]
0073238F   84DB                   test    bl, bl
00732391   757B                   jnz     0073240E
00732393   A160AB7D00             mov     eax, dword ptr [$007DAB60]
00732398   8B00                   mov     eax, [eax]
0073239A   8B15BCAE7D00           mov     edx, [$007DAEBC]
007323A0   3B02                   cmp     eax, [edx]
007323A2   7F6A                   jnle    0073240E

* Possible String Reference to: 'esquerda'
|
007323A4   685C257300             push    $0073255C
007323A9   8D45E0                 lea     eax, [ebp-$20]
007323AC   50                     push    eax
007323AD   8D4DD8                 lea     ecx, [ebp-$28]
007323B0   8B55F0                 mov     edx, [ebp-$10]
007323B3   8B45F8                 mov     eax, [ebp-$08]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
007323B6   E8E974E6FF             call    005998A4
007323BB   8B45D8                 mov     eax, [ebp-$28]
007323BE   8D55DC                 lea     edx, [ebp-$24]

|
007323C1   E87ABBFFFF             call    0072DF40
007323C6   8B55DC                 mov     edx, [ebp-$24]
007323C9   8B0D24A77D00           mov     ecx, [$007DA724]
007323CF   8B09                   mov     ecx, [ecx]
007323D1   B870257300             mov     eax, $00732570

|
007323D6   E8ED020700             call    007A26C8
007323DB   8B55E0                 mov     edx, [ebp-$20]
007323DE   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrCat;
|
007323E1   E87E33CDFF             call    00405764

* Possible String Reference to: 'esquerda'
|
007323E6   685C257300             push    $0073255C
007323EB   8D45D4                 lea     eax, [ebp-$2C]
007323EE   50                     push    eax
007323EF   8B0D30A17D00           mov     ecx, [$007DA130]
007323F5   8B09                   mov     ecx, [ecx]
007323F7   33D2                   xor     edx, edx
007323F9   B870257300             mov     eax, $00732570

|
007323FE   E8C5020700             call    007A26C8
00732403   8B55D4                 mov     edx, [ebp-$2C]
00732406   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrCat;
|
00732409   E85633CDFF             call    00405764
0073240E   A160AB7D00             mov     eax, dword ptr [$007DAB60]
00732413   FF00                   inc     dword ptr [eax]
00732415   4E                     dec     esi
00732416   0F8544FFFFFF           jnz     00732360
0073241C   8B55EC                 mov     edx, [ebp-$14]
0073241F   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TStringArray.Add(TStringArray;AnsiString):Integer;
|
00732422   E8E570E6FF             call    0059950C
00732427   84DB                   test    bl, bl
00732429   740D                   jz      00732438
0073242B   A1ECAA7D00             mov     eax, dword ptr [$007DAAEC]
00732430   8B00                   mov     eax, [eax]
00732432   48                     dec     eax
00732433   3B45F0                 cmp     eax, [ebp-$10]
00732436   7424                   jz      0073245C
00732438   A1ECAA7D00             mov     eax, dword ptr [$007DAAEC]
0073243D   8B00                   mov     eax, [eax]
0073243F   48                     dec     eax
00732440   3B45F0                 cmp     eax, [ebp-$10]
00732443   7E0D                   jle     00732452
00732445   8B4508                 mov     eax, [ebp+$08]
00732448   8B00                   mov     eax, [eax]
0073244A   8B55E8                 mov     edx, [ebp-$18]

* Reference to: DB.TDataSet.GotoBookmark(TDataSet;Pointer);
|
0073244D   E8DA99DBFF             call    004EBE2C
00732452   FF45F0                 inc     dword ptr [ebp-$10]
00732455   4F                     dec     edi
00732456   0F85C5FEFFFF           jnz     00732321
0073245C   8B3D54A07D00           mov     edi, [$007DA054]
00732462   8B3F                   mov     edi, [edi]
00732464   85FF                   test    edi, edi
00732466   7E1B                   jle     00732483
00732468   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: '  '
|
0073246B   BA7C257300             mov     edx, $0073257C

* Reference to: System.@LStrLAsg(void;void;void;void);
|
00732470   E8BF30CDFF             call    00405534
00732475   8B55EC                 mov     edx, [ebp-$14]
00732478   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TStringArray.Add(TStringArray;AnsiString):Integer;
|
0073247B   E88C70E6FF             call    0059950C
00732480   4F                     dec     edi
00732481   75E5                   jnz     00732468
00732483   8B45E4                 mov     eax, [ebp-$1C]

* Reference to field TStringArray.OFFS_0010
|
00732486   8B7810                 mov     edi, [eax+$10]
00732489   4F                     dec     edi
0073248A   85FF                   test    edi, edi
0073248C   7C2E                   jl      007324BC
0073248E   47                     inc     edi
0073248F   33DB                   xor     ebx, ebx
00732491   8B4514                 mov     eax, [ebp+$14]
00732494   50                     push    eax
00732495   8B4510                 mov     eax, [ebp+$10]
00732498   50                     push    eax
00732499   8B450C                 mov     eax, [ebp+$0C]
0073249C   50                     push    eax
0073249D   8D4DD0                 lea     ecx, [ebp-$30]
007324A0   8BD3                   mov     edx, ebx
007324A2   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
007324A5   E8FA73E6FF             call    005998A4
007324AA   8B55D0                 mov     edx, [ebp-$30]
007324AD   8B4DF4                 mov     ecx, [ebp-$0C]
007324B0   8B45FC                 mov     eax, [ebp-$04]

|
007324B3   E834B5FFFF             call    0072D9EC
007324B8   43                     inc     ebx
007324B9   4F                     dec     edi
007324BA   75D5                   jnz     00732491
007324BC   A160AB7D00             mov     eax, dword ptr [$007DAB60]
007324C1   8B00                   mov     eax, [eax]
007324C3   8B1520AD7D00           mov     edx, [$007DAD20]
007324C9   8902                   mov     [edx], eax
007324CB   33C0                   xor     eax, eax
007324CD   5A                     pop     edx
007324CE   59                     pop     ecx
007324CF   59                     pop     ecx
007324D0   648910                 mov     fs:[eax], edx
007324D3   EB1E                   jmp     007324F3

* Reference to: System.@HandleOnException;
|
007324D5   E9D626CDFF             jmp     00404BB0
007324DA   0100                   add     [eax], eax
007324DC   0000                   add     [eax], al
007324DE   40                     inc     eax
007324DF   95                     xchg    eax, ebp
007324E0   40                     inc     eax
007324E1   00E6                   add     dh, ah
007324E3   2473                   and     al, $73
007324E5   008B4004E836           add     [ebx+$36E80440], cl
007324EB   17                     pop     ss
007324EC   D1FF                   sar     edi, 1

* Reference to: System.@DoneExcept;
|
007324EE   E8BD29CDFF             call    00404EB0

****** END
|
007324F3   33C0                   xor     eax, eax
007324F5   5A                     pop     edx
007324F6   59                     pop     ecx
007324F7   59                     pop     ecx
007324F8   648910                 mov     fs:[eax], edx

****** FINALLY
|
007324FB   6820257300             push    $00732520
00732500   8B4508                 mov     eax, [ebp+$08]
00732503   8B00                   mov     eax, [eax]
00732505   8B55E8                 mov     edx, [ebp-$18]
00732508   8B08                   mov     ecx, [eax]
0073250A   FF9118020000           call    dword ptr [ecx+$0218]
00732510   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: System.TObject.Free(TObject);
|
00732513   E88420CDFF             call    0040459C
00732518   C3                     ret


* Reference to: System.@HandleFinally;
|
00732519   E91A28CDFF             jmp     00404D38
0073251E   EBE0                   jmp     00732500

****** END
|
00732520   33C0                   xor     eax, eax
00732522   5A                     pop     edx
00732523   59                     pop     ecx
00732524   59                     pop     ecx
00732525   648910                 mov     fs:[eax], edx

****** FINALLY
|
00732528   684A257300             push    $0073254A
0073252D   8D45D0                 lea     eax, [ebp-$30]
00732530   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00732535   E8862FCDFF             call    004054C0
0073253A   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0073253D   E85A2FCDFF             call    0040549C
00732542   C3                     ret


* Reference to: System.@HandleFinally;
|
00732543   E9F027CDFF             jmp     00404D38
00732548   EBE3                   jmp     0073252D

****** END
|
0073254A   5F                     pop     edi
0073254B   5E                     pop     esi
0073254C   5B                     pop     ebx
0073254D   8BE5                   mov     esp, ebp
0073254F   5D                     pop     ebp
00732550   C21000                 ret     $0010

*)
end;

procedure TFrmPreview._PROC_00732519(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00732519   E91A28CDFF             jmp     00404D38

|
0073251E   EBE0                   jmp     00732500
00732520   33C0                   xor     eax, eax
00732522   5A                     pop     edx
00732523   59                     pop     ecx
00732524   59                     pop     ecx
00732525   648910                 mov     fs:[eax], edx

****** FINALLY
|
00732528   684A257300             push    $0073254A
0073252D   8D45D0                 lea     eax, [ebp-$30]
00732530   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00732535   E8862FCDFF             call    004054C0
0073253A   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0073253D   E85A2FCDFF             call    0040549C
00732542   C3                     ret


* Reference to: System.@HandleFinally;
|
00732543   E9F027CDFF             jmp     00404D38
00732548   EBE3                   jmp     0073252D

****** END
|
0073254A   5F                     pop     edi
0073254B   5E                     pop     esi
0073254C   5B                     pop     ebx
0073254D   8BE5                   mov     esp, ebp
0073254F   5D                     pop     ebp
00732550   C21000                 ret     $0010

*)
end;

procedure TFrmPreview._PROC_007325A1(Sender : TObject);
begin
(*
007325A1   8BEC                   mov     ebp, esp
007325A3   33C9                   xor     ecx, ecx
007325A5   51                     push    ecx
007325A6   51                     push    ecx
007325A7   51                     push    ecx
007325A8   51                     push    ecx
007325A9   51                     push    ecx
007325AA   51                     push    ecx
007325AB   51                     push    ecx
007325AC   53                     push    ebx
007325AD   56                     push    esi
007325AE   57                     push    edi
007325AF   8955FC                 mov     [ebp-$04], edx
007325B2   8BF0                   mov     esi, eax
007325B4   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007325B7   E89033CDFF             call    0040594C
007325BC   33C0                   xor     eax, eax
007325BE   55                     push    ebp

* Possible String Reference to: 'È£%ÕˇÎﬁ_^[ãÂ]√'
|
007325BF   6890277300             push    $00732790

***** TRY
|
007325C4   64FF30                 push    dword ptr fs:[eax]
007325C7   648920                 mov     fs:[eax], esp
007325CA   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007325CD   E8CA2ECDFF             call    0040549C
007325D2   8A1DA0277300           mov     bl, byte ptr [$007327A0]
007325D8   8D55EC                 lea     edx, [ebp-$14]
007325DB   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
007325DE   E871D50700             call    007AFB54
007325E3   8B4DEC                 mov     ecx, [ebp-$14]
007325E6   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'CodFonte = '
|
007325E9   BAAC277300             mov     edx, $007327AC

* Reference to: System.@LStrCat3;
|
007325EE   E8B531CDFF             call    004057A8
007325F3   8B45F0                 mov     eax, [ebp-$10]
007325F6   50                     push    eax
007325F7   6A00                   push    $00
007325F9   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007325FE   8B00                   mov     eax, [eax]
00732600   8B80F4000000           mov     eax, [eax+$00F4]
00732606   B9C0277300             mov     ecx, $007327C0

* Possible String Reference to: 'RELFONTE'
|
0073260B   BACC277300             mov     edx, $007327CC

|
00732610   E8A7600700             call    007A86BC
00732615   84C0                   test    al, al
00732617   0F844B010000           jz      00732768
0073261D   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00732622   8B00                   mov     eax, [eax]
00732624   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'Fonte'
|
0073262A   BAE0277300             mov     edx, $007327E0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0073262F   E8D075DBFF             call    004E9C04
00732634   8D55F8                 lea     edx, [ebp-$08]
00732637   8B08                   mov     ecx, [eax]
00732639   FF5160                 call    dword ptr [ecx+$60]
0073263C   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00732641   8B00                   mov     eax, [eax]
00732643   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'Tamanho'
|
00732649   BAF0277300             mov     edx, $007327F0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0073264E   E8B175DBFF             call    004E9C04
00732653   8B10                   mov     edx, [eax]
00732655   FF5258                 call    dword ptr [edx+$58]
00732658   8945F4                 mov     [ebp-$0C], eax
0073265B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00732660   8B00                   mov     eax, [eax]
00732662   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'Cor'
|
00732668   BA00287300             mov     edx, $00732800

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0073266D   E89275DBFF             call    004E9C04
00732672   8D55E8                 lea     edx, [ebp-$18]
00732675   8B08                   mov     ecx, [eax]
00732677   FF5160                 call    dword ptr [ecx+$60]
0073267A   837DE800               cmp     dword ptr [ebp-$18], +$00
0073267E   742B                   jz      007326AB
00732680   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00732685   8B00                   mov     eax, [eax]
00732687   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'Cor'
|
0073268D   BA00287300             mov     edx, $00732800

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00732692   E86D75DBFF             call    004E9C04
00732697   8D55E4                 lea     edx, [ebp-$1C]
0073269A   8B08                   mov     ecx, [eax]
0073269C   FF5160                 call    dword ptr [ecx+$60]
0073269F   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Graphics.StringToColor(AnsiString):TColor;
|
007326A2   E8D5EECFFF             call    0043157C
007326A7   8BF8                   mov     edi, eax
007326A9   EB02                   jmp     007326AD
007326AB   33FF                   xor     edi, edi
007326AD   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007326B2   8B00                   mov     eax, [eax]
007326B4   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'Bold'
|
007326BA   BA0C287300             mov     edx, $0073280C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007326BF   E84075DBFF             call    004E9C04
007326C4   8B10                   mov     edx, [eax]
007326C6   FF5244                 call    dword ptr [edx+$44]
007326C9   84C0                   test    al, al
007326CB   740B                   jz      007326D8
007326CD   A014287300             mov     al, byte ptr [$00732814]
007326D2   0AC3                   or      al, bl
007326D4   8BD8                   mov     ebx, eax
007326D6   EB0B                   jmp     007326E3
007326D8   A014287300             mov     al, byte ptr [$00732814]
007326DD   F7D0                   not     eax 
007326DF   22C3                   and     al, bl
007326E1   8BD8                   mov     ebx, eax
007326E3   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007326E8   8B00                   mov     eax, [eax]
007326EA   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'Italico'
|
007326F0   BA20287300             mov     edx, $00732820

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007326F5   E80A75DBFF             call    004E9C04
007326FA   8B10                   mov     edx, [eax]
007326FC   FF5244                 call    dword ptr [edx+$44]
007326FF   84C0                   test    al, al
00732701   740B                   jz      0073270E
00732703   A028287300             mov     al, byte ptr [$00732828]
00732708   0AC3                   or      al, bl
0073270A   8BD8                   mov     ebx, eax
0073270C   EB0B                   jmp     00732719
0073270E   A028287300             mov     al, byte ptr [$00732828]
00732713   F7D0                   not     eax 
00732715   22C3                   and     al, bl
00732717   8BD8                   mov     ebx, eax
00732719   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0073271E   8B00                   mov     eax, [eax]
00732720   8B80F4000000           mov     eax, [eax+$00F4]

* Possible String Reference to: 'Sublinhado'
|
00732726   BA34287300             mov     edx, $00732834

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0073272B   E8D474DBFF             call    004E9C04
00732730   8B10                   mov     edx, [eax]
00732732   FF5244                 call    dword ptr [edx+$44]
00732735   84C0                   test    al, al
00732737   740B                   jz      00732744
00732739   A040287300             mov     al, byte ptr [$00732840]
0073273E   0AC3                   or      al, bl
00732740   8BD8                   mov     ebx, eax
00732742   EB0B                   jmp     0073274F
00732744   A040287300             mov     al, byte ptr [$00732840]
00732749   F7D0                   not     eax 
0073274B   22C3                   and     al, bl
0073274D   8BD8                   mov     ebx, eax

* Reference to control TFrmPreview.Preview : TFrmPreview
|
0073274F   8B86F8020000           mov     eax, [esi+$02F8]

* Reference to field TFrmPreview.OFFS_0224
|
00732755   8B8024020000           mov     eax, [eax+$0224]
0073275B   57                     push    edi
0073275C   53                     push    ebx
0073275D   8B4DF4                 mov     ecx, [ebp-$0C]
00732760   8B55F8                 mov     edx, [ebp-$08]

|
00732763   E8BCF7FDFF             call    00711F24
00732768   33C0                   xor     eax, eax
0073276A   5A                     pop     edx
0073276B   59                     pop     ecx
0073276C   59                     pop     ecx
0073276D   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
00732770   6897277300             push    $00732797
00732775   8D45E4                 lea     eax, [ebp-$1C]
00732778   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0073277D   E83E2DCDFF             call    004054C0
00732782   8D45F8                 lea     eax, [ebp-$08]
00732785   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0073278A   E8312DCDFF             call    004054C0
0073278F   C3                     ret


* Reference to: System.@HandleFinally;
|
00732790   E9A325CDFF             jmp     00404D38
00732795   EBDE                   jmp     00732775

****** END
|
00732797   5F                     pop     edi
00732798   5E                     pop     esi
00732799   5B                     pop     ebx
0073279A   8BE5                   mov     esp, ebp
0073279C   5D                     pop     ebp
0073279D   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00732845(Sender : TObject);
begin
(*
00732845   8BEC                   mov     ebp, esp
00732847   83C4D0                 add     esp, -$30
0073284A   53                     push    ebx
0073284B   56                     push    esi
0073284C   57                     push    edi
0073284D   33DB                   xor     ebx, ebx
0073284F   895DD0                 mov     [ebp-$30], ebx
00732852   895DD4                 mov     [ebp-$2C], ebx
00732855   895DE0                 mov     [ebp-$20], ebx
00732858   895DDC                 mov     [ebp-$24], ebx
0073285B   895DD8                 mov     [ebp-$28], ebx
0073285E   895DEC                 mov     [ebp-$14], ebx
00732861   894DF4                 mov     [ebp-$0C], ecx
00732864   8955F8                 mov     [ebp-$08], edx
00732867   8945FC                 mov     [ebp-$04], eax
0073286A   33C0                   xor     eax, eax
0073286C   55                     push    ebp
0073286D   68BB2A7300             push    $00732ABB

***** TRY
|
00732872   64FF30                 push    dword ptr fs:[eax]
00732875   648920                 mov     fs:[eax], esp
00732878   8B45F4                 mov     eax, [ebp-$0C]
0073287B   8B00                   mov     eax, [eax]
0073287D   8B10                   mov     edx, [eax]
0073287F   FF921C020000           call    dword ptr [edx+$021C]
00732885   8945E8                 mov     [ebp-$18], eax
00732888   6A00                   push    $00
0073288A   33C9                   xor     ecx, ecx
0073288C   B201                   mov     dl, $01

* Reference to class TStringArray
|
0073288E   A1E48D5900             mov     eax, dword ptr [$00598DE4]

* Reference to: Mxarrays.TStringArray.Create(TStringArray;boolean;Integer;Integer);
|
00732893   E8246CE6FF             call    005994BC
00732898   8945E4                 mov     [ebp-$1C], eax
0073289B   BA3C000000             mov     edx, $0000003C
007328A0   8B45E4                 mov     eax, [ebp-$1C]
007328A3   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TStringArray.OFFS_10
|
007328A5   FF5110                 call    dword ptr [ecx+$10]
007328A8   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TBaseArray.Clear(TBaseArray);
|
007328AB   E81467E6FF             call    00598FC4
007328B0   B201                   mov     dl, $01
007328B2   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TBaseArray.SetAutoSize(TBaseArray;Boolean);
|
007328B5   E8DA6AE6FF             call    00599394
007328BA   33D2                   xor     edx, edx
007328BC   55                     push    ebp
007328BD   68912A7300             push    $00732A91

***** TRY
|
007328C2   64FF32                 push    dword ptr fs:[edx]
007328C5   648922                 mov     fs:[edx], esp
007328C8   33D2                   xor     edx, edx
007328CA   55                     push    ebp
007328CB   684D2A7300             push    $00732A4D

***** TRY
|
007328D0   64FF32                 push    dword ptr fs:[edx]
007328D3   648922                 mov     fs:[edx], esp
007328D6   8B35ECAA7D00           mov     esi, [$007DAAEC]
007328DC   8B36                   mov     esi, [esi]
007328DE   4E                     dec     esi
007328DF   85F6                   test    esi, esi
007328E1   0F8CE9000000           jl      007329D0
007328E7   46                     inc     esi
007328E8   C745F000000000         mov     dword ptr [ebp-$10], $00000000

* Possible String Reference to: 'esquerda'
|
007328EF   68D42A7300             push    $00732AD4
007328F4   8D45EC                 lea     eax, [ebp-$14]
007328F7   50                     push    eax
007328F8   8B0DD0B27D00           mov     ecx, [$007DB2D0]
007328FE   8B09                   mov     ecx, [ecx]
00732900   33D2                   xor     edx, edx
00732902   33C0                   xor     eax, eax

|
00732904   E8BFFD0600             call    007A26C8
00732909   33DB                   xor     ebx, ebx
0073290B   8B3DA8B47D00           mov     edi, [$007DB4A8]
00732911   8B3F                   mov     edi, [edi]
00732913   85FF                   test    edi, edi
00732915   0F8E93000000           jle     007329AE
0073291B   84DB                   test    bl, bl
0073291D   0F8584000000           jnz     007329A7

* Possible String Reference to: 'esquerda'
|
00732923   68D42A7300             push    $00732AD4
00732928   8D45E0                 lea     eax, [ebp-$20]
0073292B   50                     push    eax
0073292C   8D4DD8                 lea     ecx, [ebp-$28]
0073292F   8B55F0                 mov     edx, [ebp-$10]
00732932   8B45F8                 mov     eax, [ebp-$08]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
00732935   E86A6FE6FF             call    005998A4
0073293A   8B45D8                 mov     eax, [ebp-$28]
0073293D   8D55DC                 lea     edx, [ebp-$24]

|
00732940   E8FBB5FFFF             call    0072DF40
00732945   8B55DC                 mov     edx, [ebp-$24]
00732948   8B0D24A77D00           mov     ecx, [$007DA724]
0073294E   8B09                   mov     ecx, [ecx]
00732950   B8E82A7300             mov     eax, $00732AE8

|
00732955   E86EFD0600             call    007A26C8
0073295A   8B55E0                 mov     edx, [ebp-$20]
0073295D   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrCat;
|
00732960   E8FF2DCDFF             call    00405764
00732965   8B45F4                 mov     eax, [ebp-$0C]
00732968   8B00                   mov     eax, [eax]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0073296A   E8D589DBFF             call    004EB344

* Possible String Reference to: 'esquerda'
|
0073296F   68D42A7300             push    $00732AD4
00732974   8D45D4                 lea     eax, [ebp-$2C]
00732977   50                     push    eax
00732978   8B0D30A17D00           mov     ecx, [$007DA130]
0073297E   8B09                   mov     ecx, [ecx]
00732980   33D2                   xor     edx, edx
00732982   B8E82A7300             mov     eax, $00732AE8

|
00732987   E83CFD0600             call    007A26C8
0073298C   8B55D4                 mov     edx, [ebp-$2C]
0073298F   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrCat;
|
00732992   E8CD2DCDFF             call    00405764
00732997   8B45F4                 mov     eax, [ebp-$0C]
0073299A   8B00                   mov     eax, [eax]
0073299C   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
007329A3   7402                   jz      007329A7
007329A5   B301                   mov     bl, $01
007329A7   4F                     dec     edi
007329A8   0F856DFFFFFF           jnz     0073291B
007329AE   8B55EC                 mov     edx, [ebp-$14]
007329B1   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TStringArray.Add(TStringArray;AnsiString):Integer;
|
007329B4   E8536BE6FF             call    0059950C
007329B9   8B45F4                 mov     eax, [ebp-$0C]
007329BC   8B00                   mov     eax, [eax]
007329BE   8B55E8                 mov     edx, [ebp-$18]

* Reference to: DB.TDataSet.GotoBookmark(TDataSet;Pointer);
|
007329C1   E86694DBFF             call    004EBE2C
007329C6   FF45F0                 inc     dword ptr [ebp-$10]
007329C9   4E                     dec     esi
007329CA   0F851FFFFFFF           jnz     007328EF
007329D0   8B3554A07D00           mov     esi, [$007DA054]
007329D6   8B36                   mov     esi, [esi]
007329D8   85F6                   test    esi, esi
007329DA   7E1B                   jle     007329F7
007329DC   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: '  '
|
007329DF   BAF42A7300             mov     edx, $00732AF4

* Reference to: System.@LStrLAsg(void;void;void;void);
|
007329E4   E84B2BCDFF             call    00405534
007329E9   8B55EC                 mov     edx, [ebp-$14]
007329EC   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TStringArray.Add(TStringArray;AnsiString):Integer;
|
007329EF   E8186BE6FF             call    0059950C
007329F4   4E                     dec     esi
007329F5   75E5                   jnz     007329DC
007329F7   8B45E4                 mov     eax, [ebp-$1C]

* Reference to field TStringArray.OFFS_0010
|
007329FA   8B7010                 mov     esi, [eax+$10]
007329FD   4E                     dec     esi
007329FE   85F6                   test    esi, esi
00732A00   7C22                   jl      00732A24
00732A02   46                     inc     esi
00732A03   33DB                   xor     ebx, ebx
00732A05   8D4DD0                 lea     ecx, [ebp-$30]
00732A08   8BD3                   mov     edx, ebx
00732A0A   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
00732A0D   E8926EE6FF             call    005998A4
00732A12   8B55D0                 mov     edx, [ebp-$30]
00732A15   8D4D08                 lea     ecx, [ebp+$08]
00732A18   8B45FC                 mov     eax, [ebp-$04]

|
00732A1B   E8F4CDFFFF             call    0072F814
00732A20   43                     inc     ebx
00732A21   4E                     dec     esi
00732A22   75E1                   jnz     00732A05
00732A24   8B45F4                 mov     eax, [ebp-$0C]
00732A27   8B00                   mov     eax, [eax]
00732A29   8B55E8                 mov     edx, [ebp-$18]

* Reference to: DB.TDataSet.GotoBookmark(TDataSet;Pointer);
|
00732A2C   E8FB93DBFF             call    004EBE2C
00732A31   8B15A8B47D00           mov     edx, [$007DB4A8]
00732A37   8B12                   mov     edx, [edx]
00732A39   8B45F4                 mov     eax, [ebp-$0C]
00732A3C   8B00                   mov     eax, [eax]

* Reference to: DB.TDataSet.MoveBy(TDataSet;Integer):Integer;
|
00732A3E   E85D87DBFF             call    004EB1A0
00732A43   33C0                   xor     eax, eax
00732A45   5A                     pop     edx
00732A46   59                     pop     ecx
00732A47   59                     pop     ecx
00732A48   648910                 mov     fs:[eax], edx
00732A4B   EB1E                   jmp     00732A6B

* Reference to: System.@HandleOnException;
|
00732A4D   E95E21CDFF             jmp     00404BB0
00732A52   0100                   add     [eax], eax
00732A54   0000                   add     [eax], al
00732A56   40                     inc     eax
00732A57   95                     xchg    eax, ebp
00732A58   40                     inc     eax
00732A59   005E2A                 add     [esi+$2A], bl
00732A5C   7300                   jnb     00732A5E
00732A5E   8B4004                 mov     eax, [eax+$04]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
00732A61   E8BE11D1FF             call    00443C24

* Reference to: System.@DoneExcept;
|
00732A66   E84524CDFF             call    00404EB0

****** END
|
00732A6B   33C0                   xor     eax, eax
00732A6D   5A                     pop     edx
00732A6E   59                     pop     ecx
00732A6F   59                     pop     ecx
00732A70   648910                 mov     fs:[eax], edx

****** FINALLY
|
00732A73   68982A7300             push    $00732A98
00732A78   8B45F4                 mov     eax, [ebp-$0C]
00732A7B   8B00                   mov     eax, [eax]
00732A7D   8B55E8                 mov     edx, [ebp-$18]
00732A80   8B08                   mov     ecx, [eax]
00732A82   FF9118020000           call    dword ptr [ecx+$0218]
00732A88   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: System.TObject.Free(TObject);
|
00732A8B   E80C1BCDFF             call    0040459C
00732A90   C3                     ret


* Reference to: System.@HandleFinally;
|
00732A91   E9A222CDFF             jmp     00404D38
00732A96   EBE0                   jmp     00732A78

****** END
|
00732A98   33C0                   xor     eax, eax
00732A9A   5A                     pop     edx
00732A9B   59                     pop     ecx
00732A9C   59                     pop     ecx
00732A9D   648910                 mov     fs:[eax], edx

****** FINALLY
|
00732AA0   68C22A7300             push    $00732AC2
00732AA5   8D45D0                 lea     eax, [ebp-$30]
00732AA8   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00732AAD   E80E2ACDFF             call    004054C0
00732AB2   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
00732AB5   E8E229CDFF             call    0040549C
00732ABA   C3                     ret


* Reference to: System.@HandleFinally;
|
00732ABB   E97822CDFF             jmp     00404D38
00732AC0   EBE3                   jmp     00732AA5

****** END
|
00732AC2   5F                     pop     edi
00732AC3   5E                     pop     esi
00732AC4   5B                     pop     ebx
00732AC5   8BE5                   mov     esp, ebp
00732AC7   5D                     pop     ebp
00732AC8   C20800                 ret     $0008

*)
end;

procedure TFrmPreview._PROC_00732A91(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00732A91   E9A222CDFF             jmp     00404D38

|
00732A96   EBE0                   jmp     00732A78
00732A98   33C0                   xor     eax, eax
00732A9A   5A                     pop     edx
00732A9B   59                     pop     ecx
00732A9C   59                     pop     ecx
00732A9D   648910                 mov     fs:[eax], edx

****** FINALLY
|
00732AA0   68C22A7300             push    $00732AC2
00732AA5   8D45D0                 lea     eax, [ebp-$30]
00732AA8   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00732AAD   E80E2ACDFF             call    004054C0
00732AB2   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
00732AB5   E8E229CDFF             call    0040549C
00732ABA   C3                     ret


* Reference to: System.@HandleFinally;
|
00732ABB   E97822CDFF             jmp     00404D38
00732AC0   EBE3                   jmp     00732AA5

****** END
|
00732AC2   5F                     pop     edi
00732AC3   5E                     pop     esi
00732AC4   5B                     pop     ebx
00732AC5   8BE5                   mov     esp, ebp
00732AC7   5D                     pop     ebp
00732AC8   C20800                 ret     $0008

*)
end;

procedure TFrmPreview._PROC_00732AF9(Sender : TObject);
begin
(*
00732AF9   8BEC                   mov     ebp, esp
00732AFB   53                     push    ebx
00732AFC   56                     push    esi
00732AFD   57                     push    edi
00732AFE   8BFA                   mov     edi, edx
00732B00   8BF0                   mov     esi, eax
00732B02   8B1D58A07D00           mov     ebx, [$007DA058]
00732B08   8B1B                   mov     ebx, [ebx]
00732B0A   85DB                   test    ebx, ebx
00732B0C   7E0C                   jle     00732B1A
00732B0E   8BD7                   mov     edx, edi
00732B10   8BC6                   mov     eax, esi

* Reference to : TFrmPreview._PROC_007317A4()
|
00732B12   E88DECFFFF             call    007317A4
00732B17   4B                     dec     ebx
00732B18   75F4                   jnz     00732B0E
00732B1A   5F                     pop     edi
00732B1B   5E                     pop     esi
00732B1C   5B                     pop     ebx
00732B1D   5D                     pop     ebp
00732B1E   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00732B20(Sender : TObject);
begin
(*
00732B20   55                     push    ebp
00732B21   8BEC                   mov     ebp, esp
00732B23   83C4D0                 add     esp, -$30
00732B26   53                     push    ebx
00732B27   56                     push    esi
00732B28   57                     push    edi
00732B29   33DB                   xor     ebx, ebx
00732B2B   895DD0                 mov     [ebp-$30], ebx
00732B2E   895DD4                 mov     [ebp-$2C], ebx
00732B31   895DE0                 mov     [ebp-$20], ebx
00732B34   895DDC                 mov     [ebp-$24], ebx
00732B37   895DD8                 mov     [ebp-$28], ebx
00732B3A   895DEC                 mov     [ebp-$14], ebx
00732B3D   894DF4                 mov     [ebp-$0C], ecx
00732B40   8955F8                 mov     [ebp-$08], edx
00732B43   8945FC                 mov     [ebp-$04], eax
00732B46   33C0                   xor     eax, eax
00732B48   55                     push    ebp
00732B49   68972D7300             push    $00732D97

***** TRY
|
00732B4E   64FF30                 push    dword ptr fs:[eax]
00732B51   648920                 mov     fs:[eax], esp
00732B54   8B45F4                 mov     eax, [ebp-$0C]
00732B57   8B00                   mov     eax, [eax]
00732B59   8B10                   mov     edx, [eax]
00732B5B   FF921C020000           call    dword ptr [edx+$021C]
00732B61   8945E8                 mov     [ebp-$18], eax
00732B64   6A00                   push    $00
00732B66   33C9                   xor     ecx, ecx
00732B68   B201                   mov     dl, $01

* Reference to class TStringArray
|
00732B6A   A1E48D5900             mov     eax, dword ptr [$00598DE4]

* Reference to: Mxarrays.TStringArray.Create(TStringArray;boolean;Integer;Integer);
|
00732B6F   E84869E6FF             call    005994BC
00732B74   8945E4                 mov     [ebp-$1C], eax
00732B77   BA3C000000             mov     edx, $0000003C
00732B7C   8B45E4                 mov     eax, [ebp-$1C]
00732B7F   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TStringArray.OFFS_10
|
00732B81   FF5110                 call    dword ptr [ecx+$10]
00732B84   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TBaseArray.Clear(TBaseArray);
|
00732B87   E83864E6FF             call    00598FC4
00732B8C   B201                   mov     dl, $01
00732B8E   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TBaseArray.SetAutoSize(TBaseArray;Boolean);
|
00732B91   E8FE67E6FF             call    00599394
00732B96   33D2                   xor     edx, edx
00732B98   55                     push    ebp
00732B99   686D2D7300             push    $00732D6D

***** TRY
|
00732B9E   64FF32                 push    dword ptr fs:[edx]
00732BA1   648922                 mov     fs:[edx], esp
00732BA4   33D2                   xor     edx, edx
00732BA6   55                     push    ebp
00732BA7   68292D7300             push    $00732D29

***** TRY
|
00732BAC   64FF32                 push    dword ptr fs:[edx]
00732BAF   648922                 mov     fs:[edx], esp
00732BB2   8B35ECAA7D00           mov     esi, [$007DAAEC]
00732BB8   8B36                   mov     esi, [esi]
00732BBA   4E                     dec     esi
00732BBB   85F6                   test    esi, esi
00732BBD   0F8CE9000000           jl      00732CAC
00732BC3   46                     inc     esi
00732BC4   C745F000000000         mov     dword ptr [ebp-$10], $00000000

* Possible String Reference to: 'esquerda'
|
00732BCB   68B02D7300             push    $00732DB0
00732BD0   8D45EC                 lea     eax, [ebp-$14]
00732BD3   50                     push    eax
00732BD4   8B0DD0B27D00           mov     ecx, [$007DB2D0]
00732BDA   8B09                   mov     ecx, [ecx]
00732BDC   33D2                   xor     edx, edx
00732BDE   33C0                   xor     eax, eax

|
00732BE0   E8E3FA0600             call    007A26C8
00732BE5   33DB                   xor     ebx, ebx
00732BE7   8B3DA8B47D00           mov     edi, [$007DB4A8]
00732BED   8B3F                   mov     edi, [edi]
00732BEF   85FF                   test    edi, edi
00732BF1   0F8E93000000           jle     00732C8A
00732BF7   84DB                   test    bl, bl
00732BF9   0F8584000000           jnz     00732C83

* Possible String Reference to: 'esquerda'
|
00732BFF   68B02D7300             push    $00732DB0
00732C04   8D45E0                 lea     eax, [ebp-$20]
00732C07   50                     push    eax
00732C08   8D4DD8                 lea     ecx, [ebp-$28]
00732C0B   8B55F0                 mov     edx, [ebp-$10]
00732C0E   8B45F8                 mov     eax, [ebp-$08]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
00732C11   E88E6CE6FF             call    005998A4
00732C16   8B45D8                 mov     eax, [ebp-$28]
00732C19   8D55DC                 lea     edx, [ebp-$24]

|
00732C1C   E81FB3FFFF             call    0072DF40
00732C21   8B55DC                 mov     edx, [ebp-$24]
00732C24   8B0D24A77D00           mov     ecx, [$007DA724]
00732C2A   8B09                   mov     ecx, [ecx]
00732C2C   B8C42D7300             mov     eax, $00732DC4

|
00732C31   E892FA0600             call    007A26C8
00732C36   8B55E0                 mov     edx, [ebp-$20]
00732C39   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrCat;
|
00732C3C   E8232BCDFF             call    00405764
00732C41   8B45F4                 mov     eax, [ebp-$0C]
00732C44   8B00                   mov     eax, [eax]

* Reference to: DB.TDataSet.Next(TDataSet);
|
00732C46   E8F986DBFF             call    004EB344

* Possible String Reference to: 'esquerda'
|
00732C4B   68B02D7300             push    $00732DB0
00732C50   8D45D4                 lea     eax, [ebp-$2C]
00732C53   50                     push    eax
00732C54   8B0D30A17D00           mov     ecx, [$007DA130]
00732C5A   8B09                   mov     ecx, [ecx]
00732C5C   33D2                   xor     edx, edx
00732C5E   B8C42D7300             mov     eax, $00732DC4

|
00732C63   E860FA0600             call    007A26C8
00732C68   8B55D4                 mov     edx, [ebp-$2C]
00732C6B   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrCat;
|
00732C6E   E8F12ACDFF             call    00405764
00732C73   8B45F4                 mov     eax, [ebp-$0C]
00732C76   8B00                   mov     eax, [eax]
00732C78   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
00732C7F   7402                   jz      00732C83
00732C81   B301                   mov     bl, $01
00732C83   4F                     dec     edi
00732C84   0F856DFFFFFF           jnz     00732BF7
00732C8A   8B55EC                 mov     edx, [ebp-$14]
00732C8D   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TStringArray.Add(TStringArray;AnsiString):Integer;
|
00732C90   E87768E6FF             call    0059950C
00732C95   8B45F4                 mov     eax, [ebp-$0C]
00732C98   8B00                   mov     eax, [eax]
00732C9A   8B55E8                 mov     edx, [ebp-$18]

* Reference to: DB.TDataSet.GotoBookmark(TDataSet;Pointer);
|
00732C9D   E88A91DBFF             call    004EBE2C
00732CA2   FF45F0                 inc     dword ptr [ebp-$10]
00732CA5   4E                     dec     esi
00732CA6   0F851FFFFFFF           jnz     00732BCB
00732CAC   8B3554A07D00           mov     esi, [$007DA054]
00732CB2   8B36                   mov     esi, [esi]
00732CB4   85F6                   test    esi, esi
00732CB6   7E1B                   jle     00732CD3
00732CB8   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: '  '
|
00732CBB   BAD02D7300             mov     edx, $00732DD0

* Reference to: System.@LStrLAsg(void;void;void;void);
|
00732CC0   E86F28CDFF             call    00405534
00732CC5   8B55EC                 mov     edx, [ebp-$14]
00732CC8   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TStringArray.Add(TStringArray;AnsiString):Integer;
|
00732CCB   E83C68E6FF             call    0059950C
00732CD0   4E                     dec     esi
00732CD1   75E5                   jnz     00732CB8
00732CD3   8B45E4                 mov     eax, [ebp-$1C]

* Reference to field TStringArray.OFFS_0010
|
00732CD6   8B7010                 mov     esi, [eax+$10]
00732CD9   4E                     dec     esi
00732CDA   85F6                   test    esi, esi
00732CDC   7C22                   jl      00732D00
00732CDE   46                     inc     esi
00732CDF   33DB                   xor     ebx, ebx
00732CE1   8D4DD0                 lea     ecx, [ebp-$30]
00732CE4   8BD3                   mov     edx, ebx
00732CE6   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
00732CE9   E8B66BE6FF             call    005998A4
00732CEE   8B55D0                 mov     edx, [ebp-$30]
00732CF1   8D4D08                 lea     ecx, [ebp+$08]
00732CF4   8B45FC                 mov     eax, [ebp-$04]

|
00732CF7   E8E0D4FFFF             call    007301DC
00732CFC   43                     inc     ebx
00732CFD   4E                     dec     esi
00732CFE   75E1                   jnz     00732CE1
00732D00   8B45F4                 mov     eax, [ebp-$0C]
00732D03   8B00                   mov     eax, [eax]
00732D05   8B55E8                 mov     edx, [ebp-$18]

* Reference to: DB.TDataSet.GotoBookmark(TDataSet;Pointer);
|
00732D08   E81F91DBFF             call    004EBE2C
00732D0D   8B15A8B47D00           mov     edx, [$007DB4A8]
00732D13   8B12                   mov     edx, [edx]
00732D15   8B45F4                 mov     eax, [ebp-$0C]
00732D18   8B00                   mov     eax, [eax]

* Reference to: DB.TDataSet.MoveBy(TDataSet;Integer):Integer;
|
00732D1A   E88184DBFF             call    004EB1A0
00732D1F   33C0                   xor     eax, eax
00732D21   5A                     pop     edx
00732D22   59                     pop     ecx
00732D23   59                     pop     ecx
00732D24   648910                 mov     fs:[eax], edx
00732D27   EB1E                   jmp     00732D47

* Reference to: System.@HandleOnException;
|
00732D29   E9821ECDFF             jmp     00404BB0
00732D2E   0100                   add     [eax], eax
00732D30   0000                   add     [eax], al
00732D32   40                     inc     eax
00732D33   95                     xchg    eax, ebp
00732D34   40                     inc     eax
00732D35   003A                   add     [edx], bh
00732D37   2D73008B40             sub     eax, $408B0073
00732D3C   04E8                   add     al, -$18
00732D3E   E20E                   loop    +$0E
00732D40   D1FF                   sar     edi, 1

* Reference to: System.@DoneExcept;
|
00732D42   E86921CDFF             call    00404EB0

****** END
|
00732D47   33C0                   xor     eax, eax
00732D49   5A                     pop     edx
00732D4A   59                     pop     ecx
00732D4B   59                     pop     ecx
00732D4C   648910                 mov     fs:[eax], edx

****** FINALLY
|
00732D4F   68742D7300             push    $00732D74
00732D54   8B45F4                 mov     eax, [ebp-$0C]
00732D57   8B00                   mov     eax, [eax]
00732D59   8B55E8                 mov     edx, [ebp-$18]
00732D5C   8B08                   mov     ecx, [eax]
00732D5E   FF9118020000           call    dword ptr [ecx+$0218]
00732D64   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: System.TObject.Free(TObject);
|
00732D67   E83018CDFF             call    0040459C
00732D6C   C3                     ret


* Reference to: System.@HandleFinally;
|
00732D6D   E9C61FCDFF             jmp     00404D38
00732D72   EBE0                   jmp     00732D54

****** END
|
00732D74   33C0                   xor     eax, eax
00732D76   5A                     pop     edx
00732D77   59                     pop     ecx
00732D78   59                     pop     ecx
00732D79   648910                 mov     fs:[eax], edx

****** FINALLY
|
00732D7C   689E2D7300             push    $00732D9E
00732D81   8D45D0                 lea     eax, [ebp-$30]
00732D84   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00732D89   E83227CDFF             call    004054C0
00732D8E   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
00732D91   E80627CDFF             call    0040549C
00732D96   C3                     ret


* Reference to: System.@HandleFinally;
|
00732D97   E99C1FCDFF             jmp     00404D38
00732D9C   EBE3                   jmp     00732D81

****** END
|
00732D9E   5F                     pop     edi
00732D9F   5E                     pop     esi
00732DA0   5B                     pop     ebx
00732DA1   8BE5                   mov     esp, ebp
00732DA3   5D                     pop     ebp
00732DA4   C20800                 ret     $0008

*)
end;

procedure TFrmPreview._PROC_00732D6D(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00732D6D   E9C61FCDFF             jmp     00404D38

|
00732D72   EBE0                   jmp     00732D54
00732D74   33C0                   xor     eax, eax
00732D76   5A                     pop     edx
00732D77   59                     pop     ecx
00732D78   59                     pop     ecx
00732D79   648910                 mov     fs:[eax], edx

****** FINALLY
|
00732D7C   689E2D7300             push    $00732D9E
00732D81   8D45D0                 lea     eax, [ebp-$30]
00732D84   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00732D89   E83227CDFF             call    004054C0
00732D8E   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
00732D91   E80627CDFF             call    0040549C
00732D96   C3                     ret


* Reference to: System.@HandleFinally;
|
00732D97   E99C1FCDFF             jmp     00404D38
00732D9C   EBE3                   jmp     00732D81

****** END
|
00732D9E   5F                     pop     edi
00732D9F   5E                     pop     esi
00732DA0   5B                     pop     ebx
00732DA1   8BE5                   mov     esp, ebp
00732DA3   5D                     pop     ebp
00732DA4   C20800                 ret     $0008

*)
end;

procedure TFrmPreview._PROC_00732DD5(Sender : TObject);
begin
(*
00732DD5   8BEC                   mov     ebp, esp
00732DD7   53                     push    ebx
00732DD8   56                     push    esi
00732DD9   57                     push    edi
00732DDA   8BFA                   mov     edi, edx
00732DDC   8BF0                   mov     esi, eax
00732DDE   8B1D58A07D00           mov     ebx, [$007DA058]
00732DE4   8B1B                   mov     ebx, [ebx]
00732DE6   85DB                   test    ebx, ebx
00732DE8   7E0C                   jle     00732DF6
00732DEA   8BD7                   mov     edx, edi
00732DEC   8BC6                   mov     eax, esi

|
00732DEE   E8DDE9FFFF             call    007317D0
00732DF3   4B                     dec     ebx
00732DF4   75F4                   jnz     00732DEA
00732DF6   5F                     pop     edi
00732DF7   5E                     pop     esi
00732DF8   5B                     pop     ebx
00732DF9   5D                     pop     ebp
00732DFA   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00732DFC(Sender : TObject);
begin
(*
00732DFC   55                     push    ebp
00732DFD   8BEC                   mov     ebp, esp
00732DFF   83C4F0                 add     esp, -$10
00732E02   53                     push    ebx
00732E03   56                     push    esi
00732E04   57                     push    edi
00732E05   33DB                   xor     ebx, ebx
00732E07   895DF0                 mov     [ebp-$10], ebx
00732E0A   895DF4                 mov     [ebp-$0C], ebx
00732E0D   894DF8                 mov     [ebp-$08], ecx
00732E10   8BF2                   mov     esi, edx
00732E12   8945FC                 mov     [ebp-$04], eax
00732E15   33C0                   xor     eax, eax
00732E17   55                     push    ebp
00732E18   68D82E7300             push    $00732ED8

***** TRY
|
00732E1D   64FF30                 push    dword ptr fs:[eax]
00732E20   648920                 mov     fs:[eax], esp
00732E23   8D1CF6                 lea     ebx, [esi+esi*8]
00732E26   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00732E2B   8B00                   mov     eax, [eax]
00732E2D   8D449848               lea     eax, [eax+ebx*4+$48]
00732E31   BAE82E7300             mov     edx, $00732EE8
00732E36   33C9                   xor     ecx, ecx
00732E38   8A08                   mov     cl, byte ptr [eax]
00732E3A   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
00732E3B   E81006CDFF             call    00403450
00732E40   757B                   jnz     00732EBD
00732E42   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
00732E47   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
00732E49   BAFC2E7300             mov     edx, $00732EFC

* Reference to: System.@LStrCmp;
|
00732E4E   E8552ACDFF             call    004058A8
00732E53   7568                   jnz     00732EBD
00732E55   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00732E5A   8B00                   mov     eax, [eax]
00732E5C   807C986800             cmp     byte ptr [eax+ebx*4+$68], $00
00732E61   745A                   jz      00732EBD
00732E63   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00732E68   8B00                   mov     eax, [eax]
00732E6A   8B44985C               mov     eax, [eax+ebx*4+$5C]
00732E6E   8B4010                 mov     eax, [eax+$10]
00732E71   48                     dec     eax
00732E72   85C0                   test    eax, eax
00732E74   7C47                   jl      00732EBD
00732E76   40                     inc     eax
00732E77   89C3                   mov     ebx, eax
00732E79   33FF                   xor     edi, edi
00732E7B   8D04F6                 lea     eax, [esi+esi*8]
00732E7E   8B1578AE7D00           mov     edx, [$007DAE78]
00732E84   8B12                   mov     edx, [edx]
00732E86   8B44825C               mov     eax, [edx+eax*4+$5C]
00732E8A   8D4DF0                 lea     ecx, [ebp-$10]
00732E8D   8BD7                   mov     edx, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
00732E8F   E8106AE6FF             call    005998A4
00732E94   8B45F0                 mov     eax, [ebp-$10]
00732E97   8D55F4                 lea     edx, [ebp-$0C]

|
00732E9A   E8A1B0FFFF             call    0072DF40
00732E9F   8B4510                 mov     eax, [ebp+$10]
00732EA2   50                     push    eax
00732EA3   8B450C                 mov     eax, [ebp+$0C]
00732EA6   50                     push    eax
00732EA7   8B4508                 mov     eax, [ebp+$08]
00732EAA   50                     push    eax
00732EAB   8B4DF8                 mov     ecx, [ebp-$08]
00732EAE   8B55F4                 mov     edx, [ebp-$0C]
00732EB1   8B45FC                 mov     eax, [ebp-$04]

|
00732EB4   E833ABFFFF             call    0072D9EC
00732EB9   47                     inc     edi
00732EBA   4B                     dec     ebx
00732EBB   75BE                   jnz     00732E7B
00732EBD   33C0                   xor     eax, eax
00732EBF   5A                     pop     edx
00732EC0   59                     pop     ecx
00732EC1   59                     pop     ecx
00732EC2   648910                 mov     fs:[eax], edx

****** FINALLY
|
00732EC5   68DF2E7300             push    $00732EDF
00732ECA   8D45F0                 lea     eax, [ebp-$10]
00732ECD   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00732ED2   E8E925CDFF             call    004054C0
00732ED7   C3                     ret


* Reference to: System.@HandleFinally;
|
00732ED8   E95B1ECDFF             jmp     00404D38
00732EDD   EBEB                   jmp     00732ECA

****** END
|
00732EDF   5F                     pop     edi
00732EE0   5E                     pop     esi
00732EE1   5B                     pop     ebx
00732EE2   8BE5                   mov     esp, ebp
00732EE4   5D                     pop     ebp
00732EE5   C20C00                 ret     $000C

*)
end;

procedure TFrmPreview._PROC_00732EE8(Sender : TObject);
begin
(*
00732EE8   08636F                 or      [ebx+$6F], ah
00732EEB   6E                     outsb
00732EEC   646963616F000000       imul    esp, fs:[ebx+$61], $0000006F
00732EF4   FFFF                   DB  $FF, $FF  //      
00732EF6   FFFF                   DB  $FF, $FF  //      
00732EF8   0800                   or      [eax], al
00732EFA   0000                   add     [eax], al

*)
end;

procedure TFrmPreview._PROC_00732F09(Sender : TObject);
begin
(*
00732F09   8BEC                   mov     ebp, esp
00732F0B   83C4F0                 add     esp, -$10
00732F0E   53                     push    ebx
00732F0F   56                     push    esi
00732F10   57                     push    edi
00732F11   33DB                   xor     ebx, ebx
00732F13   895DF0                 mov     [ebp-$10], ebx
00732F16   895DF4                 mov     [ebp-$0C], ebx
00732F19   894DF8                 mov     [ebp-$08], ecx
00732F1C   8BF2                   mov     esi, edx
00732F1E   8945FC                 mov     [ebp-$04], eax
00732F21   33C0                   xor     eax, eax
00732F23   55                     push    ebp
00732F24   68D82F7300             push    $00732FD8

***** TRY
|
00732F29   64FF30                 push    dword ptr fs:[eax]
00732F2C   648920                 mov     fs:[eax], esp
00732F2F   8D1CF6                 lea     ebx, [esi+esi*8]
00732F32   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00732F37   8B00                   mov     eax, [eax]
00732F39   8D449848               lea     eax, [eax+ebx*4+$48]
00732F3D   BAE82F7300             mov     edx, $00732FE8
00732F42   33C9                   xor     ecx, ecx
00732F44   8A08                   mov     cl, byte ptr [eax]
00732F46   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
00732F47   E80405CDFF             call    00403450
00732F4C   756F                   jnz     00732FBD
00732F4E   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
00732F53   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
00732F55   BAFC2F7300             mov     edx, $00732FFC

* Reference to: System.@LStrCmp;
|
00732F5A   E84929CDFF             call    004058A8
00732F5F   755C                   jnz     00732FBD
00732F61   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00732F66   8B00                   mov     eax, [eax]
00732F68   807C986800             cmp     byte ptr [eax+ebx*4+$68], $00
00732F6D   744E                   jz      00732FBD
00732F6F   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00732F74   8B00                   mov     eax, [eax]
00732F76   8B44985C               mov     eax, [eax+ebx*4+$5C]
00732F7A   8B4010                 mov     eax, [eax+$10]
00732F7D   48                     dec     eax
00732F7E   85C0                   test    eax, eax
00732F80   7C3B                   jl      00732FBD
00732F82   40                     inc     eax
00732F83   89C3                   mov     ebx, eax
00732F85   33FF                   xor     edi, edi
00732F87   8D04F6                 lea     eax, [esi+esi*8]
00732F8A   8B1578AE7D00           mov     edx, [$007DAE78]
00732F90   8B12                   mov     edx, [edx]
00732F92   8B44825C               mov     eax, [edx+eax*4+$5C]
00732F96   8D4DF0                 lea     ecx, [ebp-$10]
00732F99   8BD7                   mov     edx, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
00732F9B   E80469E6FF             call    005998A4
00732FA0   8B45F0                 mov     eax, [ebp-$10]
00732FA3   8D55F4                 lea     edx, [ebp-$0C]

|
00732FA6   E895AFFFFF             call    0072DF40
00732FAB   8B4DF8                 mov     ecx, [ebp-$08]
00732FAE   8B55F4                 mov     edx, [ebp-$0C]
00732FB1   8B45FC                 mov     eax, [ebp-$04]

|
00732FB4   E85BC8FFFF             call    0072F814
00732FB9   47                     inc     edi
00732FBA   4B                     dec     ebx
00732FBB   75CA                   jnz     00732F87
00732FBD   33C0                   xor     eax, eax
00732FBF   5A                     pop     edx
00732FC0   59                     pop     ecx
00732FC1   59                     pop     ecx
00732FC2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
00732FC5   68DF2F7300             push    $00732FDF
00732FCA   8D45F0                 lea     eax, [ebp-$10]
00732FCD   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00732FD2   E8E924CDFF             call    004054C0
00732FD7   C3                     ret


* Reference to: System.@HandleFinally;
|
00732FD8   E95B1DCDFF             jmp     00404D38
00732FDD   EBEB                   jmp     00732FCA

****** END
|
00732FDF   5F                     pop     edi
00732FE0   5E                     pop     esi
00732FE1   5B                     pop     ebx
00732FE2   8BE5                   mov     esp, ebp
00732FE4   5D                     pop     ebp
00732FE5   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00733009(Sender : TObject);
begin
(*
00733009   8BEC                   mov     ebp, esp
0073300B   83C4F0                 add     esp, -$10
0073300E   53                     push    ebx
0073300F   56                     push    esi
00733010   57                     push    edi
00733011   33DB                   xor     ebx, ebx
00733013   895DF0                 mov     [ebp-$10], ebx
00733016   895DF4                 mov     [ebp-$0C], ebx
00733019   894DF8                 mov     [ebp-$08], ecx
0073301C   8BF2                   mov     esi, edx
0073301E   8945FC                 mov     [ebp-$04], eax
00733021   33C0                   xor     eax, eax
00733023   55                     push    ebp
00733024   68D8307300             push    $007330D8

***** TRY
|
00733029   64FF30                 push    dword ptr fs:[eax]
0073302C   648920                 mov     fs:[eax], esp
0073302F   8D1CF6                 lea     ebx, [esi+esi*8]
00733032   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733037   8B00                   mov     eax, [eax]
00733039   8D449848               lea     eax, [eax+ebx*4+$48]
0073303D   BAE8307300             mov     edx, $007330E8
00733042   33C9                   xor     ecx, ecx
00733044   8A08                   mov     cl, byte ptr [eax]
00733046   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
00733047   E80404CDFF             call    00403450
0073304C   756F                   jnz     007330BD
0073304E   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
00733053   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
00733055   BAFC307300             mov     edx, $007330FC

* Reference to: System.@LStrCmp;
|
0073305A   E84928CDFF             call    004058A8
0073305F   755C                   jnz     007330BD
00733061   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733066   8B00                   mov     eax, [eax]
00733068   807C986800             cmp     byte ptr [eax+ebx*4+$68], $00
0073306D   744E                   jz      007330BD
0073306F   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733074   8B00                   mov     eax, [eax]
00733076   8B44985C               mov     eax, [eax+ebx*4+$5C]
0073307A   8B4010                 mov     eax, [eax+$10]
0073307D   48                     dec     eax
0073307E   85C0                   test    eax, eax
00733080   7C3B                   jl      007330BD
00733082   40                     inc     eax
00733083   89C3                   mov     ebx, eax
00733085   33FF                   xor     edi, edi
00733087   8D04F6                 lea     eax, [esi+esi*8]
0073308A   8B1578AE7D00           mov     edx, [$007DAE78]
00733090   8B12                   mov     edx, [edx]
00733092   8B44825C               mov     eax, [edx+eax*4+$5C]
00733096   8D4DF0                 lea     ecx, [ebp-$10]
00733099   8BD7                   mov     edx, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0073309B   E80468E6FF             call    005998A4
007330A0   8B45F0                 mov     eax, [ebp-$10]
007330A3   8D55F4                 lea     edx, [ebp-$0C]

|
007330A6   E895AEFFFF             call    0072DF40
007330AB   8B4DF8                 mov     ecx, [ebp-$08]
007330AE   8B55F4                 mov     edx, [ebp-$0C]
007330B1   8B45FC                 mov     eax, [ebp-$04]

|
007330B4   E823D1FFFF             call    007301DC
007330B9   47                     inc     edi
007330BA   4B                     dec     ebx
007330BB   75CA                   jnz     00733087
007330BD   33C0                   xor     eax, eax
007330BF   5A                     pop     edx
007330C0   59                     pop     ecx
007330C1   59                     pop     ecx
007330C2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
007330C5   68DF307300             push    $007330DF
007330CA   8D45F0                 lea     eax, [ebp-$10]
007330CD   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007330D2   E8E923CDFF             call    004054C0
007330D7   C3                     ret


* Reference to: System.@HandleFinally;
|
007330D8   E95B1CCDFF             jmp     00404D38
007330DD   EBEB                   jmp     007330CA

****** END
|
007330DF   5F                     pop     edi
007330E0   5E                     pop     esi
007330E1   5B                     pop     ebx
007330E2   8BE5                   mov     esp, ebp
007330E4   5D                     pop     ebp
007330E5   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00733109(Sender : TObject);
begin
(*
00733109   8BEC                   mov     ebp, esp
0073310B   33C9                   xor     ecx, ecx
0073310D   51                     push    ecx
0073310E   51                     push    ecx
0073310F   51                     push    ecx
00733110   51                     push    ecx
00733111   51                     push    ecx
00733112   51                     push    ecx
00733113   51                     push    ecx
00733114   53                     push    ebx
00733115   56                     push    esi
00733116   57                     push    edi
00733117   8BD8                   mov     ebx, eax
00733119   33C0                   xor     eax, eax
0073311B   55                     push    ebp
0073311C   6839327300             push    $00733239

***** TRY
|
00733121   64FF30                 push    dword ptr fs:[eax]
00733124   648920                 mov     fs:[eax], esp
00733127   C645FF00               mov     byte ptr [ebp-$01], $00
0073312B   33C0                   xor     eax, eax
0073312D   55                     push    ebp
0073312E   680F327300             push    $0073320F

***** TRY
|
00733133   64FF30                 push    dword ptr fs:[eax]
00733136   648920                 mov     fs:[eax], esp
00733139   33C0                   xor     eax, eax
0073313B   55                     push    ebp
0073313C   68C6317300             push    $007331C6

***** TRY
|
00733141   64FF30                 push    dword ptr fs:[eax]
00733144   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'NotaFiscalVenda'
|
00733147   B854327300             mov     eax, $00733254

|
0073314C   E8BFE6FFFF             call    00731810
00733151   3BD8                   cmp     ebx, eax
00733153   0F9445FF               setz    byte ptr [ebp-$01]
00733157   807DFF00               cmp     byte ptr [ebp-$01], $00
0073315B   755F                   jnz     007331BC

|
0073315D   E8021C0700             call    007A4D64
00733162   84C0                   test    al, al
00733164   7456                   jz      007331BC

* Reference to class desconto
|
00733166   A064327300             mov     al, byte ptr [$00733264]
0073316B   50                     push    eax
0073316C   8D45EC                 lea     eax, [ebp-$14]
0073316F   8BD3                   mov     edx, ebx
00733171   B1FC                   mov     cl, $FC

|
00733173   E8F858CEFF             call    00418A70
00733178   8D4DEC                 lea     ecx, [ebp-$14]
0073317B   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00733180   8B00                   mov     eax, [eax]
00733182   8B80FC040000           mov     eax, [eax+$04FC]

* Possible String Reference to: 'Formulario'
|
00733188   BA70327300             mov     edx, $00733270

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
0073318D   E866520700             call    007A83F8
00733192   84C0                   test    al, al
00733194   7426                   jz      007331BC
00733196   8D55E8                 lea     edx, [ebp-$18]
00733199   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0073319E   8B00                   mov     eax, [eax]
007331A0   8B801C050000           mov     eax, [eax+$051C]
007331A6   8B08                   mov     ecx, [eax]
007331A8   FF5160                 call    dword ptr [ecx+$60]
007331AB   8B45E8                 mov     eax, [ebp-$18]
007331AE   BA84327300             mov     edx, $00733284

* Reference to: System.@LStrCmp;
|
007331B3   E8F026CDFF             call    004058A8
007331B8   0F9445FF               setz    byte ptr [ebp-$01]
007331BC   33C0                   xor     eax, eax
007331BE   5A                     pop     edx
007331BF   59                     pop     ecx
007331C0   59                     pop     ecx
007331C1   648910                 mov     fs:[eax], edx
007331C4   EB3B                   jmp     00733201

* Reference to: System.@HandleOnException;
|
007331C6   E9E519CDFF             jmp     00404BB0
007331CB   0100                   add     [eax], eax
007331CD   0000                   add     [eax], al
007331CF   40                     inc     eax
007331D0   95                     xchg    eax, ebp
007331D1   40                     inc     eax
007331D2   00D7                   add     bh, dl
007331D4   317300                 xor     [ebx+$00], esi
007331D7   89C3                   mov     ebx, eax
007331D9   6A00                   push    $00
007331DB   8B4B04                 mov     ecx, [ebx+$04]
007331DE   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'Erro ao determinar se o relatÛrio È
|                                 nota fiscal!'
|
007331E1   BA90327300             mov     edx, $00733290

* Reference to: System.@LStrCat3;
|
007331E6   E8BD25CDFF             call    004057A8
007331EB   8B45E4                 mov     eax, [ebp-$1C]
007331EE   668B0DC4327300         mov     cx, word ptr [$007332C4]
007331F5   B201                   mov     dl, $01

|
007331F7   E83009D1FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007331FC   E8AF1CCDFF             call    00404EB0

****** END
|
00733201   33C0                   xor     eax, eax
00733203   5A                     pop     edx
00733204   59                     pop     ecx
00733205   59                     pop     ecx
00733206   648910                 mov     fs:[eax], edx

****** FINALLY
|
00733209   6816327300             push    $00733216
0073320E   C3                     ret


* Reference to: System.@HandleFinally;
|
0073320F   E9241BCDFF             jmp     00404D38
00733214   EBF8                   jmp     0073320E

****** END
|
00733216   33C0                   xor     eax, eax
00733218   5A                     pop     edx
00733219   59                     pop     ecx
0073321A   59                     pop     ecx
0073321B   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0073321E   6840327300             push    $00733240
00733223   8D45E4                 lea     eax, [ebp-$1C]
00733226   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0073322B   E89022CDFF             call    004054C0
00733230   8D45EC                 lea     eax, [ebp-$14]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00733233   E84013CEFF             call    00414578
00733238   C3                     ret


* Reference to: System.@HandleFinally;
|
00733239   E9FA1ACDFF             jmp     00404D38
0073323E   EBE3                   jmp     00733223

****** END
|
00733240   8A45FF                 mov     al, byte ptr [ebp-$01]
00733243   5F                     pop     edi
00733244   5E                     pop     esi
00733245   5B                     pop     ebx
00733246   8BE5                   mov     esp, ebp
00733248   5D                     pop     ebp
00733249   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00733239(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00733239   E9FA1ACDFF             jmp     00404D38

|
0073323E   EBE3                   jmp     00733223
00733240   8A45FF                 mov     al, byte ptr [ebp-$01]
00733243   5F                     pop     edi
00733244   5E                     pop     esi
00733245   5B                     pop     ebx
00733246   8BE5                   mov     esp, ebp
00733248   5D                     pop     ebp
00733249   C3                     ret

*)
end;

procedure TFrmPreview._PROC_007332C9(Sender : TObject);
begin
(*
007332C9   8BEC                   mov     ebp, esp
007332CB   83C4F0                 add     esp, -$10
007332CE   53                     push    ebx
007332CF   56                     push    esi
007332D0   57                     push    edi
007332D1   33DB                   xor     ebx, ebx
007332D3   895DF0                 mov     [ebp-$10], ebx
007332D6   895DF4                 mov     [ebp-$0C], ebx
007332D9   894DF8                 mov     [ebp-$08], ecx
007332DC   8BF2                   mov     esi, edx
007332DE   8945FC                 mov     [ebp-$04], eax
007332E1   33C0                   xor     eax, eax
007332E3   55                     push    ebp
007332E4   68BF337300             push    $007333BF

***** TRY
|
007332E9   64FF30                 push    dword ptr fs:[eax]
007332EC   648920                 mov     fs:[eax], esp
007332EF   A1E4A57D00             mov     eax, dword ptr [$007DA5E4]
007332F4   803800                 cmp     byte ptr [eax], $00
007332F7   0F85A7000000           jnz     007333A4
007332FD   8D1CF6                 lea     ebx, [esi+esi*8]
00733300   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733305   8B00                   mov     eax, [eax]
00733307   8D44986C               lea     eax, [eax+ebx*4+$6C]
0073330B   BAD0337300             mov     edx, $007333D0
00733310   33C9                   xor     ecx, ecx
00733312   8A08                   mov     cl, byte ptr [eax]
00733314   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
00733315   E83601CDFF             call    00403450
0073331A   0F8584000000           jnz     007333A4
00733320   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
00733325   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
00733327   BAE4337300             mov     edx, $007333E4

* Reference to: System.@LStrCmp;
|
0073332C   E87725CDFF             call    004058A8
00733331   7571                   jnz     007333A4
00733333   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733338   8B00                   mov     eax, [eax]
0073333A   80BC988C00000000       cmp     byte ptr [eax+ebx*4+$008C], $00
00733342   7460                   jz      007333A4
00733344   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733349   8B00                   mov     eax, [eax]
0073334B   8B849880000000         mov     eax, [eax+ebx*4+$0080]
00733352   8B4010                 mov     eax, [eax+$10]
00733355   48                     dec     eax
00733356   85C0                   test    eax, eax
00733358   7C4A                   jl      007333A4
0073335A   40                     inc     eax
0073335B   89C3                   mov     ebx, eax
0073335D   33FF                   xor     edi, edi
0073335F   8D04F6                 lea     eax, [esi+esi*8]
00733362   8B1578AE7D00           mov     edx, [$007DAE78]
00733368   8B12                   mov     edx, [edx]
0073336A   8B848280000000         mov     eax, [edx+eax*4+$0080]
00733371   8D4DF0                 lea     ecx, [ebp-$10]
00733374   8BD7                   mov     edx, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
00733376   E82965E6FF             call    005998A4
0073337B   8B45F0                 mov     eax, [ebp-$10]
0073337E   8D55F4                 lea     edx, [ebp-$0C]

|
00733381   E8BAABFFFF             call    0072DF40
00733386   8B4510                 mov     eax, [ebp+$10]
00733389   50                     push    eax
0073338A   8B450C                 mov     eax, [ebp+$0C]
0073338D   50                     push    eax
0073338E   8B4508                 mov     eax, [ebp+$08]
00733391   50                     push    eax
00733392   8B4DF8                 mov     ecx, [ebp-$08]
00733395   8B55F4                 mov     edx, [ebp-$0C]
00733398   8B45FC                 mov     eax, [ebp-$04]

|
0073339B   E84CA6FFFF             call    0072D9EC
007333A0   47                     inc     edi
007333A1   4B                     dec     ebx
007333A2   75BB                   jnz     0073335F
007333A4   33C0                   xor     eax, eax
007333A6   5A                     pop     edx
007333A7   59                     pop     ecx
007333A8   59                     pop     ecx
007333A9   648910                 mov     fs:[eax], edx

****** FINALLY
|
007333AC   68C6337300             push    $007333C6
007333B1   8D45F0                 lea     eax, [ebp-$10]
007333B4   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007333B9   E80221CDFF             call    004054C0
007333BE   C3                     ret


* Reference to: System.@HandleFinally;
|
007333BF   E97419CDFF             jmp     00404D38
007333C4   EBEB                   jmp     007333B1

****** END
|
007333C6   5F                     pop     edi
007333C7   5E                     pop     esi
007333C8   5B                     pop     ebx
007333C9   8BE5                   mov     esp, ebp
007333CB   5D                     pop     ebp
007333CC   C20C00                 ret     $000C

*)
end;

procedure TFrmPreview._PROC_007333CF(Sender : TObject);
begin
(*
007333CF   0008                   add     [eax], cl
007333D1   64657363               jnb     00733438
007333D5   6F                     outsd
007333D6   6E                     outsb
007333D7   746F                   jz      00733448
007333D9   0000                   add     [eax], al

007333DB   00FF                   add     bh, bh
007333DD   FFFF                   DB  $FF, $FF  //      
007333DF   FF08                   dec     dword ptr [eax]
007333E1   0000                   add     [eax], al

007333E3   006C6973               add     [ecx+ebp*2+$73], ch
007333E7   7461                   jz      0073344A
007333E9   67656D                 insd
007333EC   0000                   add     [eax], al

007333EE   0000                   add     [eax], al

007333F0   55                     push    ebp
007333F1   8BEC                   mov     ebp, esp
007333F3   83C4F0                 add     esp, -$10
007333F6   53                     push    ebx
007333F7   56                     push    esi
007333F8   57                     push    edi
007333F9   33DB                   xor     ebx, ebx
007333FB   895DF0                 mov     [ebp-$10], ebx
007333FE   895DF4                 mov     [ebp-$0C], ebx
00733401   894DF8                 mov     [ebp-$08], ecx
00733404   8BF2                   mov     esi, edx
00733406   8945FC                 mov     [ebp-$04], eax
00733409   33C0                   xor     eax, eax
0073340B   55                     push    ebp
0073340C   68D7347300             push    $007334D7

***** TRY
|
00733411   64FF30                 push    dword ptr fs:[eax]
00733414   648920                 mov     fs:[eax], esp
00733417   A1E4A57D00             mov     eax, dword ptr [$007DA5E4]
0073341C   803800                 cmp     byte ptr [eax], $00
0073341F   0F8597000000           jnz     007334BC
00733425   8D1CF6                 lea     ebx, [esi+esi*8]
00733428   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0073342D   8B00                   mov     eax, [eax]
0073342F   8D44986C               lea     eax, [eax+ebx*4+$6C]
00733433   BAE8347300             mov     edx, $007334E8
00733438   33C9                   xor     ecx, ecx
0073343A   8A08                   mov     cl, byte ptr [eax]
0073343C   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
0073343D   E80E00CDFF             call    00403450
00733442   7578                   jnz     007334BC
00733444   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
00733449   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
0073344B   BAFC347300             mov     edx, $007334FC

* Reference to: System.@LStrCmp;
|
00733450   E85324CDFF             call    004058A8
00733455   7565                   jnz     007334BC
00733457   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0073345C   8B00                   mov     eax, [eax]
0073345E   80BC988C00000000       cmp     byte ptr [eax+ebx*4+$008C], $00
00733466   7454                   jz      007334BC
00733468   A178AE7D00             mov     eax, dword ptr [$007DAE78]
0073346D   8B00                   mov     eax, [eax]
0073346F   8B849880000000         mov     eax, [eax+ebx*4+$0080]
00733476   8B4010                 mov     eax, [eax+$10]
00733479   48                     dec     eax
0073347A   85C0                   test    eax, eax
0073347C   7C3E                   jl      007334BC
0073347E   40                     inc     eax
0073347F   89C3                   mov     ebx, eax
00733481   33FF                   xor     edi, edi
00733483   8D04F6                 lea     eax, [esi+esi*8]
00733486   8B1578AE7D00           mov     edx, [$007DAE78]
0073348C   8B12                   mov     edx, [edx]
0073348E   8B848280000000         mov     eax, [edx+eax*4+$0080]
00733495   8D4DF0                 lea     ecx, [ebp-$10]
00733498   8BD7                   mov     edx, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
0073349A   E80564E6FF             call    005998A4
0073349F   8B45F0                 mov     eax, [ebp-$10]
007334A2   8D55F4                 lea     edx, [ebp-$0C]

|
007334A5   E896AAFFFF             call    0072DF40
007334AA   8B4DF8                 mov     ecx, [ebp-$08]
007334AD   8B55F4                 mov     edx, [ebp-$0C]
007334B0   8B45FC                 mov     eax, [ebp-$04]

|
007334B3   E85CC3FFFF             call    0072F814
007334B8   47                     inc     edi
007334B9   4B                     dec     ebx
007334BA   75C7                   jnz     00733483
007334BC   33C0                   xor     eax, eax
007334BE   5A                     pop     edx
007334BF   59                     pop     ecx
007334C0   59                     pop     ecx
007334C1   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
007334C4   68DE347300             push    $007334DE
007334C9   8D45F0                 lea     eax, [ebp-$10]
007334CC   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007334D1   E8EA1FCDFF             call    004054C0
007334D6   C3                     ret

*)
end;

procedure TFrmPreview._PROC_007334D7(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007334D7   E95C18CDFF             jmp     00404D38

|
007334DC   EBEB                   jmp     007334C9
007334DE   5F                     pop     edi
007334DF   5E                     pop     esi
007334E0   5B                     pop     ebx
007334E1   8BE5                   mov     esp, ebp
007334E3   5D                     pop     ebp
007334E4   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00733509(Sender : TObject);
begin
(*
00733509   8BEC                   mov     ebp, esp
0073350B   83C4F0                 add     esp, -$10
0073350E   53                     push    ebx
0073350F   56                     push    esi
00733510   57                     push    edi
00733511   33DB                   xor     ebx, ebx
00733513   895DF0                 mov     [ebp-$10], ebx
00733516   895DF4                 mov     [ebp-$0C], ebx
00733519   894DF8                 mov     [ebp-$08], ecx
0073351C   8BF2                   mov     esi, edx
0073351E   8945FC                 mov     [ebp-$04], eax
00733521   33C0                   xor     eax, eax
00733523   55                     push    ebp
00733524   68EF357300             push    $007335EF

***** TRY
|
00733529   64FF30                 push    dword ptr fs:[eax]
0073352C   648920                 mov     fs:[eax], esp
0073352F   A1E4A57D00             mov     eax, dword ptr [$007DA5E4]
00733534   803800                 cmp     byte ptr [eax], $00
00733537   0F8597000000           jnz     007335D4
0073353D   8D1CF6                 lea     ebx, [esi+esi*8]
00733540   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733545   8B00                   mov     eax, [eax]
00733547   8D44986C               lea     eax, [eax+ebx*4+$6C]
0073354B   BA00367300             mov     edx, $00733600
00733550   33C9                   xor     ecx, ecx
00733552   8A08                   mov     cl, byte ptr [eax]
00733554   41                     inc     ecx

* Reference to: System.@AStrCmp;
|
00733555   E8F6FECCFF             call    00403450
0073355A   7578                   jnz     007335D4
0073355C   A12C9E7D00             mov     eax, dword ptr [$007D9E2C]
00733561   8B00                   mov     eax, [eax]

* Possible String Reference to: 'listagem'
|
00733563   BA14367300             mov     edx, $00733614

* Reference to: System.@LStrCmp;
|
00733568   E83B23CDFF             call    004058A8
0073356D   7565                   jnz     007335D4
0073356F   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733574   8B00                   mov     eax, [eax]
00733576   80BC988C00000000       cmp     byte ptr [eax+ebx*4+$008C], $00
0073357E   7454                   jz      007335D4
00733580   A178AE7D00             mov     eax, dword ptr [$007DAE78]
00733585   8B00                   mov     eax, [eax]
00733587   8B849880000000         mov     eax, [eax+ebx*4+$0080]
0073358E   8B4010                 mov     eax, [eax+$10]
00733591   48                     dec     eax
00733592   85C0                   test    eax, eax
00733594   7C3E                   jl      007335D4
00733596   40                     inc     eax
00733597   89C3                   mov     ebx, eax
00733599   33FF                   xor     edi, edi
0073359B   8D04F6                 lea     eax, [esi+esi*8]
0073359E   8B1578AE7D00           mov     edx, [$007DAE78]
007335A4   8B12                   mov     edx, [edx]
007335A6   8B848280000000         mov     eax, [edx+eax*4+$0080]
007335AD   8D4DF0                 lea     ecx, [ebp-$10]
007335B0   8BD7                   mov     edx, edi

* Reference to: Mxarrays.TStringArray.GetString(TStringArray;Integer):AnsiString;
|
007335B2   E8ED62E6FF             call    005998A4
007335B7   8B45F0                 mov     eax, [ebp-$10]
007335BA   8D55F4                 lea     edx, [ebp-$0C]

|
007335BD   E87EA9FFFF             call    0072DF40
007335C2   8B4DF8                 mov     ecx, [ebp-$08]
007335C5   8B55F4                 mov     edx, [ebp-$0C]
007335C8   8B45FC                 mov     eax, [ebp-$04]

|
007335CB   E80CCCFFFF             call    007301DC
007335D0   47                     inc     edi
007335D1   4B                     dec     ebx
007335D2   75C7                   jnz     0073359B
007335D4   33C0                   xor     eax, eax
007335D6   5A                     pop     edx
007335D7   59                     pop     ecx
007335D8   59                     pop     ecx
007335D9   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
007335DC   68F6357300             push    $007335F6
007335E1   8D45F0                 lea     eax, [ebp-$10]
007335E4   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007335E9   E8D21ECDFF             call    004054C0
007335EE   C3                     ret


* Reference to: System.@HandleFinally;
|
007335EF   E94417CDFF             jmp     00404D38
007335F4   EBEB                   jmp     007335E1

****** END
|
007335F6   5F                     pop     edi
007335F7   5E                     pop     esi
007335F8   5B                     pop     ebx
007335F9   8BE5                   mov     esp, ebp
007335FB   5D                     pop     ebp
007335FC   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00733621(Sender : TObject);
begin
(*
00733621   8BEC                   mov     ebp, esp
00733623   6A00                   push    $00
00733625   53                     push    ebx
00733626   56                     push    esi
00733627   8BDA                   mov     ebx, edx
00733629   33C0                   xor     eax, eax
0073362B   55                     push    ebp
0073362C   6890367300             push    $00733690

***** TRY
|
00733631   64FF30                 push    dword ptr fs:[eax]
00733634   648920                 mov     fs:[eax], esp
00733637   A100A87D00             mov     eax, dword ptr [$007DA800]
0073363C   833800                 cmp     dword ptr [eax], +$00
0073363F   7439                   jz      0073367A
00733641   8BC3                   mov     eax, ebx

* Reference to class TTable
|
00733643   8B15705B5A00           mov     edx, [$005A5B70]

* Reference to: System.@IsClass(TObject;TClass):Boolean;
|
00733649   E8E210CDFF             call    00404730
0073364E   84C0                   test    al, al
00733650   7428                   jz      0073367A
00733652   8D55FC                 lea     edx, [ebp-$04]
00733655   8BF3                   mov     esi, ebx
00733657   8BC6                   mov     eax, esi

* Reference to: DBTables.TTable.GetIndexName(TTable):AnsiString;
|
00733659   E8C601E8FF             call    005B3824
0073365E   8B55FC                 mov     edx, [ebp-$04]
00733661   A15CA37D00             mov     eax, dword ptr [$007DA35C]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00733666   E8851ECDFF             call    004054F0
0073366B   8B1500A87D00           mov     edx, [$007DA800]
00733671   8B12                   mov     edx, [edx]
00733673   8BC6                   mov     eax, esi

* Reference to: Classes.TStream.WriteComponent(TStream;TComponent);
|
00733675   E86E05E8FF             call    005B3BE8
0073367A   33C0                   xor     eax, eax
0073367C   5A                     pop     edx
0073367D   59                     pop     ecx
0073367E   59                     pop     ecx
0073367F   648910                 mov     fs:[eax], edx

****** FINALLY
|
00733682   6897367300             push    $00733697
00733687   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0073368A   E80D1ECDFF             call    0040549C
0073368F   C3                     ret


* Reference to: System.@HandleFinally;
|
00733690   E9A316CDFF             jmp     00404D38
00733695   EBF0                   jmp     00733687

****** END
|
00733697   5E                     pop     esi
00733698   5B                     pop     ebx
00733699   59                     pop     ecx
0073369A   5D                     pop     ebp
0073369B   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0073369C(Sender : TObject);
begin
(*
0073369C   55                     push    ebp
0073369D   8BEC                   mov     ebp, esp
0073369F   53                     push    ebx
007336A0   8BDA                   mov     ebx, edx
007336A2   8BC3                   mov     eax, ebx

* Reference to class TTable
|
007336A4   8B15705B5A00           mov     edx, [$005A5B70]

* Reference to: System.@IsClass(TObject;TClass):Boolean;
|
007336AA   E88110CDFF             call    00404730
007336AF   84C0                   test    al, al
007336B1   7419                   jz      007336CC
007336B3   A100A87D00             mov     eax, dword ptr [$007DA800]

* Reference to: System.@LStrClr(void;void);
|
007336B8   E8DF1DCDFF             call    0040549C
007336BD   8B155CA37D00           mov     edx, [$007DA35C]
007336C3   8B12                   mov     edx, [edx]
007336C5   8BC3                   mov     eax, ebx

* Reference to: Classes.TStream.WriteComponent(TStream;TComponent);
|
007336C7   E81C05E8FF             call    005B3BE8
007336CC   5B                     pop     ebx
007336CD   5D                     pop     ebp
007336CE   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00733AF5(Sender : TObject);
begin
(*
00733AF5   8BEC                   mov     ebp, esp
00733AF7   51                     push    ecx
00733AF8   53                     push    ebx
00733AF9   56                     push    esi
00733AFA   894DFC                 mov     [ebp-$04], ecx
00733AFD   8BF2                   mov     esi, edx
00733AFF   8BD8                   mov     ebx, eax
00733B01   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00733B04   E8431ECDFF             call    0040594C
00733B09   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00733B0C   E83B1ECDFF             call    0040594C
00733B11   33C0                   xor     eax, eax
00733B13   55                     push    ebp
00733B14   68893B7300             push    $00733B89

***** TRY
|
00733B19   64FF30                 push    dword ptr fs:[eax]
00733B1C   648920                 mov     fs:[eax], esp
00733B1F   8BCE                   mov     ecx, esi
00733B21   BA01000000             mov     edx, $00000001

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
00733B26   8B8340030000           mov     eax, [ebx+$0340]

* Reference to : TJvProgressForm._PROC_005B9328()
|
00733B2C   E8F757E8FF             call    005B9328
00733B31   8B5508                 mov     edx, [ebp+$08]

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
00733B34   8B8340030000           mov     eax, [ebx+$0340]

* Reference to : TJvProgressForm._PROC_005B926C()
|
00733B3A   E82D57E8FF             call    005B926C
00733B3F   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
00733B42   8B8340030000           mov     eax, [ebx+$0340]

* Reference to : TJvProgressForm._PROC_005B92C8()
|
00733B48   E87B57E8FF             call    005B92C8
00733B4D   33C9                   xor     ecx, ecx
00733B4F   BA03000000             mov     edx, $00000003

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
00733B54   8B8340030000           mov     eax, [ebx+$0340]

* Reference to : TJvProgressForm._PROC_005B9328()
|
00733B5A   E8C957E8FF             call    005B9328
00733B5F   A154AE7D00             mov     eax, dword ptr [$007DAE54]
00733B64   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00733B66   E8F521D8FF             call    004B5D60
00733B6B   33C0                   xor     eax, eax
00733B6D   5A                     pop     edx
00733B6E   59                     pop     ecx
00733B6F   59                     pop     ecx
00733B70   648910                 mov     fs:[eax], edx

****** FINALLY
|
00733B73   68903B7300             push    $00733B90
00733B78   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00733B7B   E81C19CDFF             call    0040549C
00733B80   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
00733B83   E81419CDFF             call    0040549C
00733B88   C3                     ret


* Reference to: System.@HandleFinally;
|
00733B89   E9AA11CDFF             jmp     00404D38
00733B8E   EBE8                   jmp     00733B78

****** END
|
00733B90   5E                     pop     esi
00733B91   5B                     pop     ebx
00733B92   59                     pop     ecx
00733B93   5D                     pop     ebp
00733B94   C20400                 ret     $0004

*)
end;

procedure TFrmPreview._PROC_00733B98(Sender : TObject);
begin
(*
00733B98   55                     push    ebp
00733B99   8BEC                   mov     ebp, esp
00733B9B   83C4F8                 add     esp, -$08
00733B9E   53                     push    ebx
00733B9F   894DF8                 mov     [ebp-$08], ecx
00733BA2   8955FC                 mov     [ebp-$04], edx
00733BA5   8BD8                   mov     ebx, eax
00733BA7   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00733BAA   E89D1DCDFF             call    0040594C
00733BAF   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00733BB2   E8951DCDFF             call    0040594C
00733BB7   33C0                   xor     eax, eax
00733BB9   55                     push    ebp
00733BBA   681C3C7300             push    $00733C1C

***** TRY
|
00733BBF   64FF30                 push    dword ptr fs:[eax]
00733BC2   648920                 mov     fs:[eax], esp
00733BC5   8B55F8                 mov     edx, [ebp-$08]

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
00733BC8   8B8340030000           mov     eax, [ebx+$0340]

* Reference to : TJvProgressForm._PROC_005B926C()
|
00733BCE   E89956E8FF             call    005B926C
00733BD3   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
00733BD6   8B8340030000           mov     eax, [ebx+$0340]

* Reference to : TJvProgressForm._PROC_005B92C8()
|
00733BDC   E8E756E8FF             call    005B92C8

* Reference to control TFrmPreview.pfPrevRel : TJvProgressComponent
|
00733BE1   8B8340030000           mov     eax, [ebx+$0340]

* Reference to field TJvProgressComponent.OFFS_0060
|
00733BE7   8B4860                 mov     ecx, [eax+$60]
00733BEA   41                     inc     ecx
00733BEB   BA03000000             mov     edx, $00000003

* Reference to : TJvProgressForm._PROC_005B9328()
|
00733BF0   E83357E8FF             call    005B9328
00733BF5   A154AE7D00             mov     eax, dword ptr [$007DAE54]
00733BFA   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00733BFC   E85F21D8FF             call    004B5D60
00733C01   33C0                   xor     eax, eax
00733C03   5A                     pop     edx
00733C04   59                     pop     ecx
00733C05   59                     pop     ecx
00733C06   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[YY]√UãÏj'
|
00733C09   68233C7300             push    $00733C23
00733C0E   8D45F8                 lea     eax, [ebp-$08]
00733C11   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00733C16   E8A518CDFF             call    004054C0
00733C1B   C3                     ret


* Reference to: System.@HandleFinally;
|
00733C1C   E91711CDFF             jmp     00404D38
00733C21   EBEB                   jmp     00733C0E

****** END
|
00733C23   5B                     pop     ebx
00733C24   59                     pop     ecx
00733C25   59                     pop     ecx
00733C26   5D                     pop     ebp
00733C27   C3                     ret

*)
end;

procedure TFrmPreview._PROC_007340E0(Sender : TObject);
begin
(*
007340E0   55                     push    ebp
007340E1   8BEC                   mov     ebp, esp
007340E3   33C0                   xor     eax, eax
007340E5   55                     push    ebp
007340E6   6811417300             push    $00734111

***** TRY
|
007340EB   64FF30                 push    dword ptr fs:[eax]
007340EE   648920                 mov     fs:[eax], esp
007340F1   FF050CF57D00           inc     dword ptr [$007DF50C]
007340F7   750A                   jnz     00734103
007340F9   B808F57D00             mov     eax, $007DF508

* Reference to: System.@LStrClr(void;void);
|
007340FE   E89913CDFF             call    0040549C
00734103   33C0                   xor     eax, eax
00734105   5A                     pop     edx
00734106   59                     pop     ecx
00734107   59                     pop     ecx
00734108   648910                 mov     fs:[eax], edx

****** FINALLY
|
0073410B   6818417300             push    $00734118
00734110   C3                     ret


* Reference to: System.@HandleFinally;
|
00734111   E9220CCDFF             jmp     00404D38
00734116   EBF8                   jmp     00734110

****** END
|
00734118   5D                     pop     ebp
00734119   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0073411C(Sender : TObject);
begin
(*
0073411C   832D0CF57D0001         sub     dword ptr [$007DF50C], +$01
00734123   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00734124(Sender : TObject);
begin
(*
00734124   55                     push    ebp
00734125   8BEC                   mov     ebp, esp
00734127   33C0                   xor     eax, eax
00734129   55                     push    ebp
0073412A   6849417300             push    $00734149

***** TRY
|
0073412F   64FF30                 push    dword ptr fs:[eax]
00734132   648920                 mov     fs:[eax], esp
00734135   FF0514F57D00           inc     dword ptr [$007DF514]
0073413B   33C0                   xor     eax, eax
0073413D   5A                     pop     edx
0073413E   59                     pop     ecx
0073413F   59                     pop     ecx
00734140   648910                 mov     fs:[eax], edx

****** FINALLY
|
00734143   6850417300             push    $00734150
00734148   C3                     ret


* Reference to: System.@HandleFinally;
|
00734149   E9EA0BCDFF             jmp     00404D38
0073414E   EBF8                   jmp     00734148

****** END
|
00734150   5D                     pop     ebp
00734151   C3                     ret

*)
end;

procedure TFrmPreview._PROC_00734154(Sender : TObject);
begin
(*
00734154   832D14F57D0001         sub     dword ptr [$007DF514], +$01
0073415B   C3                     ret

*)
end;

procedure TFrmPreview._PROC_0073415C(Sender : TObject);
begin
(*
0073415C   A841                   test    al, $41
0073415E   7300                   jnb     00734160
00734160   0000                   add     [eax], al

*)
end;

end.