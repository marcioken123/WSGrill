unit AdicProd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DBCtrls, ExtCtrls, JvExControls,
  JvComponent, JvOutlookBar, Grids, DBGrids, JvExDBGrids, JvDBGrid, Spin,
  JvExStdCtrls, JvEdit, JvValidateEdit, Mask, JvExMask, JvToolEdit, Buttons;
  
type
  TfrmAdicionaProduto=class(TForm)
    lbTitulo: TLabel;
    btAdicionar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edDescrProd: TEdit;
    edCodProd: TJvComboEdit;
    edQtdeLcto: TJvValidateEdit;
    EdVlrUnit: TJvValidateEdit;
    edVlrTotal: TJvValidateEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pnTopo: TPanel;
    dbgMesaItem: TJvDBGrid;
    lbMesa: TLabel;
    lbDataIni: TLabel;
    lbCliente: TLabel;
    lbFuncionario: TLabel;
    lbNumPess: TLabel;
    lbDataFim: TLabel;
    lbVlrTotal: TLabel;
    Bevel1: TBevel;
    btFechar: TBitBtn;
    Bevel2: TBevel;
    JvOutlookBar1: TJvOutlookBar;
    EdUnidMed: TJvComboEdit;
    Label8: TLabel;
    Shape1: TShape;
    Label9: TLabel;
    Shape2: TShape;
    Label10: TLabel;
    Shape3: TShape;
    Label11: TLabel;
    edMesa: TEdit;
    EdCliente: TEdit;
    EdFuncionario: TEdit;
    EdNumPessoas: TEdit;
    EdInicio: TEdit;
    EdUltAtend: TEdit;
    ckAtendida: TCheckBox;
    btCancelaItem: TBitBtn;
    EdCodFunc: TJvComboEdit;
    EdNomeFunc: TEdit;
    Label12: TLabel;
    rgMesaViagem: TRadioGroup;
    Label13: TLabel;
    EdHistorico: TEdit;
    ckFocaHistorico: TCheckBox;
    SpinButton1: TSpinButton;
    EdComplemento: TDBEdit;
    Label14: TLabel;
    Label15: TLabel;
    EdTempoUso: TEdit;
    procedure edCodProdButtonClick(Sender : TObject);
    procedure edQtdeLctoChange(Sender : TObject);
    procedure btAdicionarClick(Sender : TObject);
    procedure dbgMesaItemGetCellParams(Sender : TObject);
    procedure edQtdeLctoKeyDown(Sender : TObject);
    procedure EdUnidMedButtonClick(Sender : TObject);
    procedure edCodProdExit(Sender : TObject);
    procedure edCodProdChange(Sender : TObject);
    procedure FormClose(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure btCancelaItemClick(Sender : TObject);
    procedure EdCodFuncButtonClick(Sender : TObject);
    procedure EdCodFuncChange(Sender : TObject);
    procedure ckFocaHistoricoClick(Sender : TObject);
    procedure EdVlrUnitChange(Sender : TObject);
    procedure SpinButton1DownClick(Sender : TObject);
    procedure SpinButton1UpClick(Sender : TObject);
    procedure edCodProdEnter(Sender : TObject);
    procedure EdHistoricoChange(Sender : TObject);
    procedure btAdicionarKeyDown(Sender : TObject);
    procedure _PROC_006874C8(Sender : TObject);
    procedure _PROC_0068752A(Sender : TObject);
    procedure _PROC_006875CD(Sender : TObject);
    procedure _PROC_006875DD(Sender : TObject);
    procedure _PROC_006875EE(Sender : TObject);
    procedure _PROC_00687602(Sender : TObject);
    procedure _PROC_0068784D(Sender : TObject);
    procedure _PROC_0068786E(Sender : TObject);
    procedure _PROC_0068788D(Sender : TObject);
    procedure _PROC_00687C11(Sender : TObject);
    procedure _PROC_0068812C(Sender : TObject);
    procedure _PROC_006881C3(Sender : TObject);
    procedure _PROC_006881D2(Sender : TObject);
    procedure _PROC_0068820F(Sender : TObject);
    procedure _PROC_00688251(Sender : TObject);
    procedure _PROC_006882E9(Sender : TObject);
    procedure _PROC_00688914(Sender : TObject);
    procedure _PROC_006889CA(Sender : TObject);
    procedure _PROC_006889DE(Sender : TObject);
    procedure _PROC_00688A48(Sender : TObject);
    procedure _PROC_00688BA9(Sender : TObject);
    procedure _PROC_00688F4D(Sender : TObject);
    procedure _PROC_006890C9(Sender : TObject);
    procedure _PROC_00689281(Sender : TObject);
    procedure _PROC_006892B1(Sender : TObject);
    procedure _PROC_006892C5(Sender : TObject);
    procedure _PROC_006892D8(Sender : TObject);
    procedure _PROC_006892E9(Sender : TObject);
    procedure _PROC_006892F9(Sender : TObject);
    procedure _PROC_006896BC(Sender : TObject);
    procedure _PROC_00689812(Sender : TObject);
    procedure _PROC_00689823(Sender : TObject);
    procedure _PROC_00689C75(Sender : TObject);
    procedure _PROC_00689CA6(Sender : TObject);
    procedure _PROC_00689FD1(Sender : TObject);
    procedure _PROC_00689FF2(Sender : TObject);
    procedure _PROC_0068A051(Sender : TObject);
    procedure _PROC_0068A684(Sender : TObject);
    procedure _PROC_0068A865(Sender : TObject);
    procedure _PROC_0068A884(Sender : TObject);
    procedure _PROC_0068AE8D(Sender : TObject);
    procedure _PROC_0068AEB1(Sender : TObject);
    procedure _PROC_0068AFA5(Sender : TObject);
    procedure _PROC_0068B946(Sender : TObject);
    procedure _PROC_0068BAB1(Sender : TObject);
    procedure _PROC_0068BD2B(Sender : TObject);
    procedure _PROC_0068BD69(Sender : TObject);
    procedure _PROC_0068BD7D(Sender : TObject);
    procedure _PROC_0068BDB1(Sender : TObject);
    procedure _PROC_0068BDC4(Sender : TObject);
    procedure _PROC_0068BE14(Sender : TObject);
    procedure _PROC_0068BE44(Sender : TObject);
    procedure _PROC_0068BE4C(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  frmAdicionaProduto: TfrmAdicionaProduto;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TfrmAdicionaProduto.edCodProdButtonClick(Sender : TObject);
begin
(*
00688C6C   55                     push    ebp
00688C6D   8BEC                   mov     ebp, esp
00688C6F   6A00                   push    $00
00688C71   53                     push    ebx
00688C72   8BD8                   mov     ebx, eax
00688C74   33C0                   xor     eax, eax
00688C76   55                     push    ebp

* Possible String Reference to: 'ÈK¿◊ˇÎ[Y]√êUãÏπ'
|
00688C77   68E88C6800             push    $00688CE8

***** TRY
|
00688C7C   64FF30                 push    dword ptr fs:[eax]
00688C7F   648920                 mov     fs:[eax], esp

|
00688C82   E8E9B6FFFF             call    00684370
00688C87   84C0                   test    al, al
00688C89   7447                   jz      00688CD2
00688C8B   A130AE7D00             mov     eax, dword ptr [$007DAE30]
00688C90   8B00                   mov     eax, [eax]
00688C92   8B1554AE7D00           mov     edx, [$007DAE54]
00688C98   8B12                   mov     edx, [edx]
00688C9A   8982DC000000           mov     [edx+$00DC], eax
00688CA0   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
00688CAA   8D55FC                 lea     edx, [ebp-$04]
00688CAD   A1689F7D00             mov     eax, dword ptr [$007D9F68]
00688CB2   8B00                   mov     eax, [eax]
00688CB4   8B80A4000000           mov     eax, [eax+$00A4]
00688CBA   8B08                   mov     ecx, [eax]
00688CBC   FF5160                 call    dword ptr [ecx+$60]
00688CBF   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
00688CC2   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
00688CC8   E80353E7FF             call    004FDFD0

* Reference to : TFrmInfoAtu._PROC_007A600C()
|
00688CCD   E83AD31100             call    007A600C
00688CD2   33C0                   xor     eax, eax
00688CD4   5A                     pop     edx
00688CD5   59                     pop     ecx
00688CD6   59                     pop     ecx
00688CD7   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[Y]√êUãÏπ'
|
00688CDA   68EF8C6800             push    $00688CEF
00688CDF   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00688CE2   E8B5C7D7FF             call    0040549C
00688CE7   C3                     ret


* Reference to: System.@HandleFinally;
|
00688CE8   E94BC0D7FF             jmp     00404D38
00688CED   EBF0                   jmp     00688CDF

****** END
|
00688CEF   5B                     pop     ebx
00688CF0   59                     pop     ecx
00688CF1   5D                     pop     ebp
00688CF2   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.edQtdeLctoChange(Sender : TObject);
begin
(*
00688CF4   55                     push    ebp
00688CF5   8BEC                   mov     ebp, esp
00688CF7   B90A000000             mov     ecx, $0000000A
00688CFC   6A00                   push    $00
00688CFE   6A00                   push    $00
00688D00   49                     dec     ecx
00688D01   75F9                   jnz     00688CFC
00688D03   53                     push    ebx
00688D04   8BD8                   mov     ebx, eax
00688D06   33C0                   xor     eax, eax
00688D08   55                     push    ebp

* Possible String Reference to: 'Ècø◊ˇÎÂ[ãÂ]√UãÏ3…QQQQQSVWâE¸3¿UhMèh'
|
00688D09   68D08D6800             push    $00688DD0

***** TRY
|
00688D0E   64FF30                 push    dword ptr fs:[eax]
00688D11   648920                 mov     fs:[eax], esp
00688D14   A130AE7D00             mov     eax, dword ptr [$007DAE30]
00688D19   8B00                   mov     eax, [eax]
00688D1B   8B1554AE7D00           mov     edx, [$007DAE54]
00688D21   8B12                   mov     edx, [edx]
00688D23   8982DC000000           mov     [edx+$00DC], eax
00688D29   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
00688D33   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
00688D36   8B8314030000           mov     eax, [ebx+$0314]

|
00688D3C   E877A4FCFF             call    006531B8
00688D41   8D45F0                 lea     eax, [ebp-$10]
00688D44   50                     push    eax
00688D45   8D45E0                 lea     eax, [ebp-$20]
00688D48   33D2                   xor     edx, edx
00688D4A   B101                   mov     cl, $01

|
00688D4C   E81FFDD8FF             call    00418A70
00688D51   8D55E0                 lea     edx, [ebp-$20]
00688D54   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
00688D55   E8EA43D9FF             call    0041D144
00688D5A   7E39                   jle     00688D95
00688D5C   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
00688D5F   8B8314030000           mov     eax, [ebx+$0314]

|
00688D65   E84EA4FCFF             call    006531B8
00688D6A   8D45D0                 lea     eax, [ebp-$30]
00688D6D   50                     push    eax
00688D6E   8D55C0                 lea     edx, [ebp-$40]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00688D71   8B8318030000           mov     eax, [ebx+$0318]

|
00688D77   E83CA4FCFF             call    006531B8
00688D7C   8D55C0                 lea     edx, [ebp-$40]
00688D7F   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
00688D80   E83743D9FF             call    0041D0BC
00688D85   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TfrmAdicionaProduto.edVlrTotal : TJvValidateEdit
|
00688D88   8B831C030000           mov     eax, [ebx+$031C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
00688D8E   E8FDA4FCFF             call    00653290
00688D93   EB1A                   jmp     00688DAF
00688D95   8D45B0                 lea     eax, [ebp-$50]
00688D98   33D2                   xor     edx, edx
00688D9A   B101                   mov     cl, $01

|
00688D9C   E8CFFCD8FF             call    00418A70
00688DA1   8D55B0                 lea     edx, [ebp-$50]

* Reference to control TfrmAdicionaProduto.edVlrTotal : TJvValidateEdit
|
00688DA4   8B831C030000           mov     eax, [ebx+$031C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
00688DAA   E8E1A4FCFF             call    00653290
00688DAF   33C0                   xor     eax, eax
00688DB1   5A                     pop     edx
00688DB2   59                     pop     ecx
00688DB3   59                     pop     ecx
00688DB4   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√UãÏ3…QQQQQSVWâE¸3¿UhMèh'
|
00688DB7   68D78D6800             push    $00688DD7
00688DBC   8D45B0                 lea     eax, [ebp-$50]

* Reference to object Variant
|
00688DBF   8B1524114000           mov     edx, [$00401124]
00688DC5   B905000000             mov     ecx, $00000005

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00688DCA   E8CDD2D7FF             call    0040609C
00688DCF   C3                     ret


* Reference to: System.@HandleFinally;
|
00688DD0   E963BFD7FF             jmp     00404D38
00688DD5   EBE5                   jmp     00688DBC

****** END
|
00688DD7   5B                     pop     ebx
00688DD8   8BE5                   mov     esp, ebp
00688DDA   5D                     pop     ebp
00688DDB   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.btAdicionarClick(Sender : TObject);
begin
(*
00688DDC   55                     push    ebp
00688DDD   8BEC                   mov     ebp, esp
00688DDF   33C9                   xor     ecx, ecx
00688DE1   51                     push    ecx
00688DE2   51                     push    ecx
00688DE3   51                     push    ecx
00688DE4   51                     push    ecx
00688DE5   51                     push    ecx
00688DE6   53                     push    ebx
00688DE7   56                     push    esi
00688DE8   57                     push    edi
00688DE9   8945FC                 mov     [ebp-$04], eax
00688DEC   33C0                   xor     eax, eax
00688DEE   55                     push    ebp

* Possible String Reference to: 'ÈÊΩ◊ˇÎ„_^[ãÂ]√'
|
00688DEF   684D8F6800             push    $00688F4D

***** TRY
|
00688DF4   64FF30                 push    dword ptr fs:[eax]
00688DF7   648920                 mov     fs:[eax], esp
00688DFA   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmAdicionaProduto.btAdicionar : TBitBtn
|
00688DFD   8B80FC020000           mov     eax, [eax+$02FC]
00688E03   33D2                   xor     edx, edx
00688E05   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
00688E07   FF5164                 call    dword ptr [ecx+$64]
00688E0A   33C0                   xor     eax, eax
00688E0C   55                     push    ebp
00688E0D   68238F6800             push    $00688F23

***** TRY
|
00688E12   64FF30                 push    dword ptr fs:[eax]
00688E15   648920                 mov     fs:[eax], esp
00688E18   33C0                   xor     eax, eax
00688E1A   55                     push    ebp
00688E1B   68C08E6800             push    $00688EC0

***** TRY
|
00688E20   64FF30                 push    dword ptr fs:[eax]
00688E23   648920                 mov     fs:[eax], esp
00688E26   8D55F8                 lea     edx, [ebp-$08]
00688E29   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
00688E2C   8B8010030000           mov     eax, [eax+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00688E32   E80551E7FF             call    004FDF3C
00688E37   8B45F8                 mov     eax, [ebp-$08]

|
00688E3A   E8E97A1200             call    007B0928
00688E3F   84C0                   test    al, al
00688E41   7473                   jz      00688EB6
00688E43   8D55F4                 lea     edx, [ebp-$0C]
00688E46   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00688E4B   8B00                   mov     eax, [eax]
00688E4D   8B8024060000           mov     eax, [eax+$0624]
00688E53   8B08                   mov     ecx, [eax]
00688E55   FF5160                 call    dword ptr [ecx+$60]
00688E58   8B45F4                 mov     eax, [ebp-$0C]
00688E5B   BA648F6800             mov     edx, $00688F64

* Reference to: System.@LStrCmp;
|
00688E60   E843CAD7FF             call    004058A8
00688E65   7547                   jnz     00688EAE
00688E67   8D55F0                 lea     edx, [ebp-$10]
00688E6A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00688E6F   8B00                   mov     eax, [eax]
00688E71   8B80840C0000           mov     eax, [eax+$0C84]
00688E77   8B08                   mov     ecx, [eax]
00688E79   FF5160                 call    dword ptr [ecx+$60]
00688E7C   8B45F0                 mov     eax, [ebp-$10]
00688E7F   BA648F6800             mov     edx, $00688F64

* Reference to: System.@LStrCmp;
|
00688E84   E81FCAD7FF             call    004058A8
00688E89   7523                   jnz     00688EAE
00688E8B   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00688E90   8B00                   mov     eax, [eax]
00688E92   8B8050080000           mov     eax, [eax+$0850]
00688E98   8B10                   mov     edx, [eax]
00688E9A   FF924C010000           call    dword ptr [edx+$014C]
00688EA0   85C0                   test    eax, eax
00688EA2   7E0A                   jle     00688EAE
00688EA4   8B45FC                 mov     eax, [ebp-$04]

|
00688EA7   E8F8200000             call    0068AFA4
00688EAC   EB08                   jmp     00688EB6
00688EAE   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TfrmAdicionaProduto._PROC_0068A884()
|
00688EB1   E8CE190000             call    0068A884
00688EB6   33C0                   xor     eax, eax
00688EB8   5A                     pop     edx
00688EB9   59                     pop     ecx
00688EBA   59                     pop     ecx
00688EBB   648910                 mov     fs:[eax], edx
00688EBE   EB3B                   jmp     00688EFB

* Reference to: System.@HandleOnException;
|
00688EC0   E9EBBCD7FF             jmp     00404BB0
00688EC5   0100                   add     [eax], eax
00688EC7   0000                   add     [eax], al
00688EC9   40                     inc     eax
00688ECA   95                     xchg    eax, ebp
00688ECB   40                     inc     eax
00688ECC   00D1                   add     cl, dl
00688ECE   8E6800                 mov     gs, word ptr [eax+$00]
00688ED1   89C3                   mov     ebx, eax
00688ED3   6A00                   push    $00
00688ED5   8B4B04                 mov     ecx, [ebx+$04]
00688ED8   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'Erro:'
|
00688EDB   BA708F6800             mov     edx, $00688F70

* Reference to: System.@LStrCat3;
|
00688EE0   E8C3C8D7FF             call    004057A8
00688EE5   8B45EC                 mov     eax, [ebp-$14]
00688EE8   668B0D788F6800         mov     cx, word ptr [$00688F78]
00688EEF   B201                   mov     dl, $01

|
00688EF1   E836ACDBFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00688EF6   E8B5BFD7FF             call    00404EB0

****** END
|
00688EFB   33C0                   xor     eax, eax
00688EFD   5A                     pop     edx
00688EFE   59                     pop     ecx
00688EFF   59                     pop     ecx
00688F00   648910                 mov     fs:[eax], edx

****** FINALLY
|
00688F03   682A8F6800             push    $00688F2A
00688F08   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TfrmAdicionaProduto.OFFS_03D5 : Byte
|
00688F0B   C680D503000000         mov     byte ptr [eax+$03D5], $00
00688F12   8B45FC                 mov     eax, [ebp-$04]

* Reference to control TfrmAdicionaProduto.btAdicionar : TBitBtn
|
00688F15   8B80FC020000           mov     eax, [eax+$02FC]
00688F1B   B201                   mov     dl, $01
00688F1D   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
00688F1F   FF5164                 call    dword ptr [ecx+$64]
00688F22   C3                     ret


* Reference to: System.@HandleFinally;
|
00688F23   E910BED7FF             jmp     00404D38
00688F28   EBDE                   jmp     00688F08

****** END
|
00688F2A   33C0                   xor     eax, eax
00688F2C   5A                     pop     edx
00688F2D   59                     pop     ecx
00688F2E   59                     pop     ecx
00688F2F   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
00688F32   68548F6800             push    $00688F54
00688F37   8D45EC                 lea     eax, [ebp-$14]
00688F3A   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688F3F   E87CC5D7FF             call    004054C0
00688F44   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
00688F47   E850C5D7FF             call    0040549C
00688F4C   C3                     ret


* Reference to: System.@HandleFinally;
|
00688F4D   E9E6BDD7FF             jmp     00404D38
00688F52   EBE3                   jmp     00688F37

****** END
|
00688F54   5F                     pop     edi
00688F55   5E                     pop     esi
00688F56   5B                     pop     ebx
00688F57   8BE5                   mov     esp, ebp
00688F59   5D                     pop     ebp
00688F5A   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.dbgMesaItemGetCellParams(Sender : TObject);
begin
(*
00688F7C   55                     push    ebp
00688F7D   8BEC                   mov     ebp, esp
00688F7F   6A00                   push    $00
00688F81   6A00                   push    $00
00688F83   6A00                   push    $00
00688F85   6A00                   push    $00
00688F87   53                     push    ebx
00688F88   56                     push    esi
00688F89   57                     push    edi
00688F8A   8BF9                   mov     edi, ecx
00688F8C   8B750C                 mov     esi, [ebp+$0C]
00688F8F   8B5D10                 mov     ebx, [ebp+$10]
00688F92   33C0                   xor     eax, eax
00688F94   55                     push    ebp
00688F95   68A9906800             push    $006890A9

***** TRY
|
00688F9A   64FF30                 push    dword ptr fs:[eax]
00688F9D   648920                 mov     fs:[eax], esp
00688FA0   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00688FA5   8B00                   mov     eax, [eax]
00688FA7   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'STATUS'
|
00688FAA   BAC4906800             mov     edx, $006890C4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00688FAF   E8500CE6FF             call    004E9C04
00688FB4   8D55FC                 lea     edx, [ebp-$04]
00688FB7   8B08                   mov     ecx, [eax]
00688FB9   FF5160                 call    dword ptr [ecx+$60]
00688FBC   8B45FC                 mov     eax, [ebp-$04]
00688FBF   BAD4906800             mov     edx, $006890D4

* Reference to: System.@LStrCmp;
|
00688FC4   E8DFC8D7FF             call    004058A8
00688FC9   7514                   jnz     00688FDF
00688FCB   C706FF000000           mov     dword ptr [esi], $000000FF
00688FD1   BAFFFFFF00             mov     edx, $00FFFFFF
00688FD6   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
00688FD8   E8738ADAFF             call    00431A50
00688FDD   EB76                   jmp     00689055
00688FDF   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00688FE4   8B00                   mov     eax, [eax]
00688FE6   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'STATUS'
|
00688FE9   BAC4906800             mov     edx, $006890C4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00688FEE   E8110CE6FF             call    004E9C04
00688FF3   8D55F8                 lea     edx, [ebp-$08]
00688FF6   8B08                   mov     ecx, [eax]
00688FF8   FF5160                 call    dword ptr [ecx+$60]
00688FFB   8B45F8                 mov     eax, [ebp-$08]
00688FFE   BAE0906800             mov     edx, $006890E0

* Reference to: System.@LStrCmp;
|
00689003   E8A0C8D7FF             call    004058A8
00689008   7511                   jnz     0068901B
0068900A   C706180000FF           mov     dword ptr [esi], $FF000018
00689010   33D2                   xor     edx, edx
00689012   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
00689014   E8378ADAFF             call    00431A50
00689019   EB3A                   jmp     00689055
0068901B   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00689020   8B00                   mov     eax, [eax]
00689022   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'STATUS'
|
00689025   BAC4906800             mov     edx, $006890C4

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0068902A   E8D50BE6FF             call    004E9C04
0068902F   8D55F4                 lea     edx, [ebp-$0C]
00689032   8B08                   mov     ecx, [eax]
00689034   FF5160                 call    dword ptr [ecx+$60]
00689037   8B45F4                 mov     eax, [ebp-$0C]
0068903A   BAEC906800             mov     edx, $006890EC

* Reference to: System.@LStrCmp;
|
0068903F   E864C8D7FF             call    004058A8
00689044   750F                   jnz     00689055
00689046   C706C0DCC000           mov     dword ptr [esi], $00C0DCC0
0068904C   33D2                   xor     edx, edx
0068904E   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
00689050   E8FB89DAFF             call    00431A50
00689055   8D55F0                 lea     edx, [ebp-$10]
00689058   8B4738                 mov     eax, [edi+$38]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
0068905B   E83C16D8FF             call    0040A69C
00689060   8B45F0                 mov     eax, [ebp-$10]

* Possible String Reference to: 'ccdestino'
|
00689063   BAF8906800             mov     edx, $006890F8

* Reference to: System.@LStrCmp;
|
00689068   E83BC8D7FF             call    004058A8
0068906D   751F                   jnz     0068908E
0068906F   8A1504916800           mov     dl, byte ptr [$00689104]
00689075   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetStyle(TFont;TFontStyles);
|
00689077   E8A08CDAFF             call    00431D1C
0068907C   BAFFFFFF00             mov     edx, $00FFFFFF
00689081   8BC3                   mov     eax, ebx

* Reference to: Graphics.TFont.SetColor(TFont;TColor);
|
00689083   E8C889DAFF             call    00431A50
00689088   C70600800000           mov     dword ptr [esi], $00008000
0068908E   33C0                   xor     eax, eax
00689090   5A                     pop     edx
00689091   59                     pop     ecx
00689092   59                     pop     ecx
00689093   648910                 mov     fs:[eax], edx

****** FINALLY
|
00689096   68B0906800             push    $006890B0
0068909B   8D45F0                 lea     eax, [ebp-$10]
0068909E   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006890A3   E818C4D7FF             call    004054C0
006890A8   C3                     ret


* Reference to: System.@HandleFinally;
|
006890A9   E98ABCD7FF             jmp     00404D38
006890AE   EBEB                   jmp     0068909B

****** END
|
006890B0   5F                     pop     edi
006890B1   5E                     pop     esi
006890B2   5B                     pop     ebx
006890B3   8BE5                   mov     esp, ebp
006890B5   5D                     pop     ebp
006890B6   C20C00                 ret     $000C

*)
end;

procedure TfrmAdicionaProduto.edQtdeLctoKeyDown(Sender : TObject);
begin
(*
00689108   55                     push    ebp
00689109   8BEC                   mov     ebp, esp
0068910B   56                     push    esi
0068910C   6683390D               cmp     word ptr [ecx], +$0D
00689110   750F                   jnz     00689121

* Reference to control TfrmAdicionaProduto.btAdicionar : TBitBtn
|
00689112   8B80FC020000           mov     eax, [eax+$02FC]
00689118   66BEEBFF               mov     si, $FFEB

* Reference to: System.@CallDynaInst;
|
0068911C   E87FB6D7FF             call    004047A0
00689121   5E                     pop     esi
00689122   5D                     pop     ebp
00689123   C20400                 ret     $0004

*)
end;

procedure TfrmAdicionaProduto.EdUnidMedButtonClick(Sender : TObject);
begin
(*
00689128   55                     push    ebp
00689129   8BEC                   mov     ebp, esp
0068912B   83C4D8                 add     esp, -$28
0068912E   53                     push    ebx
0068912F   33C9                   xor     ecx, ecx
00689131   894DD8                 mov     [ebp-$28], ecx
00689134   894DF8                 mov     [ebp-$08], ecx
00689137   894DF4                 mov     [ebp-$0C], ecx
0068913A   894DFC                 mov     [ebp-$04], ecx
0068913D   8BD8                   mov     ebx, eax
0068913F   33C0                   xor     eax, eax
00689141   55                     push    ebp

* Possible String Reference to: 'Èﬁ∫◊ˇÎÿ[ãÂ]√'
|
00689142   6855926800             push    $00689255

***** TRY
|
00689147   64FF30                 push    dword ptr fs:[eax]
0068914A   648920                 mov     fs:[eax], esp
0068914D   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
00689150   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00689156   E8E14DE7FF             call    004FDF3C
0068915B   837DFC00               cmp     dword ptr [ebp-$04], +$00
0068915F   0F84C2000000           jz      00689227
00689165   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
00689168   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0068916E   E8C94DE7FF             call    004FDF3C
00689173   8B45F4                 mov     eax, [ebp-$0C]
00689176   8D55F8                 lea     edx, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00689179   E8A2A91100             call    007A3B20
0068917E   8B4DF8                 mov     ecx, [ebp-$08]
00689181   A1B4AE7D00             mov     eax, dword ptr [$007DAEB4]

* Possible String Reference to: 'CODPROD = '
|
00689186   BA6C926800             mov     edx, $0068926C

* Reference to: System.@LStrCat3;
|
0068918B   E818C6D7FF             call    004057A8

* Possible String Reference to: 'Unidade'
|
00689190   B880926800             mov     eax, $00689280
00689195   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'Qtde'
|
00689198   B890926800             mov     eax, $00689290
0068919D   8945EC                 mov     [ebp-$14], eax

* Possible String Reference to: 'Valor'
|
006891A0   B8A0926800             mov     eax, $006892A0
006891A5   8945F0                 mov     [ebp-$10], eax
006891A8   8D45E8                 lea     eax, [ebp-$18]
006891AB   50                     push    eax
006891AC   6A02                   push    $02
006891AE   6A00                   push    $00

* Possible String Reference to: 'UNIDMED'
|
006891B0   B8B0926800             mov     eax, $006892B0
006891B5   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'QTDEUNIDMED'
|
006891B8   B8C0926800             mov     eax, $006892C0
006891BD   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'VLRUNIT'
|
006891C0   B8D4926800             mov     eax, $006892D4
006891C5   8945E4                 mov     [ebp-$1C], eax
006891C8   8D55DC                 lea     edx, [ebp-$24]
006891CB   B902000000             mov     ecx, $00000002

* Possible String Reference to: 'PRODUNID'
|
006891D0   B8E4926800             mov     eax, $006892E4

|
006891D5   E87A00FBFF             call    00639254
006891DA   84C0                   test    al, al
006891DC   742A                   jz      00689208
006891DE   A1689F7D00             mov     eax, dword ptr [$007D9F68]
006891E3   8B00                   mov     eax, [eax]
006891E5   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'UnidMed'
|
006891E8   BAF8926800             mov     edx, $006892F8

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006891ED   E8120AE6FF             call    004E9C04
006891F2   8D55D8                 lea     edx, [ebp-$28]
006891F5   8B08                   mov     ecx, [eax]
006891F7   FF5160                 call    dword ptr [ecx+$60]
006891FA   8B55D8                 mov     edx, [ebp-$28]

* Reference to control TfrmAdicionaProduto.EdUnidMed : TJvComboEdit
|
006891FD   8B8364030000           mov     eax, [ebx+$0364]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
00689203   E8C84DE7FF             call    004FDFD0
00689208   A130AE7D00             mov     eax, dword ptr [$007DAE30]
0068920D   8B00                   mov     eax, [eax]
0068920F   8B1554AE7D00           mov     edx, [$007DAE54]
00689215   8B12                   mov     edx, [edx]
00689217   8982DC000000           mov     [edx+$00DC], eax
0068921D   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
00689227   33C0                   xor     eax, eax
00689229   5A                     pop     edx
0068922A   59                     pop     ecx
0068922B   59                     pop     ecx
0068922C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
0068922F   685C926800             push    $0068925C
00689234   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrClr(void;void);
|
00689237   E860C2D7FF             call    0040549C
0068923C   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0068923F   E858C2D7FF             call    0040549C
00689244   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
00689247   E850C2D7FF             call    0040549C
0068924C   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0068924F   E848C2D7FF             call    0040549C
00689254   C3                     ret


* Reference to: System.@HandleFinally;
|
00689255   E9DEBAD7FF             jmp     00404D38
0068925A   EBD8                   jmp     00689234

****** END
|
0068925C   5B                     pop     ebx
0068925D   8BE5                   mov     esp, ebp
0068925F   5D                     pop     ebp
00689260   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.edCodProdExit(Sender : TObject);
begin
(*
00689300   55                     push    ebp
00689301   8BEC                   mov     ebp, esp
00689303   B919000000             mov     ecx, $00000019
00689308   6A00                   push    $00
0068930A   6A00                   push    $00
0068930C   49                     dec     ecx
0068930D   75F9                   jnz     00689308
0068930F   53                     push    ebx
00689310   8BD8                   mov     ebx, eax
00689312   33C0                   xor     eax, eax
00689314   55                     push    ebp

* Possible String Reference to: 'ÈM∑◊ˇÎ∏[ãÂ]√'
|
00689315   68E6956800             push    $006895E6

***** TRY
|
0068931A   64FF30                 push    dword ptr fs:[eax]
0068931D   648920                 mov     fs:[eax], esp
00689320   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
00689323   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00689329   E80E4CE7FF             call    004FDF3C
0068932E   837DFC00               cmp     dword ptr [ebp-$04], +$00
00689332   0F8426020000           jz      0068955E
00689338   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
0068933B   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00689341   E8F64BE7FF             call    004FDF3C
00689346   8B45F8                 mov     eax, [ebp-$08]

|
00689349   E8DA751200             call    007B0928
0068934E   84C0                   test    al, al
00689350   0F84AC010000           jz      00689502
00689356   8D55F4                 lea     edx, [ebp-$0C]
00689359   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0068935E   8B00                   mov     eax, [eax]
00689360   8B800C060000           mov     eax, [eax+$060C]
00689366   8B08                   mov     ecx, [eax]
00689368   FF5160                 call    dword ptr [ecx+$60]
0068936B   8B55F4                 mov     edx, [ebp-$0C]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
0068936E   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
00689374   E8F74AE7FF             call    004FDE70
00689379   8D55F0                 lea     edx, [ebp-$10]
0068937C   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00689381   8B00                   mov     eax, [eax]
00689383   8B8014060000           mov     eax, [eax+$0614]
00689389   8B08                   mov     ecx, [eax]
0068938B   FF5160                 call    dword ptr [ecx+$60]
0068938E   8B55F0                 mov     edx, [ebp-$10]

* Reference to control TfrmAdicionaProduto.edDescrProd : TEdit
|
00689391   8B830C030000           mov     eax, [ebx+$030C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00689397   E860A3E0FF             call    004936FC
0068939C   A0F4956800             mov     al, byte ptr [$006895F4]
006893A1   50                     push    eax
006893A2   B054                   mov     al, $54
006893A4   8845DD                 mov     [ebp-$23], al
006893A7   C645DC01               mov     byte ptr [ebp-$24], $01
006893AB   8D45E0                 lea     eax, [ebp-$20]
006893AE   8D55DC                 lea     edx, [ebp-$24]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
006893B1   E83AF9D8FF             call    00418CF0
006893B6   8D4DE0                 lea     ecx, [ebp-$20]
006893B9   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006893BE   8B00                   mov     eax, [eax]
006893C0   8B8044070000           mov     eax, [eax+$0744]

* Possible String Reference to: 'Padrao'
|
006893C6   BA00966800             mov     edx, $00689600

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
006893CB   E828F01100             call    007A83F8
006893D0   84C0                   test    al, al
006893D2   7512                   jnz     006893E6
006893D4   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006893D9   8B00                   mov     eax, [eax]
006893DB   8B8044070000           mov     eax, [eax+$0744]

* Reference to: DB.TDataSet.First(TDataSet);
|
006893E1   E8461CE6FF             call    004EB02C
006893E6   8D55D8                 lea     edx, [ebp-$28]
006893E9   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006893EE   8B00                   mov     eax, [eax]
006893F0   8B8050070000           mov     eax, [eax+$0750]
006893F6   8B08                   mov     ecx, [eax]
006893F8   FF5160                 call    dword ptr [ecx+$60]
006893FB   8B55D8                 mov     edx, [ebp-$28]

* Reference to control TfrmAdicionaProduto.EdUnidMed : TJvComboEdit
|
006893FE   8B8364030000           mov     eax, [ebx+$0364]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
00689404   E8C74BE7FF             call    004FDFD0
00689409   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0068940E   8B00                   mov     eax, [eax]
00689410   8B80B8070000           mov     eax, [eax+$07B8]
00689416   8B10                   mov     edx, [eax]
00689418   FF5254                 call    dword ptr [edx+$54]
0068941B   8D45C8                 lea     eax, [ebp-$38]

* Reference to: Variants.@VarFromReal;
|
0068941E   E865F8D8FF             call    00418C88
00689423   8D55C8                 lea     edx, [ebp-$38]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689426   8B8318030000           mov     eax, [ebx+$0318]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0068942C   E85F9EFCFF             call    00653290
00689431   8D55B8                 lea     edx, [ebp-$48]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689434   8B8318030000           mov     eax, [ebx+$0318]

|
0068943A   E8799DFCFF             call    006531B8
0068943F   8D45B8                 lea     eax, [ebp-$48]
00689442   50                     push    eax
00689443   8D45A8                 lea     eax, [ebp-$58]
00689446   33D2                   xor     edx, edx
00689448   B101                   mov     cl, $01

|
0068944A   E821F6D8FF             call    00418A70
0068944F   8D55A8                 lea     edx, [ebp-$58]
00689452   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
00689453   E8AC3CD9FF             call    0041D104
00689458   752A                   jnz     00689484
0068945A   A1F0AD7D00             mov     eax, dword ptr [$007DADF0]
0068945F   668B5008               mov     dx, word ptr [eax+$08]
00689463   52                     push    edx
00689464   FF7004                 push    dword ptr [eax+$04]
00689467   FF30                   push    dword ptr [eax]

|
00689469   E8A6A31200             call    007B3814
0068946E   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarFromReal;
|
00689471   E812F8D8FF             call    00418C88
00689476   8D5598                 lea     edx, [ebp-$68]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689479   8B8318030000           mov     eax, [ebx+$0318]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0068947F   E80C9EFCFF             call    00653290
00689484   8D5588                 lea     edx, [ebp-$78]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
00689487   8B8314030000           mov     eax, [ebx+$0314]

|
0068948D   E8269DFCFF             call    006531B8
00689492   8D4588                 lea     eax, [ebp-$78]
00689495   50                     push    eax
00689496   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
0068949C   33D2                   xor     edx, edx
0068949E   B101                   mov     cl, $01

|
006894A0   E8CBF5D8FF             call    00418A70
006894A5   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
006894AB   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
006894AC   E8933CD9FF             call    0041D144
006894B1   0F8EE1000000           jle     00689598
006894B7   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
006894BD   8B8314030000           mov     eax, [ebx+$0314]

|
006894C3   E8F09CFCFF             call    006531B8
006894C8   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
006894CE   50                     push    eax
006894CF   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
006894D5   8B8318030000           mov     eax, [ebx+$0318]

|
006894DB   E8D89CFCFF             call    006531B8
006894E0   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
006894E6   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
006894E7   E8D03BD9FF             call    0041D0BC
006894EC   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]

* Reference to control TfrmAdicionaProduto.edVlrTotal : TJvValidateEdit
|
006894F2   8B831C030000           mov     eax, [ebx+$031C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
006894F8   E8939DFCFF             call    00653290
006894FD   E996000000             jmp     00689598
00689502   6A00                   push    $00
00689504   668B0D08966800         mov     cx, word ptr [$00689608]
0068950B   33D2                   xor     edx, edx

* Possible String Reference to: 'Produto n„o localizado! Por favor v
|                                erifique!!!'
|
0068950D   B814966800             mov     eax, $00689614

|
00689512   E815A6DBFF             call    00443B2C
00689517   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.edDescrProd : TEdit
|
00689519   8B830C030000           mov     eax, [ebx+$030C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0068951F   E8D8A1E0FF             call    004936FC
00689524   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.EdUnidMed : TJvComboEdit
|
00689526   8B8364030000           mov     eax, [ebx+$0364]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
0068952C   E89F4AE7FF             call    004FDFD0
00689531   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
00689537   33D2                   xor     edx, edx
00689539   B101                   mov     cl, $01

|
0068953B   E830F5D8FF             call    00418A70
00689540   8D9548FFFFFF           lea     edx, [ebp+$FFFFFF48]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689546   8B8318030000           mov     eax, [ebx+$0318]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0068954C   E83F9DFCFF             call    00653290

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
00689551   8B8310030000           mov     eax, [ebx+$0310]

|
00689557   E884CB1100             call    007A60E0
0068955C   EB3A                   jmp     00689598
0068955E   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.edDescrProd : TEdit
|
00689560   8B830C030000           mov     eax, [ebx+$030C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00689566   E891A1E0FF             call    004936FC
0068956B   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.EdUnidMed : TJvComboEdit
|
0068956D   8B8364030000           mov     eax, [ebx+$0364]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
00689573   E8584AE7FF             call    004FDFD0
00689578   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]
0068957E   33D2                   xor     edx, edx
00689580   B101                   mov     cl, $01

|
00689582   E8E9F4D8FF             call    00418A70
00689587   8D9538FFFFFF           lea     edx, [ebp+$FFFFFF38]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
0068958D   8B8318030000           mov     eax, [ebx+$0318]

* Reference to : TJvValidateEdit._PROC_00653290()
|
00689593   E8F89CFCFF             call    00653290
00689598   33C0                   xor     eax, eax
0068959A   5A                     pop     edx
0068959B   59                     pop     ecx
0068959C   59                     pop     ecx
0068959D   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
006895A0   68ED956800             push    $006895ED
006895A5   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]

* Reference to object Variant
|
006895AB   8B1524114000           mov     edx, [$00401124]
006895B1   B90A000000             mov     ecx, $0000000A

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006895B6   E8E1CAD7FF             call    0040609C
006895BB   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrClr(void;void);
|
006895BE   E8D9BED7FF             call    0040549C
006895C3   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006895C6   E8ADAFD8FF             call    00414578
006895CB   8D45F0                 lea     eax, [ebp-$10]
006895CE   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006895D3   E8E8BED7FF             call    004054C0
006895D8   8D45F8                 lea     eax, [ebp-$08]
006895DB   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006895E0   E8DBBED7FF             call    004054C0
006895E5   C3                     ret


* Reference to: System.@HandleFinally;
|
006895E6   E94DB7D7FF             jmp     00404D38
006895EB   EBB8                   jmp     006895A5

****** END
|
006895ED   5B                     pop     ebx
006895EE   8BE5                   mov     esp, ebp
006895F0   5D                     pop     ebp
006895F1   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.edCodProdChange(Sender : TObject);
begin
(*
00689644   55                     push    ebp
00689645   8BEC                   mov     ebp, esp
00689647   6A00                   push    $00
00689649   53                     push    ebx
0068964A   8BD8                   mov     ebx, eax
0068964C   33C0                   xor     eax, eax
0068964E   55                     push    ebp
0068964F   68AF966800             push    $006896AF

***** TRY
|
00689654   64FF30                 push    dword ptr fs:[eax]
00689657   648920                 mov     fs:[eax], esp
0068965A   A130AE7D00             mov     eax, dword ptr [$007DAE30]
0068965F   8B00                   mov     eax, [eax]
00689661   8B1554AE7D00           mov     edx, [$007DAE54]
00689667   8B12                   mov     edx, [edx]
00689669   8982DC000000           mov     [edx+$00DC], eax
0068966F   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
00689679   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
0068967C   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00689682   E8B548E7FF             call    004FDF3C
00689687   837DFC00               cmp     dword ptr [ebp-$04], +$00
0068968B   0F95C2                 setnz   dl

* Reference to control TfrmAdicionaProduto.btAdicionar : TBitBtn
|
0068968E   8B83FC020000           mov     eax, [ebx+$02FC]
00689694   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
00689696   FF5164                 call    dword ptr [ecx+$64]
00689699   33C0                   xor     eax, eax
0068969B   5A                     pop     edx
0068969C   59                     pop     ecx
0068969D   59                     pop     ecx
0068969E   648910                 mov     fs:[eax], edx

****** FINALLY
|
006896A1   68B6966800             push    $006896B6
006896A6   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006896A9   E8EEBDD7FF             call    0040549C
006896AE   C3                     ret


* Reference to: System.@HandleFinally;
|
006896AF   E984B6D7FF             jmp     00404D38
006896B4   EBF0                   jmp     006896A6

****** END
|
006896B6   5B                     pop     ebx
006896B7   59                     pop     ecx
006896B8   5D                     pop     ebp
006896B9   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.FormClose(Sender : TObject);
begin
(*
006898B8   55                     push    ebp
006898B9   8BEC                   mov     ebp, esp
006898BB   53                     push    ebx
006898BC   8BD8                   mov     ebx, eax
006898BE   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006898C3   8B00                   mov     eax, [eax]
006898C5   8B4074                 mov     eax, [eax+$74]
006898C8   8B10                   mov     edx, [eax]
006898CA   FF924C010000           call    dword ptr [edx+$014C]
006898D0   85C0                   test    eax, eax
006898D2   7E07                   jle     006898DB
006898D4   8BC3                   mov     eax, ebx

|
006898D6   E80DEAFFFF             call    006882E8
006898DB   5B                     pop     ebx
006898DC   5D                     pop     ebp
006898DD   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.FormShow(Sender : TObject);
begin
(*
006898E0   55                     push    ebp
006898E1   8BEC                   mov     ebp, esp
006898E3   6A00                   push    $00
006898E5   53                     push    ebx
006898E6   8BD8                   mov     ebx, eax
006898E8   33C0                   xor     eax, eax
006898EA   55                     push    ebp

* Possible String Reference to: 'Èﬁ≥◊ˇÎ[Y]√UãÏ3…QQQQQSãÿ3¿Uhñöh'
|
006898EB   6855996800             push    $00689955

***** TRY
|
006898F0   64FF30                 push    dword ptr fs:[eax]
006898F3   648920                 mov     fs:[eax], esp
006898F6   A130AE7D00             mov     eax, dword ptr [$007DAE30]
006898FB   8B00                   mov     eax, [eax]
006898FD   8B1554AE7D00           mov     edx, [$007DAE54]
00689903   8B12                   mov     edx, [edx]
00689905   8982DC000000           mov     [edx+$00DC], eax
0068990B   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
00689915   8D55FC                 lea     edx, [ebp-$04]
00689918   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0068991D   8B00                   mov     eax, [eax]
0068991F   8B8038090000           mov     eax, [eax+$0938]
00689925   8B08                   mov     ecx, [eax]
00689927   FF5160                 call    dword ptr [ecx+$60]
0068992A   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TfrmAdicionaProduto.EdCodFunc : TJvComboEdit
|
0068992D   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
00689933   E89846E7FF             call    004FDFD0

* Reference to field TfrmAdicionaProduto.OFFS_03D4 : Byte
|
00689938   C683D403000000         mov     byte ptr [ebx+$03D4], $00
0068993F   33C0                   xor     eax, eax
00689941   5A                     pop     edx
00689942   59                     pop     ecx
00689943   59                     pop     ecx
00689944   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[Y]√UãÏ3…QQQQQSãÿ3¿Uhñöh'
|
00689947   685C996800             push    $0068995C
0068994C   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0068994F   E848BBD7FF             call    0040549C
00689954   C3                     ret


* Reference to: System.@HandleFinally;
|
00689955   E9DEB3D7FF             jmp     00404D38
0068995A   EBF0                   jmp     0068994C

****** END
|
0068995C   5B                     pop     ebx
0068995D   59                     pop     ecx
0068995E   5D                     pop     ebp
0068995F   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.btCancelaItemClick(Sender : TObject);
begin
(*
00689960   55                     push    ebp
00689961   8BEC                   mov     ebp, esp
00689963   33C9                   xor     ecx, ecx
00689965   51                     push    ecx
00689966   51                     push    ecx
00689967   51                     push    ecx
00689968   51                     push    ecx
00689969   51                     push    ecx
0068996A   53                     push    ebx
0068996B   8BD8                   mov     ebx, eax
0068996D   33C0                   xor     eax, eax
0068996F   55                     push    ebp

* Possible String Reference to: 'Èù≤◊ˇÎÎ[ãÂ]√'
|
00689970   68969A6800             push    $00689A96

***** TRY
|
00689975   64FF30                 push    dword ptr fs:[eax]
00689978   648920                 mov     fs:[eax], esp
0068997B   8D55FC                 lea     edx, [ebp-$04]
0068997E   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00689983   8B00                   mov     eax, [eax]
00689985   8B80E0050000           mov     eax, [eax+$05E0]
0068998B   8B08                   mov     ecx, [eax]
0068998D   FF5160                 call    dword ptr [ecx+$60]
00689990   8B45FC                 mov     eax, [ebp-$04]
00689993   BAAC9A6800             mov     edx, $00689AAC

* Reference to: System.@LStrCmp;
|
00689998   E80BBFD7FF             call    004058A8
0068999D   0F84C3000000           jz      00689A66
006899A3   6A00                   push    $00

* Possible String Reference to: 'Tem certeza que deseja remover '
|
006899A5   68B89A6800             push    $00689AB8
006899AA   8D55F4                 lea     edx, [ebp-$0C]
006899AD   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006899B2   8B00                   mov     eax, [eax]
006899B4   8B80C4050000           mov     eax, [eax+$05C4]
006899BA   8B08                   mov     ecx, [eax]
006899BC   FF5160                 call    dword ptr [ecx+$60]
006899BF   FF75F4                 push    dword ptr [ebp-$0C]

* Possible String Reference to: ' ?'
|
006899C2   68E09A6800             push    $00689AE0
006899C7   8D45F8                 lea     eax, [ebp-$08]
006899CA   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006899CF   E848BED7FF             call    0040581C
006899D4   8B45F8                 mov     eax, [ebp-$08]
006899D7   668B0DE49A6800         mov     cx, word ptr [$00689AE4]
006899DE   B203                   mov     dl, $03

|
006899E0   E847A1DBFF             call    00443B2C
006899E5   83F806                 cmp     eax, +$06
006899E8   0F858D000000           jnz     00689A7B
006899EE   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006899F3   8B00                   mov     eax, [eax]
006899F5   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'VLRTOTAL'
|
006899F8   BAF09A6800             mov     edx, $00689AF0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
006899FD   E80202E6FF             call    004E9C04
00689A02   8B10                   mov     edx, [eax]
00689A04   FF5254                 call    dword ptr [edx+$54]
00689A07   DB2D9CEC7D00           fld     tbyte ptr [$007DEC9C]
00689A0D   DEE1                   fsubrp  st(1), st(0)
00689A0F   DB3D9CEC7D00           fstp    tbyte ptr [$007DEC9C]
00689A15   9B                     wait
00689A16   668B05A4EC7D00         mov     ax, word ptr [$007DECA4]
00689A1D   50                     push    eax
00689A1E   FF35A0EC7D00           push    dword ptr [$007DECA0]
00689A24   FF359CEC7D00           push    dword ptr [$007DEC9C]
00689A2A   8D55EC                 lea     edx, [ebp-$14]

* Possible String Reference to: '###,###,##0.00'
|
00689A2D   B8049B6800             mov     eax, $00689B04

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
00689A32   E8053BD8FF             call    0040D53C
00689A37   8B4DEC                 mov     ecx, [ebp-$14]
00689A3A   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'Valor total: $ '
|
00689A3D   BA1C9B6800             mov     edx, $00689B1C

* Reference to: System.@LStrCat3;
|
00689A42   E861BDD7FF             call    004057A8
00689A47   8B55F0                 mov     edx, [ebp-$10]

* Reference to control TfrmAdicionaProduto.lbVlrTotal : TLabel
|
00689A4A   8B8350030000           mov     eax, [ebx+$0350]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00689A50   E8A79CE0FF             call    004936FC
00689A55   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00689A5A   8B00                   mov     eax, [eax]
00689A5C   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Delete(TDataSet);
|
00689A5F   E80C1DE6FF             call    004EB770
00689A64   EB15                   jmp     00689A7B
00689A66   6A00                   push    $00
00689A68   668B0DE49A6800         mov     cx, word ptr [$00689AE4]
00689A6F   33D2                   xor     edx, edx

* Possible String Reference to: 'O item j· foi atendido!'
|
00689A71   B8349B6800             mov     eax, $00689B34

|
00689A76   E8B1A0DBFF             call    00443B2C
00689A7B   33C0                   xor     eax, eax
00689A7D   5A                     pop     edx
00689A7E   59                     pop     ecx
00689A7F   59                     pop     ecx
00689A80   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
00689A83   689D9A6800             push    $00689A9D
00689A88   8D45EC                 lea     eax, [ebp-$14]
00689A8B   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00689A90   E82BBAD7FF             call    004054C0
00689A95   C3                     ret


* Reference to: System.@HandleFinally;
|
00689A96   E99DB2D7FF             jmp     00404D38
00689A9B   EBEB                   jmp     00689A88

****** END
|
00689A9D   5B                     pop     ebx
00689A9E   8BE5                   mov     esp, ebp
00689AA0   5D                     pop     ebp
00689AA1   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.EdCodFuncButtonClick(Sender : TObject);
begin
(*
00689B4C   55                     push    ebp
00689B4D   8BEC                   mov     ebp, esp
00689B4F   83C4E0                 add     esp, -$20
00689B52   53                     push    ebx
00689B53   33C9                   xor     ecx, ecx
00689B55   894DE0                 mov     [ebp-$20], ecx
00689B58   894DE4                 mov     [ebp-$1C], ecx
00689B5B   8BD8                   mov     ebx, eax
00689B5D   33C0                   xor     eax, eax
00689B5F   55                     push    ebp
00689B60   68289C6800             push    $00689C28

***** TRY
|
00689B65   64FF30                 push    dword ptr fs:[eax]
00689B68   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'CÛdigo'
|
00689B6B   B83C9C6800             mov     eax, $00689C3C
00689B70   8945F4                 mov     [ebp-$0C], eax

* Possible String Reference to: 'Nome'
|
00689B73   B84C9C6800             mov     eax, $00689C4C
00689B78   8945F8                 mov     [ebp-$08], eax

* Possible String Reference to: 'Fantasia'
|
00689B7B   B85C9C6800             mov     eax, $00689C5C
00689B80   8945FC                 mov     [ebp-$04], eax
00689B83   8D45F4                 lea     eax, [ebp-$0C]
00689B86   50                     push    eax
00689B87   6A02                   push    $02
00689B89   6A00                   push    $00

* Possible String Reference to: 'CODFUNC'
|
00689B8B   B8709C6800             mov     eax, $00689C70
00689B90   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NOME'
|
00689B93   B8809C6800             mov     eax, $00689C80
00689B98   8945EC                 mov     [ebp-$14], eax

* Possible String Reference to: 'FANTASIA'
|
00689B9B   B8909C6800             mov     eax, $00689C90
00689BA0   8945F0                 mov     [ebp-$10], eax
00689BA3   8D55E8                 lea     edx, [ebp-$18]
00689BA6   B902000000             mov     ecx, $00000002

* Possible String Reference to: 'FUNCREPR'
|
00689BAB   B8A49C6800             mov     eax, $00689CA4

|
00689BB0   E89FF6FAFF             call    00639254
00689BB5   84C0                   test    al, al
00689BB7   7454                   jz      00689C0D
00689BB9   A1689F7D00             mov     eax, dword ptr [$007D9F68]
00689BBE   8B00                   mov     eax, [eax]
00689BC0   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CODFUNC'
|
00689BC3   BA709C6800             mov     edx, $00689C70

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00689BC8   E83700E6FF             call    004E9C04
00689BCD   8D55E4                 lea     edx, [ebp-$1C]
00689BD0   8B08                   mov     ecx, [eax]
00689BD2   FF5160                 call    dword ptr [ecx+$60]
00689BD5   8B55E4                 mov     edx, [ebp-$1C]

* Reference to control TfrmAdicionaProduto.EdCodFunc : TJvComboEdit
|
00689BD8   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
00689BDE   E88D42E7FF             call    004FDE70
00689BE3   A1689F7D00             mov     eax, dword ptr [$007D9F68]
00689BE8   8B00                   mov     eax, [eax]
00689BEA   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'NOME'
|
00689BED   BA809C6800             mov     edx, $00689C80

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00689BF2   E80D00E6FF             call    004E9C04
00689BF7   8D55E0                 lea     edx, [ebp-$20]
00689BFA   8B08                   mov     ecx, [eax]
00689BFC   FF5160                 call    dword ptr [ecx+$60]
00689BFF   8B55E0                 mov     edx, [ebp-$20]

* Reference to control TfrmAdicionaProduto.EdFuncionario : TEdit
|
00689C02   8B838C030000           mov     eax, [ebx+$038C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00689C08   E8EF9AE0FF             call    004936FC
00689C0D   33C0                   xor     eax, eax
00689C0F   5A                     pop     edx
00689C10   59                     pop     ecx
00689C11   59                     pop     ecx
00689C12   648910                 mov     fs:[eax], edx

****** FINALLY
|
00689C15   682F9C6800             push    $00689C2F
00689C1A   8D45E0                 lea     eax, [ebp-$20]
00689C1D   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00689C22   E899B8D7FF             call    004054C0
00689C27   C3                     ret


* Reference to: System.@HandleFinally;
|
00689C28   E90BB1D7FF             jmp     00404D38
00689C2D   EBEB                   jmp     00689C1A

****** END
|
00689C2F   5B                     pop     ebx
00689C30   8BE5                   mov     esp, ebp
00689C32   5D                     pop     ebp
00689C33   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.EdCodFuncChange(Sender : TObject);
begin
(*
00689CB0   55                     push    ebp
00689CB1   8BEC                   mov     ebp, esp
00689CB3   6A00                   push    $00
00689CB5   6A00                   push    $00
00689CB7   6A00                   push    $00
00689CB9   53                     push    ebx
00689CBA   8BD8                   mov     ebx, eax
00689CBC   33C0                   xor     eax, eax
00689CBE   55                     push    ebp
00689CBF   68739D6800             push    $00689D73

***** TRY
|
00689CC4   64FF30                 push    dword ptr fs:[eax]
00689CC7   648920                 mov     fs:[eax], esp
00689CCA   A130AE7D00             mov     eax, dword ptr [$007DAE30]
00689CCF   8B00                   mov     eax, [eax]
00689CD1   8B1554AE7D00           mov     edx, [$007DAE54]
00689CD7   8B12                   mov     edx, [edx]
00689CD9   8982DC000000           mov     [edx+$00DC], eax
00689CDF   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
00689CE9   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TfrmAdicionaProduto.EdCodFunc : TJvComboEdit
|
00689CEC   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00689CF2   E84542E7FF             call    004FDF3C
00689CF7   837DFC00               cmp     dword ptr [ebp-$04], +$00
00689CFB   7446                   jz      00689D43
00689CFD   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmAdicionaProduto.EdCodFunc : TJvComboEdit
|
00689D00   8B83A4030000           mov     eax, [ebx+$03A4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00689D06   E83142E7FF             call    004FDF3C
00689D0B   8B55F8                 mov     edx, [ebp-$08]
00689D0E   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
00689D13   8B00                   mov     eax, [eax]

|
00689D15   E81E751200             call    007B1238
00689D1A   84C0                   test    al, al
00689D1C   7425                   jz      00689D43
00689D1E   8D55F4                 lea     edx, [ebp-$0C]
00689D21   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00689D26   8B00                   mov     eax, [eax]
00689D28   8B808C020000           mov     eax, [eax+$028C]
00689D2E   8B08                   mov     ecx, [eax]
00689D30   FF5160                 call    dword ptr [ecx+$60]
00689D33   8B55F4                 mov     edx, [ebp-$0C]

* Reference to control TfrmAdicionaProduto.EdNomeFunc : TEdit
|
00689D36   8B83A8030000           mov     eax, [ebx+$03A8]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00689D3C   E8BB99E0FF             call    004936FC
00689D41   EB0D                   jmp     00689D50
00689D43   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.EdNomeFunc : TEdit
|
00689D45   8B83A8030000           mov     eax, [ebx+$03A8]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00689D4B   E8AC99E0FF             call    004936FC
00689D50   33C0                   xor     eax, eax
00689D52   5A                     pop     edx
00689D53   59                     pop     ecx
00689D54   59                     pop     ecx
00689D55   648910                 mov     fs:[eax], edx

****** FINALLY
|
00689D58   687A9D6800             push    $00689D7A
00689D5D   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
00689D60   E837B7D7FF             call    0040549C
00689D65   8D45F8                 lea     eax, [ebp-$08]
00689D68   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00689D6D   E84EB7D7FF             call    004054C0
00689D72   C3                     ret


* Reference to: System.@HandleFinally;
|
00689D73   E9C0AFD7FF             jmp     00404D38
00689D78   EBE3                   jmp     00689D5D

****** END
|
00689D7A   5B                     pop     ebx
00689D7B   8BE5                   mov     esp, ebp
00689D7D   5D                     pop     ebp
00689D7E   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.ckFocaHistoricoClick(Sender : TObject);
begin
(*
00689D80   55                     push    ebp
00689D81   8BEC                   mov     ebp, esp
00689D83   53                     push    ebx
00689D84   56                     push    esi
00689D85   8BD8                   mov     ebx, eax

* Reference to control TfrmAdicionaProduto.ckFocaHistorico : TCheckBox
|
00689D87   8B83BC030000           mov     eax, [ebx+$03BC]
00689D8D   66BEB5FF               mov     si, $FFB5

* Reference to: System.@CallDynaInst;
|
00689D91   E80AAAD7FF             call    004047A0
00689D96   84C0                   test    al, al
00689D98   741B                   jz      00689DB5

* Reference to control TfrmAdicionaProduto.ckFocaHistorico : TCheckBox
|
00689D9A   8B83BC030000           mov     eax, [ebx+$03BC]
00689DA0   8B10                   mov     edx, [eax]

* Reference to method TCheckBox.GetChecked()
|
00689DA2   FF92C8000000           call    dword ptr [edx+$00C8]
00689DA8   8BD0                   mov     edx, eax

* Reference to control TfrmAdicionaProduto.EdHistorico : TEdit
|
00689DAA   8B83B8030000           mov     eax, [ebx+$03B8]

* Reference to: Controls.TWinControl.SetTabStop(TWinControl;Boolean);
|
00689DB0   E8AB06E1FF             call    0049A460
00689DB5   5E                     pop     esi
00689DB6   5B                     pop     ebx
00689DB7   5D                     pop     ebp
00689DB8   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.EdVlrUnitChange(Sender : TObject);
begin
(*
00689DBC   55                     push    ebp
00689DBD   8BEC                   mov     ebp, esp
00689DBF   33C9                   xor     ecx, ecx
00689DC1   51                     push    ecx
00689DC2   51                     push    ecx
00689DC3   51                     push    ecx
00689DC4   51                     push    ecx
00689DC5   51                     push    ecx
00689DC6   51                     push    ecx
00689DC7   51                     push    ecx
00689DC8   51                     push    ecx
00689DC9   53                     push    ebx
00689DCA   56                     push    esi
00689DCB   8BD8                   mov     ebx, eax
00689DCD   33C0                   xor     eax, eax
00689DCF   55                     push    ebp
00689DD0   68469E6800             push    $00689E46

***** TRY
|
00689DD5   64FF30                 push    dword ptr fs:[eax]
00689DD8   648920                 mov     fs:[eax], esp

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689DDB   8B8318030000           mov     eax, [ebx+$0318]
00689DE1   66BEB5FF               mov     si, $FFB5

* Reference to: System.@CallDynaInst;
|
00689DE5   E8B6A9D7FF             call    004047A0
00689DEA   84C0                   test    al, al
00689DEC   7437                   jz      00689E25
00689DEE   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
00689DF1   8B8314030000           mov     eax, [ebx+$0314]

|
00689DF7   E8BC93FCFF             call    006531B8
00689DFC   8D45F0                 lea     eax, [ebp-$10]
00689DFF   50                     push    eax
00689E00   8D55E0                 lea     edx, [ebp-$20]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689E03   8B8318030000           mov     eax, [ebx+$0318]

|
00689E09   E8AA93FCFF             call    006531B8
00689E0E   8D55E0                 lea     edx, [ebp-$20]
00689E11   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
00689E12   E8A532D9FF             call    0041D0BC
00689E17   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmAdicionaProduto.edVlrTotal : TJvValidateEdit
|
00689E1A   8B831C030000           mov     eax, [ebx+$031C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
00689E20   E86B94FCFF             call    00653290
00689E25   33C0                   xor     eax, eax
00689E27   5A                     pop     edx
00689E28   59                     pop     ecx
00689E29   59                     pop     ecx
00689E2A   648910                 mov     fs:[eax], edx

****** FINALLY
|
00689E2D   684D9E6800             push    $00689E4D
00689E32   8D45E0                 lea     eax, [ebp-$20]

* Reference to object Variant
|
00689E35   8B1524114000           mov     edx, [$00401124]
00689E3B   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00689E40   E857C2D7FF             call    0040609C
00689E45   C3                     ret


* Reference to: System.@HandleFinally;
|
00689E46   E9EDAED7FF             jmp     00404D38
00689E4B   EBE5                   jmp     00689E32

****** END
|
00689E4D   5E                     pop     esi
00689E4E   5B                     pop     ebx
00689E4F   8BE5                   mov     esp, ebp
00689E51   5D                     pop     ebp
00689E52   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.SpinButton1DownClick(Sender : TObject);
begin
(*
00689E54   55                     push    ebp
00689E55   8BEC                   mov     ebp, esp
00689E57   B905000000             mov     ecx, $00000005
00689E5C   6A00                   push    $00
00689E5E   6A00                   push    $00
00689E60   49                     dec     ecx
00689E61   75F9                   jnz     00689E5C
00689E63   51                     push    ecx
00689E64   53                     push    ebx
00689E65   56                     push    esi
00689E66   8BD8                   mov     ebx, eax
00689E68   33C0                   xor     eax, eax
00689E6A   55                     push    ebp

* Possible String Reference to: 'Èï≠◊ˇÎ√^[ãÂ]√'
|
00689E6B   689E9F6800             push    $00689F9E

***** TRY
|
00689E70   64FF30                 push    dword ptr fs:[eax]
00689E73   648920                 mov     fs:[eax], esp
00689E76   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmAdicionaProduto.EdNumPessoas : TEdit
|
00689E79   8B8390030000           mov     eax, [ebx+$0390]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
00689E7F   E84898E0FF             call    004936CC
00689E84   8B45F8                 mov     eax, [ebp-$08]
00689E87   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
00689E89   E87E10D8FF             call    0040AF0C
00689E8E   48                     dec     eax
00689E8F   0F8EC6000000           jle     00689F5B
00689E95   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmAdicionaProduto.EdNumPessoas : TEdit
|
00689E98   8BB390030000           mov     esi, [ebx+$0390]
00689E9E   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
00689EA0   E82798E0FF             call    004936CC
00689EA5   8B45F0                 mov     eax, [ebp-$10]
00689EA8   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
00689EAA   E85D10D8FF             call    0040AF0C
00689EAF   48                     dec     eax
00689EB0   8D55F4                 lea     edx, [ebp-$0C]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
00689EB3   E8AC0ED8FF             call    0040AD64
00689EB8   8B55F4                 mov     edx, [ebp-$0C]
00689EBB   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00689EBD   E83A98E0FF             call    004936FC

* Possible String Reference to: '(CODMESA = '
|
00689EC2   68B49F6800             push    $00689FB4
00689EC7   8D55E8                 lea     edx, [ebp-$18]
00689ECA   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00689ECF   8B00                   mov     eax, [eax]
00689ED1   8B8024090000           mov     eax, [eax+$0924]

* Reference to: DB.TField.GetEditText(TField):AnsiString;
|
00689ED7   E87045E5FF             call    004DE44C
00689EDC   8B45E8                 mov     eax, [ebp-$18]
00689EDF   8D55EC                 lea     edx, [ebp-$14]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00689EE2   E8399C1100             call    007A3B20
00689EE7   FF75EC                 push    dword ptr [ebp-$14]

* Possible String Reference to: ') AND (NUMLCTO = '
|
00689EEA   68C89F6800             push    $00689FC8
00689EEF   8D55E0                 lea     edx, [ebp-$20]
00689EF2   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00689EF7   8B00                   mov     eax, [eax]
00689EF9   8B8028090000           mov     eax, [eax+$0928]
00689EFF   8B08                   mov     ecx, [eax]
00689F01   FF5160                 call    dword ptr [ecx+$60]
00689F04   8B45E0                 mov     eax, [ebp-$20]
00689F07   8D55E4                 lea     edx, [ebp-$1C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00689F0A   E8119C1100             call    007A3B20
00689F0F   FF75E4                 push    dword ptr [ebp-$1C]
00689F12   68E49F6800             push    $00689FE4
00689F17   8D45FC                 lea     eax, [ebp-$04]
00689F1A   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
00689F1F   E8F8B8D7FF             call    0040581C
00689F24   6A00                   push    $00
00689F26   8D55D8                 lea     edx, [ebp-$28]

* Reference to control TfrmAdicionaProduto.EdNumPessoas : TEdit
|
00689F29   8B8390030000           mov     eax, [ebx+$0390]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
00689F2F   E89897E0FF             call    004936CC
00689F34   8B45D8                 mov     eax, [ebp-$28]
00689F37   8945DC                 mov     [ebp-$24], eax
00689F3A   8D45DC                 lea     eax, [ebp-$24]
00689F3D   50                     push    eax
00689F3E   6A00                   push    $00
00689F40   8B45FC                 mov     eax, [ebp-$04]
00689F43   50                     push    eax

* Possible String Reference to: 'NUMPESSOAS'
|
00689F44   B8F09F6800             mov     eax, $00689FF0
00689F49   8945D4                 mov     [ebp-$2C], eax
00689F4C   8D4DD4                 lea     ecx, [ebp-$2C]

* Possible String Reference to: 'MESALCTO'
|
00689F4F   BA04A06800             mov     edx, $0068A004
00689F54   33C0                   xor     eax, eax

|
00689F56   E8F9031200             call    007AA354
00689F5B   33C0                   xor     eax, eax
00689F5D   5A                     pop     edx
00689F5E   59                     pop     ecx
00689F5F   59                     pop     ecx
00689F60   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[ãÂ]√'
|
00689F63   68A59F6800             push    $00689FA5
00689F68   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrClr(void;void);
|
00689F6B   E82CB5D7FF             call    0040549C
00689F70   8D45E0                 lea     eax, [ebp-$20]
00689F73   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00689F78   E843B5D7FF             call    004054C0
00689F7D   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
00689F80   E817B5D7FF             call    0040549C
00689F85   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
00689F88   E80FB5D7FF             call    0040549C
00689F8D   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
00689F90   E807B5D7FF             call    0040549C
00689F95   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00689F98   E8FFB4D7FF             call    0040549C
00689F9D   C3                     ret


* Reference to: System.@HandleFinally;
|
00689F9E   E995ADD7FF             jmp     00404D38
00689FA3   EBC3                   jmp     00689F68

****** END
|
00689FA5   5E                     pop     esi
00689FA6   5B                     pop     ebx
00689FA7   8BE5                   mov     esp, ebp
00689FA9   5D                     pop     ebp
00689FAA   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.SpinButton1UpClick(Sender : TObject);
begin
(*
006876FC   55                     push    ebp
006876FD   8BEC                   mov     ebp, esp
006876FF   B905000000             mov     ecx, $00000005
00687704   6A00                   push    $00
00687706   6A00                   push    $00
00687708   49                     dec     ecx
00687709   75F9                   jnz     00687704
0068770B   53                     push    ebx
0068770C   56                     push    esi
0068770D   8BD8                   mov     ebx, eax
0068770F   33C0                   xor     eax, eax
00687711   55                     push    ebp
00687712   681B786800             push    $0068781B

***** TRY
|
00687717   64FF30                 push    dword ptr fs:[eax]
0068771A   648920                 mov     fs:[eax], esp
0068771D   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TfrmAdicionaProduto.EdNumPessoas : TEdit
|
00687720   8BB390030000           mov     esi, [ebx+$0390]
00687726   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
00687728   E89FBFE0FF             call    004936CC
0068772D   8B45F4                 mov     eax, [ebp-$0C]
00687730   33D2                   xor     edx, edx

* Reference to: SysUtils.StrToIntDef(AnsiString;Integer):Integer;
|
00687732   E8D537D8FF             call    0040AF0C
00687737   40                     inc     eax
00687738   8D55F8                 lea     edx, [ebp-$08]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0068773B   E82436D8FF             call    0040AD64
00687740   8B55F8                 mov     edx, [ebp-$08]
00687743   8BC6                   mov     eax, esi

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00687745   E8B2BFE0FF             call    004936FC

* Possible String Reference to: '(CODMESA = '
|
0068774A   6830786800             push    $00687830
0068774F   8D55EC                 lea     edx, [ebp-$14]
00687752   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00687757   8B00                   mov     eax, [eax]
00687759   8B8024090000           mov     eax, [eax+$0924]

* Reference to: DB.TField.GetEditText(TField):AnsiString;
|
0068775F   E8E86CE5FF             call    004DE44C
00687764   8B45EC                 mov     eax, [ebp-$14]
00687767   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0068776A   E8B1C31100             call    007A3B20
0068776F   FF75F0                 push    dword ptr [ebp-$10]

* Possible String Reference to: ') AND (NUMLCTO = '
|
00687772   6844786800             push    $00687844
00687777   8D55E4                 lea     edx, [ebp-$1C]
0068777A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0068777F   8B00                   mov     eax, [eax]
00687781   8B8028090000           mov     eax, [eax+$0928]
00687787   8B08                   mov     ecx, [eax]
00687789   FF5160                 call    dword ptr [ecx+$60]
0068778C   8B45E4                 mov     eax, [ebp-$1C]
0068778F   8D55E8                 lea     edx, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00687792   E889C31100             call    007A3B20
00687797   FF75E8                 push    dword ptr [ebp-$18]
0068779A   6860786800             push    $00687860
0068779F   8D45FC                 lea     eax, [ebp-$04]
006877A2   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
006877A7   E870E0D7FF             call    0040581C
006877AC   6A00                   push    $00
006877AE   8D55DC                 lea     edx, [ebp-$24]

* Reference to control TfrmAdicionaProduto.EdNumPessoas : TEdit
|
006877B1   8B8390030000           mov     eax, [ebx+$0390]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
006877B7   E810BFE0FF             call    004936CC
006877BC   8B45DC                 mov     eax, [ebp-$24]
006877BF   8945E0                 mov     [ebp-$20], eax
006877C2   8D45E0                 lea     eax, [ebp-$20]
006877C5   50                     push    eax
006877C6   6A00                   push    $00
006877C8   8B45FC                 mov     eax, [ebp-$04]
006877CB   50                     push    eax

* Possible String Reference to: 'NUMPESSOAS'
|
006877CC   B86C786800             mov     eax, $0068786C
006877D1   8945D8                 mov     [ebp-$28], eax
006877D4   8D4DD8                 lea     ecx, [ebp-$28]

* Possible String Reference to: 'MESALCTO'
|
006877D7   BA80786800             mov     edx, $00687880
006877DC   33C0                   xor     eax, eax

|
006877DE   E8712B1200             call    007AA354
006877E3   33C0                   xor     eax, eax
006877E5   5A                     pop     edx
006877E6   59                     pop     ecx
006877E7   59                     pop     ecx
006877E8   648910                 mov     fs:[eax], edx

****** FINALLY
|
006877EB   6822786800             push    $00687822
006877F0   8D45DC                 lea     eax, [ebp-$24]

* Reference to: System.@LStrClr(void;void);
|
006877F3   E8A4DCD7FF             call    0040549C
006877F8   8D45E4                 lea     eax, [ebp-$1C]
006877FB   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00687800   E8BBDCD7FF             call    004054C0
00687805   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
00687808   E88FDCD7FF             call    0040549C
0068780D   8D45F8                 lea     eax, [ebp-$08]
00687810   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00687815   E8A6DCD7FF             call    004054C0
0068781A   C3                     ret


* Reference to: System.@HandleFinally;
|
0068781B   E918D5D7FF             jmp     00404D38
00687820   EBCE                   jmp     006877F0

****** END
|
00687822   5E                     pop     esi
00687823   5B                     pop     ebx
00687824   8BE5                   mov     esp, ebp
00687826   5D                     pop     ebp
00687827   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.edCodProdEnter(Sender : TObject);
begin
(*
0068A010   A130AE7D00             mov     eax, dword ptr [$007DAE30]
0068A015   8B00                   mov     eax, [eax]
0068A017   8B1554AE7D00           mov     edx, [$007DAE54]
0068A01D   8B12                   mov     edx, [edx]
0068A01F   8982DC000000           mov     [edx+$00DC], eax
0068A025   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
0068A02F   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.EdHistoricoChange(Sender : TObject);
begin
(*
0068A030   A130AE7D00             mov     eax, dword ptr [$007DAE30]
0068A035   8B00                   mov     eax, [eax]
0068A037   8B1554AE7D00           mov     edx, [$007DAE54]
0068A03D   8B12                   mov     edx, [edx]
0068A03F   8982DC000000           mov     [edx+$00DC], eax
0068A045   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
0068A04F   C3                     ret

*)
end;

procedure TfrmAdicionaProduto.btAdicionarKeyDown(Sender : TObject);
begin
(*
0068BDF4   55                     push    ebp
0068BDF5   8BEC                   mov     ebp, esp
0068BDF7   56                     push    esi
0068BDF8   6683390D               cmp     word ptr [ecx], +$0D
0068BDFC   750F                   jnz     0068BE0D

* Reference to control TfrmAdicionaProduto.btAdicionar : TBitBtn
|
0068BDFE   8B80FC020000           mov     eax, [eax+$02FC]
0068BE04   66BEEBFF               mov     si, $FFEB

* Reference to: System.@CallDynaInst;
|
0068BE08   E89389D7FF             call    004047A0
0068BE0D   5E                     pop     esi
0068BE0E   5D                     pop     ebp
0068BE0F   C20400                 ret     $0004

*)
end;

procedure TfrmAdicionaProduto._PROC_006874C8(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006874C8   E96BD8D7FF             jmp     00404D38

* Reference to: iwmain.TFormIWMain.OnCreateSession(TFormIWMain;TObject);
|
006874CD   EBEE                   jmp     006874BD
006874CF   33C0                   xor     eax, eax
006874D1   5A                     pop     edx
006874D2   59                     pop     ecx
006874D3   59                     pop     ecx
006874D4   648910                 mov     fs:[eax], edx

****** FINALLY
|
006874D7   6806756800             push    $00687506
006874DC   8D45BC                 lea     eax, [ebp-$44]
006874DF   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006874E4   E8D7DFD7FF             call    004054C0
006874E9   8D45E8                 lea     eax, [ebp-$18]
006874EC   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006874F1   E8CADFD7FF             call    004054C0
006874F6   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006874F9   E89EDFD7FF             call    0040549C
006874FE   C3                     ret


* Reference to: System.@HandleFinally;
|
006874FF   E934D8D7FF             jmp     00404D38
00687504   EBD6                   jmp     006874DC

****** END
|
00687506   8A45FB                 mov     al, byte ptr [ebp-$05]
00687509   5F                     pop     edi
0068750A   5E                     pop     esi
0068750B   5B                     pop     ebx
0068750C   8BE5                   mov     esp, ebp
0068750E   5D                     pop     ebp
0068750F   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068752A(Sender : TObject);
begin
(*
0068752A   4D                     dec     ebp
0068752B   4C                     dec     esp
0068752C   43                     inc     ebx
0068752D   54                     push    esp
0068752E   4F                     dec     edi
0068752F   00FF                   add     bh, bh
00687531   FFFF                   DB  $FF, $FF  //      
00687533   FF07                   inc     dword ptr [edi]
00687535   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006875CD(Sender : TObject);
begin
(*
006875CD   4E                     dec     esi
006875CE   43                     inc     ebx
006875CF   00FF                   add     bh, bh
006875D1   FFFF                   DB  $FF, $FF  //      
006875D3   FF0A                   dec     dword ptr [edx]
006875D5   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006875DD(Sender : TObject);
begin
(*
006875DD   4E                     dec     esi
006875DE   43                     inc     ebx
006875DF   203D200000FF           and     [$FF000020], bh
006875E5   FFFF                   DB  $FF, $FF  //      
006875E7   FF08                   dec     dword ptr [eax]
006875E9   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006875EE(Sender : TObject);
begin
(*
006875EE   4E                     dec     esi
006875EF   43                     inc     ebx
006875F0   52                     push    edx
006875F1   45                     inc     ebp
006875F2   50                     push    eax
006875F3   52                     push    edx
006875F4   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_00687602(Sender : TObject);
begin
(*
00687602   4D                     dec     ebp
00687603   50                     push    eax
00687604   45                     inc     ebp
00687605   53                     push    ebx
00687606   53                     push    ebx
00687607   4F                     dec     edi
00687608   41                     inc     ecx
00687609   53                     push    ebx
0068760A   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068784D(Sender : TObject);
begin
(*
0068784D   4D                     dec     ebp
0068784E   4C                     dec     esp
0068784F   43                     inc     ebx
00687850   54                     push    esp
00687851   4F                     dec     edi
00687852   203D20000000           and     [$00000020], bh
00687858   FFFF                   DB  $FF, $FF  //      
0068785A   FFFF                   DB  $FF, $FF  //      
0068785C   0100                   add     [eax], eax
0068785E   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068786E(Sender : TObject);
begin
(*
0068786E   4D                     dec     ebp
0068786F   50                     push    eax
00687870   45                     inc     ebp
00687871   53                     push    ebx
00687872   53                     push    ebx
00687873   4F                     dec     edi
00687874   41                     inc     ecx
00687875   53                     push    ebx
00687876   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068788D(Sender : TObject);
begin
(*
0068788D   8BEC                   mov     ebp, esp
0068788F   33C9                   xor     ecx, ecx
00687891   51                     push    ecx
00687892   51                     push    ecx
00687893   51                     push    ecx
00687894   51                     push    ecx
00687895   51                     push    ecx
00687896   51                     push    ecx
00687897   53                     push    ebx
00687898   56                     push    esi
00687899   57                     push    edi
0068789A   8955FC                 mov     [ebp-$04], edx
0068789D   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006878A0   E8A7E0D7FF             call    0040594C
006878A5   8B358CA97D00           mov     esi, [$007DA98C]
006878AB   33C0                   xor     eax, eax
006878AD   55                     push    ebp

* Possible String Reference to: 'ÈÂ“◊ˇÎ„äE˚_^[ãÂ]√'
|
006878AE   684E7A6800             push    $00687A4E

***** TRY
|
006878B3   64FF30                 push    dword ptr fs:[eax]
006878B6   648920                 mov     fs:[eax], esp
006878B9   C645FB00               mov     byte ptr [ebp-$05], $00
006878BD   33D2                   xor     edx, edx
006878BF   55                     push    ebp
006878C0   68247A6800             push    $00687A24

***** TRY
|
006878C5   64FF32                 push    dword ptr fs:[edx]
006878C8   648922                 mov     fs:[edx], esp
006878CB   33D2                   xor     edx, edx
006878CD   55                     push    ebp
006878CE   68DB796800             push    $006879DB

***** TRY
|
006878D3   64FF32                 push    dword ptr fs:[edx]
006878D6   648922                 mov     fs:[edx], esp
006878D9   8B06                   mov     eax, [esi]
006878DB   8B4058                 mov     eax, [eax+$58]
006878DE   8B9850020000           mov     ebx, [eax+$0250]
006878E4   8BC3                   mov     eax, ebx
006878E6   8B10                   mov     edx, [eax]
006878E8   FF5244                 call    dword ptr [edx+$44]

* Possible String Reference to: 'select'
|
006878EB   BA687A6800             mov     edx, $00687A68
006878F0   8BC3                   mov     eax, ebx
006878F2   8B08                   mov     ecx, [eax]
006878F4   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'm.codmesa, m.numLcto, m.dataini, m.
|                                datafim, m.cgcclie, m.CodFunc, '
|
006878F7   BA787A6800             mov     edx, $00687A78
006878FC   8BC3                   mov     eax, ebx
006878FE   8B08                   mov     ecx, [eax]
00687900   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'm.numpessoas, m.vlrtotal, m.status,
|                                 c.razao'
|
00687903   BAC47A6800             mov     edx, $00687AC4
00687908   8BC3                   mov     eax, ebx
0068790A   8B08                   mov     ecx, [eax]
0068790C   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'from mesalcto m'
|
0068790F   BAF87A6800             mov     edx, $00687AF8
00687914   8BC3                   mov     eax, ebx
00687916   8B08                   mov     ecx, [eax]
00687918   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'left join clientes c'
|
0068791B   BA107B6800             mov     edx, $00687B10
00687920   8BC3                   mov     eax, ebx
00687922   8B08                   mov     ecx, [eax]
00687924   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'on (m.cgcclie = c.cgcclie)'
|
00687927   BA307B6800             mov     edx, $00687B30
0068792C   8BC3                   mov     eax, ebx
0068792E   8B08                   mov     ecx, [eax]
00687930   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'where'
|
00687933   BA547B6800             mov     edx, $00687B54
00687938   8BC3                   mov     eax, ebx
0068793A   8B08                   mov     ecx, [eax]
0068793C   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: '(m.codmesa = '
|
0068793F   68647B6800             push    $00687B64
00687944   8D55F0                 lea     edx, [ebp-$10]
00687947   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0068794A   E8D1C11100             call    007A3B20
0068794F   FF75F0                 push    dword ptr [ebp-$10]

* Possible String Reference to: ') and (m.status = '
|
00687952   687C7B6800             push    $00687B7C
00687957   8D55EC                 lea     edx, [ebp-$14]
0068795A   B8987B6800             mov     eax, $00687B98

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0068795F   E8BCC11100             call    007A3B20
00687964   FF75EC                 push    dword ptr [ebp-$14]

* Possible String Reference to: ') and ((m.fechado is null) or (m.fe
|                                chado = 'F'))'
|
00687967   68A47B6800             push    $00687BA4
0068796C   8D45F4                 lea     eax, [ebp-$0C]
0068796F   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
00687974   E8A3DED7FF             call    0040581C
00687979   8B55F4                 mov     edx, [ebp-$0C]
0068797C   8BC3                   mov     eax, ebx
0068797E   8B08                   mov     ecx, [eax]
00687980   FF5138                 call    dword ptr [ecx+$38]
00687983   8B06                   mov     eax, [esi]
00687985   8B4058                 mov     eax, [eax+$58]
00687988   80B85402000000         cmp     byte ptr [eax+$0254], $00
0068798F   7505                   jnz     00687996

* Reference to: ActnMenus.TInternalMDIAction.UpdateTarget(TInternalMDIAction;TObject);
|
00687991   E83A37F1FF             call    0059B0D0
00687996   8B06                   mov     eax, [esi]
00687998   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0068799B   E8B40FE6FF             call    004E8954
006879A0   8B06                   mov     eax, [esi]
006879A2   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.Last(TDataSet);
|
006879A5   E85A37E6FF             call    004EB104
006879AA   8B06                   mov     eax, [esi]
006879AC   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
006879AF   E8EC10E6FF             call    004E8AA0
006879B4   84C0                   test    al, al
006879B6   7410                   jz      006879C8
006879B8   8B06                   mov     eax, [esi]
006879BA   8B4058                 mov     eax, [eax+$58]
006879BD   8B10                   mov     edx, [eax]
006879BF   FF924C010000           call    dword ptr [edx+$014C]
006879C5   48                     dec     eax
006879C6   7D04                   jnl     006879CC
006879C8   33C0                   xor     eax, eax
006879CA   EB02                   jmp     006879CE
006879CC   B001                   mov     al, $01
006879CE   8845FB                 mov     [ebp-$05], al
006879D1   33C0                   xor     eax, eax
006879D3   5A                     pop     edx
006879D4   59                     pop     ecx
006879D5   59                     pop     ecx
006879D6   648910                 mov     fs:[eax], edx
006879D9   EB3B                   jmp     00687A16

* Reference to: System.@HandleOnException;
|
006879DB   E9D0D1D7FF             jmp     00404BB0
006879E0   0100                   add     [eax], eax
006879E2   0000                   add     [eax], al
006879E4   40                     inc     eax
006879E5   95                     xchg    eax, ebp
006879E6   40                     inc     eax
006879E7   00EC                   add     ah, ch
006879E9   7968                   jns     00687A53
006879EB   0089C36A008B           add     [ecx+$8B006AC3], cl
006879F1   4B                     dec     ebx
006879F2   048D                   add     al, -$73
006879F4   45                     inc     ebp
006879F5   E8BAE07B68             call    68E45AB4
006879FA   00E8                   add     al, ch
006879FC   A8DD                   test    al, $DD
006879FE   D7                     xlat
006879FF   FF8B45E8668B           dec     dword ptr [ebx+$8B66E845]
00687A05   0D0C7C6800             or      eax, $00687C0C
00687A0A   B201                   mov     dl, $01

|
00687A0C   E81BC1DBFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00687A11   E89AD4D7FF             call    00404EB0

****** END
|
00687A16   33C0                   xor     eax, eax
00687A18   5A                     pop     edx
00687A19   59                     pop     ecx
00687A1A   59                     pop     ecx
00687A1B   648910                 mov     fs:[eax], edx

****** FINALLY
|
00687A1E   682B7A6800             push    $00687A2B
00687A23   C3                     ret


* Reference to: System.@HandleFinally;
|
00687A24   E90FD3D7FF             jmp     00404D38
00687A29   EBF8                   jmp     00687A23

****** END
|
00687A2B   33C0                   xor     eax, eax
00687A2D   5A                     pop     edx
00687A2E   59                     pop     ecx
00687A2F   59                     pop     ecx
00687A30   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]√'
|
00687A33   68557A6800             push    $00687A55
00687A38   8D45E8                 lea     eax, [ebp-$18]
00687A3B   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00687A40   E87BDAD7FF             call    004054C0
00687A45   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00687A48   E84FDAD7FF             call    0040549C
00687A4D   C3                     ret


* Reference to: System.@HandleFinally;
|
00687A4E   E9E5D2D7FF             jmp     00404D38
00687A53   EBE3                   jmp     00687A38

****** END
|
00687A55   8A45FB                 mov     al, byte ptr [ebp-$05]
00687A58   5F                     pop     edi
00687A59   5E                     pop     esi
00687A5A   5B                     pop     ebx
00687A5B   8BE5                   mov     esp, ebp
00687A5D   5D                     pop     ebp
00687A5E   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_00687C11(Sender : TObject);
begin
(*
00687C11   8BEC                   mov     ebp, esp
00687C13   33C9                   xor     ecx, ecx
00687C15   51                     push    ecx
00687C16   51                     push    ecx
00687C17   51                     push    ecx
00687C18   51                     push    ecx
00687C19   51                     push    ecx
00687C1A   51                     push    ecx
00687C1B   53                     push    ebx
00687C1C   56                     push    esi
00687C1D   57                     push    edi
00687C1E   8BF2                   mov     esi, edx
00687C20   33C0                   xor     eax, eax
00687C22   55                     push    ebp

* Possible String Reference to: 'Èjœ◊ˇÎÎãE¸_^[ãÂ]√'
|
00687C23   68C97D6800             push    $00687DC9

***** TRY
|
00687C28   64FF30                 push    dword ptr fs:[eax]
00687C2B   648920                 mov     fs:[eax], esp
00687C2E   33C0                   xor     eax, eax
00687C30   8945FC                 mov     [ebp-$04], eax
00687C33   33D2                   xor     edx, edx
00687C35   55                     push    ebp
00687C36   68A77D6800             push    $00687DA7

***** TRY
|
00687C3B   64FF32                 push    dword ptr fs:[edx]
00687C3E   648922                 mov     fs:[edx], esp
00687C41   33D2                   xor     edx, edx
00687C43   55                     push    ebp
00687C44   685E7D6800             push    $00687D5E

***** TRY
|
00687C49   64FF32                 push    dword ptr fs:[edx]
00687C4C   648922                 mov     fs:[edx], esp
00687C4F   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00687C54   8B00                   mov     eax, [eax]
00687C56   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.Close(TDataSet);
|
00687C59   E8020DE6FF             call    004E8960
00687C5E   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00687C63   8B00                   mov     eax, [eax]
00687C65   8B4058                 mov     eax, [eax+$58]
00687C68   8B9850020000           mov     ebx, [eax+$0250]
00687C6E   8BC3                   mov     eax, ebx
00687C70   8B10                   mov     edx, [eax]
00687C72   FF5244                 call    dword ptr [edx+$44]

* Possible String Reference to: 'select max(mi.item) UltItem'
|
00687C75   BAE47D6800             mov     edx, $00687DE4
00687C7A   8BC3                   mov     eax, ebx
00687C7C   8B08                   mov     ecx, [eax]
00687C7E   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'from mesalcto m'
|
00687C81   BA087E6800             mov     edx, $00687E08
00687C86   8BC3                   mov     eax, ebx
00687C88   8B08                   mov     ecx, [eax]
00687C8A   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'left join mesaitem mi'
|
00687C8D   BA207E6800             mov     edx, $00687E20
00687C92   8BC3                   mov     eax, ebx
00687C94   8B08                   mov     ecx, [eax]
00687C96   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'on  (m.codmesa = mi.codmesa)'
|
00687C99   BA407E6800             mov     edx, $00687E40
00687C9E   8BC3                   mov     eax, ebx
00687CA0   8B08                   mov     ecx, [eax]
00687CA2   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'and (m.numlcto = mi.numlcto)'
|
00687CA5   BA687E6800             mov     edx, $00687E68
00687CAA   8BC3                   mov     eax, ebx
00687CAC   8B08                   mov     ecx, [eax]
00687CAE   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'where'
|
00687CB1   BA907E6800             mov     edx, $00687E90
00687CB6   8BC3                   mov     eax, ebx
00687CB8   8B08                   mov     ecx, [eax]
00687CBA   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: '(m.codmesa = '
|
00687CBD   68A07E6800             push    $00687EA0
00687CC2   8D55F0                 lea     edx, [ebp-$10]
00687CC5   8BC6                   mov     eax, esi

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
00687CC7   E89830D8FF             call    0040AD64
00687CCC   8B45F0                 mov     eax, [ebp-$10]
00687CCF   8D55F4                 lea     edx, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00687CD2   E849BE1100             call    007A3B20
00687CD7   FF75F4                 push    dword ptr [ebp-$0C]

* Possible String Reference to: ') and (m.status = '
|
00687CDA   68B87E6800             push    $00687EB8
00687CDF   8D55EC                 lea     edx, [ebp-$14]
00687CE2   B8D47E6800             mov     eax, $00687ED4

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00687CE7   E834BE1100             call    007A3B20
00687CEC   FF75EC                 push    dword ptr [ebp-$14]
00687CEF   68E07E6800             push    $00687EE0
00687CF4   8D45F8                 lea     eax, [ebp-$08]
00687CF7   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
00687CFC   E81BDBD7FF             call    0040581C
00687D01   8B55F8                 mov     edx, [ebp-$08]
00687D04   8BC3                   mov     eax, ebx
00687D06   8B08                   mov     ecx, [eax]
00687D08   FF5138                 call    dword ptr [ecx+$38]
00687D0B   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00687D10   8B00                   mov     eax, [eax]
00687D12   8B4058                 mov     eax, [eax+$58]
00687D15   80B85402000000         cmp     byte ptr [eax+$0254], $00
00687D1C   750B                   jnz     00687D29
00687D1E   8B158CA97D00           mov     edx, [$007DA98C]

* Reference to: ActnMenus.TInternalMDIAction.UpdateTarget(TInternalMDIAction;TObject);
|
00687D24   E8A733F1FF             call    0059B0D0
00687D29   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00687D2E   8B00                   mov     eax, [eax]
00687D30   8B4058                 mov     eax, [eax+$58]

* Reference to: DB.TDataSet.Open(TDataSet);
|
00687D33   E81C0CE6FF             call    004E8954
00687D38   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00687D3D   8B00                   mov     eax, [eax]
00687D3F   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'ultitem'
|
00687D42   BAEC7E6800             mov     edx, $00687EEC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00687D47   E8B81EE6FF             call    004E9C04
00687D4C   8B10                   mov     edx, [eax]
00687D4E   FF5258                 call    dword ptr [edx+$58]
00687D51   8945FC                 mov     [ebp-$04], eax
00687D54   33C0                   xor     eax, eax
00687D56   5A                     pop     edx
00687D57   59                     pop     ecx
00687D58   59                     pop     ecx
00687D59   648910                 mov     fs:[eax], edx
00687D5C   EB3B                   jmp     00687D99

* Reference to: System.@HandleOnException;
|
00687D5E   E94DCED7FF             jmp     00404BB0
00687D63   0100                   add     [eax], eax
00687D65   0000                   add     [eax], al
00687D67   40                     inc     eax
00687D68   95                     xchg    eax, ebp
00687D69   40                     inc     eax
00687D6A   006F7D                 add     [edi+$7D], ch
00687D6D   680089C36A             push    $6AC38900
00687D72   008B4B048D45           add     [ebx+$458D044B], cl
00687D78   E8BAFC7E68             call    68E77A37
00687D7D   00E8                   add     al, ch
00687D7F   25DAD7FF8B             and     eax, $8BFFD7DA
00687D84   45                     inc     ebp
00687D85   E8668B0D28             call    287608F0
00687D8A   7F68                   jnle    00687DF4
00687D8C   00B201E898BD           add     [edx+$BD98E801], dh
00687D92   DBFF                   DB  $DB, $FF  //

* Reference to: System.@DoneExcept;
|
00687D94   E817D1D7FF             call    00404EB0

****** END
|
00687D99   33C0                   xor     eax, eax
00687D9B   5A                     pop     edx
00687D9C   59                     pop     ecx
00687D9D   59                     pop     ecx
00687D9E   648910                 mov     fs:[eax], edx

****** FINALLY
|
00687DA1   68AE7D6800             push    $00687DAE
00687DA6   C3                     ret


* Reference to: System.@HandleFinally;
|
00687DA7   E98CCFD7FF             jmp     00404D38
00687DAC   EBF8                   jmp     00687DA6

****** END
|
00687DAE   33C0                   xor     eax, eax
00687DB0   5A                     pop     edx
00687DB1   59                     pop     ecx
00687DB2   59                     pop     ecx
00687DB3   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãE¸_^[ãÂ]√'
|
00687DB6   68D07D6800             push    $00687DD0
00687DBB   8D45E8                 lea     eax, [ebp-$18]
00687DBE   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00687DC3   E8F8D6D7FF             call    004054C0
00687DC8   C3                     ret


* Reference to: System.@HandleFinally;
|
00687DC9   E96ACFD7FF             jmp     00404D38
00687DCE   EBEB                   jmp     00687DBB

****** END
|
00687DD0   8B45FC                 mov     eax, [ebp-$04]
00687DD3   5F                     pop     edi
00687DD4   5E                     pop     esi
00687DD5   5B                     pop     ebx
00687DD6   8BE5                   mov     esp, ebp
00687DD8   5D                     pop     ebp
00687DD9   C3                     ret

00687DDA   0000                   add     [eax], al

00687DDC   FFFF                   DB  $FF, $FF  //      
00687DDE   FFFF                   DB  $FF, $FF  //      
00687DE0   1B00                   sbb     eax, [eax]
00687DE2   0000                   add     [eax], al

00687DE4   7365                   jnb     00687E4B
00687DE6   6C                     insb
00687DE7   656374206D             arpl    gs:[eax+$6D], si
00687DEC   61                     popa
00687DED   7828                   js      00687E17
00687DEF   6D                     insd
00687DF0   692E6974656D           imul    ebp, [esi], $6D657469
00687DF6   2920                   sub     dword ptr [eax], esp
00687DF8   55                     push    ebp
00687DF9   6C                     insb
00687DFA   7449                   jz      00687E45
00687DFC   7465                   jz      00687E63
00687DFE   6D                     insd
00687DFF   00FF                   add     bh, bh
00687E01   FFFF                   DB  $FF, $FF  //      
00687E03   FF0F                   dec     dword ptr [edi]
00687E05   0000                   add     [eax], al

00687E07   006672                 add     [esi+$72], ah
00687E0A   6F                     outsd
00687E0B   6D                     insd
00687E0C   206D65                 and     [ebp+$65], ch
00687E0F   7361                   jnb     00687E72
00687E11   6C                     insb
00687E12   63746F20               arpl    [edi+ebp*2+$20], si
00687E16   6D                     insd
00687E17   00FF                   add     bh, bh
00687E19   FFFF                   DB  $FF, $FF  //      
00687E1B   FF150000006C           call    dword ptr [$6C000000]
00687E21   65667420               jz      00687E45
00687E25   6A6F                   push    $6F
00687E27   696E206D657361         imul    ebp, [esi+$20], $6173656D
00687E2E   6974656D206D6900       imul    esi, [ebp+$6D], $00696D20
00687E36   0000                   add     [eax], al

00687E38   FFFF                   DB  $FF, $FF  //      
00687E3A   FFFF                   DB  $FF, $FF  //      
00687E3C   1C00                   sbb     al, $00
00687E3E   0000                   add     [eax], al

00687E40   6F                     outsd
00687E41   6E                     outsb
00687E42   2020                   and     [eax], ah
00687E44   286D2E                 sub     [ebp+$2E], ch
00687E47   636F64                 arpl    [edi+$64], bp
00687E4A   6D                     insd
00687E4B   657361                 jnb     00687EAF
00687E4E   203D206D692E           and     [$2E696D20], bh
00687E54   636F64                 arpl    [edi+$64], bp
00687E57   6D                     insd
00687E58   657361                 jnb     00687EBC
00687E5B   2900                   sub     dword ptr [eax], eax
00687E5D   0000                   add     [eax], al

00687E5F   00FF                   add     bh, bh
00687E61   FFFF                   DB  $FF, $FF  //      
00687E63   FF1C00                 call    [eax+eax]
00687E66   0000                   add     [eax], al

00687E68   61                     popa
00687E69   6E                     outsb
00687E6A   642028                 and     fs:[eax], ch
00687E6D   6D                     insd
00687E6E   2E6E                   outsb
00687E70   756D                   jnz     00687EDF
00687E72   6C                     insb
00687E73   63746F20               arpl    [edi+ebp*2+$20], si
00687E77   3D206D692E             cmp     eax, $2E696D20
00687E7C   6E                     outsb
00687E7D   756D                   jnz     00687EEC
00687E7F   6C                     insb
00687E80   63746F29               arpl    [edi+ebp*2+$29], si
00687E84   0000                   add     [eax], al

00687E86   0000                   add     [eax], al

00687E88   FFFF                   DB  $FF, $FF  //      
00687E8A   FFFF                   DB  $FF, $FF  //      
00687E8C   0500000077             add     eax, +$77000000

* Possible String Reference to: 'az„o'
|
00687E91   6865726500             push    $00657265
00687E96   0000                   add     [eax], al

00687E98   FFFF                   DB  $FF, $FF  //      
00687E9A   FFFF                   DB  $FF, $FF  //      
00687E9C   0D00000028             or      eax, $28000000
00687EA1   6D                     insd
00687EA2   2E636F64               arpl    cs:[edi+$64], bp
00687EA6   6D                     insd
00687EA7   657361                 jnb     00687F0B
00687EAA   203D20000000           and     [$00000020], bh
00687EB0   FFFF                   DB  $FF, $FF  //      
00687EB2   FFFF                   DB  $FF, $FF  //      
00687EB4   1200                   adc     al, byte ptr [eax]
00687EB6   0000                   add     [eax], al

00687EB8   2920                   sub     dword ptr [eax], esp
00687EBA   61                     popa
00687EBB   6E                     outsb
00687EBC   642028                 and     fs:[eax], ch
00687EBF   6D                     insd
00687EC0   2E7374                 jnb     00687F37
00687EC3   61                     popa
00687EC4   7475                   jz      00687F3B
00687EC6   7320                   jnb     00687EE8
00687EC8   3D200000FF             cmp     eax, $FF000020
00687ECD   FFFF                   DB  $FF, $FF  //      
00687ECF   FF01                   inc     dword ptr [ecx]
00687ED1   0000                   add     [eax], al

00687ED3   004100                 add     [ecx+$00], al
00687ED6   0000                   add     [eax], al

00687ED8   FFFF                   DB  $FF, $FF  //      
00687EDA   FFFF                   DB  $FF, $FF  //      
00687EDC   0100                   add     [eax], eax
00687EDE   0000                   add     [eax], al

00687EE0   2900                   sub     dword ptr [eax], eax
00687EE2   0000                   add     [eax], al

00687EE4   FFFF                   DB  $FF, $FF  //      
00687EE6   FFFF                   DB  $FF, $FF  //      
00687EE8   07                     pop     es
00687EE9   0000                   add     [eax], al

00687EEB   00756C                 add     [ebp+$6C], dh
00687EEE   7469                   jz      00687F59
00687EF0   7465                   jz      00687F57
00687EF2   6D                     insd
00687EF3   00FF                   add     bh, bh
00687EF5   FFFF                   DB  $FF, $FF  //      
00687EF7   FF2B                   jmp     [ebx]
00687EF9   0000                   add     [eax], al

00687EFB   004F63                 add     [edi+$63], cl
00687EFE   6F                     outsd
00687EFF   7272                   jb      00687F73
00687F01   657520                 jnz     00687F24
00687F04   756D                   jnz     00687F73
00687F06   206572                 and     [ebp+$72], ah
00687F09   726F                   jb      00687F7A
00687F0B   206E61                 and     [esi+$61], ch
00687F0E   206675                 and     [esi+$75], ah
00687F11   6E                     outsb
00687F12   E7E3                   out     $E3, eax
00687F14   6F                     outsd
00687F15   205065                 and     [eax+$65], dl
00687F18   6761                   popa
00687F1A   55                     push    ebp
00687F1B   6C                     insb
00687F1C   7469                   jz      00687F87
00687F1E   6D                     insd
00687F1F   6F                     outsd
00687F20   49                     dec     ecx
00687F21   7465                   jz      00687F88
00687F23   6D                     insd
00687F24   2E0D0D000400           or      eax, $0004000D
00687F2A   0000                   add     [eax], al

00687F2C   55                     push    ebp
00687F2D   8BEC                   mov     ebp, esp
00687F2F   33C9                   xor     ecx, ecx
00687F31   51                     push    ecx
00687F32   51                     push    ecx
00687F33   51                     push    ecx
00687F34   51                     push    ecx
00687F35   51                     push    ecx
00687F36   51                     push    ecx
00687F37   51                     push    ecx
00687F38   53                     push    ebx
00687F39   56                     push    esi
00687F3A   57                     push    edi
00687F3B   8BF8                   mov     edi, eax
00687F3D   8B358CA97D00           mov     esi, [$007DA98C]
00687F43   33C0                   xor     eax, eax
00687F45   55                     push    ebp
00687F46   682C816800             push    $0068812C

***** TRY
|
00687F4B   64FF30                 push    dword ptr fs:[eax]
00687F4E   648920                 mov     fs:[eax], esp
00687F51   C645FF00               mov     byte ptr [ebp-$01], $00
00687F55   33C0                   xor     eax, eax
00687F57   89059CEC7D00           mov     [$007DEC9C], eax
00687F5D   8905A0EC7D00           mov     [$007DECA0], eax
00687F63   668905A4EC7D00         mov     [$007DECA4], ax
00687F6A   33C0                   xor     eax, eax
00687F6C   55                     push    ebp
00687F6D   680A816800             push    $0068810A

***** TRY
|
00687F72   64FF30                 push    dword ptr fs:[eax]
00687F75   648920                 mov     fs:[eax], esp
00687F78   33C0                   xor     eax, eax
00687F7A   55                     push    ebp
00687F7B   68C1806800             push    $006880C1

***** TRY
|
00687F80   64FF30                 push    dword ptr fs:[eax]
00687F83   648920                 mov     fs:[eax], esp
00687F86   8D55F4                 lea     edx, [ebp-$0C]
00687F89   A188EC7D00             mov     eax, dword ptr [$007DEC88]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
00687F8E   E8D12DD8FF             call    0040AD64
00687F93   8B4DF4                 mov     ecx, [ebp-$0C]
00687F96   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'CODMESA = '
|
00687F99   BA48816800             mov     edx, $00688148

* Reference to: System.@LStrCat3;
|
00687F9E   E805D8D7FF             call    004057A8
00687FA3   8B45F8                 mov     eax, [ebp-$08]
00687FA6   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
00687FA7   685C816800             push    $0068815C
00687FAC   6A01                   push    $01
00687FAE   8B06                   mov     eax, [esi]
00687FB0   8B4068                 mov     eax, [eax+$68]
00687FB3   B96C816800             mov     ecx, $0068816C

* Possible String Reference to: 'MESAS'
|
00687FB8   BA78816800             mov     edx, $00688178

|
00687FBD   E8A6FA1100             call    007A7A68
00687FC2   84C0                   test    al, al
00687FC4   0F84ED000000           jz      006880B7

* Possible String Reference to: '(CODMESA =:CODMESA) AND ((FECHADO <
|                                > 'T') OR (FECHADO IS NULL))'
|
00687FCA   6888816800             push    $00688188

* Possible String Reference to: 'NUMLCTO'
|
00687FCF   68D0816800             push    $006881D0
00687FD4   6A01                   push    $01
00687FD6   8B06                   mov     eax, [esi]
00687FD8   8B4070                 mov     eax, [eax+$70]
00687FDB   B96C816800             mov     ecx, $0068816C

* Possible String Reference to: 'MESALCTO'
|
00687FE0   BAE0816800             mov     edx, $006881E0

|
00687FE5   E87EFA1100             call    007A7A68

* Possible String Reference to: '(CODMESA =:CODMESA) AND (NUMLCTO =:
|                                NUMLCTO)'
|
00687FEA   68F4816800             push    $006881F4

* Possible String Reference to: 'ITEM'
|
00687FEF   6828826800             push    $00688228
00687FF4   6A01                   push    $01
00687FF6   8B06                   mov     eax, [esi]
00687FF8   8B4074                 mov     eax, [eax+$74]
00687FFB   B96C816800             mov     ecx, $0068816C

* Possible String Reference to: 'MESAITEM'
|
00688000   BA38826800             mov     edx, $00688238

|
00688005   E85EFA1100             call    007A7A68
0068800A   8B06                   mov     eax, [esi]
0068800C   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.First(TDataSet);
|
0068800F   E81830E6FF             call    004EB02C
00688014   EB50                   jmp     00688066
00688016   8BC3                   mov     eax, ebx

* Possible String Reference to: 'STATUS'
|
00688018   BA4C826800             mov     edx, $0068824C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0068801D   E8E21BE6FF             call    004E9C04
00688022   8D55F0                 lea     edx, [ebp-$10]
00688025   8B08                   mov     ecx, [eax]
00688027   FF5160                 call    dword ptr [ecx+$60]
0068802A   8B45F0                 mov     eax, [ebp-$10]
0068802D   BA5C826800             mov     edx, $0068825C

* Reference to: System.@LStrCmp;
|
00688032   E871D8D7FF             call    004058A8
00688037   7423                   jz      0068805C
00688039   8B06                   mov     eax, [esi]
0068803B   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'VLRTOTAL'
|
0068803E   BA68826800             mov     edx, $00688268

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
00688043   E8BC1BE6FF             call    004E9C04
00688048   8B10                   mov     edx, [eax]
0068804A   FF5254                 call    dword ptr [edx+$54]
0068804D   DB2D9CEC7D00           fld     tbyte ptr [$007DEC9C]
00688053   DEC1                   faddp   st(1), st(0)
00688055   DB3D9CEC7D00           fstp    tbyte ptr [$007DEC9C]
0068805B   9B                     wait
0068805C   8B06                   mov     eax, [esi]
0068805E   8B4074                 mov     eax, [eax+$74]

* Reference to: DB.TDataSet.Next(TDataSet);
|
00688061   E8DE32E6FF             call    004EB344
00688066   8B06                   mov     eax, [esi]
00688068   8B5874                 mov     ebx, [eax+$74]
0068806B   80BBA100000000         cmp     byte ptr [ebx+$00A1], $00
00688072   74A2                   jz      00688016
00688074   668B05A4EC7D00         mov     ax, word ptr [$007DECA4]
0068807B   50                     push    eax
0068807C   FF35A0EC7D00           push    dword ptr [$007DECA0]
00688082   FF359CEC7D00           push    dword ptr [$007DEC9C]
00688088   8D55E8                 lea     edx, [ebp-$18]

* Possible String Reference to: '###,###,##0.00'
|
0068808B   B87C826800             mov     eax, $0068827C

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
00688090   E8A754D8FF             call    0040D53C
00688095   8B4DE8                 mov     ecx, [ebp-$18]
00688098   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'Valor total: $ '
|
0068809B   BA94826800             mov     edx, $00688294

* Reference to: System.@LStrCat3;
|
006880A0   E803D7D7FF             call    004057A8
006880A5   8B55EC                 mov     edx, [ebp-$14]
006880A8   8B8750030000           mov     eax, [edi+$0350]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
006880AE   E849B6E0FF             call    004936FC
006880B3   C645FF01               mov     byte ptr [ebp-$01], $01
006880B7   33C0                   xor     eax, eax
006880B9   5A                     pop     edx
006880BA   59                     pop     ecx
006880BB   59                     pop     ecx
006880BC   648910                 mov     fs:[eax], edx
006880BF   EB3B                   jmp     006880FC

* Reference to: System.@HandleOnException;
|
006880C1   E9EACAD7FF             jmp     00404BB0
006880C6   0100                   add     [eax], eax
006880C8   0000                   add     [eax], al
006880CA   40                     inc     eax
006880CB   95                     xchg    eax, ebp
006880CC   40                     inc     eax
006880CD   00D2                   add     dl, dl
006880CF   80680089               sub     byte ptr [eax+$00], $89
006880D3   C3                     ret

006880D4   6A00                   push    $00
006880D6   8B4B04                 mov     ecx, [ebx+$04]
006880D9   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'Ocorreu um erro ao executar a funÁ„
|                                o AbreMesaItem.'
|
006880DC   BAAC826800             mov     edx, $006882AC

* Reference to: System.@LStrCat3;
|
006880E1   E8C2D6D7FF             call    004057A8
006880E6   8B45E4                 mov     eax, [ebp-$1C]
006880E9   668B0DE4826800         mov     cx, word ptr [$006882E4]
006880F0   B201                   mov     dl, $01

|
006880F2   E835BADBFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006880F7   E8B4CDD7FF             call    00404EB0

****** END
|
006880FC   33C0                   xor     eax, eax
006880FE   5A                     pop     edx
006880FF   59                     pop     ecx
00688100   59                     pop     ecx
00688101   648910                 mov     fs:[eax], edx

****** FINALLY
|
00688104   6811816800             push    $00688111
00688109   C3                     ret


* Reference to: System.@HandleFinally;
|
0068810A   E929CCD7FF             jmp     00404D38
0068810F   EBF8                   jmp     00688109

****** END
|
00688111   33C0                   xor     eax, eax
00688113   5A                     pop     edx
00688114   59                     pop     ecx
00688115   59                     pop     ecx
00688116   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
00688119   6833816800             push    $00688133
0068811E   8D45E4                 lea     eax, [ebp-$1C]
00688121   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688126   E895D3D7FF             call    004054C0
0068812B   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068812C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0068812C   E907CCD7FF             jmp     00404D38

|
00688131   EBEB                   jmp     0068811E
00688133   8A45FF                 mov     al, byte ptr [ebp-$01]
00688136   5F                     pop     edi
00688137   5E                     pop     esi
00688138   5B                     pop     ebx
00688139   8BE5                   mov     esp, ebp
0068813B   5D                     pop     ebp
0068813C   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_006881C3(Sender : TObject);
begin
(*
006881C3   4C                     dec     esp
006881C4   4C                     dec     esp
006881C5   2929                   sub     dword ptr [ecx], ebp
006881C7   00FF                   add     bh, bh
006881C9   FFFF                   DB  $FF, $FF  //      
006881CB   FF07                   inc     dword ptr [edi]
006881CD   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006881D2(Sender : TObject);
begin
(*
006881D2   4D                     dec     ebp
006881D3   4C                     dec     esp
006881D4   43                     inc     ebx
006881D5   54                     push    esp
006881D6   4F                     dec     edi
006881D7   00FF                   add     bh, bh
006881D9   FFFF                   DB  $FF, $FF  //      
006881DB   FF08                   dec     dword ptr [eax]
006881DD   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068820F(Sender : TObject);
begin
(*
0068820F   4D                     dec     ebp
00688210   4C                     dec     esp
00688211   43                     inc     ebx
00688212   54                     push    esp
00688213   4F                     dec     edi
00688214   203D3A4E554D           and     [$4D554E3A], bh
0068821A   4C                     dec     esp
0068821B   43                     inc     ebx
0068821C   54                     push    esp
0068821D   4F                     dec     edi
0068821E   2900                   sub     dword ptr [eax], eax
00688220   FFFF                   DB  $FF, $FF  //      
00688222   FFFF                   DB  $FF, $FF  //      
00688224   0400                   add     al, +$00
00688226   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_00688251(Sender : TObject);
begin
(*
00688251   53                     push    ebx
00688252   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006882E9(Sender : TObject);
begin
(*
006882E9   8BEC                   mov     ebp, esp
006882EB   B917000000             mov     ecx, $00000017
006882F0   6A00                   push    $00
006882F2   6A00                   push    $00
006882F4   49                     dec     ecx
006882F5   75F9                   jnz     006882F0
006882F7   51                     push    ecx
006882F8   53                     push    ebx
006882F9   56                     push    esi
006882FA   57                     push    edi
006882FB   8BF0                   mov     esi, eax
006882FD   33C0                   xor     eax, eax
006882FF   55                     push    ebp

* Possible String Reference to: 'È•√◊ˇÎìäEˇ_^[ãÂ]√'
|
00688300   688E896800             push    $0068898E

***** TRY
|
00688305   64FF30                 push    dword ptr fs:[eax]
00688308   648920                 mov     fs:[eax], esp
0068830B   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
00688310   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
00688312   BAA8896800             mov     edx, $006889A8

* Reference to: System.@LStrCmp;
|
00688317   E88CD5D7FF             call    004058A8
0068831C   7505                   jnz     00688323

|
0068831E   E86D100200             call    006A9390
00688323   C645FF00               mov     byte ptr [ebp-$01], $00
00688327   33C9                   xor     ecx, ecx
00688329   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0068832B   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
00688330   E8E3F01200             call    007B7418
00688335   8945CC                 mov     [ebp-$34], eax
00688338   33C9                   xor     ecx, ecx
0068833A   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0068833C   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
00688341   E8D2F01200             call    007B7418
00688346   8945BC                 mov     [ebp-$44], eax
00688349   33D2                   xor     edx, edx
0068834B   55                     push    ebp
0068834C   6814896800             push    $00688914

***** TRY
|
00688351   64FF32                 push    dword ptr fs:[edx]
00688354   648922                 mov     fs:[edx], esp
00688357   33D2                   xor     edx, edx
00688359   55                     push    ebp
0068835A   6886886800             push    $00688886

***** TRY
|
0068835F   64FF32                 push    dword ptr fs:[edx]
00688362   648922                 mov     fs:[edx], esp
00688365   6A01                   push    $01
00688367   8D45D0                 lea     eax, [ebp-$30]
0068836A   50                     push    eax
0068836B   8D55B0                 lea     edx, [ebp-$50]
0068836E   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00688373   8B00                   mov     eax, [eax]
00688375   8B80B4050000           mov     eax, [eax+$05B4]
0068837B   8B08                   mov     ecx, [eax]
0068837D   FF5160                 call    dword ptr [ecx+$60]
00688380   8B45B0                 mov     eax, [ebp-$50]
00688383   8945B4                 mov     [ebp-$4C], eax
00688386   8D55AC                 lea     edx, [ebp-$54]
00688389   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0068838E   8B00                   mov     eax, [eax]
00688390   8B80B8050000           mov     eax, [eax+$05B8]
00688396   8B08                   mov     ecx, [eax]
00688398   FF5160                 call    dword ptr [ecx+$60]
0068839B   8B45AC                 mov     eax, [ebp-$54]
0068839E   8945B8                 mov     [ebp-$48], eax
006883A1   8D45B4                 lea     eax, [ebp-$4C]
006883A4   50                     push    eax

* Possible String Reference to: 'CODMESA'
|
006883A5   B8B8896800             mov     eax, $006889B8
006883AA   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'NUMLCTO'
|
006883AD   B8C8896800             mov     eax, $006889C8
006883B2   8945A8                 mov     [ebp-$58], eax
006883B5   8D45A4                 lea     eax, [ebp-$5C]
006883B8   BA01000000             mov     edx, $00000001
006883BD   59                     pop     ecx

|
006883BE   E8FD7A1200             call    007AFEC0
006883C3   8D45A0                 lea     eax, [ebp-$60]
006883C6   50                     push    eax

* Possible String Reference to: '(STATUS <> '
|
006883C7   68D8896800             push    $006889D8
006883CC   8D5598                 lea     edx, [ebp-$68]
006883CF   B8EC896800             mov     eax, $006889EC

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006883D4   E847B71100             call    007A3B20
006883D9   FF7598                 push    dword ptr [ebp-$68]
006883DC   68F8896800             push    $006889F8
006883E1   8D459C                 lea     eax, [ebp-$64]
006883E4   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
006883E9   E82ED4D7FF             call    0040581C
006883EE   8B559C                 mov     edx, [ebp-$64]

* Possible String Reference to: 'AND'
|
006883F1   B9048A6800             mov     ecx, $00688A04
006883F6   8B45D0                 mov     eax, [ebp-$30]

* Reference to : TFrmInfoAtu._PROC_007AFE20()
|
006883F9   E8227A1200             call    007AFE20
006883FE   8B55A0                 mov     edx, [ebp-$60]
00688401   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
00688404   E82BD1D7FF             call    00405534
00688409   8D4594                 lea     eax, [ebp-$6C]
0068840C   50                     push    eax

* Possible String Reference to: '((IMPRESSO <> '
|
0068840D   68108A6800             push    $00688A10
00688412   8D558C                 lea     edx, [ebp-$74]
00688415   B8288A6800             mov     eax, $00688A28

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0068841A   E801B71100             call    007A3B20
0068841F   FF758C                 push    dword ptr [ebp-$74]

* Possible String Reference to: ') OR (IMPRESSO IS NULL))'
|
00688422   68348A6800             push    $00688A34
00688427   8D4590                 lea     eax, [ebp-$70]
0068842A   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0068842F   E8E8D3D7FF             call    0040581C
00688434   8B5590                 mov     edx, [ebp-$70]

* Possible String Reference to: 'AND'
|
00688437   B9048A6800             mov     ecx, $00688A04
0068843C   8B45D0                 mov     eax, [ebp-$30]

* Reference to : TFrmInfoAtu._PROC_007AFE20()
|
0068843F   E8DC791200             call    007AFE20
00688444   8B5594                 mov     edx, [ebp-$6C]
00688447   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
0068844A   E8E5D0D7FF             call    00405534
0068844F   8B45D0                 mov     eax, [ebp-$30]
00688452   50                     push    eax

* Possible String Reference to: 'CODIMPR'
|
00688453   68588A6800             push    $00688A58

* Possible String Reference to: 'CODMESA'
|
00688458   B8B8896800             mov     eax, $006889B8
0068845D   894580                 mov     [ebp-$80], eax

* Possible String Reference to: 'NUMLCTO'
|
00688460   B8C8896800             mov     eax, $006889C8
00688465   894584                 mov     [ebp-$7C], eax

* Possible String Reference to: 'ITEM'
|
00688468   B8688A6800             mov     eax, $00688A68
0068846D   894588                 mov     [ebp-$78], eax
00688470   8D4580                 lea     eax, [ebp-$80]
00688473   50                     push    eax
00688474   6A02                   push    $02
00688476   6A01                   push    $01
00688478   33C0                   xor     eax, eax

|
0068847A   E84DFF1100             call    007A83CC
0068847F   8BD0                   mov     edx, eax

* Possible String Reference to: 'MESAITEM'
|
00688481   B9788A6800             mov     ecx, $00688A78
00688486   8B45CC                 mov     eax, [ebp-$34]

* Reference to : tArrayTable._PROC_007B8E10()
|
00688489   E882091300             call    007B8E10
0068848E   84C0                   test    al, al
00688490   0F84E6030000           jz      0068887C
00688496   8B45CC                 mov     eax, [ebp-$34]

* Reference to : tArrayTable._PROC_007B8B80()
|
00688499   E8E2061300             call    007B8B80
0068849E   85C0                   test    eax, eax
006884A0   0F8ED2030000           jle     00688878
006884A6   C745D428000000         mov     dword ptr [ebp-$2C], $00000028
006884AD   8B45CC                 mov     eax, [ebp-$34]

|
006884B0   E8EBFE1200             call    007B83A0

* Possible String Reference to: 'CodImpr'
|
006884B5   BA8C8A6800             mov     edx, $00688A8C
006884BA   8B45CC                 mov     eax, [ebp-$34]

|
006884BD   E872F71200             call    007B7C34
006884C2   8945C4                 mov     [ebp-$3C], eax
006884C5   C645C300               mov     byte ptr [ebp-$3D], $00
006884C9   E9A5020000             jmp     00688773
006884CE   8D4DF8                 lea     ecx, [ebp-$08]

* Possible String Reference to: 'CODPROD'
|
006884D1   BA9C8A6800             mov     edx, $00688A9C
006884D6   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006884D9   E85AF81200             call    007B7D38
006884DE   8D4DF4                 lea     ecx, [ebp-$0C]

* Possible String Reference to: 'DESCRPROD'
|
006884E1   BAAC8A6800             mov     edx, $00688AAC
006884E6   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006884E9   E84AF81200             call    007B7D38
006884EE   8D4DF0                 lea     ecx, [ebp-$10]

* Possible String Reference to: 'CodFunc'
|
006884F1   BAC08A6800             mov     edx, $00688AC0
006884F6   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006884F9   E83AF81200             call    007B7D38
006884FE   8D4DEC                 lea     ecx, [ebp-$14]

* Possible String Reference to: 'Historico'
|
00688501   BAD08A6800             mov     edx, $00688AD0
00688506   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00688509   E82AF81200             call    007B7D38
0068850E   8D4DE8                 lea     ecx, [ebp-$18]

* Possible String Reference to: 'Viagem'
|
00688511   BAE48A6800             mov     edx, $00688AE4
00688516   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00688519   E81AF81200             call    007B7D38

* Possible String Reference to: 'QTDELCTO'
|
0068851E   BAF48A6800             mov     edx, $00688AF4
00688523   8B45CC                 mov     eax, [ebp-$34]

|
00688526   E8FDF51200             call    007B7B28
0068852B   DB7DD8                 fstp    tbyte ptr [ebp-$28]
0068852E   9B                     wait

* Possible String Reference to: 'CodImpr'
|
0068852F   BA8C8A6800             mov     edx, $00688A8C
00688534   8B45CC                 mov     eax, [ebp-$34]

|
00688537   E8F8F61200             call    007B7C34
0068853C   8945C8                 mov     [ebp-$38], eax
0068853F   8D8D7CFFFFFF           lea     ecx, [ebp+$FFFFFF7C]

* Possible String Reference to: 'Kit'
|
00688545   BA088B6800             mov     edx, $00688B08
0068854A   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0068854D   E8E6F71200             call    007B7D38
00688552   8B857CFFFFFF           mov     eax, [ebp+$FFFFFF7C]
00688558   BA148B6800             mov     edx, $00688B14

* Reference to: System.@LStrCmp;
|
0068855D   E846D3D7FF             call    004058A8
00688562   0F94C3                 setz    bl
00688565   8D8D78FFFFFF           lea     ecx, [ebp+$FFFFFF78]

* Possible String Reference to: 'Montado'
|
0068856B   BA208B6800             mov     edx, $00688B20
00688570   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00688573   E8C0F71200             call    007B7D38
00688578   8B8578FFFFFF           mov     eax, [ebp+$FFFFFF78]
0068857E   BA148B6800             mov     edx, $00688B14

* Reference to: System.@LStrCmp;
|
00688583   E820D3D7FF             call    004058A8
00688588   0F858E010000           jnz     0068871C
0068858E   6A00                   push    $00
00688590   8D45D0                 lea     eax, [ebp-$30]
00688593   50                     push    eax
00688594   8B45F8                 mov     eax, [ebp-$08]
00688597   898574FFFFFF           mov     [ebp+$FFFFFF74], eax
0068859D   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]
006885A3   50                     push    eax

* Possible String Reference to: 'CODPROD'
|
006885A4   B89C8A6800             mov     eax, $00688A9C
006885A9   898570FFFFFF           mov     [ebp+$FFFFFF70], eax
006885AF   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]
006885B5   33D2                   xor     edx, edx
006885B7   59                     pop     ecx

|
006885B8   E803791200             call    007AFEC0
006885BD   8B45D0                 mov     eax, [ebp-$30]
006885C0   50                     push    eax

* Possible String Reference to: 'CODPROD'
|
006885C1   689C8A6800             push    $00688A9C

* Possible String Reference to: 'CODPROD'
|
006885C6   B89C8A6800             mov     eax, $00688A9C
006885CB   8945B4                 mov     [ebp-$4C], eax

* Possible String Reference to: 'CODMATPRIMA'
|
006885CE   B8308B6800             mov     eax, $00688B30
006885D3   8945B8                 mov     [ebp-$48], eax
006885D6   8D45B4                 lea     eax, [ebp-$4C]
006885D9   50                     push    eax
006885DA   6A01                   push    $01
006885DC   6A01                   push    $01
006885DE   33C0                   xor     eax, eax

|
006885E0   E8E7FD1100             call    007A83CC
006885E5   8BD0                   mov     edx, eax

* Possible String Reference to: 'PRODITEM'
|
006885E7   B9448B6800             mov     ecx, $00688B44
006885EC   8B45BC                 mov     eax, [ebp-$44]

* Reference to : tArrayTable._PROC_007B8E10()
|
006885EF   E81C081300             call    007B8E10
006885F4   84C0                   test    al, al
006885F6   0F846F010000           jz      0068876B
006885FC   8B45BC                 mov     eax, [ebp-$44]

* Reference to : tArrayTable._PROC_007B8B80()
|
006885FF   E87C051300             call    007B8B80
00688604   85C0                   test    eax, eax
00688606   0F8EBF000000           jle     006886CB
0068860C   8B45BC                 mov     eax, [ebp-$44]

|
0068860F   E88CFD1200             call    007B83A0
00688614   E99D000000             jmp     006886B6
00688619   8D4DF8                 lea     ecx, [ebp-$08]

* Possible String Reference to: 'CODMATPRIMA'
|
0068861C   BA308B6800             mov     edx, $00688B30
00688621   8B45BC                 mov     eax, [ebp-$44]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00688624   E80FF71200             call    007B7D38
00688629   8B45F8                 mov     eax, [ebp-$08]

|
0068862C   E8FFBE1200             call    007B4530
00688631   8945C8                 mov     [ebp-$38], eax
00688634   8D55F4                 lea     edx, [ebp-$0C]
00688637   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0068863C   8B00                   mov     eax, [eax]
0068863E   8B8014060000           mov     eax, [eax+$0614]
00688644   8B08                   mov     ecx, [eax]
00688646   FF5160                 call    dword ptr [ecx+$60]

* Possible String Reference to: 'QTDE'
|
00688649   BA588B6800             mov     edx, $00688B58
0068864E   8B45BC                 mov     eax, [ebp-$44]

|
00688651   E8D2F41200             call    007B7B28
00688656   DB6DD8                 fld     tbyte ptr [ebp-$28]
00688659   DEC9                   fmulp   st(1), st(0)
0068865B   DB7DD8                 fstp    tbyte ptr [ebp-$28]
0068865E   9B                     wait
0068865F   8B45F0                 mov     eax, [ebp-$10]
00688662   50                     push    eax
00688663   8B45E8                 mov     eax, [ebp-$18]
00688666   50                     push    eax
00688667   8B45EC                 mov     eax, [ebp-$14]
0068866A   50                     push    eax
0068866B   8D45C4                 lea     eax, [ebp-$3C]
0068866E   50                     push    eax
0068866F   8D45C8                 lea     eax, [ebp-$38]
00688672   50                     push    eax
00688673   8D45D4                 lea     eax, [ebp-$2C]
00688676   50                     push    eax
00688677   8D45C3                 lea     eax, [ebp-$3D]
0068867A   50                     push    eax
0068867B   668B45E0               mov     ax, word ptr [ebp-$20]
0068867F   50                     push    eax
00688680   FF75DC                 push    dword ptr [ebp-$24]
00688683   FF75D8                 push    dword ptr [ebp-$28]
00688686   53                     push    ebx
00688687   8D8D6CFFFFFF           lea     ecx, [ebp+$FFFFFF6C]

* Possible String Reference to: 'CODPROD'
|
0068868D   BA9C8A6800             mov     edx, $00688A9C
00688692   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00688695   E89EF61200             call    007B7D38
0068869A   8B856CFFFFFF           mov     eax, [ebp+$FFFFFF6C]
006886A0   50                     push    eax
006886A1   8B4DF4                 mov     ecx, [ebp-$0C]
006886A4   8B55F8                 mov     edx, [ebp-$08]
006886A7   8BC6                   mov     eax, esi

|
006886A9   E8A2190000             call    0068A050
006886AE   8B45BC                 mov     eax, [ebp-$44]

|
006886B1   E83E001300             call    007B86F4
006886B6   8B45BC                 mov     eax, [ebp-$44]

|
006886B9   E87AF11200             call    007B7838
006886BE   84C0                   test    al, al
006886C0   0F8453FFFFFF           jz      00688619
006886C6   E9A0000000             jmp     0068876B
006886CB   8B45F0                 mov     eax, [ebp-$10]
006886CE   50                     push    eax
006886CF   8B45E8                 mov     eax, [ebp-$18]
006886D2   50                     push    eax
006886D3   8B45EC                 mov     eax, [ebp-$14]
006886D6   50                     push    eax
006886D7   8D45C4                 lea     eax, [ebp-$3C]
006886DA   50                     push    eax
006886DB   8D45C8                 lea     eax, [ebp-$38]
006886DE   50                     push    eax
006886DF   8D45D4                 lea     eax, [ebp-$2C]
006886E2   50                     push    eax
006886E3   8D45C3                 lea     eax, [ebp-$3D]
006886E6   50                     push    eax
006886E7   668B45E0               mov     ax, word ptr [ebp-$20]
006886EB   50                     push    eax
006886EC   FF75DC                 push    dword ptr [ebp-$24]
006886EF   FF75D8                 push    dword ptr [ebp-$28]
006886F2   53                     push    ebx
006886F3   8D8D68FFFFFF           lea     ecx, [ebp+$FFFFFF68]

* Possible String Reference to: 'CODPROD'
|
006886F9   BA9C8A6800             mov     edx, $00688A9C
006886FE   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00688701   E832F61200             call    007B7D38
00688706   8B8568FFFFFF           mov     eax, [ebp+$FFFFFF68]
0068870C   50                     push    eax
0068870D   8B4DF4                 mov     ecx, [ebp-$0C]
00688710   8B55F8                 mov     edx, [ebp-$08]
00688713   8BC6                   mov     eax, esi

|
00688715   E836190000             call    0068A050
0068871A   EB4F                   jmp     0068876B
0068871C   8B45F0                 mov     eax, [ebp-$10]
0068871F   50                     push    eax
00688720   8B45E8                 mov     eax, [ebp-$18]
00688723   50                     push    eax
00688724   8B45EC                 mov     eax, [ebp-$14]
00688727   50                     push    eax
00688728   8D45C4                 lea     eax, [ebp-$3C]
0068872B   50                     push    eax
0068872C   8D45C8                 lea     eax, [ebp-$38]
0068872F   50                     push    eax
00688730   8D45D4                 lea     eax, [ebp-$2C]
00688733   50                     push    eax
00688734   8D45C3                 lea     eax, [ebp-$3D]
00688737   50                     push    eax
00688738   668B45E0               mov     ax, word ptr [ebp-$20]
0068873C   50                     push    eax
0068873D   FF75DC                 push    dword ptr [ebp-$24]
00688740   FF75D8                 push    dword ptr [ebp-$28]
00688743   53                     push    ebx
00688744   8D8D64FFFFFF           lea     ecx, [ebp+$FFFFFF64]

* Possible String Reference to: 'CODPROD'
|
0068874A   BA9C8A6800             mov     edx, $00688A9C
0068874F   8B45CC                 mov     eax, [ebp-$34]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00688752   E8E1F51200             call    007B7D38
00688757   8B8564FFFFFF           mov     eax, [ebp+$FFFFFF64]
0068875D   50                     push    eax
0068875E   8B4DF4                 mov     ecx, [ebp-$0C]
00688761   8B55F8                 mov     edx, [ebp-$08]
00688764   8BC6                   mov     eax, esi

|
00688766   E8E5180000             call    0068A050
0068876B   8B45CC                 mov     eax, [ebp-$34]

|
0068876E   E881FF1200             call    007B86F4
00688773   8B45CC                 mov     eax, [ebp-$34]

|
00688776   E8BDF01200             call    007B7838
0068877B   84C0                   test    al, al
0068877D   0F844BFDFFFF           jz      006884CE
00688783   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00688788   8B00                   mov     eax, [eax]
0068878A   8B406C                 mov     eax, [eax+$6C]
0068878D   8B10                   mov     edx, [eax]
0068878F   FF5258                 call    dword ptr [edx+$58]
00688792   8BD8                   mov     ebx, eax
00688794   85DB                   test    ebx, ebx
00688796   7E61                   jle     006887F9
00688798   8BC6                   mov     eax, esi

|
0068879A   E8C5200000             call    0068A864
0068879F   8BD0                   mov     edx, eax
006887A1   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]
006887A7   885001                 mov     [eax+$01], dl
006887AA   C60001                 mov     byte ptr [eax], $01
006887AD   8D955CFFFFFF           lea     edx, [ebp+$FFFFFF5C]
006887B3   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]

* Reference to: System.@PStrCpy(PShortString;PShortString);
|
006887B9   E8E6ABD7FF             call    004033A4
006887BE   BA608B6800             mov     edx, $00688B60
006887C3   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
006887C9   B102                   mov     cl, $02

* Reference to: System.@PStrNCat;
|
006887CB   E8A4ABD7FF             call    00403374
006887D0   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
006887D6   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Reference to: System.@LStrFromString(String;String;ShortString;ShortString);
|
006887DC   E81FCFD7FF             call    00405700
006887E1   8B9560FFFFFF           mov     edx, [ebp+$FFFFFF60]
006887E7   A178B47D00             mov     eax, dword ptr [$007DB478]
006887EC   8B00                   mov     eax, [eax]
006887EE   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
006887F1   E8DE20F1FF             call    0059A8D4
006887F6   4B                     dec     ebx
006887F7   759F                   jnz     00688798
006887F9   A178B47D00             mov     eax, dword ptr [$007DB478]
006887FE   8B00                   mov     eax, [eax]
00688800   8B4068                 mov     eax, [eax+$68]

|
00688803   E8D81FF1FF             call    0059A7E0
00688808   8B45CC                 mov     eax, [ebp-$34]

|
0068880B   E890FB1200             call    007B83A0
00688810   EB43                   jmp     00688855
00688812   B053                   mov     al, $53
00688814   88855DFFFFFF           mov     [ebp+$FFFFFF5D], al
0068881A   C6855CFFFFFF01         mov     byte ptr [ebp+$FFFFFF5C], $01
00688821   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
00688827   8D955CFFFFFF           lea     edx, [ebp+$FFFFFF5C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
0068882D   E8BE04D9FF             call    00418CF0
00688832   8D8D48FFFFFF           lea     ecx, [ebp+$FFFFFF48]

* Possible String Reference to: 'Impresso'
|
00688838   BA6C8B6800             mov     edx, $00688B6C
0068883D   8B45CC                 mov     eax, [ebp-$34]

* Reference to : tArrayTable._PROC_007B767C()
|
00688840   E837EE1200             call    007B767C
00688845   8B45CC                 mov     eax, [ebp-$34]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00688848   E88F151300             call    007B9DDC
0068884D   8B45CC                 mov     eax, [ebp-$34]

|
00688850   E89FFE1200             call    007B86F4
00688855   8B45CC                 mov     eax, [ebp-$34]

|
00688858   E8DBEF1200             call    007B7838
0068885D   84C0                   test    al, al
0068885F   74B1                   jz      00688812
00688861   33C0                   xor     eax, eax

|
00688863   E864FB1100             call    007A83CC
00688868   8BC8                   mov     ecx, eax
0068886A   8A15788B6800           mov     dl, byte ptr [$00688B78]
00688870   8B45CC                 mov     eax, [ebp-$34]

* Reference to : tArrayTable._PROC_007B91FC()
|
00688873   E884091300             call    007B91FC
00688878   C645FF01               mov     byte ptr [ebp-$01], $01
0068887C   33C0                   xor     eax, eax
0068887E   5A                     pop     edx
0068887F   59                     pop     ecx
00688880   59                     pop     ecx
00688881   648910                 mov     fs:[eax], edx
00688884   EB41                   jmp     006888C7

* Reference to: System.@HandleOnException;
|
00688886   E925C3D7FF             jmp     00404BB0
0068888B   0100                   add     [eax], eax
0068888D   0000                   add     [eax], al
0068888F   40                     inc     eax
00688890   95                     xchg    eax, ebp
00688891   40                     inc     eax
00688892   009788680089           add     [edi+$89006888], dl
00688898   C3                     ret

00688899   6A00                   push    $00
0068889B   8B4B04                 mov     ecx, [ebx+$04]
0068889E   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Possible String Reference to: 'Erro ao imprimir os itens!'
|
006888A4   BA848B6800             mov     edx, $00688B84

* Reference to: System.@LStrCat3;
|
006888A9   E8FACED7FF             call    004057A8
006888AE   8B8544FFFFFF           mov     eax, [ebp+$FFFFFF44]
006888B4   668B0DA48B6800         mov     cx, word ptr [$00688BA4]
006888BB   33D2                   xor     edx, edx

|
006888BD   E86AB2DBFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006888C2   E8E9C5D7FF             call    00404EB0

****** END
|
006888C7   33C0                   xor     eax, eax
006888C9   5A                     pop     edx
006888CA   59                     pop     ecx
006888CB   59                     pop     ecx
006888CC   648910                 mov     fs:[eax], edx

****** FINALLY
|
006888CF   681B896800             push    $0068891B
006888D4   8B45CC                 mov     eax, [ebp-$34]

* Reference to: System.TObject.Free(TObject);
|
006888D7   E8C0BCD7FF             call    0040459C
006888DC   8B45BC                 mov     eax, [ebp-$44]

* Reference to: System.TObject.Free(TObject);
|
006888DF   E8B8BCD7FF             call    0040459C
006888E4   A1E4A07D00             mov     eax, dword ptr [$007DA0E4]
006888E9   8B00                   mov     eax, [eax]

* Possible String Reference to: 'mp-20ci'
|
006888EB   BAA8896800             mov     edx, $006889A8

* Reference to: System.@LStrCmp;
|
006888F0   E8B3CFD7FF             call    004058A8
006888F5   751C                   jnz     00688913

|
006888F7   E898000200             call    006A8994
006888FC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00688901   8B00                   mov     eax, [eax]
00688903   8B8048020000           mov     eax, [eax+$0248]
00688909   8B10                   mov     edx, [eax]
0068890B   FF5258                 call    dword ptr [edx+$58]

|
0068890E   E8B9070200             call    006A90CC
00688913   C3                     ret


* Reference to: System.@HandleFinally;
|
00688914   E91FC4D7FF             jmp     00404D38
00688919   EBB9                   jmp     006888D4

****** END
|
0068891B   33C0                   xor     eax, eax
0068891D   5A                     pop     edx
0068891E   59                     pop     ecx
0068891F   59                     pop     ecx
00688920   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
00688923   6895896800             push    $00688995
00688928   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Reference to: System.@LStrClr(void;void);
|
0068892E   E869CBD7FF             call    0040549C
00688933   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00688939   E83ABCD8FF             call    00414578
0068893E   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
00688944   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688949   E872CBD7FF             call    004054C0
0068894E   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
00688954   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688959   E862CBD7FF             call    004054C0
0068895E   8D458C                 lea     eax, [ebp-$74]
00688961   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688966   E855CBD7FF             call    004054C0
0068896B   8D45AC                 lea     eax, [ebp-$54]
0068896E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688973   E848CBD7FF             call    004054C0
00688978   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
0068897B   E81CCBD7FF             call    0040549C
00688980   8D45E8                 lea     eax, [ebp-$18]
00688983   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688988   E833CBD7FF             call    004054C0
0068898D   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_00688914(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00688914   E91FC4D7FF             jmp     00404D38

|
00688919   EBB9                   jmp     006888D4
0068891B   33C0                   xor     eax, eax
0068891D   5A                     pop     edx
0068891E   59                     pop     ecx
0068891F   59                     pop     ecx
00688920   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
00688923   6895896800             push    $00688995
00688928   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Reference to: System.@LStrClr(void;void);
|
0068892E   E869CBD7FF             call    0040549C
00688933   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00688939   E83ABCD8FF             call    00414578
0068893E   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
00688944   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688949   E872CBD7FF             call    004054C0
0068894E   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
00688954   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688959   E862CBD7FF             call    004054C0
0068895E   8D458C                 lea     eax, [ebp-$74]
00688961   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688966   E855CBD7FF             call    004054C0
0068896B   8D45AC                 lea     eax, [ebp-$54]
0068896E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688973   E848CBD7FF             call    004054C0
00688978   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrClr(void;void);
|
0068897B   E81CCBD7FF             call    0040549C
00688980   8D45E8                 lea     eax, [ebp-$18]
00688983   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00688988   E833CBD7FF             call    004054C0
0068898D   C3                     ret


* Reference to: System.@HandleFinally;
|
0068898E   E9A5C3D7FF             jmp     00404D38
00688993   EB93                   jmp     00688928

****** END
|
00688995   8A45FF                 mov     al, byte ptr [ebp-$01]
00688998   5F                     pop     edi
00688999   5E                     pop     esi
0068899A   5B                     pop     ebx
0068899B   8BE5                   mov     esp, ebp
0068899D   5D                     pop     ebp
0068899E   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_006889CA(Sender : TObject);
begin
(*
006889CA   4D                     dec     ebp
006889CB   4C                     dec     esp
006889CC   43                     inc     ebx
006889CD   54                     push    esp
006889CE   4F                     dec     edi
006889CF   00FF                   add     bh, bh
006889D1   FFFF                   DB  $FF, $FF  //      
006889D3   FF0B                   dec     dword ptr [ebx]
006889D5   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006889DE(Sender : TObject);
begin
(*
006889DE   53                     push    ebx
006889DF   203C3E                 and     [esi+edi], bh
006889E2   2000                   and     [eax], al
006889E4   FFFF                   DB  $FF, $FF  //      
006889E6   FFFF                   DB  $FF, $FF  //      
006889E8   0100                   add     [eax], eax
006889EA   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_00688A48(Sender : TObject);
begin
(*
00688A48   4C                     dec     esp
00688A49   4C                     dec     esp
00688A4A   2929                   sub     dword ptr [ecx], ebp
00688A4C   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_00688BA9(Sender : TObject);
begin
(*
00688BA9   8BEC                   mov     ebp, esp
00688BAB   B906000000             mov     ecx, $00000006
00688BB0   6A00                   push    $00
00688BB2   6A00                   push    $00
00688BB4   49                     dec     ecx
00688BB5   75F9                   jnz     00688BB0
00688BB7   53                     push    ebx
00688BB8   8BD8                   mov     ebx, eax
00688BBA   33C0                   xor     eax, eax
00688BBC   55                     push    ebp

* Possible String Reference to: 'È’¿◊ˇÎÂ[ãÂ]√ã¿UãÏj'
|
00688BBD   685E8C6800             push    $00688C5E

***** TRY
|
00688BC2   64FF30                 push    dword ptr fs:[eax]
00688BC5   648920                 mov     fs:[eax], esp
00688BC8   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
00688BCA   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
00688BD0   E89B52E7FF             call    004FDE70
00688BD5   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.edDescrProd : TEdit
|
00688BD7   8B830C030000           mov     eax, [ebx+$030C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00688BDD   E81AABE0FF             call    004936FC
00688BE2   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.EdHistorico : TEdit
|
00688BE4   8B83B8030000           mov     eax, [ebx+$03B8]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00688BEA   E80DABE0FF             call    004936FC
00688BEF   8D45F0                 lea     eax, [ebp-$10]
00688BF2   33D2                   xor     edx, edx
00688BF4   B101                   mov     cl, $01

|
00688BF6   E875FED8FF             call    00418A70
00688BFB   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
00688BFE   8B8314030000           mov     eax, [ebx+$0314]

* Reference to : TJvValidateEdit._PROC_00653290()
|
00688C04   E887A6FCFF             call    00653290
00688C09   8D45E0                 lea     eax, [ebp-$20]
00688C0C   33D2                   xor     edx, edx
00688C0E   B101                   mov     cl, $01

|
00688C10   E85BFED8FF             call    00418A70
00688C15   8D55E0                 lea     edx, [ebp-$20]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00688C18   8B8318030000           mov     eax, [ebx+$0318]

* Reference to : TJvValidateEdit._PROC_00653290()
|
00688C1E   E86DA6FCFF             call    00653290
00688C23   8D45D0                 lea     eax, [ebp-$30]
00688C26   33D2                   xor     edx, edx
00688C28   B101                   mov     cl, $01

|
00688C2A   E841FED8FF             call    00418A70
00688C2F   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TfrmAdicionaProduto.edVlrTotal : TJvValidateEdit
|
00688C32   8B831C030000           mov     eax, [ebx+$031C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
00688C38   E853A6FCFF             call    00653290
00688C3D   33C0                   xor     eax, eax
00688C3F   5A                     pop     edx
00688C40   59                     pop     ecx
00688C41   59                     pop     ecx
00688C42   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√ã¿UãÏj'
|
00688C45   68658C6800             push    $00688C65
00688C4A   8D45D0                 lea     eax, [ebp-$30]

* Reference to object Variant
|
00688C4D   8B1524114000           mov     edx, [$00401124]
00688C53   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00688C58   E83FD4D7FF             call    0040609C
00688C5D   C3                     ret


* Reference to: System.@HandleFinally;
|
00688C5E   E9D5C0D7FF             jmp     00404D38
00688C63   EBE5                   jmp     00688C4A

****** END
|
00688C65   5B                     pop     ebx
00688C66   8BE5                   mov     esp, ebp
00688C68   5D                     pop     ebp
00688C69   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_00688F4D(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00688F4D   E9E6BDD7FF             jmp     00404D38

|
00688F52   EBE3                   jmp     00688F37
00688F54   5F                     pop     edi
00688F55   5E                     pop     esi
00688F56   5B                     pop     ebx
00688F57   8BE5                   mov     esp, ebp
00688F59   5D                     pop     ebp
00688F5A   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_006890C9(Sender : TObject);
begin
(*
006890C9   53                     push    ebx
006890CA   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_00689281(Sender : TObject);
begin
(*
00689281   6E                     outsb
00689282   696461646500FFFF       imul    esp, [ecx+$64], $FFFF0065
0068928A   FFFF                   DB  $FF, $FF  //      
0068928C   0400                   add     al, +$00
0068928E   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006892B1(Sender : TObject);
begin
(*
006892B1   4E                     dec     esi
006892B2   49                     dec     ecx
006892B3   44                     inc     esp
006892B4   4D                     dec     ebp
006892B5   45                     inc     ebp
006892B6   44                     inc     esp
006892B7   00FF                   add     bh, bh
006892B9   FFFF                   DB  $FF, $FF  //      
006892BB   FF0B                   dec     dword ptr [ebx]
006892BD   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006892C5(Sender : TObject);
begin
(*
006892C5   4E                     dec     esi
006892C6   49                     dec     ecx
006892C7   44                     inc     esp
006892C8   4D                     dec     ebp
006892C9   45                     inc     ebp
006892CA   44                     inc     esp
006892CB   00FF                   add     bh, bh
006892CD   FFFF                   DB  $FF, $FF  //      
006892CF   FF07                   inc     dword ptr [edi]
006892D1   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006892D8(Sender : TObject);
begin
(*
006892D8   4E                     dec     esi
006892D9   49                     dec     ecx
006892DA   54                     push    esp
006892DB   00FF                   add     bh, bh
006892DD   FFFF                   DB  $FF, $FF  //      
006892DF   FF08                   dec     dword ptr [eax]
006892E1   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006892E9(Sender : TObject);
begin
(*
006892E9   4E                     dec     esi
006892EA   49                     dec     ecx
006892EB   44                     inc     esp
006892EC   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_006892F9(Sender : TObject);
begin
(*
006892F9   6E                     outsb
006892FA   69644D656400558B       imul    esp, [ebp+ecx*2+$65], $8B550064
00689302   EC                     in      al, dx
00689303   B919000000             mov     ecx, $00000019
00689308   6A00                   push    $00
0068930A   6A00                   push    $00
0068930C   49                     dec     ecx
0068930D   75F9                   jnz     00689308
0068930F   53                     push    ebx
00689310   8BD8                   mov     ebx, eax
00689312   33C0                   xor     eax, eax
00689314   55                     push    ebp

* Possible String Reference to: 'ÈM∑◊ˇÎ∏[ãÂ]√'
|
00689315   68E6956800             push    $006895E6

***** TRY
|
0068931A   64FF30                 push    dword ptr fs:[eax]
0068931D   648920                 mov     fs:[eax], esp
00689320   8D55FC                 lea     edx, [ebp-$04]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
00689323   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00689329   E80E4CE7FF             call    004FDF3C
0068932E   837DFC00               cmp     dword ptr [ebp-$04], +$00
00689332   0F8426020000           jz      0068955E
00689338   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
0068933B   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
00689341   E8F64BE7FF             call    004FDF3C
00689346   8B45F8                 mov     eax, [ebp-$08]

|
00689349   E8DA751200             call    007B0928
0068934E   84C0                   test    al, al
00689350   0F84AC010000           jz      00689502
00689356   8D55F4                 lea     edx, [ebp-$0C]
00689359   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0068935E   8B00                   mov     eax, [eax]
00689360   8B800C060000           mov     eax, [eax+$060C]
00689366   8B08                   mov     ecx, [eax]
00689368   FF5160                 call    dword ptr [ecx+$60]
0068936B   8B55F4                 mov     edx, [ebp-$0C]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
0068936E   8B8310030000           mov     eax, [ebx+$0310]

* Reference to: Mask.TCustomMaskEdit.SetEditText(TCustomMaskEdit;AnsiString);
|
00689374   E8F74AE7FF             call    004FDE70
00689379   8D55F0                 lea     edx, [ebp-$10]
0068937C   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00689381   8B00                   mov     eax, [eax]
00689383   8B8014060000           mov     eax, [eax+$0614]
00689389   8B08                   mov     ecx, [eax]
0068938B   FF5160                 call    dword ptr [ecx+$60]
0068938E   8B55F0                 mov     edx, [ebp-$10]

* Reference to control TfrmAdicionaProduto.edDescrProd : TEdit
|
00689391   8B830C030000           mov     eax, [ebx+$030C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00689397   E860A3E0FF             call    004936FC
0068939C   A0F4956800             mov     al, byte ptr [$006895F4]
006893A1   50                     push    eax
006893A2   B054                   mov     al, $54
006893A4   8845DD                 mov     [ebp-$23], al
006893A7   C645DC01               mov     byte ptr [ebp-$24], $01
006893AB   8D45E0                 lea     eax, [ebp-$20]
006893AE   8D55DC                 lea     edx, [ebp-$24]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
006893B1   E83AF9D8FF             call    00418CF0
006893B6   8D4DE0                 lea     ecx, [ebp-$20]
006893B9   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006893BE   8B00                   mov     eax, [eax]
006893C0   8B8044070000           mov     eax, [eax+$0744]

* Possible String Reference to: 'Padrao'
|
006893C6   BA00966800             mov     edx, $00689600

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
006893CB   E828F01100             call    007A83F8
006893D0   84C0                   test    al, al
006893D2   7512                   jnz     006893E6
006893D4   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006893D9   8B00                   mov     eax, [eax]
006893DB   8B8044070000           mov     eax, [eax+$0744]

* Reference to: DB.TDataSet.First(TDataSet);
|
006893E1   E8461CE6FF             call    004EB02C
006893E6   8D55D8                 lea     edx, [ebp-$28]
006893E9   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006893EE   8B00                   mov     eax, [eax]
006893F0   8B8050070000           mov     eax, [eax+$0750]
006893F6   8B08                   mov     ecx, [eax]
006893F8   FF5160                 call    dword ptr [ecx+$60]
006893FB   8B55D8                 mov     edx, [ebp-$28]

* Reference to control TfrmAdicionaProduto.EdUnidMed : TJvComboEdit
|
006893FE   8B8364030000           mov     eax, [ebx+$0364]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
00689404   E8C74BE7FF             call    004FDFD0
00689409   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0068940E   8B00                   mov     eax, [eax]
00689410   8B80B8070000           mov     eax, [eax+$07B8]
00689416   8B10                   mov     edx, [eax]
00689418   FF5254                 call    dword ptr [edx+$54]
0068941B   8D45C8                 lea     eax, [ebp-$38]

* Reference to: Variants.@VarFromReal;
|
0068941E   E865F8D8FF             call    00418C88
00689423   8D55C8                 lea     edx, [ebp-$38]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689426   8B8318030000           mov     eax, [ebx+$0318]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0068942C   E85F9EFCFF             call    00653290
00689431   8D55B8                 lea     edx, [ebp-$48]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689434   8B8318030000           mov     eax, [ebx+$0318]

|
0068943A   E8799DFCFF             call    006531B8
0068943F   8D45B8                 lea     eax, [ebp-$48]
00689442   50                     push    eax
00689443   8D45A8                 lea     eax, [ebp-$58]
00689446   33D2                   xor     edx, edx
00689448   B101                   mov     cl, $01

|
0068944A   E821F6D8FF             call    00418A70
0068944F   8D55A8                 lea     edx, [ebp-$58]
00689452   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
00689453   E8AC3CD9FF             call    0041D104
00689458   752A                   jnz     00689484
0068945A   A1F0AD7D00             mov     eax, dword ptr [$007DADF0]
0068945F   668B5008               mov     dx, word ptr [eax+$08]
00689463   52                     push    edx
00689464   FF7004                 push    dword ptr [eax+$04]
00689467   FF30                   push    dword ptr [eax]

|
00689469   E8A6A31200             call    007B3814
0068946E   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarFromReal;
|
00689471   E812F8D8FF             call    00418C88
00689476   8D5598                 lea     edx, [ebp-$68]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689479   8B8318030000           mov     eax, [ebx+$0318]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0068947F   E80C9EFCFF             call    00653290
00689484   8D5588                 lea     edx, [ebp-$78]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
00689487   8B8314030000           mov     eax, [ebx+$0314]

|
0068948D   E8269DFCFF             call    006531B8
00689492   8D4588                 lea     eax, [ebp-$78]
00689495   50                     push    eax
00689496   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
0068949C   33D2                   xor     edx, edx
0068949E   B101                   mov     cl, $01

|
006894A0   E8CBF5D8FF             call    00418A70
006894A5   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
006894AB   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
006894AC   E8933CD9FF             call    0041D144
006894B1   0F8EE1000000           jle     00689598
006894B7   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
006894BD   8B8314030000           mov     eax, [ebx+$0314]

|
006894C3   E8F09CFCFF             call    006531B8
006894C8   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
006894CE   50                     push    eax
006894CF   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
006894D5   8B8318030000           mov     eax, [ebx+$0318]

|
006894DB   E8D89CFCFF             call    006531B8
006894E0   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
006894E6   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
006894E7   E8D03BD9FF             call    0041D0BC
006894EC   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]

* Reference to control TfrmAdicionaProduto.edVlrTotal : TJvValidateEdit
|
006894F2   8B831C030000           mov     eax, [ebx+$031C]

* Reference to : TJvValidateEdit._PROC_00653290()
|
006894F8   E8939DFCFF             call    00653290
006894FD   E996000000             jmp     00689598
00689502   6A00                   push    $00
00689504   668B0D08966800         mov     cx, word ptr [$00689608]
0068950B   33D2                   xor     edx, edx

* Possible String Reference to: 'Produto n„o localizado! Por favor v
|                                erifique!!!'
|
0068950D   B814966800             mov     eax, $00689614

|
00689512   E815A6DBFF             call    00443B2C
00689517   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.edDescrProd : TEdit
|
00689519   8B830C030000           mov     eax, [ebx+$030C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0068951F   E8D8A1E0FF             call    004936FC
00689524   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.EdUnidMed : TJvComboEdit
|
00689526   8B8364030000           mov     eax, [ebx+$0364]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
0068952C   E89F4AE7FF             call    004FDFD0
00689531   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
00689537   33D2                   xor     edx, edx
00689539   B101                   mov     cl, $01

|
0068953B   E830F5D8FF             call    00418A70
00689540   8D9548FFFFFF           lea     edx, [ebp+$FFFFFF48]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689546   8B8318030000           mov     eax, [ebx+$0318]

* Reference to : TJvValidateEdit._PROC_00653290()
|
0068954C   E83F9DFCFF             call    00653290

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
00689551   8B8310030000           mov     eax, [ebx+$0310]

|
00689557   E884CB1100             call    007A60E0
0068955C   EB3A                   jmp     00689598
0068955E   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.edDescrProd : TEdit
|
00689560   8B830C030000           mov     eax, [ebx+$030C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
00689566   E891A1E0FF             call    004936FC
0068956B   33D2                   xor     edx, edx

* Reference to control TfrmAdicionaProduto.EdUnidMed : TJvComboEdit
|
0068956D   8B8364030000           mov     eax, [ebx+$0364]

* Reference to: Mask.TCustomMaskEdit.SetText(TCustomMaskEdit;TMaskedText);
|
00689573   E8584AE7FF             call    004FDFD0
00689578   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]
0068957E   33D2                   xor     edx, edx
00689580   B101                   mov     cl, $01

|
00689582   E8E9F4D8FF             call    00418A70
00689587   8D9538FFFFFF           lea     edx, [ebp+$FFFFFF38]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
0068958D   8B8318030000           mov     eax, [ebx+$0318]

* Reference to : TJvValidateEdit._PROC_00653290()
|
00689593   E8F89CFCFF             call    00653290
00689598   33C0                   xor     eax, eax
0068959A   5A                     pop     edx
0068959B   59                     pop     ecx
0068959C   59                     pop     ecx
0068959D   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√'
|
006895A0   68ED956800             push    $006895ED
006895A5   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]

* Reference to object Variant
|
006895AB   8B1524114000           mov     edx, [$00401124]
006895B1   B90A000000             mov     ecx, $0000000A

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006895B6   E8E1CAD7FF             call    0040609C
006895BB   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrClr(void;void);
|
006895BE   E8D9BED7FF             call    0040549C
006895C3   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006895C6   E8ADAFD8FF             call    00414578
006895CB   8D45F0                 lea     eax, [ebp-$10]
006895CE   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006895D3   E8E8BED7FF             call    004054C0
006895D8   8D45F8                 lea     eax, [ebp-$08]
006895DB   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006895E0   E8DBBED7FF             call    004054C0
006895E5   C3                     ret


* Reference to: System.@HandleFinally;
|
006895E6   E94DB7D7FF             jmp     00404D38
006895EB   EBB8                   jmp     006895A5

****** END
|
006895ED   5B                     pop     ebx
006895EE   8BE5                   mov     esp, ebp
006895F0   5D                     pop     ebp
006895F1   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_006896BC(Sender : TObject);
begin
(*
006896BC   55                     push    ebp
006896BD   8BEC                   mov     ebp, esp
006896BF   B909000000             mov     ecx, $00000009
006896C4   6A00                   push    $00
006896C6   6A00                   push    $00
006896C8   49                     dec     ecx
006896C9   75F9                   jnz     006896C4
006896CB   53                     push    ebx
006896CC   56                     push    esi
006896CD   57                     push    edi
006896CE   8BD8                   mov     ebx, eax
006896D0   33C0                   xor     eax, eax
006896D2   55                     push    ebp

* Possible String Reference to: 'È!µ◊ˇÎ›äEˇ_^[ãÂ]√'
|
006896D3   6812986800             push    $00689812

***** TRY
|
006896D8   64FF30                 push    dword ptr fs:[eax]
006896DB   648920                 mov     fs:[eax], esp
006896DE   C645FF01               mov     byte ptr [ebp-$01], $01
006896E2   33C0                   xor     eax, eax
006896E4   55                     push    ebp
006896E5   68E2976800             push    $006897E2

***** TRY
|
006896EA   64FF30                 push    dword ptr fs:[eax]
006896ED   648920                 mov     fs:[eax], esp
006896F0   33C0                   xor     eax, eax
006896F2   55                     push    ebp
006896F3   6899976800             push    $00689799

***** TRY
|
006896F8   64FF30                 push    dword ptr fs:[eax]
006896FB   648920                 mov     fs:[eax], esp
006896FE   8D55EC                 lea     edx, [ebp-$14]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
00689701   8B8314030000           mov     eax, [ebx+$0314]

|
00689707   E8AC9AFCFF             call    006531B8
0068970C   8D45EC                 lea     eax, [ebp-$14]
0068970F   50                     push    eax
00689710   8D45DC                 lea     eax, [ebp-$24]
00689713   33D2                   xor     edx, edx
00689715   B101                   mov     cl, $01

|
00689717   E854F3D8FF             call    00418A70
0068971C   8D55DC                 lea     edx, [ebp-$24]
0068971F   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
00689720   E80F3AD9FF             call    0041D134
00689725   7F26                   jnle    0068974D
00689727   6A00                   push    $00
00689729   668B0D24986800         mov     cx, word ptr [$00689824]
00689730   33D2                   xor     edx, edx

* Possible String Reference to: 'Informe a quantidade a ser lanÁada!'
|
00689732   B830986800             mov     eax, $00689830

|
00689737   E8F0A3DBFF             call    00443B2C

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
0068973C   8B8314030000           mov     eax, [ebx+$0314]

|
00689742   E899C91100             call    007A60E0
00689747   C645FF00               mov     byte ptr [ebp-$01], $00
0068974B   EB42                   jmp     0068978F
0068974D   8D55CC                 lea     edx, [ebp-$34]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
00689750   8B8318030000           mov     eax, [ebx+$0318]

|
00689756   E85D9AFCFF             call    006531B8
0068975B   8D45CC                 lea     eax, [ebp-$34]
0068975E   50                     push    eax
0068975F   8D45BC                 lea     eax, [ebp-$44]
00689762   33D2                   xor     edx, edx
00689764   B101                   mov     cl, $01

|
00689766   E805F3D8FF             call    00418A70
0068976B   8D55BC                 lea     edx, [ebp-$44]
0068976E   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
0068976F   E8C039D9FF             call    0041D134
00689774   7F19                   jnle    0068978F
00689776   6A00                   push    $00
00689778   668B0D24986800         mov     cx, word ptr [$00689824]
0068977F   33D2                   xor     edx, edx

* Possible String Reference to: 'O valor unit·rio do produto n„o pod
|                                e estar zerado!'
|
00689781   B85C986800             mov     eax, $0068985C

|
00689786   E8A1A3DBFF             call    00443B2C
0068978B   C645FF00               mov     byte ptr [ebp-$01], $00
0068978F   33C0                   xor     eax, eax
00689791   5A                     pop     edx
00689792   59                     pop     ecx
00689793   59                     pop     ecx
00689794   648910                 mov     fs:[eax], edx
00689797   EB3B                   jmp     006897D4

* Reference to: System.@HandleOnException;
|
00689799   E912B4D7FF             jmp     00404BB0
0068979E   0100                   add     [eax], eax
006897A0   0000                   add     [eax], al
006897A2   40                     inc     eax
006897A3   95                     xchg    eax, ebp
006897A4   40                     inc     eax
006897A5   00AA97680089           add     [edx+$89006897], ch
006897AB   C3                     ret

006897AC   6A00                   push    $00

* Reference to field TfrmAdicionaProduto.Owner : TComponent
|
006897AE   8B4B04                 mov     ecx, [ebx+$04]
006897B1   8D45B8                 lea     eax, [ebp-$48]

* Possible String Reference to: 'Erro ao validar o produto!'
|
006897B4   BA98986800             mov     edx, $00689898

* Reference to: System.@LStrCat3;
|
006897B9   E8EABFD7FF             call    004057A8
006897BE   8B45B8                 mov     eax, [ebp-$48]
006897C1   668B0D24986800         mov     cx, word ptr [$00689824]
006897C8   B201                   mov     dl, $01

|
006897CA   E85DA3DBFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006897CF   E8DCB6D7FF             call    00404EB0

****** END
|
006897D4   33C0                   xor     eax, eax
006897D6   5A                     pop     edx
006897D7   59                     pop     ecx
006897D8   59                     pop     ecx
006897D9   648910                 mov     fs:[eax], edx

****** FINALLY
|
006897DC   68E9976800             push    $006897E9
006897E1   C3                     ret


* Reference to: System.@HandleFinally;
|
006897E2   E951B5D7FF             jmp     00404D38
006897E7   EBF8                   jmp     006897E1

****** END
|
006897E9   33C0                   xor     eax, eax
006897EB   5A                     pop     edx
006897EC   59                     pop     ecx
006897ED   59                     pop     ecx
006897EE   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
006897F1   6819986800             push    $00689819
006897F6   8D45B8                 lea     eax, [ebp-$48]

* Reference to: System.@LStrClr(void;void);
|
006897F9   E89EBCD7FF             call    0040549C
006897FE   8D45BC                 lea     eax, [ebp-$44]

* Reference to object Variant
|
00689801   8B1524114000           mov     edx, [$00401124]
00689807   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0068980C   E88BC8D7FF             call    0040609C
00689811   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_00689812(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00689812   E921B5D7FF             jmp     00404D38

|
00689817   EBDD                   jmp     006897F6
00689819   8A45FF                 mov     al, byte ptr [ebp-$01]
0068981C   5F                     pop     edi
0068981D   5E                     pop     esi
0068981E   5B                     pop     ebx
0068981F   8BE5                   mov     esp, ebp
00689821   5D                     pop     ebp
00689822   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_00689823(Sender : TObject);
begin
(*
00689823   000400                 add     [eax+eax], al
00689826   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_00689C75(Sender : TObject);
begin
(*
00689C75   4E                     dec     esi
00689C76   43                     inc     ebx
00689C77   00FF                   add     bh, bh
00689C79   FFFF                   DB  $FF, $FF  //      
00689C7B   FF0400                 inc     dword ptr [eax+eax]
00689C7E   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_00689CA6(Sender : TObject);
begin
(*
00689CA6   4E                     dec     esi
00689CA7   43                     inc     ebx
00689CA8   52                     push    edx
00689CA9   45                     inc     ebp
00689CAA   50                     push    eax
00689CAB   52                     push    edx
00689CAC   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_00689FD1(Sender : TObject);
begin
(*
00689FD1   4D                     dec     ebp
00689FD2   4C                     dec     esp
00689FD3   43                     inc     ebx
00689FD4   54                     push    esp
00689FD5   4F                     dec     edi
00689FD6   203D20000000           and     [$00000020], bh
00689FDC   FFFF                   DB  $FF, $FF  //      
00689FDE   FFFF                   DB  $FF, $FF  //      
00689FE0   0100                   add     [eax], eax
00689FE2   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_00689FF2(Sender : TObject);
begin
(*
00689FF2   4D                     dec     ebp
00689FF3   50                     push    eax
00689FF4   45                     inc     ebp
00689FF5   53                     push    ebx
00689FF6   53                     push    ebx
00689FF7   4F                     dec     edi
00689FF8   41                     inc     ecx
00689FF9   53                     push    ebx
00689FFA   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068A051(Sender : TObject);
begin
(*
0068A051   8BEC                   mov     ebp, esp
0068A053   51                     push    ecx
0068A054   B91A000000             mov     ecx, $0000001A
0068A059   6A00                   push    $00
0068A05B   6A00                   push    $00
0068A05D   49                     dec     ecx
0068A05E   75F9                   jnz     0068A059
0068A060   874DFC                 xchg    [ebp-$04], ecx
0068A063   53                     push    ebx
0068A064   56                     push    esi
0068A065   57                     push    edi
0068A066   894DFC                 mov     [ebp-$04], ecx
0068A069   8BF0                   mov     esi, eax
0068A06B   8B7D20                 mov     edi, [ebp+$20]
0068A06E   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0068A071   E8D6B8D7FF             call    0040594C
0068A076   8B4534                 mov     eax, [ebp+$34]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0068A079   E8CEB8D7FF             call    0040594C
0068A07E   8B4530                 mov     eax, [ebp+$30]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0068A081   E8C6B8D7FF             call    0040594C
0068A086   8B452C                 mov     eax, [ebp+$2C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0068A089   E8BEB8D7FF             call    0040594C
0068A08E   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0068A091   E8B6B8D7FF             call    0040594C
0068A096   33C0                   xor     eax, eax
0068A098   55                     push    ebp

* Possible String Reference to: 'È(¶◊ˇÎÜäE˚_^[ãÂ]¬0'
|
0068A099   680BA76800             push    $0068A70B

***** TRY
|
0068A09E   64FF30                 push    dword ptr fs:[eax]
0068A0A1   648920                 mov     fs:[eax], esp
0068A0A4   C645FB00               mov     byte ptr [ebp-$05], $00
0068A0A8   33D2                   xor     edx, edx
0068A0AA   55                     push    ebp
0068A0AB   6884A66800             push    $0068A684

***** TRY
|
0068A0B0   64FF32                 push    dword ptr fs:[edx]
0068A0B3   648922                 mov     fs:[edx], esp
0068A0B6   33D2                   xor     edx, edx
0068A0B8   55                     push    ebp
0068A0B9   6835A66800             push    $0068A635

***** TRY
|
0068A0BE   64FF32                 push    dword ptr fs:[edx]
0068A0C1   648922                 mov     fs:[edx], esp
0068A0C4   8B4528                 mov     eax, [ebp+$28]
0068A0C7   8B00                   mov     eax, [eax]
0068A0C9   8B5524                 mov     edx, [ebp+$24]
0068A0CC   3B02                   cmp     eax, [edx]
0068A0CE   0F8480000000           jz      0068A154
0068A0D4   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0068A0D9   8B00                   mov     eax, [eax]
0068A0DB   8B406C                 mov     eax, [eax+$6C]
0068A0DE   8B10                   mov     edx, [eax]
0068A0E0   FF5258                 call    dword ptr [edx+$58]
0068A0E3   8BD8                   mov     ebx, eax
0068A0E5   85DB                   test    ebx, ebx
0068A0E7   7E4C                   jle     0068A135
0068A0E9   8BC6                   mov     eax, esi

|
0068A0EB   E874070000             call    0068A864
0068A0F0   8BD0                   mov     edx, eax
0068A0F2   8D45EC                 lea     eax, [ebp-$14]
0068A0F5   885001                 mov     [eax+$01], dl
0068A0F8   C60001                 mov     byte ptr [eax], $01
0068A0FB   8D55EC                 lea     edx, [ebp-$14]
0068A0FE   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@PStrCpy(PShortString;PShortString);
|
0068A101   E89E92D7FF             call    004033A4
0068A106   BA20A76800             mov     edx, $0068A720
0068A10B   8D45E8                 lea     eax, [ebp-$18]
0068A10E   B102                   mov     cl, $02

* Reference to: System.@PStrNCat;
|
0068A110   E85F92D7FF             call    00403374
0068A115   8D55E8                 lea     edx, [ebp-$18]
0068A118   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrFromString(String;String;ShortString;ShortString);
|
0068A11B   E8E0B5D7FF             call    00405700
0068A120   8B55F0                 mov     edx, [ebp-$10]
0068A123   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A128   8B00                   mov     eax, [eax]
0068A12A   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A12D   E8A207F1FF             call    0059A8D4
0068A132   4B                     dec     ebx
0068A133   75B4                   jnz     0068A0E9
0068A135   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A13A   8B00                   mov     eax, [eax]
0068A13C   8B4068                 mov     eax, [eax+$68]

|
0068A13F   E89C06F1FF             call    0059A7E0
0068A144   8B451C                 mov     eax, [ebp+$1C]
0068A147   C60000                 mov     byte ptr [eax], $00
0068A14A   8B4524                 mov     eax, [ebp+$24]
0068A14D   8B00                   mov     eax, [eax]
0068A14F   8B5528                 mov     edx, [ebp+$28]
0068A152   8902                   mov     [edx], eax
0068A154   8B451C                 mov     eax, [ebp+$1C]
0068A157   803800                 cmp     byte ptr [eax], $00
0068A15A   0F8582030000           jnz     0068A4E2

* Possible String Reference to: 'DESCRICAO'
|
0068A160   682CA76800             push    $0068A72C
0068A165   8D45F4                 lea     eax, [ebp-$0C]
0068A168   50                     push    eax
0068A169   8D55E0                 lea     edx, [ebp-$20]
0068A16C   8B4528                 mov     eax, [ebp+$28]
0068A16F   8B00                   mov     eax, [eax]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0068A171   E8EE0BD8FF             call    0040AD64
0068A176   8B4DE0                 mov     ecx, [ebp-$20]
0068A179   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'CODIMPR = '
|
0068A17C   BA40A76800             mov     edx, $0068A740

* Reference to: System.@LStrCat3;
|
0068A181   E822B6D7FF             call    004057A8
0068A186   8B4DE4                 mov     ecx, [ebp-$1C]

* Possible String Reference to: 'IMPRGRILL'
|
0068A189   BA54A76800             mov     edx, $0068A754
0068A18E   33C0                   xor     eax, eax

|
0068A190   E87BF11100             call    007A9310
0068A195   8B4528                 mov     eax, [ebp+$28]
0068A198   8B00                   mov     eax, [eax]

|
0068A19A   E821A61200             call    007B47C0

|
0068A19F   E8F0480200             call    006AEA94
0068A1A4   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A1A9   8B00                   mov     eax, [eax]
0068A1AB   8B4068                 mov     eax, [eax+$68]
0068A1AE   83C030                 add     eax, +$30

* Possible String Reference to: 'Pedido'
|
0068A1B1   BA68A76800             mov     edx, $0068A768

* Reference to: System.@LStrAsg(void;void;void;void);
|
0068A1B6   E835B3D7FF             call    004054F0
0068A1BB   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A1C0   8B00                   mov     eax, [eax]
0068A1C2   8B4068                 mov     eax, [eax+$68]

|
0068A1C5   E87205F1FF             call    0059A73C
0068A1CA   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0068A1CF   8B00                   mov     eax, [eax]
0068A1D1   8B4068                 mov     eax, [eax+$68]
0068A1D4   8B10                   mov     edx, [eax]
0068A1D6   FF5258                 call    dword ptr [edx+$58]
0068A1D9   8BD8                   mov     ebx, eax
0068A1DB   85DB                   test    ebx, ebx
0068A1DD   7E4C                   jle     0068A22B
0068A1DF   8BC6                   mov     eax, esi

|
0068A1E1   E87E060000             call    0068A864
0068A1E6   8BD0                   mov     edx, eax
0068A1E8   8D45EC                 lea     eax, [ebp-$14]
0068A1EB   885001                 mov     [eax+$01], dl
0068A1EE   C60001                 mov     byte ptr [eax], $01
0068A1F1   8D55EC                 lea     edx, [ebp-$14]
0068A1F4   8D45E8                 lea     eax, [ebp-$18]

* Reference to: System.@PStrCpy(PShortString;PShortString);
|
0068A1F7   E8A891D7FF             call    004033A4
0068A1FC   BA20A76800             mov     edx, $0068A720
0068A201   8D45E8                 lea     eax, [ebp-$18]
0068A204   B102                   mov     cl, $02

* Reference to: System.@PStrNCat;
|
0068A206   E86991D7FF             call    00403374
0068A20B   8D55E8                 lea     edx, [ebp-$18]
0068A20E   8D45DC                 lea     eax, [ebp-$24]

* Reference to: System.@LStrFromString(String;String;ShortString;ShortString);
|
0068A211   E8EAB4D7FF             call    00405700
0068A216   8B55DC                 mov     edx, [ebp-$24]
0068A219   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A21E   8B00                   mov     eax, [eax]
0068A220   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A223   E8AC06F1FF             call    0059A8D4
0068A228   4B                     dec     ebx
0068A229   75B4                   jnz     0068A1DF
0068A22B   8BC6                   mov     eax, esi

|
0068A22D   E832060000             call    0068A864
0068A232   8BD0                   mov     edx, eax
0068A234   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0068A237   E848B4D7FF             call    00405684
0068A23C   8D45D8                 lea     eax, [ebp-$28]
0068A23F   50                     push    eax

* Possible String Reference to: 'esquerda'
|
0068A240   6878A76800             push    $0068A778
0068A245   8D45D4                 lea     eax, [ebp-$2C]
0068A248   50                     push    eax
0068A249   8B0F                   mov     ecx, [edi]
0068A24B   BA8CA76800             mov     edx, $0068A78C
0068A250   B88CA76800             mov     eax, $0068A78C

|
0068A255   E86E841100             call    007A26C8
0068A25A   8B55D4                 mov     edx, [ebp-$2C]
0068A25D   58                     pop     eax

* Reference to: System.@LStrCat;
|
0068A25E   E801B5D7FF             call    00405764
0068A263   8B55D8                 mov     edx, [ebp-$28]
0068A266   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A26B   8B00                   mov     eax, [eax]
0068A26D   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A270   E85F06F1FF             call    0059A8D4
0068A275   8BC6                   mov     eax, esi

|
0068A277   E8E8050000             call    0068A864
0068A27C   8BD0                   mov     edx, eax
0068A27E   8D45D0                 lea     eax, [ebp-$30]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0068A281   E8FEB3D7FF             call    00405684
0068A286   8D45D0                 lea     eax, [ebp-$30]
0068A289   50                     push    eax

* Possible String Reference to: 'esquerda'
|
0068A28A   6878A76800             push    $0068A778
0068A28F   8D45CC                 lea     eax, [ebp-$34]
0068A292   50                     push    eax

* Reference to: SysUtils.Now:TDateTime;
|
0068A293   E8C439D8FF             call    0040DC5C
0068A298   83C4F8                 add     esp, -$08
0068A29B   DD1C24                 fstp    qword ptr [esp]
0068A29E   9B                     wait
0068A29F   8D55C8                 lea     edx, [ebp-$38]

* Possible String Reference to: 'dd/mm/yy - hh:mm'
|
0068A2A2   B898A76800             mov     eax, $0068A798

|
0068A2A7   E82C46D8FF             call    0040E8D8
0068A2AC   8B55C8                 mov     edx, [ebp-$38]
0068A2AF   8B0F                   mov     ecx, [edi]
0068A2B1   B8B4A76800             mov     eax, $0068A7B4

|
0068A2B6   E80D841100             call    007A26C8
0068A2BB   8B55CC                 mov     edx, [ebp-$34]
0068A2BE   58                     pop     eax

* Reference to: System.@LStrCat;
|
0068A2BF   E8A0B4D7FF             call    00405764
0068A2C4   8B55D0                 mov     edx, [ebp-$30]
0068A2C7   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A2CC   8B00                   mov     eax, [eax]
0068A2CE   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A2D1   E8FE05F1FF             call    0059A8D4
0068A2D6   8BC6                   mov     eax, esi

|
0068A2D8   E887050000             call    0068A864
0068A2DD   8BD0                   mov     edx, eax
0068A2DF   8D45C4                 lea     eax, [ebp-$3C]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0068A2E2   E89DB3D7FF             call    00405684
0068A2E7   8D45C4                 lea     eax, [ebp-$3C]
0068A2EA   50                     push    eax

* Possible String Reference to: 'esquerda'
|
0068A2EB   6878A76800             push    $0068A778
0068A2F0   8D45C0                 lea     eax, [ebp-$40]
0068A2F3   50                     push    eax
0068A2F4   8B0F                   mov     ecx, [edi]
0068A2F6   8B55F4                 mov     edx, [ebp-$0C]
0068A2F9   B8B4A76800             mov     eax, $0068A7B4

|
0068A2FE   E8C5831100             call    007A26C8
0068A303   8B55C0                 mov     edx, [ebp-$40]
0068A306   58                     pop     eax

* Reference to: System.@LStrCat;
|
0068A307   E858B4D7FF             call    00405764
0068A30C   8B55C4                 mov     edx, [ebp-$3C]
0068A30F   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A314   8B00                   mov     eax, [eax]
0068A316   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A319   E8B605F1FF             call    0059A8D4
0068A31E   8BC6                   mov     eax, esi

|
0068A320   E83F050000             call    0068A864
0068A325   8BD0                   mov     edx, eax
0068A327   8D45BC                 lea     eax, [ebp-$44]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0068A32A   E855B3D7FF             call    00405684
0068A32F   8D45BC                 lea     eax, [ebp-$44]
0068A332   50                     push    eax

* Possible String Reference to: 'direita'
|
0068A333   68C0A76800             push    $0068A7C0
0068A338   8D45B8                 lea     eax, [ebp-$48]
0068A33B   50                     push    eax
0068A33C   8D559C                 lea     edx, [ebp-$64]
0068A33F   A188EC7D00             mov     eax, dword ptr [$007DEC88]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0068A344   E81B0AD8FF             call    0040AD64
0068A349   8B4D9C                 mov     ecx, [ebp-$64]
0068A34C   8D45A0                 lea     eax, [ebp-$60]

* Possible String Reference to: 'MESA # '
|
0068A34F   BAD0A76800             mov     edx, $0068A7D0

* Reference to: System.@LStrCat3;
|
0068A354   E84FB4D7FF             call    004057A8
0068A359   8B55A0                 mov     edx, [ebp-$60]
0068A35C   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0068A35F   E860E9D8FF             call    00418CC4
0068A364   8D45A4                 lea     eax, [ebp-$5C]
0068A367   50                     push    eax
0068A368   8D458C                 lea     eax, [ebp-$74]
0068A36B   50                     push    eax
0068A36C   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]
0068A372   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0068A374   E84BE9D8FF             call    00418CC4
0068A379   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]
0068A37F   50                     push    eax
0068A380   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
0068A386   8B4D08                 mov     ecx, [ebp+$08]

* Possible String Reference to: ' KIT '
|
0068A389   BAE0A76800             mov     edx, $0068A7E0

* Reference to: System.@LStrCat3;
|
0068A38E   E815B4D7FF             call    004057A8
0068A393   8B9568FFFFFF           mov     edx, [ebp+$FFFFFF68]
0068A399   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0068A39F   E820E9D8FF             call    00418CC4
0068A3A4   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
0068A3AA   8A450C                 mov     al, byte ptr [ebp+$0C]
0068A3AD   59                     pop     ecx

|
0068A3AE   E8B95F1100             call    007A036C
0068A3B3   8D558C                 lea     edx, [ebp-$74]
0068A3B6   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0068A3B7   E8E82CD9FF             call    0041D0A4
0068A3BC   8D55A4                 lea     edx, [ebp-$5C]
0068A3BF   8D45B4                 lea     eax, [ebp-$4C]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
0068A3C2   E831D8D8FF             call    00417BF8
0068A3C7   8B55B4                 mov     edx, [ebp-$4C]
0068A3CA   8B0F                   mov     ecx, [edi]
0068A3CC   B8B4A76800             mov     eax, $0068A7B4

|
0068A3D1   E8F2821100             call    007A26C8
0068A3D6   8B55B8                 mov     edx, [ebp-$48]
0068A3D9   58                     pop     eax

* Reference to: System.@LStrCat;
|
0068A3DA   E885B3D7FF             call    00405764
0068A3DF   8B55BC                 mov     edx, [ebp-$44]
0068A3E2   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A3E7   8B00                   mov     eax, [eax]
0068A3E9   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A3EC   E8E304F1FF             call    0059A8D4
0068A3F1   8BC6                   mov     eax, esi

|
0068A3F3   E86C040000             call    0068A864
0068A3F8   8BD0                   mov     edx, eax
0068A3FA   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0068A400   E87FB2D7FF             call    00405684
0068A405   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
0068A40B   50                     push    eax

* Possible String Reference to: 'esquerda'
|
0068A40C   6878A76800             push    $0068A778
0068A411   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
0068A417   50                     push    eax
0068A418   8B0F                   mov     ecx, [edi]
0068A41A   BA8CA76800             mov     edx, $0068A78C
0068A41F   B88CA76800             mov     eax, $0068A78C

|
0068A424   E89F821100             call    007A26C8
0068A429   8B9560FFFFFF           mov     edx, [ebp+$FFFFFF60]
0068A42F   58                     pop     eax

* Reference to: System.@LStrCat;
|
0068A430   E82FB3D7FF             call    00405764
0068A435   8B9564FFFFFF           mov     edx, [ebp+$FFFFFF64]
0068A43B   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A440   8B00                   mov     eax, [eax]
0068A442   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A445   E88A04F1FF             call    0059A8D4
0068A44A   8BC6                   mov     eax, esi

|
0068A44C   E813040000             call    0068A864
0068A451   8BD0                   mov     edx, eax
0068A453   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0068A459   E826B2D7FF             call    00405684
0068A45E   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]

* Possible String Reference to: 'Quant.  Produto                    
|                                Func.'
|
0068A464   BAF0A76800             mov     edx, $0068A7F0

* Reference to: System.@LStrCat;
|
0068A469   E8F6B2D7FF             call    00405764
0068A46E   8B955CFFFFFF           mov     edx, [ebp+$FFFFFF5C]
0068A474   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A479   8B00                   mov     eax, [eax]
0068A47B   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A47E   E85104F1FF             call    0059A8D4
0068A483   8BC6                   mov     eax, esi

|
0068A485   E8DA030000             call    0068A864
0068A48A   8BD0                   mov     edx, eax
0068A48C   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0068A492   E8EDB1D7FF             call    00405684
0068A497   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
0068A49D   50                     push    eax

* Possible String Reference to: 'esquerda'
|
0068A49E   6878A76800             push    $0068A778
0068A4A3   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]
0068A4A9   50                     push    eax
0068A4AA   8B0F                   mov     ecx, [edi]
0068A4AC   BA8CA76800             mov     edx, $0068A78C
0068A4B1   B88CA76800             mov     eax, $0068A78C

|
0068A4B6   E80D821100             call    007A26C8
0068A4BB   8B9554FFFFFF           mov     edx, [ebp+$FFFFFF54]
0068A4C1   58                     pop     eax

* Reference to: System.@LStrCat;
|
0068A4C2   E89DB2D7FF             call    00405764
0068A4C7   8B9558FFFFFF           mov     edx, [ebp+$FFFFFF58]
0068A4CD   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A4D2   8B00                   mov     eax, [eax]
0068A4D4   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A4D7   E8F803F1FF             call    0059A8D4
0068A4DC   8B451C                 mov     eax, [ebp+$1C]
0068A4DF   C60001                 mov     byte ptr [eax], $01
0068A4E2   8BC6                   mov     eax, esi

|
0068A4E4   E87B030000             call    0068A864
0068A4E9   8BD0                   mov     edx, eax
0068A4EB   8D854CFFFFFF           lea     eax, [ebp+$FFFFFF4C]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0068A4F1   E88EB1D7FF             call    00405684
0068A4F6   FFB54CFFFFFF           push    dword ptr [ebp+$FFFFFF4C]

* Possible String Reference to: 'direita'
|
0068A4FC   68C0A76800             push    $0068A7C0
0068A501   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
0068A507   50                     push    eax
0068A508   668B4518               mov     ax, word ptr [ebp+$18]
0068A50C   50                     push    eax
0068A50D   FF7514                 push    dword ptr [ebp+$14]
0068A510   FF7510                 push    dword ptr [ebp+$10]
0068A513   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

|
0068A519   E84E2FD8FF             call    0040D46C
0068A51E   8B9544FFFFFF           mov     edx, [ebp+$FFFFFF44]
0068A524   B906000000             mov     ecx, $00000006
0068A529   B8B4A76800             mov     eax, $0068A7B4

|
0068A52E   E895811100             call    007A26C8
0068A533   FFB548FFFFFF           push    dword ptr [ebp+$FFFFFF48]

* Possible String Reference to: '  '
|
0068A539   6824A86800             push    $0068A824

* Possible String Reference to: 'esquerda'
|
0068A53E   6878A76800             push    $0068A778
0068A543   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]
0068A549   50                     push    eax
0068A54A   8B0F                   mov     ecx, [edi]
0068A54C   83E90E                 sub     ecx, +$0E
0068A54F   8B55FC                 mov     edx, [ebp-$04]
0068A552   B8B4A76800             mov     eax, $0068A7B4

|
0068A557   E86C811100             call    007A26C8
0068A55C   FFB540FFFFFF           push    dword ptr [ebp+$FFFFFF40]
0068A562   68B4A76800             push    $0068A7B4

* Possible String Reference to: 'direita'
|
0068A567   68C0A76800             push    $0068A7C0
0068A56C   8D853CFFFFFF           lea     eax, [ebp+$FFFFFF3C]
0068A572   50                     push    eax
0068A573   B905000000             mov     ecx, $00000005
0068A578   8B5534                 mov     edx, [ebp+$34]
0068A57B   B8B4A76800             mov     eax, $0068A7B4

|
0068A580   E843811100             call    007A26C8
0068A585   FFB53CFFFFFF           push    dword ptr [ebp+$FFFFFF3C]
0068A58B   68B4A76800             push    $0068A7B4
0068A590   FF7530                 push    dword ptr [ebp+$30]
0068A593   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]
0068A599   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrCatN;
|
0068A59E   E879B2D7FF             call    0040581C
0068A5A3   8B9550FFFFFF           mov     edx, [ebp+$FFFFFF50]
0068A5A9   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A5AE   8B00                   mov     eax, [eax]
0068A5B0   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A5B3   E81C03F1FF             call    0059A8D4
0068A5B8   837D2C00               cmp     dword ptr [ebp+$2C], +$00
0068A5BC   746D                   jz      0068A62B
0068A5BE   8BC6                   mov     eax, esi

|
0068A5C0   E89F020000             call    0068A864
0068A5C5   8BD0                   mov     edx, eax
0068A5C7   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]

* Reference to: System.@LStrFromChar(String;String;Char);
|
0068A5CD   E8B2B0D7FF             call    00405684
0068A5D2   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]
0068A5D8   50                     push    eax

* Possible String Reference to: 'esquerda'
|
0068A5D9   6878A76800             push    $0068A778
0068A5DE   8D8534FFFFFF           lea     eax, [ebp+$FFFFFF34]
0068A5E4   50                     push    eax
0068A5E5   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]
0068A5EB   8B4D2C                 mov     ecx, [ebp+$2C]

* Possible String Reference to: ' *** '
|
0068A5EE   BA30A86800             mov     edx, $0068A830

* Reference to: System.@LStrCat3;
|
0068A5F3   E8B0B1D7FF             call    004057A8
0068A5F8   8B9530FFFFFF           mov     edx, [ebp+$FFFFFF30]
0068A5FE   8B0F                   mov     ecx, [edi]
0068A600   B8B4A76800             mov     eax, $0068A7B4

|
0068A605   E8BE801100             call    007A26C8
0068A60A   8B9534FFFFFF           mov     edx, [ebp+$FFFFFF34]
0068A610   58                     pop     eax

* Reference to: System.@LStrCat;
|
0068A611   E84EB1D7FF             call    00405764
0068A616   8B9538FFFFFF           mov     edx, [ebp+$FFFFFF38]
0068A61C   A178B47D00             mov     eax, dword ptr [$007DB478]
0068A621   8B00                   mov     eax, [eax]
0068A623   8B4068                 mov     eax, [eax+$68]

* Reference to: InStream.TInStream.WriteLn(TInStream;AnsiString);overload;
|
0068A626   E8A902F1FF             call    0059A8D4
0068A62B   33C0                   xor     eax, eax
0068A62D   5A                     pop     edx
0068A62E   59                     pop     ecx
0068A62F   59                     pop     ecx
0068A630   648910                 mov     fs:[eax], edx
0068A633   EB41                   jmp     0068A676

* Reference to: System.@HandleOnException;
|
0068A635   E976A5D7FF             jmp     00404BB0
0068A63A   0100                   add     [eax], eax
0068A63C   0000                   add     [eax], al
0068A63E   40                     inc     eax
0068A63F   95                     xchg    eax, ebp
0068A640   40                     inc     eax
0068A641   0046A6                 add     [esi-$5A], al
0068A644   680089C36A             push    $6AC38900
0068A649   008B4B048D85           add     [ebx+$858D044B], cl
0068A64F   2CFF                   sub     al, $FF
0068A651   FFFF                   DB  $FF, $FF  //      

* Possible String Reference to: 'Erro ao executar a rotina!'
|
0068A653   BA40A86800             mov     edx, $0068A840

* Reference to: System.@LStrCat3;
|
0068A658   E84BB1D7FF             call    004057A8
0068A65D   8B852CFFFFFF           mov     eax, [ebp+$FFFFFF2C]
0068A663   668B0D60A86800         mov     cx, word ptr [$0068A860]
0068A66A   B201                   mov     dl, $01

|
0068A66C   E8BB94DBFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0068A671   E83AA8D7FF             call    00404EB0

****** END
|
0068A676   33C0                   xor     eax, eax
0068A678   5A                     pop     edx
0068A679   59                     pop     ecx
0068A67A   59                     pop     ecx
0068A67B   648910                 mov     fs:[eax], edx

****** FINALLY
|
0068A67E   688BA66800             push    $0068A68B
0068A683   C3                     ret


* Reference to: System.@HandleFinally;
|
0068A684   E9AFA6D7FF             jmp     00404D38
0068A689   EBF8                   jmp     0068A683

****** END
|
0068A68B   33C0                   xor     eax, eax
0068A68D   5A                     pop     edx
0068A68E   59                     pop     ecx
0068A68F   59                     pop     ecx
0068A690   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]¬0'
|
0068A693   6812A76800             push    $0068A712
0068A698   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]
0068A69E   BA10000000             mov     edx, $00000010

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A6A3   E818AED7FF             call    004054C0
0068A6A8   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Reference to object Variant
|
0068A6AE   8B1524114000           mov     edx, [$00401124]
0068A6B4   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0068A6B9   E8DEB9D7FF             call    0040609C
0068A6BE   8D459C                 lea     eax, [ebp-$64]
0068A6C1   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A6C6   E8F5ADD7FF             call    004054C0
0068A6CB   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0068A6CE   E8A59ED8FF             call    00414578
0068A6D3   8D45B4                 lea     eax, [ebp-$4C]
0068A6D6   BA0D000000             mov     edx, $0000000D

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A6DB   E8E0ADD7FF             call    004054C0
0068A6E0   8D45F0                 lea     eax, [ebp-$10]
0068A6E3   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A6E8   E8D3ADD7FF             call    004054C0
0068A6ED   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0068A6F0   E8A7ADD7FF             call    0040549C
0068A6F5   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
0068A6F8   E89FADD7FF             call    0040549C
0068A6FD   8D452C                 lea     eax, [ebp+$2C]
0068A700   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A705   E8B6ADD7FF             call    004054C0
0068A70A   C3                     ret


* Reference to: System.@HandleFinally;
|
0068A70B   E928A6D7FF             jmp     00404D38
0068A710   EB86                   jmp     0068A698

****** END
|
0068A712   8A45FB                 mov     al, byte ptr [ebp-$05]
0068A715   5F                     pop     edi
0068A716   5E                     pop     esi
0068A717   5B                     pop     ebx
0068A718   8BE5                   mov     esp, ebp
0068A71A   5D                     pop     ebp
0068A71B   C23000                 ret     $0030

*)
end;

procedure TfrmAdicionaProduto._PROC_0068A684(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0068A684   E9AFA6D7FF             jmp     00404D38

|
0068A689   EBF8                   jmp     0068A683
0068A68B   33C0                   xor     eax, eax
0068A68D   5A                     pop     edx
0068A68E   59                     pop     ecx
0068A68F   59                     pop     ecx
0068A690   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˚_^[ãÂ]¬0'
|
0068A693   6812A76800             push    $0068A712
0068A698   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]
0068A69E   BA10000000             mov     edx, $00000010

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A6A3   E818AED7FF             call    004054C0
0068A6A8   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Reference to object Variant
|
0068A6AE   8B1524114000           mov     edx, [$00401124]
0068A6B4   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0068A6B9   E8DEB9D7FF             call    0040609C
0068A6BE   8D459C                 lea     eax, [ebp-$64]
0068A6C1   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A6C6   E8F5ADD7FF             call    004054C0
0068A6CB   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0068A6CE   E8A59ED8FF             call    00414578
0068A6D3   8D45B4                 lea     eax, [ebp-$4C]
0068A6D6   BA0D000000             mov     edx, $0000000D

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A6DB   E8E0ADD7FF             call    004054C0
0068A6E0   8D45F0                 lea     eax, [ebp-$10]
0068A6E3   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A6E8   E8D3ADD7FF             call    004054C0
0068A6ED   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0068A6F0   E8A7ADD7FF             call    0040549C
0068A6F5   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
0068A6F8   E89FADD7FF             call    0040549C
0068A6FD   8D452C                 lea     eax, [ebp+$2C]
0068A700   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068A705   E8B6ADD7FF             call    004054C0
0068A70A   C3                     ret


* Reference to: System.@HandleFinally;
|
0068A70B   E928A6D7FF             jmp     00404D38
0068A710   EB86                   jmp     0068A698

****** END
|
0068A712   8A45FB                 mov     al, byte ptr [ebp-$05]
0068A715   5F                     pop     edi
0068A716   5E                     pop     esi
0068A717   5B                     pop     ebx
0068A718   8BE5                   mov     esp, ebp
0068A71A   5D                     pop     ebp
0068A71B   C23000                 ret     $0030

*)
end;

procedure TfrmAdicionaProduto._PROC_0068A865(Sender : TObject);
begin
(*
0068A865   8BEC                   mov     ebp, esp
0068A867   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0068A86C   8B00                   mov     eax, [eax]
0068A86E   8B8030020000           mov     eax, [eax+$0230]
0068A874   8B10                   mov     edx, [eax]
0068A876   FF5258                 call    dword ptr [edx+$58]
0068A879   48                     dec     eax
0068A87A   7504                   jnz     0068A880
0068A87C   B00F                   mov     al, $0F
0068A87E   5D                     pop     ebp
0068A87F   C3                     ret

0068A880   33C0                   xor     eax, eax
0068A882   5D                     pop     ebp
0068A883   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068A884(Sender : TObject);
begin
(*
0068A884   55                     push    ebp
0068A885   8BEC                   mov     ebp, esp
0068A887   B917000000             mov     ecx, $00000017
0068A88C   6A00                   push    $00
0068A88E   6A00                   push    $00
0068A890   49                     dec     ecx
0068A891   75F9                   jnz     0068A88C
0068A893   53                     push    ebx
0068A894   56                     push    esi
0068A895   57                     push    edi
0068A896   8BF0                   mov     esi, eax
0068A898   8B3D8CA97D00           mov     edi, [$007DA98C]
0068A89E   33C0                   xor     eax, eax
0068A8A0   55                     push    ebp

* Possible String Reference to: 'È¶û◊ˇÈiˇˇˇäEˇ_^[ãÂ]√'
|
0068A8A1   688DAE6800             push    $0068AE8D

***** TRY
|
0068A8A6   64FF30                 push    dword ptr fs:[eax]
0068A8A9   648920                 mov     fs:[eax], esp
0068A8AC   C645FF00               mov     byte ptr [ebp-$01], $00
0068A8B0   33C0                   xor     eax, eax
0068A8B2   55                     push    ebp
0068A8B3   68ECAD6800             push    $0068ADEC

***** TRY
|
0068A8B8   64FF30                 push    dword ptr fs:[eax]
0068A8BB   648920                 mov     fs:[eax], esp
0068A8BE   33C0                   xor     eax, eax
0068A8C0   55                     push    ebp
0068A8C1   689DAD6800             push    $0068AD9D

***** TRY
|
0068A8C6   64FF30                 push    dword ptr fs:[eax]
0068A8C9   648920                 mov     fs:[eax], esp

* Reference to field TfrmAdicionaProduto.OFFS_03D5 : Byte
|
0068A8CC   80BED503000000         cmp     byte ptr [esi+$03D5], $00
0068A8D3   0F85BA040000           jnz     0068AD93
0068A8D9   8BC6                   mov     eax, esi

* Reference to : TfrmAdicionaProduto._PROC_006896BC()
|
0068A8DB   E8DCEDFFFF             call    006896BC
0068A8E0   84C0                   test    al, al
0068A8E2   0F84AB040000           jz      0068AD93

* Reference to field TfrmAdicionaProduto.OFFS_03D5 : Byte
|
0068A8E8   C686D503000001         mov     byte ptr [esi+$03D5], $01
0068A8EF   8B07                   mov     eax, [edi]

* Reference to field TfrmAdicionaProduto.Constraints : TSizeConstraints
|
0068A8F1   8B4074                 mov     eax, [eax+$74]

|
0068A8F4   E8ABC31100             call    007A6CA4
0068A8F9   84C0                   test    al, al
0068A8FB   0F8492040000           jz      0068AD93
0068A901   8B1588EC7D00           mov     edx, [$007DEC88]
0068A907   8BC6                   mov     eax, esi

|
0068A909   E802D3FFFF             call    00687C10
0068A90E   40                     inc     eax

* Reference to GlobalVar_007DEC98
|
0068A90F   A398EC7D00             mov     dword ptr [$007DEC98], eax
0068A914   8B07                   mov     eax, [edi]

* Reference to field GlobalVar_007DEC98.OFFS_05B4
|
0068A916   8B80B4050000           mov     eax, [eax+$05B4]
0068A91C   8B1588EC7D00           mov     edx, [$007DEC88]
0068A922   8B08                   mov     ecx, [eax]
0068A924   FF91A8000000           call    dword ptr [ecx+$00A8]
0068A92A   8B07                   mov     eax, [edi]
0068A92C   8B80B8050000           mov     eax, [eax+$05B8]
0068A932   8B158CEC7D00           mov     edx, [$007DEC8C]
0068A938   8B08                   mov     ecx, [eax]
0068A93A   FF91A8000000           call    dword ptr [ecx+$00A8]
0068A940   8B07                   mov     eax, [edi]
0068A942   8B80BC050000           mov     eax, [eax+$05BC]
0068A948   8B1598EC7D00           mov     edx, [$007DEC98]
0068A94E   8B08                   mov     ecx, [eax]
0068A950   FF91A8000000           call    dword ptr [ecx+$00A8]
0068A956   8D55F8                 lea     edx, [ebp-$08]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
0068A959   8B8610030000           mov     eax, [esi+$0310]

* Reference to: ActnMan.TActionListCollection.GetListItem(TActionListCollection;Integer):TActionListItem;
|
0068A95F   E87435E7FF             call    004FDED8
0068A964   8B55F8                 mov     edx, [ebp-$08]
0068A967   8B07                   mov     eax, [edi]

* Reference to field TJvComboEdit.OFFS_05C0
|
0068A969   8B80C0050000           mov     eax, [eax+$05C0]
0068A96F   8B08                   mov     ecx, [eax]
0068A971   FF91B0000000           call    dword ptr [ecx+$00B0]
0068A977   8D55F4                 lea     edx, [ebp-$0C]

* Reference to control TfrmAdicionaProduto.edDescrProd : TEdit
|
0068A97A   8B860C030000           mov     eax, [esi+$030C]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0068A980   E8478DE0FF             call    004936CC
0068A985   8B55F4                 mov     edx, [ebp-$0C]
0068A988   8B07                   mov     eax, [edi]

* Reference to field TEdit.OFFS_05C4
|
0068A98A   8B80C4050000           mov     eax, [eax+$05C4]
0068A990   8B08                   mov     ecx, [eax]
0068A992   FF91B0000000           call    dword ptr [ecx+$00B0]
0068A998   8D55F0                 lea     edx, [ebp-$10]

* Reference to control TfrmAdicionaProduto.EdUnidMed : TJvComboEdit
|
0068A99B   8B8664030000           mov     eax, [esi+$0364]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0068A9A1   E89635E7FF             call    004FDF3C
0068A9A6   8B55F0                 mov     edx, [ebp-$10]
0068A9A9   8B07                   mov     eax, [edi]

* Reference to field TJvComboEdit.OFFS_05C8
|
0068A9AB   8B80C8050000           mov     eax, [eax+$05C8]
0068A9B1   8B08                   mov     ecx, [eax]
0068A9B3   FF91B0000000           call    dword ptr [ecx+$00B0]
0068A9B9   8D55E0                 lea     edx, [ebp-$20]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
0068A9BC   8B8614030000           mov     eax, [esi+$0314]

|
0068A9C2   E8F187FCFF             call    006531B8
0068A9C7   8D45E0                 lea     eax, [ebp-$20]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0068A9CA   E819C2D8FF             call    00416BE8
0068A9CF   83C4F8                 add     esp, -$08
0068A9D2   DD1C24                 fstp    qword ptr [esp]
0068A9D5   9B                     wait
0068A9D6   8B07                   mov     eax, [edi]
0068A9D8   8B80D0050000           mov     eax, [eax+$05D0]
0068A9DE   8B10                   mov     edx, [eax]
0068A9E0   FF92A4000000           call    dword ptr [edx+$00A4]
0068A9E6   8D55D0                 lea     edx, [ebp-$30]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
0068A9E9   8B8618030000           mov     eax, [esi+$0318]

|
0068A9EF   E8C487FCFF             call    006531B8
0068A9F4   8D45D0                 lea     eax, [ebp-$30]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0068A9F7   E8ECC1D8FF             call    00416BE8
0068A9FC   83C4F8                 add     esp, -$08
0068A9FF   DD1C24                 fstp    qword ptr [esp]
0068AA02   9B                     wait
0068AA03   8B07                   mov     eax, [edi]
0068AA05   8B80D4050000           mov     eax, [eax+$05D4]
0068AA0B   8B10                   mov     edx, [eax]
0068AA0D   FF92A4000000           call    dword ptr [edx+$00A4]
0068AA13   A0A4AE6800             mov     al, byte ptr [$0068AEA4]
0068AA18   50                     push    eax
0068AA19   8D55BC                 lea     edx, [ebp-$44]

* Reference to control TfrmAdicionaProduto.EdUnidMed : TJvComboEdit
|
0068AA1C   8B8664030000           mov     eax, [esi+$0364]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0068AA22   E81535E7FF             call    004FDF3C
0068AA27   8B55BC                 mov     edx, [ebp-$44]
0068AA2A   8D45C0                 lea     eax, [ebp-$40]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0068AA2D   E892E2D8FF             call    00418CC4
0068AA32   8D4DC0                 lea     ecx, [ebp-$40]
0068AA35   8B07                   mov     eax, [edi]
0068AA37   8B8044070000           mov     eax, [eax+$0744]

* Possible String Reference to: 'UNIDMED'
|
0068AA3D   BAB0AE6800             mov     edx, $0068AEB0
0068AA42   8B18                   mov     ebx, [eax]
0068AA44   FF9344020000           call    dword ptr [ebx+$0244]
0068AA4A   84C0                   test    al, al
0068AA4C   750D                   jnz     0068AA5B
0068AA4E   8B07                   mov     eax, [edi]
0068AA50   8B8044070000           mov     eax, [eax+$0744]

* Reference to: DB.TDataSet.First(TDataSet);
|
0068AA56   E8D105E6FF             call    004EB02C
0068AA5B   8B07                   mov     eax, [edi]
0068AA5D   8B8068070000           mov     eax, [eax+$0768]
0068AA63   8B10                   mov     edx, [eax]
0068AA65   FF5254                 call    dword ptr [edx+$54]
0068AA68   83C4F8                 add     esp, -$08
0068AA6B   DD1C24                 fstp    qword ptr [esp]
0068AA6E   9B                     wait
0068AA6F   8B07                   mov     eax, [edi]
0068AA71   8B80A40C0000           mov     eax, [eax+$0CA4]
0068AA77   8B10                   mov     edx, [eax]
0068AA79   FF92A4000000           call    dword ptr [edx+$00A4]
0068AA7F   8B07                   mov     eax, [edi]
0068AA81   8B806C070000           mov     eax, [eax+$076C]
0068AA87   8B10                   mov     edx, [eax]
0068AA89   FF5254                 call    dword ptr [edx+$54]
0068AA8C   83C4F8                 add     esp, -$08
0068AA8F   DD1C24                 fstp    qword ptr [esp]
0068AA92   9B                     wait
0068AA93   8B07                   mov     eax, [edi]
0068AA95   8B80A80C0000           mov     eax, [eax+$0CA8]
0068AA9B   8B10                   mov     edx, [eax]
0068AA9D   FF92A4000000           call    dword ptr [edx+$00A4]
0068AAA3   8D55AC                 lea     edx, [ebp-$54]

* Reference to control TfrmAdicionaProduto.edVlrTotal : TJvValidateEdit
|
0068AAA6   8B861C030000           mov     eax, [esi+$031C]

|
0068AAAC   E80787FCFF             call    006531B8
0068AAB1   8D45AC                 lea     eax, [ebp-$54]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0068AAB4   E82FC1D8FF             call    00416BE8
0068AAB9   83C4F8                 add     esp, -$08
0068AABC   DD1C24                 fstp    qword ptr [esp]
0068AABF   9B                     wait
0068AAC0   8B07                   mov     eax, [edi]
0068AAC2   8B80D8050000           mov     eax, [eax+$05D8]
0068AAC8   8B10                   mov     edx, [eax]
0068AACA   FF92A4000000           call    dword ptr [edx+$00A4]
0068AAD0   8D55A8                 lea     edx, [ebp-$58]

* Reference to control TfrmAdicionaProduto.EdCodFunc : TJvComboEdit
|
0068AAD3   8B86A4030000           mov     eax, [esi+$03A4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0068AAD9   E85E34E7FF             call    004FDF3C
0068AADE   8B55A8                 mov     edx, [ebp-$58]
0068AAE1   8B07                   mov     eax, [edi]

* Reference to field TJvComboEdit.OFFS_05DC
|
0068AAE3   8B80DC050000           mov     eax, [eax+$05DC]
0068AAE9   8B08                   mov     ecx, [eax]
0068AAEB   FF91B0000000           call    dword ptr [ecx+$00B0]
0068AAF1   8B07                   mov     eax, [edi]
0068AAF3   8B80E0050000           mov     eax, [eax+$05E0]
0068AAF9   BAC0AE6800             mov     edx, $0068AEC0
0068AAFE   8B08                   mov     ecx, [eax]
0068AB00   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Time:TDateTime;
|
0068AB06   E81D31D8FF             call    0040DC28
0068AB0B   83C4F8                 add     esp, -$08
0068AB0E   DD1C24                 fstp    qword ptr [esp]
0068AB11   9B                     wait
0068AB12   8B07                   mov     eax, [edi]
0068AB14   8B80E4050000           mov     eax, [eax+$05E4]
0068AB1A   8B10                   mov     edx, [eax]
0068AB1C   FF92A0000000           call    dword ptr [edx+$00A0]
0068AB22   8D55A4                 lea     edx, [ebp-$5C]

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
0068AB25   8B8610030000           mov     eax, [esi+$0310]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0068AB2B   E80C34E7FF             call    004FDF3C
0068AB30   8B45A4                 mov     eax, [ebp-$5C]

|
0068AB33   E8F8991200             call    007B4530
0068AB38   8BD0                   mov     edx, eax
0068AB3A   8B07                   mov     eax, [edi]

* Reference to field TJvComboEdit.OFFS_0C10
|
0068AB3C   8B80100C0000           mov     eax, [eax+$0C10]
0068AB42   8B08                   mov     ecx, [eax]
0068AB44   FF91A8000000           call    dword ptr [ecx+$00A8]
0068AB4A   8D4590                 lea     eax, [ebp-$70]
0068AB4D   50                     push    eax
0068AB4E   8D4580                 lea     eax, [ebp-$80]
0068AB51   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0068AB53   E86CE1D8FF             call    00418CC4
0068AB58   8D4580                 lea     eax, [ebp-$80]
0068AB5B   50                     push    eax
0068AB5C   B056                   mov     al, $56
0068AB5E   88856DFFFFFF           mov     [ebp+$FFFFFF6D], al
0068AB64   C6856CFFFFFF01         mov     byte ptr [ebp+$FFFFFF6C], $01
0068AB6B   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]
0068AB71   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
0068AB77   E874E1D8FF             call    00418CF0
0068AB7C   8D9570FFFFFF           lea     edx, [ebp+$FFFFFF70]

* Reference to control TfrmAdicionaProduto.rgMesaViagem : TRadioGroup
|
0068AB82   8B86B0030000           mov     eax, [esi+$03B0]

* Reference to field TRadioGroup.ItemIndex : Integer
|
0068AB88   83B81802000001         cmp     dword ptr [eax+$0218], +$01
0068AB8F   0F94C0                 setz    al
0068AB92   59                     pop     ecx

|
0068AB93   E8D4571100             call    007A036C
0068AB98   8D5590                 lea     edx, [ebp-$70]
0068AB9B   8D45A0                 lea     eax, [ebp-$60]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
0068AB9E   E855D0D8FF             call    00417BF8
0068ABA3   8B55A0                 mov     edx, [ebp-$60]
0068ABA6   8B07                   mov     eax, [edi]
0068ABA8   8B801C0C0000           mov     eax, [eax+$0C1C]
0068ABAE   8B08                   mov     ecx, [eax]
0068ABB0   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Time:TDateTime;
|
0068ABB6   E86D30D8FF             call    0040DC28
0068ABBB   83C4F8                 add     esp, -$08
0068ABBE   DD1C24                 fstp    qword ptr [esp]
0068ABC1   9B                     wait
0068ABC2   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]

* Possible String Reference to: 'HH:MM'
|
0068ABC8   B8CCAE6800             mov     eax, $0068AECC

|
0068ABCD   E8063DD8FF             call    0040E8D8
0068ABD2   8B9568FFFFFF           mov     edx, [ebp+$FFFFFF68]
0068ABD8   8B07                   mov     eax, [edi]
0068ABDA   8B80340C0000           mov     eax, [eax+$0C34]
0068ABE0   8B08                   mov     ecx, [eax]
0068ABE2   FF91B0000000           call    dword ptr [ecx+$00B0]
0068ABE8   8D9564FFFFFF           lea     edx, [ebp+$FFFFFF64]

* Reference to control TfrmAdicionaProduto.EdHistorico : TEdit
|
0068ABEE   8B86B8030000           mov     eax, [esi+$03B8]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0068ABF4   E8D38AE0FF             call    004936CC
0068ABF9   8B9564FFFFFF           mov     edx, [ebp+$FFFFFF64]
0068ABFF   8B07                   mov     eax, [edi]

* Reference to field TEdit.OFFS_0C38
|
0068AC01   8B80380C0000           mov     eax, [eax+$0C38]
0068AC07   8B08                   mov     ecx, [eax]
0068AC09   FF91B0000000           call    dword ptr [ecx+$00B0]
0068AC0F   8D9560FFFFFF           lea     edx, [ebp+$FFFFFF60]
0068AC15   8B07                   mov     eax, [edi]
0068AC17   8B8024060000           mov     eax, [eax+$0624]
0068AC1D   8B08                   mov     ecx, [eax]
0068AC1F   FF5160                 call    dword ptr [ecx+$60]
0068AC22   8B9560FFFFFF           mov     edx, [ebp+$FFFFFF60]
0068AC28   8B07                   mov     eax, [edi]
0068AC2A   8B80780C0000           mov     eax, [eax+$0C78]
0068AC30   8B08                   mov     ecx, [eax]
0068AC32   FF91B0000000           call    dword ptr [ecx+$00B0]
0068AC38   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
0068AC3E   8B07                   mov     eax, [edi]
0068AC40   8B80100C0000           mov     eax, [eax+$0C10]
0068AC46   8B08                   mov     ecx, [eax]
0068AC48   FF5160                 call    dword ptr [ecx+$60]
0068AC4B   8B8D58FFFFFF           mov     ecx, [ebp+$FFFFFF58]
0068AC51   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]

* Possible String Reference to: 'CODIMPR = '
|
0068AC57   BADCAE6800             mov     edx, $0068AEDC

* Reference to: System.@LStrCat3;
|
0068AC5C   E847ABD7FF             call    004057A8
0068AC61   8B855CFFFFFF           mov     eax, [ebp+$FFFFFF5C]
0068AC67   50                     push    eax
0068AC68   6A00                   push    $00
0068AC6A   B9F0AE6800             mov     ecx, $0068AEF0

* Possible String Reference to: 'IMPRGRILL'
|
0068AC6F   BAFCAE6800             mov     edx, $0068AEFC
0068AC74   33C0                   xor     eax, eax

|
0068AC76   E875E21100             call    007A8EF0
0068AC7B   84C0                   test    al, al
0068AC7D   7446                   jz      0068ACC5
0068AC7F   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0068AC84   8B00                   mov     eax, [eax]
0068AC86   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'NAOIMPRIME'
|
0068AC89   BA10AF6800             mov     edx, $0068AF10

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0068AC8E   E8B9A9EDFF             call    0056564C
0068AC93   8D9554FFFFFF           lea     edx, [ebp+$FFFFFF54]

* Reference to: IBSQL.TIBXSQLVAR.GetAsString(TIBXSQLVAR):AnsiString;
|
0068AC99   E8A683EDFF             call    00563044
0068AC9E   8B8554FFFFFF           mov     eax, [ebp+$FFFFFF54]
0068ACA4   BA24AF6800             mov     edx, $0068AF24

* Reference to: System.@LStrCmp;
|
0068ACA9   E8FAABD7FF             call    004058A8
0068ACAE   7515                   jnz     0068ACC5
0068ACB0   8B07                   mov     eax, [edi]
0068ACB2   8B80140C0000           mov     eax, [eax+$0C14]
0068ACB8   BA30AF6800             mov     edx, $0068AF30
0068ACBD   8B08                   mov     ecx, [eax]
0068ACBF   FF91B0000000           call    dword ptr [ecx+$00B0]
0068ACC5   8B07                   mov     eax, [edi]
0068ACC7   8B4074                 mov     eax, [eax+$74]

|
0068ACCA   E891C21100             call    007A6F60
0068ACCF   8B07                   mov     eax, [edi]
0068ACD1   8B4074                 mov     eax, [eax+$74]

|
0068ACD4   E893DC1100             call    007A896C

* Reference to field TfrmAdicionaProduto.OFFS_03D4 : Byte
|
0068ACD9   C686D403000001         mov     byte ptr [esi+$03D4], $01
0068ACE0   8B07                   mov     eax, [edi]
0068ACE2   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'VLRTOTAL'
|
0068ACE5   BA3CAF6800             mov     edx, $0068AF3C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0068ACEA   E815EFE5FF             call    004E9C04
0068ACEF   8B10                   mov     edx, [eax]
0068ACF1   FF5254                 call    dword ptr [edx+$54]
0068ACF4   DB2D9CEC7D00           fld     tbyte ptr [$007DEC9C]
0068ACFA   DEC1                   faddp   st(1), st(0)
0068ACFC   DB3D9CEC7D00           fstp    tbyte ptr [$007DEC9C]
0068AD02   9B                     wait
0068AD03   668B05A4EC7D00         mov     ax, word ptr [$007DECA4]
0068AD0A   50                     push    eax
0068AD0B   FF35A0EC7D00           push    dword ptr [$007DECA0]
0068AD11   FF359CEC7D00           push    dword ptr [$007DEC9C]
0068AD17   8D954CFFFFFF           lea     edx, [ebp+$FFFFFF4C]

* Possible String Reference to: '###,###,##0.00'
|
0068AD1D   B850AF6800             mov     eax, $0068AF50

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0068AD22   E81528D8FF             call    0040D53C
0068AD27   8B8D4CFFFFFF           mov     ecx, [ebp+$FFFFFF4C]
0068AD2D   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]

* Possible String Reference to: 'Valor total: $ '
|
0068AD33   BA68AF6800             mov     edx, $0068AF68

* Reference to: System.@LStrCat3;
|
0068AD38   E86BAAD7FF             call    004057A8
0068AD3D   8B9550FFFFFF           mov     edx, [ebp+$FFFFFF50]

* Reference to control TfrmAdicionaProduto.lbVlrTotal : TLabel
|
0068AD43   8B8650030000           mov     eax, [esi+$0350]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0068AD49   E8AE89E0FF             call    004936FC

* Reference to control TfrmAdicionaProduto.btCancelaItem : TBitBtn
|
0068AD4E   8B86A0030000           mov     eax, [esi+$03A0]
0068AD54   B201                   mov     dl, $01
0068AD56   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
0068AD58   FF5164                 call    dword ptr [ecx+$64]
0068AD5B   8BC6                   mov     eax, esi

|
0068AD5D   E846DEFFFF             call    00688BA8

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
0068AD62   8B8610030000           mov     eax, [esi+$0310]
0068AD68   8B10                   mov     edx, [eax]

* Possible reference to virtual method TJvComboEdit.OFFS_00C4
|
0068AD6A   FF92C4000000           call    dword ptr [edx+$00C4]
0068AD70   A130AE7D00             mov     eax, dword ptr [$007DAE30]
0068AD75   8B00                   mov     eax, [eax]
0068AD77   8B1554AE7D00           mov     edx, [$007DAE54]
0068AD7D   8B12                   mov     edx, [edx]
0068AD7F   8982DC000000           mov     [edx+$00DC], eax
0068AD85   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
0068AD8F   C645FF01               mov     byte ptr [ebp-$01], $01
0068AD93   33C0                   xor     eax, eax
0068AD95   5A                     pop     edx
0068AD96   59                     pop     ecx
0068AD97   59                     pop     ecx
0068AD98   648910                 mov     fs:[eax], edx
0068AD9B   EB41                   jmp     0068ADDE

* Reference to: System.@HandleOnException;
|
0068AD9D   E90E9ED7FF             jmp     00404BB0
0068ADA2   0100                   add     [eax], eax
0068ADA4   0000                   add     [eax], al
0068ADA6   40                     inc     eax
0068ADA7   95                     xchg    eax, ebp
0068ADA8   40                     inc     eax
0068ADA9   00AEAD680089           add     [esi+$890068AD], ch
0068ADAF   C3                     ret

0068ADB0   6A00                   push    $00
0068ADB2   8B4B04                 mov     ecx, [ebx+$04]
0068ADB5   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
0068ADBB   BA80AF6800             mov     edx, $0068AF80

* Reference to: System.@LStrCat3;
|
0068ADC0   E8E3A9D7FF             call    004057A8
0068ADC5   8B8548FFFFFF           mov     eax, [ebp+$FFFFFF48]
0068ADCB   668B0DA0AF6800         mov     cx, word ptr [$0068AFA0]
0068ADD2   B201                   mov     dl, $01

|
0068ADD4   E8538DDBFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0068ADD9   E8D2A0D7FF             call    00404EB0

****** END
|
0068ADDE   33C0                   xor     eax, eax
0068ADE0   5A                     pop     edx
0068ADE1   59                     pop     ecx
0068ADE2   59                     pop     ecx
0068ADE3   648910                 mov     fs:[eax], edx

****** FINALLY
|
0068ADE6   68F3AD6800             push    $0068ADF3
0068ADEB   C3                     ret


* Reference to: System.@HandleFinally;
|
0068ADEC   E9479FD7FF             jmp     00404D38
0068ADF1   EBF8                   jmp     0068ADEB

****** END
|
0068ADF3   33C0                   xor     eax, eax
0068ADF5   5A                     pop     edx
0068ADF6   59                     pop     ecx
0068ADF7   59                     pop     ecx
0068ADF8   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0068ADFB   6897AE6800             push    $0068AE97
0068AE00   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
0068AE06   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068AE0B   E8B0A6D7FF             call    004054C0
0068AE10   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]

* Reference to: System.@LStrClr(void;void);
|
0068AE16   E881A6D7FF             call    0040549C
0068AE1B   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Reference to: System.@LStrClr(void;void);
|
0068AE21   E876A6D7FF             call    0040549C
0068AE26   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]

* Reference to object Variant
|
0068AE2C   8B1524114000           mov     edx, [$00401124]
0068AE32   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0068AE37   E860B2D7FF             call    0040609C
0068AE3C   8D45A0                 lea     eax, [ebp-$60]

* Reference to: System.@LStrClr(void;void);
|
0068AE3F   E858A6D7FF             call    0040549C
0068AE44   8D45A4                 lea     eax, [ebp-$5C]
0068AE47   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068AE4C   E86FA6D7FF             call    004054C0
0068AE51   8D45AC                 lea     eax, [ebp-$54]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0068AE54   E81F97D8FF             call    00414578
0068AE59   8D45BC                 lea     eax, [ebp-$44]

* Reference to: System.@LStrClr(void;void);
|
0068AE5C   E83BA6D7FF             call    0040549C
0068AE61   8D45C0                 lea     eax, [ebp-$40]

* Reference to object Variant
|
0068AE64   8B1524114000           mov     edx, [$00401124]
0068AE6A   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0068AE6F   E828B2D7FF             call    0040609C
0068AE74   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0068AE77   E820A6D7FF             call    0040549C
0068AE7C   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0068AE7F   E818A6D7FF             call    0040549C
0068AE84   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0068AE87   E810A6D7FF             call    0040549C
0068AE8C   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068AE8D(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0068AE8D   E9A69ED7FF             jmp     00404D38

|
0068AE92   E969FFFFFF             jmp     0068AE00
0068AE97   8A45FF                 mov     al, byte ptr [ebp-$01]
0068AE9A   5F                     pop     edi
0068AE9B   5E                     pop     esi
0068AE9C   5B                     pop     ebx
0068AE9D   8BE5                   mov     esp, ebp
0068AE9F   5D                     pop     ebp
0068AEA0   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068AEB1(Sender : TObject);
begin
(*
0068AEB1   4E                     dec     esi
0068AEB2   49                     dec     ecx
0068AEB3   44                     inc     esp
0068AEB4   4D                     dec     ebp
0068AEB5   45                     inc     ebp
0068AEB6   44                     inc     esp
0068AEB7   00FF                   add     bh, bh
0068AEB9   FFFF                   DB  $FF, $FF  //      
0068AEBB   FF01                   inc     dword ptr [ecx]
0068AEBD   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068AFA5(Sender : TObject);
begin
(*
0068AFA5   8BEC                   mov     ebp, esp
0068AFA7   B92C000000             mov     ecx, $0000002C
0068AFAC   6A00                   push    $00
0068AFAE   6A00                   push    $00
0068AFB0   49                     dec     ecx
0068AFB1   75F9                   jnz     0068AFAC
0068AFB3   53                     push    ebx
0068AFB4   56                     push    esi
0068AFB5   57                     push    edi
0068AFB6   8BF0                   mov     esi, eax
0068AFB8   8B1D8CA97D00           mov     ebx, [$007DA98C]
0068AFBE   33C0                   xor     eax, eax
0068AFC0   55                     push    ebp

* Possible String Reference to: 'ÈÌì◊ˇÈ^ˇˇˇäEˇ_^[ãÂ]√'
|
0068AFC1   6846B96800             push    $0068B946

***** TRY
|
0068AFC6   64FF30                 push    dword ptr fs:[eax]
0068AFC9   648920                 mov     fs:[eax], esp
0068AFCC   C645FF00               mov     byte ptr [ebp-$01], $00
0068AFD0   33C0                   xor     eax, eax
0068AFD2   55                     push    ebp
0068AFD3   689AB86800             push    $0068B89A

***** TRY
|
0068AFD8   64FF30                 push    dword ptr fs:[eax]
0068AFDB   648920                 mov     fs:[eax], esp
0068AFDE   33C0                   xor     eax, eax
0068AFE0   55                     push    ebp
0068AFE1   684BB86800             push    $0068B84B

***** TRY
|
0068AFE6   64FF30                 push    dword ptr fs:[eax]
0068AFE9   648920                 mov     fs:[eax], esp

* Reference to field TfrmAdicionaProduto.OFFS_03D5 : Byte
|
0068AFEC   80BED503000000         cmp     byte ptr [esi+$03D5], $00
0068AFF3   0F85AE070000           jnz     0068B7A7
0068AFF9   8BC6                   mov     eax, esi

* Reference to : TfrmAdicionaProduto._PROC_006896BC()
|
0068AFFB   E8BCE6FFFF             call    006896BC
0068B000   84C0                   test    al, al
0068B002   0F849F070000           jz      0068B7A7
0068B008   33C0                   xor     eax, eax
0068B00A   8945F0                 mov     [ebp-$10], eax
0068B00D   8945F4                 mov     [ebp-$0C], eax
0068B010   668945F8               mov     [ebp-$08], ax
0068B014   33C0                   xor     eax, eax
0068B016   8945E0                 mov     [ebp-$20], eax
0068B019   8945E4                 mov     [ebp-$1C], eax
0068B01C   668945E8               mov     [ebp-$18], ax
0068B020   33C0                   xor     eax, eax
0068B022   8945C0                 mov     [ebp-$40], eax
0068B025   8945C4                 mov     [ebp-$3C], eax
0068B028   668945C8               mov     [ebp-$38], ax
0068B02C   33C0                   xor     eax, eax
0068B02E   8945D0                 mov     [ebp-$30], eax
0068B031   8945D4                 mov     [ebp-$2C], eax
0068B034   668945D8               mov     [ebp-$28], ax
0068B038   8B03                   mov     eax, [ebx]

* Reference to field TfrmAdicionaProduto.OFFS_0850
|
0068B03A   8B8050080000           mov     eax, [eax+$0850]

* Reference to: DB.TDataSet.First(TDataSet);
|
0068B040   E8E7FFE5FF             call    004EB02C
0068B045   E9E7000000             jmp     0068B131
0068B04A   8D55BC                 lea     edx, [ebp-$44]
0068B04D   8B03                   mov     eax, [ebx]
0068B04F   8B809C0C0000           mov     eax, [eax+$0C9C]
0068B055   8B08                   mov     ecx, [eax]
0068B057   FF5160                 call    dword ptr [ecx+$60]
0068B05A   8B45BC                 mov     eax, [ebp-$44]
0068B05D   BA64B96800             mov     edx, $0068B964

* Reference to: System.@LStrCmp;
|
0068B062   E841A8D7FF             call    004058A8
0068B067   0F8580000000           jnz     0068B0ED
0068B06D   8B03                   mov     eax, [ebx]
0068B06F   8B8060080000           mov     eax, [eax+$0860]
0068B075   8B10                   mov     edx, [eax]
0068B077   FF5254                 call    dword ptr [edx+$54]
0068B07A   83C4F4                 add     esp, -$0C
0068B07D   DB3C24                 fstp    tbyte ptr [esp]
0068B080   9B                     wait
0068B081   A15CA97D00             mov     eax, dword ptr [$007DA95C]
0068B086   8B00                   mov     eax, [eax]
0068B088   50                     push    eax
0068B089   8B03                   mov     eax, [ebx]
0068B08B   8B8068080000           mov     eax, [eax+$0868]
0068B091   8B10                   mov     edx, [eax]
0068B093   FF5254                 call    dword ptr [edx+$54]
0068B096   83C4F4                 add     esp, -$0C
0068B099   DB3C24                 fstp    tbyte ptr [esp]
0068B09C   9B                     wait
0068B09D   8D55B8                 lea     edx, [ebp-$48]
0068B0A0   8B03                   mov     eax, [ebx]
0068B0A2   8B805C080000           mov     eax, [eax+$085C]
0068B0A8   8B08                   mov     ecx, [eax]
0068B0AA   FF5160                 call    dword ptr [ecx+$60]
0068B0AD   8B45B8                 mov     eax, [ebp-$48]
0068B0B0   50                     push    eax
0068B0B1   8D55B4                 lea     edx, [ebp-$4C]
0068B0B4   8B03                   mov     eax, [ebx]
0068B0B6   8B8058080000           mov     eax, [eax+$0858]
0068B0BC   8B08                   mov     ecx, [eax]
0068B0BE   FF5160                 call    dword ptr [ecx+$60]
0068B0C1   8B55B4                 mov     edx, [ebp-$4C]
0068B0C4   8BC6                   mov     eax, esi
0068B0C6   59                     pop     ecx

|
0068B0C7   E8E4090000             call    0068BAB0
0068B0CC   DB7DA8                 fstp    tbyte ptr [ebp-$58]
0068B0CF   9B                     wait
0068B0D0   8B03                   mov     eax, [ebx]

* Reference to field TfrmAdicionaProduto.OFFS_0864
|
0068B0D2   8B8064080000           mov     eax, [eax+$0864]
0068B0D8   8B10                   mov     edx, [eax]
0068B0DA   FF5254                 call    dword ptr [edx+$54]
0068B0DD   DB6DA8                 fld     tbyte ptr [ebp-$58]
0068B0E0   DEC9                   fmulp   st(1), st(0)
0068B0E2   DB6DE0                 fld     tbyte ptr [ebp-$20]
0068B0E5   DEC1                   faddp   st(1), st(0)
0068B0E7   DB7DE0                 fstp    tbyte ptr [ebp-$20]
0068B0EA   9B                     wait
0068B0EB   EB2A                   jmp     0068B117
0068B0ED   8B03                   mov     eax, [ebx]
0068B0EF   8B8064080000           mov     eax, [eax+$0864]
0068B0F5   8B10                   mov     edx, [eax]
0068B0F7   FF5254                 call    dword ptr [edx+$54]
0068B0FA   DD5DA0                 fstp    qword ptr [ebp-$60]
0068B0FD   9B                     wait
0068B0FE   8B03                   mov     eax, [ebx]
0068B100   8B8068080000           mov     eax, [eax+$0868]
0068B106   8B10                   mov     edx, [eax]
0068B108   FF5254                 call    dword ptr [edx+$54]
0068B10B   DC4DA0                 fmul    qword ptr [ebp-$60]
0068B10E   DB6DF0                 fld     tbyte ptr [ebp-$10]
0068B111   DEC1                   faddp   st(1), st(0)
0068B113   DB7DF0                 fstp    tbyte ptr [ebp-$10]
0068B116   9B                     wait
0068B117   DB6DC0                 fld     tbyte ptr [ebp-$40]
0068B11A   D80568B96800           fadd    dword ptr [$0068B968]
0068B120   DB7DC0                 fstp    tbyte ptr [ebp-$40]
0068B123   9B                     wait
0068B124   8B03                   mov     eax, [ebx]
0068B126   8B8050080000           mov     eax, [eax+$0850]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0068B12C   E81302E6FF             call    004EB344
0068B131   8B03                   mov     eax, [ebx]
0068B133   8B8050080000           mov     eax, [eax+$0850]
0068B139   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0068B140   0F8404FFFFFF           jz      0068B04A

* Reference to field TfrmAdicionaProduto.OFFS_03D5 : Byte
|
0068B146   C686D503000001         mov     byte ptr [esi+$03D5], $01
0068B14D   8B1588EC7D00           mov     edx, [$007DEC88]
0068B153   8BC6                   mov     eax, esi

|
0068B155   E8B6CAFFFF             call    00687C10
0068B15A   40                     inc     eax

* Reference to GlobalVar_007DEC98
|
0068B15B   A398EC7D00             mov     dword ptr [$007DEC98], eax
0068B160   8B03                   mov     eax, [ebx]

* Reference to field GlobalVar_007DEC98.OFFS_0850
|
0068B162   8B8050080000           mov     eax, [eax+$0850]

* Reference to : TFrmInfoAtu._PROC_007A66A4()
|
0068B168   E837B51100             call    007A66A4
0068B16D   8B03                   mov     eax, [ebx]
0068B16F   8B8050080000           mov     eax, [eax+$0850]

* Reference to: DB.TDataSet.First(TDataSet);
|
0068B175   E8B2FEE5FF             call    004EB02C
0068B17A   E913060000             jmp     0068B792
0068B17F   8B03                   mov     eax, [ebx]
0068B181   8B4074                 mov     eax, [eax+$74]

|
0068B184   E81BBB1100             call    007A6CA4
0068B189   84C0                   test    al, al
0068B18B   0F84F4050000           jz      0068B785
0068B191   8B03                   mov     eax, [ebx]
0068B193   8B80B4050000           mov     eax, [eax+$05B4]
0068B199   8B1588EC7D00           mov     edx, [$007DEC88]
0068B19F   8B08                   mov     ecx, [eax]
0068B1A1   FF91A8000000           call    dword ptr [ecx+$00A8]
0068B1A7   8B03                   mov     eax, [ebx]
0068B1A9   8B80B8050000           mov     eax, [eax+$05B8]
0068B1AF   8B158CEC7D00           mov     edx, [$007DEC8C]
0068B1B5   8B08                   mov     ecx, [eax]
0068B1B7   FF91A8000000           call    dword ptr [ecx+$00A8]
0068B1BD   8B03                   mov     eax, [ebx]
0068B1BF   8B80BC050000           mov     eax, [eax+$05BC]
0068B1C5   8B1598EC7D00           mov     edx, [$007DEC98]
0068B1CB   8B08                   mov     ecx, [eax]
0068B1CD   FF91A8000000           call    dword ptr [ecx+$00A8]
0068B1D3   8D559C                 lea     edx, [ebp-$64]
0068B1D6   8B03                   mov     eax, [ebx]
0068B1D8   8B8058080000           mov     eax, [eax+$0858]
0068B1DE   8B08                   mov     ecx, [eax]
0068B1E0   FF5160                 call    dword ptr [ecx+$60]
0068B1E3   8B559C                 mov     edx, [ebp-$64]
0068B1E6   8B03                   mov     eax, [ebx]
0068B1E8   8B80C0050000           mov     eax, [eax+$05C0]
0068B1EE   8B08                   mov     ecx, [eax]
0068B1F0   FF91B0000000           call    dword ptr [ecx+$00B0]
0068B1F6   8D5598                 lea     edx, [ebp-$68]
0068B1F9   8B03                   mov     eax, [ebx]
0068B1FB   8B808C0C0000           mov     eax, [eax+$0C8C]
0068B201   8B08                   mov     ecx, [eax]
0068B203   FF5160                 call    dword ptr [ecx+$60]
0068B206   8B5598                 mov     edx, [ebp-$68]
0068B209   8B03                   mov     eax, [ebx]
0068B20B   8B80C4050000           mov     eax, [eax+$05C4]
0068B211   8B08                   mov     ecx, [eax]
0068B213   FF91B0000000           call    dword ptr [ecx+$00B0]
0068B219   8D5594                 lea     edx, [ebp-$6C]
0068B21C   8B03                   mov     eax, [ebx]
0068B21E   8B805C080000           mov     eax, [eax+$085C]
0068B224   8B08                   mov     ecx, [eax]
0068B226   FF5160                 call    dword ptr [ecx+$60]
0068B229   8B5594                 mov     edx, [ebp-$6C]
0068B22C   8B03                   mov     eax, [ebx]
0068B22E   8B80C8050000           mov     eax, [eax+$05C8]
0068B234   8B08                   mov     ecx, [eax]
0068B236   FF91B0000000           call    dword ptr [ecx+$00B0]
0068B23C   8D5584                 lea     edx, [ebp-$7C]

* Reference to control TfrmAdicionaProduto.edQtdeLcto : TJvValidateEdit
|
0068B23F   8B8614030000           mov     eax, [esi+$0314]

|
0068B245   E86E7FFCFF             call    006531B8
0068B24A   8D4584                 lea     eax, [ebp-$7C]
0068B24D   50                     push    eax
0068B24E   8B03                   mov     eax, [ebx]
0068B250   8B8064080000           mov     eax, [eax+$0864]
0068B256   8B10                   mov     edx, [eax]
0068B258   FF5254                 call    dword ptr [edx+$54]
0068B25B   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]

* Reference to: Variants.@VarFromReal;
|
0068B261   E822DAD8FF             call    00418C88
0068B266   8D9574FFFFFF           lea     edx, [ebp+$FFFFFF74]
0068B26C   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0068B26D   E84A1ED9FF             call    0041D0BC
0068B272   8D4584                 lea     eax, [ebp-$7C]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0068B275   E86EB9D8FF             call    00416BE8
0068B27A   83C4F8                 add     esp, -$08
0068B27D   DD1C24                 fstp    qword ptr [esp]
0068B280   9B                     wait
0068B281   8B03                   mov     eax, [ebx]
0068B283   8B80D0050000           mov     eax, [eax+$05D0]
0068B289   8B10                   mov     edx, [eax]
0068B28B   FF92A4000000           call    dword ptr [edx+$00A4]
0068B291   8B03                   mov     eax, [ebx]
0068B293   8B80900C0000           mov     eax, [eax+$0C90]
0068B299   BA64B96800             mov     edx, $0068B964
0068B29E   8B08                   mov     ecx, [eax]
0068B2A0   FF91B0000000           call    dword ptr [ecx+$00B0]
0068B2A6   8B03                   mov     eax, [ebx]
0068B2A8   8B8068080000           mov     eax, [eax+$0868]
0068B2AE   8B10                   mov     edx, [eax]
0068B2B0   FF5254                 call    dword ptr [edx+$54]
0068B2B3   D81D6CB96800           fcomp   dword ptr [$0068B96C]
0068B2B9   DFE0                   fstsw   ax
0068B2BB   9E                     sahf
0068B2BC   0F86AB000000           jbe     0068B36D
0068B2C2   8D9564FFFFFF           lea     edx, [ebp+$FFFFFF64]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
0068B2C8   8B8618030000           mov     eax, [esi+$0318]

|
0068B2CE   E8E57EFCFF             call    006531B8
0068B2D3   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
0068B2D9   50                     push    eax
0068B2DA   DB6DE0                 fld     tbyte ptr [ebp-$20]
0068B2DD   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]

* Reference to: Variants.@VarFromReal;
|
0068B2E3   E8A0D9D8FF             call    00418C88
0068B2E8   8D9554FFFFFF           lea     edx, [ebp+$FFFFFF54]
0068B2EE   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0068B2EF   E8BC1DD9FF             call    0041D0B0
0068B2F4   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
0068B2FA   50                     push    eax
0068B2FB   8B03                   mov     eax, [ebx]
0068B2FD   8B8068080000           mov     eax, [eax+$0868]
0068B303   8B10                   mov     edx, [eax]
0068B305   FF5254                 call    dword ptr [edx+$54]
0068B308   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]

* Reference to: Variants.@VarFromReal;
|
0068B30E   E875D9D8FF             call    00418C88
0068B313   8D9544FFFFFF           lea     edx, [ebp+$FFFFFF44]
0068B319   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0068B31A   E89D1DD9FF             call    0041D0BC
0068B31F   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
0068B325   50                     push    eax
0068B326   DB6DF0                 fld     tbyte ptr [ebp-$10]
0068B329   8D8534FFFFFF           lea     eax, [ebp+$FFFFFF34]

* Reference to: Variants.@VarFromReal;
|
0068B32F   E854D9D8FF             call    00418C88
0068B334   8D9534FFFFFF           lea     edx, [ebp+$FFFFFF34]
0068B33A   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0068B33B   E8B81DD9FF             call    0041D0F8
0068B340   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0068B346   E89DB8D8FF             call    00416BE8
0068B34B   83C4F8                 add     esp, -$08
0068B34E   DD1C24                 fstp    qword ptr [esp]
0068B351   9B                     wait
0068B352   8B03                   mov     eax, [ebx]
0068B354   8B8040060000           mov     eax, [eax+$0640]
0068B35A   8B10                   mov     edx, [eax]
0068B35C   FF5258                 call    dword ptr [edx+$58]

|
0068B35F   E8A05F1100             call    007A1304
0068B364   DB7DD0                 fstp    tbyte ptr [ebp-$30]
0068B367   9B                     wait
0068B368   E9CD000000             jmp     0068B43A
0068B36D   DB6DF0                 fld     tbyte ptr [ebp-$10]
0068B370   D81D6CB96800           fcomp   dword ptr [$0068B96C]
0068B376   DFE0                   fstsw   ax
0068B378   9E                     sahf
0068B379   760E                   jbe     0068B389
0068B37B   33C0                   xor     eax, eax
0068B37D   8945D0                 mov     [ebp-$30], eax
0068B380   8945D4                 mov     [ebp-$2C], eax
0068B383   668945D8               mov     [ebp-$28], ax
0068B387   EB68                   jmp     0068B3F1
0068B389   DB6DC0                 fld     tbyte ptr [ebp-$40]
0068B38C   D81D6CB96800           fcomp   dword ptr [$0068B96C]
0068B392   DFE0                   fstsw   ax
0068B394   9E                     sahf
0068B395   765A                   jbe     0068B3F1
0068B397   8D9524FFFFFF           lea     edx, [ebp+$FFFFFF24]

* Reference to control TfrmAdicionaProduto.EdVlrUnit : TJvValidateEdit
|
0068B39D   8B8618030000           mov     eax, [esi+$0318]

|
0068B3A3   E8107EFCFF             call    006531B8
0068B3A8   8D8524FFFFFF           lea     eax, [ebp+$FFFFFF24]
0068B3AE   50                     push    eax
0068B3AF   DB6DC0                 fld     tbyte ptr [ebp-$40]
0068B3B2   8D8514FFFFFF           lea     eax, [ebp+$FFFFFF14]

* Reference to: Variants.@VarFromReal;
|
0068B3B8   E8CBD8D8FF             call    00418C88
0068B3BD   8D9514FFFFFF           lea     edx, [ebp+$FFFFFF14]
0068B3C3   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
0068B3C4   E82F1DD9FF             call    0041D0F8
0068B3C9   8D8524FFFFFF           lea     eax, [ebp+$FFFFFF24]

* Reference to: Variants.@VarToReal(TVarData;TVarData):Extended;
|
0068B3CF   E814B8D8FF             call    00416BE8
0068B3D4   83C4F8                 add     esp, -$08
0068B3D7   DD1C24                 fstp    qword ptr [esp]
0068B3DA   9B                     wait
0068B3DB   8B03                   mov     eax, [ebx]
0068B3DD   8B8040060000           mov     eax, [eax+$0640]
0068B3E3   8B10                   mov     edx, [eax]
0068B3E5   FF5258                 call    dword ptr [edx+$58]

|
0068B3E8   E8175F1100             call    007A1304
0068B3ED   DB7DD0                 fstp    tbyte ptr [ebp-$30]
0068B3F0   9B                     wait
0068B3F1   6A00                   push    $00

* Possible String Reference to: 'O valor de custo do produto '
|
0068B3F3   6878B96800             push    $0068B978
0068B3F8   8D950CFFFFFF           lea     edx, [ebp+$FFFFFF0C]
0068B3FE   8B03                   mov     eax, [ebx]
0068B400   8B808C0C0000           mov     eax, [eax+$0C8C]
0068B406   8B08                   mov     ecx, [eax]
0068B408   FF5160                 call    dword ptr [ecx+$60]
0068B40B   FFB50CFFFFFF           push    dword ptr [ebp+$FFFFFF0C]

* Possible String Reference to: ' na composiÁ„o deve ser preenchido!'
|
0068B411   68A0B96800             push    $0068B9A0
0068B416   8D8510FFFFFF           lea     eax, [ebp+$FFFFFF10]
0068B41C   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0068B421   E8F6A3D7FF             call    0040581C
0068B426   8B8510FFFFFF           mov     eax, [ebp+$FFFFFF10]
0068B42C   668B0DC4B96800         mov     cx, word ptr [$0068B9C4]
0068B433   33D2                   xor     edx, edx

|
0068B435   E8F286DBFF             call    00443B2C
0068B43A   8D9508FFFFFF           lea     edx, [ebp+$FFFFFF08]
0068B440   8B03                   mov     eax, [ebx]
0068B442   8B809C0C0000           mov     eax, [eax+$0C9C]
0068B448   8B08                   mov     ecx, [eax]
0068B44A   FF5160                 call    dword ptr [ecx+$60]
0068B44D   8B8508FFFFFF           mov     eax, [ebp+$FFFFFF08]
0068B453   BA64B96800             mov     edx, $0068B964

* Reference to: System.@LStrCmp;
|
0068B458   E84BA4D7FF             call    004058A8
0068B45D   757B                   jnz     0068B4DA
0068B45F   8B03                   mov     eax, [ebx]
0068B461   8B8060080000           mov     eax, [eax+$0860]
0068B467   8B10                   mov     edx, [eax]
0068B469   FF5254                 call    dword ptr [edx+$54]
0068B46C   83C4F4                 add     esp, -$0C
0068B46F   DB3C24                 fstp    tbyte ptr [esp]
0068B472   9B                     wait
0068B473   A15CA97D00             mov     eax, dword ptr [$007DA95C]
0068B478   8B00                   mov     eax, [eax]
0068B47A   50                     push    eax
0068B47B   668B45D8               mov     ax, word ptr [ebp-$28]
0068B47F   50                     push    eax
0068B480   FF75D4                 push    dword ptr [ebp-$2C]
0068B483   FF75D0                 push    dword ptr [ebp-$30]
0068B486   8D9504FFFFFF           lea     edx, [ebp+$FFFFFF04]
0068B48C   8B03                   mov     eax, [ebx]
0068B48E   8B805C080000           mov     eax, [eax+$085C]
0068B494   8B08                   mov     ecx, [eax]
0068B496   FF5160                 call    dword ptr [ecx+$60]
0068B499   8B8504FFFFFF           mov     eax, [ebp+$FFFFFF04]
0068B49F   50                     push    eax
0068B4A0   8D9500FFFFFF           lea     edx, [ebp+$FFFFFF00]
0068B4A6   8B03                   mov     eax, [ebx]
0068B4A8   8B8058080000           mov     eax, [eax+$0858]
0068B4AE   8B08                   mov     ecx, [eax]
0068B4B0   FF5160                 call    dword ptr [ecx+$60]
0068B4B3   8B9500FFFFFF           mov     edx, [ebp+$FFFFFF00]
0068B4B9   8BC6                   mov     eax, esi
0068B4BB   59                     pop     ecx

|
0068B4BC   E8EF050000             call    0068BAB0
0068B4C1   83C4F8                 add     esp, -$08
0068B4C4   DD1C24                 fstp    qword ptr [esp]
0068B4C7   9B                     wait
0068B4C8   8B03                   mov     eax, [ebx]

* Reference to field TfrmAdicionaProduto.OFFS_05D4
|
0068B4CA   8B80D4050000           mov     eax, [eax+$05D4]
0068B4D0   8B10                   mov     edx, [eax]
0068B4D2   FF92A4000000           call    dword ptr [edx+$00A4]
0068B4D8   EB1A                   jmp     0068B4F4
0068B4DA   DB6DD0                 fld     tbyte ptr [ebp-$30]
0068B4DD   83C4F8                 add     esp, -$08
0068B4E0   DD1C24                 fstp    qword ptr [esp]
0068B4E3   9B                     wait
0068B4E4   8B03                   mov     eax, [ebx]
0068B4E6   8B80D4050000           mov     eax, [eax+$05D4]
0068B4EC   8B10                   mov     edx, [eax]
0068B4EE   FF92A4000000           call    dword ptr [edx+$00A4]
0068B4F4   8B03                   mov     eax, [ebx]
0068B4F6   8B80D0050000           mov     eax, [eax+$05D0]
0068B4FC   8B10                   mov     edx, [eax]
0068B4FE   FF5254                 call    dword ptr [edx+$54]
0068B501   DD5DA0                 fstp    qword ptr [ebp-$60]
0068B504   9B                     wait
0068B505   8B03                   mov     eax, [ebx]
0068B507   8B80D4050000           mov     eax, [eax+$05D4]
0068B50D   8B10                   mov     edx, [eax]
0068B50F   FF5254                 call    dword ptr [edx+$54]
0068B512   DC4DA0                 fmul    qword ptr [ebp-$60]
0068B515   83C4F8                 add     esp, -$08
0068B518   DD1C24                 fstp    qword ptr [esp]
0068B51B   9B                     wait
0068B51C   B802000000             mov     eax, $00000002

|
0068B521   E8DE5D1100             call    007A1304
0068B526   83C4F8                 add     esp, -$08
0068B529   DD1C24                 fstp    qword ptr [esp]
0068B52C   9B                     wait
0068B52D   8B03                   mov     eax, [ebx]
0068B52F   8B80D8050000           mov     eax, [eax+$05D8]
0068B535   8B10                   mov     edx, [eax]
0068B537   FF92A4000000           call    dword ptr [edx+$00A4]
0068B53D   8D95FCFEFFFF           lea     edx, [ebp+$FFFFFEFC]

* Reference to control TfrmAdicionaProduto.EdCodFunc : TJvComboEdit
|
0068B543   8B86A4030000           mov     eax, [esi+$03A4]

* Reference to: Mask.TCustomMaskEdit.GetText(TCustomMaskEdit):TMaskedText;
|
0068B549   E8EE29E7FF             call    004FDF3C
0068B54E   8B95FCFEFFFF           mov     edx, [ebp+$FFFFFEFC]
0068B554   8B03                   mov     eax, [ebx]

* Reference to field TJvComboEdit.OFFS_05DC
|
0068B556   8B80DC050000           mov     eax, [eax+$05DC]
0068B55C   8B08                   mov     ecx, [eax]
0068B55E   FF91B0000000           call    dword ptr [ecx+$00B0]
0068B564   8B03                   mov     eax, [ebx]
0068B566   8B80E0050000           mov     eax, [eax+$05E0]
0068B56C   BAD0B96800             mov     edx, $0068B9D0
0068B571   8B08                   mov     ecx, [eax]
0068B573   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Time:TDateTime;
|
0068B579   E8AA26D8FF             call    0040DC28
0068B57E   83C4F8                 add     esp, -$08
0068B581   DD1C24                 fstp    qword ptr [esp]
0068B584   9B                     wait
0068B585   8B03                   mov     eax, [ebx]
0068B587   8B80E4050000           mov     eax, [eax+$05E4]
0068B58D   8B10                   mov     edx, [eax]
0068B58F   FF92A0000000           call    dword ptr [edx+$00A0]
0068B595   8D95F8FEFFFF           lea     edx, [ebp+$FFFFFEF8]
0068B59B   8B03                   mov     eax, [ebx]
0068B59D   8B8058080000           mov     eax, [eax+$0858]
0068B5A3   8B08                   mov     ecx, [eax]
0068B5A5   FF5160                 call    dword ptr [ecx+$60]
0068B5A8   8B85F8FEFFFF           mov     eax, [ebp+$FFFFFEF8]

|
0068B5AE   E87D8F1200             call    007B4530
0068B5B3   8BD0                   mov     edx, eax
0068B5B5   8B03                   mov     eax, [ebx]
0068B5B7   8B80100C0000           mov     eax, [eax+$0C10]
0068B5BD   8B08                   mov     ecx, [eax]
0068B5BF   FF91A8000000           call    dword ptr [ecx+$00A8]
0068B5C5   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]
0068B5CB   50                     push    eax
0068B5CC   8D85D4FEFFFF           lea     eax, [ebp+$FFFFFED4]
0068B5D2   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0068B5D4   E8EBD6D8FF             call    00418CC4
0068B5D9   8D85D4FEFFFF           lea     eax, [ebp+$FFFFFED4]
0068B5DF   50                     push    eax
0068B5E0   B056                   mov     al, $56
0068B5E2   8885C1FEFFFF           mov     [ebp+$FFFFFEC1], al
0068B5E8   C685C0FEFFFF01         mov     byte ptr [ebp+$FFFFFEC0], $01
0068B5EF   8D85C4FEFFFF           lea     eax, [ebp+$FFFFFEC4]
0068B5F5   8D95C0FEFFFF           lea     edx, [ebp+$FFFFFEC0]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
0068B5FB   E8F0D6D8FF             call    00418CF0
0068B600   8D95C4FEFFFF           lea     edx, [ebp+$FFFFFEC4]

* Reference to control TfrmAdicionaProduto.rgMesaViagem : TRadioGroup
|
0068B606   8B86B0030000           mov     eax, [esi+$03B0]

* Reference to field TRadioGroup.ItemIndex : Integer
|
0068B60C   83B81802000001         cmp     dword ptr [eax+$0218], +$01
0068B613   0F94C0                 setz    al
0068B616   59                     pop     ecx

|
0068B617   E8504D1100             call    007A036C
0068B61C   8D95E4FEFFFF           lea     edx, [ebp+$FFFFFEE4]
0068B622   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
0068B628   E8CBC5D8FF             call    00417BF8
0068B62D   8B95F4FEFFFF           mov     edx, [ebp+$FFFFFEF4]
0068B633   8B03                   mov     eax, [ebx]
0068B635   8B801C0C0000           mov     eax, [eax+$0C1C]
0068B63B   8B08                   mov     ecx, [eax]
0068B63D   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to: SysUtils.Time:TDateTime;
|
0068B643   E8E025D8FF             call    0040DC28
0068B648   83C4F8                 add     esp, -$08
0068B64B   DD1C24                 fstp    qword ptr [esp]
0068B64E   9B                     wait
0068B64F   8D95BCFEFFFF           lea     edx, [ebp+$FFFFFEBC]

* Possible String Reference to: 'HH:MM'
|
0068B655   B8DCB96800             mov     eax, $0068B9DC

|
0068B65A   E87932D8FF             call    0040E8D8
0068B65F   8B95BCFEFFFF           mov     edx, [ebp+$FFFFFEBC]
0068B665   8B03                   mov     eax, [ebx]
0068B667   8B80340C0000           mov     eax, [eax+$0C34]
0068B66D   8B08                   mov     ecx, [eax]
0068B66F   FF91B0000000           call    dword ptr [ecx+$00B0]
0068B675   8D95B8FEFFFF           lea     edx, [ebp+$FFFFFEB8]

* Reference to control TfrmAdicionaProduto.EdHistorico : TEdit
|
0068B67B   8B86B8030000           mov     eax, [esi+$03B8]

* Reference to: Controls.TControl.GetText(TControl):TCaption;
|
0068B681   E84680E0FF             call    004936CC
0068B686   8B95B8FEFFFF           mov     edx, [ebp+$FFFFFEB8]
0068B68C   8B03                   mov     eax, [ebx]

* Reference to field TEdit.OFFS_0C38
|
0068B68E   8B80380C0000           mov     eax, [eax+$0C38]
0068B694   8B08                   mov     ecx, [eax]
0068B696   FF91B0000000           call    dword ptr [ecx+$00B0]

* Reference to control TfrmAdicionaProduto.EdHistorico : TEdit
|
0068B69C   8B86B8030000           mov     eax, [esi+$03B8]
0068B6A2   33D2                   xor     edx, edx

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0068B6A4   E85380E0FF             call    004936FC
0068B6A9   8B03                   mov     eax, [ebx]

* Reference to field TEdit.OFFS_0C78
|
0068B6AB   8B80780C0000           mov     eax, [eax+$0C78]
0068B6B1   BAECB96800             mov     edx, $0068B9EC
0068B6B6   8B08                   mov     ecx, [eax]
0068B6B8   FF91B0000000           call    dword ptr [ecx+$00B0]
0068B6BE   8D95B0FEFFFF           lea     edx, [ebp+$FFFFFEB0]
0068B6C4   8B03                   mov     eax, [ebx]
0068B6C6   8B80100C0000           mov     eax, [eax+$0C10]
0068B6CC   8B08                   mov     ecx, [eax]
0068B6CE   FF5160                 call    dword ptr [ecx+$60]
0068B6D1   8B8DB0FEFFFF           mov     ecx, [ebp+$FFFFFEB0]
0068B6D7   8D85B4FEFFFF           lea     eax, [ebp+$FFFFFEB4]

* Possible String Reference to: 'CODIMPR = '
|
0068B6DD   BAF8B96800             mov     edx, $0068B9F8

* Reference to: System.@LStrCat3;
|
0068B6E2   E8C1A0D7FF             call    004057A8
0068B6E7   8B85B4FEFFFF           mov     eax, [ebp+$FFFFFEB4]
0068B6ED   50                     push    eax
0068B6EE   6A00                   push    $00
0068B6F0   B90CBA6800             mov     ecx, $0068BA0C

* Possible String Reference to: 'IMPRGRILL'
|
0068B6F5   BA18BA6800             mov     edx, $0068BA18
0068B6FA   33C0                   xor     eax, eax

|
0068B6FC   E8EFD71100             call    007A8EF0
0068B701   84C0                   test    al, al
0068B703   7446                   jz      0068B74B
0068B705   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0068B70A   8B00                   mov     eax, [eax]
0068B70C   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'NAOIMPRIME'
|
0068B70F   BA2CBA6800             mov     edx, $0068BA2C

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0068B714   E8339FEDFF             call    0056564C
0068B719   8D95ACFEFFFF           lea     edx, [ebp+$FFFFFEAC]

* Reference to: IBSQL.TIBXSQLVAR.GetAsString(TIBXSQLVAR):AnsiString;
|
0068B71F   E82079EDFF             call    00563044
0068B724   8B85ACFEFFFF           mov     eax, [ebp+$FFFFFEAC]
0068B72A   BA64B96800             mov     edx, $0068B964

* Reference to: System.@LStrCmp;
|
0068B72F   E874A1D7FF             call    004058A8
0068B734   7515                   jnz     0068B74B
0068B736   8B03                   mov     eax, [ebx]
0068B738   8B80140C0000           mov     eax, [eax+$0C14]
0068B73E   BA40BA6800             mov     edx, $0068BA40
0068B743   8B08                   mov     ecx, [eax]
0068B745   FF91B0000000           call    dword ptr [ecx+$00B0]
0068B74B   8B03                   mov     eax, [ebx]
0068B74D   8B4074                 mov     eax, [eax+$74]

|
0068B750   E80BB81100             call    007A6F60
0068B755   FF0598EC7D00           inc     dword ptr [$007DEC98]

* Reference to field TfrmAdicionaProduto.OFFS_03D4 : Byte
|
0068B75B   C686D403000001         mov     byte ptr [esi+$03D4], $01
0068B762   8B03                   mov     eax, [ebx]
0068B764   8B4074                 mov     eax, [eax+$74]

* Possible String Reference to: 'VLRTOTAL'
|
0068B767   BA4CBA6800             mov     edx, $0068BA4C

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0068B76C   E893E4E5FF             call    004E9C04
0068B771   8B10                   mov     edx, [eax]
0068B773   FF5254                 call    dword ptr [edx+$54]
0068B776   DB2D9CEC7D00           fld     tbyte ptr [$007DEC9C]
0068B77C   DEC1                   faddp   st(1), st(0)
0068B77E   DB3D9CEC7D00           fstp    tbyte ptr [$007DEC9C]
0068B784   9B                     wait
0068B785   8B03                   mov     eax, [ebx]
0068B787   8B8050080000           mov     eax, [eax+$0850]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0068B78D   E8B2FBE5FF             call    004EB344
0068B792   8B03                   mov     eax, [ebx]
0068B794   8B8050080000           mov     eax, [eax+$0850]
0068B79A   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0068B7A1   0F84D8F9FFFF           jz      0068B17F
0068B7A7   8B03                   mov     eax, [ebx]
0068B7A9   8B4074                 mov     eax, [eax+$74]

|
0068B7AC   E8BBD11100             call    007A896C
0068B7B1   668B05A4EC7D00         mov     ax, word ptr [$007DECA4]
0068B7B8   50                     push    eax
0068B7B9   FF35A0EC7D00           push    dword ptr [$007DECA0]
0068B7BF   FF359CEC7D00           push    dword ptr [$007DEC9C]
0068B7C5   8D95A4FEFFFF           lea     edx, [ebp+$FFFFFEA4]

* Possible String Reference to: '###,###,##0.00'
|
0068B7CB   B860BA6800             mov     eax, $0068BA60

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0068B7D0   E8671DD8FF             call    0040D53C
0068B7D5   8B8DA4FEFFFF           mov     ecx, [ebp+$FFFFFEA4]
0068B7DB   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Possible String Reference to: 'Valor total: $ '
|
0068B7E1   BA78BA6800             mov     edx, $0068BA78

* Reference to: System.@LStrCat3;
|
0068B7E6   E8BD9FD7FF             call    004057A8
0068B7EB   8B95A8FEFFFF           mov     edx, [ebp+$FFFFFEA8]

* Reference to control TfrmAdicionaProduto.lbVlrTotal : TLabel
|
0068B7F1   8B8650030000           mov     eax, [esi+$0350]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0068B7F7   E8007FE0FF             call    004936FC

* Reference to control TfrmAdicionaProduto.btCancelaItem : TBitBtn
|
0068B7FC   8B86A0030000           mov     eax, [esi+$03A0]
0068B802   B201                   mov     dl, $01
0068B804   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TBitBtn.OFFS_64
|
0068B806   FF5164                 call    dword ptr [ecx+$64]
0068B809   8BC6                   mov     eax, esi

|
0068B80B   E898D3FFFF             call    00688BA8

* Reference to control TfrmAdicionaProduto.edCodProd : TJvComboEdit
|
0068B810   8B8610030000           mov     eax, [esi+$0310]
0068B816   8B10                   mov     edx, [eax]

* Possible reference to virtual method TJvComboEdit.OFFS_00C4
|
0068B818   FF92C4000000           call    dword ptr [edx+$00C4]
0068B81E   A130AE7D00             mov     eax, dword ptr [$007DAE30]
0068B823   8B00                   mov     eax, [eax]
0068B825   8B1554AE7D00           mov     edx, [$007DAE54]
0068B82B   8B12                   mov     edx, [edx]
0068B82D   8982DC000000           mov     [edx+$00DC], eax
0068B833   C782D8000000C0007D00   mov     dword ptr [edx+$00D8], $007D00C0
0068B83D   C645FF01               mov     byte ptr [ebp-$01], $01
0068B841   33C0                   xor     eax, eax
0068B843   5A                     pop     edx
0068B844   59                     pop     ecx
0068B845   59                     pop     ecx
0068B846   648910                 mov     fs:[eax], edx
0068B849   EB41                   jmp     0068B88C

* Reference to: System.@HandleOnException;
|
0068B84B   E96093D7FF             jmp     00404BB0
0068B850   0100                   add     [eax], eax
0068B852   0000                   add     [eax], al
0068B854   40                     inc     eax
0068B855   95                     xchg    eax, ebp
0068B856   40                     inc     eax
0068B857   005CB868               add     [eax+edi*4+$68], bl
0068B85B   0089C36A008B           add     [ecx+$8B006AC3], cl
0068B861   4B                     dec     ebx
0068B862   048D                   add     al, -$73
0068B864   85A0FEFFFFBA           test    [eax+$BAFFFFFE], esp
0068B86A   90                     nop
0068B86B   BA6800E835             mov     edx, $35E80068
0068B870   9F                     lahf
0068B871   D7                     xlat
0068B872   FF8B85A0FEFF           dec     dword ptr [ebx+$FFFEA085]
0068B878   FF668B                 jmp     dword ptr [esi-$75]
0068B87B   0DC4B96800             or      eax, $0068B9C4
0068B880   B201                   mov     dl, $01

|
0068B882   E8A582DBFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0068B887   E82496D7FF             call    00404EB0

****** END
|
0068B88C   33C0                   xor     eax, eax
0068B88E   5A                     pop     edx
0068B88F   59                     pop     ecx
0068B890   59                     pop     ecx
0068B891   648910                 mov     fs:[eax], edx

****** FINALLY
|
0068B894   68A1B86800             push    $0068B8A1
0068B899   C3                     ret


* Reference to: System.@HandleFinally;
|
0068B89A   E99994D7FF             jmp     00404D38
0068B89F   EBF8                   jmp     0068B899

****** END
|
0068B8A1   33C0                   xor     eax, eax
0068B8A3   5A                     pop     edx
0068B8A4   59                     pop     ecx
0068B8A5   59                     pop     ecx
0068B8A6   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äEˇ_^[ãÂ]√'
|
0068B8A9   6850B96800             push    $0068B950
0068B8AE   8D85A0FEFFFF           lea     eax, [ebp+$FFFFFEA0]
0068B8B4   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068B8B9   E8029CD7FF             call    004054C0
0068B8BE   8D85B8FEFFFF           lea     eax, [ebp+$FFFFFEB8]

* Reference to: System.@LStrClr(void;void);
|
0068B8C4   E8D39BD7FF             call    0040549C
0068B8C9   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]

* Reference to: System.@LStrClr(void;void);
|
0068B8CF   E8C89BD7FF             call    0040549C
0068B8D4   8D85C4FEFFFF           lea     eax, [ebp+$FFFFFEC4]

* Reference to object Variant
|
0068B8DA   8B1524114000           mov     edx, [$00401124]
0068B8E0   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0068B8E5   E8B2A7D7FF             call    0040609C
0068B8EA   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
0068B8F0   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068B8F5   E8C69BD7FF             call    004054C0
0068B8FA   8D85FCFEFFFF           lea     eax, [ebp+$FFFFFEFC]

* Reference to: System.@LStrClr(void;void);
|
0068B900   E8979BD7FF             call    0040549C
0068B905   8D8500FFFFFF           lea     eax, [ebp+$FFFFFF00]
0068B90B   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068B910   E8AB9BD7FF             call    004054C0
0068B915   8D8514FFFFFF           lea     eax, [ebp+$FFFFFF14]

* Reference to object Variant
|
0068B91B   8B1524114000           mov     edx, [$00401124]
0068B921   B908000000             mov     ecx, $00000008

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0068B926   E871A7D7FF             call    0040609C
0068B92B   8D4594                 lea     eax, [ebp-$6C]
0068B92E   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068B933   E8889BD7FF             call    004054C0
0068B938   8D45B4                 lea     eax, [ebp-$4C]
0068B93B   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068B940   E87B9BD7FF             call    004054C0
0068B945   C3                     ret


* Reference to: System.@HandleFinally;
|
0068B946   E9ED93D7FF             jmp     00404D38
0068B94B   E95EFFFFFF             jmp     0068B8AE

****** END
|
0068B950   8A45FF                 mov     al, byte ptr [ebp-$01]
0068B953   5F                     pop     edi
0068B954   5E                     pop     esi
0068B955   5B                     pop     ebx
0068B956   8BE5                   mov     esp, ebp
0068B958   5D                     pop     ebp
0068B959   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068B946(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0068B946   E9ED93D7FF             jmp     00404D38

|
0068B94B   E95EFFFFFF             jmp     0068B8AE
0068B950   8A45FF                 mov     al, byte ptr [ebp-$01]
0068B953   5F                     pop     edi
0068B954   5E                     pop     esi
0068B955   5B                     pop     ebx
0068B956   8BE5                   mov     esp, ebp
0068B958   5D                     pop     ebp
0068B959   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068BAB1(Sender : TObject);
begin
(*
0068BAB1   8BEC                   mov     ebp, esp
0068BAB3   83C490                 add     esp, -$70
0068BAB6   53                     push    ebx
0068BAB7   56                     push    esi
0068BAB8   57                     push    edi
0068BAB9   33DB                   xor     ebx, ebx
0068BABB   895D90                 mov     [ebp-$70], ebx
0068BABE   895DA4                 mov     [ebp-$5C], ebx
0068BAC1   895DCC                 mov     [ebp-$34], ebx
0068BAC4   895DE4                 mov     [ebp-$1C], ebx
0068BAC7   894DF8                 mov     [ebp-$08], ecx
0068BACA   8955FC                 mov     [ebp-$04], edx
0068BACD   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0068BAD0   E8779ED7FF             call    0040594C
0068BAD5   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0068BAD8   E86F9ED7FF             call    0040594C
0068BADD   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0068BAE0   E8679ED7FF             call    0040594C
0068BAE5   33C0                   xor     eax, eax
0068BAE7   55                     push    ebp
0068BAE8   682BBD6800             push    $0068BD2B

***** TRY
|
0068BAED   64FF30                 push    dword ptr fs:[eax]
0068BAF0   648920                 mov     fs:[eax], esp
0068BAF3   8B4508                 mov     eax, [ebp+$08]
0068BAF6   8945E8                 mov     [ebp-$18], eax
0068BAF9   8B450C                 mov     eax, [ebp+$0C]
0068BAFC   8945EC                 mov     [ebp-$14], eax
0068BAFF   668B4510               mov     ax, word ptr [ebp+$10]
0068BB03   668945F0               mov     [ebp-$10], ax
0068BB07   33C0                   xor     eax, eax
0068BB09   55                     push    ebp
0068BB0A   68E1BC6800             push    $0068BCE1

***** TRY
|
0068BB0F   64FF30                 push    dword ptr fs:[eax]
0068BB12   648920                 mov     fs:[eax], esp
0068BB15   33C0                   xor     eax, eax
0068BB17   55                     push    ebp
0068BB18   6898BC6800             push    $0068BC98

***** TRY
|
0068BB1D   64FF30                 push    dword ptr fs:[eax]
0068BB20   648920                 mov     fs:[eax], esp
0068BB23   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0068BB28   8B00                   mov     eax, [eax]
0068BB2A   8B8098050000           mov     eax, [eax+$0598]
0068BB30   8B10                   mov     edx, [eax]
0068BB32   FF5244                 call    dword ptr [edx+$44]
0068BB35   84C0                   test    al, al
0068BB37   0F84B6000000           jz      0068BBF3
0068BB3D   6A04                   push    $04
0068BB3F   8D45E4                 lea     eax, [ebp-$1C]
0068BB42   50                     push    eax
0068BB43   8B45FC                 mov     eax, [ebp-$04]
0068BB46   8945D0                 mov     [ebp-$30], eax
0068BB49   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
0068BB4E   8B00                   mov     eax, [eax]
0068BB50   8945D4                 mov     [ebp-$2C], eax
0068BB53   8B45F8                 mov     eax, [ebp-$08]
0068BB56   8945D8                 mov     [ebp-$28], eax
0068BB59   668B4520               mov     ax, word ptr [ebp+$20]
0068BB5D   50                     push    eax
0068BB5E   FF751C                 push    dword ptr [ebp+$1C]
0068BB61   FF7518                 push    dword ptr [ebp+$18]
0068BB64   8D45CC                 lea     eax, [ebp-$34]

|
0068BB67   E88C551100             call    007A10F8
0068BB6C   8B45CC                 mov     eax, [ebp-$34]
0068BB6F   8945DC                 mov     [ebp-$24], eax
0068BB72   8B4514                 mov     eax, [ebp+$14]
0068BB75   8945E0                 mov     [ebp-$20], eax
0068BB78   8D45D0                 lea     eax, [ebp-$30]
0068BB7B   50                     push    eax

* Possible String Reference to: 'CodProd'
|
0068BB7C   B848BD6800             mov     eax, $0068BD48
0068BB81   8945B8                 mov     [ebp-$48], eax

* Possible String Reference to: 'Filial'
|
0068BB84   B858BD6800             mov     eax, $0068BD58
0068BB89   8945BC                 mov     [ebp-$44], eax

* Possible String Reference to: 'UnidMed'
|
0068BB8C   B868BD6800             mov     eax, $0068BD68
0068BB91   8945C0                 mov     [ebp-$40], eax

* Possible String Reference to: 'QtdeUnidMed'
|
0068BB94   B878BD6800             mov     eax, $0068BD78
0068BB99   8945C4                 mov     [ebp-$3C], eax

* Possible String Reference to: 'TabPreco'
|
0068BB9C   B88CBD6800             mov     eax, $0068BD8C
0068BBA1   8945C8                 mov     [ebp-$38], eax
0068BBA4   8D45B8                 lea     eax, [ebp-$48]
0068BBA7   BA04000000             mov     edx, $00000004
0068BBAC   59                     pop     ecx

|
0068BBAD   E80E431200             call    007AFEC0
0068BBB2   8B45E4                 mov     eax, [ebp-$1C]
0068BBB5   50                     push    eax
0068BBB6   6A00                   push    $00
0068BBB8   B9A0BD6800             mov     ecx, $0068BDA0

* Possible String Reference to: 'PRODUNID'
|
0068BBBD   BAACBD6800             mov     edx, $0068BDAC
0068BBC2   33C0                   xor     eax, eax

|
0068BBC4   E827D31100             call    007A8EF0
0068BBC9   84C0                   test    al, al
0068BBCB   0F84BD000000           jz      0068BC8E
0068BBD1   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0068BBD6   8B00                   mov     eax, [eax]
0068BBD8   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'VlrUnit'
|
0068BBDB   BAC0BD6800             mov     edx, $0068BDC0

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0068BBE0   E8679AEDFF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsFloat(TIBXSQLVAR):Float;
|
0068BBE5   E8E271EDFF             call    00562DCC
0068BBEA   DB7DE8                 fstp    tbyte ptr [ebp-$18]
0068BBED   9B                     wait
0068BBEE   E99B000000             jmp     0068BC8E
0068BBF3   6A03                   push    $03
0068BBF5   8D45E4                 lea     eax, [ebp-$1C]
0068BBF8   50                     push    eax
0068BBF9   8B45FC                 mov     eax, [ebp-$04]
0068BBFC   8945A8                 mov     [ebp-$58], eax
0068BBFF   8B45F8                 mov     eax, [ebp-$08]
0068BC02   8945AC                 mov     [ebp-$54], eax
0068BC05   668B4520               mov     ax, word ptr [ebp+$20]
0068BC09   50                     push    eax
0068BC0A   FF751C                 push    dword ptr [ebp+$1C]
0068BC0D   FF7518                 push    dword ptr [ebp+$18]
0068BC10   8D45A4                 lea     eax, [ebp-$5C]

|
0068BC13   E8E0541100             call    007A10F8
0068BC18   8B45A4                 mov     eax, [ebp-$5C]
0068BC1B   8945B0                 mov     [ebp-$50], eax
0068BC1E   8B4514                 mov     eax, [ebp+$14]
0068BC21   8945B4                 mov     [ebp-$4C], eax
0068BC24   8D45A8                 lea     eax, [ebp-$58]
0068BC27   50                     push    eax

* Possible String Reference to: 'CodProd'
|
0068BC28   B848BD6800             mov     eax, $0068BD48
0068BC2D   894594                 mov     [ebp-$6C], eax

* Possible String Reference to: 'UnidMed'
|
0068BC30   B868BD6800             mov     eax, $0068BD68
0068BC35   894598                 mov     [ebp-$68], eax

* Possible String Reference to: 'QtdeUnidMed'
|
0068BC38   B878BD6800             mov     eax, $0068BD78
0068BC3D   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TabPreco'
|
0068BC40   B88CBD6800             mov     eax, $0068BD8C
0068BC45   8945A0                 mov     [ebp-$60], eax
0068BC48   8D4594                 lea     eax, [ebp-$6C]
0068BC4B   BA03000000             mov     edx, $00000003
0068BC50   59                     pop     ecx

|
0068BC51   E86A421200             call    007AFEC0
0068BC56   8B45E4                 mov     eax, [ebp-$1C]
0068BC59   50                     push    eax
0068BC5A   6A00                   push    $00
0068BC5C   B9A0BD6800             mov     ecx, $0068BDA0

* Possible String Reference to: 'PRODUNID'
|
0068BC61   BAACBD6800             mov     edx, $0068BDAC
0068BC66   33C0                   xor     eax, eax

|
0068BC68   E883D21100             call    007A8EF0
0068BC6D   84C0                   test    al, al
0068BC6F   741D                   jz      0068BC8E
0068BC71   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0068BC76   8B00                   mov     eax, [eax]
0068BC78   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'VlrUnit'
|
0068BC7B   BAC0BD6800             mov     edx, $0068BDC0

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0068BC80   E8C799EDFF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsFloat(TIBXSQLVAR):Float;
|
0068BC85   E84271EDFF             call    00562DCC
0068BC8A   DB7DE8                 fstp    tbyte ptr [ebp-$18]
0068BC8D   9B                     wait
0068BC8E   33C0                   xor     eax, eax
0068BC90   5A                     pop     edx
0068BC91   59                     pop     ecx
0068BC92   59                     pop     ecx
0068BC93   648910                 mov     fs:[eax], edx
0068BC96   EB3B                   jmp     0068BCD3

* Reference to: System.@HandleOnException;
|
0068BC98   E9138FD7FF             jmp     00404BB0
0068BC9D   0100                   add     [eax], eax
0068BC9F   0000                   add     [eax], al
0068BCA1   40                     inc     eax
0068BCA2   95                     xchg    eax, ebp
0068BCA3   40                     inc     eax
0068BCA4   00A9BC680089           add     [ecx+$890068BC], ch
0068BCAA   C3                     ret

0068BCAB   6A00                   push    $00
0068BCAD   8B4B04                 mov     ecx, [ebx+$04]
0068BCB0   8D4590                 lea     eax, [ebp-$70]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
0068BCB3   BAD0BD6800             mov     edx, $0068BDD0

* Reference to: System.@LStrCat3;
|
0068BCB8   E8EB9AD7FF             call    004057A8
0068BCBD   8B4590                 mov     eax, [ebp-$70]
0068BCC0   668B0DF0BD6800         mov     cx, word ptr [$0068BDF0]
0068BCC7   B201                   mov     dl, $01

|
0068BCC9   E85E7EDBFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0068BCCE   E8DD91D7FF             call    00404EB0

****** END
|
0068BCD3   33C0                   xor     eax, eax
0068BCD5   5A                     pop     edx
0068BCD6   59                     pop     ecx
0068BCD7   59                     pop     ecx
0068BCD8   648910                 mov     fs:[eax], edx

****** FINALLY
|
0068BCDB   68E8BC6800             push    $0068BCE8
0068BCE0   C3                     ret


* Reference to: System.@HandleFinally;
|
0068BCE1   E95290D7FF             jmp     00404D38
0068BCE6   EBF8                   jmp     0068BCE0

****** END
|
0068BCE8   33C0                   xor     eax, eax
0068BCEA   5A                     pop     edx
0068BCEB   59                     pop     ecx
0068BCEC   59                     pop     ecx
0068BCED   648910                 mov     fs:[eax], edx

****** FINALLY
|
0068BCF0   6832BD6800             push    $0068BD32
0068BCF5   8D4590                 lea     eax, [ebp-$70]

* Reference to: System.@LStrClr(void;void);
|
0068BCF8   E89F97D7FF             call    0040549C
0068BCFD   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: System.@LStrClr(void;void);
|
0068BD00   E89797D7FF             call    0040549C
0068BD05   8D45CC                 lea     eax, [ebp-$34]

* Reference to: System.@LStrClr(void;void);
|
0068BD08   E88F97D7FF             call    0040549C
0068BD0D   8D45E4                 lea     eax, [ebp-$1C]

* Reference to: System.@LStrClr(void;void);
|
0068BD10   E88797D7FF             call    0040549C
0068BD15   8D45F8                 lea     eax, [ebp-$08]
0068BD18   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0068BD1D   E89E97D7FF             call    004054C0
0068BD22   8D4514                 lea     eax, [ebp+$14]

* Reference to: System.@LStrClr(void;void);
|
0068BD25   E87297D7FF             call    0040549C
0068BD2A   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068BD2B(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0068BD2B   E90890D7FF             jmp     00404D38

|
0068BD30   EBC3                   jmp     0068BCF5
0068BD32   DB6DE8                 fld     tbyte ptr [ebp-$18]
0068BD35   5F                     pop     edi
0068BD36   5E                     pop     esi
0068BD37   5B                     pop     ebx
0068BD38   8BE5                   mov     esp, ebp
0068BD3A   5D                     pop     ebp
0068BD3B   C21C00                 ret     $001C

*)
end;

procedure TfrmAdicionaProduto._PROC_0068BD69(Sender : TObject);
begin
(*
0068BD69   6E                     outsb
0068BD6A   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
0068BD72   FFFF                   DB  $FF, $FF  //      
0068BD74   0B00                   or      eax, [eax]
0068BD76   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068BD7D(Sender : TObject);
begin
(*
0068BD7D   6E                     outsb
0068BD7E   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
0068BD86   FFFF                   DB  $FF, $FF  //      
0068BD88   0800                   or      [eax], al
0068BD8A   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068BDB1(Sender : TObject);
begin
(*
0068BDB1   4E                     dec     esi
0068BDB2   49                     dec     ecx
0068BDB3   44                     inc     esp
0068BDB4   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068BDC4(Sender : TObject);
begin
(*
0068BDC4   6E                     outsb
0068BDC5   697400FFFFFFFF1C       imul    esi, [eax+eax-$01], $1CFFFFFF
0068BDCD   0000                   add     [eax], al

*)
end;

procedure TfrmAdicionaProduto._PROC_0068BE14(Sender : TObject);
begin
(*
0068BE14   55                     push    ebp
0068BE15   8BEC                   mov     ebp, esp
0068BE17   33C0                   xor     eax, eax
0068BE19   55                     push    ebp

* Possible String Reference to: 'È˙é◊ˇÎ¯]√ã¿É-®Ï}'
|
0068BE1A   6839BE6800             push    $0068BE39

***** TRY
|
0068BE1F   64FF30                 push    dword ptr fs:[eax]
0068BE22   648920                 mov     fs:[eax], esp
0068BE25   FF05A8EC7D00           inc     dword ptr [$007DECA8]
0068BE2B   33C0                   xor     eax, eax
0068BE2D   5A                     pop     edx
0068BE2E   59                     pop     ecx
0068BE2F   59                     pop     ecx
0068BE30   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']√ã¿É-®Ï}'
|
0068BE33   6840BE6800             push    $0068BE40
0068BE38   C3                     ret


* Reference to: System.@HandleFinally;
|
0068BE39   E9FA8ED7FF             jmp     00404D38
0068BE3E   EBF8                   jmp     0068BE38

****** END
|
0068BE40   5D                     pop     ebp
0068BE41   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068BE44(Sender : TObject);
begin
(*
0068BE44   832DA8EC7D0001         sub     dword ptr [$007DECA8], +$01
0068BE4B   C3                     ret

*)
end;

procedure TfrmAdicionaProduto._PROC_0068BE4C(Sender : TObject);
begin
(*
0068BE4C   98                     cwde 
0068BE4D   BE68000000             mov     esi, $00000068
0068BE52   0000                   add     [eax], al

*)
end;

end.