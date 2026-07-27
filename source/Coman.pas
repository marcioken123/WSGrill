unit Coman;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, JvExStdCtrls, JvEdit, JvValidateEdit,
  ExtCtrls, DBCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Buttons, Mask,
  JvExMask, JvToolEdit;
  
type
  TFrmGereComanda=class(TForm)
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
    procedure edCodProdButtonClick(Sender : TObject);
    procedure edCodProdChange(Sender : TObject);
    procedure btAdicionarClick(Sender : TObject);
    procedure btCancelaItemClick(Sender : TObject);
    procedure EdUnidMedButtonClick(Sender : TObject);
    procedure EdComandaKeyDown(Sender : TObject);
    procedure EdComandaEnter(Sender : TObject);
    procedure EdComandaExit(Sender : TObject);
    procedure sbCadastraClick(Sender : TObject);
    procedure edCodProdEnter(Sender : TObject);
    procedure edCodProdExit(Sender : TObject);
    procedure sbOkClick(Sender : TObject);
    procedure FormCloseQuery(Sender : TObject);
    procedure sbComandaClick(Sender : TObject);
    procedure dbgMesaItemGetCellParams(Sender : TObject);
    procedure edQtdeLctoChange(Sender : TObject);
    procedure edQtdeLctoKeyDown(Sender : TObject);
    procedure EdHistoricoChange(Sender : TObject);
    procedure BitBtn2Click(Sender : TObject);
    procedure sbCadClieClick(Sender : TObject);
    procedure edCgcClieButtonClick(Sender : TObject);
    procedure edCgcClieChange(Sender : TObject);
    procedure edCodFuncButtonClick(Sender : TObject);
    procedure edCodFuncChange(Sender : TObject);
    procedure edCgcClieExit(Sender : TObject);
    procedure edCodFuncExit(Sender : TObject);
    procedure EdComandaButtonClick(Sender : TObject);
    procedure _PROC_007C93D5(Sender : TObject);
    procedure _PROC_007C9405(Sender : TObject);
    procedure _PROC_007C9944(Sender : TObject);
    procedure _PROC_007C9A45(Sender : TObject);
    procedure _PROC_007CA3A5(Sender : TObject);
    procedure _PROC_007CA511(Sender : TObject);
    procedure _PROC_007CA666(Sender : TObject);
    procedure _PROC_007CA677(Sender : TObject);
    procedure _PROC_007CA70D(Sender : TObject);
    procedure _PROC_007CA8A3(Sender : TObject);
    procedure _PROC_007CA8F5(Sender : TObject);
    procedure _PROC_007CAADE(Sender : TObject);
    procedure _PROC_007CAE31(Sender : TObject);
    procedure _PROC_007CAE61(Sender : TObject);
    procedure _PROC_007CAE75(Sender : TObject);
    procedure _PROC_007CAE88(Sender : TObject);
    procedure _PROC_007CAE99(Sender : TObject);
    procedure _PROC_007CAEA9(Sender : TObject);
    procedure _PROC_007CAED0(Sender : TObject);
    procedure _PROC_007CB4B5(Sender : TObject);
    procedure _PROC_007CB55A(Sender : TObject);
    procedure _PROC_007CB56E(Sender : TObject);
    procedure _PROC_007CB5D8(Sender : TObject);
    procedure _PROC_007CB739(Sender : TObject);
    procedure _PROC_007CBD6C(Sender : TObject);
    procedure _PROC_007CBF4D(Sender : TObject);
    procedure _PROC_007CC310(Sender : TObject);
    procedure _PROC_007CC36D(Sender : TObject);
    procedure _PROC_007CC38D(Sender : TObject);
    procedure _PROC_007CC599(Sender : TObject);
    procedure _PROC_007CC813(Sender : TObject);
    procedure _PROC_007CC851(Sender : TObject);
    procedure _PROC_007CC865(Sender : TObject);
    procedure _PROC_007CC899(Sender : TObject);
    procedure _PROC_007CC8AC(Sender : TObject);
    procedure _PROC_007CCC19(Sender : TObject);
    procedure _PROC_007CCE89(Sender : TObject);
    procedure _PROC_007CCF3D(Sender : TObject);
    procedure _PROC_007CD0E9(Sender : TObject);
    procedure _PROC_007CD149(Sender : TObject);
    procedure _PROC_007CD199(Sender : TObject);
    procedure _PROC_007CD408(Sender : TObject);
    procedure _PROC_007CD4B3(Sender : TObject);
    procedure _PROC_007CD88D(Sender : TObject);
    procedure _PROC_007CDA5C(Sender : TObject);
    procedure _PROC_007CDAE8(Sender : TObject);
    procedure _PROC_007CDC80(Sender : TObject);
    procedure _PROC_007CDE6D(Sender : TObject);
    procedure _PROC_007CE05F(Sender : TObject);
    procedure _PROC_007CE0B2(Sender : TObject);
    procedure _PROC_007CE1B9(Sender : TObject);
    procedure _PROC_007CE3B8(Sender : TObject);
    procedure _PROC_007CE44F(Sender : TObject);
    procedure _PROC_007CE45E(Sender : TObject);
    procedure _PROC_007CE49B(Sender : TObject);
    procedure _PROC_007CE4DD(Sender : TObject);
    procedure _PROC_007CE628(Sender : TObject);
    procedure _PROC_007CE7BD(Sender : TObject);
    procedure _PROC_007CEB8A(Sender : TObject);
    procedure _PROC_007CEBCF(Sender : TObject);
    procedure _PROC_007CECA5(Sender : TObject);
    procedure _PROC_007CEDA1(Sender : TObject);
    procedure _PROC_007CF1F5(Sender : TObject);
    procedure _PROC_007CF226(Sender : TObject);
    procedure _PROC_007CF311(Sender : TObject);
    procedure _PROC_007CF322(Sender : TObject);
    procedure _PROC_007CF5F9(Sender : TObject);
    procedure _PROC_007CF611(Sender : TObject);
    procedure _PROC_007CF640(Sender : TObject);
    procedure _PROC_007CF648(Sender : TObject);
    procedure _PROC_007CF7E2(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrmGereComanda: TFrmGereComanda;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TFrmGereComanda.edCodProdButtonClick(Sender : TObject);
begin
(*
007C9164   55                     push    ebp
007C9165   8BEC                   mov     ebp, esp
007C9167   6A00                   push    $00
007C9169   53                     push    ebx
007C916A   8BD8                   mov     ebx, eax
007C916C   33C0                   xor     eax, eax
007C916E   55                     push    ebp

* Possible String Reference to: 'ÈSª√ˇÎ[Y]√êUãÏj'
|
007C916F   68E0917C00             push    $007C91E0

***** TRY
|
007C9174   64FF30                 push    dword ptr fs:[eax]
007C9177   648920                 mov     fs:[eax], esp

|
007C917A   E8F1B1EBFF             call    00684370
007C917F   84C0                   test    al, al
007C9181   7447                   jz      007C91CA
007C9183   A130AE7D00             mov     eax, dword ptr [$007DAE30]
007C9188   8B00                   mov     eax, [eax]
007C918A   8B1554AE7D00           mov     edx, [$007DAE54]
007C9190   8B12                   mov     edx, [edx]
007C9192   8982DC000000           mov     [edx+$00DC], eax
007C9198   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
007C91A2   8D55FC                 lea     edx, [ebp-$04]
007C91A5   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007C91AA   8B00                   mov     eax, [eax]
007C91AC   8B80A4000000           mov     eax, [eax+$00A4]
007C91B2   8B08                   mov     ecx, [eax]
007C91B4   FF5160                 call    dword ptr [ecx+$60]
007C91B7   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007C91BA   8B8348030000           mov     eax, [ebx+$0348]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007C91C0   E80B4ED3FF             call    004FDFD0

* Reference to : TFrmInfoAtu._PROC_007A600C()
|
007C91C5   E842CEFDFF             call    007A600C
007C91CA   33C0                   xor     eax, eax
007C91CC   5A                     pop     edx
007C91CD   59                     pop     ecx
007C91CE   59                     pop     ecx
007C91CF   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[Y]√êUãÏj'
|
007C91D2   68E7917C00             push    $007C91E7
007C91D7   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007C91DA   E8BDC2C3FF             call    0040549C
007C91DF   C3                     ret


* Reference to: System.@HandleFinally;
|
007C91E0   E953BBC3FF             jmp     00404D38
007C91E5   EBF0                   jmp     007C91D7

****** END
|
007C91E7   5B                     pop     ebx
007C91E8   59                     pop     ecx
007C91E9   5D                     pop     ebp
007C91EA   C3                     ret

*)
end;

procedure TFrmGereComanda.edCodProdChange(Sender : TObject);
begin
(*
007C91EC   55                     push    ebp
007C91ED   8BEC                   mov     ebp, esp
007C91EF   6A00                   push    $00
007C91F1   53                     push    ebx
007C91F2   8BD8                   mov     ebx, eax
007C91F4   33C0                   xor     eax, eax
007C91F6   55                     push    ebp

* Possible String Reference to: 'È‹∫√ˇÎ[Y]√ã¿UãÏ3…QQQQQSVWâE¸3¿Uh’ì
|                                |'
|
007C91F7   6857927C00             push    $007C9257

***** TRY
|
007C91FC   64FF30                 push    dword ptr fs:[eax]
007C91FF   648920                 mov     fs:[eax], esp
007C9202   A130AE7D00             mov     eax, dword ptr [$007DAE30]
007C9207   8B00                   mov     eax, [eax]
007C9209   8B1554AE7D00           mov     edx, [$007DAE54]
007C920F   8B12                   mov     edx, [edx]
007C9211   8982DC000000           mov     [edx+$00DC], eax
007C9217   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
007C9221   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007C9224   8B8348030000           mov     eax, [ebx+$0348]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007C922A   E80D4DD3FF             call    004FDF3C
007C922F   837DFC00               cmp     dword ptr [ebp-$04], +$00
007C9233   0F95C2                 setnz   dl

* Reference to control TFrmGereComanda.btAdicionar : TBitBtn
|
007C9236   8B8360030000           mov     eax, [ebx+$0360]
007C923C   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
007C923E   FF5164                 call    dword ptr [ecx+$64]
007C9241   33C0                   xor     eax, eax
007C9243   5A                     pop     edx
007C9244   59                     pop     ecx
007C9245   59                     pop     ecx
007C9246   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[Y]√ã¿UãÏ3…QQQQQSVWâE¸3¿Uh’ì|'
|
007C9249   685E927C00             push    $007C925E
007C924E   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007C9251   E846C2C3FF             call    0040549C
007C9256   C3                     ret


* Reference to: System.@HandleFinally;
|
007C9257   E9DCBAC3FF             jmp     00404D38
007C925C   EBF0                   jmp     007C924E

****** END
|
007C925E   5B                     pop     ebx
007C925F   59                     pop     ecx
007C9260   5D                     pop     ebp
007C9261   C3                     ret

*)
end;

procedure TFrmGereComanda.btAdicionarClick(Sender : TObject);
begin
(*
007C9264   55                     push    ebp
007C9265   8BEC                   mov     ebp, esp
007C9267   33C9                   xor     ecx, ecx
007C9269   51                     push    ecx
007C926A   51                     push    ecx
007C926B   51                     push    ecx
007C926C   51                     push    ecx
007C926D   51                     push    ecx
007C926E   53                     push    ebx
007C926F   56                     push    esi
007C9270   57                     push    edi
007C9271   8945FC                 mov     [ebp-$04], eax
007C9274   33C0                   xor     eax, eax
007C9276   55                     push    ebp

* Possible String Reference to: 'È^π√ˇÎ„_^[ãÂ]√'
|
007C9277   68D5937C00             push    $007C93D5

***** TRY
|
007C927C   64FF30                 push    dword ptr fs:[eax]
007C927F   648920                 mov     fs:[eax], esp
007C9282   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmGereComanda.btAdicionar : TBitBtn
|
007C9285   8B8060030000           mov     eax, [eax+$0360]
007C928B   33D2                   xor     edx, edx
007C928D   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
007C928F   FF5164                 call    dword ptr [ecx+$64]
007C9292   33C0                   xor     eax, eax
007C9294   55                     push    ebp
007C9295   68AB937C00             push    $007C93AB

***** TRY
|
007C929A   64FF30                 push    dword ptr fs:[eax]
007C929D   648920                 mov     fs:[eax], esp
007C92A0   33C0                   xor     eax, eax
007C92A2   55                     push    ebp
007C92A3   6848937C00             push    $007C9348

***** TRY
|
007C92A8   64FF30                 push    dword ptr fs:[eax]
007C92AB   648920                 mov     fs:[eax], esp
007C92AE   8D55F8                 lea     edx, [ebp-$08]
007C92B1   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007C92B4   8B8048030000           mov     eax, [eax+$0348]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007C92BA   E87D4CD3FF             call    004FDF3C
007C92BF   8B45F8                 mov     eax, [ebp-$08]

|
007C92C2   E86176FEFF             call    007B0928
007C92C7   84C0                   test    al, al
007C92C9   7473                   jz      007C933E
007C92CB   8D55F4                 lea     edx, [ebp-$0C]
007C92CE   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007C92D3   8B00                   mov     eax, [eax]
007C92D5   8B8024060000           mov     eax, [eax+$0624]
007C92DB   8B08                   mov     ecx, [eax]
007C92DD   FF5160                 call    dword ptr [ecx+$60]
007C92E0   8B45F4                 mov     eax, [ebp-$0C]
007C92E3   BAEC937C00             mov     edx, $007C93EC

* Reference to: System.@LStrCmp;
|
007C92E8   E8BBC5C3FF             call    004058A8
007C92ED   7547                   jnz     007C9336
007C92EF   8D55F0                 lea     edx, [ebp-$10]
007C92F2   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007C92F7   8B00                   mov     eax, [eax]
007C92F9   8B80840C0000           mov     eax, [eax+$0C84]
007C92FF   8B08                   mov     ecx, [eax]
007C9301   FF5160                 call    dword ptr [ecx+$60]
007C9304   8B45F0                 mov     eax, [ebp-$10]
007C9307   BAEC937C00             mov     edx, $007C93EC

* Reference to: System.@LStrCmp;
|
007C930C   E897C5C3FF             call    004058A8
007C9311   7523                   jnz     007C9336
007C9313   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007C9318   8B00                   mov     eax, [eax]
007C931A   8B8050080000           mov     eax, [eax+$0850]
007C9320   8B10                   mov     edx, [eax]
007C9322   FF924C010000           call    dword ptr [edx+$014C]
007C9328   85C0                   test    eax, eax
007C932A   7E0A                   jle     007C9336
007C932C   8B45FC                 mov     eax, [ebp-$04]

|
007C932F   E810070000             call    007C9A44
007C9334   EB08                   jmp     007C933E
007C9336   8B45FC                 mov     eax, [ebp-$04]

|
007C9339   E8C6000000             call    007C9404
007C933E   33C0                   xor     eax, eax
007C9340   5A                     pop     edx
007C9341   59                     pop     ecx
007C9342   59                     pop     ecx
007C9343   648910                 mov     fs:[eax], edx
007C9346   EB3B                   jmp     007C9383

* Reference to: System.@HandleOnException;
|
007C9348   E963B8C3FF             jmp     00404BB0
007C934D   0100                   add     [eax], eax
007C934F   0000                   add     [eax], al
007C9351   40                     inc     eax
007C9352   95                     xchg    eax, ebp
007C9353   40                     inc     eax
007C9354   005993                 add     [ecx-$6D], bl
007C9357   7C00                   jl      007C9359
007C9359   89C3                   mov     ebx, eax
007C935B   6A00                   push    $00
007C935D   8B4B04                 mov     ecx, [ebx+$04]
007C9360   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'Erro:'
|
007C9363   BAF8937C00             mov     edx, $007C93F8

* Reference to: System.@LStrCat3;
|
007C9368   E83BC4C3FF             call    004057A8
007C936D   8B45EC                 mov     eax, [ebp-$14]
007C9370   668B0D00947C00         mov     cx, word ptr [$007C9400]
007C9377   B201                   mov     dl, $01

|
007C9379   E8AEA7C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007C937E   E82DBBC3FF             call    00404EB0

****** END
|
007C9383   33C0                   xor     eax, eax
007C9385   5A                     pop     edx
007C9386   59                     pop     ecx
007C9387   59                     pop     ecx
007C9388   648910                 mov     fs:[eax], edx

****** FINALLY
|
007C938B   68B2937C00             push    $007C93B2
007C9390   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TFrmGereComanda.OFFS_03B9 : Byte
|
007C9393   C680B903000000         mov     byte ptr [eax+$03B9], $00
007C939A   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmGereComanda.btAdicionar : TBitBtn
|
007C939D   8B8060030000           mov     eax, [eax+$0360]
007C93A3   B201                   mov     dl, $01
007C93A5   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
007C93A7   FF5164                 call    dword ptr [ecx+$64]
007C93AA   C3                     ret


* Reference to: System.@HandleFinally;
|
007C93AB   E988B9C3FF             jmp     00404D38
007C93B0   EBDE                   jmp     007C9390

****** END
|
007C93B2   33C0                   xor     eax, eax
007C93B4   5A                     pop     edx
007C93B5   59                     pop     ecx
007C93B6   59                     pop     ecx
007C93B7   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
007C93BA   68DC937C00             push    $007C93DC
007C93BF   8D45EC                 lea     eax, [ebp-$14]
007C93C2   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007C93C7   E8F4C0C3FF             call    004054C0
007C93CC   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007C93CF   E8C8C0C3FF             call    0040549C
007C93D4   C3                     ret


* Reference to: System.@HandleFinally;
|
007C93D5   E95EB9C3FF             jmp     00404D38
007C93DA   EBE3                   jmp     007C93BF

****** END
|
007C93DC   5F                     pop     edi
007C93DD   5E                     pop     esi
007C93DE   5B                     pop     ebx
007C93DF   8BE5                   mov     esp, ebp
007C93E1   5D                     pop     ebp
007C93E2   C3                     ret

*)
end;

procedure TFrmGereComanda.btCancelaItemClick(Sender : TObject);
begin
(*
007CAAEC   55                     push    ebp
007CAAED   8BEC                   mov     ebp, esp
007CAAEF   33C9                   xor     ecx, ecx
007CAAF1   51                     push    ecx
007CAAF2   51                     push    ecx
007CAAF3   51                     push    ecx
007CAAF4   51                     push    ecx
007CAAF5   51                     push    ecx
007CAAF6   53                     push    ebx
007CAAF7   8BD8                   mov     ebx, eax
007CAAF9   33C0                   xor     eax, eax
007CAAFB   55                     push    ebp
007CAAFC   6822AC7C00             push    $007CAC22

***** TRY
|
007CAB01   64FF30                 push    dword ptr fs:[eax]
007CAB04   648920                 mov     fs:[eax], esp
007CAB07   8D55FC                 lea     edx, [ebp-$04]
007CAB0A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CAB0F   8B00                   mov     eax, [eax]
007CAB11   8B80E0050000           mov     eax, [eax+$05E0]
007CAB17   8B08                   mov     ecx, [eax]
007CAB19   FF5160                 call    dword ptr [ecx+$60]
007CAB1C   8B45FC                 mov     eax, [ebp-$04]
007CAB1F   BA38AC7C00             mov     edx, $007CAC38

* Reference to: System.@LStrCmp;
|
007CAB24   E87FADC3FF             call    004058A8
007CAB29   0F84C3000000           jz      007CABF2
007CAB2F   6A00                   push    $00

* Possible String Reference to: 'Tem certeza que deseja remover '
|
007CAB31   6844AC7C00             push    $007CAC44
007CAB36   8D55F4                 lea     edx, [ebp-$0C]
007CAB39   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CAB3E   8B00                   mov     eax, [eax]
007CAB40   8B80C4050000           mov     eax, [eax+$05C4]
007CAB46   8B08                   mov     ecx, [eax]
007CAB48   FF5160                 call    dword ptr [ecx+$60]
007CAB4B   FF75F4                 push    dword ptr [ebp-$0C]

* Possible String Reference to: ' ?'
|
007CAB4E   686CAC7C00             push    $007CAC6C
007CAB53   8D45F8                 lea     eax, [ebp-$08]
007CAB56   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007CAB5B   E8BCACC3FF             call    0040581C
007CAB60   8B45F8                 mov     eax, [ebp-$08]
007CAB63   668B0D70AC7C00         mov     cx, word ptr [$007CAC70]
007CAB6A   B203                   mov     dl, $03

|
007CAB6C   E8BB8FC7FF             call    00443B2C
007CAB71   83F806                 cmp     eax, +$06
007CAB74   0F858D000000           jnz     007CAC07
007CAB7A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CAB7F   8B00                   mov     eax, [eax]
007CAB81   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'VLRTOTAL'
|
007CAB84   BA7CAC7C00             mov     edx, $007CAC7C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CAB89   E876F0D1FF             call    004E9C04
007CAB8E   8B10                   mov     edx, [eax]
007CAB90   FF5254                 call    dword ptr [edx+$54]
007CAB93   DB2DF0F57D00           fld     tbyte ptr [$007DF5F0]
007CAB99   DEE1                   fsubrp  st(1), st(0)
007CAB9B   DB3DF0F57D00           fstp    tbyte ptr [$007DF5F0]
007CABA1   9B                     wait
007CABA2   668B05F8F57D00         mov     ax, word ptr [$007DF5F8]
007CABA9   50                     push    eax
007CABAA   FF35F4F57D00           push    dword ptr [$007DF5F4]
007CABB0   FF35F0F57D00           push    dword ptr [$007DF5F0]
007CABB6   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: '###,###,##0.00'
|
007CABB9   B890AC7C00             mov     eax, $007CAC90

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
007CABBE   E87929C4FF             call    0040D53C
007CABC3   8B4DEC                 mov     ecx, [ebp-$14]
007CABC6   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'Valor total: $ '
|
007CABC9   BAA8AC7C00             mov     edx, $007CACA8

* Reference to: System.@LStrCat3;
|
007CABCE   E8D5ABC3FF             call    004057A8
007CABD3   8B55F0                 mov     edx, [ebp-$10]

* Reference to control TFrmGereComanda.lbVlrTotal : TLabel
|
007CABD6   8B8340030000           mov     eax, [ebx+$0340]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CABDC   E81B8BCCFF             call    004936FC
007CABE1   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CABE6   8B00                   mov     eax, [eax]
007CABE8   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Delete(TDataSet);
|
007CABEB   E8800BD2FF             call    004EB770
007CABF0   EB15                   jmp     007CAC07
007CABF2   6A00                   push    $00
007CABF4   668B0D70AC7C00         mov     cx, word ptr [$007CAC70]
007CABFB   33D2                   xor     edx, edx

* Possible String Reference to: 'O item j· foi atendido!'
|
007CABFD   B8C0AC7C00             mov     eax, $007CACC0

|
007CAC02   E8258FC7FF             call    00443B2C
007CAC07   33C0                   xor     eax, eax
007CAC09   5A                     pop     edx
007CAC0A   59                     pop     ecx
007CAC0B   59                     pop     ecx
007CAC0C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
007CAC0F   6829AC7C00             push    $007CAC29
007CAC14   8D45EC                 lea     eax, [ebp-$14]
007CAC17   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CAC1C   E89FA8C3FF             call    004054C0
007CAC21   C3                     ret


* Reference to: System.@HandleFinally;
|
007CAC22   E911A1C3FF             jmp     00404D38
007CAC27   EBEB                   jmp     007CAC14

****** END
|
007CAC29   5B                     pop     ebx
007CAC2A   8BE5                   mov     esp, ebp
007CAC2C   5D                     pop     ebp
007CAC2D   C3                     ret

*)
end;

procedure TFrmGereComanda.EdUnidMedButtonClick(Sender : TObject);
begin
(*
007CACD8   55                     push    ebp
007CACD9   8BEC                   mov     ebp, esp
007CACDB   83C4D8                 add     esp, -$28
007CACDE   53                     push    ebx
007CACDF   33C9                   xor     ecx, ecx
007CACE1   894DD8                 mov     [ebp-$28], ecx
007CACE4   894DF8                 mov     [ebp-$08], ecx
007CACE7   894DF4                 mov     [ebp-$0C], ecx
007CACEA   894DFC                 mov     [ebp-$04], ecx
007CACED   8BD8                   mov     ebx, eax
007CACEF   33C0                   xor     eax, eax
007CACF1   55                     push    ebp

* Possible String Reference to: 'È.ü√ˇÎÿ[ãÂ]√'
|
007CACF2   6805AE7C00             push    $007CAE05

***** TRY
|
007CACF7   64FF30                 push    dword ptr fs:[eax]
007CACFA   648920                 mov     fs:[eax], esp
007CACFD   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007CAD00   8B8348030000           mov     eax, [ebx+$0348]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CAD06   E83132D3FF             call    004FDF3C
007CAD0B   837DFC00               cmp     dword ptr [ebp-$04], +$00
007CAD0F   0F84C2000000           jz      007CADD7
007CAD15   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007CAD18   8B8348030000           mov     eax, [ebx+$0348]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CAD1E   E81932D3FF             call    004FDF3C
007CAD23   8B45F4                 mov     eax, [ebp-$0C]
007CAD26   8D55F8                 lea     edx, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CAD29   E8F28DFDFF             call    007A3B20
007CAD2E   8B4DF8                 mov     ecx, [ebp-$08]
007CAD31   A1B4AE7D00             mov     eax, dword ptr [$007DAEB4]

* Possible String Reference to: 'CODPROD = '
|
007CAD36   BA1CAE7C00             mov     edx, $007CAE1C

* Reference to: System.@LStrCat3;
|
007CAD3B   E868AAC3FF             call    004057A8

* Possible String Reference to: 'Unidade'
|
007CAD40   B830AE7C00             mov     eax, $007CAE30
007CAD45   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'Qtde'
|
007CAD48   B840AE7C00             mov     eax, $007CAE40
007CAD4D   8945EC                 mov     [ebp-$14], eax

* Possible String Reference to: 'Valor'
|
007CAD50   B850AE7C00             mov     eax, $007CAE50
007CAD55   8945F0                 mov     [ebp-$10], eax
007CAD58   8D45E8                 lea     eax, [ebp-$18]
007CAD5B   50                     push    eax
007CAD5C   6A02                   push    $02
007CAD5E   6A00                   push    $00

* Possible String Reference to: 'UNIDMED'
|
007CAD60   B860AE7C00             mov     eax, $007CAE60
007CAD65   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'QTDEUNIDMED'
|
007CAD68   B870AE7C00             mov     eax, $007CAE70
007CAD6D   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'VLRUNIT'
|
007CAD70   B884AE7C00             mov     eax, $007CAE84
007CAD75   8945E4                 mov     [ebp-$1C], eax
007CAD78   8D55DC                 lea     edx, [ebp-$24]
007CAD7B   B902000000             mov     ecx, $00000002

* Possible String Reference to: 'PRODUNID'
|
007CAD80   B894AE7C00             mov     eax, $007CAE94

|
007CAD85   E8CAE4E6FF             call    00639254
007CAD8A   84C0                   test    al, al
007CAD8C   742A                   jz      007CADB8
007CAD8E   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007CAD93   8B00                   mov     eax, [eax]
007CAD95   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'UnidMed'
|
007CAD98   BAA8AE7C00             mov     edx, $007CAEA8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CAD9D   E862EED1FF             call    004E9C04
007CADA2   8D55D8                 lea     edx, [ebp-$28]
007CADA5   8B08                   mov     ecx, [eax]
007CADA7   FF5160                 call    dword ptr [ecx+$60]
007CADAA   8B55D8                 mov     edx, [ebp-$28]

* Reference to control TFrmGereComanda.EdUnidMed : TJvComboEdit
|
007CADAD   8B8374030000           mov     eax, [ebx+$0374]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CADB3   E81832D3FF             call    004FDFD0
007CADB8   A130AE7D00             mov     eax, dword ptr [$007DAE30]
007CADBD   8B00                   mov     eax, [eax]
007CADBF   8B1554AE7D00           mov     edx, [$007DAE54]
007CADC5   8B12                   mov     edx, [edx]
007CADC7   8982DC000000           mov     [edx+$00DC], eax
007CADCD   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
007CADD7   33C0                   xor     eax, eax
007CADD9   5A                     pop     edx
007CADDA   59                     pop     ecx
007CADDB   59                     pop     ecx
007CADDC   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
007CADDF   680CAE7C00             push    $007CAE0C
007CADE4   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrClr(void;void);
|
007CADE7   E8B0A6C3FF             call    0040549C
007CADEC   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
007CADEF   E8A8A6C3FF             call    0040549C
007CADF4   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007CADF7   E8A0A6C3FF             call    0040549C
007CADFC   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CADFF   E898A6C3FF             call    0040549C
007CAE04   C3                     ret


* Reference to: System.@HandleFinally;
|
007CAE05   E92E9FC3FF             jmp     00404D38
007CAE0A   EBD8                   jmp     007CADE4

****** END
|
007CAE0C   5B                     pop     ebx
007CAE0D   8BE5                   mov     esp, ebp
007CAE0F   5D                     pop     ebp
007CAE10   C3                     ret

*)
end;

procedure TFrmGereComanda.EdComandaKeyDown(Sender : TObject);
begin
(*
007CC8DC   55                     push    ebp
007CC8DD   8BEC                   mov     ebp, esp
007CC8DF   6A00                   push    $00
007CC8E1   6A00                   push    $00
007CC8E3   6A00                   push    $00
007CC8E5   6A00                   push    $00
007CC8E7   6A00                   push    $00
007CC8E9   6A00                   push    $00
007CC8EB   53                     push    ebx
007CC8EC   56                     push    esi
007CC8ED   8BD8                   mov     ebx, eax
007CC8EF   33C0                   xor     eax, eax
007CC8F1   55                     push    ebp
007CC8F2   6807CA7C00             push    $007CCA07

***** TRY
|
007CC8F7   64FF30                 push    dword ptr fs:[eax]
007CC8FA   648920                 mov     fs:[eax], esp
007CC8FD   6683390D               cmp     word ptr [ecx], +$0D
007CC901   0F85C5000000           jnz     007CC9CC
007CC907   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CC90A   8BB304030000           mov     esi, [ebx+$0304]
007CC910   8BC6                   mov     eax, esi

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CC912   E82516D3FF             call    004FDF3C
007CC917   8B45F8                 mov     eax, [ebp-$08]
007CC91A   8D55FC                 lea     edx, [ebp-$04]

|
007CC91D   E8A2C7FFFF             call    007C90C4
007CC922   8B55FC                 mov     edx, [ebp-$04]
007CC925   8BC6                   mov     eax, esi

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CC927   E8A416D3FF             call    004FDFD0
007CC92C   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CC92F   8B8304030000           mov     eax, [ebx+$0304]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CC935   E80216D3FF             call    004FDF3C
007CC93A   8B45F0                 mov     eax, [ebp-$10]
007CC93D   8D55F4                 lea     edx, [ebp-$0C]

|
007CC940   E87FC7FFFF             call    007C90C4
007CC945   8B55F4                 mov     edx, [ebp-$0C]
007CC948   8BC3                   mov     eax, ebx

|
007CC94A   E8FDF5FFFF             call    007CBF4C
007CC94F   84C0                   test    al, al
007CC951   7479                   jz      007CC9CC
007CC953   B101                   mov     cl, $01
007CC955   BA2D000000             mov     edx, $0000002D
007CC95A   8BC3                   mov     eax, ebx

* Reference to : TFrmInfoAtu._PROC_007A6198()
|
007CC95C   E83798FDFF             call    007A6198
007CC961   B201                   mov     dl, $01

* Reference to control TFrmGereComanda.nbComanda : TNotebook
|
007CC963   8B830C030000           mov     eax, [ebx+$030C]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
007CC969   E87E6CCCFF             call    004935EC
007CC96E   33D2                   xor     edx, edx

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CC970   8B8304030000           mov     eax, [ebx+$0304]
007CC976   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TJvComboEdit.OFFS_64
|
007CC978   FF5164                 call    dword ptr [ecx+$64]
007CC97B   8D55EC                 lea     edx, [ebp-$14]
007CC97E   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CC983   8B00                   mov     eax, [eax]
007CC985   8B8034090000           mov     eax, [eax+$0934]
007CC98B   8B08                   mov     ecx, [eax]
007CC98D   FF5160                 call    dword ptr [ecx+$60]
007CC990   8B55EC                 mov     edx, [ebp-$14]

* Reference to control TFrmGereComanda.edCgcClie : TJvComboEdit
|
007CC993   8B83A0030000           mov     eax, [ebx+$03A0]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CC999   E83216D3FF             call    004FDFD0
007CC99E   8D55E8                 lea     edx, [ebp-$18]
007CC9A1   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CC9A6   8B00                   mov     eax, [eax]
007CC9A8   8B8038090000           mov     eax, [eax+$0938]
007CC9AE   8B08                   mov     ecx, [eax]
007CC9B0   FF5160                 call    dword ptr [ecx+$60]
007CC9B3   8B55E8                 mov     edx, [ebp-$18]

* Reference to control TFrmGereComanda.edCodFunc : TJvComboEdit
|
007CC9B6   8B83B0030000           mov     eax, [ebx+$03B0]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CC9BC   E80F16D3FF             call    004FDFD0

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007CC9C1   8B8348030000           mov     eax, [ebx+$0348]

|
007CC9C7   E81497FDFF             call    007A60E0
007CC9CC   33C0                   xor     eax, eax
007CC9CE   5A                     pop     edx
007CC9CF   59                     pop     ecx
007CC9D0   59                     pop     ecx
007CC9D1   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CC9D4   680ECA7C00             push    $007CCA0E
007CC9D9   8D45E8                 lea     eax, [ebp-$18]
007CC9DC   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CC9E1   E8DA8AC3FF             call    004054C0
007CC9E6   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
007CC9E9   E8AE8AC3FF             call    0040549C
007CC9EE   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
007CC9F1   E8A68AC3FF             call    0040549C
007CC9F6   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007CC9F9   E89E8AC3FF             call    0040549C
007CC9FE   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CCA01   E8968AC3FF             call    0040549C
007CCA06   C3                     ret


* Reference to: System.@HandleFinally;
|
007CCA07   E92C83C3FF             jmp     00404D38
007CCA0C   EBCB                   jmp     007CC9D9

****** END
|
007CCA0E   5E                     pop     esi
007CCA0F   5B                     pop     ebx
007CCA10   8BE5                   mov     esp, ebp
007CCA12   5D                     pop     ebp
007CCA13   C20400                 ret     $0004

*)
end;

procedure TFrmGereComanda.EdComandaEnter(Sender : TObject);
begin
(*
007CCA18   55                     push    ebp
007CCA19   8BEC                   mov     ebp, esp

|
007CCA1B   E82095FDFF             call    007A5F40
007CCA20   5D                     pop     ebp
007CCA21   C3                     ret

*)
end;

procedure TFrmGereComanda.EdComandaExit(Sender : TObject);
begin
(*
007CCA24   55                     push    ebp
007CCA25   8BEC                   mov     ebp, esp

|
007CCA27   E82C95FDFF             call    007A5F58
007CCA2C   5D                     pop     ebp
007CCA2D   C3                     ret

*)
end;

procedure TFrmGereComanda.sbCadastraClick(Sender : TObject);
begin
(*
007CCA30   55                     push    ebp
007CCA31   8BEC                   mov     ebp, esp
007CCA33   B904000000             mov     ecx, $00000004
007CCA38   6A00                   push    $00
007CCA3A   6A00                   push    $00
007CCA3C   49                     dec     ecx
007CCA3D   75F9                   jnz     007CCA38
007CCA3F   51                     push    ecx
007CCA40   53                     push    ebx
007CCA41   56                     push    esi
007CCA42   8BD8                   mov     ebx, eax
007CCA44   33C0                   xor     eax, eax
007CCA46   55                     push    ebp

* Possible String Reference to: 'È≥Å√ˇÎ≥^[ãÂ]√'
|
007CCA47   6880CB7C00             push    $007CCB80

***** TRY
|
007CCA4C   64FF30                 push    dword ptr fs:[eax]
007CCA4F   648920                 mov     fs:[eax], esp
007CCA52   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CCA55   8B8304030000           mov     eax, [ebx+$0304]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CCA5B   E8DC14D3FF             call    004FDF3C
007CCA60   8B45F8                 mov     eax, [ebp-$08]
007CCA63   8D55FC                 lea     edx, [ebp-$04]

|
007CCA66   E859C6FFFF             call    007C90C4
007CCA6B   837DFC00               cmp     dword ptr [ebp-$04], +$00
007CCA6F   0F84A3000000           jz      007CCB18
007CCA75   6A00                   push    $00

* Possible String Reference to: 'Deseja cadastrar a comanda '
|
007CCA77   6898CB7C00             push    $007CCB98
007CCA7C   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CCA7F   8B8304030000           mov     eax, [ebx+$0304]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CCA85   E8B214D3FF             call    004FDF3C
007CCA8A   8B45EC                 mov     eax, [ebp-$14]
007CCA8D   8D55F0                 lea     edx, [ebp-$10]

|
007CCA90   E82FC6FFFF             call    007C90C4
007CCA95   FF75F0                 push    dword ptr [ebp-$10]

* Possible String Reference to: ' agora?'
|
007CCA98   68BCCB7C00             push    $007CCBBC
007CCA9D   8D45F4                 lea     eax, [ebp-$0C]
007CCAA0   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007CCAA5   E8728DC3FF             call    0040581C
007CCAAA   8B45F4                 mov     eax, [ebp-$0C]
007CCAAD   668B0DC4CB7C00         mov     cx, word ptr [$007CCBC4]
007CCAB4   B203                   mov     dl, $03

|
007CCAB6   E87170C7FF             call    00443B2C
007CCABB   83F806                 cmp     eax, +$06
007CCABE   7531                   jnz     007CCAF1
007CCAC0   8D55E4                 lea     edx, [ebp-$1C]

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CCAC3   8B8304030000           mov     eax, [ebx+$0304]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CCAC9   E86E14D3FF             call    004FDF3C
007CCACE   8B45E4                 mov     eax, [ebp-$1C]
007CCAD1   8D55E8                 lea     edx, [ebp-$18]

|
007CCAD4   E8EBC5FFFF             call    007C90C4
007CCAD9   8B55E8                 mov     edx, [ebp-$18]
007CCADC   8BC3                   mov     eax, ebx

|
007CCADE   E835010000             call    007CCC18
007CCAE3   84C0                   test    al, al
007CCAE5   740A                   jz      007CCAF1

* Possible String Reference to: 'Ok... Comanda cadastrada!'
|
007CCAE7   B8D0CB7C00             mov     eax, $007CCBD0

* Reference to: Dialogs.ShowMessage(AnsiString);
|
007CCAEC   E83371C7FF             call    00443C24
007CCAF1   8D55DC                 lea     edx, [ebp-$24]

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CCAF4   8BB304030000           mov     esi, [ebx+$0304]
007CCAFA   8BC6                   mov     eax, esi

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CCAFC   E83B14D3FF             call    004FDF3C
007CCB01   8B45DC                 mov     eax, [ebp-$24]
007CCB04   8D55E0                 lea     edx, [ebp-$20]

|
007CCB07   E8B8C5FFFF             call    007C90C4
007CCB0C   8B55E0                 mov     edx, [ebp-$20]
007CCB0F   8BC6                   mov     eax, esi

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CCB11   E8BA14D3FF             call    004FDFD0
007CCB16   EB15                   jmp     007CCB2D
007CCB18   6A00                   push    $00
007CCB1A   668B0DECCB7C00         mov     cx, word ptr [$007CCBEC]
007CCB21   33D2                   xor     edx, edx

* Possible String Reference to: 'Informe o cÛdigo da comanda!'
|
007CCB23   B8F8CB7C00             mov     eax, $007CCBF8

|
007CCB28   E8FF6FC7FF             call    00443B2C
007CCB2D   33C0                   xor     eax, eax
007CCB2F   5A                     pop     edx
007CCB30   59                     pop     ecx
007CCB31   59                     pop     ecx
007CCB32   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[ãÂ]√'
|
007CCB35   6887CB7C00             push    $007CCB87
007CCB3A   8D45DC                 lea     eax, [ebp-$24]

* Reference to: System.@LStrClr(void;void);
|
007CCB3D   E85A89C3FF             call    0040549C
007CCB42   8D45E0                 lea     eax, [ebp-$20]

* Reference to: System.@LStrClr(void;void);
|
007CCB45   E85289C3FF             call    0040549C
007CCB4A   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrClr(void;void);
|
007CCB4D   E84A89C3FF             call    0040549C
007CCB52   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@LStrClr(void;void);
|
007CCB55   E84289C3FF             call    0040549C
007CCB5A   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
007CCB5D   E83A89C3FF             call    0040549C
007CCB62   8D45F0                 lea     eax, [ebp-$10]
007CCB65   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CCB6A   E85189C3FF             call    004054C0
007CCB6F   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007CCB72   E82589C3FF             call    0040549C
007CCB77   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CCB7A   E81D89C3FF             call    0040549C
007CCB7F   C3                     ret


* Reference to: System.@HandleFinally;
|
007CCB80   E9B381C3FF             jmp     00404D38
007CCB85   EBB3                   jmp     007CCB3A

****** END
|
007CCB87   5E                     pop     esi
007CCB88   5B                     pop     ebx
007CCB89   8BE5                   mov     esp, ebp
007CCB8B   5D                     pop     ebp
007CCB8C   C3                     ret

*)
end;

procedure TFrmGereComanda.edCodProdEnter(Sender : TObject);
begin
(*
007CD528   A130AE7D00             mov     eax, dword ptr [$007DAE30]
007CD52D   8B00                   mov     eax, [eax]
007CD52F   8B1554AE7D00           mov     edx, [$007DAE54]
007CD535   8B12                   mov     edx, [edx]
007CD537   8982DC000000           mov     [edx+$00DC], eax
007CD53D   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
007CD547   C3                     ret

*)
end;

procedure TFrmGereComanda.edCodProdExit(Sender : TObject);
begin
(*
007CD548   55                     push    ebp
007CD549   8BEC                   mov     ebp, esp
007CD54B   B919000000             mov     ecx, $00000019
007CD550   6A00                   push    $00
007CD552   6A00                   push    $00
007CD554   49                     dec     ecx
007CD555   75F9                   jnz     007CD550
007CD557   53                     push    ebx
007CD558   8BD8                   mov     ebx, eax
007CD55A   33C0                   xor     eax, eax
007CD55C   55                     push    ebp
007CD55D   682ED87C00             push    $007CD82E

***** TRY
|
007CD562   64FF30                 push    dword ptr fs:[eax]
007CD565   648920                 mov     fs:[eax], esp
007CD568   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007CD56B   8B8348030000           mov     eax, [ebx+$0348]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CD571   E8C609D3FF             call    004FDF3C
007CD576   837DFC00               cmp     dword ptr [ebp-$04], +$00
007CD57A   0F8426020000           jz      007CD7A6
007CD580   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007CD583   8B8348030000           mov     eax, [ebx+$0348]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CD589   E8AE09D3FF             call    004FDF3C
007CD58E   8B45F8                 mov     eax, [ebp-$08]

|
007CD591   E89233FEFF             call    007B0928
007CD596   84C0                   test    al, al
007CD598   0F84AC010000           jz      007CD74A
007CD59E   8D55F4                 lea     edx, [ebp-$0C]
007CD5A1   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD5A6   8B00                   mov     eax, [eax]
007CD5A8   8B800C060000           mov     eax, [eax+$060C]
007CD5AE   8B08                   mov     ecx, [eax]
007CD5B0   FF5160                 call    dword ptr [ecx+$60]
007CD5B3   8B55F4                 mov     edx, [ebp-$0C]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007CD5B6   8B8348030000           mov     eax, [ebx+$0348]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
007CD5BC   E8AF08D3FF             call    004FDE70
007CD5C1   8D55F0                 lea     edx, [ebp-$10]
007CD5C4   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD5C9   8B00                   mov     eax, [eax]
007CD5CB   8B8014060000           mov     eax, [eax+$0614]
007CD5D1   8B08                   mov     ecx, [eax]
007CD5D3   FF5160                 call    dword ptr [ecx+$60]
007CD5D6   8B55F0                 mov     edx, [ebp-$10]

* Reference to control TFrmGereComanda.edDescrProd : TEdit
|
007CD5D9   8B8350030000           mov     eax, [ebx+$0350]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CD5DF   E81861CCFF             call    004936FC
007CD5E4   A03CD87C00             mov     al, byte ptr [$007CD83C]
007CD5E9   50                     push    eax
007CD5EA   B054                   mov     al, $54
007CD5EC   8845DD                 mov     [ebp-$23], al
007CD5EF   C645DC01               mov     byte ptr [ebp-$24], $01
007CD5F3   8D45E0                 lea     eax, [ebp-$20]
007CD5F6   8D55DC                 lea     edx, [ebp-$24]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
007CD5F9   E8F2B6C4FF             call    00418CF0
007CD5FE   8D4DE0                 lea     ecx, [ebp-$20]
007CD601   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD606   8B00                   mov     eax, [eax]
007CD608   8B8044070000           mov     eax, [eax+$0744]

* Possible String Reference to: 'Padrao'
|
007CD60E   BA48D87C00             mov     edx, $007CD848

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
007CD613   E8E0ADFDFF             call    007A83F8
007CD618   84C0                   test    al, al
007CD61A   7512                   jnz     007CD62E
007CD61C   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD621   8B00                   mov     eax, [eax]
007CD623   8B8044070000           mov     eax, [eax+$0744]

* Reference to: DB.TDataSet.First(TDataSet);
|
007CD629   E8FED9D1FF             call    004EB02C
007CD62E   8D55D8                 lea     edx, [ebp-$28]
007CD631   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD636   8B00                   mov     eax, [eax]
007CD638   8B8050070000           mov     eax, [eax+$0750]
007CD63E   8B08                   mov     ecx, [eax]
007CD640   FF5160                 call    dword ptr [ecx+$60]
007CD643   8B55D8                 mov     edx, [ebp-$28]

* Reference to control TFrmGereComanda.EdUnidMed : TJvComboEdit
|
007CD646   8B8374030000           mov     eax, [ebx+$0374]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CD64C   E87F09D3FF             call    004FDFD0
007CD651   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD656   8B00                   mov     eax, [eax]
007CD658   8B80B8070000           mov     eax, [eax+$07B8]
007CD65E   8B10                   mov     edx, [eax]
007CD660   FF5254                 call    dword ptr [edx+$54]
007CD663   8D45C8                 lea     eax, [ebp-$38]

* Reference to: Variants.@VarFromReal;
|
007CD666   E81DB6C4FF             call    00418C88
007CD66B   8D55C8                 lea     edx, [ebp-$38]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007CD66E   8B836C030000           mov     eax, [ebx+$036C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CD674   E8175CE8FF             call    00653290
007CD679   8D55B8                 lea     edx, [ebp-$48]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007CD67C   8B836C030000           mov     eax, [ebx+$036C]

|
007CD682   E8315BE8FF             call    006531B8
007CD687   8D45B8                 lea     eax, [ebp-$48]
007CD68A   50                     push    eax
007CD68B   8D45A8                 lea     eax, [ebp-$58]
007CD68E   33D2                   xor     edx, edx
007CD690   B101                   mov     cl, $01

|
007CD692   E8D9B3C4FF             call    00418A70
007CD697   8D55A8                 lea     edx, [ebp-$58]
007CD69A   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
007CD69B   E864FAC4FF             call    0041D104
007CD6A0   752A                   jnz     007CD6CC
007CD6A2   A1F0AD7D00             mov     eax, dword ptr [$007DADF0]
007CD6A7   668B5008               mov     dx, word ptr [eax+$08]
007CD6AB   52                     push    edx
007CD6AC   FF7004                 push    dword ptr [eax+$04]
007CD6AF   FF30                   push    dword ptr [eax]

|
007CD6B1   E85E61FEFF             call    007B3814
007CD6B6   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarFromReal;
|
007CD6B9   E8CAB5C4FF             call    00418C88
007CD6BE   8D5598                 lea     edx, [ebp-$68]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007CD6C1   8B836C030000           mov     eax, [ebx+$036C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CD6C7   E8C45BE8FF             call    00653290
007CD6CC   8D5588                 lea     edx, [ebp-$78]

* Reference to control TFrmGereComanda.edQtdeLcto : TJvValidateEdit
|
007CD6CF   8B837C030000           mov     eax, [ebx+$037C]

|
007CD6D5   E8DE5AE8FF             call    006531B8
007CD6DA   8D4588                 lea     eax, [ebp-$78]
007CD6DD   50                     push    eax
007CD6DE   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
007CD6E4   33D2                   xor     edx, edx
007CD6E6   B101                   mov     cl, $01

|
007CD6E8   E883B3C4FF             call    00418A70
007CD6ED   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
007CD6F3   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
007CD6F4   E84BFAC4FF             call    0041D144
007CD6F9   0F8EE1000000           jle     007CD7E0
007CD6FF   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]

* Reference to control TFrmGereComanda.edQtdeLcto : TJvValidateEdit
|
007CD705   8B837C030000           mov     eax, [ebx+$037C]

|
007CD70B   E8A85AE8FF             call    006531B8
007CD710   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
007CD716   50                     push    eax
007CD717   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007CD71D   8B836C030000           mov     eax, [ebx+$036C]

|
007CD723   E8905AE8FF             call    006531B8
007CD728   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
007CD72E   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007CD72F   E888F9C4FF             call    0041D0BC
007CD734   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]

* Reference to control TFrmGereComanda.edVlrTotal : TJvValidateEdit
|
007CD73A   8B8364030000           mov     eax, [ebx+$0364]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CD740   E84B5BE8FF             call    00653290
007CD745   E996000000             jmp     007CD7E0
007CD74A   6A00                   push    $00
007CD74C   668B0D50D87C00         mov     cx, word ptr [$007CD850]
007CD753   33D2                   xor     edx, edx

* Possible String Reference to: 'Produto n„o localizado! Por favor v
|                                erifique!!!'
|
007CD755   B85CD87C00             mov     eax, $007CD85C

|
007CD75A   E8CD63C7FF             call    00443B2C
007CD75F   33D2                   xor     edx, edx

* Reference to control TFrmGereComanda.edDescrProd : TEdit
|
007CD761   8B8350030000           mov     eax, [ebx+$0350]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CD767   E8905FCCFF             call    004936FC
007CD76C   33D2                   xor     edx, edx

* Reference to control TFrmGereComanda.EdUnidMed : TJvComboEdit
|
007CD76E   8B8374030000           mov     eax, [ebx+$0374]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CD774   E85708D3FF             call    004FDFD0
007CD779   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
007CD77F   33D2                   xor     edx, edx
007CD781   B101                   mov     cl, $01

|
007CD783   E8E8B2C4FF             call    00418A70
007CD788   8D9548FFFFFF           lea     edx, [ebp+$FFFFFF48]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007CD78E   8B836C030000           mov     eax, [ebx+$036C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CD794   E8F75AE8FF             call    00653290

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007CD799   8B8348030000           mov     eax, [ebx+$0348]

|
007CD79F   E83C89FDFF             call    007A60E0
007CD7A4   EB3A                   jmp     007CD7E0
007CD7A6   33D2                   xor     edx, edx

* Reference to control TFrmGereComanda.edDescrProd : TEdit
|
007CD7A8   8B8350030000           mov     eax, [ebx+$0350]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CD7AE   E8495FCCFF             call    004936FC
007CD7B3   33D2                   xor     edx, edx

* Reference to control TFrmGereComanda.EdUnidMed : TJvComboEdit
|
007CD7B5   8B8374030000           mov     eax, [ebx+$0374]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CD7BB   E81008D3FF             call    004FDFD0
007CD7C0   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]
007CD7C6   33D2                   xor     edx, edx
007CD7C8   B101                   mov     cl, $01

|
007CD7CA   E8A1B2C4FF             call    00418A70
007CD7CF   8D9538FFFFFF           lea     edx, [ebp+$FFFFFF38]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007CD7D5   8B836C030000           mov     eax, [ebx+$036C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CD7DB   E8B05AE8FF             call    00653290
007CD7E0   33C0                   xor     eax, eax
007CD7E2   5A                     pop     edx
007CD7E3   59                     pop     ecx
007CD7E4   59                     pop     ecx
007CD7E5   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
007CD7E8   6835D87C00             push    $007CD835
007CD7ED   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]

* Reference to object Variant
|
007CD7F3   8B1524114000           mov     edx, [$00401124]
007CD7F9   B90A000000             mov     ecx, $0000000A

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007CD7FE   E89988C3FF             call    0040609C
007CD803   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrClr(void;void);
|
007CD806   E8917CC3FF             call    0040549C
007CD80B   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007CD80E   E8656DC4FF             call    00414578
007CD813   8D45F0                 lea     eax, [ebp-$10]
007CD816   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CD81B   E8A07CC3FF             call    004054C0
007CD820   8D45F8                 lea     eax, [ebp-$08]
007CD823   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CD828   E8937CC3FF             call    004054C0
007CD82D   C3                     ret


* Reference to: System.@HandleFinally;
|
007CD82E   E90575C3FF             jmp     00404D38
007CD833   EBB8                   jmp     007CD7ED

****** END
|
007CD835   5B                     pop     ebx
007CD836   8BE5                   mov     esp, ebp
007CD838   5D                     pop     ebp
007CD839   C3                     ret

*)
end;

procedure TFrmGereComanda.sbOkClick(Sender : TObject);
begin
(*
007CDAB8   55                     push    ebp
007CDAB9   8BEC                   mov     ebp, esp
007CDABB   53                     push    ebx
007CDABC   8BD8                   mov     ebx, eax
007CDABE   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CDAC3   8B00                   mov     eax, [eax]
007CDAC5   8B4074                 mov     eax, [eax+$74]
007CDAC8   8B10                   mov     edx, [eax]
007CDACA   FF924C010000           call    dword ptr [edx+$014C]
007CDAD0   85C0                   test    eax, eax
007CDAD2   7E07                   jle     007CDADB
007CDAD4   8BC3                   mov     eax, ebx

* Reference to : TFrmGereComanda._PROC_007CAED0()
|
007CDAD6   E8F5D3FFFF             call    007CAED0
007CDADB   8BC3                   mov     eax, ebx

|
007CDADD   E8BE120000             call    007CEDA0
007CDAE2   5B                     pop     ebx
007CDAE3   5D                     pop     ebp
007CDAE4   C3                     ret

*)
end;

procedure TFrmGereComanda.FormCloseQuery(Sender : TObject);
begin
(*
007CE574   55                     push    ebp
007CE575   8BEC                   mov     ebp, esp
007CE577   53                     push    ebx
007CE578   8BD9                   mov     ebx, ecx

* Reference to control TFrmGereComanda.nbComanda : TNotebook
|
007CE57A   8B800C030000           mov     eax, [eax+$030C]

* Reference to field TNotebook.Visible : Boolean
|
007CE580   80785700               cmp     byte ptr [eax+$57], $00
007CE584   7418                   jz      007CE59E
007CE586   6A00                   push    $00
007CE588   668B0DA4E57C00         mov     cx, word ptr [$007CE5A4]
007CE58F   33D2                   xor     edx, edx

* Possible String Reference to: 'Confirme a operaÁ„o antes de fechar
|                                 a janela!'
|
007CE591   B8B0E57C00             mov     eax, $007CE5B0

|
007CE596   E89155C7FF             call    00443B2C
007CE59B   C60300                 mov     byte ptr [ebx], $00
007CE59E   5B                     pop     ebx
007CE59F   5D                     pop     ebp
007CE5A0   C3                     ret

*)
end;

procedure TFrmGereComanda.sbComandaClick(Sender : TObject);
begin
(*
007CE5E0   55                     push    ebp
007CE5E1   8BEC                   mov     ebp, esp
007CE5E3   53                     push    ebx
007CE5E4   8BD8                   mov     ebx, eax
007CE5E6   A1D4A27D00             mov     eax, dword ptr [$007DA2D4]
007CE5EB   8B00                   mov     eax, [eax]

|
007CE5ED   E82670FEFF             call    007B5618
007CE5F2   84C0                   test    al, al
007CE5F4   741A                   jz      007CE610

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CE5F6   8B83BC030000           mov     eax, [ebx+$03BC]

|
007CE5FC   E83B69ECFF             call    00694F3C
007CE601   8BC3                   mov     eax, ebx

|
007CE603   E898070000             call    007CEDA0

|
007CE608   E84B79FDFF             call    007A5F58
007CE60D   5B                     pop     ebx
007CE60E   5D                     pop     ebp
007CE60F   C3                     ret

007CE610   6A00                   push    $00
007CE612   668B0D28E67C00         mov     cx, word ptr [$007CE628]
007CE619   33D2                   xor     edx, edx

* Possible String Reference to: 'O PDV atual foi Fechado!Por favor s
|                                elecione outro PDV (F6)'
|
007CE61B   B834E67C00             mov     eax, $007CE634

|
007CE620   E80755C7FF             call    00443B2C
007CE625   5B                     pop     ebx
007CE626   5D                     pop     ebp
007CE627   C3                     ret

*)
end;

procedure TFrmGereComanda.dbgMesaItemGetCellParams(Sender : TObject);
begin
(*
007CE670   55                     push    ebp
007CE671   8BEC                   mov     ebp, esp
007CE673   6A00                   push    $00
007CE675   6A00                   push    $00
007CE677   6A00                   push    $00
007CE679   6A00                   push    $00
007CE67B   53                     push    ebx
007CE67C   56                     push    esi
007CE67D   57                     push    edi
007CE67E   8BF9                   mov     edi, ecx
007CE680   8B750C                 mov     esi, [ebp+$0C]
007CE683   8B5D10                 mov     ebx, [ebp+$10]
007CE686   33C0                   xor     eax, eax
007CE688   55                     push    ebp
007CE689   689DE77C00             push    $007CE79D

***** TRY
|
007CE68E   64FF30                 push    dword ptr fs:[eax]
007CE691   648920                 mov     fs:[eax], esp
007CE694   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CE699   8B00                   mov     eax, [eax]
007CE69B   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'STATUS'
|
007CE69E   BAB8E77C00             mov     edx, $007CE7B8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CE6A3   E85CB5D1FF             call    004E9C04
007CE6A8   8D55FC                 lea     edx, [ebp-$04]
007CE6AB   8B08                   mov     ecx, [eax]
007CE6AD   FF5160                 call    dword ptr [ecx+$60]
007CE6B0   8B45FC                 mov     eax, [ebp-$04]
007CE6B3   BAC8E77C00             mov     edx, $007CE7C8

* Reference to: System.@LStrCmp;
|
007CE6B8   E8EB71C3FF             call    004058A8
007CE6BD   7514                   jnz     007CE6D3
007CE6BF   C706FF000000           mov     dword ptr [esi], $000000FF
007CE6C5   BAFFFFFF00             mov     edx, $00FFFFFF
007CE6CA   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
007CE6CC   E87F33C6FF             call    00431A50
007CE6D1   EB76                   jmp     007CE749
007CE6D3   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CE6D8   8B00                   mov     eax, [eax]
007CE6DA   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'STATUS'
|
007CE6DD   BAB8E77C00             mov     edx, $007CE7B8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CE6E2   E81DB5D1FF             call    004E9C04
007CE6E7   8D55F8                 lea     edx, [ebp-$08]
007CE6EA   8B08                   mov     ecx, [eax]
007CE6EC   FF5160                 call    dword ptr [ecx+$60]
007CE6EF   8B45F8                 mov     eax, [ebp-$08]
007CE6F2   BAD4E77C00             mov     edx, $007CE7D4

* Reference to: System.@LStrCmp;
|
007CE6F7   E8AC71C3FF             call    004058A8
007CE6FC   7511                   jnz     007CE70F
007CE6FE   C706180000FF           mov     dword ptr [esi], $FF000018
007CE704   33D2                   xor     edx, edx
007CE706   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
007CE708   E84333C6FF             call    00431A50
007CE70D   EB3A                   jmp     007CE749
007CE70F   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CE714   8B00                   mov     eax, [eax]
007CE716   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'STATUS'
|
007CE719   BAB8E77C00             mov     edx, $007CE7B8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CE71E   E8E1B4D1FF             call    004E9C04
007CE723   8D55F4                 lea     edx, [ebp-$0C]
007CE726   8B08                   mov     ecx, [eax]
007CE728   FF5160                 call    dword ptr [ecx+$60]
007CE72B   8B45F4                 mov     eax, [ebp-$0C]
007CE72E   BAE0E77C00             mov     edx, $007CE7E0

* Reference to: System.@LStrCmp;
|
007CE733   E87071C3FF             call    004058A8
007CE738   750F                   jnz     007CE749
007CE73A   C706C0DCC000           mov     dword ptr [esi], $00C0DCC0
007CE740   33D2                   xor     edx, edx
007CE742   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
007CE744   E80733C6FF             call    00431A50
007CE749   8D55F0                 lea     edx, [ebp-$10]
007CE74C   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
007CE74F   E848BFC3FF             call    0040A69C
007CE754   8B45F0                 mov     eax, [ebp-$10]

* Possible String Reference to: 'ccdestino'
|
007CE757   BAECE77C00             mov     edx, $007CE7EC

* Reference to: System.@LStrCmp;
|
007CE75C   E84771C3FF             call    004058A8
007CE761   751F                   jnz     007CE782
007CE763   8A15F8E77C00           mov     dl, byte ptr [$007CE7F8]
007CE769   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetStyle(TFont;TFontStyles);
|
007CE76B   E8AC35C6FF             call    00431D1C
007CE770   BAFFFFFF00             mov     edx, $00FFFFFF
007CE775   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
007CE777   E8D432C6FF             call    00431A50
007CE77C   C70600800000           mov     dword ptr [esi], $00008000
007CE782   33C0                   xor     eax, eax
007CE784   5A                     pop     edx
007CE785   59                     pop     ecx
007CE786   59                     pop     ecx
007CE787   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CE78A   68A4E77C00             push    $007CE7A4
007CE78F   8D45F0                 lea     eax, [ebp-$10]
007CE792   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CE797   E8246DC3FF             call    004054C0
007CE79C   C3                     ret


* Reference to: System.@HandleFinally;
|
007CE79D   E99665C3FF             jmp     00404D38
007CE7A2   EBEB                   jmp     007CE78F

****** END
|
007CE7A4   5F                     pop     edi
007CE7A5   5E                     pop     esi
007CE7A6   5B                     pop     ebx
007CE7A7   8BE5                   mov     esp, ebp
007CE7A9   5D                     pop     ebp
007CE7AA   C20C00                 ret     $000C

*)
end;

procedure TFrmGereComanda.edQtdeLctoChange(Sender : TObject);
begin
(*
007CE7FC   55                     push    ebp
007CE7FD   8BEC                   mov     ebp, esp
007CE7FF   B90A000000             mov     ecx, $0000000A
007CE804   6A00                   push    $00
007CE806   6A00                   push    $00
007CE808   49                     dec     ecx
007CE809   75F9                   jnz     007CE804
007CE80B   53                     push    ebx
007CE80C   8BD8                   mov     ebx, eax
007CE80E   33C0                   xor     eax, eax
007CE810   55                     push    ebp
007CE811   68D8E87C00             push    $007CE8D8

***** TRY
|
007CE816   64FF30                 push    dword ptr fs:[eax]
007CE819   648920                 mov     fs:[eax], esp
007CE81C   A130AE7D00             mov     eax, dword ptr [$007DAE30]
007CE821   8B00                   mov     eax, [eax]
007CE823   8B1554AE7D00           mov     edx, [$007DAE54]
007CE829   8B12                   mov     edx, [edx]
007CE82B   8982DC000000           mov     [edx+$00DC], eax
007CE831   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
007CE83B   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TFrmGereComanda.edQtdeLcto : TJvValidateEdit
|
007CE83E   8B837C030000           mov     eax, [ebx+$037C]

|
007CE844   E86F49E8FF             call    006531B8
007CE849   8D45F0                 lea     eax, [ebp-$10]
007CE84C   50                     push    eax
007CE84D   8D45E0                 lea     eax, [ebp-$20]
007CE850   33D2                   xor     edx, edx
007CE852   B101                   mov     cl, $01

|
007CE854   E817A2C4FF             call    00418A70
007CE859   8D55E0                 lea     edx, [ebp-$20]
007CE85C   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
007CE85D   E8E2E8C4FF             call    0041D144
007CE862   7E39                   jle     007CE89D
007CE864   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TFrmGereComanda.edQtdeLcto : TJvValidateEdit
|
007CE867   8B837C030000           mov     eax, [ebx+$037C]

|
007CE86D   E84649E8FF             call    006531B8
007CE872   8D45D0                 lea     eax, [ebp-$30]
007CE875   50                     push    eax
007CE876   8D55C0                 lea     edx, [ebp-$40]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007CE879   8B836C030000           mov     eax, [ebx+$036C]

|
007CE87F   E83449E8FF             call    006531B8
007CE884   8D55C0                 lea     edx, [ebp-$40]
007CE887   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007CE888   E82FE8C4FF             call    0041D0BC
007CE88D   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TFrmGereComanda.edVlrTotal : TJvValidateEdit
|
007CE890   8B8364030000           mov     eax, [ebx+$0364]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CE896   E8F549E8FF             call    00653290
007CE89B   EB1A                   jmp     007CE8B7
007CE89D   8D45B0                 lea     eax, [ebp-$50]
007CE8A0   33D2                   xor     edx, edx
007CE8A2   B101                   mov     cl, $01

|
007CE8A4   E8C7A1C4FF             call    00418A70
007CE8A9   8D55B0                 lea     edx, [ebp-$50]

* Reference to control TFrmGereComanda.edVlrTotal : TJvValidateEdit
|
007CE8AC   8B8364030000           mov     eax, [ebx+$0364]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CE8B2   E8D949E8FF             call    00653290
007CE8B7   33C0                   xor     eax, eax
007CE8B9   5A                     pop     edx
007CE8BA   59                     pop     ecx
007CE8BB   59                     pop     ecx
007CE8BC   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CE8BF   68DFE87C00             push    $007CE8DF
007CE8C4   8D45B0                 lea     eax, [ebp-$50]

* Reference to object Variant
|
007CE8C7   8B1524114000           mov     edx, [$00401124]
007CE8CD   B905000000             mov     ecx, $00000005

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007CE8D2   E8C577C3FF             call    0040609C
007CE8D7   C3                     ret


* Reference to: System.@HandleFinally;
|
007CE8D8   E95B64C3FF             jmp     00404D38
007CE8DD   EBE5                   jmp     007CE8C4

****** END
|
007CE8DF   5B                     pop     ebx
007CE8E0   8BE5                   mov     esp, ebp
007CE8E2   5D                     pop     ebp
007CE8E3   C3                     ret

*)
end;

procedure TFrmGereComanda.edQtdeLctoKeyDown(Sender : TObject);
begin
(*
007CE8E4   55                     push    ebp
007CE8E5   8BEC                   mov     ebp, esp
007CE8E7   56                     push    esi
007CE8E8   6683390D               cmp     word ptr [ecx], +$0D
007CE8EC   750F                   jnz     007CE8FD

* Reference to control TFrmGereComanda.btAdicionar : TBitBtn
|
007CE8EE   8B8060030000           mov     eax, [eax+$0360]
007CE8F4   66BEEBFF               mov     si, $FFEB

* Reference to: System.@CallDynaInst;
|
007CE8F8   E8A35EC3FF             call    004047A0
007CE8FD   5E                     pop     esi
007CE8FE   5D                     pop     ebp
007CE8FF   C20400                 ret     $0004

*)
end;

procedure TFrmGereComanda.EdHistoricoChange(Sender : TObject);
begin
(*
007CE904   A130AE7D00             mov     eax, dword ptr [$007DAE30]
007CE909   8B00                   mov     eax, [eax]
007CE90B   8B1554AE7D00           mov     edx, [$007DAE54]
007CE911   8B12                   mov     edx, [edx]
007CE913   8982DC000000           mov     [edx+$00DC], eax
007CE919   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
007CE923   C3                     ret

*)
end;

procedure TFrmGereComanda.BitBtn2Click(Sender : TObject);
begin
(*
007CE924   55                     push    ebp
007CE925   8BEC                   mov     ebp, esp
007CE927   B906000000             mov     ecx, $00000006
007CE92C   6A00                   push    $00
007CE92E   6A00                   push    $00
007CE930   49                     dec     ecx
007CE931   75F9                   jnz     007CE92C
007CE933   53                     push    ebx
007CE934   56                     push    esi
007CE935   57                     push    edi
007CE936   8BD8                   mov     ebx, eax
007CE938   33C0                   xor     eax, eax
007CE93A   55                     push    ebp

* Possible String Reference to: 'Èra√ˇÎ÷_^[ãÂ]√'
|
007CE93B   68C1EB7C00             push    $007CEBC1

***** TRY
|
007CE940   64FF30                 push    dword ptr fs:[eax]
007CE943   648920                 mov     fs:[eax], esp
007CE946   33D2                   xor     edx, edx
007CE948   55                     push    ebp
007CE949   688AEB7C00             push    $007CEB8A

***** TRY
|
007CE94E   64FF32                 push    dword ptr fs:[edx]
007CE951   648922                 mov     fs:[edx], esp
007CE954   33D2                   xor     edx, edx
007CE956   55                     push    ebp
007CE957   6841EB7C00             push    $007CEB41

***** TRY
|
007CE95C   64FF32                 push    dword ptr fs:[edx]
007CE95F   648922                 mov     fs:[edx], esp
007CE962   6A00                   push    $00
007CE964   668B0DD0EB7C00         mov     cx, word ptr [$007CEBD0]
007CE96B   B203                   mov     dl, $03

* Possible String Reference to: 'Tem certeza que deseja cancelar a c
|                                omanda?'
|
007CE96D   B8DCEB7C00             mov     eax, $007CEBDC

|
007CE972   E8B551C7FF             call    00443B2C
007CE977   83F806                 cmp     eax, +$06
007CE97A   0F85B7010000           jnz     007CEB37
007CE980   8D55F8                 lea     edx, [ebp-$08]
007CE983   A17CB37D00             mov     eax, dword ptr [$007DB37C]
007CE988   8B00                   mov     eax, [eax]
007CE98A   8B80D8010000           mov     eax, [eax+$01D8]
007CE990   8B08                   mov     ecx, [eax]
007CE992   FF5160                 call    dword ptr [ecx+$60]
007CE995   8B45F8                 mov     eax, [ebp-$08]
007CE998   8D55FC                 lea     edx, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3638()
|
007CE99B   E8984CFDFF             call    007A3638

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CE9A0   8B83BC030000           mov     eax, [ebx+$03BC]

|
007CE9A6   E8757DFEFF             call    007B6720
007CE9AB   83F804                 cmp     eax, +$04
007CE9AE   0F8783010000           jnbe    007CEB37
007CE9B4   FF2485BBE97C00         jmp     dword ptr [$7CE9BB+eax*4]
007CE9BB   CF                     iret
007CE9BC   E97C00DDEA             jmp     EB59EA3D
007CE9C1   7C00                   jl      007CE9C3
007CE9C3   F4                     hlt
007CE9C4   EA7C000BEB             jmp     $EB0B007C
007CE9C9   7C00                   jl      007CE9CB
007CE9CB   22EB                   and     ch, bl
007CE9CD   7C00                   jl      007CE9CF
007CE9CF   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007AFBA0()
|
007CE9D2   E8C911FEFF             call    007AFBA0
007CE9D7   84C0                   test    al, al
007CE9D9   0F8458010000           jz      007CEB37
007CE9DF   6A00                   push    $00

* Possible String Reference to: 'Tem certeza que deseja limpar o mov
|                                imento da mesa '
|
007CE9E1   6810EC7C00             push    $007CEC10
007CE9E6   FFB3BC030000           push    dword ptr [ebx+$03BC]
007CE9EC   684CEC7C00             push    $007CEC4C
007CE9F1   8D45F4                 lea     eax, [ebp-$0C]
007CE9F4   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007CE9F9   E81E6EC3FF             call    0040581C
007CE9FE   8B45F4                 mov     eax, [ebp-$0C]
007CEA01   668B0DD0EB7C00         mov     cx, word ptr [$007CEBD0]
007CEA08   B203                   mov     dl, $03

|
007CEA0A   E81D51C7FF             call    00443B2C
007CEA0F   83F806                 cmp     eax, +$06
007CEA12   0F851F010000           jnz     007CEB37
007CEA18   8D55EC                 lea     edx, [ebp-$14]

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CEA1B   8B83BC030000           mov     eax, [ebx+$03BC]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CEA21   E8FA50FDFF             call    007A3B20
007CEA26   8B4DEC                 mov     ecx, [ebp-$14]
007CEA29   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'CODMESA = '
|
007CEA2C   BA58EC7C00             mov     edx, $007CEC58

* Reference to: System.@LStrCat3;
|
007CEA31   E8726DC3FF             call    004057A8
007CEA36   8B45F0                 mov     eax, [ebp-$10]
007CEA39   50                     push    eax

* Possible String Reference to: 'MESAITEM'
|
007CEA3A   B86CEC7C00             mov     eax, $007CEC6C
007CEA3F   8945E8                 mov     [ebp-$18], eax
007CEA42   8D55E8                 lea     edx, [ebp-$18]
007CEA45   33C9                   xor     ecx, ecx
007CEA47   33C0                   xor     eax, eax

|
007CEA49   E8DEBDFDFF             call    007AA82C
007CEA4E   8D55E0                 lea     edx, [ebp-$20]

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CEA51   8B83BC030000           mov     eax, [ebx+$03BC]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CEA57   E8C450FDFF             call    007A3B20
007CEA5C   8B4DE0                 mov     ecx, [ebp-$20]
007CEA5F   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'CODMESA = '
|
007CEA62   BA58EC7C00             mov     edx, $007CEC58

* Reference to: System.@LStrCat3;
|
007CEA67   E83C6DC3FF             call    004057A8
007CEA6C   8B45E4                 mov     eax, [ebp-$1C]
007CEA6F   50                     push    eax

* Possible String Reference to: 'MESALCTO'
|
007CEA70   B880EC7C00             mov     eax, $007CEC80
007CEA75   8945E8                 mov     [ebp-$18], eax
007CEA78   8D55E8                 lea     edx, [ebp-$18]
007CEA7B   33C9                   xor     ecx, ecx
007CEA7D   33C0                   xor     eax, eax

|
007CEA7F   E8A8BDFDFF             call    007AA82C
007CEA84   6A00                   push    $00
007CEA86   B894EC7C00             mov     eax, $007CEC94
007CEA8B   8945E8                 mov     [ebp-$18], eax
007CEA8E   8D45E8                 lea     eax, [ebp-$18]
007CEA91   50                     push    eax
007CEA92   6A00                   push    $00
007CEA94   8D55D8                 lea     edx, [ebp-$28]

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CEA97   8B83BC030000           mov     eax, [ebx+$03BC]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CEA9D   E87E50FDFF             call    007A3B20
007CEAA2   8B4DD8                 mov     ecx, [ebp-$28]
007CEAA5   8D45DC                 lea     eax, [ebp-$24]

* Possible String Reference to: 'CODMESA = '
|
007CEAA8   BA58EC7C00             mov     edx, $007CEC58

* Reference to: System.@LStrCat3;
|
007CEAAD   E8F66CC3FF             call    004057A8
007CEAB2   8B45DC                 mov     eax, [ebp-$24]
007CEAB5   50                     push    eax

* Possible String Reference to: 'STATUS'
|
007CEAB6   B8A0EC7C00             mov     eax, $007CECA0
007CEABB   8945D4                 mov     [ebp-$2C], eax
007CEABE   8D4DD4                 lea     ecx, [ebp-$2C]

* Possible String Reference to: 'MESAS'
|
007CEAC1   BAB0EC7C00             mov     edx, $007CECB0
007CEAC6   33C0                   xor     eax, eax

|
007CEAC8   E887B8FDFF             call    007AA354
007CEACD   33C0                   xor     eax, eax

|
007CEACF   E828BFFDFF             call    007AA9FC
007CEAD4   8BC3                   mov     eax, ebx

|
007CEAD6   E8C5020000             call    007CEDA0
007CEADB   EB5A                   jmp     007CEB37
007CEADD   6A00                   push    $00
007CEADF   668B0DB8EC7C00         mov     cx, word ptr [$007CECB8]
007CEAE6   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel cancelar a mesa porq
|                                ue outro terminal ja est· adicionan
|                                do itens!'
|
007CEAE8   B8C4EC7C00             mov     eax, $007CECC4

|
007CEAED   E83A50C7FF             call    00443B2C
007CEAF2   EB43                   jmp     007CEB37
007CEAF4   6A00                   push    $00
007CEAF6   668B0DB8EC7C00         mov     cx, word ptr [$007CECB8]
007CEAFD   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel cancelar a mesa porq
|                                ue outro terminal est· digitando in
|                                formaÁıes nessa mesa!'
|
007CEAFF   B81CED7C00             mov     eax, $007CED1C

|
007CEB04   E82350C7FF             call    00443B2C
007CEB09   EB2C                   jmp     007CEB37
007CEB0B   6A00                   push    $00
007CEB0D   668B0DB8EC7C00         mov     cx, word ptr [$007CECB8]
007CEB14   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel cancelar a mesa porq
|                                ue outro terminal est· digitando in
|                                formaÁıes nessa mesa!'
|
007CEB16   B81CED7C00             mov     eax, $007CED1C

|
007CEB1B   E80C50C7FF             call    00443B2C
007CEB20   EB15                   jmp     007CEB37
007CEB22   6A00                   push    $00
007CEB24   668B0DB8EC7C00         mov     cx, word ptr [$007CECB8]
007CEB2B   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel cancelar a mesa porq
|                                ue outro terminal est· digitando in
|                                formaÁıes nessa mesa!'
|
007CEB2D   B81CED7C00             mov     eax, $007CED1C

|
007CEB32   E8F54FC7FF             call    00443B2C
007CEB37   33C0                   xor     eax, eax
007CEB39   5A                     pop     edx
007CEB3A   59                     pop     ecx
007CEB3B   59                     pop     ecx
007CEB3C   648910                 mov     fs:[eax], edx
007CEB3F   EB3B                   jmp     007CEB7C

* Reference to: System.@HandleOnException;
|
007CEB41   E96A60C3FF             jmp     00404BB0
007CEB46   0100                   add     [eax], eax
007CEB48   0000                   add     [eax], al
007CEB4A   40                     inc     eax
007CEB4B   95                     xchg    eax, ebp
007CEB4C   40                     inc     eax
007CEB4D   0052EB                 add     [edx-$15], dl
007CEB50   7C00                   jl      007CEB52
007CEB52   89C3                   mov     ebx, eax
007CEB54   6A00                   push    $00
007CEB56   8B4B04                 mov     ecx, [ebx+$04]
007CEB59   8D45D0                 lea     eax, [ebp-$30]

* Possible String Reference to: 'Erro ao limpar o movimento!'
|
007CEB5C   BA80ED7C00             mov     edx, $007CED80

* Reference to: System.@LStrCat3;
|
007CEB61   E8426CC3FF             call    004057A8
007CEB66   8B45D0                 mov     eax, [ebp-$30]
007CEB69   668B0DB8EC7C00         mov     cx, word ptr [$007CECB8]
007CEB70   B201                   mov     dl, $01

|
007CEB72   E8B54FC7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CEB77   E83463C3FF             call    00404EB0

****** END
|
007CEB7C   33C0                   xor     eax, eax
007CEB7E   5A                     pop     edx
007CEB7F   59                     pop     ecx
007CEB80   59                     pop     ecx
007CEB81   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CEB84   6891EB7C00             push    $007CEB91
007CEB89   C3                     ret


* Reference to: System.@HandleFinally;
|
007CEB8A   E9A961C3FF             jmp     00404D38
007CEB8F   EBF8                   jmp     007CEB89

****** END
|
007CEB91   33C0                   xor     eax, eax
007CEB93   5A                     pop     edx
007CEB94   59                     pop     ecx
007CEB95   59                     pop     ecx
007CEB96   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
007CEB99   68C8EB7C00             push    $007CEBC8
007CEB9E   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
007CEBA1   E8F668C3FF             call    0040549C
007CEBA6   8D45D8                 lea     eax, [ebp-$28]
007CEBA9   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CEBAE   E80D69C3FF             call    004054C0
007CEBB3   8D45EC                 lea     eax, [ebp-$14]
007CEBB6   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CEBBB   E80069C3FF             call    004054C0
007CEBC0   C3                     ret


* Reference to: System.@HandleFinally;
|
007CEBC1   E97261C3FF             jmp     00404D38
007CEBC6   EBD6                   jmp     007CEB9E

****** END
|
007CEBC8   5F                     pop     edi
007CEBC9   5E                     pop     esi
007CEBCA   5B                     pop     ebx
007CEBCB   8BE5                   mov     esp, ebp
007CEBCD   5D                     pop     ebp
007CEBCE   C3                     ret

*)
end;

procedure TFrmGereComanda.sbCadClieClick(Sender : TObject);
begin
(*
007CEE00   55                     push    ebp
007CEE01   8BEC                   mov     ebp, esp
007CEE03   A160AC7D00             mov     eax, dword ptr [$007DAC60]

* Possible String Reference to: 'cliente'
|
007CEE08   BA50EE7C00             mov     edx, $007CEE50

* Reference to: System.@LStrAsg(void;void;void;void);
|
007CEE0D   E8DE66C3FF             call    004054F0
007CEE12   33C9                   xor     ecx, ecx
007CEE14   B201                   mov     dl, $01

* Reference to class TFrmCadRapido
|
007CEE16   A174556300             mov     eax, dword ptr [$00635574]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
007CEE1B   E8F0F0CDFF             call    004ADF10
007CEE20   8B1528A77D00           mov     edx, [$007DA728]
007CEE26   8902                   mov     [edx], eax
007CEE28   A128A77D00             mov     eax, dword ptr [$007DA728]
007CEE2D   8B00                   mov     eax, [eax]
007CEE2F   8B10                   mov     edx, [eax]
007CEE31   FF92EC000000           call    dword ptr [edx+$00EC]
007CEE37   A128A77D00             mov     eax, dword ptr [$007DA728]
007CEE3C   8B00                   mov     eax, [eax]

* Reference to: System.TObject.Free(TObject);
|
007CEE3E   E85957C3FF             call    0040459C
007CEE43   5D                     pop     ebp
007CEE44   C3                     ret

*)
end;

procedure TFrmGereComanda.edCgcClieButtonClick(Sender : TObject);
begin
(*
007CEE58   55                     push    ebp
007CEE59   8BEC                   mov     ebp, esp
007CEE5B   83C4E0                 add     esp, -$20
007CEE5E   53                     push    ebx
007CEE5F   33C9                   xor     ecx, ecx
007CEE61   894DE0                 mov     [ebp-$20], ecx
007CEE64   894DE4                 mov     [ebp-$1C], ecx
007CEE67   8BD8                   mov     ebx, eax
007CEE69   33C0                   xor     eax, eax
007CEE6B   55                     push    ebp

* Possible String Reference to: 'È˙]√ˇÎÎ[ãÂ]√'
|
007CEE6C   6839EF7C00             push    $007CEF39

***** TRY
|
007CEE71   64FF30                 push    dword ptr fs:[eax]
007CEE74   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'CNPJ'
|
007CEE77   B850EF7C00             mov     eax, $007CEF50
007CEE7C   8945F4                 mov     [ebp-$0C], eax

* Possible String Reference to: 'Raz„o'
|
007CEE7F   B860EF7C00             mov     eax, $007CEF60
007CEE84   8945F8                 mov     [ebp-$08], eax

* Possible String Reference to: 'Fantasia'
|
007CEE87   B870EF7C00             mov     eax, $007CEF70
007CEE8C   8945FC                 mov     [ebp-$04], eax
007CEE8F   8D45F4                 lea     eax, [ebp-$0C]
007CEE92   50                     push    eax
007CEE93   6A02                   push    $02
007CEE95   6A00                   push    $00

* Possible String Reference to: 'CGCCLIE'
|
007CEE97   B884EF7C00             mov     eax, $007CEF84
007CEE9C   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'RAZAO'
|
007CEE9F   B894EF7C00             mov     eax, $007CEF94
007CEEA4   8945EC                 mov     [ebp-$14], eax

* Possible String Reference to: 'FANTASIA'
|
007CEEA7   B8A4EF7C00             mov     eax, $007CEFA4
007CEEAC   8945F0                 mov     [ebp-$10], eax
007CEEAF   8D55E8                 lea     edx, [ebp-$18]
007CEEB2   B902000000             mov     ecx, $00000002

* Possible String Reference to: 'CLIENTES'
|
007CEEB7   B8B8EF7C00             mov     eax, $007CEFB8

|
007CEEBC   E893A3E6FF             call    00639254
007CEEC1   84C0                   test    al, al
007CEEC3   7459                   jz      007CEF1E
007CEEC5   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007CEECA   8B00                   mov     eax, [eax]
007CEECC   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CGCCLIE'
|
007CEECF   BA84EF7C00             mov     edx, $007CEF84

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CEED4   E82BADD1FF             call    004E9C04
007CEED9   8D55E4                 lea     edx, [ebp-$1C]
007CEEDC   8B08                   mov     ecx, [eax]
007CEEDE   FF5160                 call    dword ptr [ecx+$60]
007CEEE1   8B55E4                 mov     edx, [ebp-$1C]

* Reference to control TFrmGereComanda.edCgcClie : TJvComboEdit
|
007CEEE4   8B83A0030000           mov     eax, [ebx+$03A0]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
007CEEEA   E881EFD2FF             call    004FDE70
007CEEEF   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007CEEF4   8B00                   mov     eax, [eax]
007CEEF6   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'RAZAO'
|
007CEEF9   BA94EF7C00             mov     edx, $007CEF94

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CEEFE   E801ADD1FF             call    004E9C04
007CEF03   8D55E0                 lea     edx, [ebp-$20]
007CEF06   8B08                   mov     ecx, [eax]
007CEF08   FF5160                 call    dword ptr [ecx+$60]
007CEF0B   8B55E0                 mov     edx, [ebp-$20]

* Reference to control TFrmGereComanda.edCliente : TEdit
|
007CEF0E   8B83A8030000           mov     eax, [ebx+$03A8]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CEF14   E8E347CCFF             call    004936FC

* Reference to : TFrmInfoAtu._PROC_007A600C()
|
007CEF19   E8EE70FDFF             call    007A600C
007CEF1E   33C0                   xor     eax, eax
007CEF20   5A                     pop     edx
007CEF21   59                     pop     ecx
007CEF22   59                     pop     ecx
007CEF23   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
007CEF26   6840EF7C00             push    $007CEF40
007CEF2B   8D45E0                 lea     eax, [ebp-$20]
007CEF2E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CEF33   E88865C3FF             call    004054C0
007CEF38   C3                     ret


* Reference to: System.@HandleFinally;
|
007CEF39   E9FA5DC3FF             jmp     00404D38
007CEF3E   EBEB                   jmp     007CEF2B

****** END
|
007CEF40   5B                     pop     ebx
007CEF41   8BE5                   mov     esp, ebp
007CEF43   5D                     pop     ebp
007CEF44   C3                     ret

*)
end;

procedure TFrmGereComanda.edCgcClieChange(Sender : TObject);
begin
(*
007CEFC4   55                     push    ebp
007CEFC5   8BEC                   mov     ebp, esp
007CEFC7   33C9                   xor     ecx, ecx
007CEFC9   51                     push    ecx
007CEFCA   51                     push    ecx
007CEFCB   51                     push    ecx
007CEFCC   51                     push    ecx
007CEFCD   51                     push    ecx
007CEFCE   53                     push    ebx
007CEFCF   8BD8                   mov     ebx, eax
007CEFD1   33C0                   xor     eax, eax
007CEFD3   55                     push    ebp
007CEFD4   687CF07C00             push    $007CF07C

***** TRY
|
007CEFD9   64FF30                 push    dword ptr fs:[eax]
007CEFDC   648920                 mov     fs:[eax], esp
007CEFDF   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmGereComanda.edCgcClie : TJvComboEdit
|
007CEFE2   8B83A0030000           mov     eax, [ebx+$03A0]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CEFE8   E84FEFD2FF             call    004FDF3C
007CEFED   837DFC00               cmp     dword ptr [ebp-$04], +$00
007CEFF1   7451                   jz      007CF044

* Possible String Reference to: 'FANTASIA'
|
007CEFF3   6890F07C00             push    $007CF090
007CEFF8   8D45F8                 lea     eax, [ebp-$08]
007CEFFB   50                     push    eax
007CEFFC   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TFrmGereComanda.edCgcClie : TJvComboEdit
|
007CEFFF   8B83A0030000           mov     eax, [ebx+$03A0]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CF005   E832EFD2FF             call    004FDF3C
007CF00A   8B45EC                 mov     eax, [ebp-$14]
007CF00D   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CF010   E80B4BFDFF             call    007A3B20
007CF015   8B4DF0                 mov     ecx, [ebp-$10]
007CF018   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CGCCLIE = '
|
007CF01B   BAA4F07C00             mov     edx, $007CF0A4

* Reference to: System.@LStrCat3;
|
007CF020   E88367C3FF             call    004057A8
007CF025   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'CLIENTES'
|
007CF028   BAB8F07C00             mov     edx, $007CF0B8
007CF02D   33C0                   xor     eax, eax

|
007CF02F   E8DCA2FDFF             call    007A9310
007CF034   8B55F8                 mov     edx, [ebp-$08]

* Reference to control TFrmGereComanda.edCliente : TEdit
|
007CF037   8B83A8030000           mov     eax, [ebx+$03A8]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CF03D   E8BA46CCFF             call    004936FC
007CF042   EB0D                   jmp     007CF051
007CF044   33D2                   xor     edx, edx

* Reference to control TFrmGereComanda.edCliente : TEdit
|
007CF046   8B83A8030000           mov     eax, [ebx+$03A8]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CF04C   E8AB46CCFF             call    004936FC
007CF051   33C0                   xor     eax, eax
007CF053   5A                     pop     edx
007CF054   59                     pop     ecx
007CF055   59                     pop     ecx
007CF056   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CF059   6883F07C00             push    $007CF083
007CF05E   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
007CF061   E83664C3FF             call    0040549C
007CF066   8D45F0                 lea     eax, [ebp-$10]
007CF069   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CF06E   E84D64C3FF             call    004054C0
007CF073   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CF076   E82164C3FF             call    0040549C
007CF07B   C3                     ret


* Reference to: System.@HandleFinally;
|
007CF07C   E9B75CC3FF             jmp     00404D38
007CF081   EBDB                   jmp     007CF05E

****** END
|
007CF083   5B                     pop     ebx
007CF084   8BE5                   mov     esp, ebp
007CF086   5D                     pop     ebp
007CF087   C3                     ret

*)
end;

procedure TFrmGereComanda.edCodFuncButtonClick(Sender : TObject);
begin
(*
007CF0C4   55                     push    ebp
007CF0C5   8BEC                   mov     ebp, esp
007CF0C7   83C4E0                 add     esp, -$20
007CF0CA   53                     push    ebx
007CF0CB   33C9                   xor     ecx, ecx
007CF0CD   894DE0                 mov     [ebp-$20], ecx
007CF0D0   894DE4                 mov     [ebp-$1C], ecx
007CF0D3   8BD8                   mov     ebx, eax
007CF0D5   33C0                   xor     eax, eax
007CF0D7   55                     push    ebp

* Possible String Reference to: 'Èé[√ˇÎÎ[ãÂ]√'
|
007CF0D8   68A5F17C00             push    $007CF1A5

***** TRY
|
007CF0DD   64FF30                 push    dword ptr fs:[eax]
007CF0E0   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'CÛdigo'
|
007CF0E3   B8BCF17C00             mov     eax, $007CF1BC
007CF0E8   8945F4                 mov     [ebp-$0C], eax

* Possible String Reference to: 'Nome'
|
007CF0EB   B8CCF17C00             mov     eax, $007CF1CC
007CF0F0   8945F8                 mov     [ebp-$08], eax

* Possible String Reference to: 'Fantasia'
|
007CF0F3   B8DCF17C00             mov     eax, $007CF1DC
007CF0F8   8945FC                 mov     [ebp-$04], eax
007CF0FB   8D45F4                 lea     eax, [ebp-$0C]
007CF0FE   50                     push    eax
007CF0FF   6A02                   push    $02
007CF101   6A00                   push    $00

* Possible String Reference to: 'CODFUNC'
|
007CF103   B8F0F17C00             mov     eax, $007CF1F0
007CF108   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NOME'
|
007CF10B   B800F27C00             mov     eax, $007CF200
007CF110   8945EC                 mov     [ebp-$14], eax

* Possible String Reference to: 'FANTASIA'
|
007CF113   B810F27C00             mov     eax, $007CF210
007CF118   8945F0                 mov     [ebp-$10], eax
007CF11B   8D55E8                 lea     edx, [ebp-$18]
007CF11E   B902000000             mov     ecx, $00000002

* Possible String Reference to: 'FUNCREPR'
|
007CF123   B824F27C00             mov     eax, $007CF224

|
007CF128   E827A1E6FF             call    00639254
007CF12D   84C0                   test    al, al
007CF12F   7459                   jz      007CF18A
007CF131   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007CF136   8B00                   mov     eax, [eax]
007CF138   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CODFUNC'
|
007CF13B   BAF0F17C00             mov     edx, $007CF1F0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CF140   E8BFAAD1FF             call    004E9C04
007CF145   8D55E4                 lea     edx, [ebp-$1C]
007CF148   8B08                   mov     ecx, [eax]
007CF14A   FF5160                 call    dword ptr [ecx+$60]
007CF14D   8B55E4                 mov     edx, [ebp-$1C]

* Reference to control TFrmGereComanda.edCodFunc : TJvComboEdit
|
007CF150   8B83B0030000           mov     eax, [ebx+$03B0]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
007CF156   E815EDD2FF             call    004FDE70
007CF15B   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007CF160   8B00                   mov     eax, [eax]
007CF162   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'NOME'
|
007CF165   BA00F27C00             mov     edx, $007CF200

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CF16A   E895AAD1FF             call    004E9C04
007CF16F   8D55E0                 lea     edx, [ebp-$20]
007CF172   8B08                   mov     ecx, [eax]
007CF174   FF5160                 call    dword ptr [ecx+$60]
007CF177   8B55E0                 mov     edx, [ebp-$20]

* Reference to control TFrmGereComanda.edFuncionario : TEdit
|
007CF17A   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CF180   E87745CCFF             call    004936FC

* Reference to : TFrmInfoAtu._PROC_007A600C()
|
007CF185   E8826EFDFF             call    007A600C
007CF18A   33C0                   xor     eax, eax
007CF18C   5A                     pop     edx
007CF18D   59                     pop     ecx
007CF18E   59                     pop     ecx
007CF18F   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
007CF192   68ACF17C00             push    $007CF1AC
007CF197   8D45E0                 lea     eax, [ebp-$20]
007CF19A   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CF19F   E81C63C3FF             call    004054C0
007CF1A4   C3                     ret


* Reference to: System.@HandleFinally;
|
007CF1A5   E98E5BC3FF             jmp     00404D38
007CF1AA   EBEB                   jmp     007CF197

****** END
|
007CF1AC   5B                     pop     ebx
007CF1AD   8BE5                   mov     esp, ebp
007CF1AF   5D                     pop     ebp
007CF1B0   C3                     ret

*)
end;

procedure TFrmGereComanda.edCodFuncChange(Sender : TObject);
begin
(*
007CF230   55                     push    ebp
007CF231   8BEC                   mov     ebp, esp
007CF233   33C9                   xor     ecx, ecx
007CF235   51                     push    ecx
007CF236   51                     push    ecx
007CF237   51                     push    ecx
007CF238   51                     push    ecx
007CF239   51                     push    ecx
007CF23A   53                     push    ebx
007CF23B   8BD8                   mov     ebx, eax
007CF23D   33C0                   xor     eax, eax
007CF23F   55                     push    ebp
007CF240   68E8F27C00             push    $007CF2E8

***** TRY
|
007CF245   64FF30                 push    dword ptr fs:[eax]
007CF248   648920                 mov     fs:[eax], esp
007CF24B   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TFrmGereComanda.edCodFunc : TJvComboEdit
|
007CF24E   8B83B0030000           mov     eax, [ebx+$03B0]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CF254   E8E3ECD2FF             call    004FDF3C
007CF259   837DFC00               cmp     dword ptr [ebp-$04], +$00
007CF25D   7451                   jz      007CF2B0

* Possible String Reference to: 'NOME'
|
007CF25F   68FCF27C00             push    $007CF2FC
007CF264   8D45F8                 lea     eax, [ebp-$08]
007CF267   50                     push    eax
007CF268   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TFrmGereComanda.edCodFunc : TJvComboEdit
|
007CF26B   8B83B0030000           mov     eax, [ebx+$03B0]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CF271   E8C6ECD2FF             call    004FDF3C
007CF276   8B45EC                 mov     eax, [ebp-$14]
007CF279   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CF27C   E89F48FDFF             call    007A3B20
007CF281   8B4DF0                 mov     ecx, [ebp-$10]
007CF284   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODFUNC = '
|
007CF287   BA0CF37C00             mov     edx, $007CF30C

* Reference to: System.@LStrCat3;
|
007CF28C   E81765C3FF             call    004057A8
007CF291   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'FUNCREPR'
|
007CF294   BA20F37C00             mov     edx, $007CF320
007CF299   33C0                   xor     eax, eax

|
007CF29B   E870A0FDFF             call    007A9310
007CF2A0   8B55F8                 mov     edx, [ebp-$08]

* Reference to control TFrmGereComanda.edFuncionario : TEdit
|
007CF2A3   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CF2A9   E84E44CCFF             call    004936FC
007CF2AE   EB0D                   jmp     007CF2BD
007CF2B0   33D2                   xor     edx, edx

* Reference to control TFrmGereComanda.edFuncionario : TEdit
|
007CF2B2   8B83B4030000           mov     eax, [ebx+$03B4]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CF2B8   E83F44CCFF             call    004936FC
007CF2BD   33C0                   xor     eax, eax
007CF2BF   5A                     pop     edx
007CF2C0   59                     pop     ecx
007CF2C1   59                     pop     ecx
007CF2C2   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CF2C5   68EFF27C00             push    $007CF2EF
007CF2CA   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
007CF2CD   E8CA61C3FF             call    0040549C
007CF2D2   8D45F0                 lea     eax, [ebp-$10]
007CF2D5   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CF2DA   E8E161C3FF             call    004054C0
007CF2DF   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CF2E2   E8B561C3FF             call    0040549C
007CF2E7   C3                     ret


* Reference to: System.@HandleFinally;
|
007CF2E8   E94B5AC3FF             jmp     00404D38
007CF2ED   EBDB                   jmp     007CF2CA

****** END
|
007CF2EF   5B                     pop     ebx
007CF2F0   8BE5                   mov     esp, ebp
007CF2F2   5D                     pop     ebp
007CF2F3   C3                     ret

*)
end;

procedure TFrmGereComanda.edCgcClieExit(Sender : TObject);
begin
(*
007CF32C   55                     push    ebp
007CF32D   8BEC                   mov     ebp, esp
007CF32F   6A00                   push    $00
007CF331   6A00                   push    $00
007CF333   6A00                   push    $00
007CF335   53                     push    ebx
007CF336   8BD8                   mov     ebx, eax
007CF338   33C0                   xor     eax, eax
007CF33A   55                     push    ebp

* Possible String Reference to: 'ÈQY√ˇÎ‡[ãÂ]√ã¿UãÏj'
|
007CF33B   68E2F37C00             push    $007CF3E2

***** TRY
|
007CF340   64FF30                 push    dword ptr fs:[eax]
007CF343   648920                 mov     fs:[eax], esp
007CF346   8D55FC                 lea     edx, [ebp-$04]
007CF349   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CF34E   8B00                   mov     eax, [eax]
007CF350   8B8034090000           mov     eax, [eax+$0934]
007CF356   8B08                   mov     ecx, [eax]
007CF358   FF5160                 call    dword ptr [ecx+$60]
007CF35B   8B45FC                 mov     eax, [ebp-$04]
007CF35E   50                     push    eax
007CF35F   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmGereComanda.edCgcClie : TJvComboEdit
|
007CF362   8B83A0030000           mov     eax, [ebx+$03A0]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007CF368   E8CFEBD2FF             call    004FDF3C
007CF36D   8B55F8                 mov     edx, [ebp-$08]
007CF370   58                     pop     eax

* Reference to: System.@LStrCmp;
|
007CF371   E83265C3FF             call    004058A8
007CF376   7444                   jz      007CF3BC
007CF378   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CF37D   8B00                   mov     eax, [eax]
007CF37F   8B4070                 mov     eax, [eax+$70]

|
007CF382   E8997AFDFF             call    007A6E20
007CF387   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TFrmGereComanda.edCgcClie : TJvComboEdit
|
007CF38A   8B83A0030000           mov     eax, [ebx+$03A0]

* Reference to: ActnMan.TActionListCollection.GetListItem(TActionListCollection;Integer):TActionListItem;
|
007CF390   E843EBD2FF             call    004FDED8
007CF395   8B55F4                 mov     edx, [ebp-$0C]
007CF398   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CF39D   8B00                   mov     eax, [eax]
007CF39F   8B8034090000           mov     eax, [eax+$0934]
007CF3A5   8B08                   mov     ecx, [eax]
007CF3A7   FF91B0000000           call    dword ptr [ecx+$00B0]
007CF3AD   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CF3B2   8B00                   mov     eax, [eax]
007CF3B4   8B4070                 mov     eax, [eax+$70]

|
007CF3B7   E8A47BFDFF             call    007A6F60
007CF3BC   33C0                   xor     eax, eax
007CF3BE   5A                     pop     edx
007CF3BF   59                     pop     ecx
007CF3C0   59                     pop     ecx
007CF3C1   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√ã¿UãÏj'
|
007CF3C4   68E9F37C00             push    $007CF3E9
007CF3C9   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
007CF3CC   E8CB60C3FF             call    0040549C
007CF3D1   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007CF3D4   E8C360C3FF             call    0040549C
007CF3D9   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CF3DC   E8BB60C3FF             call    0040549C
007CF3E1   C3                     ret


* Reference to: System.@HandleFinally;
|
007CF3E2   E95159C3FF             jmp     00404D38
007CF3E7   EBE0                   jmp     007CF3C9

****** END
|
007CF3E9   5B                     pop     ebx
007CF3EA   8BE5                   mov     esp, ebp
007CF3EC   5D                     pop     ebp
007CF3ED   C3                     ret

*)
end;

procedure TFrmGereComanda.edCodFuncExit(Sender : TObject);
begin
(*
007CF3F0   55                     push    ebp
007CF3F1   8BEC                   mov     ebp, esp
007CF3F3   6A00                   push    $00
007CF3F5   6A00                   push    $00
007CF3F7   6A00                   push    $00
007CF3F9   53                     push    ebx
007CF3FA   8BD8                   mov     ebx, eax
007CF3FC   33C0                   xor     eax, eax
007CF3FE   55                     push    ebp

* Possible String Reference to: 'ÈòX√ˇÎÎ[ãÂ]√êUãÏÉƒÿS3…âMÿãÿ3¿Uhwı|'
|
007CF3FF   689BF47C00             push    $007CF49B

***** TRY
|
007CF404   64FF30                 push    dword ptr fs:[eax]
007CF407   648920                 mov     fs:[eax], esp
007CF40A   8D55FC                 lea     edx, [ebp-$04]
007CF40D   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CF412   8B00                   mov     eax, [eax]
007CF414   8B8038090000           mov     eax, [eax+$0938]
007CF41A   8B08                   mov     ecx, [eax]
007CF41C   FF5160                 call    dword ptr [ecx+$60]
007CF41F   8B45FC                 mov     eax, [ebp-$04]
007CF422   50                     push    eax
007CF423   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmGereComanda.edCodFunc : TJvComboEdit
|
007CF426   8B83B0030000           mov     eax, [ebx+$03B0]

* Reference to: ActnMan.TActionListCollection.GetListItem(TActionListCollection;Integer):TActionListItem;
|
007CF42C   E8A7EAD2FF             call    004FDED8
007CF431   8B55F8                 mov     edx, [ebp-$08]
007CF434   58                     pop     eax

* Reference to: System.@LStrCmp;
|
007CF435   E86E64C3FF             call    004058A8
007CF43A   7444                   jz      007CF480
007CF43C   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CF441   8B00                   mov     eax, [eax]
007CF443   8B4070                 mov     eax, [eax+$70]

|
007CF446   E8D579FDFF             call    007A6E20
007CF44B   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TFrmGereComanda.edCodFunc : TJvComboEdit
|
007CF44E   8B83B0030000           mov     eax, [ebx+$03B0]

* Reference to: ActnMan.TActionListCollection.GetListItem(TActionListCollection;Integer):TActionListItem;
|
007CF454   E87FEAD2FF             call    004FDED8
007CF459   8B55F4                 mov     edx, [ebp-$0C]
007CF45C   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CF461   8B00                   mov     eax, [eax]
007CF463   8B8038090000           mov     eax, [eax+$0938]
007CF469   8B08                   mov     ecx, [eax]
007CF46B   FF91B0000000           call    dword ptr [ecx+$00B0]
007CF471   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CF476   8B00                   mov     eax, [eax]
007CF478   8B4070                 mov     eax, [eax+$70]

|
007CF47B   E8E07AFDFF             call    007A6F60
007CF480   33C0                   xor     eax, eax
007CF482   5A                     pop     edx
007CF483   59                     pop     ecx
007CF484   59                     pop     ecx
007CF485   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√êUãÏÉƒÿS3…âMÿãÿ3¿Uhwı|'
|
007CF488   68A2F47C00             push    $007CF4A2
007CF48D   8D45F4                 lea     eax, [ebp-$0C]
007CF490   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CF495   E82660C3FF             call    004054C0
007CF49A   C3                     ret


* Reference to: System.@HandleFinally;
|
007CF49B   E99858C3FF             jmp     00404D38
007CF4A0   EBEB                   jmp     007CF48D

****** END
|
007CF4A2   5B                     pop     ebx
007CF4A3   8BE5                   mov     esp, ebp
007CF4A5   5D                     pop     ebp
007CF4A6   C3                     ret

*)
end;

procedure TFrmGereComanda.EdComandaButtonClick(Sender : TObject);
begin
(*
007CF4A8   55                     push    ebp
007CF4A9   8BEC                   mov     ebp, esp
007CF4AB   83C4D8                 add     esp, -$28
007CF4AE   53                     push    ebx
007CF4AF   33C9                   xor     ecx, ecx
007CF4B1   894DD8                 mov     [ebp-$28], ecx
007CF4B4   8BD8                   mov     ebx, eax
007CF4B6   33C0                   xor     eax, eax
007CF4B8   55                     push    ebp

* Possible String Reference to: 'ÈºW√ˇÎ[ãÂ]√'
|
007CF4B9   6877F57C00             push    $007CF577

***** TRY
|
007CF4BE   64FF30                 push    dword ptr fs:[eax]
007CF4C1   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'Comanda'
|
007CF4C4   B88CF57C00             mov     eax, $007CF58C
007CF4C9   8945EC                 mov     [ebp-$14], eax

* Possible String Reference to: 'CÛdigo'
|
007CF4CC   B89CF57C00             mov     eax, $007CF59C
007CF4D1   8945F0                 mov     [ebp-$10], eax

* Possible String Reference to: 'Mesa'
|
007CF4D4   B8ACF57C00             mov     eax, $007CF5AC
007CF4D9   8945F4                 mov     [ebp-$0C], eax
007CF4DC   33C0                   xor     eax, eax
007CF4DE   8945F8                 mov     [ebp-$08], eax
007CF4E1   8D45EC                 lea     eax, [ebp-$14]
007CF4E4   50                     push    eax
007CF4E5   6A03                   push    $03
007CF4E7   6A00                   push    $00

* Possible String Reference to: 'CODCOMANDA'
|
007CF4E9   B8BCF57C00             mov     eax, $007CF5BC
007CF4EE   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'CODMESA'
|
007CF4F1   B8D0F57C00             mov     eax, $007CF5D0
007CF4F6   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'DESCRICAO'
|
007CF4F9   B8E0F57C00             mov     eax, $007CF5E0
007CF4FE   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'STATUS'
|
007CF501   B8F4F57C00             mov     eax, $007CF5F4
007CF506   8945E8                 mov     [ebp-$18], eax
007CF509   8D55DC                 lea     edx, [ebp-$24]
007CF50C   B903000000             mov     ecx, $00000003

* Possible String Reference to: 'MESAS'
|
007CF511   B804F67C00             mov     eax, $007CF604

|
007CF516   E8399DE6FF             call    00639254
007CF51B   84C0                   test    al, al
007CF51D   7442                   jz      007CF561
007CF51F   66C745FE0D00           mov     word ptr [ebp-$02], $000D
007CF525   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007CF52A   8B00                   mov     eax, [eax]
007CF52C   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CODCOMANDA'
|
007CF52F   BABCF57C00             mov     edx, $007CF5BC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CF534   E8CBA6D1FF             call    004E9C04
007CF539   8D55D8                 lea     edx, [ebp-$28]
007CF53C   8B08                   mov     ecx, [eax]
007CF53E   FF5160                 call    dword ptr [ecx+$60]
007CF541   8B55D8                 mov     edx, [ebp-$28]

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CF544   8B8304030000           mov     eax, [ebx+$0304]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CF54A   E881EAD2FF             call    004FDFD0

* Reference to class spPrincipal
|
007CF54F   A00CF67C00             mov     al, byte ptr [$007CF60C]
007CF554   50                     push    eax
007CF555   8D4DFE                 lea     ecx, [ebp-$02]
007CF558   33D2                   xor     edx, edx
007CF55A   8BC3                   mov     eax, ebx

* Reference to : TFrmGereComanda.EdComandaKeyDown()
|
007CF55C   E87BD3FFFF             call    007CC8DC
007CF561   33C0                   xor     eax, eax
007CF563   5A                     pop     edx
007CF564   59                     pop     ecx
007CF565   59                     pop     ecx
007CF566   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
007CF569   687EF57C00             push    $007CF57E
007CF56E   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrClr(void;void);
|
007CF571   E8265FC3FF             call    0040549C
007CF576   C3                     ret


* Reference to: System.@HandleFinally;
|
007CF577   E9BC57C3FF             jmp     00404D38
007CF57C   EBF0                   jmp     007CF56E

****** END
|
007CF57E   5B                     pop     ebx
007CF57F   8BE5                   mov     esp, ebp
007CF581   5D                     pop     ebp
007CF582   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007C93D5(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007C93D5   E95EB9C3FF             jmp     00404D38

|
007C93DA   EBE3                   jmp     007C93BF
007C93DC   5F                     pop     edi
007C93DD   5E                     pop     esi
007C93DE   5B                     pop     ebx
007C93DF   8BE5                   mov     esp, ebp
007C93E1   5D                     pop     ebp
007C93E2   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007C9405(Sender : TObject);
begin
(*
007C9405   8BEC                   mov     ebp, esp
007C9407   B914000000             mov     ecx, $00000014
007C940C   6A00                   push    $00
007C940E   6A00                   push    $00
007C9410   49                     dec     ecx
007C9411   75F9                   jnz     007C940C
007C9413   53                     push    ebx
007C9414   56                     push    esi
007C9415   57                     push    edi
007C9416   8BF0                   mov     esi, eax
007C9418   8B3D8CA97D00           mov     edi, [$007DA98C]
007C941E   33C0                   xor     eax, eax
007C9420   55                     push    ebp

* Possible String Reference to: 'ÈÔ≥√ˇÎáäEˇ_^[ãÂ]√'
|
007C9421   6844997C00             push    $007C9944

***** TRY
|
007C9426   64FF30                 push    dword ptr fs:[eax]
007C9429   648920                 mov     fs:[eax], esp
007C942C   C645FF00               mov     byte ptr [ebp-$01], $00
007C9430   33C0                   xor     eax, eax
007C9432   55                     push    ebp
007C9433   68BE987C00             push    $007C98BE

***** TRY
|
007C9438   64FF30                 push    dword ptr fs:[eax]
007C943B   648920                 mov     fs:[eax], esp
007C943E   33C0                   xor     eax, eax
007C9440   55                     push    ebp
007C9441   686F987C00             push    $007C986F

***** TRY
|
007C9446   64FF30                 push    dword ptr fs:[eax]
007C9449   648920                 mov     fs:[eax], esp

* Reference to field TFrmGereComanda.OFFS_03B9 : Byte
|
007C944C   80BEB903000000         cmp     byte ptr [esi+$03B9], $00
007C9453   0F850C040000           jnz     007C9865
007C9459   8BC6                   mov     eax, esi

|
007C945B   E8B0100000             call    007CA510
007C9460   84C0                   test    al, al
007C9462   0F84FD030000           jz      007C9865

* Reference to field TFrmGereComanda.OFFS_03B9 : Byte
|
007C9468   C686B903000001         mov     byte ptr [esi+$03B9], $01
007C946F   8B07                   mov     eax, [edi]

* Reference to field TFrmGereComanda.Constraints : TSizeConstraints
|
007C9471   8B4074                 mov     eax, [eax+$74]

|
007C9474   E82BD8FDFF             call    007A6CA4
007C9479   84C0                   test    al, al
007C947B   0F84E4030000           jz      007C9865
007C9481   8B15DCF57D00           mov     edx, [$007DF5DC]
007C9487   8BC6                   mov     eax, esi

|
007C9489   E87E120000             call    007CA70C
007C948E   40                     inc     eax

* Reference to GlobalVar_007DF5EC
|
007C948F   A3ECF57D00             mov     dword ptr [$007DF5EC], eax
007C9494   8B07                   mov     eax, [edi]

* Reference to field GlobalVar_007DF5EC.OFFS_05B4
|
007C9496   8B80B4050000           mov     eax, [eax+$05B4]
007C949C   8B15DCF57D00           mov     edx, [$007DF5DC]
007C94A2   8B08                   mov     ecx, [eax]
007C94A4   FF91A8000000           call    dword ptr [ecx+$00A8]
007C94AA   8B07                   mov     eax, [edi]
007C94AC   8B80B8050000           mov     eax, [eax+$05B8]
007C94B2   8B15E0F57D00           mov     edx, [$007DF5E0]
007C94B8   8B08                   mov     ecx, [eax]
007C94BA   FF91A8000000           call    dword ptr [ecx+$00A8]
007C94C0   8B07                   mov     eax, [edi]
007C94C2   8B80BC050000           mov     eax, [eax+$05BC]
007C94C8   8B15ECF57D00           mov     edx, [$007DF5EC]
007C94CE   8B08                   mov     ecx, [eax]
007C94D0   FF91A8000000           call    dword ptr [ecx+$00A8]
007C94D6   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007C94D9   8B8648030000           mov     eax, [esi+$0348]

* Reference to: ActnMan.TActionListCollection.GetListItem(TActionListCollection;Integer):TActionListItem;
|
007C94DF   E8F449D3FF             call    004FDED8
007C94E4   8B55F8                 mov     edx, [ebp-$08]
007C94E7   8B07                   mov     eax, [edi]

* Reference to field TJvComboEdit.OFFS_05C0
|
007C94E9   8B80C0050000           mov     eax, [eax+$05C0]
007C94EF   8B08                   mov     ecx, [eax]
007C94F1   FF91B0000000           call    dword ptr [ecx+$00B0]
007C94F7   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TFrmGereComanda.edDescrProd : TEdit
|
007C94FA   8B8650030000           mov     eax, [esi+$0350]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
007C9500   E8C7A1CCFF             call    004936CC
007C9505   8B55F4                 mov     edx, [ebp-$0C]
007C9508   8B07                   mov     eax, [edi]

* Reference to field TEdit.OFFS_05C4
|
007C950A   8B80C4050000           mov     eax, [eax+$05C4]
007C9510   8B08                   mov     ecx, [eax]
007C9512   FF91B0000000           call    dword ptr [ecx+$00B0]
007C9518   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TFrmGereComanda.EdUnidMed : TJvComboEdit
|
007C951B   8B8674030000           mov     eax, [esi+$0374]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007C9521   E8164AD3FF             call    004FDF3C
007C9526   8B55F0                 mov     edx, [ebp-$10]
007C9529   8B07                   mov     eax, [edi]

* Reference to field TJvComboEdit.OFFS_05C8
|
007C952B   8B80C8050000           mov     eax, [eax+$05C8]
007C9531   8B08                   mov     ecx, [eax]
007C9533   FF91B0000000           call    dword ptr [ecx+$00B0]
007C9539   8D55E0                 lea     edx, [ebp-$20]

* Reference to control TFrmGereComanda.edQtdeLcto : TJvValidateEdit
|
007C953C   8B867C030000           mov     eax, [esi+$037C]

|
007C9542   E8719CE8FF             call    006531B8
007C9547   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
007C954A   E899D6C4FF             call    00416BE8
007C954F   83C4F8                 add     esp, -$08
007C9552   DD1C24                 fstp    qword ptr [esp]
007C9555   9B                     wait
007C9556   8B07                   mov     eax, [edi]
007C9558   8B80D0050000           mov     eax, [eax+$05D0]
007C955E   8B10                   mov     edx, [eax]
007C9560   FF92A4000000           call    dword ptr [edx+$00A4]
007C9566   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007C9569   8B866C030000           mov     eax, [esi+$036C]

|
007C956F   E8449CE8FF             call    006531B8
007C9574   8D45D0                 lea     eax, [ebp-$30]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
007C9577   E86CD6C4FF             call    00416BE8
007C957C   83C4F8                 add     esp, -$08
007C957F   DD1C24                 fstp    qword ptr [esp]
007C9582   9B                     wait
007C9583   8B07                   mov     eax, [edi]
007C9585   8B80D4050000           mov     eax, [eax+$05D4]
007C958B   8B10                   mov     edx, [eax]
007C958D   FF92A4000000           call    dword ptr [edx+$00A4]
007C9593   8D55C0                 lea     edx, [ebp-$40]

* Reference to control TFrmGereComanda.edVlrTotal : TJvValidateEdit
|
007C9596   8B8664030000           mov     eax, [esi+$0364]

|
007C959C   E8179CE8FF             call    006531B8
007C95A1   8D45C0                 lea     eax, [ebp-$40]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
007C95A4   E83FD6C4FF             call    00416BE8
007C95A9   83C4F8                 add     esp, -$08
007C95AC   DD1C24                 fstp    qword ptr [esp]
007C95AF   9B                     wait
007C95B0   8B07                   mov     eax, [edi]
007C95B2   8B80D8050000           mov     eax, [eax+$05D8]
007C95B8   8B10                   mov     edx, [eax]
007C95BA   FF92A4000000           call    dword ptr [edx+$00A4]
007C95C0   8B15BCA57D00           mov     edx, [$007DA5BC]
007C95C6   8B12                   mov     edx, [edx]
007C95C8   8B07                   mov     eax, [edi]
007C95CA   8B80DC050000           mov     eax, [eax+$05DC]
007C95D0   8B08                   mov     ecx, [eax]
007C95D2   FF91B0000000           call    dword ptr [ecx+$00B0]
007C95D8   8B07                   mov     eax, [edi]
007C95DA   8B80E0050000           mov     eax, [eax+$05E0]
007C95E0   BA60997C00             mov     edx, $007C9960
007C95E5   8B08                   mov     ecx, [eax]
007C95E7   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Time:TDateTime;
|
007C95ED   E83646C4FF             call    0040DC28
007C95F2   83C4F8                 add     esp, -$08
007C95F5   DD1C24                 fstp    qword ptr [esp]
007C95F8   9B                     wait
007C95F9   8B07                   mov     eax, [edi]
007C95FB   8B80E4050000           mov     eax, [eax+$05E4]
007C9601   8B10                   mov     edx, [eax]
007C9603   FF92A0000000           call    dword ptr [edx+$00A0]
007C9609   8D55BC                 lea     edx, [ebp-$44]

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007C960C   8B8648030000           mov     eax, [esi+$0348]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
007C9612   E82549D3FF             call    004FDF3C
007C9617   8B45BC                 mov     eax, [ebp-$44]

|
007C961A   E811AFFEFF             call    007B4530
007C961F   8BD0                   mov     edx, eax
007C9621   8B07                   mov     eax, [edi]

* Reference to field TJvComboEdit.OFFS_0C10
|
007C9623   8B80100C0000           mov     eax, [eax+$0C10]
007C9629   8B08                   mov     ecx, [eax]
007C962B   FF91A8000000           call    dword ptr [ecx+$00A8]
007C9631   8D45A8                 lea     eax, [ebp-$58]
007C9634   50                     push    eax
007C9635   8D4598                 lea     eax, [ebp-$68]
007C9638   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007C963A   E885F6C4FF             call    00418CC4
007C963F   8D4598                 lea     eax, [ebp-$68]
007C9642   50                     push    eax
007C9643   B056                   mov     al, $56
007C9645   884585                 mov     [ebp-$7B], al
007C9648   C6458401               mov     byte ptr [ebp-$7C], $01
007C964C   8D4588                 lea     eax, [ebp-$78]
007C964F   8D5584                 lea     edx, [ebp-$7C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
007C9652   E899F6C4FF             call    00418CF0
007C9657   8D5588                 lea     edx, [ebp-$78]

* Reference to control TFrmGereComanda.rgMesaViagem : TRadioGroup
|
007C965A   8B8654030000           mov     eax, [esi+$0354]

* Reference to field TRadioGroup.ItemIndex : Integer
|
007C9660   83B81802000001         cmp     dword ptr [eax+$0218], +$01
007C9667   0F94C0                 setz    al
007C966A   59                     pop     ecx

|
007C966B   E8FC6CFDFF             call    007A036C
007C9670   8D55A8                 lea     edx, [ebp-$58]
007C9673   8D45B8                 lea     eax, [ebp-$48]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
007C9676   E87DE5C4FF             call    00417BF8
007C967B   8B55B8                 mov     edx, [ebp-$48]
007C967E   8B07                   mov     eax, [edi]
007C9680   8B801C0C0000           mov     eax, [eax+$0C1C]
007C9686   8B08                   mov     ecx, [eax]
007C9688   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Time:TDateTime;
|
007C968E   E89545C4FF             call    0040DC28
007C9693   83C4F8                 add     esp, -$08
007C9696   DD1C24                 fstp    qword ptr [esp]
007C9699   9B                     wait
007C969A   8D5580                 lea     edx, [ebp-$80]

* Possible String Reference to: 'HH:MM'
|
007C969D   B86C997C00             mov     eax, $007C996C

|
007C96A2   E83152C4FF             call    0040E8D8
007C96A7   8B5580                 mov     edx, [ebp-$80]
007C96AA   8B07                   mov     eax, [edi]
007C96AC   8B80340C0000           mov     eax, [eax+$0C34]
007C96B2   8B08                   mov     ecx, [eax]
007C96B4   FF91B0000000           call    dword ptr [ecx+$00B0]
007C96BA   8D957CFFFFFF           lea     edx, [ebp+$FFFFFF7C]

* Reference to control TFrmGereComanda.EdHistorico : TEdit
|
007C96C0   8B8684030000           mov     eax, [esi+$0384]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
007C96C6   E801A0CCFF             call    004936CC
007C96CB   8B957CFFFFFF           mov     edx, [ebp+$FFFFFF7C]
007C96D1   8B07                   mov     eax, [edi]

* Reference to field TEdit.OFFS_0C38
|
007C96D3   8B80380C0000           mov     eax, [eax+$0C38]
007C96D9   8B08                   mov     ecx, [eax]
007C96DB   FF91B0000000           call    dword ptr [ecx+$00B0]
007C96E1   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
007C96E7   8B07                   mov     eax, [edi]
007C96E9   8B8024060000           mov     eax, [eax+$0624]
007C96EF   8B08                   mov     ecx, [eax]
007C96F1   FF5160                 call    dword ptr [ecx+$60]
007C96F4   8B9578FFFFFF           mov     edx, [ebp+$FFFFFF78]
007C96FA   8B07                   mov     eax, [edi]
007C96FC   8B80780C0000           mov     eax, [eax+$0C78]
007C9702   8B08                   mov     ecx, [eax]
007C9704   FF91B0000000           call    dword ptr [ecx+$00B0]
007C970A   8D9570FFFFFF           lea     edx, [ebp+$FFFFFF70]
007C9710   8B07                   mov     eax, [edi]
007C9712   8B80100C0000           mov     eax, [eax+$0C10]
007C9718   8B08                   mov     ecx, [eax]
007C971A   FF5160                 call    dword ptr [ecx+$60]
007C971D   8B8D70FFFFFF           mov     ecx, [ebp+$FFFFFF70]
007C9723   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]

* Possible String Reference to: 'CODIMPR = '
|
007C9729   BA7C997C00             mov     edx, $007C997C

* Reference to: System.@LStrCat3;
|
007C972E   E875C0C3FF             call    004057A8
007C9733   8B8574FFFFFF           mov     eax, [ebp+$FFFFFF74]
007C9739   50                     push    eax
007C973A   6A00                   push    $00
007C973C   B990997C00             mov     ecx, $007C9990

* Possible String Reference to: 'IMPRGRILL'
|
007C9741   BA9C997C00             mov     edx, $007C999C
007C9746   33C0                   xor     eax, eax

|
007C9748   E8A3F7FDFF             call    007A8EF0
007C974D   84C0                   test    al, al
007C974F   7446                   jz      007C9797
007C9751   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007C9756   8B00                   mov     eax, [eax]
007C9758   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'NAOIMPRIME'
|
007C975B   BAB0997C00             mov     edx, $007C99B0

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
007C9760   E8E7BED9FF             call    0056564C
007C9765   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]

* Reference to: IBSQL.TIBXSQLVAR.GetAsString(TIBXSQLVAR):AnsiString;
|
007C976B   E8D498D9FF             call    00563044
007C9770   8B856CFFFFFF           mov     eax, [ebp+$FFFFFF6C]
007C9776   BAC4997C00             mov     edx, $007C99C4

* Reference to: System.@LStrCmp;
|
007C977B   E828C1C3FF             call    004058A8
007C9780   7515                   jnz     007C9797
007C9782   8B07                   mov     eax, [edi]
007C9784   8B80140C0000           mov     eax, [eax+$0C14]
007C978A   BAD0997C00             mov     edx, $007C99D0
007C978F   8B08                   mov     ecx, [eax]
007C9791   FF91B0000000           call    dword ptr [ecx+$00B0]
007C9797   8B07                   mov     eax, [edi]
007C9799   8B4074                 mov     eax, [eax+$74]

|
007C979C   E8BFD7FDFF             call    007A6F60
007C97A1   8B07                   mov     eax, [edi]
007C97A3   8B4074                 mov     eax, [eax+$74]

|
007C97A6   E8C1F1FDFF             call    007A896C

* Reference to field TFrmGereComanda.OFFS_03B8 : Byte
|
007C97AB   C686B803000001         mov     byte ptr [esi+$03B8], $01
007C97B2   8B07                   mov     eax, [edi]
007C97B4   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'VLRTOTAL'
|
007C97B7   BADC997C00             mov     edx, $007C99DC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007C97BC   E84304D2FF             call    004E9C04
007C97C1   8B10                   mov     edx, [eax]
007C97C3   FF5254                 call    dword ptr [edx+$54]
007C97C6   DB2DF0F57D00           fld     tbyte ptr [$007DF5F0]
007C97CC   DEC1                   faddp   st(1), st(0)
007C97CE   DB3DF0F57D00           fstp    tbyte ptr [$007DF5F0]
007C97D4   9B                     wait
007C97D5   668B05F8F57D00         mov     ax, word ptr [$007DF5F8]
007C97DC   50                     push    eax
007C97DD   FF35F4F57D00           push    dword ptr [$007DF5F4]
007C97E3   FF35F0F57D00           push    dword ptr [$007DF5F0]
007C97E9   8D9564FFFFFF           lea     edx, [ebp+$FFFFFF64]

* Possible String Reference to: '###,###,##0.00'
|
007C97EF   B8F0997C00             mov     eax, $007C99F0

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
007C97F4   E8433DC4FF             call    0040D53C
007C97F9   8B8D64FFFFFF           mov     ecx, [ebp+$FFFFFF64]
007C97FF   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Possible String Reference to: 'Valor total: $ '
|
007C9805   BA089A7C00             mov     edx, $007C9A08

* Reference to: System.@LStrCat3;
|
007C980A   E899BFC3FF             call    004057A8
007C980F   8B9568FFFFFF           mov     edx, [ebp+$FFFFFF68]

* Reference to control TFrmGereComanda.lbVlrTotal : TLabel
|
007C9815   8B8640030000           mov     eax, [esi+$0340]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007C981B   E8DC9ECCFF             call    004936FC

* Reference to control TFrmGereComanda.btCancelaItem : TBitBtn
|
007C9820   8B865C030000           mov     eax, [esi+$035C]
007C9826   B201                   mov     dl, $01
007C9828   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
007C982A   FF5164                 call    dword ptr [ecx+$64]
007C982D   8BC6                   mov     eax, esi

|
007C982F   E8F4110000             call    007CAA28

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007C9834   8B8648030000           mov     eax, [esi+$0348]
007C983A   8B10                   mov     edx, [eax]

* Possible reference to virtual method TJvComboEdit.OFFS_00C4
|
007C983C   FF92C4000000           call    dword ptr [edx+$00C4]
007C9842   A130AE7D00             mov     eax, dword ptr [$007DAE30]
007C9847   8B00                   mov     eax, [eax]
007C9849   8B1554AE7D00           mov     edx, [$007DAE54]
007C984F   8B12                   mov     edx, [edx]
007C9851   8982DC000000           mov     [edx+$00DC], eax
007C9857   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
007C9861   C645FF01               mov     byte ptr [ebp-$01], $01
007C9865   33C0                   xor     eax, eax
007C9867   5A                     pop     edx
007C9868   59                     pop     ecx
007C9869   59                     pop     ecx
007C986A   648910                 mov     fs:[eax], edx
007C986D   EB41                   jmp     007C98B0

* Reference to: System.@HandleOnException;
|
007C986F   E93CB3C3FF             jmp     00404BB0
007C9874   0100                   add     [eax], eax
007C9876   0000                   add     [eax], al
007C9878   40                     inc     eax
007C9879   95                     xchg    eax, ebp
007C987A   40                     inc     eax
007C987B   0080987C0089           add     [eax+$89007C98], al
007C9881   C3                     ret

007C9882   6A00                   push    $00
007C9884   8B4B04                 mov     ecx, [ebx+$04]
007C9887   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
007C988D   BA209A7C00             mov     edx, $007C9A20

* Reference to: System.@LStrCat3;
|
007C9892   E811BFC3FF             call    004057A8
007C9897   8B8560FFFFFF           mov     eax, [ebp+$FFFFFF60]
007C989D   668B0D409A7C00         mov     cx, word ptr [$007C9A40]
007C98A4   B201                   mov     dl, $01

|
007C98A6   E881A2C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007C98AB   E800B6C3FF             call    00404EB0

****** END
|
007C98B0   33C0                   xor     eax, eax
007C98B2   5A                     pop     edx
007C98B3   59                     pop     ecx
007C98B4   59                     pop     ecx
007C98B5   648910                 mov     fs:[eax], edx

****** FINALLY
|
007C98B8   68C5987C00             push    $007C98C5
007C98BD   C3                     ret


* Reference to: System.@HandleFinally;
|
007C98BE   E975B4C3FF             jmp     00404D38
007C98C3   EBF8                   jmp     007C98BD

****** END
|
007C98C5   33C0                   xor     eax, eax
007C98C7   5A                     pop     edx
007C98C8   59                     pop     ecx
007C98C9   59                     pop     ecx
007C98CA   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
007C98CD   684B997C00             push    $007C994B
007C98D2   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
007C98D8   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007C98DD   E8DEBBC3FF             call    004054C0
007C98E2   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]

* Reference to: System.@LStrClr(void;void);
|
007C98E8   E8AFBBC3FF             call    0040549C
007C98ED   8D4580                 lea     eax, [ebp-$80]

* Reference to: System.@LStrClr(void;void);
|
007C98F0   E8A7BBC3FF             call    0040549C
007C98F5   8D4588                 lea     eax, [ebp-$78]

* Reference to object Variant
|
007C98F8   8B1524114000           mov     edx, [$00401124]
007C98FE   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007C9903   E894C7C3FF             call    0040609C
007C9908   8D45B8                 lea     eax, [ebp-$48]

* Reference to: System.@LStrClr(void;void);
|
007C990B   E88CBBC3FF             call    0040549C
007C9910   8D45BC                 lea     eax, [ebp-$44]

* Reference to: System.@LStrClr(void;void);
|
007C9913   E884BBC3FF             call    0040549C
007C9918   8D45C0                 lea     eax, [ebp-$40]

* Reference to object Variant
|
007C991B   8B1524114000           mov     edx, [$00401124]
007C9921   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007C9926   E871C7C3FF             call    0040609C
007C992B   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
007C992E   E869BBC3FF             call    0040549C
007C9933   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
007C9936   E861BBC3FF             call    0040549C
007C993B   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007C993E   E859BBC3FF             call    0040549C
007C9943   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007C9944(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007C9944   E9EFB3C3FF             jmp     00404D38

|
007C9949   EB87                   jmp     007C98D2
007C994B   8A45FF                 mov     al, byte ptr [ebp-$01]
007C994E   5F                     pop     edi
007C994F   5E                     pop     esi
007C9950   5B                     pop     ebx
007C9951   8BE5                   mov     esp, ebp
007C9953   5D                     pop     ebp
007C9954   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007C9A45(Sender : TObject);
begin
(*
007C9A45   8BEC                   mov     ebp, esp
007C9A47   B92B000000             mov     ecx, $0000002B
007C9A4C   6A00                   push    $00
007C9A4E   6A00                   push    $00
007C9A50   49                     dec     ecx
007C9A51   75F9                   jnz     007C9A4C
007C9A53   51                     push    ecx
007C9A54   53                     push    ebx
007C9A55   56                     push    esi
007C9A56   57                     push    edi
007C9A57   8BF0                   mov     esi, eax
007C9A59   8B1D8CA97D00           mov     ebx, [$007DA98C]
007C9A5F   33C0                   xor     eax, eax
007C9A61   55                     push    ebp

* Possible String Reference to: 'Èé©√ˇÈyˇˇˇäEˇ_^[ãÂ]√'
|
007C9A62   68A5A37C00             push    $007CA3A5

***** TRY
|
007C9A67   64FF30                 push    dword ptr fs:[eax]
007C9A6A   648920                 mov     fs:[eax], esp
007C9A6D   C645FF00               mov     byte ptr [ebp-$01], $00
007C9A71   33C0                   xor     eax, eax
007C9A73   55                     push    ebp
007C9A74   6814A37C00             push    $007CA314

***** TRY
|
007C9A79   64FF30                 push    dword ptr fs:[eax]
007C9A7C   648920                 mov     fs:[eax], esp
007C9A7F   33C0                   xor     eax, eax
007C9A81   55                     push    ebp
007C9A82   68C5A27C00             push    $007CA2C5

***** TRY
|
007C9A87   64FF30                 push    dword ptr fs:[eax]
007C9A8A   648920                 mov     fs:[eax], esp

* Reference to field TFrmGereComanda.OFFS_03B9 : Byte
|
007C9A8D   80BEB903000000         cmp     byte ptr [esi+$03B9], $00
007C9A94   0F8587070000           jnz     007CA221
007C9A9A   8BC6                   mov     eax, esi

|
007C9A9C   E86F0A0000             call    007CA510
007C9AA1   84C0                   test    al, al
007C9AA3   0F8478070000           jz      007CA221
007C9AA9   33C0                   xor     eax, eax
007C9AAB   8945F0                 mov     [ebp-$10], eax
007C9AAE   8945F4                 mov     [ebp-$0C], eax
007C9AB1   668945F8               mov     [ebp-$08], ax
007C9AB5   33C0                   xor     eax, eax
007C9AB7   8945E0                 mov     [ebp-$20], eax
007C9ABA   8945E4                 mov     [ebp-$1C], eax
007C9ABD   668945E8               mov     [ebp-$18], ax
007C9AC1   33C0                   xor     eax, eax
007C9AC3   8945C0                 mov     [ebp-$40], eax
007C9AC6   8945C4                 mov     [ebp-$3C], eax
007C9AC9   668945C8               mov     [ebp-$38], ax
007C9ACD   33C0                   xor     eax, eax
007C9ACF   8945D0                 mov     [ebp-$30], eax
007C9AD2   8945D4                 mov     [ebp-$2C], eax
007C9AD5   668945D8               mov     [ebp-$28], ax
007C9AD9   8B03                   mov     eax, [ebx]

* Reference to field TFrmGereComanda.OFFS_0850
|
007C9ADB   8B8050080000           mov     eax, [eax+$0850]

* Reference to: DB.TDataSet.First(TDataSet);
|
007C9AE1   E84615D2FF             call    004EB02C
007C9AE6   E9E7000000             jmp     007C9BD2
007C9AEB   8D55BC                 lea     edx, [ebp-$44]
007C9AEE   8B03                   mov     eax, [ebx]
007C9AF0   8B809C0C0000           mov     eax, [eax+$0C9C]
007C9AF6   8B08                   mov     ecx, [eax]
007C9AF8   FF5160                 call    dword ptr [ecx+$60]
007C9AFB   8B45BC                 mov     eax, [ebp-$44]
007C9AFE   BAC4A37C00             mov     edx, $007CA3C4

* Reference to: System.@LStrCmp;
|
007C9B03   E8A0BDC3FF             call    004058A8
007C9B08   0F8580000000           jnz     007C9B8E
007C9B0E   8B03                   mov     eax, [ebx]
007C9B10   8B8060080000           mov     eax, [eax+$0860]
007C9B16   8B10                   mov     edx, [eax]
007C9B18   FF5254                 call    dword ptr [edx+$54]
007C9B1B   83C4F4                 add     esp, -$0C
007C9B1E   DB3C24                 fstp    tbyte ptr [esp]
007C9B21   9B                     wait
007C9B22   A15CA97D00             mov     eax, dword ptr [$007DA95C]
007C9B27   8B00                   mov     eax, [eax]
007C9B29   50                     push    eax
007C9B2A   8B03                   mov     eax, [ebx]
007C9B2C   8B8068080000           mov     eax, [eax+$0868]
007C9B32   8B10                   mov     edx, [eax]
007C9B34   FF5254                 call    dword ptr [edx+$54]
007C9B37   83C4F4                 add     esp, -$0C
007C9B3A   DB3C24                 fstp    tbyte ptr [esp]
007C9B3D   9B                     wait
007C9B3E   8D55B8                 lea     edx, [ebp-$48]
007C9B41   8B03                   mov     eax, [ebx]
007C9B43   8B805C080000           mov     eax, [eax+$085C]
007C9B49   8B08                   mov     ecx, [eax]
007C9B4B   FF5160                 call    dword ptr [ecx+$60]
007C9B4E   8B45B8                 mov     eax, [ebp-$48]
007C9B51   50                     push    eax
007C9B52   8D55B4                 lea     edx, [ebp-$4C]
007C9B55   8B03                   mov     eax, [ebx]
007C9B57   8B8058080000           mov     eax, [eax+$0858]
007C9B5D   8B08                   mov     ecx, [eax]
007C9B5F   FF5160                 call    dword ptr [ecx+$60]
007C9B62   8B55B4                 mov     edx, [ebp-$4C]
007C9B65   8BC6                   mov     eax, esi
007C9B67   59                     pop     ecx

|
007C9B68   E82B2A0000             call    007CC598
007C9B6D   DB7DA8                 fstp    tbyte ptr [ebp-$58]
007C9B70   9B                     wait
007C9B71   8B03                   mov     eax, [ebx]

* Reference to field TFrmGereComanda.OFFS_0864
|
007C9B73   8B8064080000           mov     eax, [eax+$0864]
007C9B79   8B10                   mov     edx, [eax]
007C9B7B   FF5254                 call    dword ptr [edx+$54]
007C9B7E   DB6DA8                 fld     tbyte ptr [ebp-$58]
007C9B81   DEC9                   fmulp   st(1), st(0)
007C9B83   DB6DE0                 fld     tbyte ptr [ebp-$20]
007C9B86   DEC1                   faddp   st(1), st(0)
007C9B88   DB7DE0                 fstp    tbyte ptr [ebp-$20]
007C9B8B   9B                     wait
007C9B8C   EB2A                   jmp     007C9BB8
007C9B8E   8B03                   mov     eax, [ebx]
007C9B90   8B8064080000           mov     eax, [eax+$0864]
007C9B96   8B10                   mov     edx, [eax]
007C9B98   FF5254                 call    dword ptr [edx+$54]
007C9B9B   DD5DA0                 fstp    qword ptr [ebp-$60]
007C9B9E   9B                     wait
007C9B9F   8B03                   mov     eax, [ebx]
007C9BA1   8B8068080000           mov     eax, [eax+$0868]
007C9BA7   8B10                   mov     edx, [eax]
007C9BA9   FF5254                 call    dword ptr [edx+$54]
007C9BAC   DC4DA0                 fmul    qword ptr [ebp-$60]
007C9BAF   DB6DF0                 fld     tbyte ptr [ebp-$10]
007C9BB2   DEC1                   faddp   st(1), st(0)
007C9BB4   DB7DF0                 fstp    tbyte ptr [ebp-$10]
007C9BB7   9B                     wait
007C9BB8   DB6DC0                 fld     tbyte ptr [ebp-$40]
007C9BBB   D805C8A37C00           fadd    dword ptr [$007CA3C8]
007C9BC1   DB7DC0                 fstp    tbyte ptr [ebp-$40]
007C9BC4   9B                     wait
007C9BC5   8B03                   mov     eax, [ebx]
007C9BC7   8B8050080000           mov     eax, [eax+$0850]

* Reference to: DB.TDataSet.Next(TDataSet);
|
007C9BCD   E87217D2FF             call    004EB344
007C9BD2   8B03                   mov     eax, [ebx]
007C9BD4   8B8050080000           mov     eax, [eax+$0850]
007C9BDA   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
007C9BE1   0F8404FFFFFF           jz      007C9AEB

* Reference to field TFrmGereComanda.OFFS_03B9 : Byte
|
007C9BE7   C686B903000001         mov     byte ptr [esi+$03B9], $01
007C9BEE   8B15DCF57D00           mov     edx, [$007DF5DC]
007C9BF4   8BC6                   mov     eax, esi

|
007C9BF6   E8110B0000             call    007CA70C
007C9BFB   40                     inc     eax

* Reference to GlobalVar_007DF5EC
|
007C9BFC   A3ECF57D00             mov     dword ptr [$007DF5EC], eax
007C9C01   8B03                   mov     eax, [ebx]

* Reference to field GlobalVar_007DF5EC.OFFS_0850
|
007C9C03   8B8050080000           mov     eax, [eax+$0850]

* Reference to : TFrmInfoAtu._PROC_007A66A4()
|
007C9C09   E896CAFDFF             call    007A66A4
007C9C0E   8B03                   mov     eax, [ebx]
007C9C10   8B8050080000           mov     eax, [eax+$0850]

* Reference to: DB.TDataSet.First(TDataSet);
|
007C9C16   E81114D2FF             call    004EB02C
007C9C1B   E9EC050000             jmp     007CA20C
007C9C20   8B03                   mov     eax, [ebx]
007C9C22   8B4074                 mov     eax, [eax+$74]

|
007C9C25   E87AD0FDFF             call    007A6CA4
007C9C2A   84C0                   test    al, al
007C9C2C   0F84CD050000           jz      007CA1FF
007C9C32   8B03                   mov     eax, [ebx]
007C9C34   8B80B4050000           mov     eax, [eax+$05B4]
007C9C3A   8B15DCF57D00           mov     edx, [$007DF5DC]
007C9C40   8B08                   mov     ecx, [eax]
007C9C42   FF91A8000000           call    dword ptr [ecx+$00A8]
007C9C48   8B03                   mov     eax, [ebx]
007C9C4A   8B80B8050000           mov     eax, [eax+$05B8]
007C9C50   8B15E0F57D00           mov     edx, [$007DF5E0]
007C9C56   8B08                   mov     ecx, [eax]
007C9C58   FF91A8000000           call    dword ptr [ecx+$00A8]
007C9C5E   8B03                   mov     eax, [ebx]
007C9C60   8B80BC050000           mov     eax, [eax+$05BC]
007C9C66   8B15ECF57D00           mov     edx, [$007DF5EC]
007C9C6C   8B08                   mov     ecx, [eax]
007C9C6E   FF91A8000000           call    dword ptr [ecx+$00A8]
007C9C74   8D559C                 lea     edx, [ebp-$64]
007C9C77   8B03                   mov     eax, [ebx]
007C9C79   8B8058080000           mov     eax, [eax+$0858]
007C9C7F   8B08                   mov     ecx, [eax]
007C9C81   FF5160                 call    dword ptr [ecx+$60]
007C9C84   8B559C                 mov     edx, [ebp-$64]
007C9C87   8B03                   mov     eax, [ebx]
007C9C89   8B80C0050000           mov     eax, [eax+$05C0]
007C9C8F   8B08                   mov     ecx, [eax]
007C9C91   FF91B0000000           call    dword ptr [ecx+$00B0]
007C9C97   8D5598                 lea     edx, [ebp-$68]
007C9C9A   8B03                   mov     eax, [ebx]
007C9C9C   8B808C0C0000           mov     eax, [eax+$0C8C]
007C9CA2   8B08                   mov     ecx, [eax]
007C9CA4   FF5160                 call    dword ptr [ecx+$60]
007C9CA7   8B5598                 mov     edx, [ebp-$68]
007C9CAA   8B03                   mov     eax, [ebx]
007C9CAC   8B80C4050000           mov     eax, [eax+$05C4]
007C9CB2   8B08                   mov     ecx, [eax]
007C9CB4   FF91B0000000           call    dword ptr [ecx+$00B0]
007C9CBA   8D5594                 lea     edx, [ebp-$6C]
007C9CBD   8B03                   mov     eax, [ebx]
007C9CBF   8B805C080000           mov     eax, [eax+$085C]
007C9CC5   8B08                   mov     ecx, [eax]
007C9CC7   FF5160                 call    dword ptr [ecx+$60]
007C9CCA   8B5594                 mov     edx, [ebp-$6C]
007C9CCD   8B03                   mov     eax, [ebx]
007C9CCF   8B80C8050000           mov     eax, [eax+$05C8]
007C9CD5   8B08                   mov     ecx, [eax]
007C9CD7   FF91B0000000           call    dword ptr [ecx+$00B0]
007C9CDD   8D5584                 lea     edx, [ebp-$7C]

* Reference to control TFrmGereComanda.edQtdeLcto : TJvValidateEdit
|
007C9CE0   8B867C030000           mov     eax, [esi+$037C]

|
007C9CE6   E8CD94E8FF             call    006531B8
007C9CEB   8D4584                 lea     eax, [ebp-$7C]
007C9CEE   50                     push    eax
007C9CEF   8B03                   mov     eax, [ebx]
007C9CF1   8B8064080000           mov     eax, [eax+$0864]
007C9CF7   8B10                   mov     edx, [eax]
007C9CF9   FF5254                 call    dword ptr [edx+$54]
007C9CFC   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]

* Reference to: Variants.@VarFromReal;
|
007C9D02   E881EFC4FF             call    00418C88
007C9D07   8D9574FFFFFF           lea     edx, [ebp+$FFFFFF74]
007C9D0D   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007C9D0E   E8A933C5FF             call    0041D0BC
007C9D13   8D4584                 lea     eax, [ebp-$7C]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
007C9D16   E8CDCEC4FF             call    00416BE8
007C9D1B   83C4F8                 add     esp, -$08
007C9D1E   DD1C24                 fstp    qword ptr [esp]
007C9D21   9B                     wait
007C9D22   8B03                   mov     eax, [ebx]
007C9D24   8B80D0050000           mov     eax, [eax+$05D0]
007C9D2A   8B10                   mov     edx, [eax]
007C9D2C   FF92A4000000           call    dword ptr [edx+$00A4]
007C9D32   8B03                   mov     eax, [ebx]
007C9D34   8B80900C0000           mov     eax, [eax+$0C90]
007C9D3A   BAC4A37C00             mov     edx, $007CA3C4
007C9D3F   8B08                   mov     ecx, [eax]
007C9D41   FF91B0000000           call    dword ptr [ecx+$00B0]
007C9D47   8B03                   mov     eax, [ebx]
007C9D49   8B8068080000           mov     eax, [eax+$0868]
007C9D4F   8B10                   mov     edx, [eax]
007C9D51   FF5254                 call    dword ptr [edx+$54]
007C9D54   D81DCCA37C00           fcomp   dword ptr [$007CA3CC]
007C9D5A   DFE0                   fstsw   ax
007C9D5C   9E                     sahf
007C9D5D   0F86AB000000           jbe     007C9E0E
007C9D63   8D9564FFFFFF           lea     edx, [ebp+$FFFFFF64]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007C9D69   8B866C030000           mov     eax, [esi+$036C]

|
007C9D6F   E84494E8FF             call    006531B8
007C9D74   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
007C9D7A   50                     push    eax
007C9D7B   DB6DE0                 fld     tbyte ptr [ebp-$20]
007C9D7E   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]

* Reference to: Variants.@VarFromReal;
|
007C9D84   E8FFEEC4FF             call    00418C88
007C9D89   8D9554FFFFFF           lea     edx, [ebp+$FFFFFF54]
007C9D8F   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007C9D90   E81B33C5FF             call    0041D0B0
007C9D95   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
007C9D9B   50                     push    eax
007C9D9C   8B03                   mov     eax, [ebx]
007C9D9E   8B8068080000           mov     eax, [eax+$0868]
007C9DA4   8B10                   mov     edx, [eax]
007C9DA6   FF5254                 call    dword ptr [edx+$54]
007C9DA9   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Reference to: Variants.@VarFromReal;
|
007C9DAF   E8D4EEC4FF             call    00418C88
007C9DB4   8D9544FFFFFF           lea     edx, [ebp+$FFFFFF44]
007C9DBA   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007C9DBB   E8FC32C5FF             call    0041D0BC
007C9DC0   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
007C9DC6   50                     push    eax
007C9DC7   DB6DF0                 fld     tbyte ptr [ebp-$10]
007C9DCA   8D8534FFFFFF           lea     eax, [ebp+$FFFFFF34]

* Reference to: Variants.@VarFromReal;
|
007C9DD0   E8B3EEC4FF             call    00418C88
007C9DD5   8D9534FFFFFF           lea     edx, [ebp+$FFFFFF34]
007C9DDB   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007C9DDC   E81733C5FF             call    0041D0F8
007C9DE1   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
007C9DE7   E8FCCDC4FF             call    00416BE8
007C9DEC   83C4F8                 add     esp, -$08
007C9DEF   DD1C24                 fstp    qword ptr [esp]
007C9DF2   9B                     wait
007C9DF3   8B03                   mov     eax, [ebx]
007C9DF5   8B8040060000           mov     eax, [eax+$0640]
007C9DFB   8B10                   mov     edx, [eax]
007C9DFD   FF5258                 call    dword ptr [edx+$58]

|
007C9E00   E8FF74FDFF             call    007A1304
007C9E05   DB7DD0                 fstp    tbyte ptr [ebp-$30]
007C9E08   9B                     wait
007C9E09   E9CD000000             jmp     007C9EDB
007C9E0E   DB6DF0                 fld     tbyte ptr [ebp-$10]
007C9E11   D81DCCA37C00           fcomp   dword ptr [$007CA3CC]
007C9E17   DFE0                   fstsw   ax
007C9E19   9E                     sahf
007C9E1A   760E                   jbe     007C9E2A
007C9E1C   33C0                   xor     eax, eax
007C9E1E   8945D0                 mov     [ebp-$30], eax
007C9E21   8945D4                 mov     [ebp-$2C], eax
007C9E24   668945D8               mov     [ebp-$28], ax
007C9E28   EB68                   jmp     007C9E92
007C9E2A   DB6DC0                 fld     tbyte ptr [ebp-$40]
007C9E2D   D81DCCA37C00           fcomp   dword ptr [$007CA3CC]
007C9E33   DFE0                   fstsw   ax
007C9E35   9E                     sahf
007C9E36   765A                   jbe     007C9E92
007C9E38   8D9524FFFFFF           lea     edx, [ebp+$FFFFFF24]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007C9E3E   8B866C030000           mov     eax, [esi+$036C]

|
007C9E44   E86F93E8FF             call    006531B8
007C9E49   8D8524FFFFFF           lea     eax, [ebp+$FFFFFF24]
007C9E4F   50                     push    eax
007C9E50   DB6DC0                 fld     tbyte ptr [ebp-$40]
007C9E53   8D8514FFFFFF           lea     eax, [ebp+$FFFFFF14]

* Reference to: Variants.@VarFromReal;
|
007C9E59   E82AEEC4FF             call    00418C88
007C9E5E   8D9514FFFFFF           lea     edx, [ebp+$FFFFFF14]
007C9E64   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007C9E65   E88E32C5FF             call    0041D0F8
007C9E6A   8D8524FFFFFF           lea     eax, [ebp+$FFFFFF24]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
007C9E70   E873CDC4FF             call    00416BE8
007C9E75   83C4F8                 add     esp, -$08
007C9E78   DD1C24                 fstp    qword ptr [esp]
007C9E7B   9B                     wait
007C9E7C   8B03                   mov     eax, [ebx]
007C9E7E   8B8040060000           mov     eax, [eax+$0640]
007C9E84   8B10                   mov     edx, [eax]
007C9E86   FF5258                 call    dword ptr [edx+$58]

|
007C9E89   E87674FDFF             call    007A1304
007C9E8E   DB7DD0                 fstp    tbyte ptr [ebp-$30]
007C9E91   9B                     wait
007C9E92   6A00                   push    $00

* Possible String Reference to: 'O valor de custo do produto '
|
007C9E94   68D8A37C00             push    $007CA3D8
007C9E99   8D950CFFFFFF           lea     edx, [ebp+$FFFFFF0C]
007C9E9F   8B03                   mov     eax, [ebx]
007C9EA1   8B808C0C0000           mov     eax, [eax+$0C8C]
007C9EA7   8B08                   mov     ecx, [eax]
007C9EA9   FF5160                 call    dword ptr [ecx+$60]
007C9EAC   FFB50CFFFFFF           push    dword ptr [ebp+$FFFFFF0C]

* Possible String Reference to: ' na composiÁ„o deve ser preenchido!'
|
007C9EB2   6800A47C00             push    $007CA400
007C9EB7   8D8510FFFFFF           lea     eax, [ebp+$FFFFFF10]
007C9EBD   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007C9EC2   E855B9C3FF             call    0040581C
007C9EC7   8B8510FFFFFF           mov     eax, [ebp+$FFFFFF10]
007C9ECD   668B0D24A47C00         mov     cx, word ptr [$007CA424]
007C9ED4   33D2                   xor     edx, edx

|
007C9ED6   E8519CC7FF             call    00443B2C
007C9EDB   8D9508FFFFFF           lea     edx, [ebp+$FFFFFF08]
007C9EE1   8B03                   mov     eax, [ebx]
007C9EE3   8B809C0C0000           mov     eax, [eax+$0C9C]
007C9EE9   8B08                   mov     ecx, [eax]
007C9EEB   FF5160                 call    dword ptr [ecx+$60]
007C9EEE   8B8508FFFFFF           mov     eax, [ebp+$FFFFFF08]
007C9EF4   BAC4A37C00             mov     edx, $007CA3C4

* Reference to: System.@LStrCmp;
|
007C9EF9   E8AAB9C3FF             call    004058A8
007C9EFE   757B                   jnz     007C9F7B
007C9F00   8B03                   mov     eax, [ebx]
007C9F02   8B8060080000           mov     eax, [eax+$0860]
007C9F08   8B10                   mov     edx, [eax]
007C9F0A   FF5254                 call    dword ptr [edx+$54]
007C9F0D   83C4F4                 add     esp, -$0C
007C9F10   DB3C24                 fstp    tbyte ptr [esp]
007C9F13   9B                     wait
007C9F14   A15CA97D00             mov     eax, dword ptr [$007DA95C]
007C9F19   8B00                   mov     eax, [eax]
007C9F1B   50                     push    eax
007C9F1C   668B45D8               mov     ax, word ptr [ebp-$28]
007C9F20   50                     push    eax
007C9F21   FF75D4                 push    dword ptr [ebp-$2C]
007C9F24   FF75D0                 push    dword ptr [ebp-$30]
007C9F27   8D9504FFFFFF           lea     edx, [ebp+$FFFFFF04]
007C9F2D   8B03                   mov     eax, [ebx]
007C9F2F   8B805C080000           mov     eax, [eax+$085C]
007C9F35   8B08                   mov     ecx, [eax]
007C9F37   FF5160                 call    dword ptr [ecx+$60]
007C9F3A   8B8504FFFFFF           mov     eax, [ebp+$FFFFFF04]
007C9F40   50                     push    eax
007C9F41   8D9500FFFFFF           lea     edx, [ebp+$FFFFFF00]
007C9F47   8B03                   mov     eax, [ebx]
007C9F49   8B8058080000           mov     eax, [eax+$0858]
007C9F4F   8B08                   mov     ecx, [eax]
007C9F51   FF5160                 call    dword ptr [ecx+$60]
007C9F54   8B9500FFFFFF           mov     edx, [ebp+$FFFFFF00]
007C9F5A   8BC6                   mov     eax, esi
007C9F5C   59                     pop     ecx

|
007C9F5D   E836260000             call    007CC598
007C9F62   83C4F8                 add     esp, -$08
007C9F65   DD1C24                 fstp    qword ptr [esp]
007C9F68   9B                     wait
007C9F69   8B03                   mov     eax, [ebx]

* Reference to field TFrmGereComanda.OFFS_05D4
|
007C9F6B   8B80D4050000           mov     eax, [eax+$05D4]
007C9F71   8B10                   mov     edx, [eax]
007C9F73   FF92A4000000           call    dword ptr [edx+$00A4]
007C9F79   EB1A                   jmp     007C9F95
007C9F7B   DB6DD0                 fld     tbyte ptr [ebp-$30]
007C9F7E   83C4F8                 add     esp, -$08
007C9F81   DD1C24                 fstp    qword ptr [esp]
007C9F84   9B                     wait
007C9F85   8B03                   mov     eax, [ebx]
007C9F87   8B80D4050000           mov     eax, [eax+$05D4]
007C9F8D   8B10                   mov     edx, [eax]
007C9F8F   FF92A4000000           call    dword ptr [edx+$00A4]
007C9F95   8B03                   mov     eax, [ebx]
007C9F97   8B80D0050000           mov     eax, [eax+$05D0]
007C9F9D   8B10                   mov     edx, [eax]
007C9F9F   FF5254                 call    dword ptr [edx+$54]
007C9FA2   DD5DA0                 fstp    qword ptr [ebp-$60]
007C9FA5   9B                     wait
007C9FA6   8B03                   mov     eax, [ebx]
007C9FA8   8B80D4050000           mov     eax, [eax+$05D4]
007C9FAE   8B10                   mov     edx, [eax]
007C9FB0   FF5254                 call    dword ptr [edx+$54]
007C9FB3   DC4DA0                 fmul    qword ptr [ebp-$60]
007C9FB6   83C4F8                 add     esp, -$08
007C9FB9   DD1C24                 fstp    qword ptr [esp]
007C9FBC   9B                     wait
007C9FBD   B802000000             mov     eax, $00000002

|
007C9FC2   E83D73FDFF             call    007A1304
007C9FC7   83C4F8                 add     esp, -$08
007C9FCA   DD1C24                 fstp    qword ptr [esp]
007C9FCD   9B                     wait
007C9FCE   8B03                   mov     eax, [ebx]
007C9FD0   8B80D8050000           mov     eax, [eax+$05D8]
007C9FD6   8B10                   mov     edx, [eax]
007C9FD8   FF92A4000000           call    dword ptr [edx+$00A4]
007C9FDE   8B03                   mov     eax, [ebx]
007C9FE0   8B80E0050000           mov     eax, [eax+$05E0]
007C9FE6   BA30A47C00             mov     edx, $007CA430
007C9FEB   8B08                   mov     ecx, [eax]
007C9FED   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Time:TDateTime;
|
007C9FF3   E8303CC4FF             call    0040DC28
007C9FF8   83C4F8                 add     esp, -$08
007C9FFB   DD1C24                 fstp    qword ptr [esp]
007C9FFE   9B                     wait
007C9FFF   8B03                   mov     eax, [ebx]
007CA001   8B80E4050000           mov     eax, [eax+$05E4]
007CA007   8B10                   mov     edx, [eax]
007CA009   FF92A0000000           call    dword ptr [edx+$00A0]
007CA00F   8D95FCFEFFFF           lea     edx, [ebp+$FFFFFEFC]
007CA015   8B03                   mov     eax, [ebx]
007CA017   8B8058080000           mov     eax, [eax+$0858]
007CA01D   8B08                   mov     ecx, [eax]
007CA01F   FF5160                 call    dword ptr [ecx+$60]
007CA022   8B85FCFEFFFF           mov     eax, [ebp+$FFFFFEFC]

|
007CA028   E803A5FEFF             call    007B4530
007CA02D   8BD0                   mov     edx, eax
007CA02F   8B03                   mov     eax, [ebx]
007CA031   8B80100C0000           mov     eax, [eax+$0C10]
007CA037   8B08                   mov     ecx, [eax]
007CA039   FF91A8000000           call    dword ptr [ecx+$00A8]
007CA03F   8D85E8FEFFFF           lea     eax, [ebp+$FFFFFEE8]
007CA045   50                     push    eax
007CA046   8D85D8FEFFFF           lea     eax, [ebp+$FFFFFED8]
007CA04C   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007CA04E   E871ECC4FF             call    00418CC4
007CA053   8D85D8FEFFFF           lea     eax, [ebp+$FFFFFED8]
007CA059   50                     push    eax
007CA05A   B056                   mov     al, $56
007CA05C   8885C5FEFFFF           mov     [ebp+$FFFFFEC5], al
007CA062   C685C4FEFFFF01         mov     byte ptr [ebp+$FFFFFEC4], $01
007CA069   8D85C8FEFFFF           lea     eax, [ebp+$FFFFFEC8]
007CA06F   8D95C4FEFFFF           lea     edx, [ebp+$FFFFFEC4]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
007CA075   E876ECC4FF             call    00418CF0
007CA07A   8D95C8FEFFFF           lea     edx, [ebp+$FFFFFEC8]

* Reference to control TFrmGereComanda.rgMesaViagem : TRadioGroup
|
007CA080   8B8654030000           mov     eax, [esi+$0354]

* Reference to field TRadioGroup.ItemIndex : Integer
|
007CA086   83B81802000001         cmp     dword ptr [eax+$0218], +$01
007CA08D   0F94C0                 setz    al
007CA090   59                     pop     ecx

|
007CA091   E8D662FDFF             call    007A036C
007CA096   8D95E8FEFFFF           lea     edx, [ebp+$FFFFFEE8]
007CA09C   8D85F8FEFFFF           lea     eax, [ebp+$FFFFFEF8]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
007CA0A2   E851DBC4FF             call    00417BF8
007CA0A7   8B95F8FEFFFF           mov     edx, [ebp+$FFFFFEF8]
007CA0AD   8B03                   mov     eax, [ebx]
007CA0AF   8B801C0C0000           mov     eax, [eax+$0C1C]
007CA0B5   8B08                   mov     ecx, [eax]
007CA0B7   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Time:TDateTime;
|
007CA0BD   E8663BC4FF             call    0040DC28
007CA0C2   83C4F8                 add     esp, -$08
007CA0C5   DD1C24                 fstp    qword ptr [esp]
007CA0C8   9B                     wait
007CA0C9   8D95C0FEFFFF           lea     edx, [ebp+$FFFFFEC0]

* Possible String Reference to: 'HH:MM'
|
007CA0CF   B83CA47C00             mov     eax, $007CA43C

|
007CA0D4   E8FF47C4FF             call    0040E8D8
007CA0D9   8B95C0FEFFFF           mov     edx, [ebp+$FFFFFEC0]
007CA0DF   8B03                   mov     eax, [ebx]
007CA0E1   8B80340C0000           mov     eax, [eax+$0C34]
007CA0E7   8B08                   mov     ecx, [eax]
007CA0E9   FF91B0000000           call    dword ptr [ecx+$00B0]
007CA0EF   8D95BCFEFFFF           lea     edx, [ebp+$FFFFFEBC]

* Reference to control TFrmGereComanda.EdHistorico : TEdit
|
007CA0F5   8B8684030000           mov     eax, [esi+$0384]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
007CA0FB   E8CC95CCFF             call    004936CC
007CA100   8B95BCFEFFFF           mov     edx, [ebp+$FFFFFEBC]
007CA106   8B03                   mov     eax, [ebx]

* Reference to field TEdit.OFFS_0C38
|
007CA108   8B80380C0000           mov     eax, [eax+$0C38]
007CA10E   8B08                   mov     ecx, [eax]
007CA110   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to control TFrmGereComanda.EdHistorico : TEdit
|
007CA116   8B8684030000           mov     eax, [esi+$0384]
007CA11C   33D2                   xor     edx, edx

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CA11E   E8D995CCFF             call    004936FC
007CA123   8B03                   mov     eax, [ebx]

* Reference to field TEdit.OFFS_0C78
|
007CA125   8B80780C0000           mov     eax, [eax+$0C78]
007CA12B   BA4CA47C00             mov     edx, $007CA44C
007CA130   8B08                   mov     ecx, [eax]
007CA132   FF91B0000000           call    dword ptr [ecx+$00B0]
007CA138   8D95B4FEFFFF           lea     edx, [ebp+$FFFFFEB4]
007CA13E   8B03                   mov     eax, [ebx]
007CA140   8B80100C0000           mov     eax, [eax+$0C10]
007CA146   8B08                   mov     ecx, [eax]
007CA148   FF5160                 call    dword ptr [ecx+$60]
007CA14B   8B8DB4FEFFFF           mov     ecx, [ebp+$FFFFFEB4]
007CA151   8D85B8FEFFFF           lea     eax, [ebp+$FFFFFEB8]

* Possible String Reference to: 'CODIMPR = '
|
007CA157   BA58A47C00             mov     edx, $007CA458

* Reference to: System.@LStrCat3;
|
007CA15C   E847B6C3FF             call    004057A8
007CA161   8B85B8FEFFFF           mov     eax, [ebp+$FFFFFEB8]
007CA167   50                     push    eax
007CA168   6A00                   push    $00
007CA16A   B96CA47C00             mov     ecx, $007CA46C

* Possible String Reference to: 'IMPRGRILL'
|
007CA16F   BA78A47C00             mov     edx, $007CA478
007CA174   33C0                   xor     eax, eax

|
007CA176   E875EDFDFF             call    007A8EF0
007CA17B   84C0                   test    al, al
007CA17D   7446                   jz      007CA1C5
007CA17F   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007CA184   8B00                   mov     eax, [eax]
007CA186   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'NAOIMPRIME'
|
007CA189   BA8CA47C00             mov     edx, $007CA48C

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
007CA18E   E8B9B4D9FF             call    0056564C
007CA193   8D95B0FEFFFF           lea     edx, [ebp+$FFFFFEB0]

* Reference to: IBSQL.TIBXSQLVAR.GetAsString(TIBXSQLVAR):AnsiString;
|
007CA199   E8A68ED9FF             call    00563044
007CA19E   8B85B0FEFFFF           mov     eax, [ebp+$FFFFFEB0]
007CA1A4   BAC4A37C00             mov     edx, $007CA3C4

* Reference to: System.@LStrCmp;
|
007CA1A9   E8FAB6C3FF             call    004058A8
007CA1AE   7515                   jnz     007CA1C5
007CA1B0   8B03                   mov     eax, [ebx]
007CA1B2   8B80140C0000           mov     eax, [eax+$0C14]
007CA1B8   BAA0A47C00             mov     edx, $007CA4A0
007CA1BD   8B08                   mov     ecx, [eax]
007CA1BF   FF91B0000000           call    dword ptr [ecx+$00B0]
007CA1C5   8B03                   mov     eax, [ebx]
007CA1C7   8B4074                 mov     eax, [eax+$74]

|
007CA1CA   E891CDFDFF             call    007A6F60
007CA1CF   FF05ECF57D00           inc     dword ptr [$007DF5EC]

* Reference to field TFrmGereComanda.OFFS_03B8 : Byte
|
007CA1D5   C686B803000001         mov     byte ptr [esi+$03B8], $01
007CA1DC   8B03                   mov     eax, [ebx]
007CA1DE   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'VLRTOTAL'
|
007CA1E1   BAACA47C00             mov     edx, $007CA4AC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CA1E6   E819FAD1FF             call    004E9C04
007CA1EB   8B10                   mov     edx, [eax]
007CA1ED   FF5254                 call    dword ptr [edx+$54]
007CA1F0   DB2DF0F57D00           fld     tbyte ptr [$007DF5F0]
007CA1F6   DEC1                   faddp   st(1), st(0)
007CA1F8   DB3DF0F57D00           fstp    tbyte ptr [$007DF5F0]
007CA1FE   9B                     wait
007CA1FF   8B03                   mov     eax, [ebx]
007CA201   8B8050080000           mov     eax, [eax+$0850]

* Reference to: DB.TDataSet.Next(TDataSet);
|
007CA207   E83811D2FF             call    004EB344
007CA20C   8B03                   mov     eax, [ebx]
007CA20E   8B8050080000           mov     eax, [eax+$0850]
007CA214   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
007CA21B   0F84FFF9FFFF           jz      007C9C20
007CA221   8B03                   mov     eax, [ebx]
007CA223   8B4074                 mov     eax, [eax+$74]

|
007CA226   E841E7FDFF             call    007A896C
007CA22B   668B05F8F57D00         mov     ax, word ptr [$007DF5F8]
007CA232   50                     push    eax
007CA233   FF35F4F57D00           push    dword ptr [$007DF5F4]
007CA239   FF35F0F57D00           push    dword ptr [$007DF5F0]
007CA23F   8D95A8FEFFFF           lea     edx, [ebp+$FFFFFEA8]

* Possible String Reference to: '###,###,##0.00'
|
007CA245   B8C0A47C00             mov     eax, $007CA4C0

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
007CA24A   E8ED32C4FF             call    0040D53C
007CA24F   8B8DA8FEFFFF           mov     ecx, [ebp+$FFFFFEA8]
007CA255   8D85ACFEFFFF           lea     eax, [ebp+$FFFFFEAC]

* Possible String Reference to: 'Valor total: $ '
|
007CA25B   BAD8A47C00             mov     edx, $007CA4D8

* Reference to: System.@LStrCat3;
|
007CA260   E843B5C3FF             call    004057A8
007CA265   8B95ACFEFFFF           mov     edx, [ebp+$FFFFFEAC]

* Reference to control TFrmGereComanda.lbVlrTotal : TLabel
|
007CA26B   8B8640030000           mov     eax, [esi+$0340]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CA271   E88694CCFF             call    004936FC

* Reference to control TFrmGereComanda.btCancelaItem : TBitBtn
|
007CA276   8B865C030000           mov     eax, [esi+$035C]
007CA27C   B201                   mov     dl, $01
007CA27E   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
007CA280   FF5164                 call    dword ptr [ecx+$64]
007CA283   8BC6                   mov     eax, esi

|
007CA285   E89E070000             call    007CAA28

* Reference to control TFrmGereComanda.edCodProd : TJvComboEdit
|
007CA28A   8B8648030000           mov     eax, [esi+$0348]
007CA290   8B10                   mov     edx, [eax]

* Possible reference to virtual method TJvComboEdit.OFFS_00C4
|
007CA292   FF92C4000000           call    dword ptr [edx+$00C4]
007CA298   A130AE7D00             mov     eax, dword ptr [$007DAE30]
007CA29D   8B00                   mov     eax, [eax]
007CA29F   8B1554AE7D00           mov     edx, [$007DAE54]
007CA2A5   8B12                   mov     edx, [edx]
007CA2A7   8982DC000000           mov     [edx+$00DC], eax
007CA2AD   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
007CA2B7   C645FF01               mov     byte ptr [ebp-$01], $01
007CA2BB   33C0                   xor     eax, eax
007CA2BD   5A                     pop     edx
007CA2BE   59                     pop     ecx
007CA2BF   59                     pop     ecx
007CA2C0   648910                 mov     fs:[eax], edx
007CA2C3   EB41                   jmp     007CA306

* Reference to: System.@HandleOnException;
|
007CA2C5   E9E6A8C3FF             jmp     00404BB0
007CA2CA   0100                   add     [eax], eax
007CA2CC   0000                   add     [eax], al
007CA2CE   40                     inc     eax
007CA2CF   95                     xchg    eax, ebp
007CA2D0   40                     inc     eax
007CA2D1   00D6                   add     dh, dl
007CA2D3   A27C0089C3             mov     byte ptr [$C389007C], al
007CA2D8   6A00                   push    $00
007CA2DA   8B4B04                 mov     ecx, [ebx+$04]
007CA2DD   8D85A4FEFFFF           lea     eax, [ebp+$FFFFFEA4]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
007CA2E3   BAF0A47C00             mov     edx, $007CA4F0

* Reference to: System.@LStrCat3;
|
007CA2E8   E8BBB4C3FF             call    004057A8
007CA2ED   8B85A4FEFFFF           mov     eax, [ebp+$FFFFFEA4]
007CA2F3   668B0D24A47C00         mov     cx, word ptr [$007CA424]
007CA2FA   B201                   mov     dl, $01

|
007CA2FC   E82B98C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CA301   E8AAABC3FF             call    00404EB0

****** END
|
007CA306   33C0                   xor     eax, eax
007CA308   5A                     pop     edx
007CA309   59                     pop     ecx
007CA30A   59                     pop     ecx
007CA30B   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CA30E   681BA37C00             push    $007CA31B
007CA313   C3                     ret


* Reference to: System.@HandleFinally;
|
007CA314   E91FAAC3FF             jmp     00404D38
007CA319   EBF8                   jmp     007CA313

****** END
|
007CA31B   33C0                   xor     eax, eax
007CA31D   5A                     pop     edx
007CA31E   59                     pop     ecx
007CA31F   59                     pop     ecx
007CA320   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
007CA323   68AFA37C00             push    $007CA3AF
007CA328   8D85A4FEFFFF           lea     eax, [ebp+$FFFFFEA4]
007CA32E   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CA333   E888B1C3FF             call    004054C0
007CA338   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]

* Reference to: System.@LStrClr(void;void);
|
007CA33E   E859B1C3FF             call    0040549C
007CA343   8D85C0FEFFFF           lea     eax, [ebp+$FFFFFEC0]

* Reference to: System.@LStrClr(void;void);
|
007CA349   E84EB1C3FF             call    0040549C
007CA34E   8D85C8FEFFFF           lea     eax, [ebp+$FFFFFEC8]

* Reference to object Variant
|
007CA354   8B1524114000           mov     edx, [$00401124]
007CA35A   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007CA35F   E838BDC3FF             call    0040609C
007CA364   8D85F8FEFFFF           lea     eax, [ebp+$FFFFFEF8]
007CA36A   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CA36F   E84CB1C3FF             call    004054C0
007CA374   8D8514FFFFFF           lea     eax, [ebp+$FFFFFF14]

* Reference to object Variant
|
007CA37A   8B1524114000           mov     edx, [$00401124]
007CA380   B908000000             mov     ecx, $00000008

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007CA385   E812BDC3FF             call    0040609C
007CA38A   8D4594                 lea     eax, [ebp-$6C]
007CA38D   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CA392   E829B1C3FF             call    004054C0
007CA397   8D45B4                 lea     eax, [ebp-$4C]
007CA39A   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CA39F   E81CB1C3FF             call    004054C0
007CA3A4   C3                     ret


* Reference to: System.@HandleFinally;
|
007CA3A5   E98EA9C3FF             jmp     00404D38
007CA3AA   E979FFFFFF             jmp     007CA328

****** END
|
007CA3AF   8A45FF                 mov     al, byte ptr [ebp-$01]
007CA3B2   5F                     pop     edi
007CA3B3   5E                     pop     esi
007CA3B4   5B                     pop     ebx
007CA3B5   8BE5                   mov     esp, ebp
007CA3B7   5D                     pop     ebp
007CA3B8   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CA3A5(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CA3A5   E98EA9C3FF             jmp     00404D38

|
007CA3AA   E979FFFFFF             jmp     007CA328
007CA3AF   8A45FF                 mov     al, byte ptr [ebp-$01]
007CA3B2   5F                     pop     edi
007CA3B3   5E                     pop     esi
007CA3B4   5B                     pop     ebx
007CA3B5   8BE5                   mov     esp, ebp
007CA3B7   5D                     pop     ebp
007CA3B8   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CA511(Sender : TObject);
begin
(*
007CA511   8BEC                   mov     ebp, esp
007CA513   B909000000             mov     ecx, $00000009
007CA518   6A00                   push    $00
007CA51A   6A00                   push    $00
007CA51C   49                     dec     ecx
007CA51D   75F9                   jnz     007CA518
007CA51F   53                     push    ebx
007CA520   56                     push    esi
007CA521   57                     push    edi
007CA522   8BD8                   mov     ebx, eax
007CA524   33C0                   xor     eax, eax
007CA526   55                     push    ebp

* Possible String Reference to: 'ÈÕ¶√ˇÎ›äEˇ_^[ãÂ]√'
|
007CA527   6866A67C00             push    $007CA666

***** TRY
|
007CA52C   64FF30                 push    dword ptr fs:[eax]
007CA52F   648920                 mov     fs:[eax], esp
007CA532   C645FF01               mov     byte ptr [ebp-$01], $01
007CA536   33C0                   xor     eax, eax
007CA538   55                     push    ebp
007CA539   6836A67C00             push    $007CA636

***** TRY
|
007CA53E   64FF30                 push    dword ptr fs:[eax]
007CA541   648920                 mov     fs:[eax], esp
007CA544   33C0                   xor     eax, eax
007CA546   55                     push    ebp
007CA547   68EDA57C00             push    $007CA5ED

***** TRY
|
007CA54C   64FF30                 push    dword ptr fs:[eax]
007CA54F   648920                 mov     fs:[eax], esp
007CA552   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TFrmGereComanda.edQtdeLcto : TJvValidateEdit
|
007CA555   8B837C030000           mov     eax, [ebx+$037C]

|
007CA55B   E8588CE8FF             call    006531B8
007CA560   8D45EC                 lea     eax, [ebp-$14]
007CA563   50                     push    eax
007CA564   8D45DC                 lea     eax, [ebp-$24]
007CA567   33D2                   xor     edx, edx
007CA569   B101                   mov     cl, $01

|
007CA56B   E800E5C4FF             call    00418A70
007CA570   8D55DC                 lea     edx, [ebp-$24]
007CA573   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
007CA574   E8BB2BC5FF             call    0041D134
007CA579   7F26                   jnle    007CA5A1
007CA57B   6A00                   push    $00
007CA57D   668B0D78A67C00         mov     cx, word ptr [$007CA678]
007CA584   33D2                   xor     edx, edx

* Possible String Reference to: 'Informe a quantidade a ser lanÁada!'
|
007CA586   B884A67C00             mov     eax, $007CA684

|
007CA58B   E89C95C7FF             call    00443B2C

* Reference to control TFrmGereComanda.edQtdeLcto : TJvValidateEdit
|
007CA590   8B837C030000           mov     eax, [ebx+$037C]

|
007CA596   E845BBFDFF             call    007A60E0
007CA59B   C645FF00               mov     byte ptr [ebp-$01], $00
007CA59F   EB42                   jmp     007CA5E3
007CA5A1   8D55CC                 lea     edx, [ebp-$34]

* Reference to control TFrmGereComanda.EdVlrUnit : TJvValidateEdit
|
007CA5A4   8B836C030000           mov     eax, [ebx+$036C]

|
007CA5AA   E8098CE8FF             call    006531B8
007CA5AF   8D45CC                 lea     eax, [ebp-$34]
007CA5B2   50                     push    eax
007CA5B3   8D45BC                 lea     eax, [ebp-$44]
007CA5B6   33D2                   xor     edx, edx
007CA5B8   B101                   mov     cl, $01

|
007CA5BA   E8B1E4C4FF             call    00418A70
007CA5BF   8D55BC                 lea     edx, [ebp-$44]
007CA5C2   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
007CA5C3   E86C2BC5FF             call    0041D134
007CA5C8   7F19                   jnle    007CA5E3
007CA5CA   6A00                   push    $00
007CA5CC   668B0D78A67C00         mov     cx, word ptr [$007CA678]
007CA5D3   33D2                   xor     edx, edx

* Possible String Reference to: 'O valor unit·rio do produto n„o pod
|                                e estar zerado!'
|
007CA5D5   B8B0A67C00             mov     eax, $007CA6B0

|
007CA5DA   E84D95C7FF             call    00443B2C
007CA5DF   C645FF00               mov     byte ptr [ebp-$01], $00
007CA5E3   33C0                   xor     eax, eax
007CA5E5   5A                     pop     edx
007CA5E6   59                     pop     ecx
007CA5E7   59                     pop     ecx
007CA5E8   648910                 mov     fs:[eax], edx
007CA5EB   EB3B                   jmp     007CA628

* Reference to: System.@HandleOnException;
|
007CA5ED   E9BEA5C3FF             jmp     00404BB0
007CA5F2   0100                   add     [eax], eax
007CA5F4   0000                   add     [eax], al
007CA5F6   40                     inc     eax
007CA5F7   95                     xchg    eax, ebp
007CA5F8   40                     inc     eax
007CA5F9   00FE                   add     dh, bh
007CA5FB   A5                     movsd
007CA5FC   7C00                   jl      007CA5FE
007CA5FE   89C3                   mov     ebx, eax
007CA600   6A00                   push    $00
007CA602   8B4B04                 mov     ecx, [ebx+$04]
007CA605   8D45B8                 lea     eax, [ebp-$48]

* Possible String Reference to: 'Erro ao validar o produto!'
|
007CA608   BAECA67C00             mov     edx, $007CA6EC

* Reference to: System.@LStrCat3;
|
007CA60D   E896B1C3FF             call    004057A8
007CA612   8B45B8                 mov     eax, [ebp-$48]
007CA615   668B0D78A67C00         mov     cx, word ptr [$007CA678]
007CA61C   B201                   mov     dl, $01

|
007CA61E   E80995C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CA623   E888A8C3FF             call    00404EB0

****** END
|
007CA628   33C0                   xor     eax, eax
007CA62A   5A                     pop     edx
007CA62B   59                     pop     ecx
007CA62C   59                     pop     ecx
007CA62D   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CA630   683DA67C00             push    $007CA63D
007CA635   C3                     ret


* Reference to: System.@HandleFinally;
|
007CA636   E9FDA6C3FF             jmp     00404D38
007CA63B   EBF8                   jmp     007CA635

****** END
|
007CA63D   33C0                   xor     eax, eax
007CA63F   5A                     pop     edx
007CA640   59                     pop     ecx
007CA641   59                     pop     ecx
007CA642   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
007CA645   686DA67C00             push    $007CA66D
007CA64A   8D45B8                 lea     eax, [ebp-$48]

* Reference to: System.@LStrClr(void;void);
|
007CA64D   E84AAEC3FF             call    0040549C
007CA652   8D45BC                 lea     eax, [ebp-$44]

* Reference to object Variant
|
007CA655   8B1524114000           mov     edx, [$00401124]
007CA65B   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007CA660   E837BAC3FF             call    0040609C
007CA665   C3                     ret


* Reference to: System.@HandleFinally;
|
007CA666   E9CDA6C3FF             jmp     00404D38
007CA66B   EBDD                   jmp     007CA64A

****** END
|
007CA66D   8A45FF                 mov     al, byte ptr [ebp-$01]
007CA670   5F                     pop     edi
007CA671   5E                     pop     esi
007CA672   5B                     pop     ebx
007CA673   8BE5                   mov     esp, ebp
007CA675   5D                     pop     ebp
007CA676   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CA666(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CA666   E9CDA6C3FF             jmp     00404D38

|
007CA66B   EBDD                   jmp     007CA64A
007CA66D   8A45FF                 mov     al, byte ptr [ebp-$01]
007CA670   5F                     pop     edi
007CA671   5E                     pop     esi
007CA672   5B                     pop     ebx
007CA673   8BE5                   mov     esp, ebp
007CA675   5D                     pop     ebp
007CA676   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CA677(Sender : TObject);
begin
(*
007CA677   000400                 add     [eax+eax], al
007CA67A   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CA70D(Sender : TObject);
begin
(*
007CA70D   8BEC                   mov     ebp, esp
007CA70F   33C9                   xor     ecx, ecx
007CA711   51                     push    ecx
007CA712   51                     push    ecx
007CA713   51                     push    ecx
007CA714   51                     push    ecx
007CA715   51                     push    ecx
007CA716   51                     push    ecx
007CA717   53                     push    ebx
007CA718   56                     push    esi
007CA719   57                     push    edi
007CA71A   8BF2                   mov     esi, edx
007CA71C   33C0                   xor     eax, eax
007CA71E   55                     push    ebp

* Possible String Reference to: 'Èn§√ˇÎÎãE¸_^[ãÂ]√'
|
007CA71F   68C5A87C00             push    $007CA8C5

***** TRY
|
007CA724   64FF30                 push    dword ptr fs:[eax]
007CA727   648920                 mov     fs:[eax], esp
007CA72A   33C0                   xor     eax, eax
007CA72C   8945FC                 mov     [ebp-$04], eax
007CA72F   33D2                   xor     edx, edx
007CA731   55                     push    ebp
007CA732   68A3A87C00             push    $007CA8A3

***** TRY
|
007CA737   64FF32                 push    dword ptr fs:[edx]
007CA73A   648922                 mov     fs:[edx], esp
007CA73D   33D2                   xor     edx, edx
007CA73F   55                     push    ebp
007CA740   685AA87C00             push    $007CA85A

***** TRY
|
007CA745   64FF32                 push    dword ptr fs:[edx]
007CA748   648922                 mov     fs:[edx], esp
007CA74B   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CA750   8B00                   mov     eax, [eax]
007CA752   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.Close(TDataSet);
|
007CA755   E806E2D1FF             call    004E8960
007CA75A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CA75F   8B00                   mov     eax, [eax]
007CA761   8B4058                 mov     eax, [eax+$58]
007CA764   8B9850020000           mov     ebx, [eax+$0250]
007CA76A   8BC3                   mov     eax, ebx
007CA76C   8B10                   mov     edx, [eax]
007CA76E   FF5244                 call    dword ptr [edx+$44]

* Possible String Reference to: 'select max(mi.item) UltItem'
|
007CA771   BAE0A87C00             mov     edx, $007CA8E0
007CA776   8BC3                   mov     eax, ebx
007CA778   8B08                   mov     ecx, [eax]
007CA77A   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'from mesalcto m'
|
007CA77D   BA04A97C00             mov     edx, $007CA904
007CA782   8BC3                   mov     eax, ebx
007CA784   8B08                   mov     ecx, [eax]
007CA786   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'left join mesaitem mi'
|
007CA789   BA1CA97C00             mov     edx, $007CA91C
007CA78E   8BC3                   mov     eax, ebx
007CA790   8B08                   mov     ecx, [eax]
007CA792   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'on  (m.codmesa = mi.codmesa)'
|
007CA795   BA3CA97C00             mov     edx, $007CA93C
007CA79A   8BC3                   mov     eax, ebx
007CA79C   8B08                   mov     ecx, [eax]
007CA79E   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'and (m.numlcto = mi.numlcto)'
|
007CA7A1   BA64A97C00             mov     edx, $007CA964
007CA7A6   8BC3                   mov     eax, ebx
007CA7A8   8B08                   mov     ecx, [eax]
007CA7AA   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'where'
|
007CA7AD   BA8CA97C00             mov     edx, $007CA98C
007CA7B2   8BC3                   mov     eax, ebx
007CA7B4   8B08                   mov     ecx, [eax]
007CA7B6   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: '(m.codmesa = '
|
007CA7B9   689CA97C00             push    $007CA99C
007CA7BE   8D55F0                 lea     edx, [ebp-$10]
007CA7C1   8BC6                   mov     eax, esi

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007CA7C3   E89C05C4FF             call    0040AD64
007CA7C8   8B45F0                 mov     eax, [ebp-$10]
007CA7CB   8D55F4                 lea     edx, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CA7CE   E84D93FDFF             call    007A3B20
007CA7D3   FF75F4                 push    dword ptr [ebp-$0C]

* Possible String Reference to: ') and (m.status = '
|
007CA7D6   68B4A97C00             push    $007CA9B4
007CA7DB   8D55EC                 lea     edx, [ebp-$14]
007CA7DE   B8D0A97C00             mov     eax, $007CA9D0

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CA7E3   E83893FDFF             call    007A3B20
007CA7E8   FF75EC                 push    dword ptr [ebp-$14]
007CA7EB   68DCA97C00             push    $007CA9DC
007CA7F0   8D45F8                 lea     eax, [ebp-$08]
007CA7F3   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
007CA7F8   E81FB0C3FF             call    0040581C
007CA7FD   8B55F8                 mov     edx, [ebp-$08]
007CA800   8BC3                   mov     eax, ebx
007CA802   8B08                   mov     ecx, [eax]
007CA804   FF5138                 call    dword ptr [ecx+$38]
007CA807   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CA80C   8B00                   mov     eax, [eax]
007CA80E   8B4058                 mov     eax, [eax+$58]
007CA811   80B85402000000         cmp     byte ptr [eax+$0254], $00
007CA818   750B                   jnz     007CA825
007CA81A   8B158CA97D00           mov     edx, [$007DA98C]

* Reference to: ActnMenus.TInternalMDIAction.UpdateTarget(TInternalMDIAction;TObject);
|
007CA820   E8AB08DDFF             call    0059B0D0
007CA825   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CA82A   8B00                   mov     eax, [eax]
007CA82C   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.Open(TDataSet);
|
007CA82F   E820E1D1FF             call    004E8954
007CA834   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CA839   8B00                   mov     eax, [eax]
007CA83B   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'ultitem'
|
007CA83E   BAE8A97C00             mov     edx, $007CA9E8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CA843   E8BCF3D1FF             call    004E9C04
007CA848   8B10                   mov     edx, [eax]
007CA84A   FF5258                 call    dword ptr [edx+$58]
007CA84D   8945FC                 mov     [ebp-$04], eax
007CA850   33C0                   xor     eax, eax
007CA852   5A                     pop     edx
007CA853   59                     pop     ecx
007CA854   59                     pop     ecx
007CA855   648910                 mov     fs:[eax], edx
007CA858   EB3B                   jmp     007CA895

* Reference to: System.@HandleOnException;
|
007CA85A   E951A3C3FF             jmp     00404BB0
007CA85F   0100                   add     [eax], eax
007CA861   0000                   add     [eax], al
007CA863   40                     inc     eax
007CA864   95                     xchg    eax, ebp
007CA865   40                     inc     eax
007CA866   006BA8                 add     [ebx-$58], ch
007CA869   7C00                   jl      007CA86B
007CA86B   89C3                   mov     ebx, eax
007CA86D   6A00                   push    $00
007CA86F   8B4B04                 mov     ecx, [ebx+$04]
007CA872   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Ocorreu um erro na funÁ„o PegaUltim
|                                oItem.'
|
007CA875   BAF8A97C00             mov     edx, $007CA9F8

* Reference to: System.@LStrCat3;
|
007CA87A   E829AFC3FF             call    004057A8
007CA87F   8B45E8                 mov     eax, [ebp-$18]
007CA882   668B0D24AA7C00         mov     cx, word ptr [$007CAA24]
007CA889   B201                   mov     dl, $01

|
007CA88B   E89C92C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CA890   E81BA6C3FF             call    00404EB0

****** END
|
007CA895   33C0                   xor     eax, eax
007CA897   5A                     pop     edx
007CA898   59                     pop     ecx
007CA899   59                     pop     ecx
007CA89A   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CA89D   68AAA87C00             push    $007CA8AA
007CA8A2   C3                     ret


* Reference to: System.@HandleFinally;
|
007CA8A3   E990A4C3FF             jmp     00404D38
007CA8A8   EBF8                   jmp     007CA8A2

****** END
|
007CA8AA   33C0                   xor     eax, eax
007CA8AC   5A                     pop     edx
007CA8AD   59                     pop     ecx
007CA8AE   59                     pop     ecx
007CA8AF   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãE¸_^[ãÂ]√'
|
007CA8B2   68CCA87C00             push    $007CA8CC
007CA8B7   8D45E8                 lea     eax, [ebp-$18]
007CA8BA   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CA8BF   E8FCABC3FF             call    004054C0
007CA8C4   C3                     ret


* Reference to: System.@HandleFinally;
|
007CA8C5   E96EA4C3FF             jmp     00404D38
007CA8CA   EBEB                   jmp     007CA8B7

****** END
|
007CA8CC   8B45FC                 mov     eax, [ebp-$04]
007CA8CF   5F                     pop     edi
007CA8D0   5E                     pop     esi
007CA8D1   5B                     pop     ebx
007CA8D2   8BE5                   mov     esp, ebp
007CA8D4   5D                     pop     ebp
007CA8D5   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CA8A3(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CA8A3   E990A4C3FF             jmp     00404D38

|
007CA8A8   EBF8                   jmp     007CA8A2
007CA8AA   33C0                   xor     eax, eax
007CA8AC   5A                     pop     edx
007CA8AD   59                     pop     ecx
007CA8AE   59                     pop     ecx
007CA8AF   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãE¸_^[ãÂ]√'
|
007CA8B2   68CCA87C00             push    $007CA8CC
007CA8B7   8D45E8                 lea     eax, [ebp-$18]
007CA8BA   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CA8BF   E8FCABC3FF             call    004054C0
007CA8C4   C3                     ret


* Reference to: System.@HandleFinally;
|
007CA8C5   E96EA4C3FF             jmp     00404D38
007CA8CA   EBEB                   jmp     007CA8B7

****** END
|
007CA8CC   8B45FC                 mov     eax, [ebp-$04]
007CA8CF   5F                     pop     edi
007CA8D0   5E                     pop     esi
007CA8D1   5B                     pop     ebx
007CA8D2   8BE5                   mov     esp, ebp
007CA8D4   5D                     pop     ebp
007CA8D5   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CA8F5(Sender : TObject);
begin
(*
007CA8F5   6C                     insb
007CA8F6   7449                   jz      007CA941
007CA8F8   7465                   jz      007CA95F
007CA8FA   6D                     insd
007CA8FB   00FF                   add     bh, bh
007CA8FD   FFFF                   DB  $FF, $FF  //      
007CA8FF   FF0F                   dec     dword ptr [edi]
007CA901   0000                   add     [eax], al

007CA903   006672                 add     [esi+$72], ah
007CA906   6F                     outsd
007CA907   6D                     insd
007CA908   206D65                 and     [ebp+$65], ch
007CA90B   7361                   jnb     007CA96E
007CA90D   6C                     insb
007CA90E   63746F20               arpl    [edi+ebp*2+$20], si
007CA912   6D                     insd
007CA913   00FF                   add     bh, bh
007CA915   FFFF                   DB  $FF, $FF  //      
007CA917   FF150000006C           call    dword ptr [$6C000000]
007CA91D   65667420               jz      007CA941
007CA921   6A6F                   push    $6F
007CA923   696E206D657361         imul    ebp, [esi+$20], $6173656D
007CA92A   6974656D206D6900       imul    esi, [ebp+$6D], $00696D20
007CA932   0000                   add     [eax], al

007CA934   FFFF                   DB  $FF, $FF  //      
007CA936   FFFF                   DB  $FF, $FF  //      
007CA938   1C00                   sbb     al, $00
007CA93A   0000                   add     [eax], al

007CA93C   6F                     outsd
007CA93D   6E                     outsb
007CA93E   2020                   and     [eax], ah
007CA940   286D2E                 sub     [ebp+$2E], ch
007CA943   636F64                 arpl    [edi+$64], bp
007CA946   6D                     insd
007CA947   657361                 jnb     007CA9AB
007CA94A   203D206D692E           and     [$2E696D20], bh
007CA950   636F64                 arpl    [edi+$64], bp
007CA953   6D                     insd
007CA954   657361                 jnb     007CA9B8
007CA957   2900                   sub     dword ptr [eax], eax
007CA959   0000                   add     [eax], al

007CA95B   00FF                   add     bh, bh
007CA95D   FFFF                   DB  $FF, $FF  //      
007CA95F   FF1C00                 call    [eax+eax]
007CA962   0000                   add     [eax], al

007CA964   61                     popa
007CA965   6E                     outsb
007CA966   642028                 and     fs:[eax], ch
007CA969   6D                     insd
007CA96A   2E6E                   outsb
007CA96C   756D                   jnz     007CA9DB
007CA96E   6C                     insb
007CA96F   63746F20               arpl    [edi+ebp*2+$20], si
007CA973   3D206D692E             cmp     eax, $2E696D20
007CA978   6E                     outsb
007CA979   756D                   jnz     007CA9E8
007CA97B   6C                     insb
007CA97C   63746F29               arpl    [edi+ebp*2+$29], si
007CA980   0000                   add     [eax], al

007CA982   0000                   add     [eax], al

007CA984   FFFF                   DB  $FF, $FF  //      
007CA986   FFFF                   DB  $FF, $FF  //      
007CA988   0500000077             add     eax, +$77000000

* Possible String Reference to: 'az„o'
|
007CA98D   6865726500             push    $00657265
007CA992   0000                   add     [eax], al

007CA994   FFFF                   DB  $FF, $FF  //      
007CA996   FFFF                   DB  $FF, $FF  //      
007CA998   0D00000028             or      eax, $28000000
007CA99D   6D                     insd
007CA99E   2E636F64               arpl    cs:[edi+$64], bp
007CA9A2   6D                     insd
007CA9A3   657361                 jnb     007CAA07
007CA9A6   203D20000000           and     [$00000020], bh
007CA9AC   FFFF                   DB  $FF, $FF  //      
007CA9AE   FFFF                   DB  $FF, $FF  //      
007CA9B0   1200                   adc     al, byte ptr [eax]
007CA9B2   0000                   add     [eax], al

007CA9B4   2920                   sub     dword ptr [eax], esp
007CA9B6   61                     popa
007CA9B7   6E                     outsb
007CA9B8   642028                 and     fs:[eax], ch
007CA9BB   6D                     insd
007CA9BC   2E7374                 jnb     007CAA33
007CA9BF   61                     popa
007CA9C0   7475                   jz      007CAA37
007CA9C2   7320                   jnb     007CA9E4
007CA9C4   3D200000FF             cmp     eax, $FF000020
007CA9C9   FFFF                   DB  $FF, $FF  //      
007CA9CB   FF01                   inc     dword ptr [ecx]
007CA9CD   0000                   add     [eax], al

007CA9CF   004100                 add     [ecx+$00], al
007CA9D2   0000                   add     [eax], al

007CA9D4   FFFF                   DB  $FF, $FF  //      
007CA9D6   FFFF                   DB  $FF, $FF  //      
007CA9D8   0100                   add     [eax], eax
007CA9DA   0000                   add     [eax], al

007CA9DC   2900                   sub     dword ptr [eax], eax
007CA9DE   0000                   add     [eax], al

007CA9E0   FFFF                   DB  $FF, $FF  //      
007CA9E2   FFFF                   DB  $FF, $FF  //      
007CA9E4   07                     pop     es
007CA9E5   0000                   add     [eax], al

007CA9E7   00756C                 add     [ebp+$6C], dh
007CA9EA   7469                   jz      007CAA55
007CA9EC   7465                   jz      007CAA53
007CA9EE   6D                     insd
007CA9EF   00FF                   add     bh, bh
007CA9F1   FFFF                   DB  $FF, $FF  //      
007CA9F3   FF2B                   jmp     [ebx]
007CA9F5   0000                   add     [eax], al

007CA9F7   004F63                 add     [edi+$63], cl
007CA9FA   6F                     outsd
007CA9FB   7272                   jb      007CAA6F
007CA9FD   657520                 jnz     007CAA20
007CAA00   756D                   jnz     007CAA6F
007CAA02   206572                 and     [ebp+$72], ah
007CAA05   726F                   jb      007CAA76
007CAA07   206E61                 and     [esi+$61], ch
007CAA0A   206675                 and     [esi+$75], ah
007CAA0D   6E                     outsb
007CAA0E   E7E3                   out     $E3, eax
007CAA10   6F                     outsd
007CAA11   205065                 and     [eax+$65], dl
007CAA14   6761                   popa
007CAA16   55                     push    ebp
007CAA17   6C                     insb
007CAA18   7469                   jz      007CAA83
007CAA1A   6D                     insd
007CAA1B   6F                     outsd
007CAA1C   49                     dec     ecx
007CAA1D   7465                   jz      007CAA84
007CAA1F   6D                     insd
007CAA20   2E0D0D000400           or      eax, $0004000D
007CAA26   0000                   add     [eax], al

007CAA28   55                     push    ebp
007CAA29   8BEC                   mov     ebp, esp
007CAA2B   B906000000             mov     ecx, $00000006
007CAA30   6A00                   push    $00
007CAA32   6A00                   push    $00
007CAA34   49                     dec     ecx
007CAA35   75F9                   jnz     007CAA30
007CAA37   53                     push    ebx
007CAA38   8BD8                   mov     ebx, eax
007CAA3A   33C0                   xor     eax, eax
007CAA3C   55                     push    ebp

* Possible String Reference to: 'ÈU¢√ˇÎÂ[ãÂ]√ã¿UãÏ3…QQQQQSãÿ3¿Uh"¨|'
|
007CAA3D   68DEAA7C00             push    $007CAADE

***** TRY
|
007CAA42   64FF30                 push    dword ptr fs:[eax]
007CAA45   648920                 mov     fs:[eax], esp
007CAA48   33D2                   xor     edx, edx
007CAA4A   8B8348030000           mov     eax, [ebx+$0348]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
007CAA50   E81B34D3FF             call    004FDE70
007CAA55   33D2                   xor     edx, edx
007CAA57   8B8350030000           mov     eax, [ebx+$0350]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CAA5D   E89A8CCCFF             call    004936FC
007CAA62   33D2                   xor     edx, edx
007CAA64   8B8384030000           mov     eax, [ebx+$0384]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CAA6A   E88D8CCCFF             call    004936FC
007CAA6F   8D45F0                 lea     eax, [ebp-$10]
007CAA72   33D2                   xor     edx, edx
007CAA74   B101                   mov     cl, $01

|
007CAA76   E8F5DFC4FF             call    00418A70
007CAA7B   8D55F0                 lea     edx, [ebp-$10]
007CAA7E   8B837C030000           mov     eax, [ebx+$037C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CAA84   E80788E8FF             call    00653290
007CAA89   8D45E0                 lea     eax, [ebp-$20]
007CAA8C   33D2                   xor     edx, edx
007CAA8E   B101                   mov     cl, $01

|
007CAA90   E8DBDFC4FF             call    00418A70
007CAA95   8D55E0                 lea     edx, [ebp-$20]
007CAA98   8B836C030000           mov     eax, [ebx+$036C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CAA9E   E8ED87E8FF             call    00653290
007CAAA3   8D45D0                 lea     eax, [ebp-$30]
007CAAA6   33D2                   xor     edx, edx
007CAAA8   B101                   mov     cl, $01

|
007CAAAA   E8C1DFC4FF             call    00418A70
007CAAAF   8D55D0                 lea     edx, [ebp-$30]
007CAAB2   8B8364030000           mov     eax, [ebx+$0364]

* Reference to : TJvValidateEdit._PROC_00653290()
|
007CAAB8   E8D387E8FF             call    00653290
007CAABD   33C0                   xor     eax, eax
007CAABF   5A                     pop     edx
007CAAC0   59                     pop     ecx
007CAAC1   59                     pop     ecx
007CAAC2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√ã¿UãÏ3…QQQQQSãÿ3¿Uh"¨|'
|
007CAAC5   68E5AA7C00             push    $007CAAE5
007CAACA   8D45D0                 lea     eax, [ebp-$30]

* Reference to object Variant
|
007CAACD   8B1524114000           mov     edx, [$00401124]
007CAAD3   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007CAAD8   E8BFB5C3FF             call    0040609C
007CAADD   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CAADE(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CAADE   E955A2C3FF             jmp     00404D38

|
007CAAE3   EBE5                   jmp     007CAACA
007CAAE5   5B                     pop     ebx
007CAAE6   8BE5                   mov     esp, ebp
007CAAE8   5D                     pop     ebp
007CAAE9   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CAE31(Sender : TObject);
begin
(*
007CAE31   6E                     outsb
007CAE32   696461646500FFFF       imul    esp, [ecx+$64], $FFFF0065
007CAE3A   FFFF                   DB  $FF, $FF  //      
007CAE3C   0400                   add     al, +$00
007CAE3E   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CAE61(Sender : TObject);
begin
(*
007CAE61   4E                     dec     esi
007CAE62   49                     dec     ecx
007CAE63   44                     inc     esp
007CAE64   4D                     dec     ebp
007CAE65   45                     inc     ebp
007CAE66   44                     inc     esp
007CAE67   00FF                   add     bh, bh
007CAE69   FFFF                   DB  $FF, $FF  //      
007CAE6B   FF0B                   dec     dword ptr [ebx]
007CAE6D   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CAE75(Sender : TObject);
begin
(*
007CAE75   4E                     dec     esi
007CAE76   49                     dec     ecx
007CAE77   44                     inc     esp
007CAE78   4D                     dec     ebp
007CAE79   45                     inc     ebp
007CAE7A   44                     inc     esp
007CAE7B   00FF                   add     bh, bh
007CAE7D   FFFF                   DB  $FF, $FF  //      
007CAE7F   FF07                   inc     dword ptr [edi]
007CAE81   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CAE88(Sender : TObject);
begin
(*
007CAE88   4E                     dec     esi
007CAE89   49                     dec     ecx
007CAE8A   54                     push    esp
007CAE8B   00FF                   add     bh, bh
007CAE8D   FFFF                   DB  $FF, $FF  //      
007CAE8F   FF08                   dec     dword ptr [eax]
007CAE91   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CAE99(Sender : TObject);
begin
(*
007CAE99   4E                     dec     esi
007CAE9A   49                     dec     ecx
007CAE9B   44                     inc     esp
007CAE9C   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CAEA9(Sender : TObject);
begin
(*
007CAEA9   6E                     outsb
007CAEAA   69644D656400558B       imul    esp, [ebp+ecx*2+$65], $8B550064
007CAEB2   EC                     in      al, dx
007CAEB3   A17CB37D00             mov     eax, dword ptr [$007DB37C]
007CAEB8   8B00                   mov     eax, [eax]
007CAEBA   8B8030020000           mov     eax, [eax+$0230]
007CAEC0   8B10                   mov     edx, [eax]
007CAEC2   FF5258                 call    dword ptr [edx+$58]
007CAEC5   48                     dec     eax
007CAEC6   7504                   jnz     007CAECC
007CAEC8   B00F                   mov     al, $0F
007CAECA   5D                     pop     ebp
007CAECB   C3                     ret

007CAECC   33C0                   xor     eax, eax
007CAECE   5D                     pop     ebp
007CAECF   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CAED0(Sender : TObject);
begin
(*
007CAED0   55                     push    ebp
007CAED1   8BEC                   mov     ebp, esp
007CAED3   B917000000             mov     ecx, $00000017
007CAED8   6A00                   push    $00
007CAEDA   6A00                   push    $00
007CAEDC   49                     dec     ecx
007CAEDD   75F9                   jnz     007CAED8
007CAEDF   51                     push    ecx
007CAEE0   53                     push    ebx
007CAEE1   56                     push    esi
007CAEE2   57                     push    edi
007CAEE3   8BF0                   mov     esi, eax
007CAEE5   33C0                   xor     eax, eax
007CAEE7   55                     push    ebp
007CAEE8   682FB57C00             push    $007CB52F

***** TRY
|
007CAEED   64FF30                 push    dword ptr fs:[eax]
007CAEF0   648920                 mov     fs:[eax], esp
007CAEF3   C645FF00               mov     byte ptr [ebp-$01], $00
007CAEF7   33C9                   xor     ecx, ecx
007CAEF9   B201                   mov     dl, $01

* Reference to class tArrayTable
|
007CAEFB   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
007CAF00   E813C5FEFF             call    007B7418
007CAF05   8945CC                 mov     [ebp-$34], eax
007CAF08   33C9                   xor     ecx, ecx
007CAF0A   B201                   mov     dl, $01

* Reference to class tArrayTable
|
007CAF0C   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
007CAF11   E802C5FEFF             call    007B7418
007CAF16   8945BC                 mov     [ebp-$44], eax
007CAF19   33D2                   xor     edx, edx
007CAF1B   55                     push    ebp
007CAF1C   68B5B47C00             push    $007CB4B5

***** TRY
|
007CAF21   64FF32                 push    dword ptr fs:[edx]
007CAF24   648922                 mov     fs:[edx], esp
007CAF27   33D2                   xor     edx, edx
007CAF29   55                     push    ebp
007CAF2A   6856B47C00             push    $007CB456

***** TRY
|
007CAF2F   64FF32                 push    dword ptr fs:[edx]
007CAF32   648922                 mov     fs:[edx], esp
007CAF35   6A01                   push    $01
007CAF37   8D45D0                 lea     eax, [ebp-$30]
007CAF3A   50                     push    eax
007CAF3B   8D55B0                 lea     edx, [ebp-$50]
007CAF3E   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CAF43   8B00                   mov     eax, [eax]
007CAF45   8B80B4050000           mov     eax, [eax+$05B4]
007CAF4B   8B08                   mov     ecx, [eax]
007CAF4D   FF5160                 call    dword ptr [ecx+$60]
007CAF50   8B45B0                 mov     eax, [ebp-$50]
007CAF53   8945B4                 mov     [ebp-$4C], eax
007CAF56   8D55AC                 lea     edx, [ebp-$54]
007CAF59   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CAF5E   8B00                   mov     eax, [eax]
007CAF60   8B80B8050000           mov     eax, [eax+$05B8]
007CAF66   8B08                   mov     ecx, [eax]
007CAF68   FF5160                 call    dword ptr [ecx+$60]
007CAF6B   8B45AC                 mov     eax, [ebp-$54]
007CAF6E   8945B8                 mov     [ebp-$48], eax
007CAF71   8D45B4                 lea     eax, [ebp-$4C]
007CAF74   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
007CAF75   B848B57C00             mov     eax, $007CB548
007CAF7A   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'NUMLCTO'
|
007CAF7D   B858B57C00             mov     eax, $007CB558
007CAF82   8945A8                 mov     [ebp-$58], eax
007CAF85   8D45A4                 lea     eax, [ebp-$5C]
007CAF88   BA01000000             mov     edx, $00000001
007CAF8D   59                     pop     ecx

|
007CAF8E   E82D4FFEFF             call    007AFEC0
007CAF93   8D45A0                 lea     eax, [ebp-$60]
007CAF96   50                     push    eax

* Possible String Reference to: '(STATUS <> '
|
007CAF97   6868B57C00             push    $007CB568
007CAF9C   8D5598                 lea     edx, [ebp-$68]
007CAF9F   B87CB57C00             mov     eax, $007CB57C

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CAFA4   E8778BFDFF             call    007A3B20
007CAFA9   FF7598                 push    dword ptr [ebp-$68]
007CAFAC   6888B57C00             push    $007CB588
007CAFB1   8D459C                 lea     eax, [ebp-$64]
007CAFB4   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007CAFB9   E85EA8C3FF             call    0040581C
007CAFBE   8B559C                 mov     edx, [ebp-$64]

* Possible String Reference to: 'AND'
|
007CAFC1   B994B57C00             mov     ecx, $007CB594
007CAFC6   8B45D0                 mov     eax, [ebp-$30]

* Reference to : TFrmInfoAtu._PROC_007AFE20()
|
007CAFC9   E8524EFEFF             call    007AFE20
007CAFCE   8B55A0                 mov     edx, [ebp-$60]
007CAFD1   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
007CAFD4   E85BA5C3FF             call    00405534
007CAFD9   8D4594                 lea     eax, [ebp-$6C]
007CAFDC   50                     push    eax

* Possible String Reference to: '((IMPRESSO <> '
|
007CAFDD   68A0B57C00             push    $007CB5A0
007CAFE2   8D558C                 lea     edx, [ebp-$74]
007CAFE5   B8B8B57C00             mov     eax, $007CB5B8

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CAFEA   E8318BFDFF             call    007A3B20
007CAFEF   FF758C                 push    dword ptr [ebp-$74]

* Possible String Reference to: ') OR (IMPRESSO IS NULL))'
|
007CAFF2   68C4B57C00             push    $007CB5C4
007CAFF7   8D4590                 lea     eax, [ebp-$70]
007CAFFA   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007CAFFF   E818A8C3FF             call    0040581C
007CB004   8B5590                 mov     edx, [ebp-$70]

* Possible String Reference to: 'AND'
|
007CB007   B994B57C00             mov     ecx, $007CB594
007CB00C   8B45D0                 mov     eax, [ebp-$30]

* Reference to : TFrmInfoAtu._PROC_007AFE20()
|
007CB00F   E80C4EFEFF             call    007AFE20
007CB014   8B5594                 mov     edx, [ebp-$6C]
007CB017   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
007CB01A   E815A5C3FF             call    00405534
007CB01F   8B45D0                 mov     eax, [ebp-$30]
007CB022   50                     push    eax

* Possible String Reference to: 'CODIMPR'
|
007CB023   68E8B57C00             push    $007CB5E8

* Possible String Reference to: 'CODMESA'
|
007CB028   B848B57C00             mov     eax, $007CB548
007CB02D   894580                 mov     [ebp-$80], eax

* Possible String Reference to: 'NUMLCTO'
|
007CB030   B858B57C00             mov     eax, $007CB558
007CB035   894584                 mov     [ebp-$7C], eax

* Possible String Reference to: 'ITEM'
|
007CB038   B8F8B57C00             mov     eax, $007CB5F8
007CB03D   894588                 mov     [ebp-$78], eax
007CB040   8D4580                 lea     eax, [ebp-$80]
007CB043   50                     push    eax
007CB044   6A02                   push    $02
007CB046   6A01                   push    $01
007CB048   33C0                   xor     eax, eax

|
007CB04A   E87DD3FDFF             call    007A83CC
007CB04F   8BD0                   mov     edx, eax

* Possible String Reference to: 'MESAITEM'
|
007CB051   B908B67C00             mov     ecx, $007CB608
007CB056   8B45CC                 mov     eax, [ebp-$34]

* Reference to : tArrayTable._PROC_007B8E10()
|
007CB059   E8B2DDFEFF             call    007B8E10
007CB05E   84C0                   test    al, al
007CB060   0F84E6030000           jz      007CB44C
007CB066   8B45CC                 mov     eax, [ebp-$34]

* Reference to : tArrayTable._PROC_007B8B80()
|
007CB069   E812DBFEFF             call    007B8B80
007CB06E   85C0                   test    eax, eax
007CB070   0F8ED2030000           jle     007CB448
007CB076   C745D428000000         mov     dword ptr [ebp-$2C], $00000028
007CB07D   8B45CC                 mov     eax, [ebp-$34]

|
007CB080   E81BD3FEFF             call    007B83A0

* Possible String Reference to: 'CodImpr'
|
007CB085   BA1CB67C00             mov     edx, $007CB61C
007CB08A   8B45CC                 mov     eax, [ebp-$34]

|
007CB08D   E8A2CBFEFF             call    007B7C34
007CB092   8945C4                 mov     [ebp-$3C], eax
007CB095   C645C300               mov     byte ptr [ebp-$3D], $00
007CB099   E9A5020000             jmp     007CB343
007CB09E   8D4DF8                 lea     ecx, [ebp-$08]

* Possible String Reference to: 'CODPROD'
|
007CB0A1   BA2CB67C00             mov     edx, $007CB62C
007CB0A6   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB0A9   E88ACCFEFF             call    007B7D38
007CB0AE   8D4DF4                 lea     ecx, [ebp-$0C]

* Possible String Reference to: 'DESCRPROD'
|
007CB0B1   BA3CB67C00             mov     edx, $007CB63C
007CB0B6   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB0B9   E87ACCFEFF             call    007B7D38
007CB0BE   8D4DF0                 lea     ecx, [ebp-$10]

* Possible String Reference to: 'CodFunc'
|
007CB0C1   BA50B67C00             mov     edx, $007CB650
007CB0C6   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB0C9   E86ACCFEFF             call    007B7D38
007CB0CE   8D4DEC                 lea     ecx, [ebp-$14]

* Possible String Reference to: 'Historico'
|
007CB0D1   BA60B67C00             mov     edx, $007CB660
007CB0D6   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB0D9   E85ACCFEFF             call    007B7D38
007CB0DE   8D4DE8                 lea     ecx, [ebp-$18]

* Possible String Reference to: 'Viagem'
|
007CB0E1   BA74B67C00             mov     edx, $007CB674
007CB0E6   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB0E9   E84ACCFEFF             call    007B7D38

* Possible String Reference to: 'QTDELCTO'
|
007CB0EE   BA84B67C00             mov     edx, $007CB684
007CB0F3   8B45CC                 mov     eax, [ebp-$34]

|
007CB0F6   E82DCAFEFF             call    007B7B28
007CB0FB   DB7DD8                 fstp    tbyte ptr [ebp-$28]
007CB0FE   9B                     wait

* Possible String Reference to: 'CodImpr'
|
007CB0FF   BA1CB67C00             mov     edx, $007CB61C
007CB104   8B45CC                 mov     eax, [ebp-$34]

|
007CB107   E828CBFEFF             call    007B7C34
007CB10C   8945C8                 mov     [ebp-$38], eax
007CB10F   8D8D7CFFFFFF           lea     ecx, [ebp+$FFFFFF7C]

* Possible String Reference to: 'Kit'
|
007CB115   BA98B67C00             mov     edx, $007CB698
007CB11A   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB11D   E816CCFEFF             call    007B7D38
007CB122   8B857CFFFFFF           mov     eax, [ebp+$FFFFFF7C]
007CB128   BAA4B67C00             mov     edx, $007CB6A4

* Reference to: System.@LStrCmp;
|
007CB12D   E876A7C3FF             call    004058A8
007CB132   0F94C3                 setz    bl
007CB135   8D8D78FFFFFF           lea     ecx, [ebp+$FFFFFF78]

* Possible String Reference to: 'Montado'
|
007CB13B   BAB0B67C00             mov     edx, $007CB6B0
007CB140   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB143   E8F0CBFEFF             call    007B7D38
007CB148   8B8578FFFFFF           mov     eax, [ebp+$FFFFFF78]
007CB14E   BAA4B67C00             mov     edx, $007CB6A4

* Reference to: System.@LStrCmp;
|
007CB153   E850A7C3FF             call    004058A8
007CB158   0F858E010000           jnz     007CB2EC
007CB15E   6A00                   push    $00
007CB160   8D45D0                 lea     eax, [ebp-$30]
007CB163   50                     push    eax
007CB164   8B45F8                 mov     eax, [ebp-$08]
007CB167   898574FFFFFF           mov     [ebp+$FFFFFF74], eax
007CB16D   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]
007CB173   50                     push    eax

* Possible String Reference to: 'CODPROD'
|
007CB174   B82CB67C00             mov     eax, $007CB62C
007CB179   898570FFFFFF           mov     [ebp+$FFFFFF70], eax
007CB17F   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]
007CB185   33D2                   xor     edx, edx
007CB187   59                     pop     ecx

|
007CB188   E8334DFEFF             call    007AFEC0
007CB18D   8B45D0                 mov     eax, [ebp-$30]
007CB190   50                     push    eax

* Possible String Reference to: 'CODPROD'
|
007CB191   682CB67C00             push    $007CB62C

* Possible String Reference to: 'CODPROD'
|
007CB196   B82CB67C00             mov     eax, $007CB62C
007CB19B   8945B4                 mov     [ebp-$4C], eax

* Possible String Reference to: 'CODMATPRIMA'
|
007CB19E   B8C0B67C00             mov     eax, $007CB6C0
007CB1A3   8945B8                 mov     [ebp-$48], eax
007CB1A6   8D45B4                 lea     eax, [ebp-$4C]
007CB1A9   50                     push    eax
007CB1AA   6A01                   push    $01
007CB1AC   6A01                   push    $01
007CB1AE   33C0                   xor     eax, eax

|
007CB1B0   E817D2FDFF             call    007A83CC
007CB1B5   8BD0                   mov     edx, eax

* Possible String Reference to: 'PRODITEM'
|
007CB1B7   B9D4B67C00             mov     ecx, $007CB6D4
007CB1BC   8B45BC                 mov     eax, [ebp-$44]

* Reference to : tArrayTable._PROC_007B8E10()
|
007CB1BF   E84CDCFEFF             call    007B8E10
007CB1C4   84C0                   test    al, al
007CB1C6   0F846F010000           jz      007CB33B
007CB1CC   8B45BC                 mov     eax, [ebp-$44]

* Reference to : tArrayTable._PROC_007B8B80()
|
007CB1CF   E8ACD9FEFF             call    007B8B80
007CB1D4   85C0                   test    eax, eax
007CB1D6   0F8EBF000000           jle     007CB29B
007CB1DC   8B45BC                 mov     eax, [ebp-$44]

|
007CB1DF   E8BCD1FEFF             call    007B83A0
007CB1E4   E99D000000             jmp     007CB286
007CB1E9   8D4DF8                 lea     ecx, [ebp-$08]

* Possible String Reference to: 'CODMATPRIMA'
|
007CB1EC   BAC0B67C00             mov     edx, $007CB6C0
007CB1F1   8B45BC                 mov     eax, [ebp-$44]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB1F4   E83FCBFEFF             call    007B7D38
007CB1F9   8B45F8                 mov     eax, [ebp-$08]

|
007CB1FC   E82F93FEFF             call    007B4530
007CB201   8945C8                 mov     [ebp-$38], eax
007CB204   8D55F4                 lea     edx, [ebp-$0C]
007CB207   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CB20C   8B00                   mov     eax, [eax]
007CB20E   8B8014060000           mov     eax, [eax+$0614]
007CB214   8B08                   mov     ecx, [eax]
007CB216   FF5160                 call    dword ptr [ecx+$60]

* Possible String Reference to: 'QTDE'
|
007CB219   BAE8B67C00             mov     edx, $007CB6E8
007CB21E   8B45BC                 mov     eax, [ebp-$44]

|
007CB221   E802C9FEFF             call    007B7B28
007CB226   DB6DD8                 fld     tbyte ptr [ebp-$28]
007CB229   DEC9                   fmulp   st(1), st(0)
007CB22B   DB7DD8                 fstp    tbyte ptr [ebp-$28]
007CB22E   9B                     wait
007CB22F   8B45F0                 mov     eax, [ebp-$10]
007CB232   50                     push    eax
007CB233   8B45E8                 mov     eax, [ebp-$18]
007CB236   50                     push    eax
007CB237   8B45EC                 mov     eax, [ebp-$14]
007CB23A   50                     push    eax
007CB23B   8D45C4                 lea     eax, [ebp-$3C]
007CB23E   50                     push    eax
007CB23F   8D45C8                 lea     eax, [ebp-$38]
007CB242   50                     push    eax
007CB243   8D45D4                 lea     eax, [ebp-$2C]
007CB246   50                     push    eax
007CB247   8D45C3                 lea     eax, [ebp-$3D]
007CB24A   50                     push    eax
007CB24B   668B45E0               mov     ax, word ptr [ebp-$20]
007CB24F   50                     push    eax
007CB250   FF75DC                 push    dword ptr [ebp-$24]
007CB253   FF75D8                 push    dword ptr [ebp-$28]
007CB256   53                     push    ebx
007CB257   8D8D6CFFFFFF           lea     ecx, [ebp+$FFFFFF6C]

* Possible String Reference to: 'CODPROD'
|
007CB25D   BA2CB67C00             mov     edx, $007CB62C
007CB262   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB265   E8CECAFEFF             call    007B7D38
007CB26A   8B856CFFFFFF           mov     eax, [ebp+$FFFFFF6C]
007CB270   50                     push    eax
007CB271   8B4DF4                 mov     ecx, [ebp-$0C]
007CB274   8B55F8                 mov     edx, [ebp-$08]
007CB277   8BC6                   mov     eax, esi

|
007CB279   E8BA040000             call    007CB738
007CB27E   8B45BC                 mov     eax, [ebp-$44]

|
007CB281   E86ED4FEFF             call    007B86F4
007CB286   8B45BC                 mov     eax, [ebp-$44]

|
007CB289   E8AAC5FEFF             call    007B7838
007CB28E   84C0                   test    al, al
007CB290   0F8453FFFFFF           jz      007CB1E9
007CB296   E9A0000000             jmp     007CB33B
007CB29B   8B45F0                 mov     eax, [ebp-$10]
007CB29E   50                     push    eax
007CB29F   8B45E8                 mov     eax, [ebp-$18]
007CB2A2   50                     push    eax
007CB2A3   8B45EC                 mov     eax, [ebp-$14]
007CB2A6   50                     push    eax
007CB2A7   8D45C4                 lea     eax, [ebp-$3C]
007CB2AA   50                     push    eax
007CB2AB   8D45C8                 lea     eax, [ebp-$38]
007CB2AE   50                     push    eax
007CB2AF   8D45D4                 lea     eax, [ebp-$2C]
007CB2B2   50                     push    eax
007CB2B3   8D45C3                 lea     eax, [ebp-$3D]
007CB2B6   50                     push    eax
007CB2B7   668B45E0               mov     ax, word ptr [ebp-$20]
007CB2BB   50                     push    eax
007CB2BC   FF75DC                 push    dword ptr [ebp-$24]
007CB2BF   FF75D8                 push    dword ptr [ebp-$28]
007CB2C2   53                     push    ebx
007CB2C3   8D8D68FFFFFF           lea     ecx, [ebp+$FFFFFF68]

* Possible String Reference to: 'CODPROD'
|
007CB2C9   BA2CB67C00             mov     edx, $007CB62C
007CB2CE   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB2D1   E862CAFEFF             call    007B7D38
007CB2D6   8B8568FFFFFF           mov     eax, [ebp+$FFFFFF68]
007CB2DC   50                     push    eax
007CB2DD   8B4DF4                 mov     ecx, [ebp-$0C]
007CB2E0   8B55F8                 mov     edx, [ebp-$08]
007CB2E3   8BC6                   mov     eax, esi

|
007CB2E5   E84E040000             call    007CB738
007CB2EA   EB4F                   jmp     007CB33B
007CB2EC   8B45F0                 mov     eax, [ebp-$10]
007CB2EF   50                     push    eax
007CB2F0   8B45E8                 mov     eax, [ebp-$18]
007CB2F3   50                     push    eax
007CB2F4   8B45EC                 mov     eax, [ebp-$14]
007CB2F7   50                     push    eax
007CB2F8   8D45C4                 lea     eax, [ebp-$3C]
007CB2FB   50                     push    eax
007CB2FC   8D45C8                 lea     eax, [ebp-$38]
007CB2FF   50                     push    eax
007CB300   8D45D4                 lea     eax, [ebp-$2C]
007CB303   50                     push    eax
007CB304   8D45C3                 lea     eax, [ebp-$3D]
007CB307   50                     push    eax
007CB308   668B45E0               mov     ax, word ptr [ebp-$20]
007CB30C   50                     push    eax
007CB30D   FF75DC                 push    dword ptr [ebp-$24]
007CB310   FF75D8                 push    dword ptr [ebp-$28]
007CB313   53                     push    ebx
007CB314   8D8D64FFFFFF           lea     ecx, [ebp+$FFFFFF64]

* Possible String Reference to: 'CODPROD'
|
007CB31A   BA2CB67C00             mov     edx, $007CB62C
007CB31F   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
007CB322   E811CAFEFF             call    007B7D38
007CB327   8B8564FFFFFF           mov     eax, [ebp+$FFFFFF64]
007CB32D   50                     push    eax
007CB32E   8B4DF4                 mov     ecx, [ebp-$0C]
007CB331   8B55F8                 mov     edx, [ebp-$08]
007CB334   8BC6                   mov     eax, esi

|
007CB336   E8FD030000             call    007CB738
007CB33B   8B45CC                 mov     eax, [ebp-$34]

|
007CB33E   E8B1D3FEFF             call    007B86F4
007CB343   8B45CC                 mov     eax, [ebp-$34]

|
007CB346   E8EDC4FEFF             call    007B7838
007CB34B   84C0                   test    al, al
007CB34D   0F844BFDFFFF           jz      007CB09E
007CB353   A17CB37D00             mov     eax, dword ptr [$007DB37C]
007CB358   8B00                   mov     eax, [eax]
007CB35A   8B406C                 mov     eax, [eax+$6C]
007CB35D   8B10                   mov     edx, [eax]
007CB35F   FF5258                 call    dword ptr [edx+$58]
007CB362   8BD8                   mov     ebx, eax
007CB364   85DB                   test    ebx, ebx
007CB366   7E61                   jle     007CB3C9
007CB368   8BC6                   mov     eax, esi

|
007CB36A   E841FBFFFF             call    007CAEB0
007CB36F   8BD0                   mov     edx, eax
007CB371   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]
007CB377   885001                 mov     [eax+$01], dl
007CB37A   C60001                 mov     byte ptr [eax], $01
007CB37D   8D955CFFFFFF           lea     edx, [ebp+$FFFFFF5C]
007CB383   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]

* Reference to: System.@PStrCpy(PShortString;PShortString);
|
007CB389   E81680C3FF             call    004033A4
007CB38E   BAF0B67C00             mov     edx, $007CB6F0
007CB393   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
007CB399   B102                   mov     cl, $02

* Reference to: System.@PStrNCat;
|
007CB39B   E8D47FC3FF             call    00403374
007CB3A0   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
007CB3A6   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Reference to: System.@LStrFromString(String;String;ShortString;ShortString);
|
007CB3AC   E84FA3C3FF             call    00405700
007CB3B1   8B9560FFFFFF           mov     edx, [ebp+$FFFFFF60]
007CB3B7   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB3BC   8B00                   mov     eax, [eax]
007CB3BE   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CB3C1   E80EF5DCFF             call    0059A8D4
007CB3C6   4B                     dec     ebx
007CB3C7   759F                   jnz     007CB368
007CB3C9   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB3CE   8B00                   mov     eax, [eax]
007CB3D0   8B4068                 mov     eax, [eax+$68]

|
007CB3D3   E808F4DCFF             call    0059A7E0
007CB3D8   8B45CC                 mov     eax, [ebp-$34]

|
007CB3DB   E8C0CFFEFF             call    007B83A0
007CB3E0   EB43                   jmp     007CB425
007CB3E2   B053                   mov     al, $53
007CB3E4   88855DFFFFFF           mov     [ebp+$FFFFFF5D], al
007CB3EA   C6855CFFFFFF01         mov     byte ptr [ebp+$FFFFFF5C], $01
007CB3F1   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
007CB3F7   8D955CFFFFFF           lea     edx, [ebp+$FFFFFF5C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
007CB3FD   E8EED8C4FF             call    00418CF0
007CB402   8D8D48FFFFFF           lea     ecx, [ebp+$FFFFFF48]

* Possible String Reference to: 'Impresso'
|
007CB408   BAFCB67C00             mov     edx, $007CB6FC
007CB40D   8B45CC                 mov     eax, [ebp-$34]

* Reference to : tArrayTable._PROC_007B767C()
|
007CB410   E867C2FEFF             call    007B767C
007CB415   8B45CC                 mov     eax, [ebp-$34]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
007CB418   E8BFE9FEFF             call    007B9DDC
007CB41D   8B45CC                 mov     eax, [ebp-$34]

|
007CB420   E8CFD2FEFF             call    007B86F4
007CB425   8B45CC                 mov     eax, [ebp-$34]

|
007CB428   E80BC4FEFF             call    007B7838
007CB42D   84C0                   test    al, al
007CB42F   74B1                   jz      007CB3E2
007CB431   33C0                   xor     eax, eax

|
007CB433   E894CFFDFF             call    007A83CC
007CB438   8BC8                   mov     ecx, eax
007CB43A   8A1508B77C00           mov     dl, byte ptr [$007CB708]
007CB440   8B45CC                 mov     eax, [ebp-$34]

* Reference to : tArrayTable._PROC_007B91FC()
|
007CB443   E8B4DDFEFF             call    007B91FC
007CB448   C645FF01               mov     byte ptr [ebp-$01], $01
007CB44C   33C0                   xor     eax, eax
007CB44E   5A                     pop     edx
007CB44F   59                     pop     ecx
007CB450   59                     pop     ecx
007CB451   648910                 mov     fs:[eax], edx
007CB454   EB41                   jmp     007CB497

* Reference to: System.@HandleOnException;
|
007CB456   E95597C3FF             jmp     00404BB0
007CB45B   0100                   add     [eax], eax
007CB45D   0000                   add     [eax], al
007CB45F   40                     inc     eax
007CB460   95                     xchg    eax, ebp
007CB461   40                     inc     eax
007CB462   0067B4                 add     [edi-$4C], ah
007CB465   7C00                   jl      007CB467
007CB467   89C3                   mov     ebx, eax
007CB469   6A00                   push    $00
007CB46B   8B4B04                 mov     ecx, [ebx+$04]
007CB46E   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Possible String Reference to: 'Erro ao imprimir os itens!'
|
007CB474   BA14B77C00             mov     edx, $007CB714

* Reference to: System.@LStrCat3;
|
007CB479   E82AA3C3FF             call    004057A8
007CB47E   8B8544FFFFFF           mov     eax, [ebp+$FFFFFF44]
007CB484   668B0D34B77C00         mov     cx, word ptr [$007CB734]
007CB48B   33D2                   xor     edx, edx

|
007CB48D   E89A86C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CB492   E8199AC3FF             call    00404EB0

****** END
|
007CB497   33C0                   xor     eax, eax
007CB499   5A                     pop     edx
007CB49A   59                     pop     ecx
007CB49B   59                     pop     ecx
007CB49C   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CB49F   68BCB47C00             push    $007CB4BC
007CB4A4   8B45CC                 mov     eax, [ebp-$34]

* Reference to: System.TObject.Free(TObject);
|
007CB4A7   E8F090C3FF             call    0040459C
007CB4AC   8B45BC                 mov     eax, [ebp-$44]

* Reference to: System.TObject.Free(TObject);
|
007CB4AF   E8E890C3FF             call    0040459C
007CB4B4   C3                     ret


* Reference to: System.@HandleFinally;
|
007CB4B5   E97E98C3FF             jmp     00404D38
007CB4BA   EBE8                   jmp     007CB4A4

****** END
|
007CB4BC   33C0                   xor     eax, eax
007CB4BE   5A                     pop     edx
007CB4BF   59                     pop     ecx
007CB4C0   59                     pop     ecx
007CB4C1   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CB4C4   6836B57C00             push    $007CB536
007CB4C9   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Reference to: System.@LStrClr(void;void);
|
007CB4CF   E8C89FC3FF             call    0040549C
007CB4D4   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007CB4DA   E89990C4FF             call    00414578
007CB4DF   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
007CB4E5   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB4EA   E8D19FC3FF             call    004054C0
007CB4EF   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
007CB4F5   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB4FA   E8C19FC3FF             call    004054C0
007CB4FF   8D458C                 lea     eax, [ebp-$74]
007CB502   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB507   E8B49FC3FF             call    004054C0
007CB50C   8D45AC                 lea     eax, [ebp-$54]
007CB50F   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB514   E8A79FC3FF             call    004054C0
007CB519   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
007CB51C   E87B9FC3FF             call    0040549C
007CB521   8D45E8                 lea     eax, [ebp-$18]
007CB524   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB529   E8929FC3FF             call    004054C0
007CB52E   C3                     ret


* Reference to: System.@HandleFinally;
|
007CB52F   E90498C3FF             jmp     00404D38
007CB534   EB93                   jmp     007CB4C9

****** END
|
007CB536   8A45FF                 mov     al, byte ptr [ebp-$01]
007CB539   5F                     pop     edi
007CB53A   5E                     pop     esi
007CB53B   5B                     pop     ebx
007CB53C   8BE5                   mov     esp, ebp
007CB53E   5D                     pop     ebp
007CB53F   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CB4B5(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CB4B5   E97E98C3FF             jmp     00404D38

|
007CB4BA   EBE8                   jmp     007CB4A4
007CB4BC   33C0                   xor     eax, eax
007CB4BE   5A                     pop     edx
007CB4BF   59                     pop     ecx
007CB4C0   59                     pop     ecx
007CB4C1   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CB4C4   6836B57C00             push    $007CB536
007CB4C9   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Reference to: System.@LStrClr(void;void);
|
007CB4CF   E8C89FC3FF             call    0040549C
007CB4D4   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007CB4DA   E89990C4FF             call    00414578
007CB4DF   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
007CB4E5   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB4EA   E8D19FC3FF             call    004054C0
007CB4EF   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
007CB4F5   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB4FA   E8C19FC3FF             call    004054C0
007CB4FF   8D458C                 lea     eax, [ebp-$74]
007CB502   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB507   E8B49FC3FF             call    004054C0
007CB50C   8D45AC                 lea     eax, [ebp-$54]
007CB50F   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB514   E8A79FC3FF             call    004054C0
007CB519   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
007CB51C   E87B9FC3FF             call    0040549C
007CB521   8D45E8                 lea     eax, [ebp-$18]
007CB524   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CB529   E8929FC3FF             call    004054C0
007CB52E   C3                     ret


* Reference to: System.@HandleFinally;
|
007CB52F   E90498C3FF             jmp     00404D38
007CB534   EB93                   jmp     007CB4C9

****** END
|
007CB536   8A45FF                 mov     al, byte ptr [ebp-$01]
007CB539   5F                     pop     edi
007CB53A   5E                     pop     esi
007CB53B   5B                     pop     ebx
007CB53C   8BE5                   mov     esp, ebp
007CB53E   5D                     pop     ebp
007CB53F   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CB55A(Sender : TObject);
begin
(*
007CB55A   4D                     dec     ebp
007CB55B   4C                     dec     esp
007CB55C   43                     inc     ebx
007CB55D   54                     push    esp
007CB55E   4F                     dec     edi
007CB55F   00FF                   add     bh, bh
007CB561   FFFF                   DB  $FF, $FF  //      
007CB563   FF0B                   dec     dword ptr [ebx]
007CB565   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CB56E(Sender : TObject);
begin
(*
007CB56E   53                     push    ebx
007CB56F   203C3E                 and     [esi+edi], bh
007CB572   2000                   and     [eax], al
007CB574   FFFF                   DB  $FF, $FF  //      
007CB576   FFFF                   DB  $FF, $FF  //      
007CB578   0100                   add     [eax], eax
007CB57A   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CB5D8(Sender : TObject);
begin
(*
007CB5D8   4C                     dec     esp
007CB5D9   4C                     dec     esp
007CB5DA   2929                   sub     dword ptr [ecx], ebp
007CB5DC   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CB739(Sender : TObject);
begin
(*
007CB739   8BEC                   mov     ebp, esp
007CB73B   51                     push    ecx
007CB73C   B91A000000             mov     ecx, $0000001A
007CB741   6A00                   push    $00
007CB743   6A00                   push    $00
007CB745   49                     dec     ecx
007CB746   75F9                   jnz     007CB741
007CB748   874DFC                 xchg    [ebp-$04], ecx
007CB74B   53                     push    ebx
007CB74C   56                     push    esi
007CB74D   57                     push    edi
007CB74E   894DFC                 mov     [ebp-$04], ecx
007CB751   8BF0                   mov     esi, eax
007CB753   8B7D20                 mov     edi, [ebp+$20]
007CB756   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CB759   E8EEA1C3FF             call    0040594C
007CB75E   8B4534                 mov     eax, [ebp+$34]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CB761   E8E6A1C3FF             call    0040594C
007CB766   8B4530                 mov     eax, [ebp+$30]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CB769   E8DEA1C3FF             call    0040594C
007CB76E   8B452C                 mov     eax, [ebp+$2C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CB771   E8D6A1C3FF             call    0040594C
007CB776   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CB779   E8CEA1C3FF             call    0040594C
007CB77E   33C0                   xor     eax, eax
007CB780   55                     push    ebp

* Possible String Reference to: 'È@è√ˇÎÜäE˚_^[ãÂ]¬0'
|
007CB781   68F3BD7C00             push    $007CBDF3

***** TRY
|
007CB786   64FF30                 push    dword ptr fs:[eax]
007CB789   648920                 mov     fs:[eax], esp
007CB78C   C645FB00               mov     byte ptr [ebp-$05], $00
007CB790   33D2                   xor     edx, edx
007CB792   55                     push    ebp
007CB793   686CBD7C00             push    $007CBD6C

***** TRY
|
007CB798   64FF32                 push    dword ptr fs:[edx]
007CB79B   648922                 mov     fs:[edx], esp
007CB79E   33D2                   xor     edx, edx
007CB7A0   55                     push    ebp
007CB7A1   681DBD7C00             push    $007CBD1D

***** TRY
|
007CB7A6   64FF32                 push    dword ptr fs:[edx]
007CB7A9   648922                 mov     fs:[edx], esp
007CB7AC   8B4528                 mov     eax, [ebp+$28]
007CB7AF   8B00                   mov     eax, [eax]
007CB7B1   8B5524                 mov     edx, [ebp+$24]
007CB7B4   3B02                   cmp     eax, [edx]
007CB7B6   0F8480000000           jz      007CB83C
007CB7BC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
007CB7C1   8B00                   mov     eax, [eax]
007CB7C3   8B406C                 mov     eax, [eax+$6C]
007CB7C6   8B10                   mov     edx, [eax]
007CB7C8   FF5258                 call    dword ptr [edx+$58]
007CB7CB   8BD8                   mov     ebx, eax
007CB7CD   85DB                   test    ebx, ebx
007CB7CF   7E4C                   jle     007CB81D
007CB7D1   8BC6                   mov     eax, esi

|
007CB7D3   E8D8F6FFFF             call    007CAEB0
007CB7D8   8BD0                   mov     edx, eax
007CB7DA   8D45EC                 lea     eax, [ebp-$14]
007CB7DD   885001                 mov     [eax+$01], dl
007CB7E0   C60001                 mov     byte ptr [eax], $01
007CB7E3   8D55EC                 lea     edx, [ebp-$14]
007CB7E6   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@PStrCpy(PShortString;PShortString);
|
007CB7E9   E8B67BC3FF             call    004033A4
007CB7EE   BA08BE7C00             mov     edx, $007CBE08
007CB7F3   8D45E8                 lea     eax, [ebp-$18]
007CB7F6   B102                   mov     cl, $02

* Reference to: System.@PStrNCat;
|
007CB7F8   E8777BC3FF             call    00403374
007CB7FD   8D55E8                 lea     edx, [ebp-$18]
007CB800   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrFromString(String;String;ShortString;ShortString);
|
007CB803   E8F89EC3FF             call    00405700
007CB808   8B55F0                 mov     edx, [ebp-$10]
007CB80B   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB810   8B00                   mov     eax, [eax]
007CB812   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CB815   E8BAF0DCFF             call    0059A8D4
007CB81A   4B                     dec     ebx
007CB81B   75B4                   jnz     007CB7D1
007CB81D   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB822   8B00                   mov     eax, [eax]
007CB824   8B4068                 mov     eax, [eax+$68]

|
007CB827   E8B4EFDCFF             call    0059A7E0
007CB82C   8B451C                 mov     eax, [ebp+$1C]
007CB82F   C60000                 mov     byte ptr [eax], $00
007CB832   8B4524                 mov     eax, [ebp+$24]
007CB835   8B00                   mov     eax, [eax]
007CB837   8B5528                 mov     edx, [ebp+$28]
007CB83A   8902                   mov     [edx], eax
007CB83C   8B451C                 mov     eax, [ebp+$1C]
007CB83F   803800                 cmp     byte ptr [eax], $00
007CB842   0F8582030000           jnz     007CBBCA

* Possible String Reference to: 'DESCRICAO'
|
007CB848   6814BE7C00             push    $007CBE14
007CB84D   8D45F4                 lea     eax, [ebp-$0C]
007CB850   50                     push    eax
007CB851   8D55E0                 lea     edx, [ebp-$20]
007CB854   8B4528                 mov     eax, [ebp+$28]
007CB857   8B00                   mov     eax, [eax]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007CB859   E806F5C3FF             call    0040AD64
007CB85E   8B4DE0                 mov     ecx, [ebp-$20]
007CB861   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'CODIMPR = '
|
007CB864   BA28BE7C00             mov     edx, $007CBE28

* Reference to: System.@LStrCat3;
|
007CB869   E83A9FC3FF             call    004057A8
007CB86E   8B4DE4                 mov     ecx, [ebp-$1C]

* Possible String Reference to: 'IMPRGRILL'
|
007CB871   BA3CBE7C00             mov     edx, $007CBE3C
007CB876   33C0                   xor     eax, eax

|
007CB878   E893DAFDFF             call    007A9310
007CB87D   8B4528                 mov     eax, [ebp+$28]
007CB880   8B00                   mov     eax, [eax]

|
007CB882   E8398FFEFF             call    007B47C0

|
007CB887   E80832EEFF             call    006AEA94
007CB88C   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB891   8B00                   mov     eax, [eax]
007CB893   8B4068                 mov     eax, [eax+$68]
007CB896   83C030                 add     eax, +$30

* Possible String Reference to: 'Pedido'
|
007CB899   BA50BE7C00             mov     edx, $007CBE50

* Reference to: System.@LStrAsg(void;void;void;void);
|
007CB89E   E84D9CC3FF             call    004054F0
007CB8A3   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB8A8   8B00                   mov     eax, [eax]
007CB8AA   8B4068                 mov     eax, [eax+$68]

|
007CB8AD   E88AEEDCFF             call    0059A73C
007CB8B2   A17CB37D00             mov     eax, dword ptr [$007DB37C]
007CB8B7   8B00                   mov     eax, [eax]
007CB8B9   8B4068                 mov     eax, [eax+$68]
007CB8BC   8B10                   mov     edx, [eax]
007CB8BE   FF5258                 call    dword ptr [edx+$58]
007CB8C1   8BD8                   mov     ebx, eax
007CB8C3   85DB                   test    ebx, ebx
007CB8C5   7E4C                   jle     007CB913
007CB8C7   8BC6                   mov     eax, esi

|
007CB8C9   E8E2F5FFFF             call    007CAEB0
007CB8CE   8BD0                   mov     edx, eax
007CB8D0   8D45EC                 lea     eax, [ebp-$14]
007CB8D3   885001                 mov     [eax+$01], dl
007CB8D6   C60001                 mov     byte ptr [eax], $01
007CB8D9   8D55EC                 lea     edx, [ebp-$14]
007CB8DC   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@PStrCpy(PShortString;PShortString);
|
007CB8DF   E8C07AC3FF             call    004033A4
007CB8E4   BA08BE7C00             mov     edx, $007CBE08
007CB8E9   8D45E8                 lea     eax, [ebp-$18]
007CB8EC   B102                   mov     cl, $02

* Reference to: System.@PStrNCat;
|
007CB8EE   E8817AC3FF             call    00403374
007CB8F3   8D55E8                 lea     edx, [ebp-$18]
007CB8F6   8D45DC                 lea     eax, [ebp-$24]

* Reference to: System.@LStrFromString(String;String;ShortString;ShortString);
|
007CB8F9   E8029EC3FF             call    00405700
007CB8FE   8B55DC                 mov     edx, [ebp-$24]
007CB901   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB906   8B00                   mov     eax, [eax]
007CB908   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CB90B   E8C4EFDCFF             call    0059A8D4
007CB910   4B                     dec     ebx
007CB911   75B4                   jnz     007CB8C7
007CB913   8BC6                   mov     eax, esi

|
007CB915   E896F5FFFF             call    007CAEB0
007CB91A   8BD0                   mov     edx, eax
007CB91C   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrFromChar(String;String;Char);
|
007CB91F   E8609DC3FF             call    00405684
007CB924   8D45D8                 lea     eax, [ebp-$28]
007CB927   50                     push    eax

* Possible String Reference to: 'esquerda'
|
007CB928   6860BE7C00             push    $007CBE60
007CB92D   8D45D4                 lea     eax, [ebp-$2C]
007CB930   50                     push    eax
007CB931   8B0F                   mov     ecx, [edi]
007CB933   BA74BE7C00             mov     edx, $007CBE74
007CB938   B874BE7C00             mov     eax, $007CBE74

|
007CB93D   E8866DFDFF             call    007A26C8
007CB942   8B55D4                 mov     edx, [ebp-$2C]
007CB945   58                     pop     eax

* Reference to: System.@LStrCat;
|
007CB946   E8199EC3FF             call    00405764
007CB94B   8B55D8                 mov     edx, [ebp-$28]
007CB94E   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB953   8B00                   mov     eax, [eax]
007CB955   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CB958   E877EFDCFF             call    0059A8D4
007CB95D   8BC6                   mov     eax, esi

|
007CB95F   E84CF5FFFF             call    007CAEB0
007CB964   8BD0                   mov     edx, eax
007CB966   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrFromChar(String;String;Char);
|
007CB969   E8169DC3FF             call    00405684
007CB96E   8D45D0                 lea     eax, [ebp-$30]
007CB971   50                     push    eax

* Possible String Reference to: 'esquerda'
|
007CB972   6860BE7C00             push    $007CBE60
007CB977   8D45CC                 lea     eax, [ebp-$34]
007CB97A   50                     push    eax

* Reference to: SysUtils.Now:TDateTime;
|
007CB97B   E8DC22C4FF             call    0040DC5C
007CB980   83C4F8                 add     esp, -$08
007CB983   DD1C24                 fstp    qword ptr [esp]
007CB986   9B                     wait
007CB987   8D55C8                 lea     edx, [ebp-$38]

* Possible String Reference to: 'dd/mm/yy - hh:mm'
|
007CB98A   B880BE7C00             mov     eax, $007CBE80

|
007CB98F   E8442FC4FF             call    0040E8D8
007CB994   8B55C8                 mov     edx, [ebp-$38]
007CB997   8B0F                   mov     ecx, [edi]
007CB999   B89CBE7C00             mov     eax, $007CBE9C

|
007CB99E   E8256DFDFF             call    007A26C8
007CB9A3   8B55CC                 mov     edx, [ebp-$34]
007CB9A6   58                     pop     eax

* Reference to: System.@LStrCat;
|
007CB9A7   E8B89DC3FF             call    00405764
007CB9AC   8B55D0                 mov     edx, [ebp-$30]
007CB9AF   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB9B4   8B00                   mov     eax, [eax]
007CB9B6   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CB9B9   E816EFDCFF             call    0059A8D4
007CB9BE   8BC6                   mov     eax, esi

|
007CB9C0   E8EBF4FFFF             call    007CAEB0
007CB9C5   8BD0                   mov     edx, eax
007CB9C7   8D45C4                 lea     eax, [ebp-$3C]

* Reference to: System.@LStrFromChar(String;String;Char);
|
007CB9CA   E8B59CC3FF             call    00405684
007CB9CF   8D45C4                 lea     eax, [ebp-$3C]
007CB9D2   50                     push    eax

* Possible String Reference to: 'esquerda'
|
007CB9D3   6860BE7C00             push    $007CBE60
007CB9D8   8D45C0                 lea     eax, [ebp-$40]
007CB9DB   50                     push    eax
007CB9DC   8B0F                   mov     ecx, [edi]
007CB9DE   8B55F4                 mov     edx, [ebp-$0C]
007CB9E1   B89CBE7C00             mov     eax, $007CBE9C

|
007CB9E6   E8DD6CFDFF             call    007A26C8
007CB9EB   8B55C0                 mov     edx, [ebp-$40]
007CB9EE   58                     pop     eax

* Reference to: System.@LStrCat;
|
007CB9EF   E8709DC3FF             call    00405764
007CB9F4   8B55C4                 mov     edx, [ebp-$3C]
007CB9F7   A178B47D00             mov     eax, dword ptr [$007DB478]
007CB9FC   8B00                   mov     eax, [eax]
007CB9FE   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CBA01   E8CEEEDCFF             call    0059A8D4
007CBA06   8BC6                   mov     eax, esi

|
007CBA08   E8A3F4FFFF             call    007CAEB0
007CBA0D   8BD0                   mov     edx, eax
007CBA0F   8D45BC                 lea     eax, [ebp-$44]

* Reference to: System.@LStrFromChar(String;String;Char);
|
007CBA12   E86D9CC3FF             call    00405684
007CBA17   8D45BC                 lea     eax, [ebp-$44]
007CBA1A   50                     push    eax

* Possible String Reference to: 'direita'
|
007CBA1B   68A8BE7C00             push    $007CBEA8
007CBA20   8D45B8                 lea     eax, [ebp-$48]
007CBA23   50                     push    eax
007CBA24   8D559C                 lea     edx, [ebp-$64]
007CBA27   A1DCF57D00             mov     eax, dword ptr [$007DF5DC]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007CBA2C   E833F3C3FF             call    0040AD64
007CBA31   8B4D9C                 mov     ecx, [ebp-$64]
007CBA34   8D45A0                 lea     eax, [ebp-$60]

* Possible String Reference to: 'MESA # '
|
007CBA37   BAB8BE7C00             mov     edx, $007CBEB8

* Reference to: System.@LStrCat3;
|
007CBA3C   E8679DC3FF             call    004057A8
007CBA41   8B55A0                 mov     edx, [ebp-$60]
007CBA44   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007CBA47   E878D2C4FF             call    00418CC4
007CBA4C   8D45A4                 lea     eax, [ebp-$5C]
007CBA4F   50                     push    eax
007CBA50   8D458C                 lea     eax, [ebp-$74]
007CBA53   50                     push    eax
007CBA54   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]
007CBA5A   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007CBA5C   E863D2C4FF             call    00418CC4
007CBA61   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]
007CBA67   50                     push    eax
007CBA68   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
007CBA6E   8B4D08                 mov     ecx, [ebp+$08]

* Possible String Reference to: ' KIT '
|
007CBA71   BAC8BE7C00             mov     edx, $007CBEC8

* Reference to: System.@LStrCat3;
|
007CBA76   E82D9DC3FF             call    004057A8
007CBA7B   8B9568FFFFFF           mov     edx, [ebp+$FFFFFF68]
007CBA81   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007CBA87   E838D2C4FF             call    00418CC4
007CBA8C   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
007CBA92   8A450C                 mov     al, byte ptr [ebp+$0C]
007CBA95   59                     pop     ecx

|
007CBA96   E8D148FDFF             call    007A036C
007CBA9B   8D558C                 lea     edx, [ebp-$74]
007CBA9E   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007CBA9F   E80016C5FF             call    0041D0A4
007CBAA4   8D55A4                 lea     edx, [ebp-$5C]
007CBAA7   8D45B4                 lea     eax, [ebp-$4C]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
007CBAAA   E849C1C4FF             call    00417BF8
007CBAAF   8B55B4                 mov     edx, [ebp-$4C]
007CBAB2   8B0F                   mov     ecx, [edi]
007CBAB4   B89CBE7C00             mov     eax, $007CBE9C

|
007CBAB9   E80A6CFDFF             call    007A26C8
007CBABE   8B55B8                 mov     edx, [ebp-$48]
007CBAC1   58                     pop     eax

* Reference to: System.@LStrCat;
|
007CBAC2   E89D9CC3FF             call    00405764
007CBAC7   8B55BC                 mov     edx, [ebp-$44]
007CBACA   A178B47D00             mov     eax, dword ptr [$007DB478]
007CBACF   8B00                   mov     eax, [eax]
007CBAD1   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CBAD4   E8FBEDDCFF             call    0059A8D4
007CBAD9   8BC6                   mov     eax, esi

|
007CBADB   E8D0F3FFFF             call    007CAEB0
007CBAE0   8BD0                   mov     edx, eax
007CBAE2   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]

* Reference to: System.@LStrFromChar(String;String;Char);
|
007CBAE8   E8979BC3FF             call    00405684
007CBAED   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
007CBAF3   50                     push    eax

* Possible String Reference to: 'esquerda'
|
007CBAF4   6860BE7C00             push    $007CBE60
007CBAF9   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
007CBAFF   50                     push    eax
007CBB00   8B0F                   mov     ecx, [edi]
007CBB02   BA74BE7C00             mov     edx, $007CBE74
007CBB07   B874BE7C00             mov     eax, $007CBE74

|
007CBB0C   E8B76BFDFF             call    007A26C8
007CBB11   8B9560FFFFFF           mov     edx, [ebp+$FFFFFF60]
007CBB17   58                     pop     eax

* Reference to: System.@LStrCat;
|
007CBB18   E8479CC3FF             call    00405764
007CBB1D   8B9564FFFFFF           mov     edx, [ebp+$FFFFFF64]
007CBB23   A178B47D00             mov     eax, dword ptr [$007DB478]
007CBB28   8B00                   mov     eax, [eax]
007CBB2A   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CBB2D   E8A2EDDCFF             call    0059A8D4
007CBB32   8BC6                   mov     eax, esi

|
007CBB34   E877F3FFFF             call    007CAEB0
007CBB39   8BD0                   mov     edx, eax
007CBB3B   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]

* Reference to: System.@LStrFromChar(String;String;Char);
|
007CBB41   E83E9BC3FF             call    00405684
007CBB46   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]

* Possible String Reference to: 'Quant.  Produto                    
|                                Func.'
|
007CBB4C   BAD8BE7C00             mov     edx, $007CBED8

* Reference to: System.@LStrCat;
|
007CBB51   E80E9CC3FF             call    00405764
007CBB56   8B955CFFFFFF           mov     edx, [ebp+$FFFFFF5C]
007CBB5C   A178B47D00             mov     eax, dword ptr [$007DB478]
007CBB61   8B00                   mov     eax, [eax]
007CBB63   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CBB66   E869EDDCFF             call    0059A8D4
007CBB6B   8BC6                   mov     eax, esi

|
007CBB6D   E83EF3FFFF             call    007CAEB0
007CBB72   8BD0                   mov     edx, eax
007CBB74   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]

* Reference to: System.@LStrFromChar(String;String;Char);
|
007CBB7A   E8059BC3FF             call    00405684
007CBB7F   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
007CBB85   50                     push    eax

* Possible String Reference to: 'esquerda'
|
007CBB86   6860BE7C00             push    $007CBE60
007CBB8B   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]
007CBB91   50                     push    eax
007CBB92   8B0F                   mov     ecx, [edi]
007CBB94   BA74BE7C00             mov     edx, $007CBE74
007CBB99   B874BE7C00             mov     eax, $007CBE74

|
007CBB9E   E8256BFDFF             call    007A26C8
007CBBA3   8B9554FFFFFF           mov     edx, [ebp+$FFFFFF54]
007CBBA9   58                     pop     eax

* Reference to: System.@LStrCat;
|
007CBBAA   E8B59BC3FF             call    00405764
007CBBAF   8B9558FFFFFF           mov     edx, [ebp+$FFFFFF58]
007CBBB5   A178B47D00             mov     eax, dword ptr [$007DB478]
007CBBBA   8B00                   mov     eax, [eax]
007CBBBC   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CBBBF   E810EDDCFF             call    0059A8D4
007CBBC4   8B451C                 mov     eax, [ebp+$1C]
007CBBC7   C60001                 mov     byte ptr [eax], $01
007CBBCA   8BC6                   mov     eax, esi

|
007CBBCC   E8DFF2FFFF             call    007CAEB0
007CBBD1   8BD0                   mov     edx, eax
007CBBD3   8D854CFFFFFF           lea     eax, [ebp+$FFFFFF4C]

* Reference to: System.@LStrFromChar(String;String;Char);
|
007CBBD9   E8A69AC3FF             call    00405684
007CBBDE   FFB54CFFFFFF           push    dword ptr [ebp+$FFFFFF4C]

* Possible String Reference to: 'direita'
|
007CBBE4   68A8BE7C00             push    $007CBEA8
007CBBE9   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
007CBBEF   50                     push    eax
007CBBF0   668B4518               mov     ax, word ptr [ebp+$18]
007CBBF4   50                     push    eax
007CBBF5   FF7514                 push    dword ptr [ebp+$14]
007CBBF8   FF7510                 push    dword ptr [ebp+$10]
007CBBFB   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

|
007CBC01   E86618C4FF             call    0040D46C
007CBC06   8B9544FFFFFF           mov     edx, [ebp+$FFFFFF44]
007CBC0C   B906000000             mov     ecx, $00000006
007CBC11   B89CBE7C00             mov     eax, $007CBE9C

|
007CBC16   E8AD6AFDFF             call    007A26C8
007CBC1B   FFB548FFFFFF           push    dword ptr [ebp+$FFFFFF48]

* Possible String Reference to: '  '
|
007CBC21   680CBF7C00             push    $007CBF0C

* Possible String Reference to: 'esquerda'
|
007CBC26   6860BE7C00             push    $007CBE60
007CBC2B   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]
007CBC31   50                     push    eax
007CBC32   8B0F                   mov     ecx, [edi]
007CBC34   83E90E                 sub     ecx, +$0E
007CBC37   8B55FC                 mov     edx, [ebp-$04]
007CBC3A   B89CBE7C00             mov     eax, $007CBE9C

|
007CBC3F   E8846AFDFF             call    007A26C8
007CBC44   FFB540FFFFFF           push    dword ptr [ebp+$FFFFFF40]
007CBC4A   689CBE7C00             push    $007CBE9C

* Possible String Reference to: 'direita'
|
007CBC4F   68A8BE7C00             push    $007CBEA8
007CBC54   8D853CFFFFFF           lea     eax, [ebp+$FFFFFF3C]
007CBC5A   50                     push    eax
007CBC5B   B905000000             mov     ecx, $00000005
007CBC60   8B5534                 mov     edx, [ebp+$34]
007CBC63   B89CBE7C00             mov     eax, $007CBE9C

|
007CBC68   E85B6AFDFF             call    007A26C8
007CBC6D   FFB53CFFFFFF           push    dword ptr [ebp+$FFFFFF3C]
007CBC73   689CBE7C00             push    $007CBE9C
007CBC78   FF7530                 push    dword ptr [ebp+$30]
007CBC7B   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]
007CBC81   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrCatN;
|
007CBC86   E8919BC3FF             call    0040581C
007CBC8B   8B9550FFFFFF           mov     edx, [ebp+$FFFFFF50]
007CBC91   A178B47D00             mov     eax, dword ptr [$007DB478]
007CBC96   8B00                   mov     eax, [eax]
007CBC98   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CBC9B   E834ECDCFF             call    0059A8D4
007CBCA0   837D2C00               cmp     dword ptr [ebp+$2C], +$00
007CBCA4   746D                   jz      007CBD13
007CBCA6   8BC6                   mov     eax, esi

|
007CBCA8   E803F2FFFF             call    007CAEB0
007CBCAD   8BD0                   mov     edx, eax
007CBCAF   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]

* Reference to: System.@LStrFromChar(String;String;Char);
|
007CBCB5   E8CA99C3FF             call    00405684
007CBCBA   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]
007CBCC0   50                     push    eax

* Possible String Reference to: 'esquerda'
|
007CBCC1   6860BE7C00             push    $007CBE60
007CBCC6   8D8534FFFFFF           lea     eax, [ebp+$FFFFFF34]
007CBCCC   50                     push    eax
007CBCCD   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]
007CBCD3   8B4D2C                 mov     ecx, [ebp+$2C]

* Possible String Reference to: ' *** '
|
007CBCD6   BA18BF7C00             mov     edx, $007CBF18

* Reference to: System.@LStrCat3;
|
007CBCDB   E8C89AC3FF             call    004057A8
007CBCE0   8B9530FFFFFF           mov     edx, [ebp+$FFFFFF30]
007CBCE6   8B0F                   mov     ecx, [edi]
007CBCE8   B89CBE7C00             mov     eax, $007CBE9C

|
007CBCED   E8D669FDFF             call    007A26C8
007CBCF2   8B9534FFFFFF           mov     edx, [ebp+$FFFFFF34]
007CBCF8   58                     pop     eax

* Reference to: System.@LStrCat;
|
007CBCF9   E8669AC3FF             call    00405764
007CBCFE   8B9538FFFFFF           mov     edx, [ebp+$FFFFFF38]
007CBD04   A178B47D00             mov     eax, dword ptr [$007DB478]
007CBD09   8B00                   mov     eax, [eax]
007CBD0B   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
007CBD0E   E8C1EBDCFF             call    0059A8D4
007CBD13   33C0                   xor     eax, eax
007CBD15   5A                     pop     edx
007CBD16   59                     pop     ecx
007CBD17   59                     pop     ecx
007CBD18   648910                 mov     fs:[eax], edx
007CBD1B   EB41                   jmp     007CBD5E

* Reference to: System.@HandleOnException;
|
007CBD1D   E98E8EC3FF             jmp     00404BB0
007CBD22   0100                   add     [eax], eax
007CBD24   0000                   add     [eax], al
007CBD26   40                     inc     eax
007CBD27   95                     xchg    eax, ebp
007CBD28   40                     inc     eax
007CBD29   002E                   add     [esi], ch
007CBD2B   BD7C0089C3             mov     ebp, $C389007C
007CBD30   6A00                   push    $00
007CBD32   8B4B04                 mov     ecx, [ebx+$04]
007CBD35   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
007CBD3B   BA28BF7C00             mov     edx, $007CBF28

* Reference to: System.@LStrCat3;
|
007CBD40   E8639AC3FF             call    004057A8
007CBD45   8B852CFFFFFF           mov     eax, [ebp+$FFFFFF2C]
007CBD4B   668B0D48BF7C00         mov     cx, word ptr [$007CBF48]
007CBD52   B201                   mov     dl, $01

|
007CBD54   E8D37DC7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CBD59   E85291C3FF             call    00404EB0

****** END
|
007CBD5E   33C0                   xor     eax, eax
007CBD60   5A                     pop     edx
007CBD61   59                     pop     ecx
007CBD62   59                     pop     ecx
007CBD63   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CBD66   6873BD7C00             push    $007CBD73
007CBD6B   C3                     ret


* Reference to: System.@HandleFinally;
|
007CBD6C   E9C78FC3FF             jmp     00404D38
007CBD71   EBF8                   jmp     007CBD6B

****** END
|
007CBD73   33C0                   xor     eax, eax
007CBD75   5A                     pop     edx
007CBD76   59                     pop     ecx
007CBD77   59                     pop     ecx
007CBD78   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]¬0'
|
007CBD7B   68FABD7C00             push    $007CBDFA
007CBD80   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]
007CBD86   BA10000000             mov     edx, $00000010

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBD8B   E83097C3FF             call    004054C0
007CBD90   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Reference to object Variant
|
007CBD96   8B1524114000           mov     edx, [$00401124]
007CBD9C   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007CBDA1   E8F6A2C3FF             call    0040609C
007CBDA6   8D459C                 lea     eax, [ebp-$64]
007CBDA9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBDAE   E80D97C3FF             call    004054C0
007CBDB3   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007CBDB6   E8BD87C4FF             call    00414578
007CBDBB   8D45B4                 lea     eax, [ebp-$4C]
007CBDBE   BA0D000000             mov     edx, $0000000D

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBDC3   E8F896C3FF             call    004054C0
007CBDC8   8D45F0                 lea     eax, [ebp-$10]
007CBDCB   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBDD0   E8EB96C3FF             call    004054C0
007CBDD5   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CBDD8   E8BF96C3FF             call    0040549C
007CBDDD   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
007CBDE0   E8B796C3FF             call    0040549C
007CBDE5   8D452C                 lea     eax, [ebp+$2C]
007CBDE8   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBDED   E8CE96C3FF             call    004054C0
007CBDF2   C3                     ret


* Reference to: System.@HandleFinally;
|
007CBDF3   E9408FC3FF             jmp     00404D38
007CBDF8   EB86                   jmp     007CBD80

****** END
|
007CBDFA   8A45FB                 mov     al, byte ptr [ebp-$05]
007CBDFD   5F                     pop     edi
007CBDFE   5E                     pop     esi
007CBDFF   5B                     pop     ebx
007CBE00   8BE5                   mov     esp, ebp
007CBE02   5D                     pop     ebp
007CBE03   C23000                 ret     $0030

*)
end;

procedure TFrmGereComanda._PROC_007CBD6C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CBD6C   E9C78FC3FF             jmp     00404D38

|
007CBD71   EBF8                   jmp     007CBD6B
007CBD73   33C0                   xor     eax, eax
007CBD75   5A                     pop     edx
007CBD76   59                     pop     ecx
007CBD77   59                     pop     ecx
007CBD78   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]¬0'
|
007CBD7B   68FABD7C00             push    $007CBDFA
007CBD80   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]
007CBD86   BA10000000             mov     edx, $00000010

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBD8B   E83097C3FF             call    004054C0
007CBD90   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Reference to object Variant
|
007CBD96   8B1524114000           mov     edx, [$00401124]
007CBD9C   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007CBDA1   E8F6A2C3FF             call    0040609C
007CBDA6   8D459C                 lea     eax, [ebp-$64]
007CBDA9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBDAE   E80D97C3FF             call    004054C0
007CBDB3   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007CBDB6   E8BD87C4FF             call    00414578
007CBDBB   8D45B4                 lea     eax, [ebp-$4C]
007CBDBE   BA0D000000             mov     edx, $0000000D

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBDC3   E8F896C3FF             call    004054C0
007CBDC8   8D45F0                 lea     eax, [ebp-$10]
007CBDCB   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBDD0   E8EB96C3FF             call    004054C0
007CBDD5   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CBDD8   E8BF96C3FF             call    0040549C
007CBDDD   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
007CBDE0   E8B796C3FF             call    0040549C
007CBDE5   8D452C                 lea     eax, [ebp+$2C]
007CBDE8   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CBDED   E8CE96C3FF             call    004054C0
007CBDF2   C3                     ret


* Reference to: System.@HandleFinally;
|
007CBDF3   E9408FC3FF             jmp     00404D38
007CBDF8   EB86                   jmp     007CBD80

****** END
|
007CBDFA   8A45FB                 mov     al, byte ptr [ebp-$05]
007CBDFD   5F                     pop     edi
007CBDFE   5E                     pop     esi
007CBDFF   5B                     pop     ebx
007CBE00   8BE5                   mov     esp, ebp
007CBE02   5D                     pop     ebp
007CBE03   C23000                 ret     $0030

*)
end;

procedure TFrmGereComanda._PROC_007CBF4D(Sender : TObject);
begin
(*
007CBF4D   8BEC                   mov     ebp, esp
007CBF4F   B909000000             mov     ecx, $00000009
007CBF54   6A00                   push    $00
007CBF56   6A00                   push    $00
007CBF58   49                     dec     ecx
007CBF59   75F9                   jnz     007CBF54
007CBF5B   51                     push    ecx
007CBF5C   53                     push    ebx
007CBF5D   56                     push    esi
007CBF5E   57                     push    edi
007CBF5F   8955FC                 mov     [ebp-$04], edx
007CBF62   8BD8                   mov     ebx, eax
007CBF64   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CBF67   E8E099C3FF             call    0040594C
007CBF6C   33C0                   xor     eax, eax
007CBF6E   55                     push    ebp

* Possible String Reference to: 'È#ä√ˇÎ…äE˚_^[ãÂ]√'
|
007CBF6F   6810C37C00             push    $007CC310

***** TRY
|
007CBF74   64FF30                 push    dword ptr fs:[eax]
007CBF77   648920                 mov     fs:[eax], esp
007CBF7A   C645FB00               mov     byte ptr [ebp-$05], $00
007CBF7E   33C0                   xor     eax, eax
007CBF80   55                     push    ebp
007CBF81   68CCC27C00             push    $007CC2CC

***** TRY
|
007CBF86   64FF30                 push    dword ptr fs:[eax]
007CBF89   648920                 mov     fs:[eax], esp
007CBF8C   33C0                   xor     eax, eax
007CBF8E   55                     push    ebp
007CBF8F   6883C27C00             push    $007CC283

***** TRY
|
007CBF94   64FF30                 push    dword ptr fs:[eax]
007CBF97   648920                 mov     fs:[eax], esp
007CBF9A   8D55F4                 lea     edx, [ebp-$0C]
007CBF9D   8B45FC                 mov     eax, [ebp-$04]

|
007CBFA0   E81FD1FFFF             call    007C90C4
007CBFA5   8B55F4                 mov     edx, [ebp-$0C]
007CBFA8   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
007CBFAB   E88495C3FF             call    00405534

* Possible String Reference to: 'CODMESA'
|
007CBFB0   682CC37C00             push    $007CC32C

* Possible String Reference to: '(CODCOMANDA='
|
007CBFB5   683CC37C00             push    $007CC33C
007CBFBA   8D55EC                 lea     edx, [ebp-$14]
007CBFBD   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CBFC0   E85B7BFDFF             call    007A3B20
007CBFC5   FF75EC                 push    dword ptr [ebp-$14]
007CBFC8   6854C37C00             push    $007CC354
007CBFCD   8D45F0                 lea     eax, [ebp-$10]
007CBFD0   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007CBFD5   E84298C3FF             call    0040581C
007CBFDA   8B4DF0                 mov     ecx, [ebp-$10]

* Possible String Reference to: 'CODMESA,STATUS'
|
007CBFDD   BA60C37C00             mov     edx, $007CC360

* Possible String Reference to: 'MESAS'
|
007CBFE2   B878C37C00             mov     eax, $007CC378

|
007CBFE7   E850FDFDFF             call    007ABD3C
007CBFEC   84C0                   test    al, al
007CBFEE   0F8458020000           jz      007CC24C
007CBFF4   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CBFF9   8B00                   mov     eax, [eax]
007CBFFB   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'CODMESA'
|
007CBFFE   BA2CC37C00             mov     edx, $007CC32C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CC003   E8FCDBD1FF             call    004E9C04
007CC008   8D55E8                 lea     edx, [ebp-$18]
007CC00B   8B08                   mov     ecx, [eax]
007CC00D   FF5160                 call    dword ptr [ecx+$60]
007CC010   8B55E8                 mov     edx, [ebp-$18]

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC013   8D83BC030000           lea     eax, [ebx+$03BC]

* Reference to: System.@LStrAsg(void;void;void;void);
|
007CC019   E8D294C3FF             call    004054F0

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC01E   8B83BC030000           mov     eax, [ebx+$03BC]
007CC024   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
007CC026   E8E1EEC3FF             call    0040AF0C

* Reference to GlobalVar_007DF5DC
|
007CC02B   A3DCF57D00             mov     dword ptr [$007DF5DC], eax
007CC030   A108B57D00             mov     eax, dword ptr [$007DB508]
007CC035   C60001                 mov     byte ptr [eax], $01
007CC038   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CC03D   8B00                   mov     eax, [eax]
007CC03F   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'STATUS'
|
007CC042   BA88C37C00             mov     edx, $007CC388

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CC047   E8B8DBD1FF             call    004E9C04
007CC04C   8D55E4                 lea     edx, [ebp-$1C]
007CC04F   8B08                   mov     ecx, [eax]
007CC051   FF5160                 call    dword ptr [ecx+$60]
007CC054   8B45E4                 mov     eax, [ebp-$1C]
007CC057   BA98C37C00             mov     edx, $007CC398

* Reference to: System.@LStrCmp;
|
007CC05C   E84798C3FF             call    004058A8
007CC061   0F8552010000           jnz     007CC1B9
007CC067   A1D4A27D00             mov     eax, dword ptr [$007DA2D4]
007CC06C   8B00                   mov     eax, [eax]

|
007CC06E   E8A595FEFF             call    007B5618
007CC073   84C0                   test    al, al
007CC075   0F8424010000           jz      007CC19F
007CC07B   6A00                   push    $00

* Possible String Reference to: 'AtenÁ„o!Confirma a abertura da coma
|                                nda '
|
007CC07D   68A4C37C00             push    $007CC3A4
007CC082   FF75FC                 push    dword ptr [ebp-$04]

* Possible String Reference to: ' ?'
|
007CC085   68D8C37C00             push    $007CC3D8
007CC08A   8D45E0                 lea     eax, [ebp-$20]
007CC08D   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007CC092   E88597C3FF             call    0040581C
007CC097   8B45E0                 mov     eax, [ebp-$20]
007CC09A   668B0DDCC37C00         mov     cx, word ptr [$007CC3DC]
007CC0A1   B203                   mov     dl, $03

|
007CC0A3   E8847AC7FF             call    00443B2C
007CC0A8   83F806                 cmp     eax, +$06
007CC0AB   0F85C8010000           jnz     007CC279
007CC0B1   8D55D8                 lea     edx, [ebp-$28]

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC0B4   8B83BC030000           mov     eax, [ebx+$03BC]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CC0BA   E8617AFDFF             call    007A3B20
007CC0BF   8B4DD8                 mov     ecx, [ebp-$28]
007CC0C2   8D45DC                 lea     eax, [ebp-$24]

* Possible String Reference to: 'CODMESA = '
|
007CC0C5   BAE8C37C00             mov     edx, $007CC3E8

* Reference to: System.@LStrCat3;
|
007CC0CA   E8D996C3FF             call    004057A8
007CC0CF   8B45DC                 mov     eax, [ebp-$24]
007CC0D2   50                     push    eax

* Possible String Reference to: 'MESAITEM'
|
007CC0D3   B8FCC37C00             mov     eax, $007CC3FC
007CC0D8   8945D4                 mov     [ebp-$2C], eax
007CC0DB   8D55D4                 lea     edx, [ebp-$2C]
007CC0DE   33C9                   xor     ecx, ecx
007CC0E0   33C0                   xor     eax, eax

|
007CC0E2   E845E7FDFF             call    007AA82C
007CC0E7   8D55CC                 lea     edx, [ebp-$34]

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC0EA   8B83BC030000           mov     eax, [ebx+$03BC]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CC0F0   E82B7AFDFF             call    007A3B20
007CC0F5   8B4DCC                 mov     ecx, [ebp-$34]
007CC0F8   8D45D0                 lea     eax, [ebp-$30]

* Possible String Reference to: 'CODMESA = '
|
007CC0FB   BAE8C37C00             mov     edx, $007CC3E8

* Reference to: System.@LStrCat3;
|
007CC100   E8A396C3FF             call    004057A8
007CC105   8B45D0                 mov     eax, [ebp-$30]
007CC108   50                     push    eax

* Possible String Reference to: 'MESALCTO'
|
007CC109   B810C47C00             mov     eax, $007CC410
007CC10E   8945D4                 mov     [ebp-$2C], eax
007CC111   8D55D4                 lea     edx, [ebp-$2C]
007CC114   33C9                   xor     ecx, ecx
007CC116   33C0                   xor     eax, eax

|
007CC118   E80FE7FDFF             call    007AA82C
007CC11D   6A00                   push    $00
007CC11F   B898C37C00             mov     eax, $007CC398
007CC124   8945D4                 mov     [ebp-$2C], eax
007CC127   8D45D4                 lea     eax, [ebp-$2C]
007CC12A   50                     push    eax
007CC12B   6A00                   push    $00
007CC12D   8D55C4                 lea     edx, [ebp-$3C]

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC130   8B83BC030000           mov     eax, [ebx+$03BC]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CC136   E8E579FDFF             call    007A3B20
007CC13B   8B4DC4                 mov     ecx, [ebp-$3C]
007CC13E   8D45C8                 lea     eax, [ebp-$38]

* Possible String Reference to: 'CODMESA = '
|
007CC141   BAE8C37C00             mov     edx, $007CC3E8

* Reference to: System.@LStrCat3;
|
007CC146   E85D96C3FF             call    004057A8
007CC14B   8B45C8                 mov     eax, [ebp-$38]
007CC14E   50                     push    eax

* Possible String Reference to: 'STATUS'
|
007CC14F   B888C37C00             mov     eax, $007CC388
007CC154   8945C0                 mov     [ebp-$40], eax
007CC157   8D4DC0                 lea     ecx, [ebp-$40]

* Possible String Reference to: 'MESAS'
|
007CC15A   BA78C37C00             mov     edx, $007CC378
007CC15F   33C0                   xor     eax, eax

|
007CC161   E8EEE1FDFF             call    007AA354
007CC166   33C0                   xor     eax, eax

|
007CC168   E88FE8FDFF             call    007AA9FC

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC16D   8B93BC030000           mov     edx, [ebx+$03BC]
007CC173   8BC3                   mov     eax, ebx

|
007CC175   E8C20D0000             call    007CCF3C
007CC17A   84C0                   test    al, al
007CC17C   0F84F7000000           jz      007CC279
007CC182   6824C47C00             push    $007CC424

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC187   8B93BC030000           mov     edx, [ebx+$03BC]
007CC18D   33C9                   xor     ecx, ecx
007CC18F   8BC3                   mov     eax, ebx

|
007CC191   E802100000             call    007CD198
007CC196   C645FB01               mov     byte ptr [ebp-$05], $01
007CC19A   E9DA000000             jmp     007CC279
007CC19F   6A00                   push    $00
007CC1A1   668B0D28C47C00         mov     cx, word ptr [$007CC428]
007CC1A8   33D2                   xor     edx, edx

* Possible String Reference to: 'O PDV atual foi Fechado!Por favor s
|                                elecione outro PDV (F6)'
|
007CC1AA   B834C47C00             mov     eax, $007CC434

|
007CC1AF   E87879C7FF             call    00443B2C
007CC1B4   E9C0000000             jmp     007CC279
007CC1B9   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CC1BE   8B00                   mov     eax, [eax]
007CC1C0   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'STATUS'
|
007CC1C3   BA88C37C00             mov     edx, $007CC388

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CC1C8   E837DAD1FF             call    004E9C04
007CC1CD   8D55BC                 lea     edx, [ebp-$44]
007CC1D0   8B08                   mov     ecx, [eax]
007CC1D2   FF5160                 call    dword ptr [ecx+$60]
007CC1D5   8B45BC                 mov     eax, [ebp-$44]
007CC1D8   BA78C47C00             mov     edx, $007CC478

* Reference to: System.@LStrCmp;
|
007CC1DD   E8C696C3FF             call    004058A8
007CC1E2   7541                   jnz     007CC225
007CC1E4   6A00                   push    $00
007CC1E6   668B0DDCC37C00         mov     cx, word ptr [$007CC3DC]
007CC1ED   B203                   mov     dl, $03

* Possible String Reference to: 'AtenÁ„o, ja foi impresso a conta de
|                                ssa comanda. Deseja adicionar mais 
|                                itens?'
|
007CC1EF   B884C47C00             mov     eax, $007CC484

|
007CC1F4   E83379C7FF             call    00443B2C
007CC1F9   83F806                 cmp     eax, +$06
007CC1FC   757B                   jnz     007CC279

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC1FE   8B93BC030000           mov     edx, [ebx+$03BC]
007CC204   8BC3                   mov     eax, ebx

|
007CC206   E8611C0000             call    007CDE6C
007CC20B   6824C47C00             push    $007CC424

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC210   8B93BC030000           mov     edx, [ebx+$03BC]
007CC216   33C9                   xor     ecx, ecx
007CC218   8BC3                   mov     eax, ebx

|
007CC21A   E8790F0000             call    007CD198
007CC21F   C645FB01               mov     byte ptr [ebp-$05], $01
007CC223   EB54                   jmp     007CC279

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC225   8B93BC030000           mov     edx, [ebx+$03BC]
007CC22B   8BC3                   mov     eax, ebx

|
007CC22D   E83A1C0000             call    007CDE6C
007CC232   6824C47C00             push    $007CC424

* Reference to field TFrmGereComanda.OFFS_03BC : String
|
007CC237   8B93BC030000           mov     edx, [ebx+$03BC]
007CC23D   33C9                   xor     ecx, ecx
007CC23F   8BC3                   mov     eax, ebx

|
007CC241   E8520F0000             call    007CD198
007CC246   C645FB01               mov     byte ptr [ebp-$05], $01
007CC24A   EB2D                   jmp     007CC279
007CC24C   6A00                   push    $00

* Possible String Reference to: 'A comanda '
|
007CC24E   68DCC47C00             push    $007CC4DC
007CC253   FF75FC                 push    dword ptr [ebp-$04]

* Possible String Reference to: ' n„o foi localizada. Para cadastrar
|                                 automaticamente uma comanda com es
|                                se cÛdigo, clique no bot„o ao lado 
|                                do campo "comanda".'
|
007CC256   68F0C47C00             push    $007CC4F0
007CC25B   8D45B8                 lea     eax, [ebp-$48]
007CC25E   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007CC263   E8B495C3FF             call    0040581C
007CC268   8B45B8                 mov     eax, [ebp-$48]
007CC26B   668B0D28C47C00         mov     cx, word ptr [$007CC428]
007CC272   B203                   mov     dl, $03

|
007CC274   E8B378C7FF             call    00443B2C
007CC279   33C0                   xor     eax, eax
007CC27B   5A                     pop     edx
007CC27C   59                     pop     ecx
007CC27D   59                     pop     ecx
007CC27E   648910                 mov     fs:[eax], edx
007CC281   EB3B                   jmp     007CC2BE

* Reference to: System.@HandleOnException;
|
007CC283   E92889C3FF             jmp     00404BB0
007CC288   0100                   add     [eax], eax
007CC28A   0000                   add     [eax], al
007CC28C   40                     inc     eax
007CC28D   95                     xchg    eax, ebp
007CC28E   40                     inc     eax
007CC28F   0094C27C0089C3         add     [edx+eax*8+$C389007C], dl
007CC296   6A00                   push    $00

* Reference to field TFrmGereComanda.Owner : TComponent
|
007CC298   8B4B04                 mov     ecx, [ebx+$04]
007CC29B   8D45B4                 lea     eax, [ebp-$4C]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
007CC29E   BA78C57C00             mov     edx, $007CC578

* Reference to: System.@LStrCat3;
|
007CC2A3   E80095C3FF             call    004057A8
007CC2A8   8B45B4                 mov     eax, [ebp-$4C]
007CC2AB   668B0D28C47C00         mov     cx, word ptr [$007CC428]
007CC2B2   B201                   mov     dl, $01

|
007CC2B4   E87378C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CC2B9   E8F28BC3FF             call    00404EB0

****** END
|
007CC2BE   33C0                   xor     eax, eax
007CC2C0   5A                     pop     edx
007CC2C1   59                     pop     ecx
007CC2C2   59                     pop     ecx
007CC2C3   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CC2C6   68D3C27C00             push    $007CC2D3
007CC2CB   C3                     ret


* Reference to: System.@HandleFinally;
|
007CC2CC   E9678AC3FF             jmp     00404D38
007CC2D1   EBF8                   jmp     007CC2CB

****** END
|
007CC2D3   33C0                   xor     eax, eax
007CC2D5   5A                     pop     edx
007CC2D6   59                     pop     ecx
007CC2D7   59                     pop     ecx
007CC2D8   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]√'
|
007CC2DB   6817C37C00             push    $007CC317
007CC2E0   8D45B4                 lea     eax, [ebp-$4C]
007CC2E3   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CC2E8   E8D391C3FF             call    004054C0
007CC2ED   8D45C4                 lea     eax, [ebp-$3C]
007CC2F0   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CC2F5   E8C691C3FF             call    004054C0
007CC2FA   8D45D8                 lea     eax, [ebp-$28]
007CC2FD   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CC302   E8B991C3FF             call    004054C0
007CC307   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CC30A   E88D91C3FF             call    0040549C
007CC30F   C3                     ret


* Reference to: System.@HandleFinally;
|
007CC310   E9238AC3FF             jmp     00404D38
007CC315   EBC9                   jmp     007CC2E0

****** END
|
007CC317   8A45FB                 mov     al, byte ptr [ebp-$05]
007CC31A   5F                     pop     edi
007CC31B   5E                     pop     esi
007CC31C   5B                     pop     ebx
007CC31D   8BE5                   mov     esp, ebp
007CC31F   5D                     pop     ebp
007CC320   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CC310(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CC310   E9238AC3FF             jmp     00404D38

|
007CC315   EBC9                   jmp     007CC2E0
007CC317   8A45FB                 mov     al, byte ptr [ebp-$05]
007CC31A   5F                     pop     edi
007CC31B   5E                     pop     esi
007CC31C   5B                     pop     ebx
007CC31D   8BE5                   mov     esp, ebp
007CC31F   5D                     pop     ebp
007CC320   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CC36D(Sender : TObject);
begin
(*
007CC36D   53                     push    ebx
007CC36E   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CC38D(Sender : TObject);
begin
(*
007CC38D   53                     push    ebx
007CC38E   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CC599(Sender : TObject);
begin
(*
007CC599   8BEC                   mov     ebp, esp
007CC59B   83C490                 add     esp, -$70
007CC59E   53                     push    ebx
007CC59F   56                     push    esi
007CC5A0   57                     push    edi
007CC5A1   33DB                   xor     ebx, ebx
007CC5A3   895D90                 mov     [ebp-$70], ebx
007CC5A6   895DA4                 mov     [ebp-$5C], ebx
007CC5A9   895DCC                 mov     [ebp-$34], ebx
007CC5AC   895DE4                 mov     [ebp-$1C], ebx
007CC5AF   894DF8                 mov     [ebp-$08], ecx
007CC5B2   8955FC                 mov     [ebp-$04], edx
007CC5B5   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CC5B8   E88F93C3FF             call    0040594C
007CC5BD   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CC5C0   E88793C3FF             call    0040594C
007CC5C5   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CC5C8   E87F93C3FF             call    0040594C
007CC5CD   33C0                   xor     eax, eax
007CC5CF   55                     push    ebp
007CC5D0   6813C87C00             push    $007CC813

***** TRY
|
007CC5D5   64FF30                 push    dword ptr fs:[eax]
007CC5D8   648920                 mov     fs:[eax], esp
007CC5DB   8B4508                 mov     eax, [ebp+$08]
007CC5DE   8945E8                 mov     [ebp-$18], eax
007CC5E1   8B450C                 mov     eax, [ebp+$0C]
007CC5E4   8945EC                 mov     [ebp-$14], eax
007CC5E7   668B4510               mov     ax, word ptr [ebp+$10]
007CC5EB   668945F0               mov     [ebp-$10], ax
007CC5EF   33C0                   xor     eax, eax
007CC5F1   55                     push    ebp
007CC5F2   68C9C77C00             push    $007CC7C9

***** TRY
|
007CC5F7   64FF30                 push    dword ptr fs:[eax]
007CC5FA   648920                 mov     fs:[eax], esp
007CC5FD   33C0                   xor     eax, eax
007CC5FF   55                     push    ebp
007CC600   6880C77C00             push    $007CC780

***** TRY
|
007CC605   64FF30                 push    dword ptr fs:[eax]
007CC608   648920                 mov     fs:[eax], esp
007CC60B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007CC610   8B00                   mov     eax, [eax]
007CC612   8B8098050000           mov     eax, [eax+$0598]
007CC618   8B10                   mov     edx, [eax]
007CC61A   FF5244                 call    dword ptr [edx+$44]
007CC61D   84C0                   test    al, al
007CC61F   0F84B6000000           jz      007CC6DB
007CC625   6A04                   push    $04
007CC627   8D45E4                 lea     eax, [ebp-$1C]
007CC62A   50                     push    eax
007CC62B   8B45FC                 mov     eax, [ebp-$04]
007CC62E   8945D0                 mov     [ebp-$30], eax
007CC631   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
007CC636   8B00                   mov     eax, [eax]
007CC638   8945D4                 mov     [ebp-$2C], eax
007CC63B   8B45F8                 mov     eax, [ebp-$08]
007CC63E   8945D8                 mov     [ebp-$28], eax
007CC641   668B4520               mov     ax, word ptr [ebp+$20]
007CC645   50                     push    eax
007CC646   FF751C                 push    dword ptr [ebp+$1C]
007CC649   FF7518                 push    dword ptr [ebp+$18]
007CC64C   8D45CC                 lea     eax, [ebp-$34]

|
007CC64F   E8A44AFDFF             call    007A10F8
007CC654   8B45CC                 mov     eax, [ebp-$34]
007CC657   8945DC                 mov     [ebp-$24], eax
007CC65A   8B4514                 mov     eax, [ebp+$14]
007CC65D   8945E0                 mov     [ebp-$20], eax
007CC660   8D45D0                 lea     eax, [ebp-$30]
007CC663   50                     push    eax

* Possible String Reference to: 'CodProd'
|
007CC664   B830C87C00             mov     eax, $007CC830
007CC669   8945B8                 mov     [ebp-$48], eax

* Possible String Reference to: 'Filial'
|
007CC66C   B840C87C00             mov     eax, $007CC840
007CC671   8945BC                 mov     [ebp-$44], eax

* Possible String Reference to: 'UnidMed'
|
007CC674   B850C87C00             mov     eax, $007CC850
007CC679   8945C0                 mov     [ebp-$40], eax

* Possible String Reference to: 'QtdeUnidMed'
|
007CC67C   B860C87C00             mov     eax, $007CC860
007CC681   8945C4                 mov     [ebp-$3C], eax

* Possible String Reference to: 'TabPreco'
|
007CC684   B874C87C00             mov     eax, $007CC874
007CC689   8945C8                 mov     [ebp-$38], eax
007CC68C   8D45B8                 lea     eax, [ebp-$48]
007CC68F   BA04000000             mov     edx, $00000004
007CC694   59                     pop     ecx

|
007CC695   E82638FEFF             call    007AFEC0
007CC69A   8B45E4                 mov     eax, [ebp-$1C]
007CC69D   50                     push    eax
007CC69E   6A00                   push    $00
007CC6A0   B988C87C00             mov     ecx, $007CC888

* Possible String Reference to: 'PRODUNID'
|
007CC6A5   BA94C87C00             mov     edx, $007CC894
007CC6AA   33C0                   xor     eax, eax

|
007CC6AC   E83FC8FDFF             call    007A8EF0
007CC6B1   84C0                   test    al, al
007CC6B3   0F84BD000000           jz      007CC776
007CC6B9   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007CC6BE   8B00                   mov     eax, [eax]
007CC6C0   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'VlrUnit'
|
007CC6C3   BAA8C87C00             mov     edx, $007CC8A8

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
007CC6C8   E87F8FD9FF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsFloat(TIBXSQLVAR):Float;
|
007CC6CD   E8FA66D9FF             call    00562DCC
007CC6D2   DB7DE8                 fstp    tbyte ptr [ebp-$18]
007CC6D5   9B                     wait
007CC6D6   E99B000000             jmp     007CC776
007CC6DB   6A03                   push    $03
007CC6DD   8D45E4                 lea     eax, [ebp-$1C]
007CC6E0   50                     push    eax
007CC6E1   8B45FC                 mov     eax, [ebp-$04]
007CC6E4   8945A8                 mov     [ebp-$58], eax
007CC6E7   8B45F8                 mov     eax, [ebp-$08]
007CC6EA   8945AC                 mov     [ebp-$54], eax
007CC6ED   668B4520               mov     ax, word ptr [ebp+$20]
007CC6F1   50                     push    eax
007CC6F2   FF751C                 push    dword ptr [ebp+$1C]
007CC6F5   FF7518                 push    dword ptr [ebp+$18]
007CC6F8   8D45A4                 lea     eax, [ebp-$5C]

|
007CC6FB   E8F849FDFF             call    007A10F8
007CC700   8B45A4                 mov     eax, [ebp-$5C]
007CC703   8945B0                 mov     [ebp-$50], eax
007CC706   8B4514                 mov     eax, [ebp+$14]
007CC709   8945B4                 mov     [ebp-$4C], eax
007CC70C   8D45A8                 lea     eax, [ebp-$58]
007CC70F   50                     push    eax

* Possible String Reference to: 'CodProd'
|
007CC710   B830C87C00             mov     eax, $007CC830
007CC715   894594                 mov     [ebp-$6C], eax

* Possible String Reference to: 'UnidMed'
|
007CC718   B850C87C00             mov     eax, $007CC850
007CC71D   894598                 mov     [ebp-$68], eax

* Possible String Reference to: 'QtdeUnidMed'
|
007CC720   B860C87C00             mov     eax, $007CC860
007CC725   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TabPreco'
|
007CC728   B874C87C00             mov     eax, $007CC874
007CC72D   8945A0                 mov     [ebp-$60], eax
007CC730   8D4594                 lea     eax, [ebp-$6C]
007CC733   BA03000000             mov     edx, $00000003
007CC738   59                     pop     ecx

|
007CC739   E88237FEFF             call    007AFEC0
007CC73E   8B45E4                 mov     eax, [ebp-$1C]
007CC741   50                     push    eax
007CC742   6A00                   push    $00
007CC744   B988C87C00             mov     ecx, $007CC888

* Possible String Reference to: 'PRODUNID'
|
007CC749   BA94C87C00             mov     edx, $007CC894
007CC74E   33C0                   xor     eax, eax

|
007CC750   E89BC7FDFF             call    007A8EF0
007CC755   84C0                   test    al, al
007CC757   741D                   jz      007CC776
007CC759   A1689F7D00             mov     eax, dword ptr [$007D9F68]
007CC75E   8B00                   mov     eax, [eax]
007CC760   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'VlrUnit'
|
007CC763   BAA8C87C00             mov     edx, $007CC8A8

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
007CC768   E8DF8ED9FF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsFloat(TIBXSQLVAR):Float;
|
007CC76D   E85A66D9FF             call    00562DCC
007CC772   DB7DE8                 fstp    tbyte ptr [ebp-$18]
007CC775   9B                     wait
007CC776   33C0                   xor     eax, eax
007CC778   5A                     pop     edx
007CC779   59                     pop     ecx
007CC77A   59                     pop     ecx
007CC77B   648910                 mov     fs:[eax], edx
007CC77E   EB3B                   jmp     007CC7BB

* Reference to: System.@HandleOnException;
|
007CC780   E92B84C3FF             jmp     00404BB0
007CC785   0100                   add     [eax], eax
007CC787   0000                   add     [eax], al
007CC789   40                     inc     eax
007CC78A   95                     xchg    eax, ebp
007CC78B   40                     inc     eax
007CC78C   0091C77C0089           add     [ecx+$89007CC7], dl
007CC792   C3                     ret

007CC793   6A00                   push    $00
007CC795   8B4B04                 mov     ecx, [ebx+$04]
007CC798   8D4590                 lea     eax, [ebp-$70]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
007CC79B   BAB8C87C00             mov     edx, $007CC8B8

* Reference to: System.@LStrCat3;
|
007CC7A0   E80390C3FF             call    004057A8
007CC7A5   8B4590                 mov     eax, [ebp-$70]
007CC7A8   668B0DD8C87C00         mov     cx, word ptr [$007CC8D8]
007CC7AF   B201                   mov     dl, $01

|
007CC7B1   E87673C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CC7B6   E8F586C3FF             call    00404EB0

****** END
|
007CC7BB   33C0                   xor     eax, eax
007CC7BD   5A                     pop     edx
007CC7BE   59                     pop     ecx
007CC7BF   59                     pop     ecx
007CC7C0   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CC7C3   68D0C77C00             push    $007CC7D0
007CC7C8   C3                     ret


* Reference to: System.@HandleFinally;
|
007CC7C9   E96A85C3FF             jmp     00404D38
007CC7CE   EBF8                   jmp     007CC7C8

****** END
|
007CC7D0   33C0                   xor     eax, eax
007CC7D2   5A                     pop     edx
007CC7D3   59                     pop     ecx
007CC7D4   59                     pop     ecx
007CC7D5   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CC7D8   681AC87C00             push    $007CC81A
007CC7DD   8D4590                 lea     eax, [ebp-$70]

* Reference to: System.@LStrClr(void;void);
|
007CC7E0   E8B78CC3FF             call    0040549C
007CC7E5   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: System.@LStrClr(void;void);
|
007CC7E8   E8AF8CC3FF             call    0040549C
007CC7ED   8D45CC                 lea     eax, [ebp-$34]

* Reference to: System.@LStrClr(void;void);
|
007CC7F0   E8A78CC3FF             call    0040549C
007CC7F5   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrClr(void;void);
|
007CC7F8   E89F8CC3FF             call    0040549C
007CC7FD   8D45F8                 lea     eax, [ebp-$08]
007CC800   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CC805   E8B68CC3FF             call    004054C0
007CC80A   8D4514                 lea     eax, [ebp+$14]

* Reference to: System.@LStrClr(void;void);
|
007CC80D   E88A8CC3FF             call    0040549C
007CC812   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CC813(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CC813   E92085C3FF             jmp     00404D38

|
007CC818   EBC3                   jmp     007CC7DD
007CC81A   DB6DE8                 fld     tbyte ptr [ebp-$18]
007CC81D   5F                     pop     edi
007CC81E   5E                     pop     esi
007CC81F   5B                     pop     ebx
007CC820   8BE5                   mov     esp, ebp
007CC822   5D                     pop     ebp
007CC823   C21C00                 ret     $001C

*)
end;

procedure TFrmGereComanda._PROC_007CC851(Sender : TObject);
begin
(*
007CC851   6E                     outsb
007CC852   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
007CC85A   FFFF                   DB  $FF, $FF  //      
007CC85C   0B00                   or      eax, [eax]
007CC85E   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CC865(Sender : TObject);
begin
(*
007CC865   6E                     outsb
007CC866   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
007CC86E   FFFF                   DB  $FF, $FF  //      
007CC870   0800                   or      [eax], al
007CC872   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CC899(Sender : TObject);
begin
(*
007CC899   4E                     dec     esi
007CC89A   49                     dec     ecx
007CC89B   44                     inc     esp
007CC89C   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CC8AC(Sender : TObject);
begin
(*
007CC8AC   6E                     outsb
007CC8AD   697400FFFFFFFF1C       imul    esi, [eax+eax-$01], $1CFFFFFF
007CC8B5   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CCC19(Sender : TObject);
begin
(*
007CCC19   8BEC                   mov     ebp, esp
007CCC1B   B908000000             mov     ecx, $00000008
007CCC20   6A00                   push    $00
007CCC22   6A00                   push    $00
007CCC24   49                     dec     ecx
007CCC25   75F9                   jnz     007CCC20
007CCC27   53                     push    ebx
007CCC28   56                     push    esi
007CCC29   57                     push    edi
007CCC2A   8955FC                 mov     [ebp-$04], edx
007CCC2D   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CCC30   E8178DC3FF             call    0040594C
007CCC35   8B3D8CA97D00           mov     edi, [$007DA98C]
007CCC3B   33C0                   xor     eax, eax
007CCC3D   55                     push    ebp

* Possible String Reference to: 'È™~√ˇÎ»äE˚_^[ãÂ]√'
|
007CCC3E   6889CE7C00             push    $007CCE89

***** TRY
|
007CCC43   64FF30                 push    dword ptr fs:[eax]
007CCC46   648920                 mov     fs:[eax], esp
007CCC49   C645FB00               mov     byte ptr [ebp-$05], $00
007CCC4D   33C0                   xor     eax, eax
007CCC4F   55                     push    ebp
007CCC50   6844CE7C00             push    $007CCE44

***** TRY
|
007CCC55   64FF30                 push    dword ptr fs:[eax]
007CCC58   648920                 mov     fs:[eax], esp
007CCC5B   33C0                   xor     eax, eax
007CCC5D   55                     push    ebp
007CCC5E   68FBCD7C00             push    $007CCDFB

***** TRY
|
007CCC63   64FF30                 push    dword ptr fs:[eax]
007CCC66   648920                 mov     fs:[eax], esp
007CCC69   6A00                   push    $00
007CCC6B   8D45E8                 lea     eax, [ebp-$18]
007CCC6E   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
007CCC6F   B9A4CE7C00             mov     ecx, $007CCEA4

* Possible String Reference to: 'MESAS'
|
007CCC74   BAB4CE7C00             mov     edx, $007CCEB4
007CCC79   33C0                   xor     eax, eax

|
007CCC7B   E874D9FDFF             call    007AA5F4
007CCC80   8D45E8                 lea     eax, [ebp-$18]
007CCC83   50                     push    eax
007CCC84   8D45D8                 lea     eax, [ebp-$28]
007CCC87   BA01000000             mov     edx, $00000001
007CCC8C   B101                   mov     cl, $01

|
007CCC8E   E8DDBDC4FF             call    00418A70
007CCC93   8D55D8                 lea     edx, [ebp-$28]
007CCC96   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007CCC97   E80804C5FF             call    0041D0A4
007CCC9C   8D45E8                 lea     eax, [ebp-$18]

* Reference to: Variants.@VarToInteger(TVarData;TVarData):Integer;
|
007CCC9F   E8F485C4FF             call    00415298
007CCCA4   8BF0                   mov     esi, eax
007CCCA6   8D55D0                 lea     edx, [ebp-$30]
007CCCA9   8BC6                   mov     eax, esi

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007CCCAB   E8B4E0C3FF             call    0040AD64
007CCCB0   8B4DD0                 mov     ecx, [ebp-$30]
007CCCB3   8D45D4                 lea     eax, [ebp-$2C]

* Possible String Reference to: 'CODMESA = '
|
007CCCB6   BAC4CE7C00             mov     edx, $007CCEC4

* Reference to: System.@LStrCat3;
|
007CCCBB   E8E88AC3FF             call    004057A8
007CCCC0   8B45D4                 mov     eax, [ebp-$2C]
007CCCC3   50                     push    eax
007CCCC4   6A00                   push    $00
007CCCC6   6A01                   push    $01
007CCCC8   8B07                   mov     eax, [edi]
007CCCCA   8B4068                 mov     eax, [eax+$68]
007CCCCD   B9D8CE7C00             mov     ecx, $007CCED8

* Possible String Reference to: 'MESAS'
|
007CCCD2   BAB4CE7C00             mov     edx, $007CCEB4

|
007CCCD7   E88CADFDFF             call    007A7A68
007CCCDC   8B07                   mov     eax, [edi]
007CCCDE   8B4068                 mov     eax, [eax+$68]

* Reference to: DB.TDataSet.IsEmpty(TDataSet):Boolean;
|
007CCCE1   E8D6E1D1FF             call    004EAEBC
007CCCE6   84C0                   test    al, al
007CCCE8   74BC                   jz      007CCCA6
007CCCEA   8B07                   mov     eax, [edi]
007CCCEC   8B4068                 mov     eax, [eax+$68]

* Reference to: DB.TDataSet.IsEmpty(TDataSet):Boolean;
|
007CCCEF   E8C8E1D1FF             call    004EAEBC
007CCCF4   84C0                   test    al, al
007CCCF6   0F84F5000000           jz      007CCDF1
007CCCFC   8B07                   mov     eax, [edi]
007CCCFE   8B4068                 mov     eax, [eax+$68]

* Reference to: DB.TDataSet.Insert(TDataSet);
|
007CCD01   E8C6E7D1FF             call    004EB4CC
007CCD06   8B07                   mov     eax, [edi]
007CCD08   8B8004020000           mov     eax, [eax+$0204]
007CCD0E   8BD6                   mov     edx, esi
007CCD10   8B08                   mov     ecx, [eax]
007CCD12   FF91A8000000           call    dword ptr [ecx+$00A8]
007CCD18   8975C4                 mov     [ebp-$3C], esi
007CCD1B   DB45C4                 fild    dword ptr [ebp-$3C]
007CCD1E   83C4F4                 add     esp, -$0C
007CCD21   DB3C24                 fstp    tbyte ptr [esp]
007CCD24   9B                     wait
007CCD25   8D55C8                 lea     edx, [ebp-$38]

* Possible String Reference to: '00'
|
007CCD28   B8E4CE7C00             mov     eax, $007CCEE4

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
007CCD2D   E80A08C4FF             call    0040D53C
007CCD32   8B4DC8                 mov     ecx, [ebp-$38]
007CCD35   8D45CC                 lea     eax, [ebp-$34]

* Possible String Reference to: 'MESA '
|
007CCD38   BAF0CE7C00             mov     edx, $007CCEF0

* Reference to: System.@LStrCat3;
|
007CCD3D   E8668AC3FF             call    004057A8
007CCD42   8B55CC                 mov     edx, [ebp-$34]
007CCD45   8B07                   mov     eax, [edi]
007CCD47   8B8008020000           mov     eax, [eax+$0208]
007CCD4D   8B08                   mov     ecx, [eax]
007CCD4F   FF91B0000000           call    dword ptr [ecx+$00B0]
007CCD55   8B07                   mov     eax, [edi]
007CCD57   8B80980C0000           mov     eax, [eax+$0C98]
007CCD5D   8B55FC                 mov     edx, [ebp-$04]
007CCD60   8B08                   mov     ecx, [eax]
007CCD62   FF91B0000000           call    dword ptr [ecx+$00B0]
007CCD68   8B07                   mov     eax, [edi]
007CCD6A   8B80940C0000           mov     eax, [eax+$0C94]
007CCD70   BA00CF7C00             mov     edx, $007CCF00
007CCD75   8B08                   mov     ecx, [eax]
007CCD77   FF91B0000000           call    dword ptr [ecx+$00B0]
007CCD7D   8B07                   mov     eax, [edi]
007CCD7F   8B800C020000           mov     eax, [eax+$020C]
007CCD85   BA0CCF7C00             mov     edx, $007CCF0C
007CCD8A   8B08                   mov     ecx, [eax]
007CCD8C   FF91B0000000           call    dword ptr [ecx+$00B0]
007CCD92   8B07                   mov     eax, [edi]
007CCD94   8B8028020000           mov     eax, [eax+$0228]
007CCD9A   33D2                   xor     edx, edx
007CCD9C   8B08                   mov     ecx, [eax]
007CCD9E   FF91A8000000           call    dword ptr [ecx+$00A8]
007CCDA4   8B07                   mov     eax, [edi]
007CCDA6   8B802C020000           mov     eax, [eax+$022C]
007CCDAC   33D2                   xor     edx, edx
007CCDAE   8B08                   mov     ecx, [eax]
007CCDB0   FF91A8000000           call    dword ptr [ecx+$00A8]
007CCDB6   8B07                   mov     eax, [edi]
007CCDB8   8B8088050000           mov     eax, [eax+$0588]
007CCDBE   BA05000000             mov     edx, $00000005
007CCDC3   8B08                   mov     ecx, [eax]
007CCDC5   FF91A8000000           call    dword ptr [ecx+$00A8]
007CCDCB   8B07                   mov     eax, [edi]
007CCDCD   8B808C050000           mov     eax, [eax+$058C]
007CCDD3   BA05000000             mov     edx, $00000005
007CCDD8   8B08                   mov     ecx, [eax]
007CCDDA   FF91A8000000           call    dword ptr [ecx+$00A8]
007CCDE0   8B07                   mov     eax, [edi]
007CCDE2   8B4068                 mov     eax, [eax+$68]
007CCDE5   8B10                   mov     edx, [eax]
007CCDE7   FF924C020000           call    dword ptr [edx+$024C]
007CCDED   C645FB01               mov     byte ptr [ebp-$05], $01
007CCDF1   33C0                   xor     eax, eax
007CCDF3   5A                     pop     edx
007CCDF4   59                     pop     ecx
007CCDF5   59                     pop     ecx
007CCDF6   648910                 mov     fs:[eax], edx
007CCDF9   EB3B                   jmp     007CCE36

* Reference to: System.@HandleOnException;
|
007CCDFB   E9B07DC3FF             jmp     00404BB0
007CCE00   0100                   add     [eax], eax
007CCE02   0000                   add     [eax], al
007CCE04   40                     inc     eax
007CCE05   95                     xchg    eax, ebp
007CCE06   40                     inc     eax
007CCE07   000CCE                 add     [esi+ecx*8], cl
007CCE0A   7C00                   jl      007CCE0C
007CCE0C   89C3                   mov     ebx, eax
007CCE0E   6A00                   push    $00
007CCE10   8B4B04                 mov     ecx, [ebx+$04]
007CCE13   8D45C0                 lea     eax, [ebp-$40]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
007CCE16   BA18CF7C00             mov     edx, $007CCF18

* Reference to: System.@LStrCat3;
|
007CCE1B   E88889C3FF             call    004057A8
007CCE20   8B45C0                 mov     eax, [ebp-$40]
007CCE23   668B0D38CF7C00         mov     cx, word ptr [$007CCF38]
007CCE2A   B201                   mov     dl, $01

|
007CCE2C   E8FB6CC7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CCE31   E87A80C3FF             call    00404EB0

****** END
|
007CCE36   33C0                   xor     eax, eax
007CCE38   5A                     pop     edx
007CCE39   59                     pop     ecx
007CCE3A   59                     pop     ecx
007CCE3B   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CCE3E   684BCE7C00             push    $007CCE4B
007CCE43   C3                     ret


* Reference to: System.@HandleFinally;
|
007CCE44   E9EF7EC3FF             jmp     00404D38
007CCE49   EBF8                   jmp     007CCE43

****** END
|
007CCE4B   33C0                   xor     eax, eax
007CCE4D   5A                     pop     edx
007CCE4E   59                     pop     ecx
007CCE4F   59                     pop     ecx
007CCE50   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]√'
|
007CCE53   6890CE7C00             push    $007CCE90
007CCE58   8D45C0                 lea     eax, [ebp-$40]

* Reference to: System.@LStrClr(void;void);
|
007CCE5B   E83C86C3FF             call    0040549C
007CCE60   8D45C8                 lea     eax, [ebp-$38]
007CCE63   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CCE68   E85386C3FF             call    004054C0
007CCE6D   8D45D8                 lea     eax, [ebp-$28]

* Reference to object Variant
|
007CCE70   8B1524114000           mov     edx, [$00401124]
007CCE76   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007CCE7B   E81C92C3FF             call    0040609C
007CCE80   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CCE83   E81486C3FF             call    0040549C
007CCE88   C3                     ret


* Reference to: System.@HandleFinally;
|
007CCE89   E9AA7EC3FF             jmp     00404D38
007CCE8E   EBC8                   jmp     007CCE58

****** END
|
007CCE90   8A45FB                 mov     al, byte ptr [ebp-$05]
007CCE93   5F                     pop     edi
007CCE94   5E                     pop     esi
007CCE95   5B                     pop     ebx
007CCE96   8BE5                   mov     esp, ebp
007CCE98   5D                     pop     ebp
007CCE99   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CCE89(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CCE89   E9AA7EC3FF             jmp     00404D38

|
007CCE8E   EBC8                   jmp     007CCE58
007CCE90   8A45FB                 mov     al, byte ptr [ebp-$05]
007CCE93   5F                     pop     edi
007CCE94   5E                     pop     esi
007CCE95   5B                     pop     ebx
007CCE96   8BE5                   mov     esp, ebp
007CCE98   5D                     pop     ebp
007CCE99   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CCF3D(Sender : TObject);
begin
(*
007CCF3D   8BEC                   mov     ebp, esp
007CCF3F   33C9                   xor     ecx, ecx
007CCF41   51                     push    ecx
007CCF42   51                     push    ecx
007CCF43   51                     push    ecx
007CCF44   51                     push    ecx
007CCF45   51                     push    ecx
007CCF46   51                     push    ecx
007CCF47   53                     push    ebx
007CCF48   56                     push    esi
007CCF49   57                     push    edi
007CCF4A   8955FC                 mov     [ebp-$04], edx
007CCF4D   8BD8                   mov     ebx, eax
007CCF4F   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CCF52   E8F589C3FF             call    0040594C
007CCF57   33C0                   xor     eax, eax
007CCF59   55                     push    ebp

* Possible String Reference to: 'ÈJ|√ˇÎ„äE˚_^[ãÂ]√'
|
007CCF5A   68E9D07C00             push    $007CD0E9

***** TRY
|
007CCF5F   64FF30                 push    dword ptr fs:[eax]
007CCF62   648920                 mov     fs:[eax], esp
007CCF65   C645FB00               mov     byte ptr [ebp-$05], $00
007CCF69   33C0                   xor     eax, eax
007CCF6B   55                     push    ebp
007CCF6C   68BFD07C00             push    $007CD0BF

***** TRY
|
007CCF71   64FF30                 push    dword ptr fs:[eax]
007CCF74   648920                 mov     fs:[eax], esp
007CCF77   33C0                   xor     eax, eax
007CCF79   55                     push    ebp
007CCF7A   6876D07C00             push    $007CD076

***** TRY
|
007CCF7F   64FF30                 push    dword ptr fs:[eax]
007CCF82   648920                 mov     fs:[eax], esp
007CCF85   8D55F0                 lea     edx, [ebp-$10]
007CCF88   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CCF8B   E8906BFDFF             call    007A3B20
007CCF90   8B4DF0                 mov     ecx, [ebp-$10]
007CCF93   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODMESA = '
|
007CCF96   BA04D17C00             mov     edx, $007CD104

* Reference to: System.@LStrCat3;
|
007CCF9B   E80888C3FF             call    004057A8
007CCFA0   8B45F4                 mov     eax, [ebp-$0C]
007CCFA3   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
007CCFA4   6818D17C00             push    $007CD118
007CCFA9   6A01                   push    $01
007CCFAB   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CCFB0   8B00                   mov     eax, [eax]
007CCFB2   8B4068                 mov     eax, [eax+$68]
007CCFB5   B928D17C00             mov     ecx, $007CD128

* Possible String Reference to: 'MESAS'
|
007CCFBA   BA34D17C00             mov     edx, $007CD134

|
007CCFBF   E8A4AAFDFF             call    007A7A68
007CCFC4   84C0                   test    al, al
007CCFC6   0F84A0000000           jz      007CD06C
007CCFCC   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CCFD1   8B00                   mov     eax, [eax]
007CCFD3   8B4068                 mov     eax, [eax+$68]

* Possible String Reference to: 'STATUS'
|
007CCFD6   BA44D17C00             mov     edx, $007CD144

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CCFDB   E824CCD1FF             call    004E9C04
007CCFE0   8D55EC                 lea     edx, [ebp-$14]
007CCFE3   8B08                   mov     ecx, [eax]
007CCFE5   FF5160                 call    dword ptr [ecx+$60]
007CCFE8   8B45EC                 mov     eax, [ebp-$14]
007CCFEB   BA54D17C00             mov     edx, $007CD154

* Reference to: System.@LStrCmp;
|
007CCFF0   E8B388C3FF             call    004058A8
007CCFF5   7575                   jnz     007CD06C
007CCFF7   6A01                   push    $01
007CCFF9   8B0DBCA57D00           mov     ecx, [$007DA5BC]
007CCFFF   8B09                   mov     ecx, [ecx]
007CD001   8B55FC                 mov     edx, [ebp-$04]
007CD004   8BC3                   mov     eax, ebx

|
007CD006   E881080000             call    007CD88C
007CD00B   84C0                   test    al, al
007CD00D   745D                   jz      007CD06C
007CD00F   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD014   8B00                   mov     eax, [eax]
007CD016   8B4068                 mov     eax, [eax+$68]

|
007CD019   E8029EFDFF             call    007A6E20
007CD01E   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD023   8B00                   mov     eax, [eax]
007CD025   8B800C020000           mov     eax, [eax+$020C]
007CD02B   BA60D17C00             mov     edx, $007CD160
007CD030   8B08                   mov     ecx, [eax]
007CD032   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Now:TDateTime;
|
007CD038   E81F0CC4FF             call    0040DC5C
007CD03D   83C4F8                 add     esp, -$08
007CD040   DD1C24                 fstp    qword ptr [esp]
007CD043   9B                     wait
007CD044   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD049   8B00                   mov     eax, [eax]
007CD04B   8B8024020000           mov     eax, [eax+$0224]
007CD051   8B10                   mov     edx, [eax]
007CD053   FF92A0000000           call    dword ptr [edx+$00A0]
007CD059   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD05E   8B00                   mov     eax, [eax]
007CD060   8B4068                 mov     eax, [eax+$68]

|
007CD063   E8F89EFDFF             call    007A6F60
007CD068   C645FB01               mov     byte ptr [ebp-$05], $01
007CD06C   33C0                   xor     eax, eax
007CD06E   5A                     pop     edx
007CD06F   59                     pop     ecx
007CD070   59                     pop     ecx
007CD071   648910                 mov     fs:[eax], edx
007CD074   EB3B                   jmp     007CD0B1

* Reference to: System.@HandleOnException;
|
007CD076   E9357BC3FF             jmp     00404BB0
007CD07B   0100                   add     [eax], eax
007CD07D   0000                   add     [eax], al
007CD07F   40                     inc     eax
007CD080   95                     xchg    eax, ebp
007CD081   40                     inc     eax
007CD082   0087D07C0089           add     [edi+$89007CD0], al
007CD088   C3                     ret

007CD089   6A00                   push    $00

* Reference to field TFrmGereComanda.Owner : TComponent
|
007CD08B   8B4B04                 mov     ecx, [ebx+$04]
007CD08E   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Ocorreu um erro na funÁ„o AbreMesa.'
|
007CD091   BA6CD17C00             mov     edx, $007CD16C

* Reference to: System.@LStrCat3;
|
007CD096   E80D87C3FF             call    004057A8
007CD09B   8B45E8                 mov     eax, [ebp-$18]
007CD09E   668B0D94D17C00         mov     cx, word ptr [$007CD194]
007CD0A5   B201                   mov     dl, $01

|
007CD0A7   E8806AC7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CD0AC   E8FF7DC3FF             call    00404EB0

****** END
|
007CD0B1   33C0                   xor     eax, eax
007CD0B3   5A                     pop     edx
007CD0B4   59                     pop     ecx
007CD0B5   59                     pop     ecx
007CD0B6   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CD0B9   68C6D07C00             push    $007CD0C6
007CD0BE   C3                     ret


* Reference to: System.@HandleFinally;
|
007CD0BF   E9747CC3FF             jmp     00404D38
007CD0C4   EBF8                   jmp     007CD0BE

****** END
|
007CD0C6   33C0                   xor     eax, eax
007CD0C8   5A                     pop     edx
007CD0C9   59                     pop     ecx
007CD0CA   59                     pop     ecx
007CD0CB   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]√'
|
007CD0CE   68F0D07C00             push    $007CD0F0
007CD0D3   8D45E8                 lea     eax, [ebp-$18]
007CD0D6   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CD0DB   E8E083C3FF             call    004054C0
007CD0E0   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CD0E3   E8B483C3FF             call    0040549C
007CD0E8   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CD0E9(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CD0E9   E94A7CC3FF             jmp     00404D38

|
007CD0EE   EBE3                   jmp     007CD0D3
007CD0F0   8A45FB                 mov     al, byte ptr [ebp-$05]
007CD0F3   5F                     pop     edi
007CD0F4   5E                     pop     esi
007CD0F5   5B                     pop     ebx
007CD0F6   8BE5                   mov     esp, ebp
007CD0F8   5D                     pop     ebp
007CD0F9   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CD149(Sender : TObject);
begin
(*
007CD149   53                     push    ebx
007CD14A   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CD199(Sender : TObject);
begin
(*
007CD199   8BEC                   mov     ebp, esp
007CD19B   6A00                   push    $00
007CD19D   6A00                   push    $00
007CD19F   6A00                   push    $00
007CD1A1   6A00                   push    $00
007CD1A3   6A00                   push    $00
007CD1A5   6A00                   push    $00
007CD1A7   53                     push    ebx
007CD1A8   56                     push    esi
007CD1A9   57                     push    edi
007CD1AA   8BD9                   mov     ebx, ecx
007CD1AC   8955FC                 mov     [ebp-$04], edx
007CD1AF   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CD1B2   E89587C3FF             call    0040594C
007CD1B7   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CD1BA   E88D87C3FF             call    0040594C
007CD1BF   33C0                   xor     eax, eax
007CD1C1   55                     push    ebp
007CD1C2   683AD47C00             push    $007CD43A

***** TRY
|
007CD1C7   64FF30                 push    dword ptr fs:[eax]
007CD1CA   648920                 mov     fs:[eax], esp
007CD1CD   C645FB00               mov     byte ptr [ebp-$05], $00
007CD1D1   33D2                   xor     edx, edx
007CD1D3   55                     push    ebp
007CD1D4   6808D47C00             push    $007CD408

***** TRY
|
007CD1D9   64FF32                 push    dword ptr fs:[edx]
007CD1DC   648922                 mov     fs:[edx], esp
007CD1DF   33D2                   xor     edx, edx
007CD1E1   55                     push    ebp
007CD1E2   68BFD37C00             push    $007CD3BF

***** TRY
|
007CD1E7   64FF32                 push    dword ptr fs:[edx]
007CD1EA   648922                 mov     fs:[edx], esp
007CD1ED   A108B57D00             mov     eax, dword ptr [$007DB508]
007CD1F2   803800                 cmp     byte ptr [eax], $00
007CD1F5   0F84BA010000           jz      007CD3B5
007CD1FB   8D55F0                 lea     edx, [ebp-$10]
007CD1FE   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CD201   E81A69FDFF             call    007A3B20
007CD206   8B4DF0                 mov     ecx, [ebp-$10]
007CD209   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODMESA = '
|
007CD20C   BA58D47C00             mov     edx, $007CD458

* Reference to: System.@LStrCat3;
|
007CD211   E89285C3FF             call    004057A8
007CD216   8B45F4                 mov     eax, [ebp-$0C]
007CD219   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
007CD21A   686CD47C00             push    $007CD46C
007CD21F   6A01                   push    $01
007CD221   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD226   8B00                   mov     eax, [eax]
007CD228   8B4068                 mov     eax, [eax+$68]
007CD22B   B97CD47C00             mov     ecx, $007CD47C

* Possible String Reference to: 'MESAS'
|
007CD230   BA88D47C00             mov     edx, $007CD488

|
007CD235   E82EA8FDFF             call    007A7A68
007CD23A   84C0                   test    al, al
007CD23C   0F8473010000           jz      007CD3B5
007CD242   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD247   8B00                   mov     eax, [eax]
007CD249   8B4068                 mov     eax, [eax+$68]

|
007CD24C   E8CF9BFDFF             call    007A6E20

* Reference to: SysUtils.Now:TDateTime;
|
007CD251   E8060AC4FF             call    0040DC5C
007CD256   83C4F8                 add     esp, -$08
007CD259   DD1C24                 fstp    qword ptr [esp]
007CD25C   9B                     wait
007CD25D   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD262   8B00                   mov     eax, [eax]
007CD264   8B8024020000           mov     eax, [eax+$0224]
007CD26A   8B10                   mov     edx, [eax]
007CD26C   FF92A0000000           call    dword ptr [edx+$00A0]
007CD272   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD277   8B00                   mov     eax, [eax]
007CD279   8B800C020000           mov     eax, [eax+$020C]
007CD27F   8B5508                 mov     edx, [ebp+$08]
007CD282   8B08                   mov     ecx, [eax]
007CD284   FF91B0000000           call    dword ptr [ecx+$00B0]
007CD28A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD28F   8B00                   mov     eax, [eax]
007CD291   8B4068                 mov     eax, [eax+$68]

|
007CD294   E8C79CFDFF             call    007A6F60
007CD299   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD29E   8B00                   mov     eax, [eax]
007CD2A0   8B4070                 mov     eax, [eax+$70]

|
007CD2A3   E8789BFDFF             call    007A6E20

* Reference to: SysUtils.Now:TDateTime;
|
007CD2A8   E8AF09C4FF             call    0040DC5C
007CD2AD   83C4F8                 add     esp, -$08
007CD2B0   DD1C24                 fstp    qword ptr [esp]
007CD2B3   9B                     wait
007CD2B4   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD2B9   8B00                   mov     eax, [eax]
007CD2BB   8B8030090000           mov     eax, [eax+$0930]
007CD2C1   8B10                   mov     edx, [eax]
007CD2C3   FF92A0000000           call    dword ptr [edx+$00A0]
007CD2C9   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD2CE   8B00                   mov     eax, [eax]
007CD2D0   8B4070                 mov     eax, [eax+$70]

|
007CD2D3   E8889CFDFF             call    007A6F60
007CD2D8   84DB                   test    bl, bl
007CD2DA   0F84C9000000           jz      007CD3A9

* Possible String Reference to: '(CODMESA =:CODMESA) AND (NUMLCTO =:
|                                NUMLCTO)'
|
007CD2E0   6898D47C00             push    $007CD498
007CD2E5   6A00                   push    $00
007CD2E7   6A01                   push    $01
007CD2E9   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD2EE   8B00                   mov     eax, [eax]
007CD2F0   8B4074                 mov     eax, [eax+$74]
007CD2F3   B97CD47C00             mov     ecx, $007CD47C

* Possible String Reference to: 'MESAITEM'
|
007CD2F8   BACCD47C00             mov     edx, $007CD4CC

|
007CD2FD   E866A7FDFF             call    007A7A68
007CD302   84C0                   test    al, al
007CD304   0F849F000000           jz      007CD3A9
007CD30A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD30F   8B00                   mov     eax, [eax]
007CD311   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.First(TDataSet);
|
007CD314   E813DDD1FF             call    004EB02C
007CD319   EB77                   jmp     007CD392
007CD31B   8B158CA97D00           mov     edx, [$007DA98C]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
007CD321   E812E1D1FF             call    004EB438
007CD326   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD32B   8B00                   mov     eax, [eax]
007CD32D   8B80E0050000           mov     eax, [eax+$05E0]
007CD333   BAE0D47C00             mov     edx, $007CD4E0
007CD338   8B08                   mov     ecx, [eax]
007CD33A   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Now:TDateTime;
|
007CD340   E81709C4FF             call    0040DC5C
007CD345   83C4F8                 add     esp, -$08
007CD348   DD1C24                 fstp    qword ptr [esp]
007CD34B   9B                     wait
007CD34C   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: 'HH:MM'
|
007CD34F   B8ECD47C00             mov     eax, $007CD4EC

|
007CD354   E87F15C4FF             call    0040E8D8
007CD359   8B55EC                 mov     edx, [ebp-$14]
007CD35C   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD361   8B00                   mov     eax, [eax]
007CD363   8B80740C0000           mov     eax, [eax+$0C74]
007CD369   8B08                   mov     ecx, [eax]
007CD36B   FF91B0000000           call    dword ptr [ecx+$00B0]
007CD371   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD376   8B00                   mov     eax, [eax]
007CD378   8B4074                 mov     eax, [eax+$74]
007CD37B   8B10                   mov     edx, [eax]
007CD37D   FF924C020000           call    dword ptr [edx+$024C]
007CD383   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD388   8B00                   mov     eax, [eax]
007CD38A   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Next(TDataSet);
|
007CD38D   E8B2DFD1FF             call    004EB344
007CD392   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CD397   8B00                   mov     eax, [eax]
007CD399   8B4074                 mov     eax, [eax+$74]
007CD39C   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
007CD3A3   0F8472FFFFFF           jz      007CD31B
007CD3A9   C645FB01               mov     byte ptr [ebp-$05], $01
007CD3AD   A108B57D00             mov     eax, dword ptr [$007DB508]
007CD3B2   C60000                 mov     byte ptr [eax], $00
007CD3B5   33C0                   xor     eax, eax
007CD3B7   5A                     pop     edx
007CD3B8   59                     pop     ecx
007CD3B9   59                     pop     ecx
007CD3BA   648910                 mov     fs:[eax], edx
007CD3BD   EB3B                   jmp     007CD3FA

* Reference to: System.@HandleOnException;
|
007CD3BF   E9EC77C3FF             jmp     00404BB0
007CD3C4   0100                   add     [eax], eax
007CD3C6   0000                   add     [eax], al
007CD3C8   40                     inc     eax
007CD3C9   95                     xchg    eax, ebp
007CD3CA   40                     inc     eax
007CD3CB   00D0                   add     al, dl
007CD3CD   D37C0089               sar     dword ptr [eax+eax-$77], cl
007CD3D1   C3                     ret

007CD3D2   6A00                   push    $00
007CD3D4   8B4B04                 mov     ecx, [ebx+$04]
007CD3D7   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Ocorreu um erro na funÁ„o AtuTela.'
|
007CD3DA   BAFCD47C00             mov     edx, $007CD4FC

* Reference to: System.@LStrCat3;
|
007CD3DF   E8C483C3FF             call    004057A8
007CD3E4   8B45E8                 mov     eax, [ebp-$18]
007CD3E7   668B0D24D57C00         mov     cx, word ptr [$007CD524]
007CD3EE   B201                   mov     dl, $01

|
007CD3F0   E83767C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CD3F5   E8B67AC3FF             call    00404EB0

****** END
|
007CD3FA   33C0                   xor     eax, eax
007CD3FC   5A                     pop     edx
007CD3FD   59                     pop     ecx
007CD3FE   59                     pop     ecx
007CD3FF   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CD402   680FD47C00             push    $007CD40F
007CD407   C3                     ret


* Reference to: System.@HandleFinally;
|
007CD408   E92B79C3FF             jmp     00404D38
007CD40D   EBF8                   jmp     007CD407

****** END
|
007CD40F   33C0                   xor     eax, eax
007CD411   5A                     pop     edx
007CD412   59                     pop     ecx
007CD413   59                     pop     ecx
007CD414   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CD417   6841D47C00             push    $007CD441
007CD41C   8D45E8                 lea     eax, [ebp-$18]
007CD41F   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CD424   E89780C3FF             call    004054C0
007CD429   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CD42C   E86B80C3FF             call    0040549C
007CD431   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
007CD434   E86380C3FF             call    0040549C
007CD439   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CD408(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CD408   E92B79C3FF             jmp     00404D38

|
007CD40D   EBF8                   jmp     007CD407
007CD40F   33C0                   xor     eax, eax
007CD411   5A                     pop     edx
007CD412   59                     pop     ecx
007CD413   59                     pop     ecx
007CD414   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CD417   6841D47C00             push    $007CD441
007CD41C   8D45E8                 lea     eax, [ebp-$18]
007CD41F   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CD424   E89780C3FF             call    004054C0
007CD429   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CD42C   E86B80C3FF             call    0040549C
007CD431   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
007CD434   E86380C3FF             call    0040549C
007CD439   C3                     ret


* Reference to: System.@HandleFinally;
|
007CD43A   E9F978C3FF             jmp     00404D38
007CD43F   EBDB                   jmp     007CD41C

****** END
|
007CD441   8A45FB                 mov     al, byte ptr [ebp-$05]
007CD444   5F                     pop     edi
007CD445   5E                     pop     esi
007CD446   5B                     pop     ebx
007CD447   8BE5                   mov     esp, ebp
007CD449   5D                     pop     ebp
007CD44A   C20400                 ret     $0004

*)
end;

procedure TFrmGereComanda._PROC_007CD4B3(Sender : TObject);
begin
(*
007CD4B3   4D                     dec     ebp
007CD4B4   4C                     dec     esp
007CD4B5   43                     inc     ebx
007CD4B6   54                     push    esp
007CD4B7   4F                     dec     edi
007CD4B8   203D3A4E554D           and     [$4D554E3A], bh
007CD4BE   4C                     dec     esp
007CD4BF   43                     inc     ebx
007CD4C0   54                     push    esp
007CD4C1   4F                     dec     edi
007CD4C2   2900                   sub     dword ptr [eax], eax
007CD4C4   FFFF                   DB  $FF, $FF  //      
007CD4C6   FFFF                   DB  $FF, $FF  //      
007CD4C8   0800                   or      [eax], al
007CD4CA   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CD88D(Sender : TObject);
begin
(*
007CD88D   8BEC                   mov     ebp, esp
007CD88F   83C4F0                 add     esp, -$10
007CD892   53                     push    ebx
007CD893   56                     push    esi
007CD894   57                     push    edi
007CD895   33DB                   xor     ebx, ebx
007CD897   895DF0                 mov     [ebp-$10], ebx
007CD89A   894DF8                 mov     [ebp-$08], ecx
007CD89D   8955FC                 mov     [ebp-$04], edx
007CD8A0   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CD8A3   E8A480C3FF             call    0040594C
007CD8A8   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CD8AB   E89C80C3FF             call    0040594C
007CD8B0   8B358CA97D00           mov     esi, [$007DA98C]
007CD8B6   33C0                   xor     eax, eax
007CD8B8   55                     push    ebp
007CD8B9   685CDA7C00             push    $007CDA5C

***** TRY
|
007CD8BE   64FF30                 push    dword ptr fs:[eax]
007CD8C1   648920                 mov     fs:[eax], esp
007CD8C4   C645F700               mov     byte ptr [ebp-$09], $00
007CD8C8   33C0                   xor     eax, eax
007CD8CA   55                     push    ebp
007CD8CB   6832DA7C00             push    $007CDA32

***** TRY
|
007CD8D0   64FF30                 push    dword ptr fs:[eax]
007CD8D3   648920                 mov     fs:[eax], esp
007CD8D6   33C0                   xor     eax, eax
007CD8D8   55                     push    ebp
007CD8D9   68E9D97C00             push    $007CD9E9

***** TRY
|
007CD8DE   64FF30                 push    dword ptr fs:[eax]
007CD8E1   648920                 mov     fs:[eax], esp
007CD8E4   8B06                   mov     eax, [esi]
007CD8E6   8B4070                 mov     eax, [eax+$70]

|
007CD8E9   E8B693FDFF             call    007A6CA4
007CD8EE   84C0                   test    al, al
007CD8F0   0F84E9000000           jz      007CD9DF
007CD8F6   8B06                   mov     eax, [esi]
007CD8F8   8B8024090000           mov     eax, [eax+$0924]
007CD8FE   8B55FC                 mov     edx, [ebp-$04]
007CD901   8B08                   mov     ecx, [eax]
007CD903   FF91B0000000           call    dword ptr [ecx+$00B0]

|
007CD909   E87643FEFF             call    007B1C84
007CD90E   8BD0                   mov     edx, eax
007CD910   8B06                   mov     eax, [esi]
007CD912   8B8028090000           mov     eax, [eax+$0928]
007CD918   8B08                   mov     ecx, [eax]
007CD91A   FF91A8000000           call    dword ptr [ecx+$00A8]

* Reference to: SysUtils.Now:TDateTime;
|
007CD920   E83703C4FF             call    0040DC5C
007CD925   83C4F8                 add     esp, -$08
007CD928   DD1C24                 fstp    qword ptr [esp]
007CD92B   9B                     wait
007CD92C   8B06                   mov     eax, [esi]
007CD92E   8B802C090000           mov     eax, [eax+$092C]
007CD934   8B10                   mov     edx, [eax]
007CD936   FF92A0000000           call    dword ptr [edx+$00A0]

* Reference to: SysUtils.Now:TDateTime;
|
007CD93C   E81B03C4FF             call    0040DC5C
007CD941   83C4F8                 add     esp, -$08
007CD944   DD1C24                 fstp    qword ptr [esp]
007CD947   9B                     wait
007CD948   8B06                   mov     eax, [esi]
007CD94A   8B8030090000           mov     eax, [eax+$0930]
007CD950   8B10                   mov     edx, [eax]
007CD952   FF92A0000000           call    dword ptr [edx+$00A0]
007CD958   8B15A4B57D00           mov     edx, [$007DB5A4]
007CD95E   8B12                   mov     edx, [edx]
007CD960   8B06                   mov     eax, [esi]
007CD962   8B8034090000           mov     eax, [eax+$0934]
007CD968   8B08                   mov     ecx, [eax]
007CD96A   FF91B0000000           call    dword ptr [ecx+$00B0]
007CD970   8B06                   mov     eax, [esi]
007CD972   8B8038090000           mov     eax, [eax+$0938]
007CD978   8B55F8                 mov     edx, [ebp-$08]
007CD97B   8B08                   mov     ecx, [eax]
007CD97D   FF91B0000000           call    dword ptr [ecx+$00B0]
007CD983   8B06                   mov     eax, [esi]
007CD985   8B803C090000           mov     eax, [eax+$093C]
007CD98B   8B5508                 mov     edx, [ebp+$08]
007CD98E   8B08                   mov     ecx, [eax]
007CD990   FF91A8000000           call    dword ptr [ecx+$00A8]
007CD996   6A00                   push    $00
007CD998   6A00                   push    $00
007CD99A   8B06                   mov     eax, [esi]
007CD99C   8B8040090000           mov     eax, [eax+$0940]
007CD9A2   8B10                   mov     edx, [eax]
007CD9A4   FF92A4000000           call    dword ptr [edx+$00A4]
007CD9AA   8B06                   mov     eax, [esi]
007CD9AC   8B8044090000           mov     eax, [eax+$0944]
007CD9B2   BA78DA7C00             mov     edx, $007CDA78
007CD9B7   8B08                   mov     ecx, [eax]
007CD9B9   FF91B0000000           call    dword ptr [ecx+$00B0]
007CD9BF   8B06                   mov     eax, [esi]
007CD9C1   8B4070                 mov     eax, [eax+$70]

|
007CD9C4   E89795FDFF             call    007A6F60
007CD9C9   8B06                   mov     eax, [esi]
007CD9CB   8B8028090000           mov     eax, [eax+$0928]
007CD9D1   8B10                   mov     edx, [eax]
007CD9D3   FF5258                 call    dword ptr [edx+$58]

* Reference to GlobalVar_007DF5E0
|
007CD9D6   A3E0F57D00             mov     dword ptr [$007DF5E0], eax
007CD9DB   C645F701               mov     byte ptr [ebp-$09], $01
007CD9DF   33C0                   xor     eax, eax
007CD9E1   5A                     pop     edx
007CD9E2   59                     pop     ecx
007CD9E3   59                     pop     ecx
007CD9E4   648910                 mov     fs:[eax], edx
007CD9E7   EB3B                   jmp     007CDA24

* Reference to: System.@HandleOnException;
|
007CD9E9   E9C271C3FF             jmp     00404BB0
007CD9EE   0100                   add     [eax], eax
007CD9F0   0000                   add     [eax], al
007CD9F2   40                     inc     eax
007CD9F3   95                     xchg    eax, ebp
007CD9F4   40                     inc     eax
007CD9F5   00FA                   add     dl, bh
007CD9F7   D97C0089               fstcw   word ptr [eax+eax-$77]
007CD9FB   C3                     ret

007CD9FC   6A00                   push    $00
007CD9FE   8B4B04                 mov     ecx, [ebx+$04]
007CDA01   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'Ocorreu um erro na funÁ„o AdicionaM
|                                esaLcto.'
|
007CDA04   BA84DA7C00             mov     edx, $007CDA84

* Reference to: System.@LStrCat3;
|
007CDA09   E89A7DC3FF             call    004057A8
007CDA0E   8B45F0                 mov     eax, [ebp-$10]
007CDA11   668B0DB4DA7C00         mov     cx, word ptr [$007CDAB4]
007CDA18   B201                   mov     dl, $01

|
007CDA1A   E80D61C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CDA1F   E88C74C3FF             call    00404EB0

****** END
|
007CDA24   33C0                   xor     eax, eax
007CDA26   5A                     pop     edx
007CDA27   59                     pop     ecx
007CDA28   59                     pop     ecx
007CDA29   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CDA2C   6839DA7C00             push    $007CDA39
007CDA31   C3                     ret


* Reference to: System.@HandleFinally;
|
007CDA32   E90173C3FF             jmp     00404D38
007CDA37   EBF8                   jmp     007CDA31

****** END
|
007CDA39   33C0                   xor     eax, eax
007CDA3B   5A                     pop     edx
007CDA3C   59                     pop     ecx
007CDA3D   59                     pop     ecx
007CDA3E   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CDA41   6863DA7C00             push    $007CDA63
007CDA46   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
007CDA49   E84E7AC3FF             call    0040549C
007CDA4E   8D45F8                 lea     eax, [ebp-$08]
007CDA51   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CDA56   E8657AC3FF             call    004054C0
007CDA5B   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CDA5C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CDA5C   E9D772C3FF             jmp     00404D38

|
007CDA61   EBE3                   jmp     007CDA46
007CDA63   8A45F7                 mov     al, byte ptr [ebp-$09]
007CDA66   5F                     pop     edi
007CDA67   5E                     pop     esi
007CDA68   5B                     pop     ebx
007CDA69   8BE5                   mov     esp, ebp
007CDA6B   5D                     pop     ebp
007CDA6C   C20400                 ret     $0004

*)
end;

procedure TFrmGereComanda._PROC_007CDAE8(Sender : TObject);
begin
(*
007CDAE8   55                     push    ebp
007CDAE9   8BEC                   mov     ebp, esp
007CDAEB   33C9                   xor     ecx, ecx
007CDAED   51                     push    ecx
007CDAEE   51                     push    ecx
007CDAEF   51                     push    ecx
007CDAF0   51                     push    ecx
007CDAF1   51                     push    ecx
007CDAF2   51                     push    ecx
007CDAF3   53                     push    ebx
007CDAF4   56                     push    esi
007CDAF5   57                     push    edi
007CDAF6   8955FC                 mov     [ebp-$04], edx
007CDAF9   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CDAFC   E84B7EC3FF             call    0040594C
007CDB01   8B358CA97D00           mov     esi, [$007DA98C]
007CDB07   33C0                   xor     eax, eax
007CDB09   55                     push    ebp

* Possible String Reference to: 'Èâp√ˇÎ„äE˚_^[ãÂ]√'
|
007CDB0A   68AADC7C00             push    $007CDCAA

***** TRY
|
007CDB0F   64FF30                 push    dword ptr fs:[eax]
007CDB12   648920                 mov     fs:[eax], esp
007CDB15   C645FB00               mov     byte ptr [ebp-$05], $00
007CDB19   33D2                   xor     edx, edx
007CDB1B   55                     push    ebp
007CDB1C   6880DC7C00             push    $007CDC80

***** TRY
|
007CDB21   64FF32                 push    dword ptr fs:[edx]
007CDB24   648922                 mov     fs:[edx], esp
007CDB27   33D2                   xor     edx, edx
007CDB29   55                     push    ebp
007CDB2A   6837DC7C00             push    $007CDC37

***** TRY
|
007CDB2F   64FF32                 push    dword ptr fs:[edx]
007CDB32   648922                 mov     fs:[edx], esp
007CDB35   8B06                   mov     eax, [esi]
007CDB37   8B4058                 mov     eax, [eax+$58]
007CDB3A   8B9850020000           mov     ebx, [eax+$0250]
007CDB40   8BC3                   mov     eax, ebx
007CDB42   8B10                   mov     edx, [eax]
007CDB44   FF5244                 call    dword ptr [edx+$44]

* Possible String Reference to: 'select'
|
007CDB47   BAC4DC7C00             mov     edx, $007CDCC4
007CDB4C   8BC3                   mov     eax, ebx
007CDB4E   8B08                   mov     ecx, [eax]
007CDB50   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'm.codmesa, m.numLcto, m.dataini, m.
|                                datafim, m.cgcclie, m.CodFunc, '
|
007CDB53   BAD4DC7C00             mov     edx, $007CDCD4
007CDB58   8BC3                   mov     eax, ebx
007CDB5A   8B08                   mov     ecx, [eax]
007CDB5C   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'm.numpessoas, m.vlrtotal, m.status,
|                                 c.razao'
|
007CDB5F   BA20DD7C00             mov     edx, $007CDD20
007CDB64   8BC3                   mov     eax, ebx
007CDB66   8B08                   mov     ecx, [eax]
007CDB68   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'from mesalcto m'
|
007CDB6B   BA54DD7C00             mov     edx, $007CDD54
007CDB70   8BC3                   mov     eax, ebx
007CDB72   8B08                   mov     ecx, [eax]
007CDB74   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'left join clientes c'
|
007CDB77   BA6CDD7C00             mov     edx, $007CDD6C
007CDB7C   8BC3                   mov     eax, ebx
007CDB7E   8B08                   mov     ecx, [eax]
007CDB80   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'on (m.cgcclie = c.cgcclie)'
|
007CDB83   BA8CDD7C00             mov     edx, $007CDD8C
007CDB88   8BC3                   mov     eax, ebx
007CDB8A   8B08                   mov     ecx, [eax]
007CDB8C   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'where'
|
007CDB8F   BAB0DD7C00             mov     edx, $007CDDB0
007CDB94   8BC3                   mov     eax, ebx
007CDB96   8B08                   mov     ecx, [eax]
007CDB98   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: '(m.codmesa = '
|
007CDB9B   68C0DD7C00             push    $007CDDC0
007CDBA0   8D55F0                 lea     edx, [ebp-$10]
007CDBA3   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CDBA6   E8755FFDFF             call    007A3B20
007CDBAB   FF75F0                 push    dword ptr [ebp-$10]

* Possible String Reference to: ') and (m.status = '
|
007CDBAE   68D8DD7C00             push    $007CDDD8
007CDBB3   8D55EC                 lea     edx, [ebp-$14]
007CDBB6   B8F4DD7C00             mov     eax, $007CDDF4

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
007CDBBB   E8605FFDFF             call    007A3B20
007CDBC0   FF75EC                 push    dword ptr [ebp-$14]

* Possible String Reference to: ') and ((m.fechado is null) or (m.fe
|                                chado = 'F'))'
|
007CDBC3   6800DE7C00             push    $007CDE00
007CDBC8   8D45F4                 lea     eax, [ebp-$0C]
007CDBCB   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
007CDBD0   E8477CC3FF             call    0040581C
007CDBD5   8B55F4                 mov     edx, [ebp-$0C]
007CDBD8   8BC3                   mov     eax, ebx
007CDBDA   8B08                   mov     ecx, [eax]
007CDBDC   FF5138                 call    dword ptr [ecx+$38]
007CDBDF   8B06                   mov     eax, [esi]
007CDBE1   8B4058                 mov     eax, [eax+$58]
007CDBE4   80B85402000000         cmp     byte ptr [eax+$0254], $00
007CDBEB   7505                   jnz     007CDBF2

* Reference to: ActnMenus.TInternalMDIAction.UpdateTarget(TInternalMDIAction;TObject);
|
007CDBED   E8DED4DCFF             call    0059B0D0
007CDBF2   8B06                   mov     eax, [esi]
007CDBF4   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.Open(TDataSet);
|
007CDBF7   E858ADD1FF             call    004E8954
007CDBFC   8B06                   mov     eax, [esi]
007CDBFE   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.Last(TDataSet);
|
007CDC01   E8FED4D1FF             call    004EB104
007CDC06   8B06                   mov     eax, [esi]
007CDC08   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
007CDC0B   E890AED1FF             call    004E8AA0
007CDC10   84C0                   test    al, al
007CDC12   7410                   jz      007CDC24
007CDC14   8B06                   mov     eax, [esi]
007CDC16   8B4058                 mov     eax, [eax+$58]
007CDC19   8B10                   mov     edx, [eax]
007CDC1B   FF924C010000           call    dword ptr [edx+$014C]
007CDC21   48                     dec     eax
007CDC22   7D04                   jnl     007CDC28
007CDC24   33C0                   xor     eax, eax
007CDC26   EB02                   jmp     007CDC2A
007CDC28   B001                   mov     al, $01
007CDC2A   8845FB                 mov     [ebp-$05], al
007CDC2D   33C0                   xor     eax, eax
007CDC2F   5A                     pop     edx
007CDC30   59                     pop     ecx
007CDC31   59                     pop     ecx
007CDC32   648910                 mov     fs:[eax], edx
007CDC35   EB3B                   jmp     007CDC72

* Reference to: System.@HandleOnException;
|
007CDC37   E9746FC3FF             jmp     00404BB0
007CDC3C   0100                   add     [eax], eax
007CDC3E   0000                   add     [eax], al
007CDC40   40                     inc     eax
007CDC41   95                     xchg    eax, ebp
007CDC42   40                     inc     eax
007CDC43   0048DC                 add     [eax-$24], cl
007CDC46   7C00                   jl      007CDC48
007CDC48   89C3                   mov     ebx, eax
007CDC4A   6A00                   push    $00
007CDC4C   8B4B04                 mov     ecx, [ebx+$04]
007CDC4F   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Ocorreu um erro na funÁ„o VerificaM
|                                esa.'
|
007CDC52   BA3CDE7C00             mov     edx, $007CDE3C

* Reference to: System.@LStrCat3;
|
007CDC57   E84C7BC3FF             call    004057A8
007CDC5C   8B45E8                 mov     eax, [ebp-$18]
007CDC5F   668B0D68DE7C00         mov     cx, word ptr [$007CDE68]
007CDC66   B201                   mov     dl, $01

|
007CDC68   E8BF5EC7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CDC6D   E83E72C3FF             call    00404EB0

****** END
|
007CDC72   33C0                   xor     eax, eax
007CDC74   5A                     pop     edx
007CDC75   59                     pop     ecx
007CDC76   59                     pop     ecx
007CDC77   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CDC7A   6887DC7C00             push    $007CDC87
007CDC7F   C3                     ret


* Reference to: System.@HandleFinally;
|
007CDC80   E9B370C3FF             jmp     00404D38
007CDC85   EBF8                   jmp     007CDC7F

****** END
|
007CDC87   33C0                   xor     eax, eax
007CDC89   5A                     pop     edx
007CDC8A   59                     pop     ecx
007CDC8B   59                     pop     ecx
007CDC8C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]√'
|
007CDC8F   68B1DC7C00             push    $007CDCB1
007CDC94   8D45E8                 lea     eax, [ebp-$18]
007CDC97   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CDC9C   E81F78C3FF             call    004054C0
007CDCA1   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CDCA4   E8F377C3FF             call    0040549C
007CDCA9   C3                     ret


* Reference to: System.@HandleFinally;
|
007CDCAA   E98970C3FF             jmp     00404D38
007CDCAF   EBE3                   jmp     007CDC94

****** END
|
007CDCB1   8A45FB                 mov     al, byte ptr [ebp-$05]
007CDCB4   5F                     pop     edi
007CDCB5   5E                     pop     esi
007CDCB6   5B                     pop     ebx
007CDCB7   8BE5                   mov     esp, ebp
007CDCB9   5D                     pop     ebp
007CDCBA   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CDC80(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CDC80   E9B370C3FF             jmp     00404D38

|
007CDC85   EBF8                   jmp     007CDC7F
007CDC87   33C0                   xor     eax, eax
007CDC89   5A                     pop     edx
007CDC8A   59                     pop     ecx
007CDC8B   59                     pop     ecx
007CDC8C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]√'
|
007CDC8F   68B1DC7C00             push    $007CDCB1
007CDC94   8D45E8                 lea     eax, [ebp-$18]
007CDC97   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CDC9C   E81F78C3FF             call    004054C0
007CDCA1   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CDCA4   E8F377C3FF             call    0040549C
007CDCA9   C3                     ret


* Reference to: System.@HandleFinally;
|
007CDCAA   E98970C3FF             jmp     00404D38
007CDCAF   EBE3                   jmp     007CDC94

****** END
|
007CDCB1   8A45FB                 mov     al, byte ptr [ebp-$05]
007CDCB4   5F                     pop     edi
007CDCB5   5E                     pop     esi
007CDCB6   5B                     pop     ebx
007CDCB7   8BE5                   mov     esp, ebp
007CDCB9   5D                     pop     ebp
007CDCBA   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CDE6D(Sender : TObject);
begin
(*
007CDE6D   8BEC                   mov     ebp, esp
007CDE6F   83C4F0                 add     esp, -$10
007CDE72   53                     push    ebx
007CDE73   56                     push    esi
007CDE74   57                     push    edi
007CDE75   33C9                   xor     ecx, ecx
007CDE77   894DF0                 mov     [ebp-$10], ecx
007CDE7A   8955F8                 mov     [ebp-$08], edx
007CDE7D   8945FC                 mov     [ebp-$04], eax
007CDE80   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007CDE83   E8C47AC3FF             call    0040594C
007CDE88   33C0                   xor     eax, eax
007CDE8A   55                     push    ebp

* Possible String Reference to: 'ÈØl√ˇÎËäE˜_^[ãÂ]√'
|
007CDE8B   6884E07C00             push    $007CE084

***** TRY
|
007CDE90   64FF30                 push    dword ptr fs:[eax]
007CDE93   648920                 mov     fs:[eax], esp
007CDE96   C645F700               mov     byte ptr [ebp-$09], $00
007CDE9A   33D2                   xor     edx, edx
007CDE9C   55                     push    ebp
007CDE9D   685FE07C00             push    $007CE05F

***** TRY
|
007CDEA2   64FF32                 push    dword ptr fs:[edx]
007CDEA5   648922                 mov     fs:[edx], esp
007CDEA8   33D2                   xor     edx, edx
007CDEAA   55                     push    ebp
007CDEAB   6816E07C00             push    $007CE016

***** TRY
|
007CDEB0   64FF32                 push    dword ptr fs:[edx]
007CDEB3   648922                 mov     fs:[edx], esp
007CDEB6   8B45F8                 mov     eax, [ebp-$08]

|
007CDEB9   E86288FEFF             call    007B6720
007CDEBE   83F804                 cmp     eax, +$04
007CDEC1   0F8745010000           jnbe    007CE00C
007CDEC7   FF2485CEDE7C00         jmp     dword ptr [$7CDECE+eax*4]
007CDECE   E2DE                   loop    -$22
007CDED0   7C00                   jl      007CDED2
007CDED2   B2DF                   mov     dl, $DF
007CDED4   7C00                   jl      007CDED6
007CDED6   C9                     leave
007CDED7   DF7C00E0               fistp   qword ptr [eax+eax-$20]
007CDEDB   DF7C00F7               fistp   qword ptr [eax+eax-$09]
007CDEDF   DF7C008B               fistp   qword ptr [eax+eax-$75]
007CDEE3   55                     push    ebp
007CDEE4   F8                     clc
007CDEE5   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmGereComanda._PROC_007CDAE8()
|
007CDEE8   E8FBFBFFFF             call    007CDAE8
007CDEED   84C0                   test    al, al
007CDEEF   0F8417010000           jz      007CE00C
007CDEF5   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CDEFA   8B00                   mov     eax, [eax]
007CDEFC   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'CODMESA'
|
007CDEFF   BAA0E07C00             mov     edx, $007CE0A0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CDF04   E8FBBCD1FF             call    004E9C04
007CDF09   8B10                   mov     edx, [eax]
007CDF0B   FF5258                 call    dword ptr [edx+$58]

* Reference to GlobalVar_007DF5DC
|
007CDF0E   A3DCF57D00             mov     dword ptr [$007DF5DC], eax
007CDF13   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CDF18   8B00                   mov     eax, [eax]
007CDF1A   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'NUMLCTO'
|
007CDF1D   BAB0E07C00             mov     edx, $007CE0B0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CDF22   E8DDBCD1FF             call    004E9C04
007CDF27   8B10                   mov     edx, [eax]
007CDF29   FF5258                 call    dword ptr [edx+$58]

* Reference to GlobalVar_007DF5E0
|
007CDF2C   A3E0F57D00             mov     dword ptr [$007DF5E0], eax
007CDF31   A18CA97D00             mov     eax, dword ptr [$007DA98C]
007CDF36   8B00                   mov     eax, [eax]
007CDF38   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'DATAINI'
|
007CDF3B   BAC0E07C00             mov     edx, $007CE0C0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CDF40   E8BFBCD1FF             call    004E9C04
007CDF45   8B10                   mov     edx, [eax]
007CDF47   FF5250                 call    dword ptr [edx+$50]
007CDF4A   DD1DE4F57D00           fstp    qword ptr [$007DF5E4]
007CDF50   9B                     wait
007CDF51   8B45FC                 mov     eax, [ebp-$04]

|
007CDF54   E85F020000             call    007CE1B8
007CDF59   33C0                   xor     eax, eax
007CDF5B   55                     push    ebp
007CDF5C   6890DF7C00             push    $007CDF90

***** TRY
|
007CDF61   64FF30                 push    dword ptr fs:[eax]
007CDF64   648920                 mov     fs:[eax], esp
007CDF67   BA01000000             mov     edx, $00000001
007CDF6C   8B45F8                 mov     eax, [ebp-$08]

|
007CDF6F   E80086FEFF             call    007B6574
007CDF74   C645F701               mov     byte ptr [ebp-$09], $01
007CDF78   33C0                   xor     eax, eax
007CDF7A   5A                     pop     edx
007CDF7B   59                     pop     ecx
007CDF7C   59                     pop     ecx
007CDF7D   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CDF80   6897DF7C00             push    $007CDF97
007CDF85   33D2                   xor     edx, edx
007CDF87   8B45F8                 mov     eax, [ebp-$08]

|
007CDF8A   E8E585FEFF             call    007B6574
007CDF8F   C3                     ret


* Reference to: System.@HandleFinally;
|
007CDF90   E9A36DC3FF             jmp     00404D38
007CDF95   EBEE                   jmp     007CDF85

****** END
|
007CDF97   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TFrmGereComanda.ckAtendida : TCheckBox
|
007CDF9A   8B8038030000           mov     eax, [eax+$0338]
007CDFA0   8B10                   mov     edx, [eax]

* Reference to method TCheckBox.GetChecked()
|
007CDFA2   FF92C8000000           call    dword ptr [edx+$00C8]
007CDFA8   8B1508B57D00           mov     edx, [$007DB508]
007CDFAE   8802                   mov     [edx], al
007CDFB0   EB5A                   jmp     007CE00C
007CDFB2   6A00                   push    $00
007CDFB4   668B0DC8E07C00         mov     cx, word ptr [$007CE0C8]
007CDFBB   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel adicionar itens porq
|                                ue outro terminal ja est· adicionan
|                                do itens!'
|
007CDFBD   B8D4E07C00             mov     eax, $007CE0D4

|
007CDFC2   E8655BC7FF             call    00443B2C
007CDFC7   EB43                   jmp     007CE00C
007CDFC9   6A00                   push    $00
007CDFCB   668B0DC8E07C00         mov     cx, word ptr [$007CE0C8]
007CDFD2   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel adicionar itens porq
|                                ue outro terminal est· digitando in
|                                formaÁıes nessa mesa!'
|
007CDFD4   B82CE17C00             mov     eax, $007CE12C

|
007CDFD9   E84E5BC7FF             call    00443B2C
007CDFDE   EB2C                   jmp     007CE00C
007CDFE0   6A00                   push    $00
007CDFE2   668B0DC8E07C00         mov     cx, word ptr [$007CE0C8]
007CDFE9   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel adicionar itens porq
|                                ue outro terminal est· digitando in
|                                formaÁıes nessa mesa!'
|
007CDFEB   B82CE17C00             mov     eax, $007CE12C

|
007CDFF0   E8375BC7FF             call    00443B2C
007CDFF5   EB15                   jmp     007CE00C
007CDFF7   6A00                   push    $00
007CDFF9   668B0DC8E07C00         mov     cx, word ptr [$007CE0C8]
007CE000   33D2                   xor     edx, edx

* Possible String Reference to: 'N„o È possivel adicionar itens porq
|                                ue outro terminal est· digitando in
|                                formaÁıes nessa mesa!'
|
007CE002   B82CE17C00             mov     eax, $007CE12C

|
007CE007   E8205BC7FF             call    00443B2C
007CE00C   33C0                   xor     eax, eax
007CE00E   5A                     pop     edx
007CE00F   59                     pop     ecx
007CE010   59                     pop     ecx
007CE011   648910                 mov     fs:[eax], edx
007CE014   EB3B                   jmp     007CE051

* Reference to: System.@HandleOnException;
|
007CE016   E9956BC3FF             jmp     00404BB0
007CE01B   0100                   add     [eax], eax
007CE01D   0000                   add     [eax], al
007CE01F   40                     inc     eax
007CE020   95                     xchg    eax, ebp
007CE021   40                     inc     eax
007CE022   0027                   add     [edi], ah
007CE024   E07C                   loopn   +$7C
007CE026   0089C36A008B           add     [ecx+$8B006AC3], cl
007CE02C   4B                     dec     ebx
007CE02D   048D                   add     al, -$73
007CE02F   45                     inc     ebp
007CE030   F0                     lock

* Possible String Reference to: 'Ocorreu um erro na funÁ„o AdiProdut
|                                o.'
|
007CE031   BA90E17C00             mov     edx, $007CE190

* Reference to: System.@LStrCat3;
|
007CE036   E86D77C3FF             call    004057A8
007CE03B   8B45F0                 mov     eax, [ebp-$10]
007CE03E   668B0DC8E07C00         mov     cx, word ptr [$007CE0C8]
007CE045   B201                   mov     dl, $01

|
007CE047   E8E05AC7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CE04C   E85F6EC3FF             call    00404EB0

****** END
|
007CE051   33C0                   xor     eax, eax
007CE053   5A                     pop     edx
007CE054   59                     pop     ecx
007CE055   59                     pop     ecx
007CE056   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CE059   6866E07C00             push    $007CE066
007CE05E   C3                     ret


* Reference to: System.@HandleFinally;
|
007CE05F   E9D46CC3FF             jmp     00404D38
007CE064   EBF8                   jmp     007CE05E

****** END
|
007CE066   33C0                   xor     eax, eax
007CE068   5A                     pop     edx
007CE069   59                     pop     ecx
007CE06A   59                     pop     ecx
007CE06B   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˜_^[ãÂ]√'
|
007CE06E   688BE07C00             push    $007CE08B
007CE073   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
007CE076   E82174C3FF             call    0040549C
007CE07B   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007CE07E   E81974C3FF             call    0040549C
007CE083   C3                     ret


* Reference to: System.@HandleFinally;
|
007CE084   E9AF6CC3FF             jmp     00404D38
007CE089   EBE8                   jmp     007CE073

****** END
|
007CE08B   8A45F7                 mov     al, byte ptr [ebp-$09]
007CE08E   5F                     pop     edi
007CE08F   5E                     pop     esi
007CE090   5B                     pop     ebx
007CE091   8BE5                   mov     esp, ebp
007CE093   5D                     pop     ebp
007CE094   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CE05F(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CE05F   E9D46CC3FF             jmp     00404D38

|
007CE064   EBF8                   jmp     007CE05E
007CE066   33C0                   xor     eax, eax
007CE068   5A                     pop     edx
007CE069   59                     pop     ecx
007CE06A   59                     pop     ecx
007CE06B   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˜_^[ãÂ]√'
|
007CE06E   688BE07C00             push    $007CE08B
007CE073   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
007CE076   E82174C3FF             call    0040549C
007CE07B   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007CE07E   E81974C3FF             call    0040549C
007CE083   C3                     ret


* Reference to: System.@HandleFinally;
|
007CE084   E9AF6CC3FF             jmp     00404D38
007CE089   EBE8                   jmp     007CE073

****** END
|
007CE08B   8A45F7                 mov     al, byte ptr [ebp-$09]
007CE08E   5F                     pop     edi
007CE08F   5E                     pop     esi
007CE090   5B                     pop     ebx
007CE091   8BE5                   mov     esp, ebp
007CE093   5D                     pop     ebp
007CE094   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CE0B2(Sender : TObject);
begin
(*
007CE0B2   4D                     dec     ebp
007CE0B3   4C                     dec     esp
007CE0B4   43                     inc     ebx
007CE0B5   54                     push    esp
007CE0B6   4F                     dec     edi
007CE0B7   00FF                   add     bh, bh
007CE0B9   FFFF                   DB  $FF, $FF  //      
007CE0BB   FF07                   inc     dword ptr [edi]
007CE0BD   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CE1B9(Sender : TObject);
begin
(*
007CE1B9   8BEC                   mov     ebp, esp
007CE1BB   33C9                   xor     ecx, ecx
007CE1BD   51                     push    ecx
007CE1BE   51                     push    ecx
007CE1BF   51                     push    ecx
007CE1C0   51                     push    ecx
007CE1C1   51                     push    ecx
007CE1C2   51                     push    ecx
007CE1C3   51                     push    ecx
007CE1C4   53                     push    ebx
007CE1C5   56                     push    esi
007CE1C6   57                     push    edi
007CE1C7   8BF8                   mov     edi, eax
007CE1C9   8B358CA97D00           mov     esi, [$007DA98C]
007CE1CF   33C0                   xor     eax, eax
007CE1D1   55                     push    ebp

* Possible String Reference to: 'È{i√ˇÎÎäEˇ_^[ãÂ]√'
|
007CE1D2   68B8E37C00             push    $007CE3B8

***** TRY
|
007CE1D7   64FF30                 push    dword ptr fs:[eax]
007CE1DA   648920                 mov     fs:[eax], esp
007CE1DD   C645FF00               mov     byte ptr [ebp-$01], $00
007CE1E1   33C0                   xor     eax, eax
007CE1E3   8905F0F57D00           mov     [$007DF5F0], eax
007CE1E9   8905F4F57D00           mov     [$007DF5F4], eax
007CE1EF   668905F8F57D00         mov     [$007DF5F8], ax
007CE1F6   33C0                   xor     eax, eax
007CE1F8   55                     push    ebp
007CE1F9   6896E37C00             push    $007CE396

***** TRY
|
007CE1FE   64FF30                 push    dword ptr fs:[eax]
007CE201   648920                 mov     fs:[eax], esp
007CE204   33C0                   xor     eax, eax
007CE206   55                     push    ebp
007CE207   684DE37C00             push    $007CE34D

***** TRY
|
007CE20C   64FF30                 push    dword ptr fs:[eax]
007CE20F   648920                 mov     fs:[eax], esp
007CE212   8D55F4                 lea     edx, [ebp-$0C]
007CE215   A1DCF57D00             mov     eax, dword ptr [$007DF5DC]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007CE21A   E845CBC3FF             call    0040AD64
007CE21F   8B4DF4                 mov     ecx, [ebp-$0C]
007CE222   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'CODMESA = '
|
007CE225   BAD4E37C00             mov     edx, $007CE3D4

* Reference to: System.@LStrCat3;
|
007CE22A   E87975C3FF             call    004057A8
007CE22F   8B45F8                 mov     eax, [ebp-$08]
007CE232   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
007CE233   68E8E37C00             push    $007CE3E8
007CE238   6A01                   push    $01
007CE23A   8B06                   mov     eax, [esi]
007CE23C   8B4068                 mov     eax, [eax+$68]
007CE23F   B9F8E37C00             mov     ecx, $007CE3F8

* Possible String Reference to: 'MESAS'
|
007CE244   BA04E47C00             mov     edx, $007CE404

|
007CE249   E81A98FDFF             call    007A7A68
007CE24E   84C0                   test    al, al
007CE250   0F84ED000000           jz      007CE343

* Possible String Reference to: '(CODMESA =:CODMESA) AND ((FECHADO <
|                                > 'T') OR (FECHADO IS NULL))'
|
007CE256   6814E47C00             push    $007CE414

* Possible String Reference to: 'NUMLCTO'
|
007CE25B   685CE47C00             push    $007CE45C
007CE260   6A01                   push    $01
007CE262   8B06                   mov     eax, [esi]
007CE264   8B4070                 mov     eax, [eax+$70]
007CE267   B9F8E37C00             mov     ecx, $007CE3F8

* Possible String Reference to: 'MESALCTO'
|
007CE26C   BA6CE47C00             mov     edx, $007CE46C

|
007CE271   E8F297FDFF             call    007A7A68

* Possible String Reference to: '(CODMESA =:CODMESA) AND (NUMLCTO =:
|                                NUMLCTO)'
|
007CE276   6880E47C00             push    $007CE480

* Possible String Reference to: 'ITEM'
|
007CE27B   68B4E47C00             push    $007CE4B4
007CE280   6A01                   push    $01
007CE282   8B06                   mov     eax, [esi]
007CE284   8B4074                 mov     eax, [eax+$74]
007CE287   B9F8E37C00             mov     ecx, $007CE3F8

* Possible String Reference to: 'MESAITEM'
|
007CE28C   BAC4E47C00             mov     edx, $007CE4C4

|
007CE291   E8D297FDFF             call    007A7A68
007CE296   8B06                   mov     eax, [esi]
007CE298   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.First(TDataSet);
|
007CE29B   E88CCDD1FF             call    004EB02C
007CE2A0   EB50                   jmp     007CE2F2
007CE2A2   8BC3                   mov     eax, ebx

* Possible String Reference to: 'STATUS'
|
007CE2A4   BAD8E47C00             mov     edx, $007CE4D8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CE2A9   E856B9D1FF             call    004E9C04
007CE2AE   8D55F0                 lea     edx, [ebp-$10]
007CE2B1   8B08                   mov     ecx, [eax]
007CE2B3   FF5160                 call    dword ptr [ecx+$60]
007CE2B6   8B45F0                 mov     eax, [ebp-$10]
007CE2B9   BAE8E47C00             mov     edx, $007CE4E8

* Reference to: System.@LStrCmp;
|
007CE2BE   E8E575C3FF             call    004058A8
007CE2C3   7423                   jz      007CE2E8
007CE2C5   8B06                   mov     eax, [esi]
007CE2C7   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'VLRTOTAL'
|
007CE2CA   BAF4E47C00             mov     edx, $007CE4F4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
007CE2CF   E830B9D1FF             call    004E9C04
007CE2D4   8B10                   mov     edx, [eax]
007CE2D6   FF5254                 call    dword ptr [edx+$54]
007CE2D9   DB2DF0F57D00           fld     tbyte ptr [$007DF5F0]
007CE2DF   DEC1                   faddp   st(1), st(0)
007CE2E1   DB3DF0F57D00           fstp    tbyte ptr [$007DF5F0]
007CE2E7   9B                     wait
007CE2E8   8B06                   mov     eax, [esi]
007CE2EA   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Next(TDataSet);
|
007CE2ED   E852D0D1FF             call    004EB344
007CE2F2   8B06                   mov     eax, [esi]
007CE2F4   8B5874                 mov     ebx, [eax+$74]
007CE2F7   80BBA100000000         cmp     byte ptr [ebx+$00A1], $00
007CE2FE   74A2                   jz      007CE2A2
007CE300   668B05F8F57D00         mov     ax, word ptr [$007DF5F8]
007CE307   50                     push    eax
007CE308   FF35F4F57D00           push    dword ptr [$007DF5F4]
007CE30E   FF35F0F57D00           push    dword ptr [$007DF5F0]
007CE314   8D55E8                 lea     edx, [ebp-$18]

* Possible String Reference to: '###,###,##0.00'
|
007CE317   B808E57C00             mov     eax, $007CE508

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
007CE31C   E81BF2C3FF             call    0040D53C
007CE321   8B4DE8                 mov     ecx, [ebp-$18]
007CE324   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'Valor total: $ '
|
007CE327   BA20E57C00             mov     edx, $007CE520

* Reference to: System.@LStrCat3;
|
007CE32C   E87774C3FF             call    004057A8
007CE331   8B55EC                 mov     edx, [ebp-$14]
007CE334   8B8740030000           mov     eax, [edi+$0340]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007CE33A   E8BD53CCFF             call    004936FC
007CE33F   C645FF01               mov     byte ptr [ebp-$01], $01
007CE343   33C0                   xor     eax, eax
007CE345   5A                     pop     edx
007CE346   59                     pop     ecx
007CE347   59                     pop     ecx
007CE348   648910                 mov     fs:[eax], edx
007CE34B   EB3B                   jmp     007CE388

* Reference to: System.@HandleOnException;
|
007CE34D   E95E68C3FF             jmp     00404BB0
007CE352   0100                   add     [eax], eax
007CE354   0000                   add     [eax], al
007CE356   40                     inc     eax
007CE357   95                     xchg    eax, ebp
007CE358   40                     inc     eax
007CE359   005EE3                 add     [esi-$1D], bl
007CE35C   7C00                   jl      007CE35E
007CE35E   89C3                   mov     ebx, eax
007CE360   6A00                   push    $00
007CE362   8B4B04                 mov     ecx, [ebx+$04]
007CE365   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'Ocorreu um erro ao executar a funÁ„
|                                o AbreMesaItem.'
|
007CE368   BA38E57C00             mov     edx, $007CE538

* Reference to: System.@LStrCat3;
|
007CE36D   E83674C3FF             call    004057A8
007CE372   8B45E4                 mov     eax, [ebp-$1C]
007CE375   668B0D70E57C00         mov     cx, word ptr [$007CE570]
007CE37C   B201                   mov     dl, $01

|
007CE37E   E8A957C7FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007CE383   E8286BC3FF             call    00404EB0

****** END
|
007CE388   33C0                   xor     eax, eax
007CE38A   5A                     pop     edx
007CE38B   59                     pop     ecx
007CE38C   59                     pop     ecx
007CE38D   648910                 mov     fs:[eax], edx

****** FINALLY
|
007CE390   689DE37C00             push    $007CE39D
007CE395   C3                     ret


* Reference to: System.@HandleFinally;
|
007CE396   E99D69C3FF             jmp     00404D38
007CE39B   EBF8                   jmp     007CE395

****** END
|
007CE39D   33C0                   xor     eax, eax
007CE39F   5A                     pop     edx
007CE3A0   59                     pop     ecx
007CE3A1   59                     pop     ecx
007CE3A2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
007CE3A5   68BFE37C00             push    $007CE3BF
007CE3AA   8D45E4                 lea     eax, [ebp-$1C]
007CE3AD   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CE3B2   E80971C3FF             call    004054C0
007CE3B7   C3                     ret


* Reference to: System.@HandleFinally;
|
007CE3B8   E97B69C3FF             jmp     00404D38
007CE3BD   EBEB                   jmp     007CE3AA

****** END
|
007CE3BF   8A45FF                 mov     al, byte ptr [ebp-$01]
007CE3C2   5F                     pop     edi
007CE3C3   5E                     pop     esi
007CE3C4   5B                     pop     ebx
007CE3C5   8BE5                   mov     esp, ebp
007CE3C7   5D                     pop     ebp
007CE3C8   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CE3B8(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CE3B8   E97B69C3FF             jmp     00404D38

|
007CE3BD   EBEB                   jmp     007CE3AA
007CE3BF   8A45FF                 mov     al, byte ptr [ebp-$01]
007CE3C2   5F                     pop     edi
007CE3C3   5E                     pop     esi
007CE3C4   5B                     pop     ebx
007CE3C5   8BE5                   mov     esp, ebp
007CE3C7   5D                     pop     ebp
007CE3C8   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CE44F(Sender : TObject);
begin
(*
007CE44F   4C                     dec     esp
007CE450   4C                     dec     esp
007CE451   2929                   sub     dword ptr [ecx], ebp
007CE453   00FF                   add     bh, bh
007CE455   FFFF                   DB  $FF, $FF  //      
007CE457   FF07                   inc     dword ptr [edi]
007CE459   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CE45E(Sender : TObject);
begin
(*
007CE45E   4D                     dec     ebp
007CE45F   4C                     dec     esp
007CE460   43                     inc     ebx
007CE461   54                     push    esp
007CE462   4F                     dec     edi
007CE463   00FF                   add     bh, bh
007CE465   FFFF                   DB  $FF, $FF  //      
007CE467   FF08                   dec     dword ptr [eax]
007CE469   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CE49B(Sender : TObject);
begin
(*
007CE49B   4D                     dec     ebp
007CE49C   4C                     dec     esp
007CE49D   43                     inc     ebx
007CE49E   54                     push    esp
007CE49F   4F                     dec     edi
007CE4A0   203D3A4E554D           and     [$4D554E3A], bh
007CE4A6   4C                     dec     esp
007CE4A7   43                     inc     ebx
007CE4A8   54                     push    esp
007CE4A9   4F                     dec     edi
007CE4AA   2900                   sub     dword ptr [eax], eax
007CE4AC   FFFF                   DB  $FF, $FF  //      
007CE4AE   FFFF                   DB  $FF, $FF  //      
007CE4B0   0400                   add     al, +$00
007CE4B2   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CE4DD(Sender : TObject);
begin
(*
007CE4DD   53                     push    ebx
007CE4DE   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CE628(Sender : TObject);
begin
(*
007CE628   0400                   add     al, +$00
007CE62A   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CE7BD(Sender : TObject);
begin
(*
007CE7BD   53                     push    ebx
007CE7BE   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CEB8A(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007CEB8A   E9A961C3FF             jmp     00404D38

|
007CEB8F   EBF8                   jmp     007CEB89
007CEB91   33C0                   xor     eax, eax
007CEB93   5A                     pop     edx
007CEB94   59                     pop     ecx
007CEB95   59                     pop     ecx
007CEB96   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
007CEB99   68C8EB7C00             push    $007CEBC8
007CEB9E   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
007CEBA1   E8F668C3FF             call    0040549C
007CEBA6   8D45D8                 lea     eax, [ebp-$28]
007CEBA9   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CEBAE   E80D69C3FF             call    004054C0
007CEBB3   8D45EC                 lea     eax, [ebp-$14]
007CEBB6   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007CEBBB   E80069C3FF             call    004054C0
007CEBC0   C3                     ret


* Reference to: System.@HandleFinally;
|
007CEBC1   E97261C3FF             jmp     00404D38
007CEBC6   EBD6                   jmp     007CEB9E

****** END
|
007CEBC8   5F                     pop     edi
007CEBC9   5E                     pop     esi
007CEBCA   5B                     pop     ebx
007CEBCB   8BE5                   mov     esp, ebp
007CEBCD   5D                     pop     ebp
007CEBCE   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CEBCF(Sender : TObject);
begin
(*
007CEBCF   0003                   add     [ebx], al
007CEBD1   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CECA5(Sender : TObject);
begin
(*
007CECA5   53                     push    ebx
007CECA6   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CEDA1(Sender : TObject);
begin
(*
007CEDA1   8BEC                   mov     ebp, esp
007CEDA3   53                     push    ebx
007CEDA4   8BD8                   mov     ebx, eax
007CEDA6   A154AE7D00             mov     eax, dword ptr [$007DAE54]
007CEDAB   8B00                   mov     eax, [eax]
007CEDAD   33D2                   xor     edx, edx
007CEDAF   8990D8000000           mov     [eax+$00D8], edx
007CEDB5   8990DC000000           mov     [eax+$00DC], edx
007CEDBB   33D2                   xor     edx, edx

* Reference to control TFrmGereComanda.nbComanda : TNotebook
|
007CEDBD   8B830C030000           mov     eax, [ebx+$030C]

* Reference to: Controls.TControl.SetVisible(TControl;Boolean);
|
007CEDC3   E82448CCFF             call    004935EC
007CEDC8   B201                   mov     dl, $01

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CEDCA   8B8304030000           mov     eax, [ebx+$0304]
007CEDD0   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TJvComboEdit.OFFS_64
|
007CEDD2   FF5164                 call    dword ptr [ecx+$64]
007CEDD5   BAFCED7C00             mov     edx, $007CEDFC

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CEDDA   8B8304030000           mov     eax, [ebx+$0304]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
007CEDE0   E8EBF1D2FF             call    004FDFD0

* Reference to control TFrmGereComanda.EdComanda : TJvComboEdit
|
007CEDE5   8B8304030000           mov     eax, [ebx+$0304]

|
007CEDEB   E8F072FDFF             call    007A60E0
007CEDF0   5B                     pop     ebx
007CEDF1   5D                     pop     ebp
007CEDF2   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CF1F5(Sender : TObject);
begin
(*
007CF1F5   4E                     dec     esi
007CF1F6   43                     inc     ebx
007CF1F7   00FF                   add     bh, bh
007CF1F9   FFFF                   DB  $FF, $FF  //      
007CF1FB   FF0400                 inc     dword ptr [eax+eax]
007CF1FE   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CF226(Sender : TObject);
begin
(*
007CF226   4E                     dec     esi
007CF227   43                     inc     ebx
007CF228   52                     push    edx
007CF229   45                     inc     ebp
007CF22A   50                     push    eax
007CF22B   52                     push    edx
007CF22C   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CF311(Sender : TObject);
begin
(*
007CF311   4E                     dec     esi
007CF312   43                     inc     ebx
007CF313   203D200000FF           and     [$FF000020], bh
007CF319   FFFF                   DB  $FF, $FF  //      
007CF31B   FF08                   dec     dword ptr [eax]
007CF31D   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CF322(Sender : TObject);
begin
(*
007CF322   4E                     dec     esi
007CF323   43                     inc     ebx
007CF324   52                     push    edx
007CF325   45                     inc     ebp
007CF326   50                     push    eax
007CF327   52                     push    edx
007CF328   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CF5F9(Sender : TObject);
begin
(*
007CF5F9   53                     push    ebx
007CF5FA   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CF611(Sender : TObject);
begin
(*
007CF611   8BEC                   mov     ebp, esp
007CF613   33C0                   xor     eax, eax
007CF615   55                     push    ebp

* Possible String Reference to: 'È˛V√ˇÎ¯]√ã¿É-¸ı}'
|
007CF616   6835F67C00             push    $007CF635

***** TRY
|
007CF61B   64FF30                 push    dword ptr fs:[eax]
007CF61E   648920                 mov     fs:[eax], esp
007CF621   FF05FCF57D00           inc     dword ptr [$007DF5FC]
007CF627   33C0                   xor     eax, eax
007CF629   5A                     pop     edx
007CF62A   59                     pop     ecx
007CF62B   59                     pop     ecx
007CF62C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']√ã¿É-¸ı}'
|
007CF62F   683CF67C00             push    $007CF63C
007CF634   C3                     ret


* Reference to: System.@HandleFinally;
|
007CF635   E9FE56C3FF             jmp     00404D38
007CF63A   EBF8                   jmp     007CF634

****** END
|
007CF63C   5D                     pop     ebp
007CF63D   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CF640(Sender : TObject);
begin
(*
007CF640   832DFCF57D0001         sub     dword ptr [$007DF5FC], +$01
007CF647   C3                     ret

*)
end;

procedure TFrmGereComanda._PROC_007CF648(Sender : TObject);
begin
(*
007CF648   94                     xchg    eax, esp
007CF649   F67C0000               idiv    byte ptr [eax+eax+$00]
007CF64D   0000                   add     [eax], al

*)
end;

procedure TFrmGereComanda._PROC_007CF7E2(Sender : TObject);
begin
(*
007CF7E2   7469                   jz      007CF84D
007CF7E4   6C                     insb
007CF7E5   69746172696F730C       imul    esi, [ecx+$72], $0C736F69
007CF7ED   0300                   add     eax, [eax]
007CF7EF   0002                   add     [edx], al
007CF7F1   0010                   add     [eax], dl
007CF7F3   6D                     insd
007CF7F4   6E                     outsb
007CF7F5   7555                   jnz     007CF84C
007CF7F7   7469                   jz      007CF862
007CF7F9   50                     push    eax
007CF7FA   61                     popa
007CF7FB   7261                   jb      007CF85E
007CF7FD   6D                     insd
007CF7FE   657472                 jz      007CF873
007CF801   6F                     outsd
007CF802   7310                   jnb     007CF814
007CF804   0300                   add     eax, [eax]
007CF806   0002                   add     [edx], al
007CF808   0008                   add     [eax], cl
007CF80A   6D                     insd
007CF80B   6E                     outsb
007CF80C   7541                   jnz     007CF84F
007CF80E   6A75                   push    $75
007CF810   6461                   popa
007CF812   1403                   adc     al, $03
007CF814   0000                   add     [eax], al

007CF816   0200                   add     al, byte ptr [eax]
007CF818   0B6D6E                 or      ebp, [ebp+$6E]
007CF81B   7541                   jnz     007CF85E
007CF81D   6A75                   push    $75
007CF81F   53                     push    ebx
007CF820   6F                     outsd
007CF821   627265                 bound   esi, qword ptr [edx+$65]
007CF824   1803                   sbb     [ebx], al
007CF826   0000                   add     [eax], al

007CF828   0200                   add     al, byte ptr [eax]
007CF82A   0B6D6E                 or      ebp, [ebp+$6E]
007CF82D   7543                   jnz     007CF872
007CF82F   61                     popa
007CF830   644D                   dec     ebp
007CF832   657361                 jnb     007CF896
007CF835   731C                   jnb     007CF853
007CF837   0300                   add     eax, [eax]
007CF839   0002                   add     [edx], al
007CF83B   0002                   add     [edx], al
007CF83D   4E                     dec     esi
007CF83E   3120                   xor     [eax], esp
007CF840   0300                   add     eax, [eax]
007CF842   0002                   add     [edx], al
007CF844   000E                   add     [esi], cl
007CF846   6D                     insd
007CF847   6E                     outsb
007CF848   7552                   jnz     007CF89C
007CF84A   657374                 jnb     007CF8C1
007CF84D   61                     popa
007CF84E   7572                   jnz     007CF8C2
007CF850   61                     popa
007CF851   6E                     outsb
007CF852   7465                   jz      007CF8B9
007CF854   2403                   and     al, $03
007CF856   0000                   add     [eax], al

007CF858   0200                   add     al, byte ptr [eax]
007CF85A   16                     push    ss
007CF85B   6D                     insd
007CF85C   6E                     outsb
007CF85D   7552                   jnz     007CF8B1
007CF85F   657347                 jnb     007CF8A9
007CF862   657265                 jb      007CF8CA
007CF865   6E                     outsb
007CF866   636961                 arpl    [ecx+$61], bp
007CF869   646F                   outsd
007CF86B   724D                   jb      007CF8BA
007CF86D   657361                 jnb     007CF8D1
007CF870   7328                   jnb     007CF89A
007CF872   0300                   add     eax, [eax]
007CF874   0002                   add     [edx], al
007CF876   000C6D6E754361         add     [$6143756E+ebp*2], cl
007CF87D   6447                   inc     edi
007CF87F   7275                   jb      007CF8F6
007CF881   706F                   jo      007CF8F2
007CF883   732C                   jnb     007CF8B1
007CF885   0300                   add     eax, [eax]
007CF887   0002                   add     [edx], al
007CF889   0016                   add     [esi], dl
007CF88B   6D                     insd
007CF88C   6E                     outsb
007CF88D   7552                   jnz     007CF8E1
007CF88F   657347                 jnb     007CF8D9
007CF892   657265                 jb      007CF8FA
007CF895   6E                     outsb
007CF896   636961                 arpl    [ecx+$61], bp
007CF899   646F                   outsd
007CF89B   7249                   jb      007CF8E6
007CF89D   7465                   jz      007CF904
007CF89F   6E                     outsb
007CF8A0   7330                   jnb     007CF8D2
007CF8A2   0300                   add     eax, [eax]
007CF8A4   0003                   add     [ebx], al
007CF8A6   0008                   add     [eax], cl
007CF8A8   706E                   jo      007CF918
007CF8AA   42                     inc     edx
007CF8AB   6F                     outsd
007CF8AC   746F                   jz      007CF91D
007CF8AE   657334                 jnb     007CF8E5
007CF8B1   0300                   add     eax, [eax]
007CF8B3   000400                 add     [eax+eax], al
007CF8B6   07                     pop     es
007CF8B7   7362                   jnb     007CF91B
007CF8B9   4D                     dec     ebp
007CF8BA   657361                 jnb     007CF91E
007CF8BD   7338                   jnb     007CF8F7
007CF8BF   0300                   add     eax, [eax]
007CF8C1   000400                 add     [eax+eax], al
007CF8C4   087362                 or      [ebx+$62], dh
007CF8C7   47                     inc     edi
007CF8C8   7275                   jb      007CF93F
007CF8CA   706F                   jo      007CF93B
007CF8CC   733C                   jnb     007CF90A
007CF8CE   0300                   add     eax, [eax]
007CF8D0   000400                 add     [eax+eax], al
007CF8D3   0C73                   or      al, $73
007CF8D5   624765                 bound   eax, qword ptr [edi+$65]
007CF8D8   7265                   jb      007CF93F
007CF8DA   6E                     outsb
007CF8DB   4D                     dec     ebp
007CF8DC   657361                 jnb     007CF940
007CF8DF   7340                   jnb     007CF921
007CF8E1   0300                   add     eax, [eax]
007CF8E3   000400                 add     [eax+eax], al
007CF8E6   0C73                   or      al, $73
007CF8E8   624765                 bound   eax, qword ptr [edi+$65]
007CF8EB   7265                   jb      007CF952
007CF8ED   6E                     outsb
007CF8EE   49                     dec     ecx
007CF8EF   7465                   jz      007CF956
007CF8F1   6E                     outsb
007CF8F2   7344                   jnb     007CF938
007CF8F4   0300                   add     eax, [eax]
007CF8F6   000400                 add     [eax+eax], al
007CF8F9   0C73                   or      al, $73
007CF8FB   625061                 bound   edx, qword ptr [eax+$61]
007CF8FE   7261                   jb      007CF961
007CF900   6D                     insd
007CF901   657472                 jz      007CF976
007CF904   6F                     outsd
007CF905   7348                   jnb     007CF94F
007CF907   0300                   add     eax, [eax]
007CF909   000400                 add     [eax+eax], al
007CF90C   06                     push    es
007CF90D   7362                   jnb     007CF971
007CF90F   53                     push    ebx
007CF910   61                     popa
007CF911   69724C03000005         imul    esi, [edx+$4C], $05000003
007CF918   000B                   add     [ebx], cl
007CF91A   746D                   jz      007CF989
007CF91C   50                     push    eax
007CF91D   7269                   jb      007CF988
007CF91F   6E                     outsb
007CF920   636970                 arpl    [ecx+$70], bp
007CF923   61                     popa
007CF924   6C                     insb
007CF925   50                     push    eax
007CF926   0300                   add     eax, [eax]
007CF928   0006                   add     [esi], al
007CF92A   000B                   add     [ebx], cl
007CF92C   626850                 bound   ebp, qword ptr [eax+$50]
007CF92F   7269                   jb      007CF99A
007CF931   6E                     outsb
007CF932   636970                 arpl    [ecx+$70], bp
007CF935   61                     popa
007CF936   6C                     insb
007CF937   54                     push    esp
007CF938   0300                   add     eax, [eax]
007CF93A   0002                   add     [edx], al
007CF93C   000B                   add     [ebx], cl
007CF93E   49                     dec     ecx
007CF93F   6D                     insd
007CF940   7072                   jo      007CF9B4
007CF942   657373                 jnb     007CF9B8
007CF945   6F                     outsd
007CF946   7261                   jb      007CF9A9
007CF948   315803                 xor     [eax+$03], ebx
007CF94B   0000                   add     [eax], al

007CF94D   0200                   add     al, byte ptr [eax]
007CF94F   094C6569               or      [ebp+$69], ecx
007CF953   7475                   jz      007CF9CA
007CF955   7261                   jb      007CF9B8
007CF957   58                     pop     eax
007CF958   315C0300               xor     [ebx+eax+$00], ebx
007CF95C   0002                   add     [edx], al
007CF95E   0007                   add     [edi], al
007CF960   52                     push    edx
007CF961   6564756F               jnz     007CF9D4
007CF965   5A                     pop     edx
007CF966   316003                 xor     [eax+$03], esp
007CF969   0000                   add     [eax], al

007CF96B   0200                   add     al, byte ptr [eax]
007CF96D   024E32                 add     cl, byte ptr [esi+$32]
007CF970   640300                 add     eax, fs:[eax]
007CF973   0002                   add     [edx], al
007CF975   0016                   add     [esi], dl
007CF977   4C                     dec     esp
007CF978   65697475726164614D     imul    esi, gs:[ebp+esi*2+$72], $4D616461
007CF981   656D                   insd
007CF983   7269                   jb      007CF9EE
007CF985   61                     popa
007CF986   46                     inc     esi
007CF987   697363616C3168         imul    esi, [ebx+$63], $68316C61
007CF98E   0300                   add     eax, [eax]
007CF990   0002                   add     [edx], al
007CF992   0002                   add     [edx], al
007CF994   4E                     dec     esi
007CF995   336C0300               xor     ebp, [ebx+eax+$00]
007CF999   0002                   add     [edx], al
007CF99B   0008                   add     [eax], cl
007CF99D   53                     push    ebx
007CF99E   61                     popa
007CF99F   6E                     outsb
007CF9A0   677269                 jb      007CFA0C
007CF9A3   61                     popa
007CF9A4   317003                 xor     [eax+$03], esi
007CF9A7   0000                   add     [eax], al

007CF9A9   0200                   add     al, byte ptr [eax]
007CF9AB   0D53756D70             or      eax, $706D7553
007CF9B0   7269                   jb      007CFA1B
007CF9B2   6D                     insd
007CF9B3   656E                   outsb
007CF9B5   746F                   jz      007CFA26
007CF9B7   7331                   jnb     007CF9EA
007CF9B9   7403                   jz      007CF9BE
007CF9BB   0000                   add     [eax], al

007CF9BD   0200                   add     al, byte ptr [eax]
007CF9BF   06                     push    es
007CF9C0   46                     inc     esi
007CF9C1   756E                   jnz     007CFA31
007CF9C3   657331                 jnb     007CF9F7
007CF9C6   7803                   js      007CF9CB
007CF9C8   0000                   add     [eax], al

007CF9CA   0200                   add     al, byte ptr [eax]
007CF9CC   024E34                 add     cl, byte ptr [esi+$34]
007CF9CF   7C03                   jl      007CF9D4
007CF9D1   0000                   add     [eax], al

007CF9D3   0200                   add     al, byte ptr [eax]
007CF9D5   0D486F7272             or      eax, $72726F48
007CF9DA   696F6465566572         imul    ebp, [edi+$64], $72655665
007CF9E1   6F                     outsd
007CF9E2   318003000002           xor     [eax+$2000003], eax
007CF9E8   001450                 add     [eax+edx*2], dl
007CF9EB   726F                   jb      007CFA5C
007CF9ED   677261                 jb      007CFA51
007CF9F0   6D                     insd
007CF9F1   61                     popa
007CF9F2   6F                     outsd
007CF9F3   646541                 inc     ecx
007CF9F6   6C                     insb
007CF9F7   7175                   jno     007CFA6E
007CF9F9   6F                     outsd
007CF9FA   7461                   jz      007CFA5D
007CF9FC   7331                   jnb     007CFA2F
007CF9FE   8403                   test    [ebx], al
007CFA00   0000                   add     [eax], al

007CFA02   0200                   add     al, byte ptr [eax]
007CFA04   1A4172                 sbb     al, byte ptr [ecx+$72]
007CFA07   7265                   jb      007CFA6E
007CFA09   646F                   outsd
007CFA0B   6E                     outsb
007CFA0C   6461                   popa
007CFA0E   6D                     insd
007CFA0F   656E                   outsb
007CFA11   746F                   jz      007CFA82
007CFA13   54                     push    esp
007CFA14   7275                   jb      007CFA8B
007CFA16   6E                     outsb
007CFA17   63616D                 arpl    [ecx+$6D], sp
007CFA1A   656E                   outsb
007CFA1C   746F                   jz      007CFA8D
007CFA1E   318803000002           xor     [eax+$2000003], ecx
007CFA24   0002                   add     [edx], al
007CFA26   4E                     dec     esi
007CFA27   358C030000             xor     eax, $0000038C
007CFA2C   0200                   add     al, byte ptr [eax]
007CFA2E   0C56                   or      al, $56
007CFA30   61                     popa
007CFA31   6E                     outsb
007CFA32   6461                   popa
007CFA34   53                     push    ebx
007CFA35   696D7065733190         imul    ebp, [ebp+$70], $90317365
007CFA3C   0300                   add     eax, [eax]
007CFA3E   0007                   add     [edi], al
007CFA40   000B                   add     [ebx], cl
007CFA42   58                     pop     eax
007CFA43   50                     push    eax
007CFA44   4D                     dec     ebp
007CFA45   61                     popa
007CFA46   6E                     outsb
007CFA47   69666573743194         imul    esp, [esi+$65], $94317473
007CFA4E   0300                   add     eax, [eax]
007CFA50   0002                   add     [edx], al
007CFA52   000D726F6361           add     [$61636F72], cl
007CFA58   646555                 push    ebp
007CFA5B   7375                   jnb     007CFAD2
007CFA5D   7269                   jb      007CFAC8
007CFA5F   6F                     outsd
007CFA60   319803000002           xor     [eax+$2000003], ebx
007CFA66   0002                   add     [edx], al
007CFA68   4E                     dec     esi
007CFA69   369C                   pushf   
007CFA6B   0300                   add     eax, [eax]
007CFA6D   0002                   add     [edx], al
007CFA6F   0002                   add     [edx], al
007CFA71   4E                     dec     esi
007CFA72   37                     aaa
007CFA73   A003000002             mov     al, byte ptr [$02000003]
007CFA78   000E                   add     [esi], cl
007CFA7A   4F                     dec     edi
007CFA7B   7574                   jnz     007CFAF1
007CFA7D   7261                   jb      007CFAE0
007CFA7F   7354                   jnb     007CFAD5
007CFA81   61                     popa
007CFA82   62656C                 bound   esp, qword ptr [ebp+$6C]
007CFA85   61                     popa
007CFA86   7331                   jnb     007CFAB9
007CFA88   A4                     movsb
007CFA89   0300                   add     eax, [eax]
007CFA8B   0002                   add     [edx], al
007CFA8D   0007                   add     [edi], al
007CFA8F   46                     inc     esi
007CFA90   6F                     outsd
007CFA91   6E                     outsb
007CFA92   7465                   jz      007CFAF9
007CFA94   7331                   jnb     007CFAC7
007CFA96   A803                   test    al, $03
007CFA98   0000                   add     [eax], al

007CFA9A   0200                   add     al, byte ptr [eax]
007CFA9C   0C49                   or      al, $49
007CFA9E   6D                     insd
007CFA9F   7072                   jo      007CFB13
007CFAA1   657373                 jnb     007CFB17
007CFAA4   6F                     outsd
007CFAA5   7261                   jb      007CFB08
007CFAA7   7331                   jnb     007CFADA
007CFAA9   AC                     lodsb
007CFAAA   0300                   add     eax, [eax]
007CFAAC   000400                 add     [eax+eax], al
007CFAAF   0E                     push    cs
007CFAB0   7362                   jnb     007CFB14
007CFAB2   56                     push    esi
007CFAB3   656E                   outsb
007CFAB5   6461                   popa
007CFAB7   53                     push    ebx
007CFAB8   696D706C6573B0         imul    ebp, [ebp+$70], $B073656C
007CFABF   0300                   add     eax, [eax]
007CFAC1   0002                   add     [edx], al
007CFAC3   000C49                 add     [ecx+ecx*2], cl
007CFAC6   6D                     insd
007CFAC7   7072                   jo      007CFB3B
007CFAC9   657373                 jnb     007CFB3F
007CFACC   6F                     outsd
007CFACD   7261                   jb      007CFB30
007CFACF   7231                   jb      007CFB02
007CFAD1   B403                   mov     ah, $03
007CFAD3   0000                   add     [eax], al

007CFAD5   0200                   add     al, byte ptr [eax]
007CFAD7   105665                 adc     [esi+$65], dl
007CFADA   7266                   jb      007CFB42
007CFADC   696361416C7175         imul    esp, [ebx+$61], $75716C41
007CFAE3   6F                     outsd
007CFAE4   7461                   jz      007CFB47
007CFAE6   7331                   jnb     007CFB19
007CFAE8   B803000008             mov     eax, $08000003
007CFAED   0006                   add     [esi], al
007CFAEF   4C                     dec     esp
007CFAF0   61                     popa
007CFAF1   62656C                 bound   esp, qword ptr [ebp+$6C]
007CFAF4   31BC0300000200         xor     [ebx+eax+$20000], edi
007CFAFB   024E38                 add     cl, byte ptr [esi+$38]
007CFAFE   C00300                 rol     byte ptr [ebx], $00
007CFB01   0002                   add     [edx], al
007CFB03   0011                   add     [ecx], dl
007CFB05   43                     inc     ebx
007CFB06   6F                     outsd
007CFB07   6E                     outsb
007CFB08   6642                   inc     dx
007CFB0A   61                     popa
007CFB0B   6E                     outsb
007CFB0C   636F64                 arpl    [edi+$64], bp
007CFB0F   6544                   inc     esp
007CFB11   61                     popa
007CFB12   646F                   outsd
007CFB14   7331                   jnb     007CFB47
007CFB16   C403                   les     eax, [ebx]
007CFB18   0000                   add     [eax], al

007CFB1A   0200                   add     al, byte ptr [eax]
007CFB1C   16                     push    ss
007CFB1D   47                     inc     edi
007CFB1E   657265                 jb      007CFB86
007CFB21   6E                     outsb
007CFB22   636961                 arpl    [ecx+$61], bp
007CFB25   646F                   outsd
007CFB27   7264                   jb      007CFB8D
007CFB29   6543                   inc     ebx
007CFB2B   6F                     outsd
007CFB2C   6D                     insd
007CFB2D   61                     popa
007CFB2E   6E                     outsb
007CFB2F   6461                   popa
007CFB31   7331                   jnb     007CFB64
007CFB33   1C00                   sbb     al, $00
007CFB35   1100                   adc     [eax], eax
007CFB37   48                     dec     eax
007CFB38   FE7C                   DB  $FE, $7C  //      
007CFB3A   000A                   add     [edx], cl
007CFB3C   46                     inc     esi
007CFB3D   6F                     outsd
007CFB3E   726D                   jb      007CFBAD
007CFB40   43                     inc     ebx
007CFB41   7265                   jb      007CFBA8
007CFB43   61                     popa
007CFB44   7465                   jz      007CFBAB
007CFB46   0F0048FF               str     word ptr [eax-$01]
007CFB4A   7C00                   jl      007CFB4C
007CFB4C   08466F                 or      [esi+$6F], al
007CFB4F   726D                   jb      007CFBBE
007CFB51   53                     push    ebx
007CFB52   686F771500             push    $0015776F
007CFB57   6C                     insb
007CFB58   FF7C                   DB  $FF, $7C  //      
007CFB5A   000E                   add     [esi], cl
007CFB5C   46                     inc     esi
007CFB5D   6F                     outsd
007CFB5E   726D                   jb      007CFBCD
007CFB60   43                     inc     ebx
007CFB61   6C                     insb
007CFB62   6F                     outsd
007CFB63   7365                   jnb     007CFBCA
007CFB65   51                     push    ecx
007CFB66   7565                   jnz     007CFBCD
007CFB68   7279                   jb      007CFBE3
007CFB6A   1000                   adc     [eax], al
007CFB6C   70FF                   jo      007CFB6D
007CFB6E   7C00                   jl      007CFB70
007CFB70   09466F                 or      [esi+$6F], eax
007CFB73   726D                   jb      007CFBE2
007CFB75   43                     inc     ebx
007CFB76   6C                     insb
007CFB77   6F                     outsd
007CFB78   7365                   jnb     007CFBDF
007CFB7A   17                     pop     ss
007CFB7B   0074FF7C               add     [edi+edi*8+$7C], dh
007CFB7F   0010                   add     [eax], dl
007CFB81   6D                     insd
007CFB82   6E                     outsb
007CFB83   7543                   jnz     007CFBC8
007CFB85   61                     popa
007CFB86   644D                   dec     ebp
007CFB88   657361                 jnb     007CFBEC
007CFB8B   7343                   jnb     007CFBD0
007CFB8D   6C                     insb
007CFB8E   69636B2200ACFF         imul    esp, [ebx+$6B], $FFAC0022
007CFB95   7C00                   jl      007CFB97
007CFB97   1B6D6E                 sbb     ebp, [ebp+$6E]
007CFB9A   7552                   jnz     007CFBEE
007CFB9C   657347                 jnb     007CFBE6
007CFB9F   657265                 jb      007CFC07
007CFBA2   6E                     outsb
007CFBA3   636961                 arpl    [ecx+$61], bp
007CFBA6   646F                   outsd
007CFBA8   724D                   jb      007CFBF7
007CFBAA   657361                 jnb     007CFC0E
007CFBAD   7343                   jnb     007CFBF2
007CFBAF   6C                     insb
007CFBB0   69636B18000C00         imul    esp, [ebx+$6B], $000C0018
007CFBB7   7D00                   jnl     007CFBB9
007CFBB9   116D6E                 adc     [ebp+$6E], ebp
007CFBBC   7543                   jnz     007CFC01
007CFBBE   61                     popa
007CFBBF   6447                   inc     edi
007CFBC1   7275                   jb      007CFC38
007CFBC3   706F                   jo      007CFC34
007CFBC5   7343                   jnb     007CFC0A
007CFBC7   6C                     insb
007CFBC8   69636B22004400         imul    esp, [ebx+$6B], $00440022
007CFBCF   7D00                   jnl     007CFBD1
007CFBD1   1B6D6E                 sbb     ebp, [ebp+$6E]
007CFBD4   7552                   jnz     007CFC28
007CFBD6   657347                 jnb     007CFC20
007CFBD9   657265                 jb      007CFC41
007CFBDC   6E                     outsb
007CFBDD   636961                 arpl    [ecx+$61], bp
007CFBE0   646F                   outsd
007CFBE2   7249                   jb      007CFC2D
007CFBE4   7465                   jz      007CFC4B
007CFBE6   6E                     outsb
007CFBE7   7343                   jnb     007CFC2C
007CFBE9   6C                     insb
007CFBEA   69636B16007C00         imul    esp, [ebx+$6B], $007C0016
007CFBF1   7D00                   jnl     007CFBF3
007CFBF3   0F6D                   DB  $0F, $6D  //
007CFBF5   6E                     outsb
007CFBF6   7543                   jnz     007CFC3B
007CFBF8   61                     popa
007CFBF9   6453                   push    ebx
007CFBFB   61                     popa
007CFBFC   6972436C69636B         imul    esi, [edx+$43], $6B63696C
007CFC03   17                     pop     ss
007CFC04   0088007D0010           add     [eax+$10007D00], cl
007CFC0A   6D                     insd
007CFC0B   6E                     outsb
007CFC0C   7541                   jnz     007CFC4F
007CFC0E   6A75                   push    $75
007CFC10   53                     push    ebx
007CFC11   6F                     outsd
007CFC12   627265                 bound   esi, qword ptr [edx+$65]
007CFC15   43                     inc     ebx
007CFC16   6C                     insb
007CFC17   69636B1700501A         imul    esp, [ebx+$6B], $1A500017
007CFC1E   7D00                   jnl     007CFC20
007CFC20   10746D50               adc     [ebp+ebp*2+$50], dh
007CFC24   7269                   jb      007CFC8F
007CFC26   6E                     outsb
007CFC27   636970                 arpl    [ecx+$70], bp
007CFC2A   61                     popa
007CFC2B   6C                     insb
007CFC2C   54                     push    esp
007CFC2D   696D6572150058         imul    ebp, [ebp+$65], $58001572
007CFC34   1C7D                   sbb     al, $7D
007CFC36   000E                   add     [esi], cl
007CFC38   4C                     dec     esp
007CFC39   656974757261583143     imul    esi, gs:[ebp+esi*2+$72], $43315861
007CFC42   6C                     insb
007CFC43   69636B1300641C         imul    esp, [ebx+$6B], $1C640013
007CFC4A   7D00                   jnl     007CFC4C
007CFC4C   0C52                   or      al, $52
007CFC4E   6564756F               jnz     007CFCC1
007CFC52   5A                     pop     edx
007CFC53   31436C                 xor     [ebx+$6C], eax
007CFC56   69636B2200701C         imul    esp, [ebx+$6B], $1C700022
007CFC5D   7D00                   jnl     007CFC5F
007CFC5F   1B4C6569               sbb     ecx, [ebp+$69]
007CFC63   7475                   jz      007CFCDA
007CFC65   7261                   jb      007CFCC8
007CFC67   6461                   popa
007CFC69   4D                     dec     ebp
007CFC6A   656D                   insd
007CFC6C   7269                   jb      007CFCD7
007CFC6E   61                     popa
007CFC6F   46                     inc     esi
007CFC70   697363616C3143         imul    esi, [ebx+$63], $43316C61
007CFC77   6C                     insb
007CFC78   69636B14007C1C         imul    esp, [ebx+$6B], $1C7C0014
007CFC7F   7D00                   jnl     007CFC81
007CFC81   0D53616E67             or      eax, $676E6153
007CFC86   7269                   jb      007CFCF1
007CFC88   61                     popa
007CFC89   31436C                 xor     [ebx+$6C], eax
007CFC8C   69636B1900881C         imul    esp, [ebx+$6B], $1C880019
007CFC93   7D00                   jnl     007CFC95
007CFC95   125375                 adc     dl, byte ptr [ebx+$75]
007CFC98   6D                     insd
007CFC99   7072                   jo      007CFD0D
007CFC9B   696D656E746F73         imul    ebp, [ebp+$65], $736F746E
007CFCA2   31436C                 xor     [ebx+$6C], eax
007CFCA5   69636B1900941C         imul    esp, [ebx+$6B], $1C940019
007CFCAC   7D00                   jnl     007CFCAE
007CFCAE   12486F                 adc     cl, byte ptr [eax+$6F]
007CFCB1   7272                   jb      007CFD25
007CFCB3   696F6465566572         imul    ebp, [edi+$64], $72655665
007CFCBA   6F                     outsd
007CFCBB   31436C                 xor     [ebx+$6C], eax
007CFCBE   69636B2000A01C         imul    esp, [ebx+$6B], $1CA00020
007CFCC5   7D00                   jnl     007CFCC7
007CFCC7   195072                 sbb     [eax+$72], edx
007CFCCA   6F                     outsd
007CFCCB   677261                 jb      007CFD2F
007CFCCE   6D                     insd
007CFCCF   61                     popa
007CFCD0   6F                     outsd
007CFCD1   646541                 inc     ecx
007CFCD4   6C                     insb
007CFCD5   7175                   jno     007CFD4C
007CFCD7   6F                     outsd
007CFCD8   7461                   jz      007CFD3B
007CFCDA   7331                   jnb     007CFD0D
007CFCDC   43                     inc     ebx
007CFCDD   6C                     insb
007CFCDE   69636B2600AC1C         imul    esp, [ebx+$6B], $1CAC0026
007CFCE5   7D00                   jnl     007CFCE7
007CFCE7   1F                     pop     ds
007CFCE8   41                     inc     ecx
007CFCE9   7272                   jb      007CFD5D
007CFCEB   65646F                 outsd
007CFCEE   6E                     outsb
007CFCEF   6461                   popa
007CFCF1   6D                     insd
007CFCF2   656E                   outsb
007CFCF4   746F                   jz      007CFD65
007CFCF6   54                     push    esp
007CFCF7   7275                   jb      007CFD6E
007CFCF9   6E                     outsb
007CFCFA   63616D                 arpl    [ecx+$6D], sp
007CFCFD   656E                   outsb
007CFCFF   746F                   jz      007CFD70
007CFD01   31436C                 xor     [ebx+$6C], eax
007CFD04   69636B1C00B81C         imul    esp, [ebx+$6B], $1CB8001C
007CFD0B   7D00                   jnl     007CFD0D
007CFD0D   156D6E7555             adc     eax, $55756E6D
007CFD12   7469                   jz      007CFD7D
007CFD14   50                     push    eax
007CFD15   61                     popa
007CFD16   7261                   jb      007CFD79
007CFD18   6D                     insd
007CFD19   657472                 jz      007CFD8E
007CFD1C   6F                     outsd
007CFD1D   7343                   jnb     007CFD62
007CFD1F   6C                     insb
007CFD20   69636B1300CC1D         imul    esp, [ebx+$6B], $1DCC0013
007CFD27   7D00                   jnl     007CFD29
007CFD29   0C46                   or      al, $46
007CFD2B   6F                     outsd
007CFD2C   6E                     outsb
007CFD2D   7465                   jz      007CFD94
007CFD2F   7331                   jnb     007CFD62
007CFD31   43                     inc     ebx
007CFD32   6C                     insb
007CFD33   69636B1800041E         imul    esp, [ebx+$6B], $1E040018
007CFD3A   7D00                   jnl     007CFD3C
007CFD3C   11496D                 adc     [ecx+$6D], ecx
007CFD3F   7072                   jo      007CFDB3
007CFD41   657373                 jnb     007CFDB7
007CFD44   6F                     outsd
007CFD45   7261                   jb      007CFDA8
007CFD47   7331                   jnb     007CFD7A
007CFD49   43                     inc     ebx
007CFD4A   6C                     insb
007CFD4B   69636B18003C1E         imul    esp, [ebx+$6B], $1E3C0018
007CFD52   7D00                   jnl     007CFD54
007CFD54   115661                 adc     [esi+$61], edx
007CFD57   6E                     outsb
007CFD58   6461                   popa
007CFD5A   53                     push    ebx
007CFD5B   696D7065733143         imul    ebp, [ebp+$70], $43317365
007CFD62   6C                     insb
007CFD63   69636B1800801F         imul    esp, [ebx+$6B], $1F800018
007CFD6A   7D00                   jnl     007CFD6C
007CFD6C   11496D                 adc     [ecx+$6D], ecx
007CFD6F   7072                   jo      007CFDE3
007CFD71   657373                 jnb     007CFDE7
007CFD74   6F                     outsd
007CFD75   7261                   jb      007CFDD8
007CFD77   7231                   jb      007CFDAA
007CFD79   43                     inc     ebx
007CFD7A   6C                     insb
007CFD7B   69636B1C00B81F         imul    esp, [ebx+$6B], $1FB8001C
007CFD82   7D00                   jnl     007CFD84
007CFD84   1556657266             adc     eax, $66726556
007CFD89   696361416C7175         imul    esp, [ebx+$61], $75716C41
007CFD90   6F                     outsd
007CFD91   7461                   jz      007CFDF4
007CFD93   7331                   jnb     007CFDC6
007CFD95   43                     inc     ebx
007CFD96   6C                     insb
007CFD97   69636B14007C20         imul    esp, [ebx+$6B], $207C0014
007CFD9E   7D00                   jnl     007CFDA0
007CFDA0   0D466F726D             or      eax, $6D726F46
007CFDA5   4D                     dec     ebp
007CFDA6   6F                     outsd
007CFDA7   7573                   jnz     007CFE1C
007CFDA9   6544                   inc     esp
007CFDAB   6F                     outsd
007CFDAC   776E                   jnbe    007CFE1C
007CFDAE   1D003C217D             sbb     eax, $7D213C00
007CFDB3   0016                   add     [esi], dl
007CFDB5   43                     inc     ebx
007CFDB6   6F                     outsd
007CFDB7   6E                     outsb
007CFDB8   6642                   inc     dx
007CFDBA   61                     popa
007CFDBB   6E                     outsb
007CFDBC   636F64                 arpl    [edi+$64], bp
007CFDBF   6544                   inc     esp
007CFDC1   61                     popa
007CFDC2   646F                   outsd
007CFDC4   7331                   jnb     007CFDF7
007CFDC6   43                     inc     ebx
007CFDC7   6C                     insb
007CFDC8   69636B22006421         imul    esp, [ebx+$6B], $21640022
007CFDCF   7D00                   jnl     007CFDD1
007CFDD1   1B4765                 sbb     eax, [edi+$65]
007CFDD4   7265                   jb      007CFE3B
007CFDD6   6E                     outsb
007CFDD7   636961                 arpl    [ecx+$61], bp
007CFDDA   646F                   outsd
007CFDDC   7264                   jb      007CFE42
007CFDDE   6543                   inc     ebx
007CFDE0   6F                     outsd
007CFDE1   6D                     insd
007CFDE2   61                     popa
007CFDE3   6E                     outsb
007CFDE4   6461                   popa
007CFDE6   7331                   jnb     007CFE19
007CFDE8   43                     inc     ebx
007CFDE9   6C                     insb
007CFDEA   69636B0D546672         imul    esp, [ebx+$6B], $7266540D
007CFDF1   6D                     insd
007CFDF2   50                     push    eax
007CFDF3   7269                   jb      007CFE5E
007CFDF5   6E                     outsb
007CFDF6   636970                 arpl    [ecx+$70], bp
007CFDF9   61                     popa
007CFDFA   6C                     insb
007CFDFB   0900                   or      [eax], eax
007CFDFD   306D45                 xor     [ebp+$45], ch
007CFE00   0030                   add     [eax], dh
007CFE02   3E4A                   dec     edx
007CFE04   0018                   add     [eax], bl
007CFE06   394A00                 cmp     [edx+$00], ecx
007CFE09   885644                 mov     [esi+$44], dl
007CFE0C   00A8C94400F8           add     [eax+$F80044C9], ch
007CFE12   53                     push    ebx
007CFE13   44                     inc     esp
007CFE14   00AC6F5500F894         add     [edi+ebp*2+$94F80055], ch
007CFE1B   55                     push    ebp
007CFE1C   0004F4                 add     [esp+esi*8], al
007CFE1F   47                     inc     edi
007CFE20   008D400028FE           add     [ebp+$FE280040], cl
007CFE26   7C00                   jl      007CFE28
007CFE28   07                     pop     es
007CFE29   0D5466726D             or      eax, $6D726654
007CFE2E   50                     push    eax
007CFE2F   7269                   jb      007CFE9A
007CFE31   6E                     outsb
007CFE32   636970                 arpl    [ecx+$70], bp
007CFE35   61                     popa
007CFE36   6C                     insb
007CFE37   94                     xchg    eax, esp
007CFE38   F67C0038               idiv    byte ptr [eax+eax+$38]
007CFE3C   B44A                   mov     ah, $4A
007CFE3E   005E00                 add     [esi+$00], bl
007CFE41   044D                   add     al, +$4D
007CFE43   656E                   outsb
007CFE45   7500                   jnz     007CFE47
007CFE47   00558B                 add     [ebp-$75], dl
007CFE4A   EC                     in      al, dx
007CFE4B   6A00                   push    $00
007CFE4D   53                     push    ebx
007CFE4E   8BD8                   mov     ebx, eax
007CFE50   33C0                   xor     eax, eax
007CFE52   55                     push    ebp

* Possible String Reference to: 'È=N√ˇÎ[Y]√'
|
007CFE53   68F6FE7C00             push    $007CFEF6

***** TRY
|
007CFE58   64FF30                 push    dword ptr fs:[eax]
007CFE5B   648920                 mov     fs:[eax], esp
007CFE5E   A160A47D00             mov     eax, dword ptr [$007DA460]
007CFE63   C60001                 mov     byte ptr [eax], $01

* Reference to : TDmC._PROC_007BEA98()
|
007CFE66   E82DECFEFF             call    007BEA98

|
007CFE6B   E89469FDFF             call    007A6804
007CFE70   8BC3                   mov     eax, ebx

|
007CFE72   E8C5180000             call    007D173C
007CFE77   8BC3                   mov     eax, ebx

|
007CFE79   E852150000             call    007D13D0

|
007CFE7E   E81154FDFF             call    007A5294

|
007CFE83   E8B858FDFF             call    007A5740

|
007CFE88   E8CF59FDFF             call    007A585C
007CFE8D   A150AD7D00             mov     eax, dword ptr [$007DAD50]
007CFE92   FF7004                 push    dword ptr [eax+$04]
007CFE95   FF30                   push    dword ptr [eax]
007CFE97   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007CFE9C   8B00                   mov     eax, [eax]
007CFE9E   8B808C070000           mov     eax, [eax+$078C]
007CFEA4   8B10                   mov     edx, [eax]
007CFEA6   FF5244                 call    dword ptr [edx+$44]

|
007CFEA9   E8D266E8FF             call    00656580

* Possible String Reference to: 'Entrada no WinSati - usu·rio: '
|
007CFEAE   680CFF7C00             push    $007CFF0C
007CFEB3   A1A4AF7D00             mov     eax, dword ptr [$007DAFA4]
007CFEB8   FF30                   push    dword ptr [eax]

* Possible String Reference to: ' - '
|
007CFEBA   6834FF7C00             push    $007CFF34
007CFEBF   A1AC9D7D00             mov     eax, dword ptr [$007D9DAC]
007CFEC4   FF30                   push    dword ptr [eax]
007CFEC6   8D45FC                 lea     eax, [ebp-$04]
007CFEC9   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
007CFECE   E84959C3FF             call    0040581C
007CFED3   8B55FC                 mov     edx, [ebp-$04]

* Possible String Reference to: 'LOGIN'
|
007CFED6   B840FF7C00             mov     eax, $007CFF40

* Reference to : TFrmInfoAtu._PROC_007AFAE0()
|
007CFEDB   E800FCFDFF             call    007AFAE0
007CFEE0   33C0                   xor     eax, eax
007CFEE2   5A                     pop     edx
007CFEE3   59                     pop     ecx
007CFEE4   59                     pop     ecx
007CFEE5   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[Y]√'
|
007CFEE8   68FDFE7C00             push    $007CFEFD
007CFEED   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
007CFEF0   E8A755C3FF             call    0040549C
007CFEF5   C3                     ret

*)
end;

end.