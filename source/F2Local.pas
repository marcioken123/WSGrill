unit F2Local;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, Buttons, ExtCtrls;
  
type
  TFrmF2SubLocal=class(TForm)
    nbSubLocais: TNotebook;
    Bevel1: TBevel;
    Label1: TLabel;
    Label5: TLabel;
    rgEscolheLocal: TRadioGroup;
    BitBtn1: TBitBtn;
    grSubLocal: TJvDBGrid;
    Notebook1: TNotebook;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbProduto: TLabel;
    Label6: TLabel;
    lbLancamento: TLabel;
    BitBtn2: TBitBtn;
    Label7: TLabel;
    Notebook2: TNotebook;
    Label10: TLabel;
    lbDescricao: TLabel;
    lbCodProduto: TLabel;
    Label8: TLabel;
    grSubLocais: TJvDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn2Click(Sender : TObject);
    procedure FormShow(Sender : TObject);
    procedure rgEscolheLocalClick(Sender : TObject);
    procedure FormCloseQuery(Sender : TObject);
    procedure grSubLocaisGetCellProps(Sender : TObject);
    procedure grSubLocalGetCellProps(Sender : TObject);
    procedure _PROC_0063C7F3(Sender : TObject);
    procedure _PROC_0063C85A(Sender : TObject);
    procedure _PROC_0063C88C(Sender : TObject);
    procedure _PROC_0063C8A5(Sender : TObject);
    procedure _PROC_0063C913(Sender : TObject);
    procedure _PROC_0063C97D(Sender : TObject);
    procedure _PROC_0063C9E1(Sender : TObject);
    procedure _PROC_0063CDB3(Sender : TObject);
    procedure _PROC_0063CDD1(Sender : TObject);
    procedure _PROC_0063CE39(Sender : TObject);
    procedure _PROC_0063CE91(Sender : TObject);
    procedure _PROC_0063D031(Sender : TObject);
    procedure _PROC_0063D060(Sender : TObject);
    procedure _PROC_0063D068(Sender : TObject);
    procedure _PROC_0063D2F4(Sender : TObject);
    procedure _PROC_0063D31C(Sender : TObject);
    procedure _PROC_0063D371(Sender : TObject);
    procedure _PROC_0063D3CE(Sender : TObject);
    procedure _PROC_0063D3E3(Sender : TObject);
    procedure _PROC_0063D44B(Sender : TObject);
    procedure _PROC_0063D47B(Sender : TObject);
    procedure _PROC_0063D49F(Sender : TObject);
    procedure _PROC_0063D4EB(Sender : TObject);
    procedure _PROC_0063D52D(Sender : TObject);
    procedure _PROC_0063D799(Sender : TObject);
    procedure _PROC_0063D7CD(Sender : TObject);
    procedure _PROC_0063D7E1(Sender : TObject);
    procedure _PROC_0063D841(Sender : TObject);
    procedure _PROC_0063D870(Sender : TObject);
    procedure _PROC_0063D878(Sender : TObject);
    procedure _PROC_0063DC0C(Sender : TObject);
    procedure _PROC_0063DC61(Sender : TObject);
    procedure _PROC_0063ED1C(Sender : TObject);
    procedure _PROC_0063ED8E(Sender : TObject);
    procedure _PROC_0063EDC7(Sender : TObject);
    procedure _PROC_0063EE31(Sender : TObject);
    procedure _PROC_0063EE7A(Sender : TObject);
    procedure _PROC_0063EF46(Sender : TObject);
    procedure _PROC_0063EF5D(Sender : TObject);
    procedure _PROC_0063EFEB(Sender : TObject);
    procedure _PROC_0063F029(Sender : TObject);
    procedure _PROC_0063F0EF(Sender : TObject);
    procedure _PROC_0063F1F2(Sender : TObject);
    procedure _PROC_0063F23F(Sender : TObject);
    procedure _PROC_0063F2FB(Sender : TObject);
    procedure _PROC_0063F35F(Sender : TObject);
    procedure _PROC_0063F3B3(Sender : TObject);
    procedure _PROC_0063F433(Sender : TObject);
    procedure _PROC_0063F455(Sender : TObject);
    procedure _PROC_0063F49F(Sender : TObject);
    procedure _PROC_0063F4D4(Sender : TObject);
    procedure _PROC_0063F51B(Sender : TObject);
    procedure _PROC_0063F573(Sender : TObject);
    procedure _PROC_0063F58E(Sender : TObject);
    procedure _PROC_0063F5D7(Sender : TObject);
    procedure _PROC_0063F62F(Sender : TObject);
    procedure _PROC_0063F64F(Sender : TObject);
    procedure _PROC_0063F699(Sender : TObject);
    procedure _PROC_0063F90C(Sender : TObject);
    procedure _PROC_0063F95D(Sender : TObject);
    procedure _PROC_00641AD4(Sender : TObject);
    procedure _PROC_00642384(Sender : TObject);
    procedure _PROC_00642391(Sender : TObject);
    procedure _PROC_006423B5(Sender : TObject);
    procedure _PROC_00642501(Sender : TObject);
    procedure _PROC_0064273D(Sender : TObject);
    procedure _PROC_006428A5(Sender : TObject);
    procedure _PROC_006428F5(Sender : TObject);
    procedure _PROC_00642A01(Sender : TObject);
    procedure _PROC_00642A39(Sender : TObject);
    procedure _PROC_00642F5B(Sender : TObject);
    procedure _PROC_00642F9A(Sender : TObject);
    procedure _PROC_00642FB1(Sender : TObject);
    procedure _PROC_00643078(Sender : TObject);
    procedure _PROC_0064308D(Sender : TObject);
    procedure _PROC_006430C0(Sender : TObject);
    procedure _PROC_00643105(Sender : TObject);
    procedure _PROC_00643124(Sender : TObject);
    procedure _PROC_00643169(Sender : TObject);
    procedure _PROC_00643411(Sender : TObject);
    procedure _PROC_0064398A(Sender : TObject);
    procedure _PROC_00643A91(Sender : TObject);
    procedure _PROC_00643C0C(Sender : TObject);
    procedure _PROC_00643CB1(Sender : TObject);
    procedure _PROC_00643D76(Sender : TObject);
    procedure _PROC_00643DBD(Sender : TObject);
    procedure _PROC_00643DEC(Sender : TObject);
    procedure _PROC_00643E1C(Sender : TObject);
    procedure _PROC_00644048(Sender : TObject);
    procedure _PROC_00644121(Sender : TObject);
    procedure _PROC_00644205(Sender : TObject);
    procedure _PROC_00644241(Sender : TObject);
    procedure _PROC_0064447E(Sender : TObject);
    procedure _PROC_006444E1(Sender : TObject);
    procedure _PROC_006444F5(Sender : TObject);
    procedure _PROC_00644518(Sender : TObject);
    procedure _PROC_006445E1(Sender : TObject);
    procedure _PROC_0064584E(Sender : TObject);
    procedure _PROC_006458E1(Sender : TObject);
    procedure _PROC_00645972(Sender : TObject);
    procedure _PROC_006459F2(Sender : TObject);
    procedure _PROC_00645AB1(Sender : TObject);
    procedure _PROC_0064632F(Sender : TObject);
    procedure _PROC_00646579(Sender : TObject);
    procedure _PROC_00646DF7(Sender : TObject);
    procedure _PROC_00647041(Sender : TObject);
    procedure _PROC_006471DC(Sender : TObject);
    procedure _PROC_0064727D(Sender : TObject);
    procedure _PROC_0064789C(Sender : TObject);
    procedure _PROC_006479A1(Sender : TObject);
    procedure _PROC_006479D1(Sender : TObject);
    procedure _PROC_006479E6(Sender : TObject);
    procedure _PROC_00647B49(Sender : TObject);
    procedure _PROC_00647F88(Sender : TObject);
    procedure _PROC_00647FB5(Sender : TObject);
    procedure _PROC_0064807D(Sender : TObject);
    procedure _PROC_0064868E(Sender : TObject);
    procedure _PROC_00648915(Sender : TObject);
    procedure _PROC_00648B8E(Sender : TObject);
    procedure _PROC_00648C0D(Sender : TObject);
    procedure _PROC_00648DC4(Sender : TObject);
    procedure _PROC_00648E49(Sender : TObject);
    procedure _PROC_00648E78(Sender : TObject);
    procedure _PROC_00648E80(Sender : TObject);
    procedure _PROC_00648FF9(Sender : TObject);
    procedure _PROC_0064901A(Sender : TObject);
    procedure _PROC_00649044(Sender : TObject);
    procedure _PROC_00649060(Sender : TObject);
    procedure _PROC_006490B6(Sender : TObject);
    procedure _PROC_0064915D(Sender : TObject);
    procedure _PROC_006491EC(Sender : TObject);
    procedure _PROC_006492B5(Sender : TObject);
    procedure _PROC_006493DB(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  FrmF2SubLocal: TFrmF2SubLocal;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TFrmF2SubLocal.BitBtn2Click(Sender : TObject);
begin
(*
0063C4E0   55                     push    ebp
0063C4E1   8BEC                   mov     ebp, esp
0063C4E3   B913000000             mov     ecx, $00000013
0063C4E8   6A00                   push    $00
0063C4EA   6A00                   push    $00
0063C4EC   49                     dec     ecx
0063C4ED   75F9                   jnz     0063C4E8
0063C4EF   53                     push    ebx
0063C4F0   56                     push    esi
0063C4F1   57                     push    edi
0063C4F2   8BD8                   mov     ebx, eax
0063C4F4   33C0                   xor     eax, eax
0063C4F6   55                     push    ebp

* Possible String Reference to: 'é@…Üÿë°_^[‹å]Ã'
|
0063C4F7   68F3C76300             push    $0063C7F3

***** TRY
|
0063C4FC   64FF30                 push    dword ptr fs:[eax]
0063C4FF   648920                 mov     fs:[eax], esp
0063C502   33C0                   xor     eax, eax
0063C504   55                     push    ebp
0063C505   6896C76300             push    $0063C796

***** TRY
|
0063C50A   64FF30                 push    dword ptr fs:[eax]
0063C50D   648920                 mov     fs:[eax], esp
0063C510   33C0                   xor     eax, eax
0063C512   55                     push    ebp
0063C513   6847C76300             push    $0063C747

***** TRY
|
0063C518   64FF30                 push    dword ptr fs:[eax]
0063C51B   648920                 mov     fs:[eax], esp
0063C51E   8D45EC                 lea     eax, [ebp-$14]
0063C521   50                     push    eax
0063C522   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063C527   8B00                   mov     eax, [eax]
0063C529   8B407C                 mov     eax, [eax+$7C]
0063C52C   8B10                   mov     edx, [eax]
0063C52E   FF924C010000           call    dword ptr [edx+$014C]
0063C534   48                     dec     eax
0063C535   0F9CC0                 setl    al
0063C538   50                     push    eax
0063C539   B046                   mov     al, $46
0063C53B   8845D9                 mov     [ebp-$27], al
0063C53E   C645D801               mov     byte ptr [ebp-$28], $01
0063C542   8D45DC                 lea     eax, [ebp-$24]
0063C545   8D55D8                 lea     edx, [ebp-$28]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
0063C548   E8A3C7DDFF             call    00418CF0
0063C54D   8D45DC                 lea     eax, [ebp-$24]
0063C550   50                     push    eax
0063C551   B054                   mov     al, $54
0063C553   8845C5                 mov     [ebp-$3B], al
0063C556   C645C401               mov     byte ptr [ebp-$3C], $01
0063C55A   8D45C8                 lea     eax, [ebp-$38]
0063C55D   8D55C4                 lea     edx, [ebp-$3C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
0063C560   E88BC7DDFF             call    00418CF0
0063C565   8D55C8                 lea     edx, [ebp-$38]
0063C568   59                     pop     ecx
0063C569   58                     pop     eax

|
0063C56A   E8FD3D1600             call    007A036C
0063C56F   8D55EC                 lea     edx, [ebp-$14]
0063C572   8D45FC                 lea     eax, [ebp-$04]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
0063C575   E87EB6DDFF             call    00417BF8

* Possible String Reference to: 'Código'
|
0063C57A   B80CC86300             mov     eax, $0063C80C
0063C57F   8945BC                 mov     [ebp-$44], eax

* Possible String Reference to: 'Sub-Local'
|
0063C582   B81CC86300             mov     eax, $0063C81C
0063C587   8945C0                 mov     [ebp-$40], eax
0063C58A   8D45BC                 lea     eax, [ebp-$44]
0063C58D   50                     push    eax
0063C58E   6A01                   push    $01
0063C590   6A00                   push    $00

* Possible String Reference to: 'CodSubLocal'
|
0063C592   B830C86300             mov     eax, $0063C830
0063C597   8945B4                 mov     [ebp-$4C], eax

* Possible String Reference to: 'Descricao'
|
0063C59A   B844C86300             mov     eax, $0063C844
0063C59F   8945B8                 mov     [ebp-$48], eax
0063C5A2   8D55B4                 lea     edx, [ebp-$4C]
0063C5A5   B901000000             mov     ecx, $00000001

* Possible String Reference to: 'SUBLOCAL'
|
0063C5AA   B858C86300             mov     eax, $0063C858

|
0063C5AF   E8A0CCFFFF             call    00639254
0063C5B4   84C0                   test    al, al
0063C5B6   0F8481010000           jz      0063C73D

* Possible String Reference to: '(CODPROD = '
|
0063C5BC   686CC86300             push    $0063C86C
0063C5C1   8D55AC                 lea     edx, [ebp-$54]

* Reference to field TFrmF2SubLocal.OFFS_035C
|
0063C5C4   8B835C030000           mov     eax, [ebx+$035C]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
0063C5CA   E885351700             call    007AFB54
0063C5CF   FF75AC                 push    dword ptr [ebp-$54]

* Possible String Reference to: ') AND (CODSUBLOCAL = '
|
0063C5D2   6880C86300             push    $0063C880
0063C5D7   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063C5DC   8B00                   mov     eax, [eax]
0063C5DE   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CODSUBLOCAL'
|
0063C5E1   BAA0C86300             mov     edx, $0063C8A0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0063C5E6   E819D6EAFF             call    004E9C04
0063C5EB   8D55A4                 lea     edx, [ebp-$5C]
0063C5EE   8B08                   mov     ecx, [eax]
0063C5F0   FF5160                 call    dword ptr [ecx+$60]
0063C5F3   8B45A4                 mov     eax, [ebp-$5C]
0063C5F6   8D55A8                 lea     edx, [ebp-$58]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
0063C5F9   E856351700             call    007AFB54
0063C5FE   FF75A8                 push    dword ptr [ebp-$58]
0063C601   68B4C86300             push    $0063C8B4
0063C606   8D45B0                 lea     eax, [ebp-$50]
0063C609   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
0063C60E   E80992DCFF             call    0040581C
0063C613   8B45B0                 mov     eax, [ebp-$50]
0063C616   50                     push    eax
0063C617   6A01                   push    $01
0063C619   B9C0C86300             mov     ecx, $0063C8C0

* Possible String Reference to: 'PRODLOC'
|
0063C61E   BACCC86300             mov     edx, $0063C8CC
0063C623   33C0                   xor     eax, eax

|
0063C625   E8C6C81600             call    007A8EF0
0063C62A   84C0                   test    al, al
0063C62C   0F85F6000000           jnz     0063C728
0063C632   6A04                   push    $04

* Reference to field TFrmF2SubLocal.OFFS_035C
|
0063C634   8B835C030000           mov     eax, [ebx+$035C]
0063C63A   894590                 mov     [ebp-$70], eax
0063C63D   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
0063C642   8B00                   mov     eax, [eax]
0063C644   894594                 mov     [ebp-$6C], eax
0063C647   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063C64C   8B00                   mov     eax, [eax]
0063C64E   8B4060                 mov     eax, [eax+$60]

* Possible String Reference to: 'CODSUBLOCAL'
|
0063C651   BAA0C86300             mov     edx, $0063C8A0

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0063C656   E8A9D5EAFF             call    004E9C04
0063C65B   8D558C                 lea     edx, [ebp-$74]
0063C65E   8B08                   mov     ecx, [eax]
0063C660   FF5160                 call    dword ptr [ecx+$60]
0063C663   8B458C                 mov     eax, [ebp-$74]
0063C666   894598                 mov     [ebp-$68], eax
0063C669   B8DCC86300             mov     eax, $0063C8DC
0063C66E   89459C                 mov     [ebp-$64], eax
0063C671   8B45FC                 mov     eax, [ebp-$04]
0063C674   8945A0                 mov     [ebp-$60], eax
0063C677   8D4590                 lea     eax, [ebp-$70]
0063C67A   50                     push    eax
0063C67B   6A04                   push    $04

* Possible String Reference to: 'CODPROD'
|
0063C67D   B8E8C86300             mov     eax, $0063C8E8
0063C682   898578FFFFFF           mov     [ebp+$FFFFFF78], eax

* Possible String Reference to: 'FILIAL'
|
0063C688   B8F8C86300             mov     eax, $0063C8F8
0063C68D   89857CFFFFFF           mov     [ebp+$FFFFFF7C], eax

* Possible String Reference to: 'CODSUBLOCAL'
|
0063C693   B8A0C86300             mov     eax, $0063C8A0
0063C698   894580                 mov     [ebp-$80], eax

* Possible String Reference to: 'SALDOESTOQUE'
|
0063C69B   B808C96300             mov     eax, $0063C908
0063C6A0   894584                 mov     [ebp-$7C], eax

* Possible String Reference to: 'PADRAO'
|
0063C6A3   B820C96300             mov     eax, $0063C920
0063C6A8   894588                 mov     [ebp-$78], eax
0063C6AB   8D8D78FFFFFF           lea     ecx, [ebp+$FFFFFF78]

* Possible String Reference to: 'PRODLOC'
|
0063C6B1   BACCC86300             mov     edx, $0063C8CC
0063C6B6   33C0                   xor     eax, eax

|
0063C6B8   E887D91600             call    007AA044
0063C6BD   84C0                   test    al, al
0063C6BF   747C                   jz      0063C73D

* Possible String Reference to: '(PRODLOC.CODPROD = '
|
0063C6C1   6830C96300             push    $0063C930
0063C6C6   8D9570FFFFFF           lea     edx, [ebp+$FFFFFF70]

* Reference to field TFrmF2SubLocal.OFFS_035C
|
0063C6CC   8B835C030000           mov     eax, [ebx+$035C]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
0063C6D2   E87D341700             call    007AFB54
0063C6D7   FFB570FFFFFF           push    dword ptr [ebp+$FFFFFF70]

* Possible String Reference to: ') AND (PRODLOC.FILIAL = '
|
0063C6DD   684CC96300             push    $0063C94C
0063C6E2   8D956CFFFFFF           lea     edx, [ebp+$FFFFFF6C]
0063C6E8   A1DCAD7D00             mov     eax, dword ptr [$007DADDC]
0063C6ED   8B00                   mov     eax, [eax]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
0063C6EF   E860341700             call    007AFB54
0063C6F4   FFB56CFFFFFF           push    dword ptr [ebp+$FFFFFF6C]
0063C6FA   68B4C86300             push    $0063C8B4
0063C6FF   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]
0063C705   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
0063C70A   E80D91DCFF             call    0040581C
0063C70F   8B8D74FFFFFF           mov     ecx, [ebp+$FFFFFF74]
0063C715   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063C71A   8B00                   mov     eax, [eax]

* Possible String Reference to: 'PRODLOC.CODSUBLOCAL'
|
0063C71C   BA70C96300             mov     edx, $0063C970

|
0063C721   E85AD80000             call    00649F80
0063C726   EB15                   jmp     0063C73D
0063C728   6A00                   push    $00
0063C72A   668B0D84C96300         mov     cx, word ptr [$0063C984]
0063C731   33D2                   xor     edx, edx

* Possible String Reference to: 'O local selecionado já está cadastr
|                                ado!'
|
0063C733   B890C96300             mov     eax, $0063C990

|
0063C738   E8EF73E0FF             call    00443B2C
0063C73D   33C0                   xor     eax, eax
0063C73F   5A                     pop     edx
0063C740   59                     pop     ecx
0063C741   59                     pop     ecx
0063C742   648910                 mov     fs:[eax], edx
0063C745   EB41                   jmp     0063C788

* Reference to: System.@HandleOnException;
|
0063C747   E96484DCFF             jmp     00404BB0
0063C74C   0100                   add     [eax], eax
0063C74E   0000                   add     [eax], al
0063C750   40                     inc     eax
0063C751   95                     xchg    eax, ebp
0063C752   40                     inc     eax
0063C753   0058C7                 add     [eax-$39], bl
0063C756   6300                   arpl    [eax], ax
0063C758   89C3                   mov     ebx, eax
0063C75A   6A00                   push    $00
0063C75C   8B4B04                 mov     ecx, [ebx+$04]
0063C75F   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Possible String Reference to: 'Erro ao cadastrar o local!'
|
0063C765   BAC0C96300             mov     edx, $0063C9C0

* Reference to: System.@LStrCat3;
|
0063C76A   E83990DCFF             call    004057A8
0063C76F   8B8568FFFFFF           mov     eax, [ebp+$FFFFFF68]
0063C775   668B0D84C96300         mov     cx, word ptr [$0063C984]
0063C77C   B201                   mov     dl, $01

|
0063C77E   E8A973E0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0063C783   E82887DCFF             call    00404EB0

****** END
|
0063C788   33C0                   xor     eax, eax
0063C78A   5A                     pop     edx
0063C78B   59                     pop     ecx
0063C78C   59                     pop     ecx
0063C78D   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063C790   689DC76300             push    $0063C79D
0063C795   C3                     ret


* Reference to: System.@HandleFinally;
|
0063C796   E99D85DCFF             jmp     00404D38
0063C79B   EBF8                   jmp     0063C795

****** END
|
0063C79D   33C0                   xor     eax, eax
0063C79F   5A                     pop     edx
0063C7A0   59                     pop     ecx
0063C7A1   59                     pop     ecx
0063C7A2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
0063C7A5   68FAC76300             push    $0063C7FA
0063C7AA   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
0063C7B0   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063C7B5   E8068DDCFF             call    004054C0
0063C7BA   8D458C                 lea     eax, [ebp-$74]

* Reference to: System.@LStrClr(void;void);
|
0063C7BD   E8DA8CDCFF             call    0040549C
0063C7C2   8D45A4                 lea     eax, [ebp-$5C]
0063C7C5   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063C7CA   E8F18CDCFF             call    004054C0
0063C7CF   8D45C8                 lea     eax, [ebp-$38]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0063C7D2   E8A17DDDFF             call    00414578
0063C7D7   8D45DC                 lea     eax, [ebp-$24]

* Reference to object Variant
|
0063C7DA   8B1524114000           mov     edx, [$00401124]
0063C7E0   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0063C7E5   E8B298DCFF             call    0040609C
0063C7EA   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0063C7ED   E8AA8CDCFF             call    0040549C
0063C7F2   C3                     ret


* Reference to: System.@HandleFinally;
|
0063C7F3   E94085DCFF             jmp     00404D38
0063C7F8   EBB0                   jmp     0063C7AA

****** END
|
0063C7FA   5F                     pop     edi
0063C7FB   5E                     pop     esi
0063C7FC   5B                     pop     ebx
0063C7FD   8BE5                   mov     esp, ebp
0063C7FF   5D                     pop     ebp
0063C800   C3                     ret

*)
end;

procedure TFrmF2SubLocal.FormShow(Sender : TObject);
begin
(*
0063CEE0   55                     push    ebp
0063CEE1   8BEC                   mov     ebp, esp

* Reference to control TFrmF2SubLocal.nbSubLocais : TNotebook
|
0063CEE3   8B90F8020000           mov     edx, [eax+$02F8]

* Reference to field TNotebook.PageIndex : Integer
|
0063CEE9   8B9218020000           mov     edx, [edx+$0218]
0063CEEF   83EA01                 sub     edx, +$01
0063CEF2   7328                   jnb     0063CF1C
0063CEF4   803D58887D0000         cmp     byte ptr [$007D8858], $00
0063CEFB   740F                   jz      0063CF0C
0063CEFD   33D2                   xor     edx, edx

* Reference to control TFrmF2SubLocal.rgEscolheLocal : TRadioGroup
|
0063CEFF   8B8008030000           mov     eax, [eax+$0308]

* Reference to: ExtCtrls.TCustomRadioGroup.SetItemIndex(TCustomRadioGroup;Integer);
|
0063CF05   E872DEE0FF             call    0044AD7C
0063CF0A   EB10                   jmp     0063CF1C
0063CF0C   BA01000000             mov     edx, $00000001

* Reference to field TRadioGroup.OFFS_0308
|
0063CF11   8B8008030000           mov     eax, [eax+$0308]

* Reference to: ExtCtrls.TCustomRadioGroup.SetItemIndex(TCustomRadioGroup;Integer);
|
0063CF17   E860DEE0FF             call    0044AD7C
0063CF1C   5D                     pop     ebp
0063CF1D   C3                     ret

*)
end;

procedure TFrmF2SubLocal.rgEscolheLocalClick(Sender : TObject);
begin
(*

* Reference to control TFrmF2SubLocal.rgEscolheLocal : TRadioGroup
|
0063CF20   8B8008030000           mov     eax, [eax+$0308]

* Reference to field TRadioGroup.ItemIndex : Integer
|
0063CF26   8B8018020000           mov     eax, [eax+$0218]
0063CF2C   83E801                 sub     eax, +$01
0063CF2F   7204                   jb      0063CF35
0063CF31   740A                   jz      0063CF3D
0063CF33   EB0F                   jmp     0063CF44
0063CF35   C60558887D0001         mov     byte ptr [$007D8858], $01
0063CF3C   C3                     ret

0063CF3D   C60558887D0000         mov     byte ptr [$007D8858], $00
0063CF44   C3                     ret

*)
end;

procedure TFrmF2SubLocal.FormCloseQuery(Sender : TObject);
begin
(*

* Reference to field TFrmF2SubLocal.ModalResult : TModalResult
|
0063CF48   83B84C02000001         cmp     dword ptr [eax+$024C], +$01
0063CF4F   C3                     ret

*)
end;

procedure TFrmF2SubLocal.grSubLocaisGetCellProps(Sender : TObject);
begin
(*
0063CF50   55                     push    ebp
0063CF51   8BEC                   mov     ebp, esp
0063CF53   6A00                   push    $00
0063CF55   53                     push    ebx
0063CF56   33C0                   xor     eax, eax
0063CF58   55                     push    ebp
0063CF59   68A7CF6300             push    $0063CFA7

***** TRY
|
0063CF5E   64FF30                 push    dword ptr fs:[eax]
0063CF61   648920                 mov     fs:[eax], esp
0063CF64   8D55FC                 lea     edx, [ebp-$04]
0063CF67   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CF6C   8B00                   mov     eax, [eax]
0063CF6E   8B8090000000           mov     eax, [eax+$0090]
0063CF74   8B08                   mov     ecx, [eax]
0063CF76   FF5160                 call    dword ptr [ecx+$60]
0063CF79   8B45FC                 mov     eax, [ebp-$04]
0063CF7C   BABCCF6300             mov     edx, $0063CFBC

* Reference to: System.@LStrCmp;
|
0063CF81   E82289DCFF             call    004058A8
0063CF86   7509                   jnz     0063CF91
0063CF88   8B4508                 mov     eax, [ebp+$08]
0063CF8B   C700FFFF0000           mov     dword ptr [eax], $0000FFFF
0063CF91   33C0                   xor     eax, eax
0063CF93   5A                     pop     edx
0063CF94   59                     pop     ecx
0063CF95   59                     pop     ecx
0063CF96   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063CF99   68AECF6300             push    $0063CFAE
0063CF9E   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0063CFA1   E8F684DCFF             call    0040549C
0063CFA6   C3                     ret


* Reference to: System.@HandleFinally;
|
0063CFA7   E98C7DDCFF             jmp     00404D38
0063CFAC   EBF0                   jmp     0063CF9E

****** END
|
0063CFAE   5B                     pop     ebx
0063CFAF   59                     pop     ecx
0063CFB0   5D                     pop     ebp
0063CFB1   C20800                 ret     $0008

*)
end;

procedure TFrmF2SubLocal.grSubLocalGetCellProps(Sender : TObject);
begin
(*
0063CFC0   55                     push    ebp
0063CFC1   8BEC                   mov     ebp, esp
0063CFC3   6A00                   push    $00
0063CFC5   53                     push    ebx
0063CFC6   33C0                   xor     eax, eax
0063CFC8   55                     push    ebp
0063CFC9   6817D06300             push    $0063D017

***** TRY
|
0063CFCE   64FF30                 push    dword ptr fs:[eax]
0063CFD1   648920                 mov     fs:[eax], esp
0063CFD4   8D55FC                 lea     edx, [ebp-$04]
0063CFD7   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CFDC   8B00                   mov     eax, [eax]
0063CFDE   8B8090000000           mov     eax, [eax+$0090]
0063CFE4   8B08                   mov     ecx, [eax]
0063CFE6   FF5160                 call    dword ptr [ecx+$60]
0063CFE9   8B45FC                 mov     eax, [ebp-$04]
0063CFEC   BA2CD06300             mov     edx, $0063D02C

* Reference to: System.@LStrCmp;
|
0063CFF1   E8B288DCFF             call    004058A8
0063CFF6   7509                   jnz     0063D001
0063CFF8   8B4508                 mov     eax, [ebp+$08]
0063CFFB   C700FFFF0000           mov     dword ptr [eax], $0000FFFF
0063D001   33C0                   xor     eax, eax
0063D003   5A                     pop     edx
0063D004   59                     pop     ecx
0063D005   59                     pop     ecx
0063D006   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063D009   681ED06300             push    $0063D01E
0063D00E   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0063D011   E88684DCFF             call    0040549C
0063D016   C3                     ret


* Reference to: System.@HandleFinally;
|
0063D017   E91C7DDCFF             jmp     00404D38
0063D01C   EBF0                   jmp     0063D00E

****** END
|
0063D01E   5B                     pop     ebx
0063D01F   59                     pop     ecx
0063D020   5D                     pop     ebp
0063D021   C20800                 ret     $0008

*)
end;

procedure TFrmF2SubLocal._PROC_0063C7F3(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0063C7F3   E94085DCFF             jmp     00404D38

|
0063C7F8   EBB0                   jmp     0063C7AA
0063C7FA   5F                     pop     edi
0063C7FB   5E                     pop     esi
0063C7FC   5B                     pop     ebx
0063C7FD   8BE5                   mov     esp, ebp
0063C7FF   5D                     pop     ebp
0063C800   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063C85A(Sender : TObject);
begin
(*
0063C85A   42                     inc     edx
0063C85B   4C                     dec     esp
0063C85C   4F                     dec     edi
0063C85D   43                     inc     ebx
0063C85E   41                     inc     ecx
0063C85F   4C                     dec     esp
0063C860   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063C88C(Sender : TObject);
begin
(*
0063C88C   42                     inc     edx
0063C88D   4C                     dec     esp
0063C88E   4F                     dec     edi
0063C88F   43                     inc     ebx
0063C890   41                     inc     ecx
0063C891   4C                     dec     esp
0063C892   203D20000000           and     [$00000020], bh
0063C898   FFFF                   DB  $FF, $FF  //      
0063C89A   FFFF                   DB  $FF, $FF  //      
0063C89C   0B00                   or      eax, [eax]
0063C89E   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063C8A5(Sender : TObject);
begin
(*
0063C8A5   42                     inc     edx
0063C8A6   4C                     dec     esp
0063C8A7   4F                     dec     edi
0063C8A8   43                     inc     ebx
0063C8A9   41                     inc     ecx
0063C8AA   4C                     dec     esp
0063C8AB   00FF                   add     bh, bh
0063C8AD   FFFF                   DB  $FF, $FF  //      
0063C8AF   FF01                   inc     dword ptr [ecx]
0063C8B1   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063C913(Sender : TObject);
begin
(*
0063C913   45                     inc     ebp
0063C914   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063C97D(Sender : TObject);
begin
(*
0063C97D   42                     inc     edx
0063C97E   4C                     dec     esp
0063C97F   4F                     dec     edi
0063C980   43                     inc     ebx
0063C981   41                     inc     ecx
0063C982   4C                     dec     esp
0063C983   000400                 add     [eax+eax], al
0063C986   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063C9E1(Sender : TObject);
begin
(*
0063C9E1   8BEC                   mov     ebp, esp
0063C9E3   51                     push    ecx
0063C9E4   B910000000             mov     ecx, $00000010
0063C9E9   6A00                   push    $00
0063C9EB   6A00                   push    $00
0063C9ED   49                     dec     ecx
0063C9EE   75F9                   jnz     0063C9E9
0063C9F0   874DFC                 xchg    [ebp-$04], ecx
0063C9F3   53                     push    ebx
0063C9F4   56                     push    esi
0063C9F5   57                     push    edi
0063C9F6   894DF4                 mov     [ebp-$0C], ecx
0063C9F9   8955F8                 mov     [ebp-$08], edx
0063C9FC   8945FC                 mov     [ebp-$04], eax
0063C9FF   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063CA02   E8458FDCFF             call    0040594C
0063CA07   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063CA0A   E83D8FDCFF             call    0040594C
0063CA0F   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063CA12   E8358FDCFF             call    0040594C
0063CA17   8B451C                 mov     eax, [ebp+$1C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063CA1A   E82D8FDCFF             call    0040594C
0063CA1F   8B4518                 mov     eax, [ebp+$18]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063CA22   E8258FDCFF             call    0040594C
0063CA27   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063CA2A   E81D8FDCFF             call    0040594C
0063CA2F   8B4510                 mov     eax, [ebp+$10]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063CA32   E8158FDCFF             call    0040594C
0063CA37   33C0                   xor     eax, eax
0063CA39   55                     push    ebp
0063CA3A   68B3CD6300             push    $0063CDB3

***** TRY
|
0063CA3F   64FF30                 push    dword ptr fs:[eax]
0063CA42   648920                 mov     fs:[eax], esp
0063CA45   A1DCAB7D00             mov     eax, dword ptr [$007DABDC]
0063CA4A   8B00                   mov     eax, [eax]

* Reference to : tArrayTable._PROC_007B8B80()
|
0063CA4C   E82FC11700             call    007B8B80
0063CA51   48                     dec     eax
0063CA52   7519                   jnz     0063CA6D
0063CA54   8B4D08                 mov     ecx, [ebp+$08]
0063CA57   A1DCAB7D00             mov     eax, dword ptr [$007DABDC]
0063CA5C   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CODSUBLOCAL'
|
0063CA5E   BACCCD6300             mov     edx, $0063CDCC

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0063CA63   E8D0B21700             call    007B7D38
0063CA68   E9F3020000             jmp     0063CD60

* Possible String Reference to: '(PRODLOC.CODPROD = '
|
0063CA6D   68E0CD6300             push    $0063CDE0
0063CA72   8D55EC                 lea     edx, [ebp-$14]
0063CA75   8B4514                 mov     eax, [ebp+$14]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
0063CA78   E8D7301700             call    007AFB54
0063CA7D   FF75EC                 push    dword ptr [ebp-$14]

* Possible String Reference to: ') AND (PRODLOC.FILIAL = '
|
0063CA80   68FCCD6300             push    $0063CDFC
0063CA85   8D55E8                 lea     edx, [ebp-$18]
0063CA88   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
0063CA8B   E8C4301700             call    007AFB54
0063CA90   FF75E8                 push    dword ptr [ebp-$18]
0063CA93   6820CE6300             push    $0063CE20
0063CA98   8D45F0                 lea     eax, [ebp-$10]
0063CA9B   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCatN;
|
0063CAA0   E8778DDCFF             call    0040581C
0063CAA5   8B4DF0                 mov     ecx, [ebp-$10]
0063CAA8   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CAAD   8B00                   mov     eax, [eax]

* Possible String Reference to: 'PRODLOC.CODSUBLOCAL'
|
0063CAAF   BA2CCE6300             mov     edx, $0063CE2C

|
0063CAB4   E8C7D40000             call    00649F80
0063CAB9   84C0                   test    al, al
0063CABB   0F849F020000           jz      0063CD60
0063CAC1   33C9                   xor     ecx, ecx
0063CAC3   B201                   mov     dl, $01

* Reference to class TFrmF2SubLocal
|
0063CAC5   A12CC16300             mov     eax, dword ptr [$0063C12C]

* Reference to: Forms.TCustomForm.Create(TCustomForm;boolean;TComponent);
|
0063CACA   E84114E7FF             call    004ADF10

* Reference to GlobalVar_007DDD2C
|
0063CACF   A32CDD7D00             mov     dword ptr [$007DDD2C], eax
0063CAD4   33C0                   xor     eax, eax
0063CAD6   55                     push    ebp
0063CAD7   6859CD6300             push    $0063CD59

***** TRY
|
0063CADC   64FF30                 push    dword ptr fs:[eax]
0063CADF   648920                 mov     fs:[eax], esp
0063CAE2   33C0                   xor     eax, eax
0063CAE4   55                     push    ebp
0063CAE5   6800CD6300             push    $0063CD00

***** TRY
|
0063CAEA   64FF30                 push    dword ptr fs:[eax]
0063CAED   648920                 mov     fs:[eax], esp
0063CAF0   A12CDD7D00             mov     eax, dword ptr [$007DDD2C]

* Reference to control lbTitulo : N.A.
|
0063CAF5   8B80F8020000           mov     eax, [eax+$02F8]
0063CAFB   33D2                   xor     edx, edx

* Reference to: ExtCtrls.TNotebook.SetPageIndex(TNotebook;Integer);
|
0063CAFD   E842CBE0FF             call    00449644
0063CB02   A12CDD7D00             mov     eax, dword ptr [$007DDD2C]
0063CB07   055C030000             add     eax, +$0000035C
0063CB0C   8B5514                 mov     edx, [ebp+$14]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0063CB0F   E8DC89DCFF             call    004054F0
0063CB14   FF75FC                 push    dword ptr [ebp-$04]
0063CB17   6848CE6300             push    $0063CE48
0063CB1C   FF75F8                 push    dword ptr [ebp-$08]
0063CB1F   6848CE6300             push    $0063CE48
0063CB24   FF75F4                 push    dword ptr [ebp-$0C]
0063CB27   6848CE6300             push    $0063CE48
0063CB2C   FF751C                 push    dword ptr [ebp+$1C]
0063CB2F   6848CE6300             push    $0063CE48
0063CB34   FF7518                 push    dword ptr [ebp+$18]
0063CB37   6848CE6300             push    $0063CE48
0063CB3C   DB450C                 fild    dword ptr [ebp+$0C]
0063CB3F   83C4F4                 add     esp, -$0C
0063CB42   DB3C24                 fstp    tbyte ptr [esp]
0063CB45   9B                     wait
0063CB46   8D55E0                 lea     edx, [ebp-$20]

* Possible String Reference to: '000000'
|
0063CB49   B854CE6300             mov     eax, $0063CE54

* Reference to: SysUtils.FormatFloat(AnsiString;Extended):AnsiString;overload;
|
0063CB4E   E8E909DDFF             call    0040D53C
0063CB53   FF75E0                 push    dword ptr [ebp-$20]
0063CB56   6848CE6300             push    $0063CE48
0063CB5B   FF7510                 push    dword ptr [ebp+$10]
0063CB5E   8D45E4                 lea     eax, [ebp-$1C]
0063CB61   BA0D000000             mov     edx, $0000000D

* Reference to: System.@LStrCatN;
|
0063CB66   E8B18CDCFF             call    0040581C
0063CB6B   8B55E4                 mov     edx, [ebp-$1C]
0063CB6E   A12CDD7D00             mov     eax, dword ptr [$007DDD2C]
0063CB73   8B802C030000           mov     eax, [eax+$032C]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0063CB79   E87E6BE5FF             call    004936FC
0063CB7E   FF7514                 push    dword ptr [ebp+$14]
0063CB81   6848CE6300             push    $0063CE48

* Possible String Reference to: 'DESCRICAO'
|
0063CB86   6864CE6300             push    $0063CE64
0063CB8B   8D45D8                 lea     eax, [ebp-$28]
0063CB8E   50                     push    eax
0063CB8F   8D55D0                 lea     edx, [ebp-$30]
0063CB92   8B4514                 mov     eax, [ebp+$14]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
0063CB95   E8BA2F1700             call    007AFB54
0063CB9A   8B4DD0                 mov     ecx, [ebp-$30]
0063CB9D   8D45D4                 lea     eax, [ebp-$2C]

* Possible String Reference to: 'CODPROD = '
|
0063CBA0   BA78CE6300             mov     edx, $0063CE78

* Reference to: System.@LStrCat3;
|
0063CBA5   E8FE8BDCFF             call    004057A8
0063CBAA   8B4DD4                 mov     ecx, [ebp-$2C]

* Possible String Reference to: 'PRODUTOS'
|
0063CBAD   BA8CCE6300             mov     edx, $0063CE8C
0063CBB2   33C0                   xor     eax, eax

|
0063CBB4   E857C71600             call    007A9310
0063CBB9   FF75D8                 push    dword ptr [ebp-$28]
0063CBBC   8D45DC                 lea     eax, [ebp-$24]
0063CBBF   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0063CBC4   E8538CDCFF             call    0040581C
0063CBC9   8B55DC                 mov     edx, [ebp-$24]
0063CBCC   A12CDD7D00             mov     eax, dword ptr [$007DDD2C]
0063CBD1   8B8024030000           mov     eax, [eax+$0324]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
0063CBD7   E8206BE5FF             call    004936FC
0063CBDC   A12CDD7D00             mov     eax, dword ptr [$007DDD2C]
0063CBE1   8B10                   mov     edx, [eax]
0063CBE3   FF92EC000000           call    dword ptr [edx+$00EC]
0063CBE9   48                     dec     eax
0063CBEA   0F8506010000           jnz     0063CCF6
0063CBF0   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CBF5   8B00                   mov     eax, [eax]
0063CBF7   8B407C                 mov     eax, [eax+$7C]

* Reference to: DB.TDataSet.First(TDataSet);
|
0063CBFA   E82DE4EAFF             call    004EB02C
0063CBFF   E9BF000000             jmp     0063CCC3
0063CC04   8D559C                 lea     edx, [ebp-$64]
0063CC07   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CC0C   8B00                   mov     eax, [eax]
0063CC0E   8B8080000000           mov     eax, [eax+$0080]
0063CC14   8B08                   mov     ecx, [eax]
0063CC16   FF5160                 call    dword ptr [ecx+$60]
0063CC19   8B559C                 mov     edx, [ebp-$64]
0063CC1C   8D45A0                 lea     eax, [ebp-$60]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063CC1F   E8A0C0DDFF             call    00418CC4
0063CC24   8D75A0                 lea     esi, [ebp-$60]
0063CC27   8D7DB0                 lea     edi, [ebp-$50]
0063CC2A   A5                     movsd
0063CC2B   A5                     movsd
0063CC2C   A5                     movsd
0063CC2D   A5                     movsd
0063CC2E   8D5588                 lea     edx, [ebp-$78]
0063CC31   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CC36   8B00                   mov     eax, [eax]
0063CC38   8B8088000000           mov     eax, [eax+$0088]
0063CC3E   8B08                   mov     ecx, [eax]
0063CC40   FF5160                 call    dword ptr [ecx+$60]
0063CC43   8B5588                 mov     edx, [ebp-$78]
0063CC46   8D458C                 lea     eax, [ebp-$74]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063CC49   E876C0DDFF             call    00418CC4
0063CC4E   8D758C                 lea     esi, [ebp-$74]
0063CC51   8D7DC0                 lea     edi, [ebp-$40]
0063CC54   A5                     movsd
0063CC55   A5                     movsd
0063CC56   A5                     movsd
0063CC57   A5                     movsd
0063CC58   8D45B0                 lea     eax, [ebp-$50]
0063CC5B   50                     push    eax
0063CC5C   6A01                   push    $01

* Possible String Reference to: 'CODPROD'
|
0063CC5E   B8A0CE6300             mov     eax, $0063CEA0
0063CC63   894580                 mov     [ebp-$80], eax

* Possible String Reference to: 'CODSUBLOCAL'
|
0063CC66   B8CCCD6300             mov     eax, $0063CDCC
0063CC6B   894584                 mov     [ebp-$7C], eax
0063CC6E   8D5580                 lea     edx, [ebp-$80]
0063CC71   A1DCAB7D00             mov     eax, dword ptr [$007DABDC]
0063CC76   8B00                   mov     eax, [eax]
0063CC78   B901000000             mov     ecx, $00000001

* Reference to : tArrayTable._PROC_007B8568()
|
0063CC7D   E8E6B81700             call    007B8568
0063CC82   84C0                   test    al, al
0063CC84   750C                   jnz     0063CC92
0063CC86   A1DCAB7D00             mov     eax, dword ptr [$007DABDC]
0063CC8B   8B00                   mov     eax, [eax]

|
0063CC8D   E8E2A51700             call    007B7274
0063CC92   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CC97   8B00                   mov     eax, [eax]
0063CC99   8B507C                 mov     edx, [eax+$7C]
0063CC9C   A1DCAB7D00             mov     eax, dword ptr [$007DABDC]
0063CCA1   8B00                   mov     eax, [eax]

* Reference to : tArrayTable._PROC_007BA0C0()
|
0063CCA3   E818D41700             call    007BA0C0
0063CCA8   A1DCAB7D00             mov     eax, dword ptr [$007DABDC]
0063CCAD   8B00                   mov     eax, [eax]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0063CCAF   E828D11700             call    007B9DDC
0063CCB4   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CCB9   8B00                   mov     eax, [eax]
0063CCBB   8B407C                 mov     eax, [eax+$7C]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0063CCBE   E881E6EAFF             call    004EB344
0063CCC3   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CCC8   8B00                   mov     eax, [eax]
0063CCCA   8B407C                 mov     eax, [eax+$7C]
0063CCCD   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
0063CCD4   0F842AFFFFFF           jz      0063CC04
0063CCDA   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063CCDF   8B00                   mov     eax, [eax]
0063CCE1   8B407C                 mov     eax, [eax+$7C]

* Possible String Reference to: 'CODSUBLOCAL'
|
0063CCE4   BACCCD6300             mov     edx, $0063CDCC

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0063CCE9   E816CFEAFF             call    004E9C04
0063CCEE   8B5508                 mov     edx, [ebp+$08]
0063CCF1   8B08                   mov     ecx, [eax]
0063CCF3   FF5160                 call    dword ptr [ecx+$60]
0063CCF6   33C0                   xor     eax, eax
0063CCF8   5A                     pop     edx
0063CCF9   59                     pop     ecx
0063CCFA   59                     pop     ecx
0063CCFB   648910                 mov     fs:[eax], edx
0063CCFE   EB41                   jmp     0063CD41

* Reference to: System.@HandleOnException;
|
0063CD00   E9AB7EDCFF             jmp     00404BB0
0063CD05   0100                   add     [eax], eax
0063CD07   0000                   add     [eax], al
0063CD09   40                     inc     eax
0063CD0A   95                     xchg    eax, ebp
0063CD0B   40                     inc     eax
0063CD0C   0011                   add     [ecx], dl
0063CD0E   CD63                   int     $63
0063CD10   0089C36A008B           add     [ecx+$8B006AC3], cl
0063CD16   4B                     dec     ebx
0063CD17   048D                   add     al, -$73
0063CD19   857CFFFF               test    [edi+edi*8-$01], edi
0063CD1D   FFBA                   DB  $FF, $BA  //      
0063CD1F   B0CE                   mov     al, $CE
0063CD21   6300                   arpl    [eax], ax

* Reference to: System.@LStrCat3;
|
0063CD23   E8808ADCFF             call    004057A8
0063CD28   8B857CFFFFFF           mov     eax, [ebp+$FFFFFF7C]
0063CD2E   668B0DDCCE6300         mov     cx, word ptr [$0063CEDC]
0063CD35   B201                   mov     dl, $01

|
0063CD37   E8F06DE0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0063CD3C   E86F81DCFF             call    00404EB0

****** END
|
0063CD41   33C0                   xor     eax, eax
0063CD43   5A                     pop     edx
0063CD44   59                     pop     ecx
0063CD45   59                     pop     ecx
0063CD46   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063CD49   6860CD6300             push    $0063CD60
0063CD4E   A12CDD7D00             mov     eax, dword ptr [$007DDD2C]

* Reference to: System.TObject.Free(TObject);
|
0063CD53   E84478DCFF             call    0040459C
0063CD58   C3                     ret


* Reference to: System.@HandleFinally;
|
0063CD59   E9DA7FDCFF             jmp     00404D38
0063CD5E   EBEE                   jmp     0063CD4E

****** END
|
0063CD60   33C0                   xor     eax, eax
0063CD62   5A                     pop     edx
0063CD63   59                     pop     ecx
0063CD64   59                     pop     ecx
0063CD65   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063CD68   68BACD6300             push    $0063CDBA
0063CD6D   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]

* Reference to: System.@LStrClr(void;void);
|
0063CD73   E82487DCFF             call    0040549C
0063CD78   8D4588                 lea     eax, [ebp-$78]

* Reference to: System.@LStrClr(void;void);
|
0063CD7B   E81C87DCFF             call    0040549C
0063CD80   8D458C                 lea     eax, [ebp-$74]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0063CD83   E8F077DDFF             call    00414578
0063CD88   8D459C                 lea     eax, [ebp-$64]

* Reference to: System.@LStrClr(void;void);
|
0063CD8B   E80C87DCFF             call    0040549C
0063CD90   8D45A0                 lea     eax, [ebp-$60]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0063CD93   E8E077DDFF             call    00414578
0063CD98   8D45D0                 lea     eax, [ebp-$30]
0063CD9B   BA0C000000             mov     edx, $0000000C

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063CDA0   E81B87DCFF             call    004054C0
0063CDA5   8D4510                 lea     eax, [ebp+$10]
0063CDA8   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063CDAD   E80E87DCFF             call    004054C0
0063CDB2   C3                     ret


* Reference to: System.@HandleFinally;
|
0063CDB3   E9807FDCFF             jmp     00404D38
0063CDB8   EBB3                   jmp     0063CD6D

****** END
|
0063CDBA   5F                     pop     edi
0063CDBB   5E                     pop     esi
0063CDBC   5B                     pop     ebx
0063CDBD   8BE5                   mov     esp, ebp
0063CDBF   5D                     pop     ebp
0063CDC0   C21800                 ret     $0018

*)
end;

procedure TFrmF2SubLocal._PROC_0063CDB3(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0063CDB3   E9807FDCFF             jmp     00404D38

|
0063CDB8   EBB3                   jmp     0063CD6D
0063CDBA   5F                     pop     edi
0063CDBB   5E                     pop     esi
0063CDBC   5B                     pop     ebx
0063CDBD   8BE5                   mov     esp, ebp
0063CDBF   5D                     pop     ebp
0063CDC0   C21800                 ret     $0018

*)
end;

procedure TFrmF2SubLocal._PROC_0063CDD1(Sender : TObject);
begin
(*
0063CDD1   42                     inc     edx
0063CDD2   4C                     dec     esp
0063CDD3   4F                     dec     edi
0063CDD4   43                     inc     ebx
0063CDD5   41                     inc     ecx
0063CDD6   4C                     dec     esp
0063CDD7   00FF                   add     bh, bh
0063CDD9   FFFF                   DB  $FF, $FF  //      
0063CDDB   FF13                   call    dword ptr [ebx]
0063CDDD   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063CE39(Sender : TObject);
begin
(*
0063CE39   42                     inc     edx
0063CE3A   4C                     dec     esp
0063CE3B   4F                     dec     edi
0063CE3C   43                     inc     ebx
0063CE3D   41                     inc     ecx
0063CE3E   4C                     dec     esp
0063CE3F   00FF                   add     bh, bh
0063CE41   FFFF                   DB  $FF, $FF  //      
0063CE43   FF01                   inc     dword ptr [ecx]
0063CE45   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063CE91(Sender : TObject);
begin
(*
0063CE91   54                     push    esp
0063CE92   4F                     dec     edi
0063CE93   53                     push    ebx
0063CE94   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D031(Sender : TObject);
begin
(*
0063D031   8BEC                   mov     ebp, esp
0063D033   33C0                   xor     eax, eax
0063D035   55                     push    ebp

* Possible String Reference to: 'éÞ|Üÿëø]Ã‹Àƒ-0Ý}'
|
0063D036   6855D06300             push    $0063D055

***** TRY
|
0063D03B   64FF30                 push    dword ptr fs:[eax]
0063D03E   648920                 mov     fs:[eax], esp
0063D041   FF0530DD7D00           inc     dword ptr [$007DDD30]
0063D047   33C0                   xor     eax, eax
0063D049   5A                     pop     edx
0063D04A   59                     pop     ecx
0063D04B   59                     pop     ecx
0063D04C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-0Ý}'
|
0063D04F   685CD06300             push    $0063D05C
0063D054   C3                     ret


* Reference to: System.@HandleFinally;
|
0063D055   E9DE7CDCFF             jmp     00404D38
0063D05A   EBF8                   jmp     0063D054

****** END
|
0063D05C   5D                     pop     ebp
0063D05D   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063D060(Sender : TObject);
begin
(*
0063D060   832D30DD7D0001         sub     dword ptr [$007DDD30], +$01
0063D067   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063D068(Sender : TObject);
begin
(*
0063D068   55                     push    ebp
0063D069   8BEC                   mov     ebp, esp
0063D06B   51                     push    ecx
0063D06C   B906000000             mov     ecx, $00000006
0063D071   6A00                   push    $00
0063D073   6A00                   push    $00
0063D075   49                     dec     ecx
0063D076   75F9                   jnz     0063D071
0063D078   874DFC                 xchg    [ebp-$04], ecx
0063D07B   53                     push    ebx
0063D07C   56                     push    esi
0063D07D   57                     push    edi
0063D07E   894DF4                 mov     [ebp-$0C], ecx
0063D081   8955F8                 mov     [ebp-$08], edx
0063D084   8945FC                 mov     [ebp-$04], eax
0063D087   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063D08A   E8BD88DCFF             call    0040594C
0063D08F   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063D092   E8B588DCFF             call    0040594C
0063D097   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063D09A   E8AD88DCFF             call    0040594C
0063D09F   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063D0A2   E8A588DCFF             call    0040594C
0063D0A7   33C0                   xor     eax, eax
0063D0A9   55                     push    ebp
0063D0AA   68F4D26300             push    $0063D2F4

***** TRY
|
0063D0AF   64FF30                 push    dword ptr fs:[eax]
0063D0B2   648920                 mov     fs:[eax], esp
0063D0B5   C645F300               mov     byte ptr [ebp-$0D], $00
0063D0B9   33C0                   xor     eax, eax
0063D0BB   55                     push    ebp
0063D0BC   68BDD26300             push    $0063D2BD

***** TRY
|
0063D0C1   64FF30                 push    dword ptr fs:[eax]
0063D0C4   648920                 mov     fs:[eax], esp
0063D0C7   33C0                   xor     eax, eax
0063D0C9   55                     push    ebp
0063D0CA   6874D26300             push    $0063D274

***** TRY
|
0063D0CF   64FF30                 push    dword ptr fs:[eax]
0063D0D2   648920                 mov     fs:[eax], esp
0063D0D5   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D0DA   8B00                   mov     eax, [eax]
0063D0DC   8B5058                 mov     edx, [eax+$58]
0063D0DF   33C0                   xor     eax, eax

* Reference to : TFrmInfoAtu._PROC_007A8D7C()
|
0063D0E1   E896BC1600             call    007A8D7C
0063D0E6   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D0EB   8B00                   mov     eax, [eax]
0063D0ED   8B4058                 mov     eax, [eax+$58]
0063D0F0   8B5858                 mov     ebx, [eax+$58]
0063D0F3   8BC3                   mov     eax, ebx
0063D0F5   8B10                   mov     edx, [eax]
0063D0F7   FF5244                 call    dword ptr [edx+$44]

* Possible String Reference to: 'SELECT PRODUNID.CODPROD, PRODUNID.F
|                                ILIAL, PRODUNID.UNIDMED, PRODUNID.Q
|                                TDEUNIDMED, '
|
0063D0FA   BA10D36300             mov     edx, $0063D310
0063D0FF   8BC3                   mov     eax, ebx
0063D101   8B08                   mov     ecx, [eax]
0063D103   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'PRODUNID.FATORCONVERSAO, PRODUNID.P
|                                ADRAO, PRODUTOS.DECIQTDE, PRODUTOS.
|                                DECIVLR'
|
0063D106   BA6CD36300             mov     edx, $0063D36C
0063D10B   8BC3                   mov     eax, ebx
0063D10D   8B08                   mov     ecx, [eax]
0063D10F   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'FROM PRODUNID'
|
0063D112   BAC4D36300             mov     edx, $0063D3C4
0063D117   8BC3                   mov     eax, ebx
0063D119   8B08                   mov     ecx, [eax]
0063D11B   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'LEFT OUTER JOIN PRODUTOS ON (PRODUN
|                                ID.CODPROD = PRODUTOS.CODPROD)'
|
0063D11E   BADCD36300             mov     edx, $0063D3DC
0063D123   8BC3                   mov     eax, ebx
0063D125   8B08                   mov     ecx, [eax]
0063D127   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'WHERE (0=0) '
|
0063D12A   BA28D46300             mov     edx, $0063D428
0063D12F   8BC3                   mov     eax, ebx
0063D131   8B08                   mov     ecx, [eax]
0063D133   FF5138                 call    dword ptr [ecx+$38]
0063D136   837DFC00               cmp     dword ptr [ebp-$04], +$00
0063D13A   742F                   jz      0063D16B

* Possible String Reference to: ' AND (PRODUNID.CODPROD = '
|
0063D13C   6840D46300             push    $0063D440
0063D141   8D55E8                 lea     edx, [ebp-$18]
0063D144   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0063D147   E8D4691600             call    007A3B20
0063D14C   FF75E8                 push    dword ptr [ebp-$18]
0063D14F   6864D46300             push    $0063D464
0063D154   8D45EC                 lea     eax, [ebp-$14]
0063D157   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0063D15C   E8BB86DCFF             call    0040581C
0063D161   8B55EC                 mov     edx, [ebp-$14]
0063D164   8BC3                   mov     eax, ebx
0063D166   8B08                   mov     ecx, [eax]
0063D168   FF5138                 call    dword ptr [ecx+$38]
0063D16B   837DF800               cmp     dword ptr [ebp-$08], +$00
0063D16F   7445                   jz      0063D1B6
0063D171   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0063D176   8B00                   mov     eax, [eax]
0063D178   8B8098050000           mov     eax, [eax+$0598]
0063D17E   8B10                   mov     edx, [eax]
0063D180   FF5244                 call    dword ptr [edx+$44]
0063D183   84C0                   test    al, al
0063D185   742F                   jz      0063D1B6

* Possible String Reference to: ' AND (PRODUNID.FILIAL = '
|
0063D187   6870D46300             push    $0063D470
0063D18C   8D55E0                 lea     edx, [ebp-$20]
0063D18F   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0063D192   E889691600             call    007A3B20
0063D197   FF75E0                 push    dword ptr [ebp-$20]
0063D19A   6864D46300             push    $0063D464
0063D19F   8D45E4                 lea     eax, [ebp-$1C]
0063D1A2   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0063D1A7   E87086DCFF             call    0040581C
0063D1AC   8B55E4                 mov     edx, [ebp-$1C]
0063D1AF   8BC3                   mov     eax, ebx
0063D1B1   8B08                   mov     ecx, [eax]
0063D1B3   FF5138                 call    dword ptr [ecx+$38]
0063D1B6   837DF400               cmp     dword ptr [ebp-$0C], +$00
0063D1BA   742F                   jz      0063D1EB

* Possible String Reference to: ' AND (PRODUNID.UNIDMED = '
|
0063D1BC   6894D46300             push    $0063D494
0063D1C1   8D55D8                 lea     edx, [ebp-$28]
0063D1C4   8B45F4                 mov     eax, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0063D1C7   E854691600             call    007A3B20
0063D1CC   FF75D8                 push    dword ptr [ebp-$28]
0063D1CF   6864D46300             push    $0063D464
0063D1D4   8D45DC                 lea     eax, [ebp-$24]
0063D1D7   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0063D1DC   E83B86DCFF             call    0040581C
0063D1E1   8B55DC                 mov     edx, [ebp-$24]
0063D1E4   8BC3                   mov     eax, ebx
0063D1E6   8B08                   mov     ecx, [eax]
0063D1E8   FF5138                 call    dword ptr [ecx+$38]
0063D1EB   837D0C00               cmp     dword ptr [ebp+$0C], +$00
0063D1EF   742F                   jz      0063D220

* Possible String Reference to: ' AND (PRODUNID.QTDEUNIDMED = '
|
0063D1F1   68B8D46300             push    $0063D4B8
0063D1F6   8D55D0                 lea     edx, [ebp-$30]
0063D1F9   8B450C                 mov     eax, [ebp+$0C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0063D1FC   E81F691600             call    007A3B20
0063D201   FF75D0                 push    dword ptr [ebp-$30]
0063D204   6864D46300             push    $0063D464
0063D209   8D45D4                 lea     eax, [ebp-$2C]
0063D20C   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0063D211   E80686DCFF             call    0040581C
0063D216   8B55D4                 mov     edx, [ebp-$2C]
0063D219   8BC3                   mov     eax, ebx
0063D21B   8B08                   mov     ecx, [eax]
0063D21D   FF5138                 call    dword ptr [ecx+$38]
0063D220   807D0800               cmp     byte ptr [ebp+$08], $00
0063D224   740C                   jz      0063D232

* Possible String Reference to: ' AND (PRODUNID.PADRAO = 'T')'
|
0063D226   BAE0D46300             mov     edx, $0063D4E0
0063D22B   8BC3                   mov     eax, ebx
0063D22D   8B08                   mov     ecx, [eax]
0063D22F   FF5138                 call    dword ptr [ecx+$38]
0063D232   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D237   8B00                   mov     eax, [eax]
0063D239   8B4058                 mov     eax, [eax+$58]

* Reference to: IBSQL.TIBSQL.ExecQuery(TIBSQL);
|
0063D23C   E8CB81F2FF             call    0056540C
0063D241   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D246   8B00                   mov     eax, [eax]
0063D248   8B5858                 mov     ebx, [eax+$58]
0063D24B   807B3B00               cmp     byte ptr [ebx+$3B], $00
0063D24F   7410                   jz      0063D261
0063D251   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D256   8BC3                   mov     eax, ebx

* Reference to : TIBSQL._PROC_00565ACC()
|
0063D258   E86F88F2FF             call    00565ACC
0063D25D   85C0                   test    eax, eax
0063D25F   7F04                   jnle    0063D265
0063D261   33C0                   xor     eax, eax
0063D263   EB02                   jmp     0063D267
0063D265   B001                   mov     al, $01
0063D267   8845F3                 mov     [ebp-$0D], al
0063D26A   33C0                   xor     eax, eax
0063D26C   5A                     pop     edx
0063D26D   59                     pop     ecx
0063D26E   59                     pop     ecx
0063D26F   648910                 mov     fs:[eax], edx
0063D272   EB3B                   jmp     0063D2AF

* Reference to: System.@HandleOnException;
|
0063D274   E93779DCFF             jmp     00404BB0
0063D279   0100                   add     [eax], eax
0063D27B   0000                   add     [eax], al
0063D27D   40                     inc     eax
0063D27E   95                     xchg    eax, ebp
0063D27F   40                     inc     eax
0063D280   0085D2630089           add     [ebp+$890063D2], al
0063D286   C3                     ret

0063D287   6A00                   push    $00
0063D289   8B4B04                 mov     ecx, [ebx+$04]
0063D28C   8D45CC                 lea     eax, [ebp-$34]

* Possible String Reference to: 'Erro ao selecionar a filial!'
|
0063D28F   BA08D56300             mov     edx, $0063D508

* Reference to: System.@LStrCat3;
|
0063D294   E80F85DCFF             call    004057A8
0063D299   8B45CC                 mov     eax, [ebp-$34]
0063D29C   668B0D28D56300         mov     cx, word ptr [$0063D528]
0063D2A3   B201                   mov     dl, $01

|
0063D2A5   E88268E0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0063D2AA   E8017CDCFF             call    00404EB0

****** END
|
0063D2AF   33C0                   xor     eax, eax
0063D2B1   5A                     pop     edx
0063D2B2   59                     pop     ecx
0063D2B3   59                     pop     ecx
0063D2B4   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063D2B7   68C4D26300             push    $0063D2C4
0063D2BC   C3                     ret


* Reference to: System.@HandleFinally;
|
0063D2BD   E9767ADCFF             jmp     00404D38
0063D2C2   EBF8                   jmp     0063D2BC

****** END
|
0063D2C4   33C0                   xor     eax, eax
0063D2C6   5A                     pop     edx
0063D2C7   59                     pop     ecx
0063D2C8   59                     pop     ecx
0063D2C9   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063D2CC   68FBD26300             push    $0063D2FB
0063D2D1   8D45CC                 lea     eax, [ebp-$34]
0063D2D4   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063D2D9   E8E281DCFF             call    004054C0
0063D2DE   8D45F4                 lea     eax, [ebp-$0C]
0063D2E1   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063D2E6   E8D581DCFF             call    004054C0
0063D2EB   8D450C                 lea     eax, [ebp+$0C]

* Reference to: System.@LStrClr(void;void);
|
0063D2EE   E8A981DCFF             call    0040549C
0063D2F3   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063D2F4(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0063D2F4   E93F7ADCFF             jmp     00404D38

|
0063D2F9   EBD6                   jmp     0063D2D1
0063D2FB   8A45F3                 mov     al, byte ptr [ebp-$0D]
0063D2FE   5F                     pop     edi
0063D2FF   5E                     pop     esi
0063D300   5B                     pop     ebx
0063D301   8BE5                   mov     esp, ebp
0063D303   5D                     pop     ebp
0063D304   C20800                 ret     $0008

*)
end;

procedure TFrmF2SubLocal._PROC_0063D31C(Sender : TObject);
begin
(*
0063D31C   4E                     dec     esi
0063D31D   49                     dec     ecx
0063D31E   44                     inc     esp
0063D31F   2E43                   inc     ebx
0063D321   4F                     dec     edi
0063D322   44                     inc     esp
0063D323   50                     push    eax
0063D324   52                     push    edx
0063D325   4F                     dec     edi
0063D326   44                     inc     esp
0063D327   2C20                   sub     al, $20
0063D329   50                     push    eax
0063D32A   52                     push    edx
0063D32B   4F                     dec     edi
0063D32C   44                     inc     esp
0063D32D   55                     push    ebp
0063D32E   4E                     dec     esi
0063D32F   49                     dec     ecx
0063D330   44                     inc     esp
0063D331   2E46                   inc     esi
0063D333   49                     dec     ecx
0063D334   4C                     dec     esp
0063D335   49                     dec     ecx
0063D336   41                     inc     ecx
0063D337   4C                     dec     esp
0063D338   2C20                   sub     al, $20
0063D33A   50                     push    eax
0063D33B   52                     push    edx
0063D33C   4F                     dec     edi
0063D33D   44                     inc     esp
0063D33E   55                     push    ebp
0063D33F   4E                     dec     esi
0063D340   49                     dec     ecx
0063D341   44                     inc     esp
0063D342   2E55                   push    ebp
0063D344   4E                     dec     esi
0063D345   49                     dec     ecx
0063D346   44                     inc     esp
0063D347   4D                     dec     ebp
0063D348   45                     inc     ebp
0063D349   44                     inc     esp
0063D34A   2C20                   sub     al, $20
0063D34C   50                     push    eax
0063D34D   52                     push    edx
0063D34E   4F                     dec     edi
0063D34F   44                     inc     esp
0063D350   55                     push    ebp
0063D351   4E                     dec     esi
0063D352   49                     dec     ecx
0063D353   44                     inc     esp
0063D354   2E51                   push    ecx
0063D356   54                     push    esp
0063D357   44                     inc     esp
0063D358   45                     inc     ebp
0063D359   55                     push    ebp
0063D35A   4E                     dec     esi
0063D35B   49                     dec     ecx
0063D35C   44                     inc     esp
0063D35D   4D                     dec     ebp
0063D35E   45                     inc     ebp
0063D35F   44                     inc     esp
0063D360   2C20                   sub     al, $20
0063D362   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D371(Sender : TObject);
begin
(*
0063D371   4E                     dec     esi
0063D372   49                     dec     ecx
0063D373   44                     inc     esp
0063D374   2E46                   inc     esi
0063D376   41                     inc     ecx
0063D377   54                     push    esp
0063D378   4F                     dec     edi
0063D379   52                     push    edx
0063D37A   43                     inc     ebx
0063D37B   4F                     dec     edi
0063D37C   4E                     dec     esi
0063D37D   56                     push    esi
0063D37E   45                     inc     ebp
0063D37F   52                     push    edx
0063D380   53                     push    ebx
0063D381   41                     inc     ecx
0063D382   4F                     dec     edi
0063D383   2C20                   sub     al, $20
0063D385   50                     push    eax
0063D386   52                     push    edx
0063D387   4F                     dec     edi
0063D388   44                     inc     esp
0063D389   55                     push    ebp
0063D38A   4E                     dec     esi
0063D38B   49                     dec     ecx
0063D38C   44                     inc     esp
0063D38D   2E50                   push    eax
0063D38F   41                     inc     ecx
0063D390   44                     inc     esp
0063D391   52                     push    edx
0063D392   41                     inc     ecx
0063D393   4F                     dec     edi
0063D394   2C20                   sub     al, $20
0063D396   50                     push    eax
0063D397   52                     push    edx
0063D398   4F                     dec     edi
0063D399   44                     inc     esp
0063D39A   55                     push    ebp
0063D39B   54                     push    esp
0063D39C   4F                     dec     edi
0063D39D   53                     push    ebx
0063D39E   2E44                   inc     esp
0063D3A0   45                     inc     ebp
0063D3A1   43                     inc     ebx
0063D3A2   49                     dec     ecx
0063D3A3   51                     push    ecx
0063D3A4   54                     push    esp
0063D3A5   44                     inc     esp
0063D3A6   45                     inc     ebp
0063D3A7   2C20                   sub     al, $20
0063D3A9   50                     push    eax
0063D3AA   52                     push    edx
0063D3AB   4F                     dec     edi
0063D3AC   44                     inc     esp
0063D3AD   55                     push    ebp
0063D3AE   54                     push    esp
0063D3AF   4F                     dec     edi
0063D3B0   53                     push    ebx
0063D3B1   2E44                   inc     esp
0063D3B3   45                     inc     ebp
0063D3B4   43                     inc     ebx
0063D3B5   49                     dec     ecx
0063D3B6   56                     push    esi
0063D3B7   4C                     dec     esp
0063D3B8   52                     push    edx
0063D3B9   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D3CE(Sender : TObject);
begin
(*
0063D3CE   4E                     dec     esi
0063D3CF   49                     dec     ecx
0063D3D0   44                     inc     esp
0063D3D1   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D3E3(Sender : TObject);
begin
(*
0063D3E3   54                     push    esp
0063D3E4   45                     inc     ebp
0063D3E5   52                     push    edx
0063D3E6   204A4F                 and     [edx+$4F], cl
0063D3E9   49                     dec     ecx
0063D3EA   4E                     dec     esi
0063D3EB   205052                 and     [eax+$52], dl
0063D3EE   4F                     dec     edi
0063D3EF   44                     inc     esp
0063D3F0   55                     push    ebp
0063D3F1   54                     push    esp
0063D3F2   4F                     dec     edi
0063D3F3   53                     push    ebx
0063D3F4   204F4E                 and     [edi+$4E], cl
0063D3F7   2028                   and     [eax], ch
0063D3F9   50                     push    eax
0063D3FA   52                     push    edx
0063D3FB   4F                     dec     edi
0063D3FC   44                     inc     esp
0063D3FD   55                     push    ebp
0063D3FE   4E                     dec     esi
0063D3FF   49                     dec     ecx
0063D400   44                     inc     esp
0063D401   2E43                   inc     ebx
0063D403   4F                     dec     edi
0063D404   44                     inc     esp
0063D405   50                     push    eax
0063D406   52                     push    edx
0063D407   4F                     dec     edi
0063D408   44                     inc     esp
0063D409   203D2050524F           and     [$4F525020], bh
0063D40F   44                     inc     esp
0063D410   55                     push    ebp
0063D411   54                     push    esp
0063D412   4F                     dec     edi
0063D413   53                     push    ebx
0063D414   2E43                   inc     ebx
0063D416   4F                     dec     edi
0063D417   44                     inc     esp
0063D418   50                     push    eax
0063D419   52                     push    edx
0063D41A   4F                     dec     edi
0063D41B   44                     inc     esp
0063D41C   2900                   sub     dword ptr [eax], eax
0063D41E   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D44B(Sender : TObject);
begin
(*
0063D44B   4E                     dec     esi
0063D44C   49                     dec     ecx
0063D44D   44                     inc     esp
0063D44E   2E43                   inc     ebx
0063D450   4F                     dec     edi
0063D451   44                     inc     esp
0063D452   50                     push    eax
0063D453   52                     push    edx
0063D454   4F                     dec     edi
0063D455   44                     inc     esp
0063D456   203D20000000           and     [$00000020], bh
0063D45C   FFFF                   DB  $FF, $FF  //      
0063D45E   FFFF                   DB  $FF, $FF  //      
0063D460   0100                   add     [eax], eax
0063D462   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D47B(Sender : TObject);
begin
(*
0063D47B   4E                     dec     esi
0063D47C   49                     dec     ecx
0063D47D   44                     inc     esp
0063D47E   2E46                   inc     esi
0063D480   49                     dec     ecx
0063D481   4C                     dec     esp
0063D482   49                     dec     ecx
0063D483   41                     inc     ecx
0063D484   4C                     dec     esp
0063D485   203D20000000           and     [$00000020], bh
0063D48B   00FF                   add     bh, bh
0063D48D   FFFF                   DB  $FF, $FF  //      
0063D48F   FF19                   call    [ecx]
0063D491   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D49F(Sender : TObject);
begin
(*
0063D49F   4E                     dec     esi
0063D4A0   49                     dec     ecx
0063D4A1   44                     inc     esp
0063D4A2   2E55                   push    ebp
0063D4A4   4E                     dec     esi
0063D4A5   49                     dec     ecx
0063D4A6   44                     inc     esp
0063D4A7   4D                     dec     ebp
0063D4A8   45                     inc     ebp
0063D4A9   44                     inc     esp
0063D4AA   203D20000000           and     [$00000020], bh
0063D4B0   FFFF                   DB  $FF, $FF  //      
0063D4B2   FFFF                   DB  $FF, $FF  //      
0063D4B4   1D00000020             sbb     eax, $20000000
0063D4B9   41                     inc     ecx
0063D4BA   4E                     dec     esi
0063D4BB   44                     inc     esp
0063D4BC   2028                   and     [eax], ch
0063D4BE   50                     push    eax
0063D4BF   52                     push    edx
0063D4C0   4F                     dec     edi
0063D4C1   44                     inc     esp
0063D4C2   55                     push    ebp
0063D4C3   4E                     dec     esi
0063D4C4   49                     dec     ecx
0063D4C5   44                     inc     esp
0063D4C6   2E51                   push    ecx
0063D4C8   54                     push    esp
0063D4C9   44                     inc     esp
0063D4CA   45                     inc     ebp
0063D4CB   55                     push    ebp
0063D4CC   4E                     dec     esi
0063D4CD   49                     dec     ecx
0063D4CE   44                     inc     esp
0063D4CF   4D                     dec     ebp
0063D4D0   45                     inc     ebp
0063D4D1   44                     inc     esp
0063D4D2   203D20000000           and     [$00000020], bh
0063D4D8   FFFF                   DB  $FF, $FF  //      
0063D4DA   FFFF                   DB  $FF, $FF  //      
0063D4DC   1C00                   sbb     al, $00
0063D4DE   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D4EB(Sender : TObject);
begin
(*
0063D4EB   4E                     dec     esi
0063D4EC   49                     dec     ecx
0063D4ED   44                     inc     esp
0063D4EE   2E50                   push    eax
0063D4F0   41                     inc     ecx
0063D4F1   44                     inc     esp
0063D4F2   52                     push    edx
0063D4F3   41                     inc     ecx
0063D4F4   4F                     dec     edi
0063D4F5   203D20275427           and     [$27542720], bh
0063D4FB   2900                   sub     dword ptr [eax], eax
0063D4FD   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D52D(Sender : TObject);
begin
(*
0063D52D   8BEC                   mov     ebp, esp
0063D52F   83C4C8                 add     esp, -$38
0063D532   53                     push    ebx
0063D533   56                     push    esi
0063D534   57                     push    edi
0063D535   33DB                   xor     ebx, ebx
0063D537   895DC8                 mov     [ebp-$38], ebx
0063D53A   895DCC                 mov     [ebp-$34], ebx
0063D53D   895DD0                 mov     [ebp-$30], ebx
0063D540   895DD4                 mov     [ebp-$2C], ebx
0063D543   894DF4                 mov     [ebp-$0C], ecx
0063D546   8955F8                 mov     [ebp-$08], edx
0063D549   8945FC                 mov     [ebp-$04], eax
0063D54C   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063D54F   E8F883DCFF             call    0040594C
0063D554   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063D557   E8F083DCFF             call    0040594C
0063D55C   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063D55F   E8E883DCFF             call    0040594C
0063D564   33C0                   xor     eax, eax
0063D566   55                     push    ebp
0063D567   6899D76300             push    $0063D799

***** TRY
|
0063D56C   64FF30                 push    dword ptr fs:[eax]
0063D56F   648920                 mov     fs:[eax], esp
0063D572   8B4508                 mov     eax, [ebp+$08]
0063D575   8945E8                 mov     [ebp-$18], eax
0063D578   8B450C                 mov     eax, [ebp+$0C]
0063D57B   8945EC                 mov     [ebp-$14], eax
0063D57E   668B4510               mov     ax, word ptr [ebp+$10]
0063D582   668945F0               mov     [ebp-$10], ax
0063D586   33C0                   xor     eax, eax
0063D588   55                     push    ebp
0063D589   686AD76300             push    $0063D76A

***** TRY
|
0063D58E   64FF30                 push    dword ptr fs:[eax]
0063D591   648920                 mov     fs:[eax], esp
0063D594   33C0                   xor     eax, eax
0063D596   55                     push    ebp
0063D597   6821D76300             push    $0063D721

***** TRY
|
0063D59C   64FF30                 push    dword ptr fs:[eax]
0063D59F   648920                 mov     fs:[eax], esp
0063D5A2   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0063D5A7   8B00                   mov     eax, [eax]
0063D5A9   8B80E4010000           mov     eax, [eax+$01E4]
0063D5AF   8B10                   mov     edx, [eax]
0063D5B1   FF5244                 call    dword ptr [edx+$44]
0063D5B4   84C0                   test    al, al
0063D5B6   0F845B010000           jz      0063D717
0063D5BC   837DFC00               cmp     dword ptr [ebp-$04], +$00
0063D5C0   0F8451010000           jz      0063D717
0063D5C6   A154AE7D00             mov     eax, dword ptr [$007DAE54]
0063D5CB   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
0063D5CD   E88E87E7FF             call    004B5D60
0063D5D2   33C0                   xor     eax, eax
0063D5D4   8945D8                 mov     [ebp-$28], eax
0063D5D7   C745DC00000080         mov     dword ptr [ebp-$24], $80000000
0063D5DE   66C745E0FF3F           mov     word ptr [ebp-$20], $3FFF
0063D5E4   B301                   mov     bl, $01
0063D5E6   6A00                   push    $00
0063D5E8   6A01                   push    $01
0063D5EA   33C9                   xor     ecx, ecx
0063D5EC   8B55F8                 mov     edx, [ebp-$08]
0063D5EF   8B45FC                 mov     eax, [ebp-$04]

* Reference to: xmlutil.PutValue(IDOMNode;AnsiString;AnsiString);
|
0063D5F2   E871FAFFFF             call    0063D068
0063D5F7   84C0                   test    al, al
0063D5F9   746F                   jz      0063D66A
0063D5FB   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D600   8B00                   mov     eax, [eax]
0063D602   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'FatorConversao'
|
0063D605   BAB4D76300             mov     edx, $0063D7B4

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0063D60A   E83D80F2FF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsFloat(TIBXSQLVAR):Float;
|
0063D60F   E8B857F2FF             call    00562DCC
0063D614   DB7DD8                 fstp    tbyte ptr [ebp-$28]
0063D617   9B                     wait
0063D618   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D61D   8B00                   mov     eax, [eax]
0063D61F   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'UnidMed'
|
0063D622   BACCD76300             mov     edx, $0063D7CC

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0063D627   E82080F2FF             call    0056564C
0063D62C   8D55D4                 lea     edx, [ebp-$2C]

* Reference to: IBSQL.TIBXSQLVAR.GetAsString(TIBXSQLVAR):AnsiString;
|
0063D62F   E8105AF2FF             call    00563044
0063D634   8B55D4                 mov     edx, [ebp-$2C]
0063D637   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrCmp;
|
0063D63A   E86982DCFF             call    004058A8
0063D63F   7527                   jnz     0063D668
0063D641   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D646   8B00                   mov     eax, [eax]
0063D648   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'QtdeUnidMed'
|
0063D64B   BADCD76300             mov     edx, $0063D7DC

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0063D650   E8F77FF2FF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsFloat(TIBXSQLVAR):Float;
|
0063D655   E87257F2FF             call    00562DCC
0063D65A   DB6D14                 fld     tbyte ptr [ebp+$14]
0063D65D   DED9                   fcompp
0063D65F   DFE0                   fstsw   ax
0063D661   9E                     sahf
0063D662   7504                   jnz     0063D668
0063D664   33DB                   xor     ebx, ebx
0063D666   EB02                   jmp     0063D66A
0063D668   B301                   mov     bl, $01
0063D66A   84DB                   test    bl, bl
0063D66C   0F84A5000000           jz      0063D717
0063D672   668B451C               mov     ax, word ptr [ebp+$1C]
0063D676   50                     push    eax
0063D677   FF7518                 push    dword ptr [ebp+$18]
0063D67A   FF7514                 push    dword ptr [ebp+$14]
0063D67D   8D45D0                 lea     eax, [ebp-$30]

|
0063D680   E8E7FDDCFF             call    0040D46C
0063D685   8B45D0                 mov     eax, [ebp-$30]
0063D688   50                     push    eax
0063D689   6A00                   push    $00
0063D68B   8B4DF4                 mov     ecx, [ebp-$0C]
0063D68E   8B55F8                 mov     edx, [ebp-$08]
0063D691   8B45FC                 mov     eax, [ebp-$04]

* Reference to: xmlutil.PutValue(IDOMNode;AnsiString;AnsiString);
|
0063D694   E8CFF9FFFF             call    0063D068
0063D699   84C0                   test    al, al
0063D69B   747A                   jz      0063D717
0063D69D   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D6A2   8B00                   mov     eax, [eax]
0063D6A4   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'Padrao'
|
0063D6A7   BAF0D76300             mov     edx, $0063D7F0

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0063D6AC   E89B7FF2FF             call    0056564C
0063D6B1   8D55CC                 lea     edx, [ebp-$34]

* Reference to: IBSQL.TIBXSQLVAR.GetAsString(TIBXSQLVAR):AnsiString;
|
0063D6B4   E88B59F2FF             call    00563044
0063D6B9   8B45CC                 mov     eax, [ebp-$34]
0063D6BC   BA00D86300             mov     edx, $0063D800

* Reference to: System.@LStrCmp;
|
0063D6C1   E8E281DCFF             call    004058A8
0063D6C6   744F                   jz      0063D717
0063D6C8   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D6CD   8B00                   mov     eax, [eax]
0063D6CF   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'FatorConversao'
|
0063D6D2   BAB4D76300             mov     edx, $0063D7B4

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0063D6D7   E8707FF2FF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsFloat(TIBXSQLVAR):Float;
|
0063D6DC   E8EB56F2FF             call    00562DCC
0063D6E1   DB6D08                 fld     tbyte ptr [ebp+$08]
0063D6E4   DEC9                   fmulp   st(1), st(0)
0063D6E6   DB6DD8                 fld     tbyte ptr [ebp-$28]

* Reference to: System.@FSafeDivide;
|
0063D6E9   E8125EDCFF             call    00403500
0063D6EE   83C4F8                 add     esp, -$08
0063D6F1   DD1C24                 fstp    qword ptr [esp]
0063D6F4   9B                     wait
0063D6F5   A1689F7D00             mov     eax, dword ptr [$007D9F68]
0063D6FA   8B00                   mov     eax, [eax]
0063D6FC   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'DeciQtde'
|
0063D6FF   BA0CD86300             mov     edx, $0063D80C

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
0063D704   E8437FF2FF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsLong(TIBXSQLVAR):Long;
|
0063D709   E82657F2FF             call    00562E34

|
0063D70E   E8F13B1600             call    007A1304
0063D713   DB7DE8                 fstp    tbyte ptr [ebp-$18]
0063D716   9B                     wait
0063D717   33C0                   xor     eax, eax
0063D719   5A                     pop     edx
0063D71A   59                     pop     ecx
0063D71B   59                     pop     ecx
0063D71C   648910                 mov     fs:[eax], edx
0063D71F   EB3B                   jmp     0063D75C

* Reference to: System.@HandleOnException;
|
0063D721   E98A74DCFF             jmp     00404BB0
0063D726   0100                   add     [eax], eax
0063D728   0000                   add     [eax], al
0063D72A   40                     inc     eax
0063D72B   95                     xchg    eax, ebp
0063D72C   40                     inc     eax
0063D72D   0032                   add     [edx], dh
0063D72F   D7                     xlat
0063D730   6300                   arpl    [eax], ax
0063D732   89C3                   mov     ebx, eax
0063D734   6A00                   push    $00
0063D736   8B4B04                 mov     ecx, [ebx+$04]
0063D739   8D45C8                 lea     eax, [ebp-$38]

* Possible String Reference to: 'Erro ao converter unidade.'
|
0063D73C   BA20D86300             mov     edx, $0063D820

* Reference to: System.@LStrCat3;
|
0063D741   E86280DCFF             call    004057A8
0063D746   8B45C8                 mov     eax, [ebp-$38]
0063D749   668B0D3CD86300         mov     cx, word ptr [$0063D83C]
0063D750   B202                   mov     dl, $02

|
0063D752   E8D563E0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0063D757   E85477DCFF             call    00404EB0

****** END
|
0063D75C   33C0                   xor     eax, eax
0063D75E   5A                     pop     edx
0063D75F   59                     pop     ecx
0063D760   59                     pop     ecx
0063D761   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063D764   6871D76300             push    $0063D771
0063D769   C3                     ret


* Reference to: System.@HandleFinally;
|
0063D76A   E9C975DCFF             jmp     00404D38
0063D76F   EBF8                   jmp     0063D769

****** END
|
0063D771   33C0                   xor     eax, eax
0063D773   5A                     pop     edx
0063D774   59                     pop     ecx
0063D775   59                     pop     ecx
0063D776   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063D779   68A0D76300             push    $0063D7A0
0063D77E   8D45C8                 lea     eax, [ebp-$38]
0063D781   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063D786   E8357DDCFF             call    004054C0
0063D78B   8D45F4                 lea     eax, [ebp-$0C]
0063D78E   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063D793   E8287DDCFF             call    004054C0
0063D798   C3                     ret


* Reference to: System.@HandleFinally;
|
0063D799   E99A75DCFF             jmp     00404D38
0063D79E   EBDE                   jmp     0063D77E

****** END
|
0063D7A0   DB6DE8                 fld     tbyte ptr [ebp-$18]
0063D7A3   5F                     pop     edi
0063D7A4   5E                     pop     esi
0063D7A5   5B                     pop     ebx
0063D7A6   8BE5                   mov     esp, ebp
0063D7A8   5D                     pop     ebp
0063D7A9   C21800                 ret     $0018

*)
end;

procedure TFrmF2SubLocal._PROC_0063D799(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0063D799   E99A75DCFF             jmp     00404D38

|
0063D79E   EBDE                   jmp     0063D77E
0063D7A0   DB6DE8                 fld     tbyte ptr [ebp-$18]
0063D7A3   5F                     pop     edi
0063D7A4   5E                     pop     esi
0063D7A5   5B                     pop     ebx
0063D7A6   8BE5                   mov     esp, ebp
0063D7A8   5D                     pop     ebp
0063D7A9   C21800                 ret     $0018

*)
end;

procedure TFrmF2SubLocal._PROC_0063D7CD(Sender : TObject);
begin
(*
0063D7CD   6E                     outsb
0063D7CE   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
0063D7D6   FFFF                   DB  $FF, $FF  //      
0063D7D8   0B00                   or      eax, [eax]
0063D7DA   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D7E1(Sender : TObject);
begin
(*
0063D7E1   6E                     outsb
0063D7E2   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
0063D7EA   FFFF                   DB  $FF, $FF  //      
0063D7EC   06                     push    es
0063D7ED   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063D841(Sender : TObject);
begin
(*
0063D841   8BEC                   mov     ebp, esp
0063D843   33C0                   xor     eax, eax
0063D845   55                     push    ebp

* Possible String Reference to: 'éÎtÜÿëø]Ã‹Àƒ-4Ý}'
|
0063D846   6865D86300             push    $0063D865

***** TRY
|
0063D84B   64FF30                 push    dword ptr fs:[eax]
0063D84E   648920                 mov     fs:[eax], esp
0063D851   FF0534DD7D00           inc     dword ptr [$007DDD34]
0063D857   33C0                   xor     eax, eax
0063D859   5A                     pop     edx
0063D85A   59                     pop     ecx
0063D85B   59                     pop     ecx
0063D85C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-4Ý}'
|
0063D85F   686CD86300             push    $0063D86C
0063D864   C3                     ret


* Reference to: System.@HandleFinally;
|
0063D865   E9CE74DCFF             jmp     00404D38
0063D86A   EBF8                   jmp     0063D864

****** END
|
0063D86C   5D                     pop     ebp
0063D86D   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063D870(Sender : TObject);
begin
(*
0063D870   832D34DD7D0001         sub     dword ptr [$007DDD34], +$01
0063D877   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063D878(Sender : TObject);
begin
(*
0063D878   55                     push    ebp
0063D879   8BEC                   mov     ebp, esp
0063D87B   83C4F8                 add     esp, -$08
0063D87E   53                     push    ebx
0063D87F   56                     push    esi
0063D880   57                     push    edi
0063D881   33D2                   xor     edx, edx
0063D883   8955F8                 mov     [ebp-$08], edx
0063D886   668945FE               mov     [ebp-$02], ax
0063D88A   8D5DFE                 lea     ebx, [ebp-$02]
0063D88D   33C0                   xor     eax, eax
0063D88F   55                     push    ebp

* Possible String Reference to: 'é'qÜÿëðŠEý_^[YY]Ã'
|
0063D890   680CDC6300             push    $0063DC0C

***** TRY
|
0063D895   64FF30                 push    dword ptr fs:[eax]
0063D898   648920                 mov     fs:[eax], esp
0063D89B   C645FD00               mov     byte ptr [ebp-$03], $00
0063D89F   33C0                   xor     eax, eax
0063D8A1   55                     push    ebp
0063D8A2   68EFDB6300             push    $0063DBEF

***** TRY
|
0063D8A7   64FF30                 push    dword ptr fs:[eax]
0063D8AA   648920                 mov     fs:[eax], esp
0063D8AD   33C0                   xor     eax, eax
0063D8AF   55                     push    ebp
0063D8B0   68A6DB6300             push    $0063DBA6

***** TRY
|
0063D8B5   64FF30                 push    dword ptr fs:[eax]
0063D8B8   648920                 mov     fs:[eax], esp
0063D8BB   F60301                 test    byte ptr [ebx], $01
0063D8BE   750B                   jnz     0063D8CB
0063D8C0   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063D8C6   663B03                 cmp     ax, word ptr [ebx]
0063D8C9   7528                   jnz     0063D8F3
0063D8CB   833D38DD7D0000         cmp     dword ptr [$007DDD38], +$00
0063D8D2   7515                   jnz     0063D8E9
0063D8D4   33C9                   xor     ecx, ecx
0063D8D6   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063D8D8   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063D8DD   E8369B1700             call    007B7418

* Reference to GlobalVar_007DDD38
|
0063D8E2   A338DD7D00             mov     dword ptr [$007DDD38], eax
0063D8E7   EB0A                   jmp     0063D8F3
0063D8E9   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063D8EE   E8A1B21700             call    007B8B94
0063D8F3   F60302                 test    byte ptr [ebx], $02
0063D8F6   750B                   jnz     0063D903
0063D8F8   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063D8FE   663B03                 cmp     ax, word ptr [ebx]
0063D901   7528                   jnz     0063D92B
0063D903   833D3CDD7D0000         cmp     dword ptr [$007DDD3C], +$00
0063D90A   7515                   jnz     0063D921
0063D90C   33C9                   xor     ecx, ecx
0063D90E   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063D910   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063D915   E8FE9A1700             call    007B7418

* Reference to GlobalVar_007DDD3C
|
0063D91A   A33CDD7D00             mov     dword ptr [$007DDD3C], eax
0063D91F   EB0A                   jmp     0063D92B
0063D921   A13CDD7D00             mov     eax, dword ptr [$007DDD3C]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063D926   E869B21700             call    007B8B94
0063D92B   F60320                 test    byte ptr [ebx], $20
0063D92E   750B                   jnz     0063D93B
0063D930   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063D936   663B03                 cmp     ax, word ptr [ebx]
0063D939   7528                   jnz     0063D963
0063D93B   833D4CDD7D0000         cmp     dword ptr [$007DDD4C], +$00
0063D942   7515                   jnz     0063D959
0063D944   33C9                   xor     ecx, ecx
0063D946   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063D948   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063D94D   E8C69A1700             call    007B7418

* Reference to GlobalVar_007DDD4C
|
0063D952   A34CDD7D00             mov     dword ptr [$007DDD4C], eax
0063D957   EB0A                   jmp     0063D963
0063D959   A14CDD7D00             mov     eax, dword ptr [$007DDD4C]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063D95E   E831B21700             call    007B8B94
0063D963   F60304                 test    byte ptr [ebx], $04
0063D966   750B                   jnz     0063D973
0063D968   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063D96E   663B03                 cmp     ax, word ptr [ebx]
0063D971   7528                   jnz     0063D99B
0063D973   833D40DD7D0000         cmp     dword ptr [$007DDD40], +$00
0063D97A   7515                   jnz     0063D991
0063D97C   33C9                   xor     ecx, ecx
0063D97E   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063D980   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063D985   E88E9A1700             call    007B7418

* Reference to GlobalVar_007DDD40
|
0063D98A   A340DD7D00             mov     dword ptr [$007DDD40], eax
0063D98F   EB0A                   jmp     0063D99B
0063D991   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063D996   E8F9B11700             call    007B8B94
0063D99B   F60308                 test    byte ptr [ebx], $08
0063D99E   750B                   jnz     0063D9AB
0063D9A0   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063D9A6   663B03                 cmp     ax, word ptr [ebx]
0063D9A9   7528                   jnz     0063D9D3
0063D9AB   833D44DD7D0000         cmp     dword ptr [$007DDD44], +$00
0063D9B2   7515                   jnz     0063D9C9
0063D9B4   33C9                   xor     ecx, ecx
0063D9B6   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063D9B8   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063D9BD   E8569A1700             call    007B7418

* Reference to GlobalVar_007DDD44
|
0063D9C2   A344DD7D00             mov     dword ptr [$007DDD44], eax
0063D9C7   EB0A                   jmp     0063D9D3
0063D9C9   A144DD7D00             mov     eax, dword ptr [$007DDD44]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063D9CE   E8C1B11700             call    007B8B94
0063D9D3   F60310                 test    byte ptr [ebx], $10
0063D9D6   750B                   jnz     0063D9E3
0063D9D8   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063D9DE   663B03                 cmp     ax, word ptr [ebx]
0063D9E1   7528                   jnz     0063DA0B
0063D9E3   833D48DD7D0000         cmp     dword ptr [$007DDD48], +$00
0063D9EA   7515                   jnz     0063DA01
0063D9EC   33C9                   xor     ecx, ecx
0063D9EE   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063D9F0   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063D9F5   E81E9A1700             call    007B7418

* Reference to GlobalVar_007DDD48
|
0063D9FA   A348DD7D00             mov     dword ptr [$007DDD48], eax
0063D9FF   EB0A                   jmp     0063DA0B
0063DA01   A148DD7D00             mov     eax, dword ptr [$007DDD48]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063DA06   E889B11700             call    007B8B94
0063DA0B   F60340                 test    byte ptr [ebx], $40
0063DA0E   750B                   jnz     0063DA1B
0063DA10   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063DA16   663B03                 cmp     ax, word ptr [ebx]
0063DA19   7528                   jnz     0063DA43
0063DA1B   833D50DD7D0000         cmp     dword ptr [$007DDD50], +$00
0063DA22   7515                   jnz     0063DA39
0063DA24   33C9                   xor     ecx, ecx
0063DA26   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063DA28   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063DA2D   E8E6991700             call    007B7418

* Reference to GlobalVar_007DDD50
|
0063DA32   A350DD7D00             mov     dword ptr [$007DDD50], eax
0063DA37   EB0A                   jmp     0063DA43
0063DA39   A150DD7D00             mov     eax, dword ptr [$007DDD50]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063DA3E   E851B11700             call    007B8B94
0063DA43   F60380                 test    byte ptr [ebx], $80
0063DA46   750B                   jnz     0063DA53
0063DA48   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063DA4E   663B03                 cmp     ax, word ptr [ebx]
0063DA51   7528                   jnz     0063DA7B
0063DA53   833D54DD7D0000         cmp     dword ptr [$007DDD54], +$00
0063DA5A   7515                   jnz     0063DA71
0063DA5C   33C9                   xor     ecx, ecx
0063DA5E   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063DA60   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063DA65   E8AE991700             call    007B7418

* Reference to GlobalVar_007DDD54
|
0063DA6A   A354DD7D00             mov     dword ptr [$007DDD54], eax
0063DA6F   EB0A                   jmp     0063DA7B
0063DA71   A154DD7D00             mov     eax, dword ptr [$007DDD54]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063DA76   E819B11700             call    007B8B94
0063DA7B   F6430101               test    byte ptr [ebx+$01], $01
0063DA7F   750B                   jnz     0063DA8C
0063DA81   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063DA87   663B03                 cmp     ax, word ptr [ebx]
0063DA8A   7528                   jnz     0063DAB4
0063DA8C   833D58DD7D0000         cmp     dword ptr [$007DDD58], +$00
0063DA93   7515                   jnz     0063DAAA
0063DA95   33C9                   xor     ecx, ecx
0063DA97   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063DA99   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063DA9E   E875991700             call    007B7418

* Reference to GlobalVar_007DDD58
|
0063DAA3   A358DD7D00             mov     dword ptr [$007DDD58], eax
0063DAA8   EB0A                   jmp     0063DAB4
0063DAAA   A158DD7D00             mov     eax, dword ptr [$007DDD58]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063DAAF   E8E0B01700             call    007B8B94
0063DAB4   F6430102               test    byte ptr [ebx+$01], $02
0063DAB8   750B                   jnz     0063DAC5
0063DABA   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063DAC0   663B03                 cmp     ax, word ptr [ebx]
0063DAC3   7528                   jnz     0063DAED
0063DAC5   833D5CDD7D0000         cmp     dword ptr [$007DDD5C], +$00
0063DACC   7515                   jnz     0063DAE3
0063DACE   33C9                   xor     ecx, ecx
0063DAD0   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063DAD2   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063DAD7   E83C991700             call    007B7418

* Reference to GlobalVar_007DDD5C
|
0063DADC   A35CDD7D00             mov     dword ptr [$007DDD5C], eax
0063DAE1   EB0A                   jmp     0063DAED
0063DAE3   A15CDD7D00             mov     eax, dword ptr [$007DDD5C]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063DAE8   E8A7B01700             call    007B8B94
0063DAED   F6430104               test    byte ptr [ebx+$01], $04
0063DAF1   750B                   jnz     0063DAFE
0063DAF3   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063DAF9   663B03                 cmp     ax, word ptr [ebx]
0063DAFC   7528                   jnz     0063DB26
0063DAFE   833D60DD7D0000         cmp     dword ptr [$007DDD60], +$00
0063DB05   7515                   jnz     0063DB1C
0063DB07   33C9                   xor     ecx, ecx
0063DB09   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063DB0B   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063DB10   E803991700             call    007B7418

* Reference to GlobalVar_007DDD60
|
0063DB15   A360DD7D00             mov     dword ptr [$007DDD60], eax
0063DB1A   EB0A                   jmp     0063DB26
0063DB1C   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063DB21   E86EB01700             call    007B8B94
0063DB26   F6430108               test    byte ptr [ebx+$01], $08
0063DB2A   750B                   jnz     0063DB37
0063DB2C   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063DB32   663B03                 cmp     ax, word ptr [ebx]
0063DB35   7528                   jnz     0063DB5F
0063DB37   833D64DD7D0000         cmp     dword ptr [$007DDD64], +$00
0063DB3E   7515                   jnz     0063DB55
0063DB40   33C9                   xor     ecx, ecx
0063DB42   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063DB44   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063DB49   E8CA981700             call    007B7418

* Reference to GlobalVar_007DDD64
|
0063DB4E   A364DD7D00             mov     dword ptr [$007DDD64], eax
0063DB53   EB0A                   jmp     0063DB5F
0063DB55   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063DB5A   E835B01700             call    007B8B94
0063DB5F   F6430110               test    byte ptr [ebx+$01], $10
0063DB63   750B                   jnz     0063DB70
0063DB65   66A120DC6300           mov     ax, word ptr [$0063DC20]
0063DB6B   663B03                 cmp     ax, word ptr [ebx]
0063DB6E   7528                   jnz     0063DB98
0063DB70   833D68DD7D0000         cmp     dword ptr [$007DDD68], +$00
0063DB77   7515                   jnz     0063DB8E
0063DB79   33C9                   xor     ecx, ecx
0063DB7B   B201                   mov     dl, $01

* Reference to class tArrayTable
|
0063DB7D   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0063DB82   E891981700             call    007B7418

* Reference to GlobalVar_007DDD68
|
0063DB87   A368DD7D00             mov     dword ptr [$007DDD68], eax
0063DB8C   EB0A                   jmp     0063DB98
0063DB8E   A168DD7D00             mov     eax, dword ptr [$007DDD68]

* Reference to : tArrayTable._PROC_007B8B94()
|
0063DB93   E8FCAF1700             call    007B8B94
0063DB98   C645FD01               mov     byte ptr [ebp-$03], $01
0063DB9C   33C0                   xor     eax, eax
0063DB9E   5A                     pop     edx
0063DB9F   59                     pop     ecx
0063DBA0   59                     pop     ecx
0063DBA1   648910                 mov     fs:[eax], edx
0063DBA4   EB3B                   jmp     0063DBE1

* Reference to: System.@HandleOnException;
|
0063DBA6   E90570DCFF             jmp     00404BB0
0063DBAB   0100                   add     [eax], eax
0063DBAD   0000                   add     [eax], al
0063DBAF   40                     inc     eax
0063DBB0   95                     xchg    eax, ebp
0063DBB1   40                     inc     eax
0063DBB2   00B7DB630089           add     [edi+$890063DB], dh
0063DBB8   C3                     ret

0063DBB9   6A00                   push    $00
0063DBBB   8B4B04                 mov     ecx, [ebx+$04]
0063DBBE   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Erro ao Inicializar as matrizes de 
|                                saidas!'
|
0063DBC1   BA2CDC6300             mov     edx, $0063DC2C

* Reference to: System.@LStrCat3;
|
0063DBC6   E8DD7BDCFF             call    004057A8
0063DBCB   8B45F8                 mov     eax, [ebp-$08]
0063DBCE   668B0D5CDC6300         mov     cx, word ptr [$0063DC5C]
0063DBD5   B201                   mov     dl, $01

|
0063DBD7   E8505FE0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0063DBDC   E8CF72DCFF             call    00404EB0

****** END
|
0063DBE1   33C0                   xor     eax, eax
0063DBE3   5A                     pop     edx
0063DBE4   59                     pop     ecx
0063DBE5   59                     pop     ecx
0063DBE6   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063DBE9   68F6DB6300             push    $0063DBF6
0063DBEE   C3                     ret


* Reference to: System.@HandleFinally;
|
0063DBEF   E94471DCFF             jmp     00404D38
0063DBF4   EBF8                   jmp     0063DBEE

****** END
|
0063DBF6   33C0                   xor     eax, eax
0063DBF8   5A                     pop     edx
0063DBF9   59                     pop     ecx
0063DBFA   59                     pop     ecx
0063DBFB   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEý_^[YY]Ã'
|
0063DBFE   6813DC6300             push    $0063DC13
0063DC03   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0063DC06   E89178DCFF             call    0040549C
0063DC0B   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063DC0C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0063DC0C   E92771DCFF             jmp     00404D38

|
0063DC11   EBF0                   jmp     0063DC03
0063DC13   8A45FD                 mov     al, byte ptr [ebp-$03]
0063DC16   5F                     pop     edi
0063DC17   5E                     pop     esi
0063DC18   5B                     pop     ebx
0063DC19   59                     pop     ecx
0063DC1A   59                     pop     ecx
0063DC1B   5D                     pop     ebp
0063DC1C   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063DC61(Sender : TObject);
begin
(*
0063DC61   8BEC                   mov     ebp, esp
0063DC63   81C454FFFFFF           add     esp, $FFFFFF54
0063DC69   53                     push    ebx
0063DC6A   56                     push    esi
0063DC6B   57                     push    edi
0063DC6C   33DB                   xor     ebx, ebx
0063DC6E   899D54FFFFFF           mov     [ebp+$FFFFFF54], ebx
0063DC74   895DD4                 mov     [ebp-$2C], ebx
0063DC77   895DD0                 mov     [ebp-$30], ebx
0063DC7A   895DF0                 mov     [ebp-$10], ebx
0063DC7D   894DF8                 mov     [ebp-$08], ecx
0063DC80   8955FC                 mov     [ebp-$04], edx
0063DC83   8BF0                   mov     esi, eax
0063DC85   8B5D08                 mov     ebx, [ebp+$08]
0063DC88   8B7D0C                 mov     edi, [ebp+$0C]
0063DC8B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063DC8E   E8B97CDCFF             call    0040594C
0063DC93   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063DC96   E8B17CDCFF             call    0040594C
0063DC9B   8B4518                 mov     eax, [ebp+$18]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063DC9E   E8A97CDCFF             call    0040594C
0063DCA3   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063DCA6   E8A17CDCFF             call    0040594C
0063DCAB   33C0                   xor     eax, eax
0063DCAD   55                     push    ebp
0063DCAE   681CED6300             push    $0063ED1C

***** TRY
|
0063DCB3   64FF30                 push    dword ptr fs:[eax]
0063DCB6   648920                 mov     fs:[eax], esp
0063DCB9   A168B67D00             mov     eax, dword ptr [$007DB668]
0063DCBE   8B00                   mov     eax, [eax]
0063DCC0   66BAF5FF               mov     dx, $FFF5

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0063DCC4   E86360E7FF             call    004B3D2C
0063DCC9   C645F700               mov     byte ptr [ebp-$09], $00
0063DCCD   33C0                   xor     eax, eax
0063DCCF   55                     push    ebp
0063DCD0   68CDEC6300             push    $0063ECCD

***** TRY
|
0063DCD5   64FF30                 push    dword ptr fs:[eax]
0063DCD8   648920                 mov     fs:[eax], esp
0063DCDB   33C0                   xor     eax, eax
0063DCDD   55                     push    ebp
0063DCDE   6862EC6300             push    $0063EC62

***** TRY
|
0063DCE3   64FF30                 push    dword ptr fs:[eax]
0063DCE6   648920                 mov     fs:[eax], esp
0063DCE9   8BC7                   mov     eax, edi

* Reference to : TFrmF2SubLocal._PROC_0063D878()
|
0063DCEB   E888FBFFFF             call    0063D878
0063DCF0   6A05                   push    $05
0063DCF2   8D45F0                 lea     eax, [ebp-$10]
0063DCF5   50                     push    eax
0063DCF6   8B45FC                 mov     eax, [ebp-$04]
0063DCF9   8945D8                 mov     [ebp-$28], eax
0063DCFC   8B45F8                 mov     eax, [ebp-$08]
0063DCFF   8945DC                 mov     [ebp-$24], eax
0063DD02   FF7520                 push    dword ptr [ebp+$20]
0063DD05   FF751C                 push    dword ptr [ebp+$1C]
0063DD08   8D45D4                 lea     eax, [ebp-$2C]

* Reference to : TFrmInfoAtu._PROC_007A6208()
|
0063DD0B   E8F8841600             call    007A6208
0063DD10   8B45D4                 mov     eax, [ebp-$2C]
0063DD13   8945E0                 mov     [ebp-$20], eax
0063DD16   8B4518                 mov     eax, [ebp+$18]
0063DD19   8945E4                 mov     [ebp-$1C], eax
0063DD1C   8B4514                 mov     eax, [ebp+$14]
0063DD1F   8945E8                 mov     [ebp-$18], eax
0063DD22   DB4510                 fild    dword ptr [ebp+$10]
0063DD25   83C4F4                 add     esp, -$0C
0063DD28   DB3C24                 fstp    tbyte ptr [esp]
0063DD2B   9B                     wait
0063DD2C   8D45D0                 lea     eax, [ebp-$30]

|
0063DD2F   E8C4331600             call    007A10F8
0063DD34   8B45D0                 mov     eax, [ebp-$30]
0063DD37   8945EC                 mov     [ebp-$14], eax
0063DD3A   8D45D8                 lea     eax, [ebp-$28]
0063DD3D   50                     push    eax

* Possible String Reference to: 'FILIAL'
|
0063DD3E   B838ED6300             mov     eax, $0063ED38
0063DD43   8945B8                 mov     [ebp-$48], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063DD46   B848ED6300             mov     eax, $0063ED48
0063DD4B   8945BC                 mov     [ebp-$44], eax

* Possible String Reference to: 'DTLCTO'
|
0063DD4E   B85CED6300             mov     eax, $0063ED5C
0063DD53   8945C0                 mov     [ebp-$40], eax

* Possible String Reference to: 'ESPECIE'
|
0063DD56   B86CED6300             mov     eax, $0063ED6C
0063DD5B   8945C4                 mov     [ebp-$3C], eax

* Possible String Reference to: 'SERIE'
|
0063DD5E   B87CED6300             mov     eax, $0063ED7C
0063DD63   8945C8                 mov     [ebp-$38], eax

* Possible String Reference to: 'NUMLCTO'
|
0063DD66   B88CED6300             mov     eax, $0063ED8C
0063DD6B   8945CC                 mov     [ebp-$34], eax
0063DD6E   8D45B8                 lea     eax, [ebp-$48]
0063DD71   BA05000000             mov     edx, $00000005
0063DD76   59                     pop     ecx

|
0063DD77   E844211700             call    007AFEC0
0063DD7C   66F7C70100             test    di, $0001 
0063DD81   750F                   jnz     0063DD92
0063DD83   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063DD89   663BC7                 cmp     ax, di
0063DD8C   0F85EB010000           jnz     0063DF7D
0063DD92   8B45F0                 mov     eax, [ebp-$10]
0063DD95   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO'
|
0063DD96   68A0ED6300             push    $0063EDA0

* Possible String Reference to: 'FILIAL'
|
0063DD9B   B838ED6300             mov     eax, $0063ED38
0063DDA0   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063DDA3   B848ED6300             mov     eax, $0063ED48
0063DDA8   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063DDAB   B85CED6300             mov     eax, $0063ED5C
0063DDB0   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063DDB3   B86CED6300             mov     eax, $0063ED6C
0063DDB8   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063DDBB   B87CED6300             mov     eax, $0063ED7C
0063DDC0   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063DDC3   B88CED6300             mov     eax, $0063ED8C
0063DDC8   8945EC                 mov     [ebp-$14], eax
0063DDCB   8D45D8                 lea     eax, [ebp-$28]
0063DDCE   50                     push    eax
0063DDCF   6A05                   push    $05
0063DDD1   53                     push    ebx
0063DDD2   8BC6                   mov     eax, esi

|
0063DDD4   E8F3A51600             call    007A83CC
0063DDD9   8BD0                   mov     edx, eax

* Possible String Reference to: 'SAIDAS'
|
0063DDDB   B9D8ED6300             mov     ecx, $0063EDD8
0063DDE0   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063DDE5   E826B01700             call    007B8E10
0063DDEA   84C0                   test    al, al
0063DDEC   0F848B010000           jz      0063DF7D
0063DDF2   6A32                   push    $32

* Possible String Reference to: 'CLIENTES'
|
0063DDF4   68E8ED6300             push    $0063EDE8

* Possible String Reference to: 'CGCCLIE'
|
0063DDF9   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'CGCCLIE'
|
0063DDFE   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'RAZAO'
|
0063DE03   680CEE6300             push    $0063EE0C

* Possible String Reference to: 'LkRazao'
|
0063DE08   B91CEE6300             mov     ecx, $0063EE1C
0063DE0D   33D2                   xor     edx, edx
0063DE0F   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B7070()
|
0063DE14   E857921700             call    007B7070
0063DE19   6A01                   push    $01

* Possible String Reference to: 'CLIENTES'
|
0063DE1B   68E8ED6300             push    $0063EDE8

* Possible String Reference to: 'CGCCLIE'
|
0063DE20   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'CGCCLIE'
|
0063DE25   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'FISJUR'
|
0063DE2A   682CEE6300             push    $0063EE2C

* Possible String Reference to: 'LkFisJur'
|
0063DE2F   B93CEE6300             mov     ecx, $0063EE3C
0063DE34   33D2                   xor     edx, edx
0063DE36   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B7070()
|
0063DE3B   E830921700             call    007B7070
0063DE40   6A32                   push    $32

* Possible String Reference to: 'CLIENTES'
|
0063DE42   68E8ED6300             push    $0063EDE8

* Possible String Reference to: 'CGCCLIE'
|
0063DE47   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'CGCCLIE'
|
0063DE4C   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'ENDERECO'
|
0063DE51   6850EE6300             push    $0063EE50

* Possible String Reference to: 'LkEndClie'
|
0063DE56   B964EE6300             mov     ecx, $0063EE64
0063DE5B   33D2                   xor     edx, edx
0063DE5D   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B7070()
|
0063DE62   E809921700             call    007B7070
0063DE67   6A0A                   push    $0A

* Possible String Reference to: 'CLIENTES'
|
0063DE69   68E8ED6300             push    $0063EDE8

* Possible String Reference to: 'CGCCLIE'
|
0063DE6E   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'CGCCLIE'
|
0063DE73   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'NUMENDERECO'
|
0063DE78   6878EE6300             push    $0063EE78

* Possible String Reference to: 'LkNumEndClie'
|
0063DE7D   B98CEE6300             mov     ecx, $0063EE8C
0063DE82   33D2                   xor     edx, edx
0063DE84   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B7070()
|
0063DE89   E8E2911700             call    007B7070
0063DE8E   6A0B                   push    $0B

* Possible String Reference to: 'CLIENTES'
|
0063DE90   68E8ED6300             push    $0063EDE8

* Possible String Reference to: 'CGCCLIE'
|
0063DE95   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'CGCCLIE'
|
0063DE9A   68FCED6300             push    $0063EDFC

* Possible String Reference to: 'CEP'
|
0063DE9F   68A4EE6300             push    $0063EEA4

* Possible String Reference to: 'LkCEPClie'
|
0063DEA4   B9B0EE6300             mov     ecx, $0063EEB0
0063DEA9   33D2                   xor     edx, edx
0063DEAB   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B7070()
|
0063DEB0   E8BB911700             call    007B7070
0063DEB5   6A1E                   push    $1E

* Possible String Reference to: 'CONDPGTO'
|
0063DEB7   68C4EE6300             push    $0063EEC4

* Possible String Reference to: 'CONDPAGTO'
|
0063DEBC   68D8EE6300             push    $0063EED8

* Possible String Reference to: 'CONDPAGTO'
|
0063DEC1   68D8EE6300             push    $0063EED8

* Possible String Reference to: 'DESCRICAO'
|
0063DEC6   68ECEE6300             push    $0063EEEC

* Possible String Reference to: 'LkDescrCondPagto'
|
0063DECB   B900EF6300             mov     ecx, $0063EF00
0063DED0   33D2                   xor     edx, edx
0063DED2   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B7070()
|
0063DED7   E894911700             call    007B7070
0063DEDC   6A28                   push    $28

* Possible String Reference to: 'NATOPER'
|
0063DEDE   681CEF6300             push    $0063EF1C

* Possible String Reference to: 'NATOPER'
|
0063DEE3   681CEF6300             push    $0063EF1C

* Possible String Reference to: 'NATOPER'
|
0063DEE8   681CEF6300             push    $0063EF1C

* Possible String Reference to: 'DESCRICAO'
|
0063DEED   68ECEE6300             push    $0063EEEC

* Possible String Reference to: 'LkDescrNatOper'
|
0063DEF2   B92CEF6300             mov     ecx, $0063EF2C
0063DEF7   33D2                   xor     edx, edx
0063DEF9   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B7070()
|
0063DEFE   E86D911700             call    007B7070
0063DF03   6A1E                   push    $1E

* Possible String Reference to: 'FUNCREPR'
|
0063DF05   6844EF6300             push    $0063EF44

* Possible String Reference to: 'CODFUNC'
|
0063DF0A   6858EF6300             push    $0063EF58

* Possible String Reference to: 'CODFUNC'
|
0063DF0F   6858EF6300             push    $0063EF58

* Possible String Reference to: 'NOME'
|
0063DF14   6868EF6300             push    $0063EF68

* Possible String Reference to: 'LkNomeFunc'
|
0063DF19   B978EF6300             mov     ecx, $0063EF78
0063DF1E   33D2                   xor     edx, edx
0063DF20   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B7070()
|
0063DF25   E846911700             call    007B7070
0063DF2A   B964000000             mov     ecx, $00000064

* Possible String Reference to: 'ccInfoClie'
|
0063DF2F   BA8CEF6300             mov     edx, $0063EF8C
0063DF34   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to: QRExpBld.TQRExpressionBuilder.GetParams(TQRExpressionBuilder;AnsiString;AnsiString;AnsiString):Boolean;
|
0063DF39   E8128D1700             call    007B6C50
0063DF3E   B914000000             mov     ecx, $00000014

* Possible String Reference to: 'ccCgcClie'
|
0063DF43   BAA0EF6300             mov     edx, $0063EFA0
0063DF48   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to: QRExpBld.TQRExpressionBuilder.GetParams(TQRExpressionBuilder;AnsiString;AnsiString;AnsiString):Boolean;
|
0063DF4D   E8FE8C1700             call    007B6C50
0063DF52   B905000000             mov     ecx, $00000005

* Possible String Reference to: 'ccPDV'
|
0063DF57   BAB4EF6300             mov     edx, $0063EFB4
0063DF5C   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to: QRExpBld.TQRExpressionBuilder.GetParams(TQRExpressionBuilder;AnsiString;AnsiString;AnsiString):Boolean;
|
0063DF61   E8EA8C1700             call    007B6C50
0063DF66   A178B47D00             mov     eax, dword ptr [$007DB478]
0063DF6B   8B00                   mov     eax, [eax]
0063DF6D   8B1538DD7D00           mov     edx, [$007DDD38]
0063DF73   89427C                 mov     [edx+$7C], eax

* Possible String Reference to: 'U‹ì¹8'
|
0063DF76   C7427890D57B00         mov     dword ptr [edx+$78], $007BD590
0063DF7D   66F7C70400             test    di, $0004 
0063DF82   750F                   jnz     0063DF93
0063DF84   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063DF8A   663BC7                 cmp     ax, di
0063DF8D   0F85C0020000           jnz     0063E253
0063DF93   8B45F0                 mov     eax, [ebp-$10]
0063DF96   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,ITEM'
|
0063DF97   68C4EF6300             push    $0063EFC4

* Possible String Reference to: 'FILIAL'
|
0063DF9C   B838ED6300             mov     eax, $0063ED38
0063DFA1   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063DFA4   B848ED6300             mov     eax, $0063ED48
0063DFA9   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063DFAC   B85CED6300             mov     eax, $0063ED5C
0063DFB1   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063DFB4   B86CED6300             mov     eax, $0063ED6C
0063DFB9   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063DFBC   B87CED6300             mov     eax, $0063ED7C
0063DFC1   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063DFC4   B88CED6300             mov     eax, $0063ED8C
0063DFC9   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'ITEM'
|
0063DFCC   B800F06300             mov     eax, $0063F000
0063DFD1   8945B4                 mov     [ebp-$4C], eax
0063DFD4   8D459C                 lea     eax, [ebp-$64]
0063DFD7   50                     push    eax
0063DFD8   6A06                   push    $06
0063DFDA   53                     push    ebx
0063DFDB   8BC6                   mov     eax, esi

|
0063DFDD   E8EAA31600             call    007A83CC
0063DFE2   8BD0                   mov     edx, eax

* Possible String Reference to: 'SAIDITEM'
|
0063DFE4   B910F06300             mov     ecx, $0063F010
0063DFE9   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063DFEE   E81DAE1700             call    007B8E10
0063DFF3   84C0                   test    al, al
0063DFF5   0F8458020000           jz      0063E253
0063DFFB   6A3C                   push    $3C

* Possible String Reference to: 'PRODUTOS'
|
0063DFFD   6824F06300             push    $0063F024

* Possible String Reference to: 'CODPROD'
|
0063E002   6838F06300             push    $0063F038

* Possible String Reference to: 'CODPROD'
|
0063E007   6838F06300             push    $0063F038

* Possible String Reference to: 'DESCRICAO'
|
0063E00C   68ECEE6300             push    $0063EEEC

* Possible String Reference to: 'LkDescrProd'
|
0063E011   B948F06300             mov     ecx, $0063F048
0063E016   33D2                   xor     edx, edx
0063E018   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E01D   E84E901700             call    007B7070
0063E022   6A0F                   push    $0F

* Possible String Reference to: 'PRODUTOS'
|
0063E024   6824F06300             push    $0063F024

* Possible String Reference to: 'CODPROD'
|
0063E029   6838F06300             push    $0063F038

* Possible String Reference to: 'CODPROD'
|
0063E02E   6838F06300             push    $0063F038

* Possible String Reference to: 'CODBARRA'
|
0063E033   685CF06300             push    $0063F05C

* Possible String Reference to: 'LkCodBarra'
|
0063E038   B970F06300             mov     ecx, $0063F070
0063E03D   33D2                   xor     edx, edx
0063E03F   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E044   E827901700             call    007B7070
0063E049   6A14                   push    $14

* Possible String Reference to: 'PRODUTOS'
|
0063E04B   6824F06300             push    $0063F024

* Possible String Reference to: 'CODPROD'
|
0063E050   6838F06300             push    $0063F038

* Possible String Reference to: 'CODPROD'
|
0063E055   6838F06300             push    $0063F038

* Possible String Reference to: 'MODELO'
|
0063E05A   6884F06300             push    $0063F084

* Possible String Reference to: 'LkModelo'
|
0063E05F   B994F06300             mov     ecx, $0063F094
0063E064   33D2                   xor     edx, edx
0063E066   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E06B   E800901700             call    007B7070
0063E070   6A14                   push    $14

* Possible String Reference to: 'PRODUTOS'
|
0063E072   6824F06300             push    $0063F024

* Possible String Reference to: 'CODPROD'
|
0063E077   6838F06300             push    $0063F038

* Possible String Reference to: 'CODPROD'
|
0063E07C   6838F06300             push    $0063F038

* Possible String Reference to: 'MODELO2'
|
0063E081   68A8F06300             push    $0063F0A8

* Possible String Reference to: 'LkModelo2'
|
0063E086   B9B8F06300             mov     ecx, $0063F0B8
0063E08B   33D2                   xor     edx, edx
0063E08D   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E092   E8D98F1700             call    007B7070
0063E097   6A1E                   push    $1E

* Possible String Reference to: 'PRODUTOS'
|
0063E099   6824F06300             push    $0063F024

* Possible String Reference to: 'CODPROD'
|
0063E09E   6838F06300             push    $0063F038

* Possible String Reference to: 'CODPROD'
|
0063E0A3   6838F06300             push    $0063F038

* Possible String Reference to: 'MARCA'
|
0063E0A8   68CCF06300             push    $0063F0CC

* Possible String Reference to: 'LkMarca'
|
0063E0AD   B9DCF06300             mov     ecx, $0063F0DC
0063E0B2   33D2                   xor     edx, edx
0063E0B4   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E0B9   E8B28F1700             call    007B7070
0063E0BE   6A1E                   push    $1E

* Possible String Reference to: 'PRODUTOS'
|
0063E0C0   6824F06300             push    $0063F024

* Possible String Reference to: 'CODPROD'
|
0063E0C5   6838F06300             push    $0063F038

* Possible String Reference to: 'CODPROD'
|
0063E0CA   6838F06300             push    $0063F038

* Possible String Reference to: 'GRUPO'
|
0063E0CF   68ECF06300             push    $0063F0EC

* Possible String Reference to: 'LkGrupo'
|
0063E0D4   B9FCF06300             mov     ecx, $0063F0FC
0063E0D9   33D2                   xor     edx, edx
0063E0DB   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E0E0   E88B8F1700             call    007B7070
0063E0E5   6A28                   push    $28

* Possible String Reference to: 'SITTRIB'
|
0063E0E7   680CF16300             push    $0063F10C

* Possible String Reference to: 'SITTRIB'
|
0063E0EC   680CF16300             push    $0063F10C

* Possible String Reference to: 'SITTRIB'
|
0063E0F1   680CF16300             push    $0063F10C

* Possible String Reference to: 'DESCRICAO'
|
0063E0F6   68ECEE6300             push    $0063EEEC

* Possible String Reference to: 'LkSituacao'
|
0063E0FB   B91CF16300             mov     ecx, $0063F11C
0063E100   33D2                   xor     edx, edx
0063E102   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E107   E8648F1700             call    007B7070
0063E10C   6A0A                   push    $0A

* Possible String Reference to: 'PRODUTOS'
|
0063E10E   6824F06300             push    $0063F024

* Possible String Reference to: 'CODPROD'
|
0063E113   6838F06300             push    $0063F038

* Possible String Reference to: 'CODPROD'
|
0063E118   6838F06300             push    $0063F038

* Possible String Reference to: 'DECIVLR'
|
0063E11D   6830F16300             push    $0063F130

* Possible String Reference to: 'LkDeciVlr'
|
0063E122   B940F16300             mov     ecx, $0063F140
0063E127   33D2                   xor     edx, edx
0063E129   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E12E   E83D8F1700             call    007B7070
0063E133   6A0A                   push    $0A

* Possible String Reference to: 'PRODUTOS'
|
0063E135   6824F06300             push    $0063F024

* Possible String Reference to: 'CODPROD'
|
0063E13A   6838F06300             push    $0063F038

* Possible String Reference to: 'CODPROD'
|
0063E13F   6838F06300             push    $0063F038

* Possible String Reference to: 'DECIQTDE'
|
0063E144   6854F16300             push    $0063F154

* Possible String Reference to: 'LkDeciQtde'
|
0063E149   B968F16300             mov     ecx, $0063F168
0063E14E   33D2                   xor     edx, edx
0063E150   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E155   E8168F1700             call    007B7070
0063E15A   6A32                   push    $32

* Possible String Reference to: 'FORNECS'
|
0063E15C   687CF16300             push    $0063F17C

* Possible String Reference to: 'CGCFORN'
|
0063E161   688CF16300             push    $0063F18C

* Possible String Reference to: 'CGCFORN'
|
0063E166   688CF16300             push    $0063F18C

* Possible String Reference to: 'RAZAO'
|
0063E16B   680CEE6300             push    $0063EE0C

* Possible String Reference to: 'LkRazaoForn'
|
0063E170   B99CF16300             mov     ecx, $0063F19C
0063E175   33D2                   xor     edx, edx
0063E177   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E17C   E8EF8E1700             call    007B7070
0063E181   B90A000000             mov     ecx, $0000000A

* Possible String Reference to: 'ccTotal'
|
0063E186   BAB0F16300             mov     edx, $0063F1B0
0063E18B   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to: QRExpBld.TQRExpressionBuilder.GetParams(TQRExpressionBuilder;AnsiString;AnsiString;AnsiString):Boolean;
|
0063E190   E8BB8A1700             call    007B6C50
0063E195   B90A000000             mov     ecx, $0000000A

* Possible String Reference to: 'ccFreteTotal'
|
0063E19A   BAC0F16300             mov     edx, $0063F1C0
0063E19F   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to: QRExpBld.TQRExpressionBuilder.GetParams(TQRExpressionBuilder;AnsiString;AnsiString;AnsiString):Boolean;
|
0063E1A4   E8A78A1700             call    007B6C50
0063E1A9   B90A000000             mov     ecx, $0000000A

* Possible String Reference to: 'ccTotalItem'
|
0063E1AE   BAD8F16300             mov     edx, $0063F1D8
0063E1B3   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to: QRExpBld.TQRExpressionBuilder.GetParams(TQRExpressionBuilder;AnsiString;AnsiString;AnsiString):Boolean;
|
0063E1B8   E8938A1700             call    007B6C50
0063E1BD   B90A000000             mov     ecx, $0000000A

* Possible String Reference to: 'ccVlrUnitDesc'
|
0063E1C2   BAECF16300             mov     edx, $0063F1EC
0063E1C7   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to: QRExpBld.TQRExpressionBuilder.GetParams(TQRExpressionBuilder;AnsiString;AnsiString;AnsiString):Boolean;
|
0063E1CC   E87F8A1700             call    007B6C50
0063E1D1   B946000000             mov     ecx, $00000046

* Possible String Reference to: 'ccDescrProd'
|
0063E1D6   BA04F26300             mov     edx, $0063F204
0063E1DB   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to: QRExpBld.TQRExpressionBuilder.GetParams(TQRExpressionBuilder;AnsiString;AnsiString;AnsiString):Boolean;
|
0063E1E0   E86B8A1700             call    007B6C50
0063E1E5   A178B47D00             mov     eax, dword ptr [$007DB478]
0063E1EA   8B00                   mov     eax, [eax]
0063E1EC   8B1540DD7D00           mov     edx, [$007DDD40]
0063E1F2   89427C                 mov     [edx+$7C], eax

* Possible String Reference to: 'U‹ì¹&'
|
0063E1F5   C74278CCDD7B00         mov     dword ptr [edx+$78], $007BDDCC
0063E1FC   66F7C70100             test    di, $0001 
0063E201   750B                   jnz     0063E20E
0063E203   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E209   663BC7                 cmp     ax, di
0063E20C   7545                   jnz     0063E253
0063E20E   6A05                   push    $05

* Possible String Reference to: 'FILIAL'
|
0063E210   B838ED6300             mov     eax, $0063ED38
0063E215   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E218   B848ED6300             mov     eax, $0063ED48
0063E21D   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063E220   B85CED6300             mov     eax, $0063ED5C
0063E225   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063E228   B86CED6300             mov     eax, $0063ED6C
0063E22D   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063E230   B87CED6300             mov     eax, $0063ED7C
0063E235   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E238   B88CED6300             mov     eax, $0063ED8C
0063E23D   8945EC                 mov     [ebp-$14], eax
0063E240   8D4DD8                 lea     ecx, [ebp-$28]
0063E243   8B1538DD7D00           mov     edx, [$007DDD38]
0063E249   A140DD7D00             mov     eax, dword ptr [$007DDD40]

|
0063E24E   E815BD1700             call    007B9F68
0063E253   66F7C70200             test    di, $0002 
0063E258   750F                   jnz     0063E269
0063E25A   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E260   663BC7                 cmp     ax, di
0063E263   0F85BB000000           jnz     0063E324
0063E269   8B45F0                 mov     eax, [ebp-$10]
0063E26C   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,INCRDESC'
|
0063E26D   6818F26300             push    $0063F218

* Possible String Reference to: 'FILIAL'
|
0063E272   B838ED6300             mov     eax, $0063ED38
0063E277   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E27A   B848ED6300             mov     eax, $0063ED48
0063E27F   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063E282   B85CED6300             mov     eax, $0063ED5C
0063E287   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063E28A   B86CED6300             mov     eax, $0063ED6C
0063E28F   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063E292   B87CED6300             mov     eax, $0063ED7C
0063E297   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E29A   B88CED6300             mov     eax, $0063ED8C
0063E29F   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'INCRDESC'
|
0063E2A2   B858F26300             mov     eax, $0063F258
0063E2A7   8945B4                 mov     [ebp-$4C], eax
0063E2AA   8D459C                 lea     eax, [ebp-$64]
0063E2AD   50                     push    eax
0063E2AE   6A06                   push    $06
0063E2B0   53                     push    ebx
0063E2B1   8BC6                   mov     eax, esi

|
0063E2B3   E814A11600             call    007A83CC
0063E2B8   8BD0                   mov     edx, eax

* Possible String Reference to: 'SAIDDESC'
|
0063E2BA   B96CF26300             mov     ecx, $0063F26C
0063E2BF   A13CDD7D00             mov     eax, dword ptr [$007DDD3C]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063E2C4   E847AB1700             call    007B8E10
0063E2C9   84C0                   test    al, al
0063E2CB   7457                   jz      0063E324
0063E2CD   66F7C70100             test    di, $0001 
0063E2D2   750B                   jnz     0063E2DF
0063E2D4   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E2DA   663BC7                 cmp     ax, di
0063E2DD   7545                   jnz     0063E324
0063E2DF   6A05                   push    $05

* Possible String Reference to: 'FILIAL'
|
0063E2E1   B838ED6300             mov     eax, $0063ED38
0063E2E6   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E2E9   B848ED6300             mov     eax, $0063ED48
0063E2EE   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063E2F1   B85CED6300             mov     eax, $0063ED5C
0063E2F6   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063E2F9   B86CED6300             mov     eax, $0063ED6C
0063E2FE   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063E301   B87CED6300             mov     eax, $0063ED7C
0063E306   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E309   B88CED6300             mov     eax, $0063ED8C
0063E30E   8945EC                 mov     [ebp-$14], eax
0063E311   8D4DD8                 lea     ecx, [ebp-$28]
0063E314   8B1538DD7D00           mov     edx, [$007DDD38]
0063E31A   A13CDD7D00             mov     eax, dword ptr [$007DDD3C]

|
0063E31F   E844BC1700             call    007B9F68
0063E324   66F7C70800             test    di, $0008 
0063E329   750F                   jnz     0063E33A
0063E32B   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E331   663BC7                 cmp     ax, di
0063E334   0F85DA000000           jnz     0063E414
0063E33A   8B45F0                 mov     eax, [ebp-$10]
0063E33D   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO'
|
0063E33E   68A0ED6300             push    $0063EDA0

* Possible String Reference to: 'FILIAL'
|
0063E343   B838ED6300             mov     eax, $0063ED38
0063E348   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E34B   B848ED6300             mov     eax, $0063ED48
0063E350   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063E353   B85CED6300             mov     eax, $0063ED5C
0063E358   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063E35B   B86CED6300             mov     eax, $0063ED6C
0063E360   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063E363   B87CED6300             mov     eax, $0063ED7C
0063E368   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E36B   B88CED6300             mov     eax, $0063ED8C
0063E370   8945EC                 mov     [ebp-$14], eax
0063E373   8D45D8                 lea     eax, [ebp-$28]
0063E376   50                     push    eax
0063E377   6A05                   push    $05
0063E379   53                     push    ebx
0063E37A   8BC6                   mov     eax, esi

|
0063E37C   E84BA01600             call    007A83CC
0063E381   8BD0                   mov     edx, eax

* Possible String Reference to: 'SAIDCMPL'
|
0063E383   B980F26300             mov     ecx, $0063F280
0063E388   A144DD7D00             mov     eax, dword ptr [$007DDD44]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063E38D   E87EAA1700             call    007B8E10
0063E392   84C0                   test    al, al
0063E394   747E                   jz      0063E414
0063E396   6A32                   push    $32

* Possible String Reference to: 'TRANSPOR'
|
0063E398   6894F26300             push    $0063F294

* Possible String Reference to: 'CGCTRANS'
|
0063E39D   68A8F26300             push    $0063F2A8

* Possible String Reference to: 'CGCTRANS'
|
0063E3A2   68A8F26300             push    $0063F2A8

* Possible String Reference to: 'RAZAO'
|
0063E3A7   680CEE6300             push    $0063EE0C

* Possible String Reference to: 'LkRazaoTrans'
|
0063E3AC   B9BCF26300             mov     ecx, $0063F2BC
0063E3B1   33D2                   xor     edx, edx
0063E3B3   A144DD7D00             mov     eax, dword ptr [$007DDD44]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E3B8   E8B38C1700             call    007B7070
0063E3BD   66F7C70100             test    di, $0001 
0063E3C2   750B                   jnz     0063E3CF
0063E3C4   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E3CA   663BC7                 cmp     ax, di
0063E3CD   7545                   jnz     0063E414
0063E3CF   6A05                   push    $05

* Possible String Reference to: 'FILIAL'
|
0063E3D1   B838ED6300             mov     eax, $0063ED38
0063E3D6   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E3D9   B848ED6300             mov     eax, $0063ED48
0063E3DE   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063E3E1   B85CED6300             mov     eax, $0063ED5C
0063E3E6   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063E3E9   B86CED6300             mov     eax, $0063ED6C
0063E3EE   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063E3F1   B87CED6300             mov     eax, $0063ED7C
0063E3F6   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E3F9   B88CED6300             mov     eax, $0063ED8C
0063E3FE   8945EC                 mov     [ebp-$14], eax
0063E401   8D4DD8                 lea     ecx, [ebp-$28]
0063E404   8B1538DD7D00           mov     edx, [$007DDD38]
0063E40A   A144DD7D00             mov     eax, dword ptr [$007DDD44]

|
0063E40F   E854BB1700             call    007B9F68
0063E414   66F7C71000             test    di, $0010 
0063E419   750F                   jnz     0063E42A
0063E41B   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E421   663BC7                 cmp     ax, di
0063E424   0F85BB000000           jnz     0063E4E5
0063E42A   8B45F0                 mov     eax, [ebp-$10]
0063E42D   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,IMPOSTO'
|
0063E42E   68D4F26300             push    $0063F2D4

* Possible String Reference to: 'FILIAL'
|
0063E433   B838ED6300             mov     eax, $0063ED38
0063E438   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E43B   B848ED6300             mov     eax, $0063ED48
0063E440   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063E443   B85CED6300             mov     eax, $0063ED5C
0063E448   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063E44B   B86CED6300             mov     eax, $0063ED6C
0063E450   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063E453   B87CED6300             mov     eax, $0063ED7C
0063E458   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E45B   B88CED6300             mov     eax, $0063ED8C
0063E460   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'IMPOSTO'
|
0063E463   B814F36300             mov     eax, $0063F314
0063E468   8945B4                 mov     [ebp-$4C], eax
0063E46B   8D459C                 lea     eax, [ebp-$64]
0063E46E   50                     push    eax
0063E46F   6A06                   push    $06
0063E471   53                     push    ebx
0063E472   8BC6                   mov     eax, esi

|
0063E474   E8539F1600             call    007A83CC
0063E479   8BD0                   mov     edx, eax

* Possible String Reference to: 'SAIDIMPO'
|
0063E47B   B924F36300             mov     ecx, $0063F324
0063E480   A148DD7D00             mov     eax, dword ptr [$007DDD48]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063E485   E886A91700             call    007B8E10
0063E48A   84C0                   test    al, al
0063E48C   7457                   jz      0063E4E5
0063E48E   66F7C70100             test    di, $0001 
0063E493   750B                   jnz     0063E4A0
0063E495   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E49B   663BC7                 cmp     ax, di
0063E49E   7545                   jnz     0063E4E5
0063E4A0   6A05                   push    $05

* Possible String Reference to: 'FILIAL'
|
0063E4A2   B838ED6300             mov     eax, $0063ED38
0063E4A7   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E4AA   B848ED6300             mov     eax, $0063ED48
0063E4AF   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063E4B2   B85CED6300             mov     eax, $0063ED5C
0063E4B7   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063E4BA   B86CED6300             mov     eax, $0063ED6C
0063E4BF   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063E4C2   B87CED6300             mov     eax, $0063ED7C
0063E4C7   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E4CA   B88CED6300             mov     eax, $0063ED8C
0063E4CF   8945EC                 mov     [ebp-$14], eax
0063E4D2   8D4DD8                 lea     ecx, [ebp-$28]
0063E4D5   8B1538DD7D00           mov     edx, [$007DDD38]
0063E4DB   A148DD7D00             mov     eax, dword ptr [$007DDD48]

|
0063E4E0   E883BA1700             call    007B9F68
0063E4E5   66F7C72000             test    di, $0020 
0063E4EA   750F                   jnz     0063E4FB
0063E4EC   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E4F2   663BC7                 cmp     ax, di
0063E4F5   0F85BB000000           jnz     0063E5B6
0063E4FB   8B45F0                 mov     eax, [ebp-$10]
0063E4FE   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,CODFUNC'
|
0063E4FF   6838F36300             push    $0063F338

* Possible String Reference to: 'FILIAL'
|
0063E504   B838ED6300             mov     eax, $0063ED38
0063E509   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E50C   B848ED6300             mov     eax, $0063ED48
0063E511   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063E514   B85CED6300             mov     eax, $0063ED5C
0063E519   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063E51C   B86CED6300             mov     eax, $0063ED6C
0063E521   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063E524   B87CED6300             mov     eax, $0063ED7C
0063E529   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E52C   B88CED6300             mov     eax, $0063ED8C
0063E531   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'CODFUNC'
|
0063E534   B858EF6300             mov     eax, $0063EF58
0063E539   8945B4                 mov     [ebp-$4C], eax
0063E53C   8D459C                 lea     eax, [ebp-$64]
0063E53F   50                     push    eax
0063E540   6A06                   push    $06
0063E542   53                     push    ebx
0063E543   8BC6                   mov     eax, esi

|
0063E545   E8829E1600             call    007A83CC
0063E54A   8BD0                   mov     edx, eax

* Possible String Reference to: 'SAIDCOMI'
|
0063E54C   B978F36300             mov     ecx, $0063F378
0063E551   A14CDD7D00             mov     eax, dword ptr [$007DDD4C]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063E556   E8B5A81700             call    007B8E10
0063E55B   84C0                   test    al, al
0063E55D   7457                   jz      0063E5B6
0063E55F   66F7C70100             test    di, $0001 
0063E564   750B                   jnz     0063E571
0063E566   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E56C   663BC7                 cmp     ax, di
0063E56F   7545                   jnz     0063E5B6
0063E571   6A05                   push    $05

* Possible String Reference to: 'FILIAL'
|
0063E573   B838ED6300             mov     eax, $0063ED38
0063E578   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E57B   B848ED6300             mov     eax, $0063ED48
0063E580   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063E583   B85CED6300             mov     eax, $0063ED5C
0063E588   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063E58B   B86CED6300             mov     eax, $0063ED6C
0063E590   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063E593   B87CED6300             mov     eax, $0063ED7C
0063E598   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E59B   B88CED6300             mov     eax, $0063ED8C
0063E5A0   8945EC                 mov     [ebp-$14], eax
0063E5A3   8D4DD8                 lea     ecx, [ebp-$28]
0063E5A6   8B1538DD7D00           mov     edx, [$007DDD38]
0063E5AC   A14CDD7D00             mov     eax, dword ptr [$007DDD4C]

|
0063E5B1   E8B2B91700             call    007B9F68
0063E5B6   66F7C74000             test    di, $0040 
0063E5BB   750F                   jnz     0063E5CC
0063E5BD   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E5C3   663BC7                 cmp     ax, di
0063E5C6   0F85E2000000           jnz     0063E6AE
0063E5CC   8B45F0                 mov     eax, [ebp-$10]
0063E5CF   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,CODOBS'
|
0063E5D0   688CF36300             push    $0063F38C

* Possible String Reference to: 'FILIAL'
|
0063E5D5   B838ED6300             mov     eax, $0063ED38
0063E5DA   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E5DD   B848ED6300             mov     eax, $0063ED48
0063E5E2   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063E5E5   B85CED6300             mov     eax, $0063ED5C
0063E5EA   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063E5ED   B86CED6300             mov     eax, $0063ED6C
0063E5F2   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063E5F5   B87CED6300             mov     eax, $0063ED7C
0063E5FA   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E5FD   B88CED6300             mov     eax, $0063ED8C
0063E602   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'CODOBS'
|
0063E605   B8C8F36300             mov     eax, $0063F3C8
0063E60A   8945B4                 mov     [ebp-$4C], eax
0063E60D   8D459C                 lea     eax, [ebp-$64]
0063E610   50                     push    eax
0063E611   6A06                   push    $06
0063E613   53                     push    ebx
0063E614   8BC6                   mov     eax, esi

|
0063E616   E8B19D1600             call    007A83CC
0063E61B   8BD0                   mov     edx, eax

* Possible String Reference to: 'SAIDOBS'
|
0063E61D   B9D8F36300             mov     ecx, $0063F3D8
0063E622   A150DD7D00             mov     eax, dword ptr [$007DDD50]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063E627   E8E4A71700             call    007B8E10
0063E62C   84C0                   test    al, al
0063E62E   747E                   jz      0063E6AE
0063E630   6A64                   push    $64

* Possible String Reference to: 'OBSERV'
|
0063E632   68E8F36300             push    $0063F3E8

* Possible String Reference to: 'CODOBS'
|
0063E637   68C8F36300             push    $0063F3C8

* Possible String Reference to: 'CODOBS'
|
0063E63C   68C8F36300             push    $0063F3C8

* Possible String Reference to: 'DESCRICAO'
|
0063E641   68ECEE6300             push    $0063EEEC

* Possible String Reference to: 'LkDescricao'
|
0063E646   B9F8F36300             mov     ecx, $0063F3F8
0063E64B   33D2                   xor     edx, edx
0063E64D   A150DD7D00             mov     eax, dword ptr [$007DDD50]

* Reference to : tArrayTable._PROC_007B7070()
|
0063E652   E8198A1700             call    007B7070
0063E657   66F7C70100             test    di, $0001 
0063E65C   750B                   jnz     0063E669
0063E65E   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E664   663BC7                 cmp     ax, di
0063E667   7545                   jnz     0063E6AE
0063E669   6A05                   push    $05

* Possible String Reference to: 'FILIAL'
|
0063E66B   B838ED6300             mov     eax, $0063ED38
0063E670   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E673   B848ED6300             mov     eax, $0063ED48
0063E678   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063E67B   B85CED6300             mov     eax, $0063ED5C
0063E680   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063E683   B86CED6300             mov     eax, $0063ED6C
0063E688   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063E68B   B87CED6300             mov     eax, $0063ED7C
0063E690   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E693   B88CED6300             mov     eax, $0063ED8C
0063E698   8945EC                 mov     [ebp-$14], eax
0063E69B   8D4DD8                 lea     ecx, [ebp-$28]
0063E69E   8B1538DD7D00           mov     edx, [$007DDD38]
0063E6A4   A150DD7D00             mov     eax, dword ptr [$007DDD50]

|
0063E6A9   E8BAB81700             call    007B9F68
0063E6AE   66F7C78000             test    di, $0080 
0063E6B3   750F                   jnz     0063E6C4
0063E6B5   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E6BB   663BC7                 cmp     ax, di
0063E6BE   0F85DC000000           jnz     0063E7A0
0063E6C4   8B45F0                 mov     eax, [ebp-$10]
0063E6C7   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,ITEM,IMPOSTO'
|
0063E6C8   680CF46300             push    $0063F40C

* Possible String Reference to: 'FILIAL'
|
0063E6CD   B838ED6300             mov     eax, $0063ED38
0063E6D2   898578FFFFFF           mov     [ebp+$FFFFFF78], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E6D8   B848ED6300             mov     eax, $0063ED48
0063E6DD   89857CFFFFFF           mov     [ebp+$FFFFFF7C], eax

* Possible String Reference to: 'DTLCTO'
|
0063E6E3   B85CED6300             mov     eax, $0063ED5C
0063E6E8   894580                 mov     [ebp-$80], eax

* Possible String Reference to: 'ESPECIE'
|
0063E6EB   B86CED6300             mov     eax, $0063ED6C
0063E6F0   894584                 mov     [ebp-$7C], eax

* Possible String Reference to: 'SERIE'
|
0063E6F3   B87CED6300             mov     eax, $0063ED7C
0063E6F8   894588                 mov     [ebp-$78], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E6FB   B88CED6300             mov     eax, $0063ED8C
0063E700   89458C                 mov     [ebp-$74], eax

* Possible String Reference to: 'ITEM'
|
0063E703   B800F06300             mov     eax, $0063F000
0063E708   894590                 mov     [ebp-$70], eax

* Possible String Reference to: 'IMPOSTO'
|
0063E70B   B814F36300             mov     eax, $0063F314
0063E710   894594                 mov     [ebp-$6C], eax

* Possible String Reference to: 'ALIQUOTA'
|
0063E713   B850F46300             mov     eax, $0063F450
0063E718   894598                 mov     [ebp-$68], eax
0063E71B   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
0063E721   50                     push    eax
0063E722   6A08                   push    $08
0063E724   53                     push    ebx
0063E725   8BC6                   mov     eax, esi

|
0063E727   E8A09C1600             call    007A83CC
0063E72C   8BD0                   mov     edx, eax

* Possible String Reference to: 'ITSAIMPO'
|
0063E72E   B964F46300             mov     ecx, $0063F464
0063E733   A154DD7D00             mov     eax, dword ptr [$007DDD54]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063E738   E8D3A61700             call    007B8E10
0063E73D   84C0                   test    al, al
0063E73F   745F                   jz      0063E7A0
0063E741   66F7C70400             test    di, $0004 
0063E746   750B                   jnz     0063E753
0063E748   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E74E   663BC7                 cmp     ax, di
0063E751   754D                   jnz     0063E7A0
0063E753   6A06                   push    $06

* Possible String Reference to: 'FILIAL'
|
0063E755   B838ED6300             mov     eax, $0063ED38
0063E75A   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E75D   B848ED6300             mov     eax, $0063ED48
0063E762   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063E765   B85CED6300             mov     eax, $0063ED5C
0063E76A   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063E76D   B86CED6300             mov     eax, $0063ED6C
0063E772   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063E775   B87CED6300             mov     eax, $0063ED7C
0063E77A   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E77D   B88CED6300             mov     eax, $0063ED8C
0063E782   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'ITEM'
|
0063E785   B800F06300             mov     eax, $0063F000
0063E78A   8945B4                 mov     [ebp-$4C], eax
0063E78D   8D4D9C                 lea     ecx, [ebp-$64]
0063E790   8B1540DD7D00           mov     edx, [$007DDD40]
0063E796   A154DD7D00             mov     eax, dword ptr [$007DDD54]

|
0063E79B   E8C8B71700             call    007B9F68
0063E7A0   66F7C70001             test    di, $0100 
0063E7A5   750F                   jnz     0063E7B6
0063E7A7   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E7AD   663BC7                 cmp     ax, di
0063E7B0   0F85F6000000           jnz     0063E8AC
0063E7B6   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0063E7BB   8B00                   mov     eax, [eax]
0063E7BD   8B80D8040000           mov     eax, [eax+$04D8]
0063E7C3   8B10                   mov     edx, [eax]
0063E7C5   FF5244                 call    dword ptr [edx+$44]
0063E7C8   84C0                   test    al, al
0063E7CA   0F84DC000000           jz      0063E8AC
0063E7D0   8B45F0                 mov     eax, [ebp-$10]
0063E7D3   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,ITEM,LINHA,COLUNA'
|
0063E7D4   6878F46300             push    $0063F478

* Possible String Reference to: 'FILIAL'
|
0063E7D9   B838ED6300             mov     eax, $0063ED38
0063E7DE   898578FFFFFF           mov     [ebp+$FFFFFF78], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E7E4   B848ED6300             mov     eax, $0063ED48
0063E7E9   89857CFFFFFF           mov     [ebp+$FFFFFF7C], eax

* Possible String Reference to: 'DTLCTO'
|
0063E7EF   B85CED6300             mov     eax, $0063ED5C
0063E7F4   894580                 mov     [ebp-$80], eax

* Possible String Reference to: 'ESPECIE'
|
0063E7F7   B86CED6300             mov     eax, $0063ED6C
0063E7FC   894584                 mov     [ebp-$7C], eax

* Possible String Reference to: 'SERIE'
|
0063E7FF   B87CED6300             mov     eax, $0063ED7C
0063E804   894588                 mov     [ebp-$78], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E807   B88CED6300             mov     eax, $0063ED8C
0063E80C   89458C                 mov     [ebp-$74], eax

* Possible String Reference to: 'ITEM'
|
0063E80F   B800F06300             mov     eax, $0063F000
0063E814   894590                 mov     [ebp-$70], eax

* Possible String Reference to: 'LINHA'
|
0063E817   B8C0F46300             mov     eax, $0063F4C0
0063E81C   894594                 mov     [ebp-$6C], eax

* Possible String Reference to: 'COLUNA'
|
0063E81F   B8D0F46300             mov     eax, $0063F4D0
0063E824   894598                 mov     [ebp-$68], eax
0063E827   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
0063E82D   50                     push    eax
0063E82E   6A08                   push    $08
0063E830   53                     push    ebx
0063E831   8BC6                   mov     eax, esi

|
0063E833   E8949B1600             call    007A83CC
0063E838   8BD0                   mov     edx, eax

* Possible String Reference to: 'ITSAGRAD'
|
0063E83A   B9E0F46300             mov     ecx, $0063F4E0
0063E83F   A158DD7D00             mov     eax, dword ptr [$007DDD58]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063E844   E8C7A51700             call    007B8E10
0063E849   84C0                   test    al, al
0063E84B   745F                   jz      0063E8AC
0063E84D   66F7C70400             test    di, $0004 
0063E852   750B                   jnz     0063E85F
0063E854   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E85A   663BC7                 cmp     ax, di
0063E85D   754D                   jnz     0063E8AC
0063E85F   6A06                   push    $06

* Possible String Reference to: 'FILIAL'
|
0063E861   B838ED6300             mov     eax, $0063ED38
0063E866   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E869   B848ED6300             mov     eax, $0063ED48
0063E86E   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063E871   B85CED6300             mov     eax, $0063ED5C
0063E876   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063E879   B86CED6300             mov     eax, $0063ED6C
0063E87E   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063E881   B87CED6300             mov     eax, $0063ED7C
0063E886   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E889   B88CED6300             mov     eax, $0063ED8C
0063E88E   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'ITEM'
|
0063E891   B800F06300             mov     eax, $0063F000
0063E896   8945B4                 mov     [ebp-$4C], eax
0063E899   8D4D9C                 lea     ecx, [ebp-$64]
0063E89C   8B1540DD7D00           mov     edx, [$007DDD40]
0063E8A2   A158DD7D00             mov     eax, dword ptr [$007DDD58]

|
0063E8A7   E8BCB61700             call    007B9F68
0063E8AC   66F7C70002             test    di, $0200 
0063E8B1   750F                   jnz     0063E8C2
0063E8B3   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E8B9   663BC7                 cmp     ax, di
0063E8BC   0F85E6000000           jnz     0063E9A8
0063E8C2   8B45F0                 mov     eax, [ebp-$10]
0063E8C5   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,ITEM,CODFUNC'
|
0063E8C6   68F4F46300             push    $0063F4F4

* Possible String Reference to: 'FILIAL'
|
0063E8CB   B838ED6300             mov     eax, $0063ED38
0063E8D0   898558FFFFFF           mov     [ebp+$FFFFFF58], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E8D6   B848ED6300             mov     eax, $0063ED48
0063E8DB   89855CFFFFFF           mov     [ebp+$FFFFFF5C], eax

* Possible String Reference to: 'DTLCTO'
|
0063E8E1   B85CED6300             mov     eax, $0063ED5C
0063E8E6   898560FFFFFF           mov     [ebp+$FFFFFF60], eax

* Possible String Reference to: 'ESPECIE'
|
0063E8EC   B86CED6300             mov     eax, $0063ED6C
0063E8F1   898564FFFFFF           mov     [ebp+$FFFFFF64], eax

* Possible String Reference to: 'SERIE'
|
0063E8F7   B87CED6300             mov     eax, $0063ED7C
0063E8FC   898568FFFFFF           mov     [ebp+$FFFFFF68], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E902   B88CED6300             mov     eax, $0063ED8C
0063E907   89856CFFFFFF           mov     [ebp+$FFFFFF6C], eax

* Possible String Reference to: 'ITEM'
|
0063E90D   B800F06300             mov     eax, $0063F000
0063E912   898570FFFFFF           mov     [ebp+$FFFFFF70], eax

* Possible String Reference to: 'CODFUNC'
|
0063E918   B858EF6300             mov     eax, $0063EF58
0063E91D   898574FFFFFF           mov     [ebp+$FFFFFF74], eax
0063E923   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
0063E929   50                     push    eax
0063E92A   6A07                   push    $07
0063E92C   53                     push    ebx
0063E92D   8BC6                   mov     eax, esi

|
0063E92F   E8989A1600             call    007A83CC
0063E934   8BD0                   mov     edx, eax

* Possible String Reference to: 'ITSACOMI'
|
0063E936   B938F56300             mov     ecx, $0063F538
0063E93B   A15CDD7D00             mov     eax, dword ptr [$007DDD5C]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063E940   E8CBA41700             call    007B8E10
0063E945   84C0                   test    al, al
0063E947   745F                   jz      0063E9A8
0063E949   66F7C70400             test    di, $0004 
0063E94E   750B                   jnz     0063E95B
0063E950   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E956   663BC7                 cmp     ax, di
0063E959   754D                   jnz     0063E9A8
0063E95B   6A06                   push    $06

* Possible String Reference to: 'FILIAL'
|
0063E95D   B838ED6300             mov     eax, $0063ED38
0063E962   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E965   B848ED6300             mov     eax, $0063ED48
0063E96A   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063E96D   B85CED6300             mov     eax, $0063ED5C
0063E972   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063E975   B86CED6300             mov     eax, $0063ED6C
0063E97A   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063E97D   B87CED6300             mov     eax, $0063ED7C
0063E982   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E985   B88CED6300             mov     eax, $0063ED8C
0063E98A   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'ITEM'
|
0063E98D   B800F06300             mov     eax, $0063F000
0063E992   8945B4                 mov     [ebp-$4C], eax
0063E995   8D4D9C                 lea     ecx, [ebp-$64]
0063E998   8B1540DD7D00           mov     edx, [$007DDD40]
0063E99E   A15CDD7D00             mov     eax, dword ptr [$007DDD5C]

|
0063E9A3   E8C0B51700             call    007B9F68
0063E9A8   66F7C70004             test    di, $0400 
0063E9AD   750F                   jnz     0063E9BE
0063E9AF   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063E9B5   663BC7                 cmp     ax, di
0063E9B8   0F85BB000000           jnz     0063EA79
0063E9BE   8B45F0                 mov     eax, [ebp-$10]
0063E9C1   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,NUMDUPL'
|
0063E9C2   684CF56300             push    $0063F54C

* Possible String Reference to: 'FILIAL'
|
0063E9C7   B838ED6300             mov     eax, $0063ED38
0063E9CC   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063E9CF   B848ED6300             mov     eax, $0063ED48
0063E9D4   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063E9D7   B85CED6300             mov     eax, $0063ED5C
0063E9DC   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063E9DF   B86CED6300             mov     eax, $0063ED6C
0063E9E4   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063E9E7   B87CED6300             mov     eax, $0063ED7C
0063E9EC   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063E9EF   B88CED6300             mov     eax, $0063ED8C
0063E9F4   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'NUMDUPL'
|
0063E9F7   B88CF56300             mov     eax, $0063F58C
0063E9FC   8945B4                 mov     [ebp-$4C], eax
0063E9FF   8D459C                 lea     eax, [ebp-$64]
0063EA02   50                     push    eax
0063EA03   6A06                   push    $06
0063EA05   53                     push    ebx
0063EA06   8BC6                   mov     eax, esi

|
0063EA08   E8BF991600             call    007A83CC
0063EA0D   8BD0                   mov     edx, eax

* Possible String Reference to: 'ARECEBER'
|
0063EA0F   B99CF56300             mov     ecx, $0063F59C
0063EA14   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063EA19   E8F2A31700             call    007B8E10
0063EA1E   84C0                   test    al, al
0063EA20   7457                   jz      0063EA79
0063EA22   66F7C70100             test    di, $0001 
0063EA27   750B                   jnz     0063EA34
0063EA29   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063EA2F   663BC7                 cmp     ax, di
0063EA32   7545                   jnz     0063EA79
0063EA34   6A05                   push    $05

* Possible String Reference to: 'FILIAL'
|
0063EA36   B838ED6300             mov     eax, $0063ED38
0063EA3B   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063EA3E   B848ED6300             mov     eax, $0063ED48
0063EA43   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063EA46   B85CED6300             mov     eax, $0063ED5C
0063EA4B   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063EA4E   B86CED6300             mov     eax, $0063ED6C
0063EA53   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063EA56   B87CED6300             mov     eax, $0063ED7C
0063EA5B   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063EA5E   B88CED6300             mov     eax, $0063ED8C
0063EA63   8945EC                 mov     [ebp-$14], eax
0063EA66   8D4DD8                 lea     ecx, [ebp-$28]
0063EA69   8B1538DD7D00           mov     edx, [$007DDD38]
0063EA6F   A160DD7D00             mov     eax, dword ptr [$007DDD60]

|
0063EA74   E8EFB41700             call    007B9F68
0063EA79   66F7C70008             test    di, $0800 
0063EA7E   750F                   jnz     0063EA8F
0063EA80   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063EA86   663BC7                 cmp     ax, di
0063EA89   0F85E6000000           jnz     0063EB75
0063EA8F   8B45F0                 mov     eax, [ebp-$10]
0063EA92   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,NUMDUPL,ITEM'
|
0063EA93   68B0F56300             push    $0063F5B0

* Possible String Reference to: 'FILIAL'
|
0063EA98   B838ED6300             mov     eax, $0063ED38
0063EA9D   898558FFFFFF           mov     [ebp+$FFFFFF58], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063EAA3   B848ED6300             mov     eax, $0063ED48
0063EAA8   89855CFFFFFF           mov     [ebp+$FFFFFF5C], eax

* Possible String Reference to: 'DTLCTO'
|
0063EAAE   B85CED6300             mov     eax, $0063ED5C
0063EAB3   898560FFFFFF           mov     [ebp+$FFFFFF60], eax

* Possible String Reference to: 'ESPECIE'
|
0063EAB9   B86CED6300             mov     eax, $0063ED6C
0063EABE   898564FFFFFF           mov     [ebp+$FFFFFF64], eax

* Possible String Reference to: 'SERIE'
|
0063EAC4   B87CED6300             mov     eax, $0063ED7C
0063EAC9   898568FFFFFF           mov     [ebp+$FFFFFF68], eax

* Possible String Reference to: 'NUMLCTO'
|
0063EACF   B88CED6300             mov     eax, $0063ED8C
0063EAD4   89856CFFFFFF           mov     [ebp+$FFFFFF6C], eax

* Possible String Reference to: 'NUMDUPL'
|
0063EADA   B88CF56300             mov     eax, $0063F58C
0063EADF   898570FFFFFF           mov     [ebp+$FFFFFF70], eax

* Possible String Reference to: 'ITEM'
|
0063EAE5   B800F06300             mov     eax, $0063F000
0063EAEA   898574FFFFFF           mov     [ebp+$FFFFFF74], eax
0063EAF0   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
0063EAF6   50                     push    eax
0063EAF7   6A07                   push    $07
0063EAF9   53                     push    ebx
0063EAFA   8BC6                   mov     eax, esi

|
0063EAFC   E8CB981600             call    007A83CC
0063EB01   8BD0                   mov     edx, eax

* Possible String Reference to: 'ARECITEM'
|
0063EB03   B9F4F56300             mov     ecx, $0063F5F4
0063EB08   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063EB0D   E8FEA21700             call    007B8E10
0063EB12   84C0                   test    al, al
0063EB14   745F                   jz      0063EB75
0063EB16   66F7C70004             test    di, $0400 
0063EB1B   750B                   jnz     0063EB28
0063EB1D   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063EB23   663BC7                 cmp     ax, di
0063EB26   754D                   jnz     0063EB75
0063EB28   6A06                   push    $06

* Possible String Reference to: 'FILIAL'
|
0063EB2A   B838ED6300             mov     eax, $0063ED38
0063EB2F   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063EB32   B848ED6300             mov     eax, $0063ED48
0063EB37   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063EB3A   B85CED6300             mov     eax, $0063ED5C
0063EB3F   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063EB42   B86CED6300             mov     eax, $0063ED6C
0063EB47   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063EB4A   B87CED6300             mov     eax, $0063ED7C
0063EB4F   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063EB52   B88CED6300             mov     eax, $0063ED8C
0063EB57   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'NUMDUPL'
|
0063EB5A   B88CF56300             mov     eax, $0063F58C
0063EB5F   8945B4                 mov     [ebp-$4C], eax
0063EB62   8D4D9C                 lea     ecx, [ebp-$64]
0063EB65   8B1560DD7D00           mov     edx, [$007DDD60]
0063EB6B   A164DD7D00             mov     eax, dword ptr [$007DDD64]

|
0063EB70   E8F3B31700             call    007B9F68
0063EB75   66F7C70010             test    di, $1000 
0063EB7A   750F                   jnz     0063EB8B
0063EB7C   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063EB82   663BC7                 cmp     ax, di
0063EB85   0F85C9000000           jnz     0063EC54
0063EB8B   A128AC7D00             mov     eax, dword ptr [$007DAC28]
0063EB90   803800                 cmp     byte ptr [eax], $00
0063EB93   0F84BB000000           jz      0063EC54
0063EB99   8B45F0                 mov     eax, [ebp-$10]
0063EB9C   50                     push    eax

* Possible String Reference to: 'FILIAL,TIPOLCTO,DTLCTO,ESPECIE,SERI
|                                E,NUMLCTO,CODCECUSTO'
|
0063EB9D   6808F66300             push    $0063F608

* Possible String Reference to: 'FILIAL'
|
0063EBA2   B838ED6300             mov     eax, $0063ED38
0063EBA7   89459C                 mov     [ebp-$64], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063EBAA   B848ED6300             mov     eax, $0063ED48
0063EBAF   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'DTLCTO'
|
0063EBB2   B85CED6300             mov     eax, $0063ED5C
0063EBB7   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'ESPECIE'
|
0063EBBA   B86CED6300             mov     eax, $0063ED6C
0063EBBF   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'SERIE'
|
0063EBC2   B87CED6300             mov     eax, $0063ED7C
0063EBC7   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'NUMLCTO'
|
0063EBCA   B88CED6300             mov     eax, $0063ED8C
0063EBCF   8945B0                 mov     [ebp-$50], eax

* Possible String Reference to: 'CODCECUSTO'
|
0063EBD2   B848F66300             mov     eax, $0063F648
0063EBD7   8945B4                 mov     [ebp-$4C], eax
0063EBDA   8D459C                 lea     eax, [ebp-$64]
0063EBDD   50                     push    eax
0063EBDE   6A06                   push    $06
0063EBE0   53                     push    ebx
0063EBE1   8BC6                   mov     eax, esi

|
0063EBE3   E8E4971600             call    007A83CC
0063EBE8   8BD0                   mov     edx, eax

* Possible String Reference to: 'SAIDCC'
|
0063EBEA   B95CF66300             mov     ecx, $0063F65C
0063EBEF   A168DD7D00             mov     eax, dword ptr [$007DDD68]

* Reference to : tArrayTable._PROC_007B8E10()
|
0063EBF4   E817A21700             call    007B8E10
0063EBF9   84C0                   test    al, al
0063EBFB   7457                   jz      0063EC54
0063EBFD   66F7C70010             test    di, $1000 
0063EC02   750B                   jnz     0063EC0F
0063EC04   66A194ED6300           mov     ax, word ptr [$0063ED94]
0063EC0A   663BC7                 cmp     ax, di
0063EC0D   7545                   jnz     0063EC54
0063EC0F   6A05                   push    $05

* Possible String Reference to: 'FILIAL'
|
0063EC11   B838ED6300             mov     eax, $0063ED38
0063EC16   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'TIPOLCTO'
|
0063EC19   B848ED6300             mov     eax, $0063ED48
0063EC1E   8945DC                 mov     [ebp-$24], eax

* Possible String Reference to: 'DTLCTO'
|
0063EC21   B85CED6300             mov     eax, $0063ED5C
0063EC26   8945E0                 mov     [ebp-$20], eax

* Possible String Reference to: 'ESPECIE'
|
0063EC29   B86CED6300             mov     eax, $0063ED6C
0063EC2E   8945E4                 mov     [ebp-$1C], eax

* Possible String Reference to: 'SERIE'
|
0063EC31   B87CED6300             mov     eax, $0063ED7C
0063EC36   8945E8                 mov     [ebp-$18], eax

* Possible String Reference to: 'NUMLCTO'
|
0063EC39   B88CED6300             mov     eax, $0063ED8C
0063EC3E   8945EC                 mov     [ebp-$14], eax
0063EC41   8D4DD8                 lea     ecx, [ebp-$28]
0063EC44   8B1538DD7D00           mov     edx, [$007DDD38]
0063EC4A   A168DD7D00             mov     eax, dword ptr [$007DDD68]

|
0063EC4F   E814B31700             call    007B9F68
0063EC54   C645F701               mov     byte ptr [ebp-$09], $01
0063EC58   33C0                   xor     eax, eax
0063EC5A   5A                     pop     edx
0063EC5B   59                     pop     ecx
0063EC5C   59                     pop     ecx
0063EC5D   648910                 mov     fs:[eax], edx
0063EC60   EB4F                   jmp     0063ECB1

* Reference to: System.@HandleOnException;
|
0063EC62   E9495FDCFF             jmp     00404BB0
0063EC67   0100                   add     [eax], eax
0063EC69   0000                   add     [eax], al
0063EC6B   40                     inc     eax
0063EC6C   95                     xchg    eax, ebp
0063EC6D   40                     inc     eax
0063EC6E   0073EC                 add     [ebx-$14], dh
0063EC71   6300                   arpl    [eax], ax
0063EC73   89C3                   mov     ebx, eax
0063EC75   A168B67D00             mov     eax, dword ptr [$007DB668]
0063EC7A   8B00                   mov     eax, [eax]
0063EC7C   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0063EC7E   E8A950E7FF             call    004B3D2C
0063EC83   6A00                   push    $00
0063EC85   8B4B04                 mov     ecx, [ebx+$04]
0063EC88   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]

* Possible String Reference to: 'Erro ao carregar a matriz de saidas
|                                !'
|
0063EC8E   BA6CF66300             mov     edx, $0063F66C

* Reference to: System.@LStrCat3;
|
0063EC93   E8106BDCFF             call    004057A8
0063EC98   8B8554FFFFFF           mov     eax, [ebp+$FFFFFF54]
0063EC9E   668B0D94F66300         mov     cx, word ptr [$0063F694]
0063ECA5   B201                   mov     dl, $01

|
0063ECA7   E8804EE0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0063ECAC   E8FF61DCFF             call    00404EB0

****** END
|
0063ECB1   33C0                   xor     eax, eax
0063ECB3   5A                     pop     edx
0063ECB4   59                     pop     ecx
0063ECB5   59                     pop     ecx
0063ECB6   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063ECB9   68D4EC6300             push    $0063ECD4
0063ECBE   A168B67D00             mov     eax, dword ptr [$007DB668]
0063ECC3   8B00                   mov     eax, [eax]
0063ECC5   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0063ECC7   E86050E7FF             call    004B3D2C
0063ECCC   C3                     ret


* Reference to: System.@HandleFinally;
|
0063ECCD   E96660DCFF             jmp     00404D38
0063ECD2   EBEA                   jmp     0063ECBE

****** END
|
0063ECD4   33C0                   xor     eax, eax
0063ECD6   5A                     pop     edx
0063ECD7   59                     pop     ecx
0063ECD8   59                     pop     ecx
0063ECD9   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063ECDC   6823ED6300             push    $0063ED23
0063ECE1   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]

* Reference to: System.@LStrClr(void;void);
|
0063ECE7   E8B067DCFF             call    0040549C
0063ECEC   8D45D0                 lea     eax, [ebp-$30]
0063ECEF   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063ECF4   E8C767DCFF             call    004054C0
0063ECF9   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0063ECFC   E89B67DCFF             call    0040549C
0063ED01   8D45F8                 lea     eax, [ebp-$08]
0063ED04   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063ED09   E8B267DCFF             call    004054C0
0063ED0E   8D4514                 lea     eax, [ebp+$14]
0063ED11   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0063ED16   E8A567DCFF             call    004054C0
0063ED1B   C3                     ret


* Reference to: System.@HandleFinally;
|
0063ED1C   E91760DCFF             jmp     00404D38
0063ED21   EBBE                   jmp     0063ECE1

****** END
|
0063ED23   8A45F7                 mov     al, byte ptr [ebp-$09]
0063ED26   5F                     pop     edi
0063ED27   5E                     pop     esi
0063ED28   5B                     pop     ebx
0063ED29   8BE5                   mov     esp, ebp
0063ED2B   5D                     pop     ebp
0063ED2C   C21C00                 ret     $001C

*)
end;

procedure TFrmF2SubLocal._PROC_0063ED1C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0063ED1C   E91760DCFF             jmp     00404D38

|
0063ED21   EBBE                   jmp     0063ECE1
0063ED23   8A45F7                 mov     al, byte ptr [ebp-$09]
0063ED26   5F                     pop     edi
0063ED27   5E                     pop     esi
0063ED28   5B                     pop     ebx
0063ED29   8BE5                   mov     esp, ebp
0063ED2B   5D                     pop     ebp
0063ED2C   C21C00                 ret     $001C

*)
end;

procedure TFrmF2SubLocal._PROC_0063ED8E(Sender : TObject);
begin
(*
0063ED8E   4D                     dec     ebp
0063ED8F   4C                     dec     esp
0063ED90   43                     inc     ebx
0063ED91   54                     push    esp
0063ED92   4F                     dec     edi
0063ED93   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063EDC7(Sender : TObject);
begin
(*
0063EDC7   4D                     dec     ebp
0063EDC8   4C                     dec     esp
0063EDC9   43                     inc     ebx
0063EDCA   54                     push    esp
0063EDCB   4F                     dec     edi
0063EDCC   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063EE31(Sender : TObject);
begin
(*
0063EE31   52                     push    edx
0063EE32   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063EE7A(Sender : TObject);
begin
(*
0063EE7A   4D                     dec     ebp
0063EE7B   45                     inc     ebp
0063EE7C   4E                     dec     esi
0063EE7D   44                     inc     esp
0063EE7E   45                     inc     ebp
0063EE7F   52                     push    edx
0063EE80   45                     inc     ebp
0063EE81   43                     inc     ebx
0063EE82   4F                     dec     edi
0063EE83   00FF                   add     bh, bh
0063EE85   FFFF                   DB  $FF, $FF  //      
0063EE87   FF0C00                 dec     dword ptr [eax+eax]
0063EE8A   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063EF46(Sender : TObject);
begin
(*
0063EF46   4E                     dec     esi
0063EF47   43                     inc     ebx
0063EF48   52                     push    edx
0063EF49   45                     inc     ebp
0063EF4A   50                     push    eax
0063EF4B   52                     push    edx
0063EF4C   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063EF5D(Sender : TObject);
begin
(*
0063EF5D   4E                     dec     esi
0063EF5E   43                     inc     ebx
0063EF5F   00FF                   add     bh, bh
0063EF61   FFFF                   DB  $FF, $FF  //      
0063EF63   FF0400                 inc     dword ptr [eax+eax]
0063EF66   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063EFEB(Sender : TObject);
begin
(*
0063EFEB   4D                     dec     ebp
0063EFEC   4C                     dec     esp
0063EFED   43                     inc     ebx
0063EFEE   54                     push    esp
0063EFEF   4F                     dec     edi
0063EFF0   2C49                   sub     al, $49
0063EFF2   54                     push    esp
0063EFF3   45                     inc     ebp
0063EFF4   4D                     dec     ebp
0063EFF5   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F029(Sender : TObject);
begin
(*
0063F029   54                     push    esp
0063F02A   4F                     dec     edi
0063F02B   53                     push    ebx
0063F02C   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F0EF(Sender : TObject);
begin
(*
0063F0EF   50                     push    eax
0063F0F0   4F                     dec     edi
0063F0F1   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F1F2(Sender : TObject);
begin
(*
0063F1F2   6E                     outsb
0063F1F3   6974446573630000       imul    esi, [esp+eax*2+$65], $00006373
0063F1FB   00FF                   add     bh, bh
0063F1FD   FFFF                   DB  $FF, $FF  //      
0063F1FF   FF0B                   dec     dword ptr [ebx]
0063F201   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F23F(Sender : TObject);
begin
(*
0063F23F   4D                     dec     ebp
0063F240   4C                     dec     esp
0063F241   43                     inc     ebx
0063F242   54                     push    esp
0063F243   4F                     dec     edi
0063F244   2C49                   sub     al, $49
0063F246   4E                     dec     esi
0063F247   43                     inc     ebx
0063F248   52                     push    edx
0063F249   44                     inc     esp
0063F24A   45                     inc     ebp
0063F24B   53                     push    ebx
0063F24C   43                     inc     ebx
0063F24D   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F2FB(Sender : TObject);
begin
(*
0063F2FB   4D                     dec     ebp
0063F2FC   4C                     dec     esp
0063F2FD   43                     inc     ebx
0063F2FE   54                     push    esp
0063F2FF   4F                     dec     edi
0063F300   2C49                   sub     al, $49
0063F302   4D                     dec     ebp
0063F303   50                     push    eax
0063F304   4F                     dec     edi
0063F305   53                     push    ebx
0063F306   54                     push    esp
0063F307   4F                     dec     edi
0063F308   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F35F(Sender : TObject);
begin
(*
0063F35F   4D                     dec     ebp
0063F360   4C                     dec     esp
0063F361   43                     inc     ebx
0063F362   54                     push    esp
0063F363   4F                     dec     edi
0063F364   2C43                   sub     al, $43
0063F366   4F                     dec     edi
0063F367   44                     inc     esp
0063F368   46                     inc     esi
0063F369   55                     push    ebp
0063F36A   4E                     dec     esi
0063F36B   43                     inc     ebx
0063F36C   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F3B3(Sender : TObject);
begin
(*
0063F3B3   4D                     dec     ebp
0063F3B4   4C                     dec     esp
0063F3B5   43                     inc     ebx
0063F3B6   54                     push    esp
0063F3B7   4F                     dec     edi
0063F3B8   2C43                   sub     al, $43
0063F3BA   4F                     dec     edi
0063F3BB   44                     inc     esp
0063F3BC   4F                     dec     edi
0063F3BD   42                     inc     edx
0063F3BE   53                     push    ebx
0063F3BF   00FF                   add     bh, bh
0063F3C1   FFFF                   DB  $FF, $FF  //      
0063F3C3   FF06                   inc     dword ptr [esi]
0063F3C5   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F433(Sender : TObject);
begin
(*
0063F433   4D                     dec     ebp
0063F434   4C                     dec     esp
0063F435   43                     inc     ebx
0063F436   54                     push    esp
0063F437   4F                     dec     edi
0063F438   2C49                   sub     al, $49
0063F43A   54                     push    esp
0063F43B   45                     inc     ebp
0063F43C   4D                     dec     ebp
0063F43D   2C49                   sub     al, $49
0063F43F   4D                     dec     ebp
0063F440   50                     push    eax
0063F441   4F                     dec     edi
0063F442   53                     push    ebx
0063F443   54                     push    esp
0063F444   4F                     dec     edi
0063F445   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F455(Sender : TObject);
begin
(*
0063F455   4F                     dec     edi
0063F456   54                     push    esp
0063F457   41                     inc     ecx
0063F458   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F49F(Sender : TObject);
begin
(*
0063F49F   4D                     dec     ebp
0063F4A0   4C                     dec     esp
0063F4A1   43                     inc     ebx
0063F4A2   54                     push    esp
0063F4A3   4F                     dec     edi
0063F4A4   2C49                   sub     al, $49
0063F4A6   54                     push    esp
0063F4A7   45                     inc     ebp
0063F4A8   4D                     dec     ebp
0063F4A9   2C4C                   sub     al, $4C
0063F4AB   49                     dec     ecx
0063F4AC   4E                     dec     esi
0063F4AD   48                     dec     eax
0063F4AE   41                     inc     ecx
0063F4AF   2C43                   sub     al, $43
0063F4B1   4F                     dec     edi
0063F4B2   4C                     dec     esp
0063F4B3   55                     push    ebp
0063F4B4   4E                     dec     esi
0063F4B5   41                     inc     ecx
0063F4B6   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F4D4(Sender : TObject);
begin
(*
0063F4D4   4E                     dec     esi
0063F4D5   41                     inc     ecx
0063F4D6   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F51B(Sender : TObject);
begin
(*
0063F51B   4D                     dec     ebp
0063F51C   4C                     dec     esp
0063F51D   43                     inc     ebx
0063F51E   54                     push    esp
0063F51F   4F                     dec     edi
0063F520   2C49                   sub     al, $49
0063F522   54                     push    esp
0063F523   45                     inc     ebp
0063F524   4D                     dec     ebp
0063F525   2C43                   sub     al, $43
0063F527   4F                     dec     edi
0063F528   44                     inc     esp
0063F529   46                     inc     esi
0063F52A   55                     push    ebp
0063F52B   4E                     dec     esi
0063F52C   43                     inc     ebx
0063F52D   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F573(Sender : TObject);
begin
(*
0063F573   4D                     dec     ebp
0063F574   4C                     dec     esp
0063F575   43                     inc     ebx
0063F576   54                     push    esp
0063F577   4F                     dec     edi
0063F578   2C4E                   sub     al, $4E
0063F57A   55                     push    ebp
0063F57B   4D                     dec     ebp
0063F57C   44                     inc     esp
0063F57D   55                     push    ebp
0063F57E   50                     push    eax
0063F57F   4C                     dec     esp
0063F580   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F58E(Sender : TObject);
begin
(*
0063F58E   4D                     dec     ebp
0063F58F   44                     inc     esp
0063F590   55                     push    ebp
0063F591   50                     push    eax
0063F592   4C                     dec     esp
0063F593   00FF                   add     bh, bh
0063F595   FFFF                   DB  $FF, $FF  //      
0063F597   FF08                   dec     dword ptr [eax]
0063F599   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F5D7(Sender : TObject);
begin
(*
0063F5D7   4D                     dec     ebp
0063F5D8   4C                     dec     esp
0063F5D9   43                     inc     ebx
0063F5DA   54                     push    esp
0063F5DB   4F                     dec     edi
0063F5DC   2C4E                   sub     al, $4E
0063F5DE   55                     push    ebp
0063F5DF   4D                     dec     ebp
0063F5E0   44                     inc     esp
0063F5E1   55                     push    ebp
0063F5E2   50                     push    eax
0063F5E3   4C                     dec     esp
0063F5E4   2C49                   sub     al, $49
0063F5E6   54                     push    esp
0063F5E7   45                     inc     ebp
0063F5E8   4D                     dec     ebp
0063F5E9   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F62F(Sender : TObject);
begin
(*
0063F62F   4D                     dec     ebp
0063F630   4C                     dec     esp
0063F631   43                     inc     ebx
0063F632   54                     push    esp
0063F633   4F                     dec     edi
0063F634   2C43                   sub     al, $43
0063F636   4F                     dec     edi
0063F637   44                     inc     esp
0063F638   43                     inc     ebx
0063F639   45                     inc     ebp
0063F63A   43                     inc     ebx
0063F63B   55                     push    ebp
0063F63C   53                     push    ebx
0063F63D   54                     push    esp
0063F63E   4F                     dec     edi
0063F63F   00FF                   add     bh, bh
0063F641   FFFF                   DB  $FF, $FF  //      
0063F643   FF0A                   dec     dword ptr [edx]
0063F645   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F64F(Sender : TObject);
begin
(*
0063F64F   53                     push    ebx
0063F650   54                     push    esp
0063F651   4F                     dec     edi
0063F652   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0063F699(Sender : TObject);
begin
(*
0063F699   8BEC                   mov     ebp, esp
0063F69B   83C4F8                 add     esp, -$08
0063F69E   53                     push    ebx
0063F69F   56                     push    esi
0063F6A0   57                     push    edi
0063F6A1   33C9                   xor     ecx, ecx
0063F6A3   894DF8                 mov     [ebp-$08], ecx
0063F6A6   8BDA                   mov     ebx, edx
0063F6A8   8845FF                 mov     [ebp-$01], al
0063F6AB   33C0                   xor     eax, eax
0063F6AD   55                     push    ebp

* Possible String Reference to: 'é'TÜÿëðŠEþ_^[YY]Ã'
|
0063F6AE   680CF96300             push    $0063F90C

***** TRY
|
0063F6B3   64FF30                 push    dword ptr fs:[eax]
0063F6B6   648920                 mov     fs:[eax], esp
0063F6B9   C645FE00               mov     byte ptr [ebp-$02], $00
0063F6BD   33C0                   xor     eax, eax
0063F6BF   55                     push    ebp
0063F6C0   68EFF86300             push    $0063F8EF

***** TRY
|
0063F6C5   64FF30                 push    dword ptr fs:[eax]
0063F6C8   648920                 mov     fs:[eax], esp
0063F6CB   33C0                   xor     eax, eax
0063F6CD   55                     push    ebp
0063F6CE   68A6F86300             push    $0063F8A6

***** TRY
|
0063F6D3   64FF30                 push    dword ptr fs:[eax]
0063F6D6   648920                 mov     fs:[eax], esp
0063F6D9   A128AC7D00             mov     eax, dword ptr [$007DAC28]
0063F6DE   803800                 cmp     byte ptr [eax], $00
0063F6E1   741F                   jz      0063F702
0063F6E3   833D68DD7D0000         cmp     dword ptr [$007DDD68], +$00
0063F6EA   7416                   jz      0063F702
0063F6EC   8BC3                   mov     eax, ebx

|
0063F6EE   E8D98C1600             call    007A83CC
0063F6F3   8BC8                   mov     ecx, eax
0063F6F5   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F6F8   A168DD7D00             mov     eax, dword ptr [$007DDD68]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F6FD   E8FA9A1700             call    007B91FC
0063F702   833D64DD7D0000         cmp     dword ptr [$007DDD64], +$00
0063F709   7416                   jz      0063F721
0063F70B   8BC3                   mov     eax, ebx

|
0063F70D   E8BA8C1600             call    007A83CC
0063F712   8BC8                   mov     ecx, eax
0063F714   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F717   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F71C   E8DB9A1700             call    007B91FC
0063F721   833D60DD7D0000         cmp     dword ptr [$007DDD60], +$00
0063F728   7416                   jz      0063F740
0063F72A   8BC3                   mov     eax, ebx

|
0063F72C   E89B8C1600             call    007A83CC
0063F731   8BC8                   mov     ecx, eax
0063F733   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F736   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F73B   E8BC9A1700             call    007B91FC
0063F740   833D54DD7D0000         cmp     dword ptr [$007DDD54], +$00
0063F747   741C                   jz      0063F765
0063F749   8BC3                   mov     eax, ebx

|
0063F74B   E87C8C1600             call    007A83CC
0063F750   50                     push    eax
0063F751   8A1520F96300           mov     dl, byte ptr [$0063F920]
0063F757   0A55FF                 or      dl, byte ptr [ebp-$01]
0063F75A   A154DD7D00             mov     eax, dword ptr [$007DDD54]
0063F75F   59                     pop     ecx

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F760   E8979A1700             call    007B91FC
0063F765   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0063F76A   8B00                   mov     eax, [eax]
0063F76C   8B80D8040000           mov     eax, [eax+$04D8]
0063F772   8B10                   mov     edx, [eax]
0063F774   FF5244                 call    dword ptr [edx+$44]
0063F777   84C0                   test    al, al
0063F779   741F                   jz      0063F79A
0063F77B   833D58DD7D0000         cmp     dword ptr [$007DDD58], +$00
0063F782   7416                   jz      0063F79A
0063F784   8BC3                   mov     eax, ebx

|
0063F786   E8418C1600             call    007A83CC
0063F78B   8BC8                   mov     ecx, eax
0063F78D   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F790   A158DD7D00             mov     eax, dword ptr [$007DDD58]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F795   E8629A1700             call    007B91FC
0063F79A   833D5CDD7D0000         cmp     dword ptr [$007DDD5C], +$00
0063F7A1   7416                   jz      0063F7B9
0063F7A3   8BC3                   mov     eax, ebx

|
0063F7A5   E8228C1600             call    007A83CC
0063F7AA   8BC8                   mov     ecx, eax
0063F7AC   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F7AF   A15CDD7D00             mov     eax, dword ptr [$007DDD5C]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F7B4   E8439A1700             call    007B91FC
0063F7B9   833D50DD7D0000         cmp     dword ptr [$007DDD50], +$00
0063F7C0   7416                   jz      0063F7D8
0063F7C2   8BC3                   mov     eax, ebx

|
0063F7C4   E8038C1600             call    007A83CC
0063F7C9   8BC8                   mov     ecx, eax
0063F7CB   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F7CE   A150DD7D00             mov     eax, dword ptr [$007DDD50]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F7D3   E8249A1700             call    007B91FC
0063F7D8   833D4CDD7D0000         cmp     dword ptr [$007DDD4C], +$00
0063F7DF   7416                   jz      0063F7F7
0063F7E1   8BC3                   mov     eax, ebx

|
0063F7E3   E8E48B1600             call    007A83CC
0063F7E8   8BC8                   mov     ecx, eax
0063F7EA   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F7ED   A14CDD7D00             mov     eax, dword ptr [$007DDD4C]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F7F2   E8059A1700             call    007B91FC
0063F7F7   833D44DD7D0000         cmp     dword ptr [$007DDD44], +$00
0063F7FE   7416                   jz      0063F816
0063F800   8BC3                   mov     eax, ebx

|
0063F802   E8C58B1600             call    007A83CC
0063F807   8BC8                   mov     ecx, eax
0063F809   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F80C   A144DD7D00             mov     eax, dword ptr [$007DDD44]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F811   E8E6991700             call    007B91FC
0063F816   833D48DD7D0000         cmp     dword ptr [$007DDD48], +$00
0063F81D   741C                   jz      0063F83B
0063F81F   8BC3                   mov     eax, ebx

|
0063F821   E8A68B1600             call    007A83CC
0063F826   50                     push    eax
0063F827   8A1520F96300           mov     dl, byte ptr [$0063F920]
0063F82D   0A55FF                 or      dl, byte ptr [ebp-$01]
0063F830   A148DD7D00             mov     eax, dword ptr [$007DDD48]
0063F835   59                     pop     ecx

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F836   E8C1991700             call    007B91FC
0063F83B   833D3CDD7D0000         cmp     dword ptr [$007DDD3C], +$00
0063F842   7416                   jz      0063F85A
0063F844   8BC3                   mov     eax, ebx

|
0063F846   E8818B1600             call    007A83CC
0063F84B   8BC8                   mov     ecx, eax
0063F84D   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F850   A13CDD7D00             mov     eax, dword ptr [$007DDD3C]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F855   E8A2991700             call    007B91FC
0063F85A   833D40DD7D0000         cmp     dword ptr [$007DDD40], +$00
0063F861   7416                   jz      0063F879
0063F863   8BC3                   mov     eax, ebx

|
0063F865   E8628B1600             call    007A83CC
0063F86A   8BC8                   mov     ecx, eax
0063F86C   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F86F   A140DD7D00             mov     eax, dword ptr [$007DDD40]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F874   E883991700             call    007B91FC
0063F879   833D38DD7D0000         cmp     dword ptr [$007DDD38], +$00
0063F880   7416                   jz      0063F898
0063F882   8BC3                   mov     eax, ebx

|
0063F884   E8438B1600             call    007A83CC
0063F889   8BC8                   mov     ecx, eax
0063F88B   8A55FF                 mov     dl, byte ptr [ebp-$01]
0063F88E   A138DD7D00             mov     eax, dword ptr [$007DDD38]

* Reference to : tArrayTable._PROC_007B91FC()
|
0063F893   E864991700             call    007B91FC
0063F898   C645FE01               mov     byte ptr [ebp-$02], $01
0063F89C   33C0                   xor     eax, eax
0063F89E   5A                     pop     edx
0063F89F   59                     pop     ecx
0063F8A0   59                     pop     ecx
0063F8A1   648910                 mov     fs:[eax], edx
0063F8A4   EB3B                   jmp     0063F8E1

* Reference to: System.@HandleOnException;
|
0063F8A6   E90553DCFF             jmp     00404BB0
0063F8AB   0100                   add     [eax], eax
0063F8AD   0000                   add     [eax], al
0063F8AF   40                     inc     eax
0063F8B0   95                     xchg    eax, ebp
0063F8B1   40                     inc     eax
0063F8B2   00B7F8630089           add     [edi+$890063F8], dh
0063F8B8   C3                     ret

0063F8B9   6A00                   push    $00
0063F8BB   8B4B04                 mov     ecx, [ebx+$04]
0063F8BE   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Erro ao gravar o lançamento de said
|                                as!'
|
0063F8C1   BA2CF96300             mov     edx, $0063F92C

* Reference to: System.@LStrCat3;
|
0063F8C6   E8DD5EDCFF             call    004057A8
0063F8CB   8B45F8                 mov     eax, [ebp-$08]
0063F8CE   668B0D58F96300         mov     cx, word ptr [$0063F958]
0063F8D5   B201                   mov     dl, $01

|
0063F8D7   E85042E0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0063F8DC   E8CF55DCFF             call    00404EB0

****** END
|
0063F8E1   33C0                   xor     eax, eax
0063F8E3   5A                     pop     edx
0063F8E4   59                     pop     ecx
0063F8E5   59                     pop     ecx
0063F8E6   648910                 mov     fs:[eax], edx

****** FINALLY
|
0063F8E9   68F6F86300             push    $0063F8F6
0063F8EE   C3                     ret


* Reference to: System.@HandleFinally;
|
0063F8EF   E94454DCFF             jmp     00404D38
0063F8F4   EBF8                   jmp     0063F8EE

****** END
|
0063F8F6   33C0                   xor     eax, eax
0063F8F8   5A                     pop     edx
0063F8F9   59                     pop     ecx
0063F8FA   59                     pop     ecx
0063F8FB   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEþ_^[YY]Ã'
|
0063F8FE   6813F96300             push    $0063F913
0063F903   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0063F906   E8915BDCFF             call    0040549C
0063F90B   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063F90C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0063F90C   E92754DCFF             jmp     00404D38

|
0063F911   EBF0                   jmp     0063F903
0063F913   8A45FE                 mov     al, byte ptr [ebp-$02]
0063F916   5F                     pop     edi
0063F917   5E                     pop     esi
0063F918   5B                     pop     ebx
0063F919   59                     pop     ecx
0063F91A   59                     pop     ecx
0063F91B   5D                     pop     ebp
0063F91C   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0063F95D(Sender : TObject);
begin
(*
0063F95D   8BEC                   mov     ebp, esp
0063F95F   51                     push    ecx
0063F960   B921010000             mov     ecx, $00000121
0063F965   6A00                   push    $00
0063F967   6A00                   push    $00
0063F969   49                     dec     ecx
0063F96A   75F9                   jnz     0063F965
0063F96C   874DFC                 xchg    [ebp-$04], ecx
0063F96F   53                     push    ebx
0063F970   56                     push    esi
0063F971   57                     push    edi
0063F972   894DF4                 mov     [ebp-$0C], ecx
0063F975   8955F8                 mov     [ebp-$08], edx
0063F978   8945FC                 mov     [ebp-$04], eax
0063F97B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063F97E   E8C95FDCFF             call    0040594C
0063F983   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063F986   E8C15FDCFF             call    0040594C
0063F98B   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063F98E   E8B95FDCFF             call    0040594C
0063F993   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0063F996   E8B15FDCFF             call    0040594C
0063F99B   BB38DD7D00             mov     ebx, $007DDD38
0063F9A0   BE40DD7D00             mov     esi, $007DDD40
0063F9A5   33C0                   xor     eax, eax
0063F9A7   55                     push    ebp
0063F9A8   686E206400             push    $0064206E

***** TRY
|
0063F9AD   64FF30                 push    dword ptr fs:[eax]
0063F9B0   648920                 mov     fs:[eax], esp
0063F9B3   C645F301               mov     byte ptr [ebp-$0D], $01
0063F9B7   33D2                   xor     edx, edx
0063F9B9   55                     push    ebp
0063F9BA   68D41A6400             push    $00641AD4

***** TRY
|
0063F9BF   64FF32                 push    dword ptr fs:[edx]
0063F9C2   648922                 mov     fs:[edx], esp
0063F9C5   33D2                   xor     edx, edx
0063F9C7   55                     push    ebp
0063F9C8   689A1A6400             push    $00641A9A

***** TRY
|
0063F9CD   64FF32                 push    dword ptr fs:[edx]
0063F9D0   648922                 mov     fs:[edx], esp
0063F9D3   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0063F9D8   8B00                   mov     eax, [eax]
0063F9DA   8B80AC010000           mov     eax, [eax+$01AC]
0063F9E0   8B10                   mov     edx, [eax]
0063F9E2   FF5244                 call    dword ptr [edx+$44]
0063F9E5   84C0                   test    al, al
0063F9E7   0F84A3200000           jz      00641A90
0063F9ED   A150AD7D00             mov     eax, dword ptr [$007DAD50]
0063F9F2   FF7004                 push    dword ptr [eax+$04]
0063F9F5   FF30                   push    dword ptr [eax]
0063F9F7   A154A37D00             mov     eax, dword ptr [$007DA354]
0063F9FC   8B00                   mov     eax, [eax]
0063F9FE   50                     push    eax
0063F9FF   A138B07D00             mov     eax, dword ptr [$007DB038]
0063FA04   8B00                   mov     eax, [eax]
0063FA06   50                     push    eax
0063FA07   6A00                   push    $00
0063FA09   66A184206400           mov     ax, word ptr [$00642084]
0063FA0F   50                     push    eax
0063FA10   6A00                   push    $00
0063FA12   8B0D64A07D00           mov     ecx, [$007DA064]
0063FA18   8B09                   mov     ecx, [ecx]
0063FA1A   8B15DCAD7D00           mov     edx, [$007DADDC]
0063FA20   8B12                   mov     edx, [edx]
0063FA22   33C0                   xor     eax, eax

|
0063FA24   E837E2FFFF             call    0063DC60
0063FA29   A118A67D00             mov     eax, dword ptr [$007DA618]
0063FA2E   8B00                   mov     eax, [eax]

|
0063FA30   E82B0D1700             call    007B0760
0063FA35   84C0                   test    al, al
0063FA37   0F8449200000           jz      00641A86
0063FA3D   33C0                   xor     eax, eax
0063FA3F   8945E8                 mov     [ebp-$18], eax
0063FA42   8945EC                 mov     [ebp-$14], eax
0063FA45   668945F0               mov     [ebp-$10], ax
0063FA49   33C0                   xor     eax, eax
0063FA4B   8945D8                 mov     [ebp-$28], eax
0063FA4E   8945DC                 mov     [ebp-$24], eax
0063FA51   668945E0               mov     [ebp-$20], ax
0063FA55   33C0                   xor     eax, eax
0063FA57   8945C8                 mov     [ebp-$38], eax
0063FA5A   8945CC                 mov     [ebp-$34], eax
0063FA5D   668945D0               mov     [ebp-$30], ax
0063FA61   C645C700               mov     byte ptr [ebp-$39], $00
0063FA65   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0063FA6A   8B1550B67D00           mov     edx, [$007DB650]
0063FA70   8B0A                   mov     ecx, [edx]
0063FA72   8908                   mov     [eax], ecx
0063FA74   8B4A04                 mov     ecx, [edx+$04]
0063FA77   894804                 mov     [eax+$04], ecx
0063FA7A   668B4A08               mov     cx, word ptr [edx+$08]
0063FA7E   66894808               mov     [eax+$08], cx
0063FA82   A164A07D00             mov     eax, dword ptr [$007DA064]

* Possible String Reference to: 'VE'
|
0063FA87   BA90206400             mov     edx, $00642090

* Reference to: System.@LStrAsg(void;void;void;void);
|
0063FA8C   E85F5ADCFF             call    004054F0
0063FA91   A154AE7D00             mov     eax, dword ptr [$007DAE54]
0063FA96   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
0063FA98   E8C362E7FF             call    004B5D60
0063FA9D   8B03                   mov     eax, [ebx]

|
0063FA9F   E8D0771700             call    007B7274
0063FAA4   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]
0063FAAA   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FAAD   E81292DDFF             call    00418CC4
0063FAB2   8D8D50FFFFFF           lea     ecx, [ebp+$FFFFFF50]

* Possible String Reference to: 'Filial'
|
0063FAB8   BA9C206400             mov     edx, $0064209C
0063FABD   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FABF   E8B87B1700             call    007B767C
0063FAC4   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]
0063FACA   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FACD   E8F291DDFF             call    00418CC4
0063FAD2   8D8D40FFFFFF           lea     ecx, [ebp+$FFFFFF40]

* Possible String Reference to: 'TipoLcto'
|
0063FAD8   BAAC206400             mov     edx, $006420AC
0063FADD   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FADF   E8987B1700             call    007B767C
0063FAE4   FF7514                 push    dword ptr [ebp+$14]
0063FAE7   FF7510                 push    dword ptr [ebp+$10]
0063FAEA   8D952CFFFFFF           lea     edx, [ebp+$FFFFFF2C]

* Possible String Reference to: 'mm/dd/yyyy'
|
0063FAF0   B8C0206400             mov     eax, $006420C0

|
0063FAF5   E8DEEDDCFF             call    0040E8D8
0063FAFA   8B952CFFFFFF           mov     edx, [ebp+$FFFFFF2C]
0063FB00   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FB06   E8B991DDFF             call    00418CC4
0063FB0B   8D8D30FFFFFF           lea     ecx, [ebp+$FFFFFF30]

* Possible String Reference to: 'DtLcto'
|
0063FB11   BAD4206400             mov     edx, $006420D4
0063FB16   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FB18   E85F7B1700             call    007B767C
0063FB1D   8D851CFFFFFF           lea     eax, [ebp+$FFFFFF1C]
0063FB23   8B55F4                 mov     edx, [ebp-$0C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FB26   E89991DDFF             call    00418CC4
0063FB2B   8D8D1CFFFFFF           lea     ecx, [ebp+$FFFFFF1C]

* Possible String Reference to: 'Especie'
|
0063FB31   BAE4206400             mov     edx, $006420E4
0063FB36   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FB38   E83F7B1700             call    007B767C
0063FB3D   8D850CFFFFFF           lea     eax, [ebp+$FFFFFF0C]
0063FB43   8B550C                 mov     edx, [ebp+$0C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FB46   E87991DDFF             call    00418CC4
0063FB4B   8D8D0CFFFFFF           lea     ecx, [ebp+$FFFFFF0C]

* Possible String Reference to: 'Serie'
|
0063FB51   BAF4206400             mov     edx, $006420F4
0063FB56   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FB58   E81F7B1700             call    007B767C
0063FB5D   8D85FCFEFFFF           lea     eax, [ebp+$FFFFFEFC]
0063FB63   8B5508                 mov     edx, [ebp+$08]
0063FB66   B1FC                   mov     cl, $FC

|
0063FB68   E8038FDDFF             call    00418A70
0063FB6D   8D8DFCFEFFFF           lea     ecx, [ebp+$FFFFFEFC]

* Possible String Reference to: 'NumLcto'
|
0063FB73   BA04216400             mov     edx, $00642104
0063FB78   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FB7A   E8FD7A1700             call    007B767C
0063FB7F   8D85ECFEFFFF           lea     eax, [ebp+$FFFFFEEC]
0063FB85   8B1518A67D00           mov     edx, [$007DA618]
0063FB8B   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FB8D   E83291DDFF             call    00418CC4
0063FB92   8D8DECFEFFFF           lea     ecx, [ebp+$FFFFFEEC]

* Possible String Reference to: 'CgcClie'
|
0063FB98   BA14216400             mov     edx, $00642114
0063FB9D   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FB9F   E8D87A1700             call    007B767C
0063FBA4   8D85DCFEFFFF           lea     eax, [ebp+$FFFFFEDC]
0063FBAA   8B1540A37D00           mov     edx, [$007DA340]
0063FBB0   8A12                   mov     dl, byte ptr [edx]

* Reference to: Variants.@VarFromBool(TVarData;TVarData;Boolean);
|
0063FBB2   E8A990DDFF             call    00418C60
0063FBB7   8D8DDCFEFFFF           lea     ecx, [ebp+$FFFFFEDC]

* Possible String Reference to: 'Contabiliza'
|
0063FBBD   BA24216400             mov     edx, $00642124
0063FBC2   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FBC4   E8B37A1700             call    007B767C
0063FBC9   8D85CCFEFFFF           lea     eax, [ebp+$FFFFFECC]
0063FBCF   8B1558B57D00           mov     edx, [$007DB558]
0063FBD5   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FBD7   E8E890DDFF             call    00418CC4
0063FBDC   8D8DCCFEFFFF           lea     ecx, [ebp+$FFFFFECC]

* Possible String Reference to: 'CodMoeda'
|
0063FBE2   BA38216400             mov     edx, $00642138
0063FBE7   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FBE9   E88E7A1700             call    007B767C
0063FBEE   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]
0063FBF4   33D2                   xor     edx, edx
0063FBF6   B101                   mov     cl, $01

|
0063FBF8   E8738EDDFF             call    00418A70
0063FBFD   8D8DBCFEFFFF           lea     ecx, [ebp+$FFFFFEBC]

* Possible String Reference to: 'NumPedido'
|
0063FC03   BA4C216400             mov     edx, $0064214C
0063FC08   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FC0A   E86D7A1700             call    007B767C
0063FC0F   A180AC7D00             mov     eax, dword ptr [$007DAC80]
0063FC14   FF7004                 push    dword ptr [eax+$04]
0063FC17   FF30                   push    dword ptr [eax]
0063FC19   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to : TFrmInfoAtu._PROC_007A6208()
|
0063FC1F   E8E4651600             call    007A6208
0063FC24   8B95A8FEFFFF           mov     edx, [ebp+$FFFFFEA8]
0063FC2A   8D85ACFEFFFF           lea     eax, [ebp+$FFFFFEAC]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FC30   E88F90DDFF             call    00418CC4
0063FC35   8D8DACFEFFFF           lea     ecx, [ebp+$FFFFFEAC]

* Possible String Reference to: 'DtCaixa'
|
0063FC3B   BA60216400             mov     edx, $00642160
0063FC40   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FC42   E8357A1700             call    007B767C
0063FC47   B04E                   mov     al, $4E
0063FC49   888595FEFFFF           mov     [ebp+$FFFFFE95], al
0063FC4F   C68594FEFFFF01         mov     byte ptr [ebp+$FFFFFE94], $01
0063FC56   8D8598FEFFFF           lea     eax, [ebp+$FFFFFE98]
0063FC5C   8D9594FEFFFF           lea     edx, [ebp+$FFFFFE94]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
0063FC62   E88990DDFF             call    00418CF0
0063FC67   8D8D98FEFFFF           lea     ecx, [ebp+$FFFFFE98]

* Possible String Reference to: 'Status'
|
0063FC6D   BA70216400             mov     edx, $00642170
0063FC72   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FC74   E8037A1700             call    007B767C
0063FC79   8D8584FEFFFF           lea     eax, [ebp+$FFFFFE84]
0063FC7F   8B1590B07D00           mov     edx, [$007DB090]
0063FC85   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FC87   E83890DDFF             call    00418CC4
0063FC8C   8D8D84FEFFFF           lea     ecx, [ebp+$FFFFFE84]

* Possible String Reference to: 'OrigemLcto'
|
0063FC92   BA80216400             mov     edx, $00642180
0063FC97   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FC99   E8DE791700             call    007B767C
0063FC9E   8D9570FEFFFF           lea     edx, [ebp+$FFFFFE70]
0063FCA4   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0063FCA9   8B00                   mov     eax, [eax]
0063FCAB   8B8010020000           mov     eax, [eax+$0210]
0063FCB1   8B08                   mov     ecx, [eax]
0063FCB3   FF5160                 call    dword ptr [ecx+$60]
0063FCB6   8B9570FEFFFF           mov     edx, [ebp+$FFFFFE70]
0063FCBC   8D8574FEFFFF           lea     eax, [ebp+$FFFFFE74]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FCC2   E8FD8FDDFF             call    00418CC4
0063FCC7   8D8D74FEFFFF           lea     ecx, [ebp+$FFFFFE74]

* Possible String Reference to: 'NatOper'
|
0063FCCD   BA94216400             mov     edx, $00642194
0063FCD2   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FCD4   E8A3791700             call    007B767C
0063FCD9   8D8D6CFEFFFF           lea     ecx, [ebp+$FFFFFE6C]

* Possible String Reference to: 'CondPagto'
|
0063FCDF   BAA4216400             mov     edx, $006421A4
0063FCE4   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0063FCE6   E84D801700             call    007B7D38
0063FCEB   83BD6CFEFFFF00         cmp     dword ptr [ebp+$FFFFFE6C], +$00
0063FCF2   0F8597000000           jnz     0063FD8F
0063FCF8   8D9558FEFFFF           lea     edx, [ebp+$FFFFFE58]
0063FCFE   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0063FD03   8B00                   mov     eax, [eax]
0063FD05   8B80E80A0000           mov     eax, [eax+$0AE8]
0063FD0B   8B08                   mov     ecx, [eax]
0063FD0D   FF5160                 call    dword ptr [ecx+$60]
0063FD10   8B9558FEFFFF           mov     edx, [ebp+$FFFFFE58]
0063FD16   8D855CFEFFFF           lea     eax, [ebp+$FFFFFE5C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FD1C   E8A38FDDFF             call    00418CC4
0063FD21   8D8D5CFEFFFF           lea     ecx, [ebp+$FFFFFE5C]

* Possible String Reference to: 'CondPagto'
|
0063FD27   BAA4216400             mov     edx, $006421A4
0063FD2C   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FD2E   E849791700             call    007B767C
0063FD33   8D9554FEFFFF           lea     edx, [ebp+$FFFFFE54]
0063FD39   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0063FD3E   8B00                   mov     eax, [eax]
0063FD40   8B80E80A0000           mov     eax, [eax+$0AE8]
0063FD46   8B08                   mov     ecx, [eax]
0063FD48   FF5160                 call    dword ptr [ecx+$60]
0063FD4B   83BD54FEFFFF00         cmp     dword ptr [ebp+$FFFFFE54], +$00
0063FD52   753B                   jnz     0063FD8F
0063FD54   8D9540FEFFFF           lea     edx, [ebp+$FFFFFE40]
0063FD5A   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0063FD5F   8B00                   mov     eax, [eax]
0063FD61   8B8038060000           mov     eax, [eax+$0638]
0063FD67   8B08                   mov     ecx, [eax]
0063FD69   FF5160                 call    dword ptr [ecx+$60]
0063FD6C   8B9540FEFFFF           mov     edx, [ebp+$FFFFFE40]
0063FD72   8D8544FEFFFF           lea     eax, [ebp+$FFFFFE44]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FD78   E8478FDDFF             call    00418CC4
0063FD7D   8D8D44FEFFFF           lea     ecx, [ebp+$FFFFFE44]

* Possible String Reference to: 'CondPagto'
|
0063FD83   BAA4216400             mov     edx, $006421A4
0063FD88   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FD8A   E8ED781700             call    007B767C
0063FD8F   8D952CFEFFFF           lea     edx, [ebp+$FFFFFE2C]
0063FD95   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0063FD9A   8B00                   mov     eax, [eax]
0063FD9C   8B8000020000           mov     eax, [eax+$0200]
0063FDA2   8B08                   mov     ecx, [eax]
0063FDA4   FF5160                 call    dword ptr [ecx+$60]
0063FDA7   8B952CFEFFFF           mov     edx, [ebp+$FFFFFE2C]
0063FDAD   8D8530FEFFFF           lea     eax, [ebp+$FFFFFE30]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FDB3   E80C8FDDFF             call    00418CC4
0063FDB8   8D8D30FEFFFF           lea     ecx, [ebp+$FFFFFE30]

* Possible String Reference to: 'ContaContabil'
|
0063FDBE   BAB8216400             mov     edx, $006421B8
0063FDC3   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FDC5   E8B2781700             call    007B767C
0063FDCA   8D9518FEFFFF           lea     edx, [ebp+$FFFFFE18]
0063FDD0   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0063FDD5   8B00                   mov     eax, [eax]
0063FDD7   8B80040B0000           mov     eax, [eax+$0B04]
0063FDDD   8B08                   mov     ecx, [eax]
0063FDDF   FF5160                 call    dword ptr [ecx+$60]
0063FDE2   8B9518FEFFFF           mov     edx, [ebp+$FFFFFE18]
0063FDE8   8D851CFEFFFF           lea     eax, [ebp+$FFFFFE1C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FDEE   E8D18EDDFF             call    00418CC4
0063FDF3   8D8D1CFEFFFF           lea     ecx, [ebp+$FFFFFE1C]

* Possible String Reference to: 'CodBanco'
|
0063FDF9   BAD0216400             mov     edx, $006421D0
0063FDFE   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FE00   E877781700             call    007B767C
0063FE05   8D8D14FEFFFF           lea     ecx, [ebp+$FFFFFE14]

* Possible String Reference to: 'CodBanco'
|
0063FE0B   BAD0216400             mov     edx, $006421D0
0063FE10   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0063FE12   E8217F1700             call    007B7D38
0063FE17   83BD14FEFFFF00         cmp     dword ptr [ebp+$FFFFFE14], +$00
0063FE1E   0F85A3000000           jnz     0063FEC7
0063FE24   8D9500FEFFFF           lea     edx, [ebp+$FFFFFE00]
0063FE2A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0063FE2F   8B00                   mov     eax, [eax]
0063FE31   8B80B4040000           mov     eax, [eax+$04B4]
0063FE37   8B08                   mov     ecx, [eax]
0063FE39   FF5160                 call    dword ptr [ecx+$60]
0063FE3C   8B9500FEFFFF           mov     edx, [ebp+$FFFFFE00]
0063FE42   8D8504FEFFFF           lea     eax, [ebp+$FFFFFE04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FE48   E8778EDDFF             call    00418CC4
0063FE4D   8D8D04FEFFFF           lea     ecx, [ebp+$FFFFFE04]

* Possible String Reference to: 'CodBanco'
|
0063FE53   BAD0216400             mov     edx, $006421D0
0063FE58   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FE5A   E81D781700             call    007B767C
0063FE5F   8D8DFCFDFFFF           lea     ecx, [ebp+$FFFFFDFC]

* Possible String Reference to: 'CodBanco'
|
0063FE65   BAD0216400             mov     edx, $006421D0
0063FE6A   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0063FE6C   E8C77E1700             call    007B7D38
0063FE71   83BDFCFDFFFF00         cmp     dword ptr [ebp+$FFFFFDFC], +$00
0063FE78   754D                   jnz     0063FEC7
0063FE7A   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0063FE7F   8B00                   mov     eax, [eax]
0063FE81   8B8030020000           mov     eax, [eax+$0230]

* Reference to: DB.TDataSet.First(TDataSet);
|
0063FE87   E8A0B1EAFF             call    004EB02C
0063FE8C   8D95E8FDFFFF           lea     edx, [ebp+$FFFFFDE8]
0063FE92   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0063FE97   8B00                   mov     eax, [eax]
0063FE99   8B8034020000           mov     eax, [eax+$0234]
0063FE9F   8B08                   mov     ecx, [eax]
0063FEA1   FF5160                 call    dword ptr [ecx+$60]
0063FEA4   8B95E8FDFFFF           mov     edx, [ebp+$FFFFFDE8]
0063FEAA   8D85ECFDFFFF           lea     eax, [ebp+$FFFFFDEC]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FEB0   E80F8EDDFF             call    00418CC4
0063FEB5   8D8DECFDFFFF           lea     ecx, [ebp+$FFFFFDEC]

* Possible String Reference to: 'CodBanco'
|
0063FEBB   BAD0216400             mov     edx, $006421D0
0063FEC0   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FEC2   E8B5771700             call    007B767C
0063FEC7   A1D0B07D00             mov     eax, dword ptr [$007DB0D0]
0063FECC   833800                 cmp     dword ptr [eax], +$00
0063FECF   7512                   jnz     0063FEE3
0063FED1   A1D0B07D00             mov     eax, dword ptr [$007DB0D0]
0063FED6   8B15BCA57D00           mov     edx, [$007DA5BC]
0063FEDC   8B12                   mov     edx, [edx]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0063FEDE   E80D56DCFF             call    004054F0
0063FEE3   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0063FEE8   DB28                   fld     tbyte ptr [eax]
0063FEEA   83C4F8                 add     esp, -$08
0063FEED   DD1C24                 fstp    qword ptr [esp]
0063FEF0   9B                     wait
0063FEF1   B802000000             mov     eax, $00000002

|
0063FEF6   E809141600             call    007A1304
0063FEFB   8D85D8FDFFFF           lea     eax, [ebp+$FFFFFDD8]

* Reference to: Variants.@VarFromReal;
|
0063FF01   E8828DDDFF             call    00418C88
0063FF06   8D8DD8FDFFFF           lea     ecx, [ebp+$FFFFFDD8]

* Possible String Reference to: 'VlrTotal'
|
0063FF0C   BAE4216400             mov     edx, $006421E4
0063FF11   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FF13   E864771700             call    007B767C
0063FF18   8D85C8FDFFFF           lea     eax, [ebp+$FFFFFDC8]
0063FF1E   8B15D0B07D00           mov     edx, [$007DB0D0]
0063FF24   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FF26   E8998DDDFF             call    00418CC4
0063FF2B   8D8DC8FDFFFF           lea     ecx, [ebp+$FFFFFDC8]

* Possible String Reference to: 'CodFunc'
|
0063FF31   BAF8216400             mov     edx, $006421F8
0063FF36   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FF38   E83F771700             call    007B767C
0063FF3D   8D85B8FDFFFF           lea     eax, [ebp+$FFFFFDB8]
0063FF43   8B15ACAC7D00           mov     edx, [$007DACAC]
0063FF49   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FF4B   E8748DDDFF             call    00418CC4
0063FF50   8D8DB8FDFFFF           lea     ecx, [ebp+$FFFFFDB8]

* Possible String Reference to: 'CGCCupom'
|
0063FF56   BA08226400             mov     edx, $00642208
0063FF5B   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FF5D   E81A771700             call    007B767C
0063FF62   8D85A8FDFFFF           lea     eax, [ebp+$FFFFFDA8]
0063FF68   8B1580AB7D00           mov     edx, [$007DAB80]
0063FF6E   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0063FF70   E84F8DDDFF             call    00418CC4
0063FF75   8D8DA8FDFFFF           lea     ecx, [ebp+$FFFFFDA8]

* Possible String Reference to: 'RazaoCupom'
|
0063FF7B   BA1C226400             mov     edx, $0064221C
0063FF80   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FF82   E8F5761700             call    007B767C
0063FF87   8D8598FDFFFF           lea     eax, [ebp+$FFFFFD98]
0063FF8D   33D2                   xor     edx, edx
0063FF8F   B101                   mov     cl, $01

|
0063FF91   E8DA8ADDFF             call    00418A70
0063FF96   8D8D98FDFFFF           lea     ecx, [ebp+$FFFFFD98]

* Possible String Reference to: 'VlrFrete'
|
0063FF9C   BA30226400             mov     edx, $00642230
0063FFA1   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FFA3   E8D4761700             call    007B767C
0063FFA8   8D8588FDFFFF           lea     eax, [ebp+$FFFFFD88]
0063FFAE   33D2                   xor     edx, edx
0063FFB0   B101                   mov     cl, $01

|
0063FFB2   E8B98ADDFF             call    00418A70
0063FFB7   8D8D88FDFFFF           lea     ecx, [ebp+$FFFFFD88]

* Possible String Reference to: 'VlrSeguro'
|
0063FFBD   BA44226400             mov     edx, $00642244
0063FFC2   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FFC4   E8B3761700             call    007B767C
0063FFC9   8D8578FDFFFF           lea     eax, [ebp+$FFFFFD78]
0063FFCF   33D2                   xor     edx, edx
0063FFD1   B101                   mov     cl, $01

|
0063FFD3   E8988ADDFF             call    00418A70
0063FFD8   8D8D78FDFFFF           lea     ecx, [ebp+$FFFFFD78]

* Possible String Reference to: 'VlrDespAcess'
|
0063FFDE   BA58226400             mov     edx, $00642258
0063FFE3   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0063FFE5   E892761700             call    007B767C
0063FFEA   8D8568FDFFFF           lea     eax, [ebp+$FFFFFD68]
0063FFF0   33D2                   xor     edx, edx
0063FFF2   B101                   mov     cl, $01

|
0063FFF4   E8778ADDFF             call    00418A70
0063FFF9   8D8D68FDFFFF           lea     ecx, [ebp+$FFFFFD68]

* Possible String Reference to: 'NumPedido'
|
0063FFFF   BA4C216400             mov     edx, $0064214C
00640004   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00640006   E871761700             call    007B767C
0064000B   8D8558FDFFFF           lea     eax, [ebp+$FFFFFD58]
00640011   33D2                   xor     edx, edx
00640013   B101                   mov     cl, $01

|
00640015   E8568ADDFF             call    00418A70
0064001A   8D8D58FDFFFF           lea     ecx, [ebp+$FFFFFD58]

* Possible String Reference to: 'NumNotas'
|
00640020   BA70226400             mov     edx, $00642270
00640025   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00640027   E850761700             call    007B767C
0064002C   8D8548FDFFFF           lea     eax, [ebp+$FFFFFD48]
00640032   33D2                   xor     edx, edx
00640034   B101                   mov     cl, $01

|
00640036   E8358ADDFF             call    00418A70
0064003B   8D8D48FDFFFF           lea     ecx, [ebp+$FFFFFD48]

* Possible String Reference to: 'NumFormul'
|
00640041   BA84226400             mov     edx, $00642284
00640046   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00640048   E82F761700             call    007B767C
0064004D   8D8538FDFFFF           lea     eax, [ebp+$FFFFFD38]
00640053   33D2                   xor     edx, edx
00640055   B101                   mov     cl, $01

|
00640057   E8148ADDFF             call    00418A70
0064005C   8D8D38FDFFFF           lea     ecx, [ebp+$FFFFFD38]

* Possible String Reference to: 'PNLcto'
|
00640062   BA98226400             mov     edx, $00642298
00640067   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00640069   E80E761700             call    007B767C
0064006E   8D8528FDFFFF           lea     eax, [ebp+$FFFFFD28]
00640074   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640076   E8498CDDFF             call    00418CC4
0064007B   8D8D28FDFFFF           lea     ecx, [ebp+$FFFFFD28]

* Possible String Reference to: 'PNEspec'
|
00640081   BAA8226400             mov     edx, $006422A8
00640086   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00640088   E8EF751700             call    007B767C
0064008D   8D8518FDFFFF           lea     eax, [ebp+$FFFFFD18]
00640093   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640095   E82A8CDDFF             call    00418CC4
0064009A   8D8D18FDFFFF           lea     ecx, [ebp+$FFFFFD18]

* Possible String Reference to: 'PNSerie'
|
006400A0   BAB8226400             mov     edx, $006422B8
006400A5   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
006400A7   E8D0751700             call    007B767C
006400AC   8D8508FDFFFF           lea     eax, [ebp+$FFFFFD08]
006400B2   33D2                   xor     edx, edx
006400B4   B101                   mov     cl, $01

|
006400B6   E8B589DDFF             call    00418A70
006400BB   8D8D08FDFFFF           lea     ecx, [ebp+$FFFFFD08]

* Possible String Reference to: 'DVLcto'
|
006400C1   BAC8226400             mov     edx, $006422C8
006400C6   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
006400C8   E8AF751700             call    007B767C
006400CD   8D85F8FCFFFF           lea     eax, [ebp+$FFFFFCF8]
006400D3   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006400D5   E8EA8BDDFF             call    00418CC4
006400DA   8D8DF8FCFFFF           lea     ecx, [ebp+$FFFFFCF8]

* Possible String Reference to: 'DVEspecie'
|
006400E0   BAD8226400             mov     edx, $006422D8
006400E5   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
006400E7   E890751700             call    007B767C
006400EC   8D85E8FCFFFF           lea     eax, [ebp+$FFFFFCE8]
006400F2   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006400F4   E8CB8BDDFF             call    00418CC4
006400F9   8D8DE8FCFFFF           lea     ecx, [ebp+$FFFFFCE8]

* Possible String Reference to: 'DVSerie'
|
006400FF   BAEC226400             mov     edx, $006422EC
00640104   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00640106   E871751700             call    007B767C
0064010B   8D85D8FCFFFF           lea     eax, [ebp+$FFFFFCD8]
00640111   33D2                   xor     edx, edx
00640113   B101                   mov     cl, $01

|
00640115   E85689DDFF             call    00418A70
0064011A   8D8DD8FCFFFF           lea     ecx, [ebp+$FFFFFCD8]

* Possible String Reference to: 'VlrPedagio'
|
00640120   BAFC226400             mov     edx, $006422FC
00640125   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00640127   E850751700             call    007B767C
0064012C   8D85C8FCFFFF           lea     eax, [ebp+$FFFFFCC8]
00640132   33D2                   xor     edx, edx
00640134   B101                   mov     cl, $01

|
00640136   E83589DDFF             call    00418A70
0064013B   8D8DC8FCFFFF           lea     ecx, [ebp+$FFFFFCC8]

* Possible String Reference to: 'VlrDespacho'
|
00640141   BA10236400             mov     edx, $00642310
00640146   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00640148   E82F751700             call    007B767C
0064014D   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0064014F   E8889C1700             call    007B9DDC
00640154   A1ACAC7D00             mov     eax, dword ptr [$007DACAC]

* Reference to: System.@LStrClr(void;void);
|
00640159   E83E53DCFF             call    0040549C
0064015E   A180AB7D00             mov     eax, dword ptr [$007DAB80]

* Reference to: System.@LStrClr(void;void);
|
00640163   E83453DCFF             call    0040549C
00640168   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064016D   8B00                   mov     eax, [eax]
0064016F   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.DisableControls(TDataSet);
|
00640175   E802A4EAFF             call    004EA57C
0064017A   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064017F   8B00                   mov     eax, [eax]
00640181   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.First(TDataSet);
|
00640187   E8A0AEEAFF             call    004EB02C
0064018C   C745C001000000         mov     dword ptr [ebp-$40], $00000001
00640193   33FF                   xor     edi, edi
00640195   E95B160000             jmp     006417F5
0064019A   8D95C4FCFFFF           lea     edx, [ebp+$FFFFFCC4]
006401A0   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006401A5   8B00                   mov     eax, [eax]
006401A7   8B80D4000000           mov     eax, [eax+$00D4]
006401AD   8B08                   mov     ecx, [eax]
006401AF   FF5160                 call    dword ptr [ecx+$60]
006401B2   8B85C4FCFFFF           mov     eax, [ebp+$FFFFFCC4]
006401B8   BA24236400             mov     edx, $00642324

* Reference to: System.@LStrCmp;
|
006401BD   E8E656DCFF             call    004058A8
006401C2   0F85B3070000           jnz     0064097B
006401C8   8D95C0FCFFFF           lea     edx, [ebp+$FFFFFCC0]
006401CE   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006401D3   8B00                   mov     eax, [eax]
006401D5   8B8048010000           mov     eax, [eax+$0148]
006401DB   8B08                   mov     ecx, [eax]
006401DD   FF5160                 call    dword ptr [ecx+$60]
006401E0   8B85C0FCFFFF           mov     eax, [ebp+$FFFFFCC0]
006401E6   BA30236400             mov     edx, $00642330

* Reference to: System.@LStrCmp;
|
006401EB   E8B856DCFF             call    004058A8
006401F0   0F8446070000           jz      0064093C
006401F6   47                     inc     edi
006401F7   8B06                   mov     eax, [esi]

|
006401F9   E876701700             call    007B7274
006401FE   8D85B0FCFFFF           lea     eax, [ebp+$FFFFFCB0]
00640204   8BD7                   mov     edx, edi
00640206   B1FC                   mov     cl, $FC

|
00640208   E86388DDFF             call    00418A70
0064020D   8D8DB0FCFFFF           lea     ecx, [ebp+$FFFFFCB0]

* Possible String Reference to: 'Item'
|
00640213   BA3C236400             mov     edx, $0064233C
00640218   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
0064021A   E85D741700             call    007B767C
0064021F   8D95ACFCFFFF           lea     edx, [ebp+$FFFFFCAC]
00640225   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064022A   8B00                   mov     eax, [eax]
0064022C   8B80E8000000           mov     eax, [eax+$00E8]
00640232   8B08                   mov     ecx, [eax]
00640234   FF5160                 call    dword ptr [ecx+$60]
00640237   8B85ACFCFFFF           mov     eax, [ebp+$FFFFFCAC]
0064023D   8B157CAB7D00           mov     edx, [$007DAB7C]
00640243   8B12                   mov     edx, [edx]

* Reference to: System.@LStrCmp;
|
00640245   E85E56DCFF             call    004058A8
0064024A   743B                   jz      00640287
0064024C   8D9598FCFFFF           lea     edx, [ebp+$FFFFFC98]
00640252   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640257   8B00                   mov     eax, [eax]
00640259   8B80E8000000           mov     eax, [eax+$00E8]
0064025F   8B08                   mov     ecx, [eax]
00640261   FF5160                 call    dword ptr [ecx+$60]
00640264   8B9598FCFFFF           mov     edx, [ebp+$FFFFFC98]
0064026A   8D859CFCFFFF           lea     eax, [ebp+$FFFFFC9C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640270   E84F8ADDFF             call    00418CC4
00640275   8D8D9CFCFFFF           lea     ecx, [ebp+$FFFFFC9C]

* Possible String Reference to: 'CodProd'
|
0064027B   BA4C236400             mov     edx, $0064234C
00640280   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
00640282   E8F5731700             call    007B767C
00640287   8D9584FCFFFF           lea     edx, [ebp+$FFFFFC84]
0064028D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640292   8B00                   mov     eax, [eax]
00640294   8B80CC000000           mov     eax, [eax+$00CC]
0064029A   8B08                   mov     ecx, [eax]
0064029C   FF5160                 call    dword ptr [ecx+$60]
0064029F   8B9584FCFFFF           mov     edx, [ebp+$FFFFFC84]
006402A5   8D8588FCFFFF           lea     eax, [ebp+$FFFFFC88]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006402AB   E8148ADDFF             call    00418CC4
006402B0   8D8D88FCFFFF           lea     ecx, [ebp+$FFFFFC88]

* Possible String Reference to: 'Descricao'
|
006402B6   BA5C236400             mov     edx, $0064235C
006402BB   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
006402BD   E8BA731700             call    007B767C
006402C2   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006402C7   8B00                   mov     eax, [eax]
006402C9   8B80F4000000           mov     eax, [eax+$00F4]
006402CF   8B10                   mov     edx, [eax]
006402D1   FF5254                 call    dword ptr [edx+$54]
006402D4   8D8574FCFFFF           lea     eax, [ebp+$FFFFFC74]

* Reference to: Variants.@VarFromReal;
|
006402DA   E8A989DDFF             call    00418C88
006402DF   8D8D74FCFFFF           lea     ecx, [ebp+$FFFFFC74]

* Possible String Reference to: 'QtdLcto'
|
006402E5   BA70236400             mov     edx, $00642370
006402EA   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
006402EC   E88B731700             call    007B767C
006402F1   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006402F6   8B00                   mov     eax, [eax]
006402F8   8B80F8000000           mov     eax, [eax+$00F8]
006402FE   8B10                   mov     edx, [eax]
00640300   FF5254                 call    dword ptr [edx+$54]
00640303   8D8564FCFFFF           lea     eax, [ebp+$FFFFFC64]

* Reference to: Variants.@VarFromReal;
|
00640309   E87A89DDFF             call    00418C88
0064030E   8D8D64FCFFFF           lea     ecx, [ebp+$FFFFFC64]

* Possible String Reference to: 'VlrUnit'
|
00640314   BA80236400             mov     edx, $00642380
00640319   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
0064031B   E85C731700             call    007B767C
00640320   8D9550FCFFFF           lea     edx, [ebp+$FFFFFC50]
00640326   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064032B   8B00                   mov     eax, [eax]
0064032D   8B8020010000           mov     eax, [eax+$0120]
00640333   8B08                   mov     ecx, [eax]
00640335   FF5160                 call    dword ptr [ecx+$60]
00640338   8B9550FCFFFF           mov     edx, [ebp+$FFFFFC50]
0064033E   8D8554FCFFFF           lea     eax, [ebp+$FFFFFC54]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640344   E87B89DDFF             call    00418CC4
00640349   8D8D54FCFFFF           lea     ecx, [ebp+$FFFFFC54]

* Possible String Reference to: 'UnidMed'
|
0064034F   BA90236400             mov     edx, $00642390
00640354   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
00640356   E821731700             call    007B767C
0064035B   8D953CFCFFFF           lea     edx, [ebp+$FFFFFC3C]
00640361   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640366   8B00                   mov     eax, [eax]
00640368   8B8040010000           mov     eax, [eax+$0140]
0064036E   8B08                   mov     ecx, [eax]
00640370   FF5160                 call    dword ptr [ecx+$60]
00640373   8B953CFCFFFF           mov     edx, [ebp+$FFFFFC3C]
00640379   8D8540FCFFFF           lea     eax, [ebp+$FFFFFC40]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064037F   E84089DDFF             call    00418CC4
00640384   8D8D40FCFFFF           lea     ecx, [ebp+$FFFFFC40]

* Possible String Reference to: 'SitTrib'
|
0064038A   BAA0236400             mov     edx, $006423A0
0064038F   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
00640391   E8E6721700             call    007B767C
00640396   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064039B   8B00                   mov     eax, [eax]
0064039D   8B8024010000           mov     eax, [eax+$0124]
006403A3   8B10                   mov     edx, [eax]
006403A5   FF5254                 call    dword ptr [edx+$54]
006403A8   8D852CFCFFFF           lea     eax, [ebp+$FFFFFC2C]

* Reference to: Variants.@VarFromReal;
|
006403AE   E8D588DDFF             call    00418C88
006403B3   8D8D2CFCFFFF           lea     ecx, [ebp+$FFFFFC2C]

* Possible String Reference to: 'QtdeUnidMed'
|
006403B9   BAB0236400             mov     edx, $006423B0
006403BE   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
006403C0   E8B7721700             call    007B767C
006403C5   8D9518FCFFFF           lea     edx, [ebp+$FFFFFC18]
006403CB   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006403D0   8B00                   mov     eax, [eax]
006403D2   8B8028010000           mov     eax, [eax+$0128]
006403D8   8B08                   mov     ecx, [eax]
006403DA   FF5160                 call    dword ptr [ecx+$60]
006403DD   8B9518FCFFFF           mov     edx, [ebp+$FFFFFC18]
006403E3   8D851CFCFFFF           lea     eax, [ebp+$FFFFFC1C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006403E9   E8D688DDFF             call    00418CC4
006403EE   8D8D1CFCFFFF           lea     ecx, [ebp+$FFFFFC1C]

* Possible String Reference to: 'ComplEmbal'
|
006403F4   BAC4236400             mov     edx, $006423C4
006403F9   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
006403FB   E87C721700             call    007B767C
00640400   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640405   8B00                   mov     eax, [eax]
00640407   8B802C010000           mov     eax, [eax+$012C]
0064040D   8B10                   mov     edx, [eax]
0064040F   FF5254                 call    dword ptr [edx+$54]
00640412   8D8508FCFFFF           lea     eax, [ebp+$FFFFFC08]

* Reference to: Variants.@VarFromReal;
|
00640418   E86B88DDFF             call    00418C88
0064041D   8D8D08FCFFFF           lea     ecx, [ebp+$FFFFFC08]

* Possible String Reference to: 'VlrCusto'
|
00640423   BAD8236400             mov     edx, $006423D8
00640428   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
0064042A   E84D721700             call    007B767C
0064042F   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640434   8B00                   mov     eax, [eax]
00640436   8B8030010000           mov     eax, [eax+$0130]
0064043C   8B10                   mov     edx, [eax]
0064043E   FF5254                 call    dword ptr [edx+$54]
00640441   8D85F8FBFFFF           lea     eax, [ebp+$FFFFFBF8]

* Reference to: Variants.@VarFromReal;
|
00640447   E83C88DDFF             call    00418C88
0064044C   8D8DF8FBFFFF           lea     ecx, [ebp+$FFFFFBF8]

* Possible String Reference to: 'VlrTabela'
|
00640452   BAEC236400             mov     edx, $006423EC
00640457   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
00640459   E81E721700             call    007B767C
0064045E   8D95E4FBFFFF           lea     edx, [ebp+$FFFFFBE4]
00640464   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640469   8B00                   mov     eax, [eax]
0064046B   8B8044010000           mov     eax, [eax+$0144]
00640471   8B08                   mov     ecx, [eax]
00640473   FF5160                 call    dword ptr [ecx+$60]
00640476   8B95E4FBFFFF           mov     edx, [ebp+$FFFFFBE4]
0064047C   8D85E8FBFFFF           lea     eax, [ebp+$FFFFFBE8]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640482   E83D88DDFF             call    00418CC4
00640487   8D8DE8FBFFFF           lea     ecx, [ebp+$FFFFFBE8]

* Possible String Reference to: 'ClassFisc'
|
0064048D   BA00246400             mov     edx, $00642400
00640492   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
00640494   E8E3711700             call    007B767C
00640499   8D95D0FBFFFF           lea     edx, [ebp+$FFFFFBD0]
0064049F   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006404A4   8B00                   mov     eax, [eax]
006404A6   8B8098010000           mov     eax, [eax+$0198]
006404AC   8B08                   mov     ecx, [eax]
006404AE   FF5160                 call    dword ptr [ecx+$60]
006404B1   8B95D0FBFFFF           mov     edx, [ebp+$FFFFFBD0]
006404B7   8D85D4FBFFFF           lea     eax, [ebp+$FFFFFBD4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006404BD   E80288DDFF             call    00418CC4
006404C2   8D8DD4FBFFFF           lea     ecx, [ebp+$FFFFFBD4]

* Possible String Reference to: 'CodSubLocal'
|
006404C8   BA14246400             mov     edx, $00642414
006404CD   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
006404CF   E8A8711700             call    007B767C
006404D4   8D95BCFBFFFF           lea     edx, [ebp+$FFFFFBBC]
006404DA   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006404DF   8B00                   mov     eax, [eax]
006404E1   8B80A4010000           mov     eax, [eax+$01A4]
006404E7   8B08                   mov     ecx, [eax]
006404E9   FF5160                 call    dword ptr [ecx+$60]
006404EC   8B95BCFBFFFF           mov     edx, [ebp+$FFFFFBBC]
006404F2   8D85C0FBFFFF           lea     eax, [ebp+$FFFFFBC0]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006404F8   E8C787DDFF             call    00418CC4
006404FD   8D8DC0FBFFFF           lea     ecx, [ebp+$FFFFFBC0]

* Possible String Reference to: 'Historico'
|
00640503   BA28246400             mov     edx, $00642428
00640508   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
0064050A   E86D711700             call    007B767C
0064050F   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640514   8B00                   mov     eax, [eax]
00640516   8B802C020000           mov     eax, [eax+$022C]
0064051C   8B10                   mov     edx, [eax]
0064051E   FF5254                 call    dword ptr [edx+$54]
00640521   8D85ACFBFFFF           lea     eax, [ebp+$FFFFFBAC]

* Reference to: Variants.@VarFromReal;
|
00640527   E85C87DDFF             call    00418C88
0064052C   8D8DACFBFFFF           lea     ecx, [ebp+$FFFFFBAC]

* Possible String Reference to: 'VlrDesc'
|
00640532   BA3C246400             mov     edx, $0064243C
00640537   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
00640539   E83E711700             call    007B767C
0064053E   8D859CFBFFFF           lea     eax, [ebp+$FFFFFB9C]
00640544   33D2                   xor     edx, edx
00640546   B101                   mov     cl, $01

|
00640548   E82385DDFF             call    00418A70
0064054D   8D8D9CFBFFFF           lea     ecx, [ebp+$FFFFFB9C]

* Possible String Reference to: 'QtdDevol'
|
00640553   BA4C246400             mov     edx, $0064244C
00640558   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
0064055A   E81D711700             call    007B767C
0064055F   8D858CFBFFFF           lea     eax, [ebp+$FFFFFB8C]
00640565   33D2                   xor     edx, edx
00640567   B101                   mov     cl, $01

|
00640569   E80285DDFF             call    00418A70
0064056E   8D8D8CFBFFFF           lea     ecx, [ebp+$FFFFFB8C]

* Possible String Reference to: 'QtdInven'
|
00640574   BA60246400             mov     edx, $00642460
00640579   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
0064057B   E8FC701700             call    007B767C
00640580   8D857CFBFFFF           lea     eax, [ebp+$FFFFFB7C]
00640586   33D2                   xor     edx, edx
00640588   B101                   mov     cl, $01

|
0064058A   E8E184DDFF             call    00418A70
0064058F   8D8D7CFBFFFF           lea     ecx, [ebp+$FFFFFB7C]

* Possible String Reference to: 'Frete'
|
00640595   BA74246400             mov     edx, $00642474
0064059A   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
0064059C   E8DB701700             call    007B767C
006405A1   8D856CFBFFFF           lea     eax, [ebp+$FFFFFB6C]
006405A7   33D2                   xor     edx, edx
006405A9   B101                   mov     cl, $01

|
006405AB   E8C084DDFF             call    00418A70
006405B0   8D8D6CFBFFFF           lea     ecx, [ebp+$FFFFFB6C]

* Possible String Reference to: 'VlrSeguro'
|
006405B6   BA44226400             mov     edx, $00642244
006405BB   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
006405BD   E8BA701700             call    007B767C
006405C2   8D855CFBFFFF           lea     eax, [ebp+$FFFFFB5C]
006405C8   33D2                   xor     edx, edx
006405CA   B101                   mov     cl, $01

|
006405CC   E89F84DDFF             call    00418A70
006405D1   8D8D5CFBFFFF           lea     ecx, [ebp+$FFFFFB5C]

* Possible String Reference to: 'DespAcess'
|
006405D7   BA84246400             mov     edx, $00642484
006405DC   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
006405DE   E899701700             call    007B767C
006405E3   8D854CFBFFFF           lea     eax, [ebp+$FFFFFB4C]
006405E9   33D2                   xor     edx, edx
006405EB   B101                   mov     cl, $01

|
006405ED   E87E84DDFF             call    00418A70
006405F2   8D8D4CFBFFFF           lea     ecx, [ebp+$FFFFFB4C]

* Possible String Reference to: 'NumPedido'
|
006405F8   BA4C216400             mov     edx, $0064214C
006405FD   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
006405FF   E878701700             call    007B767C
00640604   8D853CFBFFFF           lea     eax, [ebp+$FFFFFB3C]
0064060A   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064060C   E8B386DDFF             call    00418CC4
00640611   8D8D3CFBFFFF           lea     ecx, [ebp+$FFFFFB3C]

* Possible String Reference to: 'NatOper'
|
00640617   BA94216400             mov     edx, $00642194
0064061C   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
0064061E   E859701700             call    007B767C
00640623   8B06                   mov     eax, [esi]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00640625   E8B2971700             call    007B9DDC
0064062A   8D9538FBFFFF           lea     edx, [ebp+$FFFFFB38]
00640630   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640635   8B00                   mov     eax, [eax]
00640637   8B80E8000000           mov     eax, [eax+$00E8]
0064063D   8B08                   mov     ecx, [eax]
0064063F   FF5160                 call    dword ptr [ecx+$60]
00640642   8B8538FBFFFF           mov     eax, [ebp+$FFFFFB38]
00640648   8B157CAB7D00           mov     edx, [$007DAB7C]
0064064E   8B12                   mov     edx, [edx]

* Reference to: System.@LStrCmp;
|
00640650   E85352DCFF             call    004058A8
00640655   0F8441010000           jz      0064079C
0064065B   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640660   8B00                   mov     eax, [eax]
00640662   8B80A8010000           mov     eax, [eax+$01A8]
00640668   8B10                   mov     edx, [eax]
0064066A   FF5244                 call    dword ptr [edx+$44]
0064066D   84C0                   test    al, al
0064066F   0F8427010000           jz      0064079C
00640675   8D8D34FBFFFF           lea     ecx, [ebp+$FFFFFB34]

* Possible String Reference to: 'CodProd'
|
0064067B   BA4C236400             mov     edx, $0064234C
00640680   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640682   E8B1761700             call    007B7D38
00640687   8B8534FBFFFF           mov     eax, [ebp+$FFFFFB34]
0064068D   50                     push    eax
0064068E   8D8D30FBFFFF           lea     ecx, [ebp+$FFFFFB30]

* Possible String Reference to: 'NatOper'
|
00640694   BA94216400             mov     edx, $00642194
00640699   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064069B   E898761700             call    007B7D38
006406A0   8B8530FBFFFF           mov     eax, [ebp+$FFFFFB30]
006406A6   50                     push    eax
006406A7   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006406AC   FF7004                 push    dword ptr [eax+$04]
006406AF   FF30                   push    dword ptr [eax]
006406B1   8D8D2CFBFFFF           lea     ecx, [ebp+$FFFFFB2C]

* Possible String Reference to: 'DtLcto'
|
006406B7   BAD4206400             mov     edx, $006420D4
006406BC   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006406BE   E875761700             call    007B7D38
006406C3   8B852CFBFFFF           mov     eax, [ebp+$FFFFFB2C]

|
006406C9   E8E2EDDCFF             call    0040F4B0
006406CE   83C4F8                 add     esp, -$08
006406D1   DD1C24                 fstp    qword ptr [esp]
006406D4   9B                     wait
006406D5   8D8D28FBFFFF           lea     ecx, [ebp+$FFFFFB28]

* Possible String Reference to: 'UnidMed'
|
006406DB   BA90236400             mov     edx, $00642390
006406E0   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006406E2   E851761700             call    007B7D38
006406E7   8B8528FBFFFF           mov     eax, [ebp+$FFFFFB28]
006406ED   50                     push    eax

* Possible String Reference to: 'QtdeUnidMed'
|
006406EE   BAB0236400             mov     edx, $006423B0
006406F3   8B06                   mov     eax, [esi]

|
006406F5   E82E741700             call    007B7B28
006406FA   83C4F4                 add     esp, -$0C
006406FD   DB3C24                 fstp    tbyte ptr [esp]
00640700   9B                     wait

* Possible String Reference to: 'QtdLcto'
|
00640701   BA70236400             mov     edx, $00642370
00640706   8B06                   mov     eax, [esi]

|
00640708   E81B741700             call    007B7B28
0064070D   83C4F4                 add     esp, -$0C
00640710   DB3C24                 fstp    tbyte ptr [esp]
00640713   9B                     wait

* Possible String Reference to: 'VlrUnit'
|
00640714   BA80236400             mov     edx, $00642380
00640719   8B06                   mov     eax, [esi]

|
0064071B   E808741700             call    007B7B28
00640720   83C4F4                 add     esp, -$0C
00640723   DB3C24                 fstp    tbyte ptr [esp]
00640726   9B                     wait
00640727   6898246400             push    $00642498
0064072C   8D8D24FBFFFF           lea     ecx, [ebp+$FFFFFB24]

* Possible String Reference to: 'CodSubLocal'
|
00640732   BA14246400             mov     edx, $00642414
00640737   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640739   E8FA751700             call    007B7D38
0064073E   8B8524FBFFFF           mov     eax, [ebp+$FFFFFB24]
00640744   50                     push    eax
00640745   56                     push    esi
00640746   6858DD7D00             push    $007DDD58
0064074B   8D8D20FBFFFF           lea     ecx, [ebp+$FFFFFB20]

* Possible String Reference to: 'Serie'
|
00640751   BAF4206400             mov     edx, $006420F4
00640756   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640758   E8DB751700             call    007B7D38
0064075D   8B8520FBFFFF           mov     eax, [ebp+$FFFFFB20]
00640763   50                     push    eax
00640764   8D8D1CFBFFFF           lea     ecx, [ebp+$FFFFFB1C]

* Possible String Reference to: 'Especie'
|
0064076A   BAE4206400             mov     edx, $006420E4
0064076F   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640771   E8C2751700             call    007B7D38
00640776   8B851CFBFFFF           mov     eax, [ebp+$FFFFFB1C]
0064077C   50                     push    eax
0064077D   8D8D18FBFFFF           lea     ecx, [ebp+$FFFFFB18]

* Possible String Reference to: 'Filial'
|
00640783   BA9C206400             mov     edx, $0064209C
00640788   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064078A   E8A9751700             call    007B7D38
0064078F   8B8518FBFFFF           mov     eax, [ebp+$FFFFFB18]
00640795   5A                     pop     edx
00640796   59                     pop     ecx

|
00640797   E8443E0000             call    006445E0
0064079C   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006407A1   8B00                   mov     eax, [eax]
006407A3   8B80CC030000           mov     eax, [eax+$03CC]
006407A9   8B10                   mov     edx, [eax]
006407AB   FF5244                 call    dword ptr [edx+$44]
006407AE   84C0                   test    al, al
006407B0   742A                   jz      006407DC
006407B2   6A00                   push    $00
006407B4   6A00                   push    $00
006407B6   6A00                   push    $00
006407B8   8D8D14FBFFFF           lea     ecx, [ebp+$FFFFFB14]

* Possible String Reference to: 'CodFunc'
|
006407BE   BAF8216400             mov     edx, $006421F8
006407C3   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006407C5   E86E751700             call    007B7D38
006407CA   8B9514FBFFFF           mov     edx, [ebp+$FFFFFB14]
006407D0   A15CDD7D00             mov     eax, dword ptr [$007DDD5C]

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckValueChange(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer):System.Boolean;
|
006407D5   E812360000             call    00643DEC
006407DA   EB28                   jmp     00640804
006407DC   6A00                   push    $00
006407DE   6A00                   push    $00
006407E0   6A00                   push    $00
006407E2   8D8D10FBFFFF           lea     ecx, [ebp+$FFFFFB10]

* Possible String Reference to: 'CodFunc'
|
006407E8   BAF8216400             mov     edx, $006421F8
006407ED   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006407EF   E844751700             call    007B7D38
006407F4   8B9510FBFFFF           mov     edx, [ebp+$FFFFFB10]
006407FA   A14CDD7D00             mov     eax, dword ptr [$007DDD4C]

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckValueChange(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer):System.Boolean;
|
006407FF   E8E8350000             call    00643DEC
00640804   8D8D0CFBFFFF           lea     ecx, [ebp+$FFFFFB0C]

* Possible String Reference to: 'CgcClie'
|
0064080A   BA14216400             mov     edx, $00642114
0064080F   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640811   E822751700             call    007B7D38
00640816   8B850CFBFFFF           mov     eax, [ebp+$FFFFFB0C]
0064081C   50                     push    eax
0064081D   8D8D08FBFFFF           lea     ecx, [ebp+$FFFFFB08]

* Possible String Reference to: 'SitTrib'
|
00640823   BAA0236400             mov     edx, $006423A0
00640828   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064082A   E809751700             call    007B7D38
0064082F   8B8508FBFFFF           mov     eax, [ebp+$FFFFFB08]
00640835   50                     push    eax
00640836   8D8D04FBFFFF           lea     ecx, [ebp+$FFFFFB04]

* Possible String Reference to: 'NatOper'
|
0064083C   BA94216400             mov     edx, $00642194
00640841   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640843   E8F0741700             call    007B7D38
00640848   8B8504FBFFFF           mov     eax, [ebp+$FFFFFB04]
0064084E   50                     push    eax
0064084F   6854DD7D00             push    $007DDD54
00640854   56                     push    esi

* Possible String Reference to: 'ccTotal'
|
00640855   BAA4246400             mov     edx, $006424A4
0064085A   8B06                   mov     eax, [esi]

|
0064085C   E8C7721700             call    007B7B28
00640861   83C4F4                 add     esp, -$0C
00640864   DB3C24                 fstp    tbyte ptr [esp]
00640867   9B                     wait
00640868   6A00                   push    $00
0064086A   6A00                   push    $00
0064086C   6A00                   push    $00
0064086E   A108AF7D00             mov     eax, dword ptr [$007DAF08]
00640873   8A00                   mov     al, byte ptr [eax]
00640875   3401                   xor     al, $01
00640877   50                     push    eax
00640878   8D8D00FBFFFF           lea     ecx, [ebp+$FFFFFB00]

* Possible String Reference to: 'CodProd'
|
0064087E   BA4C236400             mov     edx, $0064234C
00640883   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640885   E8AE741700             call    007B7D38
0064088A   8B8500FBFFFF           mov     eax, [ebp+$FFFFFB00]
00640890   50                     push    eax
00640891   8D8DFCFAFFFF           lea     ecx, [ebp+$FFFFFAFC]

* Possible String Reference to: 'Filial'
|
00640897   BA9C206400             mov     edx, $0064209C
0064089C   8B06                   mov     eax, [esi]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064089E   E895741700             call    007B7D38
006408A3   8B95FCFAFFFF           mov     edx, [ebp+$FFFFFAFC]
006408A9   B8B4246400             mov     eax, $006424B4
006408AE   59                     pop     ecx

|
006408AF   E8B4280000             call    00643168
006408B4   A154DD7D00             mov     eax, dword ptr [$007DDD54]
006408B9   50                     push    eax
006408BA   A148DD7D00             mov     eax, dword ptr [$007DDD48]
006408BF   50                     push    eax

* Possible String Reference to: 'VlrTotal'
|
006408C0   BAE4216400             mov     edx, $006421E4
006408C5   8B03                   mov     eax, [ebx]

|
006408C7   E85C721700             call    007B7B28
006408CC   83C4F4                 add     esp, -$0C
006408CF   DB3C24                 fstp    tbyte ptr [esp]
006408D2   9B                     wait

* Possible String Reference to: 'VlrAcresc'
|
006408D3   BAC0246400             mov     edx, $006424C0
006408D8   8B03                   mov     eax, [ebx]

|
006408DA   E849721700             call    007B7B28
006408DF   DBBDF0FAFFFF           fstp    tbyte ptr [ebp+$FFFFFAF0]
006408E5   9B                     wait

* Possible String Reference to: 'VlrDesc'
|
006408E6   BA3C246400             mov     edx, $0064243C
006408EB   8B03                   mov     eax, [ebx]

|
006408ED   E836721700             call    007B7B28
006408F2   DBADF0FAFFFF           fld     tbyte ptr [ebp+$FFFFFAF0]
006408F8   DEE1                   fsubrp  st(1), st(0)
006408FA   83C4F4                 add     esp, -$0C
006408FD   DB3C24                 fstp    tbyte ptr [esp]
00640900   9B                     wait
00640901   6A00                   push    $00
00640903   6A00                   push    $00
00640905   6A00                   push    $00
00640907   8D8DECFAFFFF           lea     ecx, [ebp+$FFFFFAEC]

* Possible String Reference to: 'CgcClie'
|
0064090D   BA14216400             mov     edx, $00642114
00640912   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640914   E81F741700             call    007B7D38
00640919   8B95ECFAFFFF           mov     edx, [ebp+$FFFFFAEC]
0064091F   8B0E                   mov     ecx, [esi]
00640921   B8B4246400             mov     eax, $006424B4

* Reference to: DBAdapt.TBaseDataSetAdapterField.ImplCheckValueChange(TBaseDataSetAdapterField;WebAdapt.IActionRequest;System.Integer):System.Boolean;
|
00640926   E891340000             call    00643DBC
0064092B   A154AE7D00             mov     eax, dword ptr [$007DAE54]
00640930   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00640932   E82954E7FF             call    004B5D60
00640937   E9A70E0000             jmp     006417E3
0064093C   8D95E8FAFFFF           lea     edx, [ebp+$FFFFFAE8]
00640942   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640947   8B00                   mov     eax, [eax]
00640949   8B8048010000           mov     eax, [eax+$0148]
0064094F   8B08                   mov     ecx, [eax]
00640951   FF5160                 call    dword ptr [ecx+$60]
00640954   8B85E8FAFFFF           mov     eax, [ebp+$FFFFFAE8]
0064095A   BA30236400             mov     edx, $00642330

* Reference to: System.@LStrCmp;
|
0064095F   E8444FDCFF             call    004058A8
00640964   0F85790E0000           jnz     006417E3
0064096A   A154AE7D00             mov     eax, dword ptr [$007DAE54]
0064096F   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00640971   E8EA53E7FF             call    004B5D60
00640976   E9680E0000             jmp     006417E3
0064097B   8D95E4FAFFFF           lea     edx, [ebp+$FFFFFAE4]
00640981   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640986   8B00                   mov     eax, [eax]
00640988   8B80D4000000           mov     eax, [eax+$00D4]
0064098E   8B08                   mov     ecx, [eax]
00640990   FF5160                 call    dword ptr [ecx+$60]
00640993   8B85E4FAFFFF           mov     eax, [ebp+$FFFFFAE4]
00640999   BAD4246400             mov     edx, $006424D4

* Reference to: System.@LStrCmp;
|
0064099E   E8054FDCFF             call    004058A8
006409A3   0F85C00B0000           jnz     00641569
006409A9   A154AE7D00             mov     eax, dword ptr [$007DAE54]
006409AE   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
006409B0   E8AB53E7FF             call    004B5D60
006409B5   8D95DCFAFFFF           lea     edx, [ebp+$FFFFFADC]
006409BB   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006409C0   8B00                   mov     eax, [eax]
006409C2   8B80C0010000           mov     eax, [eax+$01C0]
006409C8   8B08                   mov     ecx, [eax]
006409CA   FF5160                 call    dword ptr [ecx+$60]
006409CD   8B85DCFAFFFF           mov     eax, [ebp+$FFFFFADC]
006409D3   8D95E0FAFFFF           lea     edx, [ebp+$FFFFFAE0]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006409D9   E8A62E1600             call    007A3884
006409DE   8B85E0FAFFFF           mov     eax, [ebp+$FFFFFAE0]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006409E4   E803CCDCFF             call    0040D5EC
006409E9   D81D84206400           fcomp   dword ptr [$00642084]
006409EF   DFE0                   fstsw   ax
006409F1   9E                     sahf
006409F2   0F86EB0D0000           jbe     006417E3
006409F8   A160DD7D00             mov     eax, dword ptr [$007DDD60]

|
006409FD   E872681700             call    007B7274
00640A02   8D85C4FAFFFF           lea     eax, [ebp+$FFFFFAC4]
00640A08   50                     push    eax

* Possible String Reference to: 'NumLcto'
|
00640A09   BA04216400             mov     edx, $00642104
00640A0E   8B03                   mov     eax, [ebx]

|
00640A10   E813711700             call    007B7B28
00640A15   8D85B4FAFFFF           lea     eax, [ebp+$FFFFFAB4]

* Reference to: Variants.@VarFromReal;
|
00640A1B   E86882DDFF             call    00418C88
00640A20   8D85B4FAFFFF           lea     eax, [ebp+$FFFFFAB4]
00640A26   33C9                   xor     ecx, ecx
00640A28   BA06000000             mov     edx, $00000006

* Reference to : TFrmInfoAtu._PROC_007A05B8()
|
00640A2D   E886FB1500             call    007A05B8
00640A32   FFB5C4FAFFFF           push    dword ptr [ebp+$FFFFFAC4]
00640A38   68E0246400             push    $006424E0
00640A3D   8D85B0FAFFFF           lea     eax, [ebp+$FFFFFAB0]
00640A43   50                     push    eax
00640A44   B901000000             mov     ecx, $00000001
00640A49   8B55C0                 mov     edx, [ebp-$40]

* Possible String Reference to: 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
|
00640A4C   B8EC246400             mov     eax, $006424EC

* Reference to: System.@LStrCopy;
|
00640A51   E8664FDCFF             call    004059BC
00640A56   FFB5B0FAFFFF           push    dword ptr [ebp+$FFFFFAB0]
00640A5C   8D85C8FAFFFF           lea     eax, [ebp+$FFFFFAC8]
00640A62   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
00640A67   E8B04DDCFF             call    0040581C
00640A6C   8B95C8FAFFFF           mov     edx, [ebp+$FFFFFAC8]
00640A72   8D85CCFAFFFF           lea     eax, [ebp+$FFFFFACC]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640A78   E84782DDFF             call    00418CC4
00640A7D   8D8DCCFAFFFF           lea     ecx, [ebp+$FFFFFACC]

* Possible String Reference to: 'NumDupl'
|
00640A83   BA10256400             mov     edx, $00642510
00640A88   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640A8D   E8EA6B1700             call    007B767C
00640A92   FF45C0                 inc     dword ptr [ebp-$40]
00640A95   8D959CFAFFFF           lea     edx, [ebp+$FFFFFA9C]
00640A9B   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640AA0   8B00                   mov     eax, [eax]
00640AA2   8B80E0000000           mov     eax, [eax+$00E0]
00640AA8   8B08                   mov     ecx, [eax]
00640AAA   FF5160                 call    dword ptr [ecx+$60]
00640AAD   8B959CFAFFFF           mov     edx, [ebp+$FFFFFA9C]
00640AB3   8D85A0FAFFFF           lea     eax, [ebp+$FFFFFAA0]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640AB9   E80682DDFF             call    00418CC4
00640ABE   8D8DA0FAFFFF           lea     ecx, [ebp+$FFFFFAA0]

* Possible String Reference to: 'Cgc'
|
00640AC4   BA20256400             mov     edx, $00642520
00640AC9   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640ACE   E8A96B1700             call    007B767C
00640AD3   8D858CFAFFFF           lea     eax, [ebp+$FFFFFA8C]
00640AD9   8B1558B57D00           mov     edx, [$007DB558]
00640ADF   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640AE1   E8DE81DDFF             call    00418CC4
00640AE6   8D8D8CFAFFFF           lea     ecx, [ebp+$FFFFFA8C]

* Possible String Reference to: 'CodMoeda'
|
00640AEC   BA38216400             mov     edx, $00642138
00640AF1   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640AF6   E8816B1700             call    007B767C
00640AFB   8D9574FAFFFF           lea     edx, [ebp+$FFFFFA74]
00640B01   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640B06   8B00                   mov     eax, [eax]
00640B08   8B80C0010000           mov     eax, [eax+$01C0]
00640B0E   8B08                   mov     ecx, [eax]
00640B10   FF5160                 call    dword ptr [ecx+$60]
00640B13   8B8574FAFFFF           mov     eax, [ebp+$FFFFFA74]
00640B19   8D9578FAFFFF           lea     edx, [ebp+$FFFFFA78]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
00640B1F   E8602D1600             call    007A3884
00640B24   8B8578FAFFFF           mov     eax, [ebp+$FFFFFA78]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
00640B2A   E8BDCADCFF             call    0040D5EC
00640B2F   83C4F8                 add     esp, -$08
00640B32   DD1C24                 fstp    qword ptr [esp]
00640B35   9B                     wait
00640B36   B802000000             mov     eax, $00000002

|
00640B3B   E8C4071600             call    007A1304
00640B40   8D857CFAFFFF           lea     eax, [ebp+$FFFFFA7C]

* Reference to: Variants.@VarFromReal;
|
00640B46   E83D81DDFF             call    00418C88
00640B4B   8D8D7CFAFFFF           lea     ecx, [ebp+$FFFFFA7C]

* Possible String Reference to: 'VlrDupl'
|
00640B51   BA2C256400             mov     edx, $0064252C
00640B56   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640B5B   E81C6B1700             call    007B767C
00640B60   8D8564FAFFFF           lea     eax, [ebp+$FFFFFA64]
00640B66   8B1540A37D00           mov     edx, [$007DA340]
00640B6C   8A12                   mov     dl, byte ptr [edx]

* Reference to: Variants.@VarFromBool(TVarData;TVarData;Boolean);
|
00640B6E   E8ED80DDFF             call    00418C60
00640B73   8D8D64FAFFFF           lea     ecx, [ebp+$FFFFFA64]

* Possible String Reference to: 'Contabiliza'
|
00640B79   BA24216400             mov     edx, $00642124
00640B7E   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640B83   E8F46A1700             call    007B767C
00640B88   8D8554FAFFFF           lea     eax, [ebp+$FFFFFA54]
00640B8E   8B15D4A27D00           mov     edx, [$007DA2D4]
00640B94   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640B96   E82981DDFF             call    00418CC4
00640B9B   8D8D54FAFFFF           lea     ecx, [ebp+$FFFFFA54]

* Possible String Reference to: 'CodPdv'
|
00640BA1   BA3C256400             mov     edx, $0064253C
00640BA6   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640BAB   E8CC6A1700             call    007B767C
00640BB0   A180AC7D00             mov     eax, dword ptr [$007DAC80]
00640BB5   FF7004                 push    dword ptr [eax+$04]
00640BB8   FF30                   push    dword ptr [eax]
00640BBA   8D8540FAFFFF           lea     eax, [ebp+$FFFFFA40]

* Reference to : TFrmInfoAtu._PROC_007A6208()
|
00640BC0   E843561600             call    007A6208
00640BC5   8B9540FAFFFF           mov     edx, [ebp+$FFFFFA40]
00640BCB   8D8544FAFFFF           lea     eax, [ebp+$FFFFFA44]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640BD1   E8EE80DDFF             call    00418CC4
00640BD6   8D8D44FAFFFF           lea     ecx, [ebp+$FFFFFA44]

* Possible String Reference to: 'DtCaixa'
|
00640BDC   BA60216400             mov     edx, $00642160
00640BE1   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640BE6   E8916A1700             call    007B767C
00640BEB   8D952CFAFFFF           lea     edx, [ebp+$FFFFFA2C]
00640BF1   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00640BF6   8B00                   mov     eax, [eax]
00640BF8   8B80040B0000           mov     eax, [eax+$0B04]
00640BFE   8B08                   mov     ecx, [eax]
00640C00   FF5160                 call    dword ptr [ecx+$60]
00640C03   8B952CFAFFFF           mov     edx, [ebp+$FFFFFA2C]
00640C09   8D8530FAFFFF           lea     eax, [ebp+$FFFFFA30]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640C0F   E8B080DDFF             call    00418CC4
00640C14   8D8D30FAFFFF           lea     ecx, [ebp+$FFFFFA30]

* Possible String Reference to: 'CodBanco'
|
00640C1A   BAD0216400             mov     edx, $006421D0
00640C1F   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640C24   E8536A1700             call    007B767C
00640C29   8D8D28FAFFFF           lea     ecx, [ebp+$FFFFFA28]

* Possible String Reference to: 'CodBanco'
|
00640C2F   BAD0216400             mov     edx, $006421D0
00640C34   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640C39   E8FA701700             call    007B7D38
00640C3E   83BD28FAFFFF00         cmp     dword ptr [ebp+$FFFFFA28], +$00
00640C45   0F85AC000000           jnz     00640CF7
00640C4B   8D9514FAFFFF           lea     edx, [ebp+$FFFFFA14]
00640C51   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00640C56   8B00                   mov     eax, [eax]
00640C58   8B80B4040000           mov     eax, [eax+$04B4]
00640C5E   8B08                   mov     ecx, [eax]
00640C60   FF5160                 call    dword ptr [ecx+$60]
00640C63   8B9514FAFFFF           mov     edx, [ebp+$FFFFFA14]
00640C69   8D8518FAFFFF           lea     eax, [ebp+$FFFFFA18]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640C6F   E85080DDFF             call    00418CC4
00640C74   8D8D18FAFFFF           lea     ecx, [ebp+$FFFFFA18]

* Possible String Reference to: 'CodBanco'
|
00640C7A   BAD0216400             mov     edx, $006421D0
00640C7F   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640C84   E8F3691700             call    007B767C
00640C89   8D8D10FAFFFF           lea     ecx, [ebp+$FFFFFA10]

* Possible String Reference to: 'CodBanco'
|
00640C8F   BAD0216400             mov     edx, $006421D0
00640C94   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640C99   E89A701700             call    007B7D38
00640C9E   83BD10FAFFFF00         cmp     dword ptr [ebp+$FFFFFA10], +$00
00640CA5   7550                   jnz     00640CF7
00640CA7   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00640CAC   8B00                   mov     eax, [eax]
00640CAE   8B8030020000           mov     eax, [eax+$0230]

* Reference to: DB.TDataSet.First(TDataSet);
|
00640CB4   E873A3EAFF             call    004EB02C
00640CB9   8D95FCF9FFFF           lea     edx, [ebp+$FFFFF9FC]
00640CBF   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00640CC4   8B00                   mov     eax, [eax]
00640CC6   8B8034020000           mov     eax, [eax+$0234]
00640CCC   8B08                   mov     ecx, [eax]
00640CCE   FF5160                 call    dword ptr [ecx+$60]
00640CD1   8B95FCF9FFFF           mov     edx, [ebp+$FFFFF9FC]
00640CD7   8D8500FAFFFF           lea     eax, [ebp+$FFFFFA00]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640CDD   E8E27FDDFF             call    00418CC4
00640CE2   8D8D00FAFFFF           lea     ecx, [ebp+$FFFFFA00]

* Possible String Reference to: 'CodBanco'
|
00640CE8   BAD0216400             mov     edx, $006421D0
00640CED   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640CF2   E885691700             call    007B767C
00640CF7   B043                   mov     al, $43
00640CF9   888595FEFFFF           mov     [ebp+$FFFFFE95], al
00640CFF   C68594FEFFFF01         mov     byte ptr [ebp+$FFFFFE94], $01
00640D06   8D85ECF9FFFF           lea     eax, [ebp+$FFFFF9EC]
00640D0C   8D9594FEFFFF           lea     edx, [ebp+$FFFFFE94]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
00640D12   E8D97FDDFF             call    00418CF0
00640D17   8D8DECF9FFFF           lea     ecx, [ebp+$FFFFF9EC]

* Possible String Reference to: 'ClieFunc'
|
00640D1D   BA4C256400             mov     edx, $0064254C
00640D22   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640D27   E850691700             call    007B767C
00640D2C   8D95E8F9FFFF           lea     edx, [ebp+$FFFFF9E8]
00640D32   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640D37   8B00                   mov     eax, [eax]
00640D39   8B8064010000           mov     eax, [eax+$0164]
00640D3F   8B08                   mov     ecx, [eax]
00640D41   FF5160                 call    dword ptr [ecx+$60]
00640D44   83BDE8F9FFFF00         cmp     dword ptr [ebp+$FFFFF9E8], +$00
00640D4B   744F                   jz      00640D9C
00640D4D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640D52   8B00                   mov     eax, [eax]
00640D54   8B8064010000           mov     eax, [eax+$0164]
00640D5A   8B10                   mov     edx, [eax]
00640D5C   FF5250                 call    dword ptr [edx+$50]
00640D5F   83C4F8                 add     esp, -$08
00640D62   DD1C24                 fstp    qword ptr [esp]
00640D65   9B                     wait
00640D66   8D95D4F9FFFF           lea     edx, [ebp+$FFFFF9D4]

* Possible String Reference to: 'mm/dd/yyyy'
|
00640D6C   B8C0206400             mov     eax, $006420C0

|
00640D71   E862DBDCFF             call    0040E8D8
00640D76   8B95D4F9FFFF           mov     edx, [ebp+$FFFFF9D4]
00640D7C   8D85D8F9FFFF           lea     eax, [ebp+$FFFFF9D8]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640D82   E83D7FDDFF             call    00418CC4
00640D87   8D8DD8F9FFFF           lea     ecx, [ebp+$FFFFF9D8]

* Possible String Reference to: 'DtVencto'
|
00640D8D   BA60256400             mov     edx, $00642560
00640D92   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640D97   E8E0681700             call    007B767C
00640D9C   8D8DD0F9FFFF           lea     ecx, [ebp+$FFFFF9D0]

* Possible String Reference to: 'DtVencto'
|
00640DA2   BA60256400             mov     edx, $00642560
00640DA7   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640DAC   E8876F1700             call    007B7D38
00640DB1   83BDD0F9FFFF00         cmp     dword ptr [ebp+$FFFFF9D0], +$00
00640DB8   744E                   jz      00640E08
00640DBA   8D8DCCF9FFFF           lea     ecx, [ebp+$FFFFF9CC]

* Possible String Reference to: 'DtVencto'
|
00640DC0   BA60256400             mov     edx, $00642560
00640DC5   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640DCA   E8696F1700             call    007B7D38
00640DCF   8B85CCF9FFFF           mov     eax, [ebp+$FFFFF9CC]

* Possible String Reference to: '00/00/0000'
|
00640DD5   BA74256400             mov     edx, $00642574

* Reference to: System.@LStrCmp;
|
00640DDA   E8C94ADCFF             call    004058A8
00640DDF   7427                   jz      00640E08
00640DE1   8D8DC8F9FFFF           lea     ecx, [ebp+$FFFFF9C8]

* Possible String Reference to: 'DtVencto'
|
00640DE7   BA60256400             mov     edx, $00642560
00640DEC   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00640DF1   E8426F1700             call    007B7D38
00640DF6   8B85C8F9FFFF           mov     eax, [ebp+$FFFFF9C8]

* Possible String Reference to: '00/00/00'
|
00640DFC   BA88256400             mov     edx, $00642588

* Reference to: System.@LStrCmp;
|
00640E01   E8A24ADCFF             call    004058A8
00640E06   7540                   jnz     00640E48
00640E08   A150AD7D00             mov     eax, dword ptr [$007DAD50]
00640E0D   FF7004                 push    dword ptr [eax+$04]
00640E10   FF30                   push    dword ptr [eax]
00640E12   8D95B4F9FFFF           lea     edx, [ebp+$FFFFF9B4]

* Possible String Reference to: 'mm/dd/yyyy'
|
00640E18   B8C0206400             mov     eax, $006420C0

|
00640E1D   E8B6DADCFF             call    0040E8D8
00640E22   8B95B4F9FFFF           mov     edx, [ebp+$FFFFF9B4]
00640E28   8D85B8F9FFFF           lea     eax, [ebp+$FFFFF9B8]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640E2E   E8917EDDFF             call    00418CC4
00640E33   8D8DB8F9FFFF           lea     ecx, [ebp+$FFFFF9B8]

* Possible String Reference to: 'DtVencto'
|
00640E39   BA60256400             mov     edx, $00642560
00640E3E   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640E43   E834681700             call    007B767C
00640E48   8D95B0F9FFFF           lea     edx, [ebp+$FFFFF9B0]
00640E4E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640E53   8B00                   mov     eax, [eax]
00640E55   8B80FC000000           mov     eax, [eax+$00FC]
00640E5B   8B08                   mov     ecx, [eax]
00640E5D   FF5160                 call    dword ptr [ecx+$60]
00640E60   8B85B0F9FFFF           mov     eax, [ebp+$FFFFF9B0]
00640E66   BA9C256400             mov     edx, $0064259C

* Reference to: System.@LStrCmp;
|
00640E6B   E8384ADCFF             call    004058A8
00640E70   7540                   jnz     00640EB2
00640E72   A150AD7D00             mov     eax, dword ptr [$007DAD50]
00640E77   FF7004                 push    dword ptr [eax+$04]
00640E7A   FF30                   push    dword ptr [eax]
00640E7C   8D959CF9FFFF           lea     edx, [ebp+$FFFFF99C]

* Possible String Reference to: 'mm/dd/yyyy'
|
00640E82   B8C0206400             mov     eax, $006420C0

|
00640E87   E84CDADCFF             call    0040E8D8
00640E8C   8B959CF9FFFF           mov     edx, [ebp+$FFFFF99C]
00640E92   8D85A0F9FFFF           lea     eax, [ebp+$FFFFF9A0]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640E98   E8277EDDFF             call    00418CC4
00640E9D   8D8DA0F9FFFF           lea     ecx, [ebp+$FFFFF9A0]

* Possible String Reference to: 'DtPagto'
|
00640EA3   BAA8256400             mov     edx, $006425A8
00640EA8   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00640EAD   E8CA671700             call    007B767C
00640EB2   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00640EB7   E8208F1700             call    007B9DDC
00640EBC   8D8D8CF9FFFF           lea     ecx, [ebp+$FFFFF98C]

* Possible String Reference to: 'DtPagto'
|
00640EC2   BAA8256400             mov     edx, $006425A8
00640EC7   A160DD7D00             mov     eax, dword ptr [$007DDD60]

|
00640ECC   E86F6F1700             call    007B7E40
00640ED1   8D858CF9FFFF           lea     eax, [ebp+$FFFFF98C]
00640ED7   50                     push    eax
00640ED8   8D857CF9FFFF           lea     eax, [ebp+$FFFFF97C]

* Reference to: ActiveX.PROPSETHDR_OSVER_KIND(DWORD):Word;
|
00640EDE   E8B9C1DDFF             call    0041D09C
00640EE3   8D957CF9FFFF           lea     edx, [ebp+$FFFFF97C]
00640EE9   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
00640EEA   E825C2DDFF             call    0041D114
00640EEF   8D9578F9FFFF           lea     edx, [ebp+$FFFFF978]
00640EF5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640EFA   8B00                   mov     eax, [eax]
00640EFC   8B80FC000000           mov     eax, [eax+$00FC]
00640F02   8B08                   mov     ecx, [eax]
00640F04   FF5160                 call    dword ptr [ecx+$60]
00640F07   8B8578F9FFFF           mov     eax, [ebp+$FFFFF978]
00640F0D   BA9C256400             mov     edx, $0064259C

* Reference to: System.@LStrCmp;
|
00640F12   E89149DCFF             call    004058A8
00640F17   750E                   jnz     00640F27
00640F19   A160DD7D00             mov     eax, dword ptr [$007DDD60]

|
00640F1E   E835901700             call    007B9F58
00640F23   C645C701               mov     byte ptr [ebp-$39], $01
00640F27   A164DD7D00             mov     eax, dword ptr [$007DDD64]

|
00640F2C   E843631700             call    007B7274
00640F31   8D8568F9FFFF           lea     eax, [ebp+$FFFFF968]
00640F37   BA01000000             mov     edx, $00000001
00640F3C   B101                   mov     cl, $01

|
00640F3E   E82D7BDDFF             call    00418A70
00640F43   8D8D68F9FFFF           lea     ecx, [ebp+$FFFFF968]

* Possible String Reference to: 'Item'
|
00640F49   BA3C236400             mov     edx, $0064233C
00640F4E   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
00640F53   E824671700             call    007B767C
00640F58   8D9554F9FFFF           lea     edx, [ebp+$FFFFF954]
00640F5E   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640F63   8B00                   mov     eax, [eax]
00640F65   8B80FC000000           mov     eax, [eax+$00FC]
00640F6B   8B08                   mov     ecx, [eax]
00640F6D   FF5160                 call    dword ptr [ecx+$60]
00640F70   8B9554F9FFFF           mov     edx, [ebp+$FFFFF954]
00640F76   8D8558F9FFFF           lea     eax, [ebp+$FFFFF958]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640F7C   E8437DDDFF             call    00418CC4
00640F81   8D8D58F9FFFF           lea     ecx, [ebp+$FFFFF958]

* Possible String Reference to: 'TipoPgto'
|
00640F87   BAB8256400             mov     edx, $006425B8
00640F8C   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
00640F91   E8E6661700             call    007B767C
00640F96   8D9540F9FFFF           lea     edx, [ebp+$FFFFF940]
00640F9C   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640FA1   8B00                   mov     eax, [eax]
00640FA3   8B8000010000           mov     eax, [eax+$0100]
00640FA9   8B08                   mov     ecx, [eax]
00640FAB   FF5160                 call    dword ptr [ecx+$60]
00640FAE   8B9540F9FFFF           mov     edx, [ebp+$FFFFF940]
00640FB4   8D8544F9FFFF           lea     eax, [ebp+$FFFFF944]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640FBA   E8057DDDFF             call    00418CC4
00640FBF   8D8D44F9FFFF           lea     ecx, [ebp+$FFFFF944]

* Possible String Reference to: 'NumBanco'
|
00640FC5   BACC256400             mov     edx, $006425CC
00640FCA   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
00640FCF   E8A8661700             call    007B767C
00640FD4   8D952CF9FFFF           lea     edx, [ebp+$FFFFF92C]
00640FDA   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00640FDF   8B00                   mov     eax, [eax]
00640FE1   8B8004010000           mov     eax, [eax+$0104]
00640FE7   8B08                   mov     ecx, [eax]
00640FE9   FF5160                 call    dword ptr [ecx+$60]
00640FEC   8B952CF9FFFF           mov     edx, [ebp+$FFFFF92C]
00640FF2   8D8530F9FFFF           lea     eax, [ebp+$FFFFF930]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00640FF8   E8C77CDDFF             call    00418CC4
00640FFD   8D8D30F9FFFF           lea     ecx, [ebp+$FFFFF930]

* Possible String Reference to: 'NumAgencia'
|
00641003   BAE0256400             mov     edx, $006425E0
00641008   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
0064100D   E86A661700             call    007B767C
00641012   8D9518F9FFFF           lea     edx, [ebp+$FFFFF918]
00641018   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064101D   8B00                   mov     eax, [eax]
0064101F   8B8008010000           mov     eax, [eax+$0108]
00641025   8B08                   mov     ecx, [eax]
00641027   FF5160                 call    dword ptr [ecx+$60]
0064102A   8B9518F9FFFF           mov     edx, [ebp+$FFFFF918]
00641030   8D851CF9FFFF           lea     eax, [ebp+$FFFFF91C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00641036   E8897CDDFF             call    00418CC4
0064103B   8D8D1CF9FFFF           lea     ecx, [ebp+$FFFFF91C]

* Possible String Reference to: 'NumCheque'
|
00641041   BAF4256400             mov     edx, $006425F4
00641046   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
0064104B   E82C661700             call    007B767C
00641050   8D9504F9FFFF           lea     edx, [ebp+$FFFFF904]
00641056   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064105B   8B00                   mov     eax, [eax]
0064105D   8B8010010000           mov     eax, [eax+$0110]
00641063   8B08                   mov     ecx, [eax]
00641065   FF5160                 call    dword ptr [ecx+$60]
00641068   8B9504F9FFFF           mov     edx, [ebp+$FFFFF904]
0064106E   8D8508F9FFFF           lea     eax, [ebp+$FFFFF908]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00641074   E84B7CDDFF             call    00418CC4
00641079   8D8D08F9FFFF           lea     ecx, [ebp+$FFFFF908]

* Possible String Reference to: 'Emitente'
|
0064107F   BA08266400             mov     edx, $00642608
00641084   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
00641089   E8EE651700             call    007B767C
0064108E   8D95F0F8FFFF           lea     edx, [ebp+$FFFFF8F0]
00641094   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00641099   8B00                   mov     eax, [eax]
0064109B   8B800C010000           mov     eax, [eax+$010C]
006410A1   8B08                   mov     ecx, [eax]
006410A3   FF5160                 call    dword ptr [ecx+$60]
006410A6   8B95F0F8FFFF           mov     edx, [ebp+$FFFFF8F0]
006410AC   8D85F4F8FFFF           lea     eax, [ebp+$FFFFF8F4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006410B2   E80D7CDDFF             call    00418CC4
006410B7   8D8DF4F8FFFF           lea     ecx, [ebp+$FFFFF8F4]

* Possible String Reference to: 'ContaCorr'
|
006410BD   BA1C266400             mov     edx, $0064261C
006410C2   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
006410C7   E8B0651700             call    007B767C
006410CC   8D95ECF8FFFF           lea     edx, [ebp+$FFFFF8EC]
006410D2   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006410D7   8B00                   mov     eax, [eax]
006410D9   8B8064010000           mov     eax, [eax+$0164]
006410DF   8B08                   mov     ecx, [eax]
006410E1   FF5160                 call    dword ptr [ecx+$60]
006410E4   83BDECF8FFFF00         cmp     dword ptr [ebp+$FFFFF8EC], +$00
006410EB   744F                   jz      0064113C
006410ED   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006410F2   8B00                   mov     eax, [eax]
006410F4   8B8064010000           mov     eax, [eax+$0164]
006410FA   8B10                   mov     edx, [eax]
006410FC   FF5250                 call    dword ptr [edx+$50]
006410FF   83C4F8                 add     esp, -$08
00641102   DD1C24                 fstp    qword ptr [esp]
00641105   9B                     wait
00641106   8D95D8F8FFFF           lea     edx, [ebp+$FFFFF8D8]

* Possible String Reference to: 'mm/dd/yyyy'
|
0064110C   B8C0206400             mov     eax, $006420C0

|
00641111   E8C2D7DCFF             call    0040E8D8
00641116   8B95D8F8FFFF           mov     edx, [ebp+$FFFFF8D8]
0064111C   8D85DCF8FFFF           lea     eax, [ebp+$FFFFF8DC]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00641122   E89D7BDDFF             call    00418CC4
00641127   8D8DDCF8FFFF           lea     ecx, [ebp+$FFFFF8DC]

* Possible String Reference to: 'DtVencto'
|
0064112D   BA60256400             mov     edx, $00642560
00641132   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
00641137   E840651700             call    007B767C
0064113C   8D8DD4F8FFFF           lea     ecx, [ebp+$FFFFF8D4]

* Possible String Reference to: 'DtVencto'
|
00641142   BA60256400             mov     edx, $00642560
00641147   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064114C   E8E76B1700             call    007B7D38
00641151   83BDD4F8FFFF00         cmp     dword ptr [ebp+$FFFFF8D4], +$00
00641158   744E                   jz      006411A8
0064115A   8D8DD0F8FFFF           lea     ecx, [ebp+$FFFFF8D0]

* Possible String Reference to: 'DtVencto'
|
00641160   BA60256400             mov     edx, $00642560
00641165   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064116A   E8C96B1700             call    007B7D38
0064116F   8B85D0F8FFFF           mov     eax, [ebp+$FFFFF8D0]

* Possible String Reference to: '00/00/0000'
|
00641175   BA74256400             mov     edx, $00642574

* Reference to: System.@LStrCmp;
|
0064117A   E82947DCFF             call    004058A8
0064117F   7427                   jz      006411A8
00641181   8D8DCCF8FFFF           lea     ecx, [ebp+$FFFFF8CC]

* Possible String Reference to: 'DtVencto'
|
00641187   BA60256400             mov     edx, $00642560
0064118C   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00641191   E8A26B1700             call    007B7D38
00641196   8B85CCF8FFFF           mov     eax, [ebp+$FFFFF8CC]

* Possible String Reference to: '00/00/00'
|
0064119C   BA88256400             mov     edx, $00642588

* Reference to: System.@LStrCmp;
|
006411A1   E80247DCFF             call    004058A8
006411A6   7540                   jnz     006411E8
006411A8   A150AD7D00             mov     eax, dword ptr [$007DAD50]
006411AD   FF7004                 push    dword ptr [eax+$04]
006411B0   FF30                   push    dword ptr [eax]
006411B2   8D95B8F8FFFF           lea     edx, [ebp+$FFFFF8B8]

* Possible String Reference to: 'mm/dd/yyyy'
|
006411B8   B8C0206400             mov     eax, $006420C0

|
006411BD   E816D7DCFF             call    0040E8D8
006411C2   8B95B8F8FFFF           mov     edx, [ebp+$FFFFF8B8]
006411C8   8D85BCF8FFFF           lea     eax, [ebp+$FFFFF8BC]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006411CE   E8F17ADDFF             call    00418CC4
006411D3   8D8DBCF8FFFF           lea     ecx, [ebp+$FFFFF8BC]

* Possible String Reference to: 'DtVencto'
|
006411D9   BA60256400             mov     edx, $00642560
006411DE   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
006411E3   E894641700             call    007B767C
006411E8   8D95B4F8FFFF           lea     edx, [ebp+$FFFFF8B4]
006411EE   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006411F3   8B00                   mov     eax, [eax]
006411F5   8B80FC000000           mov     eax, [eax+$00FC]
006411FB   8B08                   mov     ecx, [eax]
006411FD   FF5160                 call    dword ptr [ecx+$60]
00641200   8B85B4F8FFFF           mov     eax, [ebp+$FFFFF8B4]
00641206   BA9C256400             mov     edx, $0064259C

* Reference to: System.@LStrCmp;
|
0064120B   E89846DCFF             call    004058A8
00641210   7540                   jnz     00641252
00641212   A150AD7D00             mov     eax, dword ptr [$007DAD50]
00641217   FF7004                 push    dword ptr [eax+$04]
0064121A   FF30                   push    dword ptr [eax]
0064121C   8D95A0F8FFFF           lea     edx, [ebp+$FFFFF8A0]

* Possible String Reference to: 'mm/dd/yyyy'
|
00641222   B8C0206400             mov     eax, $006420C0

|
00641227   E8ACD6DCFF             call    0040E8D8
0064122C   8B95A0F8FFFF           mov     edx, [ebp+$FFFFF8A0]
00641232   8D85A4F8FFFF           lea     eax, [ebp+$FFFFF8A4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00641238   E8877ADDFF             call    00418CC4
0064123D   8D8DA4F8FFFF           lea     ecx, [ebp+$FFFFF8A4]

* Possible String Reference to: 'DtPagto'
|
00641243   BAA8256400             mov     edx, $006425A8
00641248   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
0064124D   E82A641700             call    007B767C
00641252   8D9594F8FFFF           lea     edx, [ebp+$FFFFF894]
00641258   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064125D   8B00                   mov     eax, [eax]
0064125F   8B8014010000           mov     eax, [eax+$0114]
00641265   8B08                   mov     ecx, [eax]
00641267   FF5160                 call    dword ptr [ecx+$60]
0064126A   8B8594F8FFFF           mov     eax, [ebp+$FFFFF894]
00641270   8D9598F8FFFF           lea     edx, [ebp+$FFFFF898]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00641276   E8A5281600             call    007A3B20
0064127B   8B8D98F8FFFF           mov     ecx, [ebp+$FFFFF898]
00641281   8D859CF8FFFF           lea     eax, [ebp+$FFFFF89C]

* Possible String Reference to: 'CODCARD = '
|
00641287   BA30266400             mov     edx, $00642630

* Reference to: System.@LStrCat3;
|
0064128C   E81745DCFF             call    004057A8
00641291   8B859CF8FFFF           mov     eax, [ebp+$FFFFF89C]
00641297   50                     push    eax
00641298   6A01                   push    $01
0064129A   B944266400             mov     ecx, $00642644

* Possible String Reference to: 'CARTOES'
|
0064129F   BA50266400             mov     edx, $00642650
006412A4   33C0                   xor     eax, eax

|
006412A6   E8457C1600             call    007A8EF0
006412AB   84C0                   test    al, al
006412AD   7440                   jz      006412EF
006412AF   8D9580F8FFFF           lea     edx, [ebp+$FFFFF880]
006412B5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006412BA   8B00                   mov     eax, [eax]
006412BC   8B8014010000           mov     eax, [eax+$0114]
006412C2   8B08                   mov     ecx, [eax]
006412C4   FF5160                 call    dword ptr [ecx+$60]
006412C7   8B9580F8FFFF           mov     edx, [ebp+$FFFFF880]
006412CD   8D8584F8FFFF           lea     eax, [ebp+$FFFFF884]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006412D3   E8EC79DDFF             call    00418CC4
006412D8   8D8D84F8FFFF           lea     ecx, [ebp+$FFFFF884]

* Possible String Reference to: 'CodCard'
|
006412DE   BA60266400             mov     edx, $00642660
006412E3   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
006412E8   E88F631700             call    007B767C
006412ED   EB4F                   jmp     0064133E
006412EF   8D9568F8FFFF           lea     edx, [ebp+$FFFFF868]
006412F5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006412FA   8B00                   mov     eax, [eax]
006412FC   8B8014010000           mov     eax, [eax+$0114]
00641302   8B08                   mov     ecx, [eax]
00641304   FF5160                 call    dword ptr [ecx+$60]
00641307   8B8568F8FFFF           mov     eax, [ebp+$FFFFF868]
0064130D   8D956CF8FFFF           lea     edx, [ebp+$FFFFF86C]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
00641313   E85093DCFF             call    0040A668
00641318   8B956CF8FFFF           mov     edx, [ebp+$FFFFF86C]
0064131E   8D8570F8FFFF           lea     eax, [ebp+$FFFFF870]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00641324   E89B79DDFF             call    00418CC4
00641329   8D8D70F8FFFF           lea     ecx, [ebp+$FFFFF870]

* Possible String Reference to: 'CodCard'
|
0064132F   BA60266400             mov     edx, $00642660
00641334   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
00641339   E83E631700             call    007B767C
0064133E   8D9554F8FFFF           lea     edx, [ebp+$FFFFF854]
00641344   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00641349   8B00                   mov     eax, [eax]
0064134B   8B8018010000           mov     eax, [eax+$0118]
00641351   8B08                   mov     ecx, [eax]
00641353   FF5160                 call    dword ptr [ecx+$60]
00641356   8B9554F8FFFF           mov     edx, [ebp+$FFFFF854]
0064135C   8D8558F8FFFF           lea     eax, [ebp+$FFFFF858]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00641362   E85D79DDFF             call    00418CC4
00641367   8D8D58F8FFFF           lea     ecx, [ebp+$FFFFF858]

* Possible String Reference to: 'SenhaAutoriza'
|
0064136D   BA70266400             mov     edx, $00642670
00641372   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
00641377   E800631700             call    007B767C
0064137C   8D953CF8FFFF           lea     edx, [ebp+$FFFFF83C]
00641382   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00641387   8B00                   mov     eax, [eax]
00641389   8B80C0010000           mov     eax, [eax+$01C0]
0064138F   8B08                   mov     ecx, [eax]
00641391   FF5160                 call    dword ptr [ecx+$60]
00641394   8B853CF8FFFF           mov     eax, [ebp+$FFFFF83C]
0064139A   8D9540F8FFFF           lea     edx, [ebp+$FFFFF840]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006413A0   E8DF241600             call    007A3884
006413A5   8B8540F8FFFF           mov     eax, [ebp+$FFFFF840]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006413AB   E83CC2DCFF             call    0040D5EC
006413B0   83C4F8                 add     esp, -$08
006413B3   DD1C24                 fstp    qword ptr [esp]
006413B6   9B                     wait
006413B7   B802000000             mov     eax, $00000002

|
006413BC   E843FF1500             call    007A1304
006413C1   8D8544F8FFFF           lea     eax, [ebp+$FFFFF844]

* Reference to: Variants.@VarFromReal;
|
006413C7   E8BC78DDFF             call    00418C88
006413CC   8D8D44F8FFFF           lea     ecx, [ebp+$FFFFF844]

* Possible String Reference to: 'Valor'
|
006413D2   BA88266400             mov     edx, $00642688
006413D7   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
006413DC   E89B621700             call    007B767C
006413E1   8D852CF8FFFF           lea     eax, [ebp+$FFFFF82C]
006413E7   8B15D4A27D00           mov     edx, [$007DA2D4]
006413ED   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006413EF   E8D078DDFF             call    00418CC4
006413F4   8D8D2CF8FFFF           lea     ecx, [ebp+$FFFFF82C]

* Possible String Reference to: 'CodPdv'
|
006413FA   BA3C256400             mov     edx, $0064253C
006413FF   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
00641404   E873621700             call    007B767C
00641409   A180AC7D00             mov     eax, dword ptr [$007DAC80]
0064140E   FF7004                 push    dword ptr [eax+$04]
00641411   FF30                   push    dword ptr [eax]
00641413   8D8518F8FFFF           lea     eax, [ebp+$FFFFF818]

* Reference to : TFrmInfoAtu._PROC_007A6208()
|
00641419   E8EA4D1600             call    007A6208
0064141E   8B9518F8FFFF           mov     edx, [ebp+$FFFFF818]
00641424   8D851CF8FFFF           lea     eax, [ebp+$FFFFF81C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064142A   E89578DDFF             call    00418CC4
0064142F   8D8D1CF8FFFF           lea     ecx, [ebp+$FFFFF81C]

* Possible String Reference to: 'DtCaixa'
|
00641435   BA60216400             mov     edx, $00642160
0064143A   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
0064143F   E838621700             call    007B767C
00641444   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00641449   E88E891700             call    007B9DDC
0064144E   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : TFrmF2SubLocal._PROC_00643E1C()
|
00641453   E8C4290000             call    00643E1C
00641458   83C4F8                 add     esp, -$08
0064145B   DD1C24                 fstp    qword ptr [esp]
0064145E   9B                     wait
0064145F   B802000000             mov     eax, $00000002

|
00641464   E89BFE1500             call    007A1304
00641469   DBBD70FFFFFF           fstp    tbyte ptr [ebp+$FFFFFF70]
0064146F   9B                     wait
00641470   A164DD7D00             mov     eax, dword ptr [$007DDD64]

|
00641475   E8A62C0000             call    00644120
0064147A   83C4F8                 add     esp, -$08
0064147D   DD1C24                 fstp    qword ptr [esp]
00641480   9B                     wait
00641481   B802000000             mov     eax, $00000002

|
00641486   E879FE1500             call    007A1304
0064148B   DBBD60FFFFFF           fstp    tbyte ptr [ebp+$FFFFFF60]
00641491   9B                     wait
00641492   DBAD70FFFFFF           fld     tbyte ptr [ebp+$FFFFFF70]
00641498   D81D84206400           fcomp   dword ptr [$00642084]
0064149E   DFE0                   fstsw   ax
006414A0   9E                     sahf
006414A1   7715                   jnbe    006414B8
006414A3   DBAD60FFFFFF           fld     tbyte ptr [ebp+$FFFFFF60]
006414A9   D81D84206400           fcomp   dword ptr [$00642084]
006414AF   DFE0                   fstsw   ax
006414B1   9E                     sahf
006414B2   0F862B030000           jbe     006417E3
006414B8   DBAD70FFFFFF           fld     tbyte ptr [ebp+$FFFFFF70]
006414BE   8D8508F8FFFF           lea     eax, [ebp+$FFFFF808]

* Reference to: Variants.@VarFromReal;
|
006414C4   E8BF77DDFF             call    00418C88
006414C9   8D8D08F8FFFF           lea     ecx, [ebp+$FFFFF808]

* Possible String Reference to: 'VlrDeduc'
|
006414CF   BA98266400             mov     edx, $00642698
006414D4   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
006414D9   E89E611700             call    007B767C
006414DE   DBAD60FFFFFF           fld     tbyte ptr [ebp+$FFFFFF60]
006414E4   8D85F8F7FFFF           lea     eax, [ebp+$FFFFF7F8]

* Reference to: Variants.@VarFromReal;
|
006414EA   E89977DDFF             call    00418C88
006414EF   8D8DF8F7FFFF           lea     ecx, [ebp+$FFFFF7F8]

* Possible String Reference to: 'VlrAcresc'
|
006414F5   BAC0246400             mov     edx, $006424C0
006414FA   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
006414FF   E878611700             call    007B767C
00641504   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00641509   E8CE881700             call    007B9DDC
0064150E   DBAD70FFFFFF           fld     tbyte ptr [ebp+$FFFFFF70]
00641514   8D85E8F7FFFF           lea     eax, [ebp+$FFFFF7E8]

* Reference to: Variants.@VarFromReal;
|
0064151A   E86977DDFF             call    00418C88
0064151F   8D8DE8F7FFFF           lea     ecx, [ebp+$FFFFF7E8]

* Possible String Reference to: 'VlrDeduc'
|
00641525   BA98266400             mov     edx, $00642698
0064152A   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
0064152F   E848611700             call    007B767C
00641534   DBAD60FFFFFF           fld     tbyte ptr [ebp+$FFFFFF60]
0064153A   8D85D8F7FFFF           lea     eax, [ebp+$FFFFF7D8]

* Reference to: Variants.@VarFromReal;
|
00641540   E84377DDFF             call    00418C88
00641545   8D8DD8F7FFFF           lea     ecx, [ebp+$FFFFF7D8]

* Possible String Reference to: 'VlrAcresc'
|
0064154B   BAC0246400             mov     edx, $006424C0
00641550   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
00641555   E822611700             call    007B767C
0064155A   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0064155F   E878881700             call    007B9DDC
00641564   E97A020000             jmp     006417E3
00641569   8D95D4F7FFFF           lea     edx, [ebp+$FFFFF7D4]
0064156F   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00641574   8B00                   mov     eax, [eax]
00641576   8B80D4000000           mov     eax, [eax+$00D4]
0064157C   8B08                   mov     ecx, [eax]
0064157E   FF5160                 call    dword ptr [ecx+$60]
00641581   8B85D4F7FFFF           mov     eax, [ebp+$FFFFF7D4]
00641587   BA30236400             mov     edx, $00642330

* Reference to: System.@LStrCmp;
|
0064158C   E81743DCFF             call    004058A8
00641591   7553                   jnz     006415E6
00641593   8D95CCF7FFFF           lea     edx, [ebp+$FFFFF7CC]
00641599   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064159E   8B00                   mov     eax, [eax]
006415A0   8B80C0010000           mov     eax, [eax+$01C0]
006415A6   8B08                   mov     ecx, [eax]
006415A8   FF5160                 call    dword ptr [ecx+$60]
006415AB   8B85CCF7FFFF           mov     eax, [ebp+$FFFFF7CC]
006415B1   8D95D0F7FFFF           lea     edx, [ebp+$FFFFF7D0]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006415B7   E8C8221600             call    007A3884
006415BC   8B85D0F7FFFF           mov     eax, [ebp+$FFFFF7D0]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006415C2   E825C0DCFF             call    0040D5EC
006415C7   83C4F8                 add     esp, -$08
006415CA   DD1C24                 fstp    qword ptr [esp]
006415CD   9B                     wait
006415CE   B802000000             mov     eax, $00000002

|
006415D3   E82CFD1500             call    007A1304
006415D8   DB6DE8                 fld     tbyte ptr [ebp-$18]
006415DB   DEC1                   faddp   st(1), st(0)
006415DD   DB7DE8                 fstp    tbyte ptr [ebp-$18]
006415E0   9B                     wait
006415E1   E9FD010000             jmp     006417E3
006415E6   8D95C8F7FFFF           lea     edx, [ebp+$FFFFF7C8]
006415EC   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006415F1   8B00                   mov     eax, [eax]
006415F3   8B80D4000000           mov     eax, [eax+$00D4]
006415F9   8B08                   mov     ecx, [eax]
006415FB   FF5160                 call    dword ptr [ecx+$60]
006415FE   8B85C8F7FFFF           mov     eax, [ebp+$FFFFF7C8]
00641604   BAAC266400             mov     edx, $006426AC

* Reference to: System.@LStrCmp;
|
00641609   E89A42DCFF             call    004058A8
0064160E   7553                   jnz     00641663
00641610   8D95C0F7FFFF           lea     edx, [ebp+$FFFFF7C0]
00641616   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064161B   8B00                   mov     eax, [eax]
0064161D   8B80C0010000           mov     eax, [eax+$01C0]
00641623   8B08                   mov     ecx, [eax]
00641625   FF5160                 call    dword ptr [ecx+$60]
00641628   8B85C0F7FFFF           mov     eax, [ebp+$FFFFF7C0]
0064162E   8D95C4F7FFFF           lea     edx, [ebp+$FFFFF7C4]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
00641634   E84B221600             call    007A3884
00641639   8B85C4F7FFFF           mov     eax, [ebp+$FFFFF7C4]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
0064163F   E8A8BFDCFF             call    0040D5EC
00641644   83C4F8                 add     esp, -$08
00641647   DD1C24                 fstp    qword ptr [esp]
0064164A   9B                     wait
0064164B   B802000000             mov     eax, $00000002

|
00641650   E8AFFC1500             call    007A1304
00641655   DB6DD8                 fld     tbyte ptr [ebp-$28]
00641658   DEC1                   faddp   st(1), st(0)
0064165A   DB7DD8                 fstp    tbyte ptr [ebp-$28]
0064165D   9B                     wait
0064165E   E980010000             jmp     006417E3
00641663   8D95BCF7FFFF           lea     edx, [ebp+$FFFFF7BC]
00641669   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064166E   8B00                   mov     eax, [eax]
00641670   8B80D4000000           mov     eax, [eax+$00D4]
00641676   8B08                   mov     ecx, [eax]
00641678   FF5160                 call    dword ptr [ecx+$60]
0064167B   8B85BCF7FFFF           mov     eax, [ebp+$FFFFF7BC]
00641681   BAB8266400             mov     edx, $006426B8

* Reference to: System.@LStrCmp;
|
00641686   E81D42DCFF             call    004058A8
0064168B   0F85F0000000           jnz     00641781
00641691   A154AE7D00             mov     eax, dword ptr [$007DAE54]
00641696   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00641698   E8C346E7FF             call    004B5D60
0064169D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006416A2   8B00                   mov     eax, [eax]
006416A4   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Prior(TDataSet);
|
006416AA   E8BD9CEAFF             call    004EB36C
006416AF   8D95B8F7FFFF           lea     edx, [ebp+$FFFFF7B8]
006416B5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006416BA   8B00                   mov     eax, [eax]
006416BC   8B8048010000           mov     eax, [eax+$0148]
006416C2   8B08                   mov     ecx, [eax]
006416C4   FF5160                 call    dword ptr [ecx+$60]
006416C7   8B85B8F7FFFF           mov     eax, [ebp+$FFFFF7B8]
006416CD   BA30236400             mov     edx, $00642330

* Reference to: System.@LStrCmp;
|
006416D2   E8D141DCFF             call    004058A8
006416D7   0F8490000000           jz      0064176D
006416DD   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006416E2   8B00                   mov     eax, [eax]
006416E4   8B80F4000000           mov     eax, [eax+$00F4]
006416EA   8B10                   mov     edx, [eax]
006416EC   FF5254                 call    dword ptr [edx+$54]
006416EF   DB7DB0                 fstp    tbyte ptr [ebp-$50]
006416F2   9B                     wait
006416F3   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006416F8   8B00                   mov     eax, [eax]
006416FA   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
00641700   E83F9CEAFF             call    004EB344
00641705   8D95A0F7FFFF           lea     edx, [ebp+$FFFFF7A0]
0064170B   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00641710   8B00                   mov     eax, [eax]
00641712   8B80C0010000           mov     eax, [eax+$01C0]
00641718   8B08                   mov     ecx, [eax]
0064171A   FF5160                 call    dword ptr [ecx+$60]
0064171D   8B85A0F7FFFF           mov     eax, [ebp+$FFFFF7A0]
00641723   8D95A4F7FFFF           lea     edx, [ebp+$FFFFF7A4]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
00641729   E856211600             call    007A3884
0064172E   8B85A4F7FFFF           mov     eax, [ebp+$FFFFF7A4]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
00641734   E8B3BEDCFF             call    0040D5EC
00641739   D80DBC266400           fmul    dword ptr [$006426BC]
0064173F   DB6DB0                 fld     tbyte ptr [ebp-$50]

* Reference to: System.@FSafeDivide;
|
00641742   E8B91DDCFF             call    00403500
00641747   8D85A8F7FFFF           lea     eax, [ebp+$FFFFF7A8]

* Reference to: Variants.@VarFromReal;
|
0064174D   E83675DDFF             call    00418C88
00641752   8D8DA8F7FFFF           lea     ecx, [ebp+$FFFFF7A8]

* Possible String Reference to: 'VlrDesc'
|
00641758   BA3C246400             mov     edx, $0064243C
0064175D   8B06                   mov     eax, [esi]

* Reference to : tArrayTable._PROC_007B767C()
|
0064175F   E8185F1700             call    007B767C
00641764   8B06                   mov     eax, [esi]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00641766   E871861700             call    007B9DDC
0064176B   EB76                   jmp     006417E3
0064176D   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00641772   8B00                   mov     eax, [eax]
00641774   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
0064177A   E8C59BEAFF             call    004EB344
0064177F   EB62                   jmp     006417E3
00641781   8D959CF7FFFF           lea     edx, [ebp+$FFFFF79C]
00641787   A17CB37D00             mov     eax, dword ptr [$007DB37C]
0064178C   8B00                   mov     eax, [eax]
0064178E   8B80D4000000           mov     eax, [eax+$00D4]
00641794   8B08                   mov     ecx, [eax]
00641796   FF5160                 call    dword ptr [ecx+$60]
00641799   8B859CF7FFFF           mov     eax, [ebp+$FFFFF79C]
0064179F   BAC8266400             mov     edx, $006426C8

* Reference to: System.@LStrCmp;
|
006417A4   E8FF40DCFF             call    004058A8
006417A9   7538                   jnz     006417E3
006417AB   8D9594F7FFFF           lea     edx, [ebp+$FFFFF794]
006417B1   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006417B6   8B00                   mov     eax, [eax]
006417B8   8B80C0010000           mov     eax, [eax+$01C0]
006417BE   8B08                   mov     ecx, [eax]
006417C0   FF5160                 call    dword ptr [ecx+$60]
006417C3   8B8594F7FFFF           mov     eax, [ebp+$FFFFF794]
006417C9   8D9598F7FFFF           lea     edx, [ebp+$FFFFF798]

* Reference to : TFrmInfoAtu._PROC_007A3884()
|
006417CF   E8B0201600             call    007A3884
006417D4   8B8598F7FFFF           mov     eax, [ebp+$FFFFF798]

* Reference to: SysUtils.StrToFloat(AnsiString):Extended;overload;
|
006417DA   E80DBEDCFF             call    0040D5EC
006417DF   DB7DC8                 fstp    tbyte ptr [ebp-$38]
006417E2   9B                     wait
006417E3   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006417E8   8B00                   mov     eax, [eax]
006417EA   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Next(TDataSet);
|
006417F0   E84F9BEAFF             call    004EB344
006417F5   A17CB37D00             mov     eax, dword ptr [$007DB37C]
006417FA   8B00                   mov     eax, [eax]
006417FC   8B80C0000000           mov     eax, [eax+$00C0]
00641802   80B8A100000000         cmp     byte ptr [eax+$00A1], $00
00641809   0F848BE9FFFF           jz      0064019A
0064180F   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00641814   8B00                   mov     eax, [eax]
00641816   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.EnableControls(TDataSet);
|
0064181C   E87B8DEAFF             call    004EA59C
00641821   DB6DC8                 fld     tbyte ptr [ebp-$38]
00641824   D81D84206400           fcomp   dword ptr [$00642084]
0064182A   DFE0                   fstsw   ax
0064182C   9E                     sahf
0064182D   0F8692000000           jbe     006418C5
00641833   807DC700               cmp     byte ptr [ebp-$39], $00
00641837   0F8488000000           jz      006418C5
0064183D   A160DD7D00             mov     eax, dword ptr [$007DDD60]

|
00641842   E819871700             call    007B9F60

* Possible String Reference to: 'VlrDupl'
|
00641847   BA2C256400             mov     edx, $0064252C
0064184C   A160DD7D00             mov     eax, dword ptr [$007DDD60]

|
00641851   E8D2621700             call    007B7B28
00641856   DB6DC8                 fld     tbyte ptr [ebp-$38]
00641859   DEE9                   fsubp   st(1), st(0)
0064185B   8D8584F7FFFF           lea     eax, [ebp+$FFFFF784]

* Reference to: Variants.@VarFromReal;
|
00641861   E82274DDFF             call    00418C88
00641866   8D8D84F7FFFF           lea     ecx, [ebp+$FFFFF784]

* Possible String Reference to: 'VlrDupl'
|
0064186C   BA2C256400             mov     edx, $0064252C
00641871   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
00641876   E8015E1700             call    007B767C
0064187B   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00641880   E857851700             call    007B9DDC

* Possible String Reference to: 'Valor'
|
00641885   BA88266400             mov     edx, $00642688
0064188A   A164DD7D00             mov     eax, dword ptr [$007DDD64]

|
0064188F   E894621700             call    007B7B28
00641894   DB6DC8                 fld     tbyte ptr [ebp-$38]
00641897   DEE9                   fsubp   st(1), st(0)
00641899   8D8574F7FFFF           lea     eax, [ebp+$FFFFF774]

* Reference to: Variants.@VarFromReal;
|
0064189F   E8E473DDFF             call    00418C88
006418A4   8D8D74F7FFFF           lea     ecx, [ebp+$FFFFF774]

* Possible String Reference to: 'Valor'
|
006418AA   BA88266400             mov     edx, $00642688
006418AF   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
006418B4   E8C35D1700             call    007B767C
006418B9   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006418BE   E819851700             call    007B9DDC
006418C3   EB68                   jmp     0064192D
006418C5   DB6DC8                 fld     tbyte ptr [ebp-$38]
006418C8   D81D84206400           fcomp   dword ptr [$00642084]
006418CE   DFE0                   fstsw   ax
006418D0   9E                     sahf
006418D1   765A                   jbe     0064192D
006418D3   DB6DC8                 fld     tbyte ptr [ebp-$38]
006418D6   8D8564F7FFFF           lea     eax, [ebp+$FFFFF764]

* Reference to: Variants.@VarFromReal;
|
006418DC   E8A773DDFF             call    00418C88
006418E1   8D8D64F7FFFF           lea     ecx, [ebp+$FFFFF764]

* Possible String Reference to: 'VlrDeduc'
|
006418E7   BA98266400             mov     edx, $00642698
006418EC   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to : tArrayTable._PROC_007B767C()
|
006418F1   E8865D1700             call    007B767C
006418F6   A160DD7D00             mov     eax, dword ptr [$007DDD60]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006418FB   E8DC841700             call    007B9DDC
00641900   DB6DC8                 fld     tbyte ptr [ebp-$38]
00641903   8D8554F7FFFF           lea     eax, [ebp+$FFFFF754]

* Reference to: Variants.@VarFromReal;
|
00641909   E87A73DDFF             call    00418C88
0064190E   8D8D54F7FFFF           lea     ecx, [ebp+$FFFFF754]

* Possible String Reference to: 'VlrDeduc'
|
00641914   BA98266400             mov     edx, $00642698
00641919   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to : tArrayTable._PROC_007B767C()
|
0064191E   E8595D1700             call    007B767C
00641923   A164DD7D00             mov     eax, dword ptr [$007DDD64]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00641928   E8AF841700             call    007B9DDC
0064192D   DB6DE8                 fld     tbyte ptr [ebp-$18]
00641930   D80DBC266400           fmul    dword ptr [$006426BC]
00641936   DB7DA0                 fstp    tbyte ptr [ebp-$60]
00641939   9B                     wait
0064193A   DB6DA0                 fld     tbyte ptr [ebp-$60]
0064193D   D81D84206400           fcomp   dword ptr [$00642084]
00641943   DFE0                   fstsw   ax
00641945   9E                     sahf
00641946   767E                   jbe     006419C6
00641948   A12CA27D00             mov     eax, dword ptr [$007DA22C]
0064194D   DB28                   fld     tbyte ptr [eax]
0064194F   DB6DE8                 fld     tbyte ptr [ebp-$18]
00641952   DEE9                   fsubp   st(1), st(0)
00641954   DB6DD8                 fld     tbyte ptr [ebp-$28]
00641957   DEE9                   fsubp   st(1), st(0)
00641959   DB7D90                 fstp    tbyte ptr [ebp-$70]
0064195C   9B                     wait
0064195D   DB6DA0                 fld     tbyte ptr [ebp-$60]
00641960   D80DCC266400           fmul    dword ptr [$006426CC]
00641966   DB6D90                 fld     tbyte ptr [ebp-$70]

* Reference to: System.@FSafeDivide;
|
00641969   E8921BDCFF             call    00403500
0064196E   DB7D80                 fstp    tbyte ptr [ebp-$80]
00641971   9B                     wait
00641972   8D8544F7FFFF           lea     eax, [ebp+$FFFFF744]
00641978   BA01000000             mov     edx, $00000001
0064197D   B101                   mov     cl, $01

|
0064197F   E8EC70DDFF             call    00418A70
00641984   8D8D44F7FFFF           lea     ecx, [ebp+$FFFFF744]

* Possible String Reference to: 'IncrDesc'
|
0064198A   BAD8266400             mov     edx, $006426D8
0064198F   A13CDD7D00             mov     eax, dword ptr [$007DDD3C]

* Reference to : tArrayTable._PROC_007B767C()
|
00641994   E8E35C1700             call    007B767C
00641999   DB6D80                 fld     tbyte ptr [ebp-$80]
0064199C   8D8534F7FFFF           lea     eax, [ebp+$FFFFF734]

* Reference to: Variants.@VarFromReal;
|
006419A2   E8E172DDFF             call    00418C88
006419A7   8D8D34F7FFFF           lea     ecx, [ebp+$FFFFF734]

* Possible String Reference to: 'PrcDesc'
|
006419AD   BAEC266400             mov     edx, $006426EC
006419B2   A13CDD7D00             mov     eax, dword ptr [$007DDD3C]

* Reference to : tArrayTable._PROC_007B767C()
|
006419B7   E8C05C1700             call    007B767C
006419BC   A13CDD7D00             mov     eax, dword ptr [$007DDD3C]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006419C1   E816841700             call    007B9DDC
006419C6   DB6DA0                 fld     tbyte ptr [ebp-$60]
006419C9   8D8524F7FFFF           lea     eax, [ebp+$FFFFF724]

* Reference to: Variants.@VarFromReal;
|
006419CF   E8B472DDFF             call    00418C88
006419D4   8D8D24F7FFFF           lea     ecx, [ebp+$FFFFF724]

* Possible String Reference to: 'VlrDesc'
|
006419DA   BA3C246400             mov     edx, $0064243C
006419DF   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
006419E1   E8965C1700             call    007B767C
006419E6   A150B67D00             mov     eax, dword ptr [$007DB650]
006419EB   DB28                   fld     tbyte ptr [eax]
006419ED   DB6DA0                 fld     tbyte ptr [ebp-$60]
006419F0   DEC1                   faddp   st(1), st(0)
006419F2   DB6DD8                 fld     tbyte ptr [ebp-$28]
006419F5   DEE9                   fsubp   st(1), st(0)
006419F7   8D8514F7FFFF           lea     eax, [ebp+$FFFFF714]

* Reference to: Variants.@VarFromReal;
|
006419FD   E88672DDFF             call    00418C88
00641A02   8D8D14F7FFFF           lea     ecx, [ebp+$FFFFF714]

* Possible String Reference to: 'VlrMerc'
|
00641A08   BAFC266400             mov     edx, $006426FC
00641A0D   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00641A0F   E8685C1700             call    007B767C
00641A14   A150B67D00             mov     eax, dword ptr [$007DB650]
00641A19   DB28                   fld     tbyte ptr [eax]
00641A1B   DB6DA0                 fld     tbyte ptr [ebp-$60]
00641A1E   DEC1                   faddp   st(1), st(0)
00641A20   DB6DD8                 fld     tbyte ptr [ebp-$28]
00641A23   DEE9                   fsubp   st(1), st(0)
00641A25   8D8504F7FFFF           lea     eax, [ebp+$FFFFF704]

* Reference to: Variants.@VarFromReal;
|
00641A2B   E85872DDFF             call    00418C88
00641A30   8D8D04F7FFFF           lea     ecx, [ebp+$FFFFF704]

* Possible String Reference to: 'BaseCalculo'
|
00641A36   BA0C276400             mov     edx, $0064270C
00641A3B   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00641A3D   E83A5C1700             call    007B767C
00641A42   DB6DD8                 fld     tbyte ptr [ebp-$28]
00641A45   8D85F4F6FFFF           lea     eax, [ebp+$FFFFF6F4]

* Reference to: Variants.@VarFromReal;
|
00641A4B   E83872DDFF             call    00418C88
00641A50   8D8DF4F6FFFF           lea     ecx, [ebp+$FFFFF6F4]

* Possible String Reference to: 'VlrAcresc'
|
00641A56   BAC0246400             mov     edx, $006424C0
00641A5B   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00641A5D   E81A5C1700             call    007B767C
00641A62   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00641A64   E873831700             call    007B9DDC
00641A69   A154AE7D00             mov     eax, dword ptr [$007DAE54]
00641A6E   8B00                   mov     eax, [eax]

* Reference to: ActnMenus.TCustomActionMenuBar.ProcessMessages(TCustomActionMenuBar);
|
00641A70   E8EB42E7FF             call    004B5D60
00641A75   33D2                   xor     edx, edx
00641A77   A018276400             mov     al, byte ptr [$00642718]

|
00641A7C   E817DCFFFF             call    0063F698
00641A81   8845F3                 mov     [ebp-$0D], al
00641A84   EB0A                   jmp     00641A90

* Possible String Reference to: 'Cliente não localizado!'
|
00641A86   B824276400             mov     eax, $00642724

* Reference to: Dialogs.ShowMessage(AnsiString);
|
00641A8B   E89421E0FF             call    00443C24
00641A90   33C0                   xor     eax, eax
00641A92   5A                     pop     edx
00641A93   59                     pop     ecx
00641A94   59                     pop     ecx
00641A95   648910                 mov     fs:[eax], edx
00641A98   EB1A                   jmp     00641AB4

* Reference to: System.@HandleOnException;
|
00641A9A   E91131DCFF             jmp     00404BB0
00641A9F   0100                   add     [eax], eax
00641AA1   0000                   add     [eax], al
00641AA3   40                     inc     eax
00641AA4   95                     xchg    eax, ebp
00641AA5   40                     inc     eax
00641AA6   00AB1A6400C6           add     [ebx+$C600641A], ch
00641AAC   45                     inc     ebp
00641AAD   F3                     rep
00641AAE   00E8                   add     al, ch
00641AB0   FC                     cld
00641AB1   33DC                   xor     ebx, esp
00641AB3   FF33                   push    dword ptr [ebx]
00641AB5   C05A5959               rcr     byte ptr [edx+$59], $59
00641AB9   648910                 mov     fs:[eax], edx

****** FINALLY
|
00641ABC   68DB1A6400             push    $00641ADB
00641AC1   A17CB37D00             mov     eax, dword ptr [$007DB37C]
00641AC6   8B00                   mov     eax, [eax]
00641AC8   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.EnableControls(TDataSet);
|
00641ACE   E8C98AEAFF             call    004EA59C
00641AD3   C3                     ret


* Reference to: System.@HandleFinally;
|
00641AD4   E95F32DCFF             jmp     00404D38
00641AD9   EBE6                   jmp     00641AC1

****** END
|
00641ADB   33C0                   xor     eax, eax
00641ADD   5A                     pop     edx
00641ADE   59                     pop     ecx
00641ADF   59                     pop     ecx
00641AE0   648910                 mov     fs:[eax], edx

****** FINALLY
|
00641AE3   6878206400             push    $00642078
00641AE8   8D85F4F6FFFF           lea     eax, [ebp+$FFFFF6F4]

* Reference to object Variant
|
00641AEE   8B1524114000           mov     edx, [$00401124]
00641AF4   B90A000000             mov     ecx, $0000000A

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641AF9   E89E45DCFF             call    0040609C
00641AFE   8D8594F7FFFF           lea     eax, [ebp+$FFFFF794]
00641B04   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641B09   E8B239DCFF             call    004054C0
00641B0E   8D85A8F7FFFF           lea     eax, [ebp+$FFFFF7A8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641B14   E85F2ADDFF             call    00414578
00641B19   8D85B8F7FFFF           lea     eax, [ebp+$FFFFF7B8]
00641B1F   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641B24   E89739DCFF             call    004054C0
00641B29   8D85D8F7FFFF           lea     eax, [ebp+$FFFFF7D8]

* Reference to object Variant
|
00641B2F   8B1524114000           mov     edx, [$00401124]
00641B35   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641B3A   E85D45DCFF             call    0040609C
00641B3F   8D8518F8FFFF           lea     eax, [ebp+$FFFFF818]

* Reference to: System.@LStrClr(void;void);
|
00641B45   E85239DCFF             call    0040549C
00641B4A   8D851CF8FFFF           lea     eax, [ebp+$FFFFF81C]

* Reference to object Variant
|
00641B50   8B1524114000           mov     edx, [$00401124]
00641B56   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641B5B   E83C45DCFF             call    0040609C
00641B60   8D853CF8FFFF           lea     eax, [ebp+$FFFFF83C]
00641B66   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641B6B   E85039DCFF             call    004054C0
00641B70   8D8544F8FFFF           lea     eax, [ebp+$FFFFF844]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641B76   E8FD29DDFF             call    00414578
00641B7B   8D8554F8FFFF           lea     eax, [ebp+$FFFFF854]

* Reference to: System.@LStrClr(void;void);
|
00641B81   E81639DCFF             call    0040549C
00641B86   8D8558F8FFFF           lea     eax, [ebp+$FFFFF858]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641B8C   E8E729DDFF             call    00414578
00641B91   8D8568F8FFFF           lea     eax, [ebp+$FFFFF868]
00641B97   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641B9C   E81F39DCFF             call    004054C0
00641BA1   8D8570F8FFFF           lea     eax, [ebp+$FFFFF870]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641BA7   E8CC29DDFF             call    00414578
00641BAC   8D8580F8FFFF           lea     eax, [ebp+$FFFFF880]

* Reference to: System.@LStrClr(void;void);
|
00641BB2   E8E538DCFF             call    0040549C
00641BB7   8D8584F8FFFF           lea     eax, [ebp+$FFFFF884]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641BBD   E8B629DDFF             call    00414578
00641BC2   8D8594F8FFFF           lea     eax, [ebp+$FFFFF894]
00641BC8   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641BCD   E8EE38DCFF             call    004054C0
00641BD2   8D85A4F8FFFF           lea     eax, [ebp+$FFFFF8A4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641BD8   E89B29DDFF             call    00414578
00641BDD   8D85B4F8FFFF           lea     eax, [ebp+$FFFFF8B4]
00641BE3   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641BE8   E8D338DCFF             call    004054C0
00641BED   8D85BCF8FFFF           lea     eax, [ebp+$FFFFF8BC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641BF3   E88029DDFF             call    00414578
00641BF8   8D85CCF8FFFF           lea     eax, [ebp+$FFFFF8CC]
00641BFE   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641C03   E8B838DCFF             call    004054C0
00641C08   8D85DCF8FFFF           lea     eax, [ebp+$FFFFF8DC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C0E   E86529DDFF             call    00414578
00641C13   8D85ECF8FFFF           lea     eax, [ebp+$FFFFF8EC]
00641C19   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641C1E   E89D38DCFF             call    004054C0
00641C23   8D85F4F8FFFF           lea     eax, [ebp+$FFFFF8F4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C29   E84A29DDFF             call    00414578
00641C2E   8D8504F9FFFF           lea     eax, [ebp+$FFFFF904]

* Reference to: System.@LStrClr(void;void);
|
00641C34   E86338DCFF             call    0040549C
00641C39   8D8508F9FFFF           lea     eax, [ebp+$FFFFF908]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C3F   E83429DDFF             call    00414578
00641C44   8D8518F9FFFF           lea     eax, [ebp+$FFFFF918]

* Reference to: System.@LStrClr(void;void);
|
00641C4A   E84D38DCFF             call    0040549C
00641C4F   8D851CF9FFFF           lea     eax, [ebp+$FFFFF91C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C55   E81E29DDFF             call    00414578
00641C5A   8D852CF9FFFF           lea     eax, [ebp+$FFFFF92C]

* Reference to: System.@LStrClr(void;void);
|
00641C60   E83738DCFF             call    0040549C
00641C65   8D8530F9FFFF           lea     eax, [ebp+$FFFFF930]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C6B   E80829DDFF             call    00414578
00641C70   8D8540F9FFFF           lea     eax, [ebp+$FFFFF940]

* Reference to: System.@LStrClr(void;void);
|
00641C76   E82138DCFF             call    0040549C
00641C7B   8D8544F9FFFF           lea     eax, [ebp+$FFFFF944]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C81   E8F228DDFF             call    00414578
00641C86   8D8554F9FFFF           lea     eax, [ebp+$FFFFF954]

* Reference to: System.@LStrClr(void;void);
|
00641C8C   E80B38DCFF             call    0040549C
00641C91   8D8558F9FFFF           lea     eax, [ebp+$FFFFF958]

* Reference to object Variant
|
00641C97   8B1524114000           mov     edx, [$00401124]
00641C9D   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641CA2   E8F543DCFF             call    0040609C
00641CA7   8D8578F9FFFF           lea     eax, [ebp+$FFFFF978]

* Reference to: System.@LStrClr(void;void);
|
00641CAD   E8EA37DCFF             call    0040549C
00641CB2   8D857CF9FFFF           lea     eax, [ebp+$FFFFF97C]

* Reference to object Variant
|
00641CB8   8B1524114000           mov     edx, [$00401124]
00641CBE   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641CC3   E8D443DCFF             call    0040609C
00641CC8   8D859CF9FFFF           lea     eax, [ebp+$FFFFF99C]

* Reference to: System.@LStrClr(void;void);
|
00641CCE   E8C937DCFF             call    0040549C
00641CD3   8D85A0F9FFFF           lea     eax, [ebp+$FFFFF9A0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641CD9   E89A28DDFF             call    00414578
00641CDE   8D85B0F9FFFF           lea     eax, [ebp+$FFFFF9B0]
00641CE4   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641CE9   E8D237DCFF             call    004054C0
00641CEE   8D85B8F9FFFF           lea     eax, [ebp+$FFFFF9B8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641CF4   E87F28DDFF             call    00414578
00641CF9   8D85C8F9FFFF           lea     eax, [ebp+$FFFFF9C8]
00641CFF   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641D04   E8B737DCFF             call    004054C0
00641D09   8D85D8F9FFFF           lea     eax, [ebp+$FFFFF9D8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D0F   E86428DDFF             call    00414578
00641D14   8D85E8F9FFFF           lea     eax, [ebp+$FFFFF9E8]

* Reference to: System.@LStrClr(void;void);
|
00641D1A   E87D37DCFF             call    0040549C
00641D1F   8D85ECF9FFFF           lea     eax, [ebp+$FFFFF9EC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D25   E84E28DDFF             call    00414578
00641D2A   8D85FCF9FFFF           lea     eax, [ebp+$FFFFF9FC]

* Reference to: System.@LStrClr(void;void);
|
00641D30   E86737DCFF             call    0040549C
00641D35   8D8500FAFFFF           lea     eax, [ebp+$FFFFFA00]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D3B   E83828DDFF             call    00414578
00641D40   8D8510FAFFFF           lea     eax, [ebp+$FFFFFA10]
00641D46   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641D4B   E87037DCFF             call    004054C0
00641D50   8D8518FAFFFF           lea     eax, [ebp+$FFFFFA18]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D56   E81D28DDFF             call    00414578
00641D5B   8D8528FAFFFF           lea     eax, [ebp+$FFFFFA28]
00641D61   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641D66   E85537DCFF             call    004054C0
00641D6B   8D8530FAFFFF           lea     eax, [ebp+$FFFFFA30]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D71   E80228DDFF             call    00414578
00641D76   8D8540FAFFFF           lea     eax, [ebp+$FFFFFA40]

* Reference to: System.@LStrClr(void;void);
|
00641D7C   E81B37DCFF             call    0040549C
00641D81   8D8544FAFFFF           lea     eax, [ebp+$FFFFFA44]

* Reference to object Variant
|
00641D87   8B1524114000           mov     edx, [$00401124]
00641D8D   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641D92   E80543DCFF             call    0040609C
00641D97   8D8574FAFFFF           lea     eax, [ebp+$FFFFFA74]
00641D9D   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641DA2   E81937DCFF             call    004054C0
00641DA7   8D857CFAFFFF           lea     eax, [ebp+$FFFFFA7C]

* Reference to object Variant
|
00641DAD   8B1524114000           mov     edx, [$00401124]
00641DB3   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641DB8   E8DF42DCFF             call    0040609C
00641DBD   8D85A0FAFFFF           lea     eax, [ebp+$FFFFFAA0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641DC3   E8B027DDFF             call    00414578
00641DC8   8D859CFAFFFF           lea     eax, [ebp+$FFFFFA9C]

* Reference to: System.@LStrClr(void;void);
|
00641DCE   E8C936DCFF             call    0040549C
00641DD3   8D85B0FAFFFF           lea     eax, [ebp+$FFFFFAB0]

* Reference to: System.@LStrClr(void;void);
|
00641DD9   E8BE36DCFF             call    0040549C
00641DDE   8D85B4FAFFFF           lea     eax, [ebp+$FFFFFAB4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641DE4   E88F27DDFF             call    00414578
00641DE9   8D85C4FAFFFF           lea     eax, [ebp+$FFFFFAC4]
00641DEF   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641DF4   E8C736DCFF             call    004054C0
00641DF9   8D85CCFAFFFF           lea     eax, [ebp+$FFFFFACC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641DFF   E87427DDFF             call    00414578
00641E04   8D85DCFAFFFF           lea     eax, [ebp+$FFFFFADC]
00641E0A   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641E0F   E8AC36DCFF             call    004054C0
00641E14   8D85FCFAFFFF           lea     eax, [ebp+$FFFFFAFC]
00641E1A   BA10000000             mov     edx, $00000010

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641E1F   E89C36DCFF             call    004054C0
00641E24   8D853CFBFFFF           lea     eax, [ebp+$FFFFFB3C]

* Reference to object Variant
|
00641E2A   8B1524114000           mov     edx, [$00401124]
00641E30   B908000000             mov     ecx, $00000008

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641E35   E86242DCFF             call    0040609C
00641E3A   8D85BCFBFFFF           lea     eax, [ebp+$FFFFFBBC]

* Reference to: System.@LStrClr(void;void);
|
00641E40   E85736DCFF             call    0040549C
00641E45   8D85C0FBFFFF           lea     eax, [ebp+$FFFFFBC0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641E4B   E82827DDFF             call    00414578
00641E50   8D85D0FBFFFF           lea     eax, [ebp+$FFFFFBD0]

* Reference to: System.@LStrClr(void;void);
|
00641E56   E84136DCFF             call    0040549C
00641E5B   8D85D4FBFFFF           lea     eax, [ebp+$FFFFFBD4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641E61   E81227DDFF             call    00414578
00641E66   8D85E4FBFFFF           lea     eax, [ebp+$FFFFFBE4]

* Reference to: System.@LStrClr(void;void);
|
00641E6C   E82B36DCFF             call    0040549C
00641E71   8D85E8FBFFFF           lea     eax, [ebp+$FFFFFBE8]

* Reference to object Variant
|
00641E77   8B1524114000           mov     edx, [$00401124]
00641E7D   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641E82   E81542DCFF             call    0040609C
00641E87   8D8518FCFFFF           lea     eax, [ebp+$FFFFFC18]

* Reference to: System.@LStrClr(void;void);
|
00641E8D   E80A36DCFF             call    0040549C
00641E92   8D851CFCFFFF           lea     eax, [ebp+$FFFFFC1C]

* Reference to object Variant
|
00641E98   8B1524114000           mov     edx, [$00401124]
00641E9E   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641EA3   E8F441DCFF             call    0040609C
00641EA8   8D853CFCFFFF           lea     eax, [ebp+$FFFFFC3C]

* Reference to: System.@LStrClr(void;void);
|
00641EAE   E8E935DCFF             call    0040549C
00641EB3   8D8540FCFFFF           lea     eax, [ebp+$FFFFFC40]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641EB9   E8BA26DDFF             call    00414578
00641EBE   8D8550FCFFFF           lea     eax, [ebp+$FFFFFC50]

* Reference to: System.@LStrClr(void;void);
|
00641EC4   E8D335DCFF             call    0040549C
00641EC9   8D8554FCFFFF           lea     eax, [ebp+$FFFFFC54]

* Reference to object Variant
|
00641ECF   8B1524114000           mov     edx, [$00401124]
00641ED5   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641EDA   E8BD41DCFF             call    0040609C
00641EDF   8D8584FCFFFF           lea     eax, [ebp+$FFFFFC84]

* Reference to: System.@LStrClr(void;void);
|
00641EE5   E8B235DCFF             call    0040549C
00641EEA   8D8588FCFFFF           lea     eax, [ebp+$FFFFFC88]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641EF0   E88326DDFF             call    00414578
00641EF5   8D8598FCFFFF           lea     eax, [ebp+$FFFFFC98]

* Reference to: System.@LStrClr(void;void);
|
00641EFB   E89C35DCFF             call    0040549C
00641F00   8D859CFCFFFF           lea     eax, [ebp+$FFFFFC9C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F06   E86D26DDFF             call    00414578
00641F0B   8D85ACFCFFFF           lea     eax, [ebp+$FFFFFCAC]

* Reference to: System.@LStrClr(void;void);
|
00641F11   E88635DCFF             call    0040549C
00641F16   8D85B0FCFFFF           lea     eax, [ebp+$FFFFFCB0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F1C   E85726DDFF             call    00414578
00641F21   8D85C0FCFFFF           lea     eax, [ebp+$FFFFFCC0]
00641F27   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641F2C   E88F35DCFF             call    004054C0
00641F31   8D85C8FCFFFF           lea     eax, [ebp+$FFFFFCC8]

* Reference to object Variant
|
00641F37   8B1524114000           mov     edx, [$00401124]
00641F3D   B912000000             mov     ecx, $00000012

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641F42   E85541DCFF             call    0040609C
00641F47   8D85E8FDFFFF           lea     eax, [ebp+$FFFFFDE8]

* Reference to: System.@LStrClr(void;void);
|
00641F4D   E84A35DCFF             call    0040549C
00641F52   8D85ECFDFFFF           lea     eax, [ebp+$FFFFFDEC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F58   E81B26DDFF             call    00414578
00641F5D   8D85FCFDFFFF           lea     eax, [ebp+$FFFFFDFC]
00641F63   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641F68   E85335DCFF             call    004054C0
00641F6D   8D8504FEFFFF           lea     eax, [ebp+$FFFFFE04]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F73   E80026DDFF             call    00414578
00641F78   8D8514FEFFFF           lea     eax, [ebp+$FFFFFE14]
00641F7E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641F83   E83835DCFF             call    004054C0
00641F88   8D851CFEFFFF           lea     eax, [ebp+$FFFFFE1C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F8E   E8E525DDFF             call    00414578
00641F93   8D852CFEFFFF           lea     eax, [ebp+$FFFFFE2C]

* Reference to: System.@LStrClr(void;void);
|
00641F99   E8FE34DCFF             call    0040549C
00641F9E   8D8530FEFFFF           lea     eax, [ebp+$FFFFFE30]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641FA4   E8CF25DDFF             call    00414578
00641FA9   8D8540FEFFFF           lea     eax, [ebp+$FFFFFE40]

* Reference to: System.@LStrClr(void;void);
|
00641FAF   E8E834DCFF             call    0040549C
00641FB4   8D8544FEFFFF           lea     eax, [ebp+$FFFFFE44]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641FBA   E8B925DDFF             call    00414578
00641FBF   8D8554FEFFFF           lea     eax, [ebp+$FFFFFE54]
00641FC5   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641FCA   E8F134DCFF             call    004054C0
00641FCF   8D855CFEFFFF           lea     eax, [ebp+$FFFFFE5C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641FD5   E89E25DDFF             call    00414578
00641FDA   8D856CFEFFFF           lea     eax, [ebp+$FFFFFE6C]
00641FE0   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641FE5   E8D634DCFF             call    004054C0
00641FEA   8D8574FEFFFF           lea     eax, [ebp+$FFFFFE74]

* Reference to object Variant
|
00641FF0   8B1524114000           mov     edx, [$00401124]
00641FF6   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641FFB   E89C40DCFF             call    0040609C
00642000   8D8598FEFFFF           lea     eax, [ebp+$FFFFFE98]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00642006   E86D25DDFF             call    00414578
0064200B   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to: System.@LStrClr(void;void);
|
00642011   E88634DCFF             call    0040549C
00642016   8D85ACFEFFFF           lea     eax, [ebp+$FFFFFEAC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0064201C   E85725DDFF             call    00414578
00642021   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]

* Reference to object Variant
|
00642027   8B1524114000           mov     edx, [$00401124]
0064202D   B907000000             mov     ecx, $00000007

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00642032   E86540DCFF             call    0040609C
00642037   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: System.@LStrClr(void;void);
|
0064203D   E85A34DCFF             call    0040549C
00642042   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]

* Reference to object Variant
|
00642048   8B1524114000           mov     edx, [$00401124]
0064204E   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00642053   E84440DCFF             call    0040609C
00642058   8D45F4                 lea     eax, [ebp-$0C]
0064205B   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00642060   E85B34DCFF             call    004054C0
00642065   8D450C                 lea     eax, [ebp+$0C]

* Reference to: System.@LStrClr(void;void);
|
00642068   E82F34DCFF             call    0040549C
0064206D   C3                     ret


* Reference to: System.@HandleFinally;
|
0064206E   E9C52CDCFF             jmp     00404D38
00642073   E970FAFFFF             jmp     00641AE8

****** END
|
00642078   8A45F3                 mov     al, byte ptr [ebp-$0D]
0064207B   5F                     pop     edi
0064207C   5E                     pop     esi
0064207D   5B                     pop     ebx
0064207E   8BE5                   mov     esp, ebp
00642080   5D                     pop     ebp
00642081   C21000                 ret     $0010

*)
end;

procedure TFrmF2SubLocal._PROC_00641AD4(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00641AD4   E95F32DCFF             jmp     00404D38

|
00641AD9   EBE6                   jmp     00641AC1
00641ADB   33C0                   xor     eax, eax
00641ADD   5A                     pop     edx
00641ADE   59                     pop     ecx
00641ADF   59                     pop     ecx
00641AE0   648910                 mov     fs:[eax], edx

****** FINALLY
|
00641AE3   6878206400             push    $00642078
00641AE8   8D85F4F6FFFF           lea     eax, [ebp+$FFFFF6F4]

* Reference to object Variant
|
00641AEE   8B1524114000           mov     edx, [$00401124]
00641AF4   B90A000000             mov     ecx, $0000000A

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641AF9   E89E45DCFF             call    0040609C
00641AFE   8D8594F7FFFF           lea     eax, [ebp+$FFFFF794]
00641B04   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641B09   E8B239DCFF             call    004054C0
00641B0E   8D85A8F7FFFF           lea     eax, [ebp+$FFFFF7A8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641B14   E85F2ADDFF             call    00414578
00641B19   8D85B8F7FFFF           lea     eax, [ebp+$FFFFF7B8]
00641B1F   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641B24   E89739DCFF             call    004054C0
00641B29   8D85D8F7FFFF           lea     eax, [ebp+$FFFFF7D8]

* Reference to object Variant
|
00641B2F   8B1524114000           mov     edx, [$00401124]
00641B35   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641B3A   E85D45DCFF             call    0040609C
00641B3F   8D8518F8FFFF           lea     eax, [ebp+$FFFFF818]

* Reference to: System.@LStrClr(void;void);
|
00641B45   E85239DCFF             call    0040549C
00641B4A   8D851CF8FFFF           lea     eax, [ebp+$FFFFF81C]

* Reference to object Variant
|
00641B50   8B1524114000           mov     edx, [$00401124]
00641B56   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641B5B   E83C45DCFF             call    0040609C
00641B60   8D853CF8FFFF           lea     eax, [ebp+$FFFFF83C]
00641B66   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641B6B   E85039DCFF             call    004054C0
00641B70   8D8544F8FFFF           lea     eax, [ebp+$FFFFF844]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641B76   E8FD29DDFF             call    00414578
00641B7B   8D8554F8FFFF           lea     eax, [ebp+$FFFFF854]

* Reference to: System.@LStrClr(void;void);
|
00641B81   E81639DCFF             call    0040549C
00641B86   8D8558F8FFFF           lea     eax, [ebp+$FFFFF858]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641B8C   E8E729DDFF             call    00414578
00641B91   8D8568F8FFFF           lea     eax, [ebp+$FFFFF868]
00641B97   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641B9C   E81F39DCFF             call    004054C0
00641BA1   8D8570F8FFFF           lea     eax, [ebp+$FFFFF870]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641BA7   E8CC29DDFF             call    00414578
00641BAC   8D8580F8FFFF           lea     eax, [ebp+$FFFFF880]

* Reference to: System.@LStrClr(void;void);
|
00641BB2   E8E538DCFF             call    0040549C
00641BB7   8D8584F8FFFF           lea     eax, [ebp+$FFFFF884]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641BBD   E8B629DDFF             call    00414578
00641BC2   8D8594F8FFFF           lea     eax, [ebp+$FFFFF894]
00641BC8   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641BCD   E8EE38DCFF             call    004054C0
00641BD2   8D85A4F8FFFF           lea     eax, [ebp+$FFFFF8A4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641BD8   E89B29DDFF             call    00414578
00641BDD   8D85B4F8FFFF           lea     eax, [ebp+$FFFFF8B4]
00641BE3   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641BE8   E8D338DCFF             call    004054C0
00641BED   8D85BCF8FFFF           lea     eax, [ebp+$FFFFF8BC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641BF3   E88029DDFF             call    00414578
00641BF8   8D85CCF8FFFF           lea     eax, [ebp+$FFFFF8CC]
00641BFE   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641C03   E8B838DCFF             call    004054C0
00641C08   8D85DCF8FFFF           lea     eax, [ebp+$FFFFF8DC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C0E   E86529DDFF             call    00414578
00641C13   8D85ECF8FFFF           lea     eax, [ebp+$FFFFF8EC]
00641C19   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641C1E   E89D38DCFF             call    004054C0
00641C23   8D85F4F8FFFF           lea     eax, [ebp+$FFFFF8F4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C29   E84A29DDFF             call    00414578
00641C2E   8D8504F9FFFF           lea     eax, [ebp+$FFFFF904]

* Reference to: System.@LStrClr(void;void);
|
00641C34   E86338DCFF             call    0040549C
00641C39   8D8508F9FFFF           lea     eax, [ebp+$FFFFF908]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C3F   E83429DDFF             call    00414578
00641C44   8D8518F9FFFF           lea     eax, [ebp+$FFFFF918]

* Reference to: System.@LStrClr(void;void);
|
00641C4A   E84D38DCFF             call    0040549C
00641C4F   8D851CF9FFFF           lea     eax, [ebp+$FFFFF91C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C55   E81E29DDFF             call    00414578
00641C5A   8D852CF9FFFF           lea     eax, [ebp+$FFFFF92C]

* Reference to: System.@LStrClr(void;void);
|
00641C60   E83738DCFF             call    0040549C
00641C65   8D8530F9FFFF           lea     eax, [ebp+$FFFFF930]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C6B   E80829DDFF             call    00414578
00641C70   8D8540F9FFFF           lea     eax, [ebp+$FFFFF940]

* Reference to: System.@LStrClr(void;void);
|
00641C76   E82138DCFF             call    0040549C
00641C7B   8D8544F9FFFF           lea     eax, [ebp+$FFFFF944]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641C81   E8F228DDFF             call    00414578
00641C86   8D8554F9FFFF           lea     eax, [ebp+$FFFFF954]

* Reference to: System.@LStrClr(void;void);
|
00641C8C   E80B38DCFF             call    0040549C
00641C91   8D8558F9FFFF           lea     eax, [ebp+$FFFFF958]

* Reference to object Variant
|
00641C97   8B1524114000           mov     edx, [$00401124]
00641C9D   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641CA2   E8F543DCFF             call    0040609C
00641CA7   8D8578F9FFFF           lea     eax, [ebp+$FFFFF978]

* Reference to: System.@LStrClr(void;void);
|
00641CAD   E8EA37DCFF             call    0040549C
00641CB2   8D857CF9FFFF           lea     eax, [ebp+$FFFFF97C]

* Reference to object Variant
|
00641CB8   8B1524114000           mov     edx, [$00401124]
00641CBE   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641CC3   E8D443DCFF             call    0040609C
00641CC8   8D859CF9FFFF           lea     eax, [ebp+$FFFFF99C]

* Reference to: System.@LStrClr(void;void);
|
00641CCE   E8C937DCFF             call    0040549C
00641CD3   8D85A0F9FFFF           lea     eax, [ebp+$FFFFF9A0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641CD9   E89A28DDFF             call    00414578
00641CDE   8D85B0F9FFFF           lea     eax, [ebp+$FFFFF9B0]
00641CE4   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641CE9   E8D237DCFF             call    004054C0
00641CEE   8D85B8F9FFFF           lea     eax, [ebp+$FFFFF9B8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641CF4   E87F28DDFF             call    00414578
00641CF9   8D85C8F9FFFF           lea     eax, [ebp+$FFFFF9C8]
00641CFF   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641D04   E8B737DCFF             call    004054C0
00641D09   8D85D8F9FFFF           lea     eax, [ebp+$FFFFF9D8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D0F   E86428DDFF             call    00414578
00641D14   8D85E8F9FFFF           lea     eax, [ebp+$FFFFF9E8]

* Reference to: System.@LStrClr(void;void);
|
00641D1A   E87D37DCFF             call    0040549C
00641D1F   8D85ECF9FFFF           lea     eax, [ebp+$FFFFF9EC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D25   E84E28DDFF             call    00414578
00641D2A   8D85FCF9FFFF           lea     eax, [ebp+$FFFFF9FC]

* Reference to: System.@LStrClr(void;void);
|
00641D30   E86737DCFF             call    0040549C
00641D35   8D8500FAFFFF           lea     eax, [ebp+$FFFFFA00]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D3B   E83828DDFF             call    00414578
00641D40   8D8510FAFFFF           lea     eax, [ebp+$FFFFFA10]
00641D46   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641D4B   E87037DCFF             call    004054C0
00641D50   8D8518FAFFFF           lea     eax, [ebp+$FFFFFA18]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D56   E81D28DDFF             call    00414578
00641D5B   8D8528FAFFFF           lea     eax, [ebp+$FFFFFA28]
00641D61   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641D66   E85537DCFF             call    004054C0
00641D6B   8D8530FAFFFF           lea     eax, [ebp+$FFFFFA30]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641D71   E80228DDFF             call    00414578
00641D76   8D8540FAFFFF           lea     eax, [ebp+$FFFFFA40]

* Reference to: System.@LStrClr(void;void);
|
00641D7C   E81B37DCFF             call    0040549C
00641D81   8D8544FAFFFF           lea     eax, [ebp+$FFFFFA44]

* Reference to object Variant
|
00641D87   8B1524114000           mov     edx, [$00401124]
00641D8D   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641D92   E80543DCFF             call    0040609C
00641D97   8D8574FAFFFF           lea     eax, [ebp+$FFFFFA74]
00641D9D   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641DA2   E81937DCFF             call    004054C0
00641DA7   8D857CFAFFFF           lea     eax, [ebp+$FFFFFA7C]

* Reference to object Variant
|
00641DAD   8B1524114000           mov     edx, [$00401124]
00641DB3   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641DB8   E8DF42DCFF             call    0040609C
00641DBD   8D85A0FAFFFF           lea     eax, [ebp+$FFFFFAA0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641DC3   E8B027DDFF             call    00414578
00641DC8   8D859CFAFFFF           lea     eax, [ebp+$FFFFFA9C]

* Reference to: System.@LStrClr(void;void);
|
00641DCE   E8C936DCFF             call    0040549C
00641DD3   8D85B0FAFFFF           lea     eax, [ebp+$FFFFFAB0]

* Reference to: System.@LStrClr(void;void);
|
00641DD9   E8BE36DCFF             call    0040549C
00641DDE   8D85B4FAFFFF           lea     eax, [ebp+$FFFFFAB4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641DE4   E88F27DDFF             call    00414578
00641DE9   8D85C4FAFFFF           lea     eax, [ebp+$FFFFFAC4]
00641DEF   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641DF4   E8C736DCFF             call    004054C0
00641DF9   8D85CCFAFFFF           lea     eax, [ebp+$FFFFFACC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641DFF   E87427DDFF             call    00414578
00641E04   8D85DCFAFFFF           lea     eax, [ebp+$FFFFFADC]
00641E0A   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641E0F   E8AC36DCFF             call    004054C0
00641E14   8D85FCFAFFFF           lea     eax, [ebp+$FFFFFAFC]
00641E1A   BA10000000             mov     edx, $00000010

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641E1F   E89C36DCFF             call    004054C0
00641E24   8D853CFBFFFF           lea     eax, [ebp+$FFFFFB3C]

* Reference to object Variant
|
00641E2A   8B1524114000           mov     edx, [$00401124]
00641E30   B908000000             mov     ecx, $00000008

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641E35   E86242DCFF             call    0040609C
00641E3A   8D85BCFBFFFF           lea     eax, [ebp+$FFFFFBBC]

* Reference to: System.@LStrClr(void;void);
|
00641E40   E85736DCFF             call    0040549C
00641E45   8D85C0FBFFFF           lea     eax, [ebp+$FFFFFBC0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641E4B   E82827DDFF             call    00414578
00641E50   8D85D0FBFFFF           lea     eax, [ebp+$FFFFFBD0]

* Reference to: System.@LStrClr(void;void);
|
00641E56   E84136DCFF             call    0040549C
00641E5B   8D85D4FBFFFF           lea     eax, [ebp+$FFFFFBD4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641E61   E81227DDFF             call    00414578
00641E66   8D85E4FBFFFF           lea     eax, [ebp+$FFFFFBE4]

* Reference to: System.@LStrClr(void;void);
|
00641E6C   E82B36DCFF             call    0040549C
00641E71   8D85E8FBFFFF           lea     eax, [ebp+$FFFFFBE8]

* Reference to object Variant
|
00641E77   8B1524114000           mov     edx, [$00401124]
00641E7D   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641E82   E81542DCFF             call    0040609C
00641E87   8D8518FCFFFF           lea     eax, [ebp+$FFFFFC18]

* Reference to: System.@LStrClr(void;void);
|
00641E8D   E80A36DCFF             call    0040549C
00641E92   8D851CFCFFFF           lea     eax, [ebp+$FFFFFC1C]

* Reference to object Variant
|
00641E98   8B1524114000           mov     edx, [$00401124]
00641E9E   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641EA3   E8F441DCFF             call    0040609C
00641EA8   8D853CFCFFFF           lea     eax, [ebp+$FFFFFC3C]

* Reference to: System.@LStrClr(void;void);
|
00641EAE   E8E935DCFF             call    0040549C
00641EB3   8D8540FCFFFF           lea     eax, [ebp+$FFFFFC40]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641EB9   E8BA26DDFF             call    00414578
00641EBE   8D8550FCFFFF           lea     eax, [ebp+$FFFFFC50]

* Reference to: System.@LStrClr(void;void);
|
00641EC4   E8D335DCFF             call    0040549C
00641EC9   8D8554FCFFFF           lea     eax, [ebp+$FFFFFC54]

* Reference to object Variant
|
00641ECF   8B1524114000           mov     edx, [$00401124]
00641ED5   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641EDA   E8BD41DCFF             call    0040609C
00641EDF   8D8584FCFFFF           lea     eax, [ebp+$FFFFFC84]

* Reference to: System.@LStrClr(void;void);
|
00641EE5   E8B235DCFF             call    0040549C
00641EEA   8D8588FCFFFF           lea     eax, [ebp+$FFFFFC88]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641EF0   E88326DDFF             call    00414578
00641EF5   8D8598FCFFFF           lea     eax, [ebp+$FFFFFC98]

* Reference to: System.@LStrClr(void;void);
|
00641EFB   E89C35DCFF             call    0040549C
00641F00   8D859CFCFFFF           lea     eax, [ebp+$FFFFFC9C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F06   E86D26DDFF             call    00414578
00641F0B   8D85ACFCFFFF           lea     eax, [ebp+$FFFFFCAC]

* Reference to: System.@LStrClr(void;void);
|
00641F11   E88635DCFF             call    0040549C
00641F16   8D85B0FCFFFF           lea     eax, [ebp+$FFFFFCB0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F1C   E85726DDFF             call    00414578
00641F21   8D85C0FCFFFF           lea     eax, [ebp+$FFFFFCC0]
00641F27   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641F2C   E88F35DCFF             call    004054C0
00641F31   8D85C8FCFFFF           lea     eax, [ebp+$FFFFFCC8]

* Reference to object Variant
|
00641F37   8B1524114000           mov     edx, [$00401124]
00641F3D   B912000000             mov     ecx, $00000012

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641F42   E85541DCFF             call    0040609C
00641F47   8D85E8FDFFFF           lea     eax, [ebp+$FFFFFDE8]

* Reference to: System.@LStrClr(void;void);
|
00641F4D   E84A35DCFF             call    0040549C
00641F52   8D85ECFDFFFF           lea     eax, [ebp+$FFFFFDEC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F58   E81B26DDFF             call    00414578
00641F5D   8D85FCFDFFFF           lea     eax, [ebp+$FFFFFDFC]
00641F63   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641F68   E85335DCFF             call    004054C0
00641F6D   8D8504FEFFFF           lea     eax, [ebp+$FFFFFE04]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F73   E80026DDFF             call    00414578
00641F78   8D8514FEFFFF           lea     eax, [ebp+$FFFFFE14]
00641F7E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641F83   E83835DCFF             call    004054C0
00641F88   8D851CFEFFFF           lea     eax, [ebp+$FFFFFE1C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641F8E   E8E525DDFF             call    00414578
00641F93   8D852CFEFFFF           lea     eax, [ebp+$FFFFFE2C]

* Reference to: System.@LStrClr(void;void);
|
00641F99   E8FE34DCFF             call    0040549C
00641F9E   8D8530FEFFFF           lea     eax, [ebp+$FFFFFE30]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641FA4   E8CF25DDFF             call    00414578
00641FA9   8D8540FEFFFF           lea     eax, [ebp+$FFFFFE40]

* Reference to: System.@LStrClr(void;void);
|
00641FAF   E8E834DCFF             call    0040549C
00641FB4   8D8544FEFFFF           lea     eax, [ebp+$FFFFFE44]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641FBA   E8B925DDFF             call    00414578
00641FBF   8D8554FEFFFF           lea     eax, [ebp+$FFFFFE54]
00641FC5   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641FCA   E8F134DCFF             call    004054C0
00641FCF   8D855CFEFFFF           lea     eax, [ebp+$FFFFFE5C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00641FD5   E89E25DDFF             call    00414578
00641FDA   8D856CFEFFFF           lea     eax, [ebp+$FFFFFE6C]
00641FE0   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00641FE5   E8D634DCFF             call    004054C0
00641FEA   8D8574FEFFFF           lea     eax, [ebp+$FFFFFE74]

* Reference to object Variant
|
00641FF0   8B1524114000           mov     edx, [$00401124]
00641FF6   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00641FFB   E89C40DCFF             call    0040609C
00642000   8D8598FEFFFF           lea     eax, [ebp+$FFFFFE98]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00642006   E86D25DDFF             call    00414578
0064200B   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to: System.@LStrClr(void;void);
|
00642011   E88634DCFF             call    0040549C
00642016   8D85ACFEFFFF           lea     eax, [ebp+$FFFFFEAC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0064201C   E85725DDFF             call    00414578
00642021   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]

* Reference to object Variant
|
00642027   8B1524114000           mov     edx, [$00401124]
0064202D   B907000000             mov     ecx, $00000007

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00642032   E86540DCFF             call    0040609C
00642037   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: System.@LStrClr(void;void);
|
0064203D   E85A34DCFF             call    0040549C
00642042   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]

* Reference to object Variant
|
00642048   8B1524114000           mov     edx, [$00401124]
0064204E   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00642053   E84440DCFF             call    0040609C
00642058   8D45F4                 lea     eax, [ebp-$0C]
0064205B   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00642060   E85B34DCFF             call    004054C0
00642065   8D450C                 lea     eax, [ebp+$0C]

* Reference to: System.@LStrClr(void;void);
|
00642068   E82F34DCFF             call    0040549C
0064206D   C3                     ret


* Reference to: System.@HandleFinally;
|
0064206E   E9C52CDCFF             jmp     00404D38
00642073   E970FAFFFF             jmp     00641AE8

****** END
|
00642078   8A45F3                 mov     al, byte ptr [ebp-$0D]
0064207B   5F                     pop     edi
0064207C   5E                     pop     esi
0064207D   5B                     pop     ebx
0064207E   8BE5                   mov     esp, ebp
00642080   5D                     pop     ebp
00642081   C21000                 ret     $0010

*)
end;

procedure TFrmF2SubLocal._PROC_00642384(Sender : TObject);
begin
(*
00642384   6E                     outsb
00642385   697400FFFFFFFF07       imul    esi, [eax+eax-$01], $07FFFFFF
0064238D   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00642391(Sender : TObject);
begin
(*
00642391   6E                     outsb
00642392   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
0064239A   FFFF                   DB  $FF, $FF  //      
0064239C   07                     pop     es
0064239D   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006423B5(Sender : TObject);
begin
(*
006423B5   6E                     outsb
006423B6   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
006423BE   FFFF                   DB  $FF, $FF  //      
006423C0   0A00                   or      al, byte ptr [eax]
006423C2   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00642501(Sender : TObject);
begin
(*
00642501   56                     push    esi
00642502   57                     push    edi
00642503   58                     pop     eax
00642504   59                     pop     ecx
00642505   5A                     pop     edx
00642506   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0064273D(Sender : TObject);
begin
(*
0064273D   8BEC                   mov     ebp, esp
0064273F   83C4F8                 add     esp, -$08
00642742   53                     push    ebx
00642743   56                     push    esi
00642744   57                     push    edi
00642745   33C0                   xor     eax, eax
00642747   8945F8                 mov     [ebp-$08], eax
0064274A   33C0                   xor     eax, eax
0064274C   55                     push    ebp

* Possible String Reference to: 'éŽ$ÜÿëðŠEÿ_^[YY]Ã'
|
0064274D   68A5286400             push    $006428A5

***** TRY
|
00642752   64FF30                 push    dword ptr fs:[eax]
00642755   648920                 mov     fs:[eax], esp
00642758   C645FF00               mov     byte ptr [ebp-$01], $00
0064275C   33C0                   xor     eax, eax
0064275E   55                     push    ebp
0064275F   6888286400             push    $00642888

***** TRY
|
00642764   64FF30                 push    dword ptr fs:[eax]
00642767   648920                 mov     fs:[eax], esp
0064276A   33C0                   xor     eax, eax
0064276C   55                     push    ebp
0064276D   683F286400             push    $0064283F

***** TRY
|
00642772   64FF30                 push    dword ptr fs:[eax]
00642775   648920                 mov     fs:[eax], esp
00642778   833D6CDD7D0000         cmp     dword ptr [$007DDD6C], +$00
0064277F   7574                   jnz     006427F5
00642781   33C9                   xor     ecx, ecx
00642783   B201                   mov     dl, $01

* Reference to class tArrayTable
|
00642785   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0064278A   E8894C1700             call    007B7418

* Reference to GlobalVar_007DDD6C
|
0064278F   A36CDD7D00             mov     dword ptr [$007DDD6C], eax
00642794   33C9                   xor     ecx, ecx
00642796   B201                   mov     dl, $01

* Reference to class tArrayTable
|
00642798   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
0064279D   E8764C1700             call    007B7418

* Reference to GlobalVar_007DDD70
|
006427A2   A370DD7D00             mov     dword ptr [$007DDD70], eax
006427A7   33C9                   xor     ecx, ecx
006427A9   B201                   mov     dl, $01

* Reference to class tArrayTable
|
006427AB   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
006427B0   E8634C1700             call    007B7418

* Reference to GlobalVar_007DDD74
|
006427B5   A374DD7D00             mov     dword ptr [$007DDD74], eax
006427BA   33C9                   xor     ecx, ecx
006427BC   B201                   mov     dl, $01

* Reference to class tArrayTable
|
006427BE   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
006427C3   E8504C1700             call    007B7418

* Reference to GlobalVar_007DDD78
|
006427C8   A378DD7D00             mov     dword ptr [$007DDD78], eax
006427CD   33C9                   xor     ecx, ecx
006427CF   B201                   mov     dl, $01

* Reference to class tArrayTable
|
006427D1   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
006427D6   E83D4C1700             call    007B7418

* Reference to GlobalVar_007DDD7C
|
006427DB   A37CDD7D00             mov     dword ptr [$007DDD7C], eax
006427E0   33C9                   xor     ecx, ecx
006427E2   B201                   mov     dl, $01

* Reference to class tArrayTable
|
006427E4   A1EC697B00             mov     eax, dword ptr [$007B69EC]

|
006427E9   E82A4C1700             call    007B7418

* Reference to GlobalVar_007DDD80
|
006427EE   A380DD7D00             mov     dword ptr [$007DDD80], eax
006427F3   EB3C                   jmp     00642831
006427F5   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to : tArrayTable._PROC_007B8B94()
|
006427FA   E895631700             call    007B8B94
006427FF   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B8B94()
|
00642804   E88B631700             call    007B8B94
00642809   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B8B94()
|
0064280E   E881631700             call    007B8B94
00642813   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8B94()
|
00642818   E877631700             call    007B8B94
0064281D   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B8B94()
|
00642822   E86D631700             call    007B8B94
00642827   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to : tArrayTable._PROC_007B8B94()
|
0064282C   E863631700             call    007B8B94
00642831   C645FF01               mov     byte ptr [ebp-$01], $01
00642835   33C0                   xor     eax, eax
00642837   5A                     pop     edx
00642838   59                     pop     ecx
00642839   59                     pop     ecx
0064283A   648910                 mov     fs:[eax], edx
0064283D   EB3B                   jmp     0064287A

* Reference to: System.@HandleOnException;
|
0064283F   E96C23DCFF             jmp     00404BB0
00642844   0100                   add     [eax], eax
00642846   0000                   add     [eax], al
00642848   40                     inc     eax
00642849   95                     xchg    eax, ebp
0064284A   40                     inc     eax
0064284B   005028                 add     [eax+$28], dl
0064284E   640089C36A008B         add     fs:[ecx+$8B006AC3], cl
00642855   4B                     dec     ebx
00642856   048D                   add     al, -$73
00642858   45                     inc     ebp
00642859   F8                     clc

* Possible String Reference to: 'Erro ao Inicializar as matrizes de 
|                                Produtos!'
|
0064285A   BAC0286400             mov     edx, $006428C0

* Reference to: System.@LStrCat3;
|
0064285F   E8442FDCFF             call    004057A8
00642864   8B45F8                 mov     eax, [ebp-$08]
00642867   668B0DF0286400         mov     cx, word ptr [$006428F0]
0064286E   B201                   mov     dl, $01

|
00642870   E8B712E0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00642875   E83626DCFF             call    00404EB0

****** END
|
0064287A   33C0                   xor     eax, eax
0064287C   5A                     pop     edx
0064287D   59                     pop     ecx
0064287E   59                     pop     ecx
0064287F   648910                 mov     fs:[eax], edx

****** FINALLY
|
00642882   688F286400             push    $0064288F
00642887   C3                     ret


* Reference to: System.@HandleFinally;
|
00642888   E9AB24DCFF             jmp     00404D38
0064288D   EBF8                   jmp     00642887

****** END
|
0064288F   33C0                   xor     eax, eax
00642891   5A                     pop     edx
00642892   59                     pop     ecx
00642893   59                     pop     ecx
00642894   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
00642897   68AC286400             push    $006428AC
0064289C   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0064289F   E8F82BDCFF             call    0040549C
006428A4   C3                     ret


* Reference to: System.@HandleFinally;
|
006428A5   E98E24DCFF             jmp     00404D38
006428AA   EBF0                   jmp     0064289C

****** END
|
006428AC   8A45FF                 mov     al, byte ptr [ebp-$01]
006428AF   5F                     pop     edi
006428B0   5E                     pop     esi
006428B1   5B                     pop     ebx
006428B2   59                     pop     ecx
006428B3   59                     pop     ecx
006428B4   5D                     pop     ebp
006428B5   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_006428A5(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006428A5   E98E24DCFF             jmp     00404D38

|
006428AA   EBF0                   jmp     0064289C
006428AC   8A45FF                 mov     al, byte ptr [ebp-$01]
006428AF   5F                     pop     edi
006428B0   5E                     pop     esi
006428B1   5B                     pop     ebx
006428B2   59                     pop     ecx
006428B3   59                     pop     ecx
006428B4   5D                     pop     ebp
006428B5   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_006428F5(Sender : TObject);
begin
(*
006428F5   8BEC                   mov     ebp, esp
006428F7   83C4F8                 add     esp, -$08
006428FA   53                     push    ebx
006428FB   56                     push    esi
006428FC   57                     push    edi
006428FD   33D2                   xor     edx, edx
006428FF   8955F8                 mov     [ebp-$08], edx
00642902   8845FF                 mov     [ebp-$01], al
00642905   33C0                   xor     eax, eax
00642907   55                     push    ebp

* Possible String Reference to: 'é2#ÜÿëðŠEþ_^[YY]Ã'
|
00642908   68012A6400             push    $00642A01

***** TRY
|
0064290D   64FF30                 push    dword ptr fs:[eax]
00642910   648920                 mov     fs:[eax], esp
00642913   C645FE00               mov     byte ptr [ebp-$02], $00
00642917   33C0                   xor     eax, eax
00642919   55                     push    ebp
0064291A   68E4296400             push    $006429E4

***** TRY
|
0064291F   64FF30                 push    dword ptr fs:[eax]
00642922   648920                 mov     fs:[eax], esp
00642925   33C0                   xor     eax, eax
00642927   55                     push    ebp
00642928   689B296400             push    $0064299B

***** TRY
|
0064292D   64FF30                 push    dword ptr fs:[eax]
00642930   648920                 mov     fs:[eax], esp
00642933   33C9                   xor     ecx, ecx
00642935   8A55FF                 mov     dl, byte ptr [ebp-$01]
00642938   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B91FC()
|
0064293D   E8BA681700             call    007B91FC
00642942   33C9                   xor     ecx, ecx
00642944   8A55FF                 mov     dl, byte ptr [ebp-$01]
00642947   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B91FC()
|
0064294C   E8AB681700             call    007B91FC
00642951   33C9                   xor     ecx, ecx
00642953   8A55FF                 mov     dl, byte ptr [ebp-$01]
00642956   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to : tArrayTable._PROC_007B91FC()
|
0064295B   E89C681700             call    007B91FC
00642960   33C9                   xor     ecx, ecx
00642962   8A55FF                 mov     dl, byte ptr [ebp-$01]
00642965   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B91FC()
|
0064296A   E88D681700             call    007B91FC
0064296F   33C9                   xor     ecx, ecx
00642971   8A55FF                 mov     dl, byte ptr [ebp-$01]
00642974   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B91FC()
|
00642979   E87E681700             call    007B91FC
0064297E   33C9                   xor     ecx, ecx
00642980   8A55FF                 mov     dl, byte ptr [ebp-$01]
00642983   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to : tArrayTable._PROC_007B91FC()
|
00642988   E86F681700             call    007B91FC
0064298D   C645FE01               mov     byte ptr [ebp-$02], $01
00642991   33C0                   xor     eax, eax
00642993   5A                     pop     edx
00642994   59                     pop     ecx
00642995   59                     pop     ecx
00642996   648910                 mov     fs:[eax], edx
00642999   EB3B                   jmp     006429D6

* Reference to: System.@HandleOnException;
|
0064299B   E91022DCFF             jmp     00404BB0
006429A0   0100                   add     [eax], eax
006429A2   0000                   add     [eax], al
006429A4   40                     inc     eax
006429A5   95                     xchg    eax, ebp
006429A6   40                     inc     eax
006429A7   00AC29640089C3         add     [ecx+ebp+$C3890064], ch
006429AE   6A00                   push    $00
006429B0   8B4B04                 mov     ecx, [ebx+$04]
006429B3   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Erro mGravaProdutos!'
|
006429B6   BA1C2A6400             mov     edx, $00642A1C

* Reference to: System.@LStrCat3;
|
006429BB   E8E82DDCFF             call    004057A8
006429C0   8B45F8                 mov     eax, [ebp-$08]
006429C3   668B0D342A6400         mov     cx, word ptr [$00642A34]
006429CA   B201                   mov     dl, $01

|
006429CC   E85B11E0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006429D1   E8DA24DCFF             call    00404EB0

****** END
|
006429D6   33C0                   xor     eax, eax
006429D8   5A                     pop     edx
006429D9   59                     pop     ecx
006429DA   59                     pop     ecx
006429DB   648910                 mov     fs:[eax], edx

****** FINALLY
|
006429DE   68EB296400             push    $006429EB
006429E3   C3                     ret


* Reference to: System.@HandleFinally;
|
006429E4   E94F23DCFF             jmp     00404D38
006429E9   EBF8                   jmp     006429E3

****** END
|
006429EB   33C0                   xor     eax, eax
006429ED   5A                     pop     edx
006429EE   59                     pop     ecx
006429EF   59                     pop     ecx
006429F0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEþ_^[YY]Ã'
|
006429F3   68082A6400             push    $00642A08
006429F8   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
006429FB   E89C2ADCFF             call    0040549C
00642A00   C3                     ret


* Reference to: System.@HandleFinally;
|
00642A01   E93223DCFF             jmp     00404D38
00642A06   EBF0                   jmp     006429F8

****** END
|
00642A08   8A45FE                 mov     al, byte ptr [ebp-$02]
00642A0B   5F                     pop     edi
00642A0C   5E                     pop     esi
00642A0D   5B                     pop     ebx
00642A0E   59                     pop     ecx
00642A0F   59                     pop     ecx
00642A10   5D                     pop     ebp
00642A11   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00642A01(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00642A01   E93223DCFF             jmp     00404D38

|
00642A06   EBF0                   jmp     006429F8
00642A08   8A45FE                 mov     al, byte ptr [ebp-$02]
00642A0B   5F                     pop     edi
00642A0C   5E                     pop     esi
00642A0D   5B                     pop     ebx
00642A0E   59                     pop     ecx
00642A0F   59                     pop     ecx
00642A10   5D                     pop     ebp
00642A11   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00642A39(Sender : TObject);
begin
(*
00642A39   8BEC                   mov     ebp, esp
00642A3B   51                     push    ecx
00642A3C   B90C000000             mov     ecx, $0000000C
00642A41   6A00                   push    $00
00642A43   6A00                   push    $00
00642A45   49                     dec     ecx
00642A46   75F9                   jnz     00642A41
00642A48   51                     push    ecx
00642A49   874DFC                 xchg    [ebp-$04], ecx
00642A4C   53                     push    ebx
00642A4D   56                     push    esi
00642A4E   57                     push    edi
00642A4F   894DF8                 mov     [ebp-$08], ecx
00642A52   8955FC                 mov     [ebp-$04], edx
00642A55   8BF0                   mov     esi, eax
00642A57   8B5D08                 mov     ebx, [ebp+$08]
00642A5A   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00642A5D   E8EA2EDCFF             call    0040594C
00642A62   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00642A65   E8E22EDCFF             call    0040594C
00642A6A   33C0                   xor     eax, eax
00642A6C   55                     push    ebp
00642A6D   685B2F6400             push    $00642F5B

***** TRY
|
00642A72   64FF30                 push    dword ptr fs:[eax]
00642A75   648920                 mov     fs:[eax], esp
00642A78   C645F700               mov     byte ptr [ebp-$09], $00
00642A7C   33C0                   xor     eax, eax
00642A7E   55                     push    ebp
00642A7F   68FD2E6400             push    $00642EFD

***** TRY
|
00642A84   64FF30                 push    dword ptr fs:[eax]
00642A87   648920                 mov     fs:[eax], esp
00642A8A   33C0                   xor     eax, eax
00642A8C   55                     push    ebp
00642A8D   68A62E6400             push    $00642EA6

***** TRY
|
00642A92   64FF30                 push    dword ptr fs:[eax]
00642A95   648920                 mov     fs:[eax], esp

|
00642A98   E89FFCFFFF             call    0064273C
00642A9D   837DFC00               cmp     dword ptr [ebp-$04], +$00
00642AA1   7425                   jz      00642AC8
00642AA3   6A00                   push    $00
00642AA5   8D45F0                 lea     eax, [ebp-$10]
00642AA8   50                     push    eax
00642AA9   8B45FC                 mov     eax, [ebp-$04]
00642AAC   8945EC                 mov     [ebp-$14], eax
00642AAF   8D45EC                 lea     eax, [ebp-$14]
00642AB2   50                     push    eax

* Possible String Reference to: 'CODPROD'
|
00642AB3   B8782F6400             mov     eax, $00642F78
00642AB8   8945E8                 mov     [ebp-$18], eax
00642ABB   8D45E8                 lea     eax, [ebp-$18]
00642ABE   33D2                   xor     edx, edx
00642AC0   59                     pop     ecx

|
00642AC1   E8FAD31600             call    007AFEC0
00642AC6   EB0D                   jmp     00642AD5
00642AC8   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: '(CODPROD IS NOT NULL)'
|
00642ACB   BA882F6400             mov     edx, $00642F88

* Reference to: System.@LStrLAsg(void;void;void;void);
|
00642AD0   E85F2ADCFF             call    00405534
00642AD5   F6C301                 test    bl, $01
00642AD8   7509                   jnz     00642AE3
00642ADA   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642ADF   3AC3                   cmp     al, bl
00642AE1   7533                   jnz     00642B16
00642AE3   8B45F0                 mov     eax, [ebp-$10]
00642AE6   50                     push    eax

* Possible String Reference to: 'CODPROD'
|
00642AE7   68782F6400             push    $00642F78

* Possible String Reference to: 'CODPROD'
|
00642AEC   B8782F6400             mov     eax, $00642F78
00642AF1   8945EC                 mov     [ebp-$14], eax
00642AF4   8D45EC                 lea     eax, [ebp-$14]
00642AF7   50                     push    eax
00642AF8   6A00                   push    $00
00642AFA   6A01                   push    $01
00642AFC   8BC6                   mov     eax, esi

|
00642AFE   E8C9581600             call    007A83CC
00642B03   8BD0                   mov     edx, eax

* Possible String Reference to: 'PRODUTOS'
|
00642B05   B9AC2F6400             mov     ecx, $00642FAC
00642B0A   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to : tArrayTable._PROC_007B8E10()
|
00642B0F   E8FC621700             call    007B8E10
00642B14   84C0                   test    al, al
00642B16   F6C302                 test    bl, $02
00642B19   750D                   jnz     00642B28
00642B1B   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642B20   3AC3                   cmp     al, bl
00642B22   0F8590000000           jnz     00642BB8
00642B28   FF75F0                 push    dword ptr [ebp-$10]

* Possible String Reference to: ' AND (FILIAL = '
|
00642B2B   68C02F6400             push    $00642FC0
00642B30   8D55E0                 lea     edx, [ebp-$20]
00642B33   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00642B36   E8E50F1600             call    007A3B20
00642B3B   FF75E0                 push    dword ptr [ebp-$20]
00642B3E   68D82F6400             push    $00642FD8
00642B43   8D45E4                 lea     eax, [ebp-$1C]
00642B46   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
00642B4B   E8CC2CDCFF             call    0040581C
00642B50   8B45E4                 mov     eax, [ebp-$1C]
00642B53   50                     push    eax

* Possible String Reference to: 'CODPROD,FILIAL'
|
00642B54   68E42F6400             push    $00642FE4

* Possible String Reference to: 'CODPROD'
|
00642B59   B8782F6400             mov     eax, $00642F78
00642B5E   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'FILIAL'
|
00642B61   B8FC2F6400             mov     eax, $00642FFC
00642B66   8945DC                 mov     [ebp-$24], eax
00642B69   8D45D8                 lea     eax, [ebp-$28]
00642B6C   50                     push    eax
00642B6D   6A01                   push    $01
00642B6F   6A01                   push    $01
00642B71   8BC6                   mov     eax, esi

|
00642B73   E854581600             call    007A83CC
00642B78   8BD0                   mov     edx, eax

* Possible String Reference to: 'PRODFILI'
|
00642B7A   B90C306400             mov     ecx, $0064300C
00642B7F   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B8E10()
|
00642B84   E887621700             call    007B8E10
00642B89   84C0                   test    al, al
00642B8B   742B                   jz      00642BB8
00642B8D   F6C301                 test    bl, $01
00642B90   7509                   jnz     00642B9B
00642B92   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642B97   3AC3                   cmp     al, bl
00642B99   751D                   jnz     00642BB8
00642B9B   6A00                   push    $00

* Possible String Reference to: 'CODPROD'
|
00642B9D   B8782F6400             mov     eax, $00642F78
00642BA2   8945EC                 mov     [ebp-$14], eax
00642BA5   8D4DEC                 lea     ecx, [ebp-$14]
00642BA8   8B156CDD7D00           mov     edx, [$007DDD6C]
00642BAE   A170DD7D00             mov     eax, dword ptr [$007DDD70]

|
00642BB3   E8B0731700             call    007B9F68
00642BB8   F6C304                 test    bl, $04
00642BBB   750D                   jnz     00642BCA
00642BBD   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642BC2   3AC3                   cmp     al, bl
00642BC4   0F85A0000000           jnz     00642C6A
00642BCA   FF75F0                 push    dword ptr [ebp-$10]

* Possible String Reference to: ' AND (FILIAL = '
|
00642BCD   68C02F6400             push    $00642FC0
00642BD2   8D55D0                 lea     edx, [ebp-$30]
00642BD5   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00642BD8   E8430F1600             call    007A3B20
00642BDD   FF75D0                 push    dword ptr [ebp-$30]
00642BE0   68D82F6400             push    $00642FD8
00642BE5   8D45D4                 lea     eax, [ebp-$2C]
00642BE8   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
00642BED   E82A2CDCFF             call    0040581C
00642BF2   8B45D4                 mov     eax, [ebp-$2C]
00642BF5   50                     push    eax

* Possible String Reference to: 'CODPROD,FILIAL,ANOMES'
|
00642BF6   6820306400             push    $00643020

* Possible String Reference to: 'CODPROD'
|
00642BFB   B8782F6400             mov     eax, $00642F78
00642C00   8945C4                 mov     [ebp-$3C], eax

* Possible String Reference to: 'FILIAL'
|
00642C03   B8FC2F6400             mov     eax, $00642FFC
00642C08   8945C8                 mov     [ebp-$38], eax

* Possible String Reference to: 'ANOMES'
|
00642C0B   B840306400             mov     eax, $00643040
00642C10   8945CC                 mov     [ebp-$34], eax
00642C13   8D45C4                 lea     eax, [ebp-$3C]
00642C16   50                     push    eax
00642C17   6A02                   push    $02
00642C19   6A01                   push    $01
00642C1B   8BC6                   mov     eax, esi

|
00642C1D   E8AA571600             call    007A83CC
00642C22   8BD0                   mov     edx, eax

* Possible String Reference to: 'PRODSALD'
|
00642C24   B950306400             mov     ecx, $00643050
00642C29   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B8E10()
|
00642C2E   E8DD611700             call    007B8E10
00642C33   84C0                   test    al, al
00642C35   7433                   jz      00642C6A
00642C37   F6C302                 test    bl, $02
00642C3A   7509                   jnz     00642C45
00642C3C   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642C41   3AC3                   cmp     al, bl
00642C43   7525                   jnz     00642C6A
00642C45   6A01                   push    $01

* Possible String Reference to: 'CODPROD'
|
00642C47   B8782F6400             mov     eax, $00642F78
00642C4C   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'FILIAL'
|
00642C4F   B8FC2F6400             mov     eax, $00642FFC
00642C54   8945DC                 mov     [ebp-$24], eax
00642C57   8D4DD8                 lea     ecx, [ebp-$28]
00642C5A   8B1570DD7D00           mov     edx, [$007DDD70]
00642C60   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
00642C65   E8FE721700             call    007B9F68
00642C6A   F6C308                 test    bl, $08
00642C6D   750D                   jnz     00642C7C
00642C6F   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642C74   3AC3                   cmp     al, bl
00642C76   0F85A0000000           jnz     00642D1C
00642C7C   FF75F0                 push    dword ptr [ebp-$10]

* Possible String Reference to: ' AND (FILIAL = '
|
00642C7F   68C02F6400             push    $00642FC0
00642C84   8D55BC                 lea     edx, [ebp-$44]
00642C87   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00642C8A   E8910E1600             call    007A3B20
00642C8F   FF75BC                 push    dword ptr [ebp-$44]
00642C92   68D82F6400             push    $00642FD8
00642C97   8D45C0                 lea     eax, [ebp-$40]
00642C9A   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
00642C9F   E8782BDCFF             call    0040581C
00642CA4   8B45C0                 mov     eax, [ebp-$40]
00642CA7   50                     push    eax

* Possible String Reference to: 'CODPROD,FILIAL,CODSUBLOCAL'
|
00642CA8   6864306400             push    $00643064

* Possible String Reference to: 'CODPROD'
|
00642CAD   B8782F6400             mov     eax, $00642F78
00642CB2   8945C4                 mov     [ebp-$3C], eax

* Possible String Reference to: 'FILIAL'
|
00642CB5   B8FC2F6400             mov     eax, $00642FFC
00642CBA   8945C8                 mov     [ebp-$38], eax

* Possible String Reference to: 'CODSUBLOCAL'
|
00642CBD   B888306400             mov     eax, $00643088
00642CC2   8945CC                 mov     [ebp-$34], eax
00642CC5   8D45C4                 lea     eax, [ebp-$3C]
00642CC8   50                     push    eax
00642CC9   6A02                   push    $02
00642CCB   6A01                   push    $01
00642CCD   8BC6                   mov     eax, esi

|
00642CCF   E8F8561600             call    007A83CC
00642CD4   8BD0                   mov     edx, eax

* Possible String Reference to: 'PRODLOC'
|
00642CD6   B99C306400             mov     ecx, $0064309C
00642CDB   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8E10()
|
00642CE0   E82B611700             call    007B8E10
00642CE5   84C0                   test    al, al
00642CE7   7433                   jz      00642D1C
00642CE9   F6C302                 test    bl, $02
00642CEC   7509                   jnz     00642CF7
00642CEE   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642CF3   3AC3                   cmp     al, bl
00642CF5   7525                   jnz     00642D1C
00642CF7   6A01                   push    $01

* Possible String Reference to: 'CODPROD'
|
00642CF9   B8782F6400             mov     eax, $00642F78
00642CFE   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'FILIAL'
|
00642D01   B8FC2F6400             mov     eax, $00642FFC
00642D06   8945DC                 mov     [ebp-$24], eax
00642D09   8D4DD8                 lea     ecx, [ebp-$28]
00642D0C   8B1570DD7D00           mov     edx, [$007DDD70]
00642D12   A178DD7D00             mov     eax, dword ptr [$007DDD78]

|
00642D17   E84C721700             call    007B9F68
00642D1C   F6C310                 test    bl, $10
00642D1F   750D                   jnz     00642D2E
00642D21   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642D26   3AC3                   cmp     al, bl
00642D28   0F85B0000000           jnz     00642DDE
00642D2E   FF75F0                 push    dword ptr [ebp-$10]

* Possible String Reference to: ' AND (FILIAL = '
|
00642D31   68C02F6400             push    $00642FC0
00642D36   8D55B4                 lea     edx, [ebp-$4C]
00642D39   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00642D3C   E8DF0D1600             call    007A3B20
00642D41   FF75B4                 push    dword ptr [ebp-$4C]
00642D44   68D82F6400             push    $00642FD8
00642D49   8D45B8                 lea     eax, [ebp-$48]
00642D4C   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
00642D51   E8C62ADCFF             call    0040581C
00642D56   8B45B8                 mov     eax, [ebp-$48]
00642D59   50                     push    eax

* Possible String Reference to: 'CODPROD,FILIAL,CODSUBLOCAL,ANOMES'
|
00642D5A   68AC306400             push    $006430AC

* Possible String Reference to: 'CODPROD'
|
00642D5F   B8782F6400             mov     eax, $00642F78
00642D64   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'FILIAL'
|
00642D67   B8FC2F6400             mov     eax, $00642FFC
00642D6C   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'CODSUBLOCAL'
|
00642D6F   B888306400             mov     eax, $00643088
00642D74   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'ANOMES'
|
00642D77   B840306400             mov     eax, $00643040
00642D7C   8945B0                 mov     [ebp-$50], eax
00642D7F   8D45A4                 lea     eax, [ebp-$5C]
00642D82   50                     push    eax
00642D83   6A03                   push    $03
00642D85   6A01                   push    $01
00642D87   8BC6                   mov     eax, esi

|
00642D89   E83E561600             call    007A83CC
00642D8E   8BD0                   mov     edx, eax

* Possible String Reference to: 'PRODSLOC'
|
00642D90   B9D8306400             mov     ecx, $006430D8
00642D95   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B8E10()
|
00642D9A   E871601700             call    007B8E10
00642D9F   84C0                   test    al, al
00642DA1   743B                   jz      00642DDE
00642DA3   F6C308                 test    bl, $08
00642DA6   7509                   jnz     00642DB1
00642DA8   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642DAD   3AC3                   cmp     al, bl
00642DAF   752D                   jnz     00642DDE
00642DB1   6A02                   push    $02

* Possible String Reference to: 'CODPROD'
|
00642DB3   B8782F6400             mov     eax, $00642F78
00642DB8   8945C4                 mov     [ebp-$3C], eax

* Possible String Reference to: 'FILIAL'
|
00642DBB   B8FC2F6400             mov     eax, $00642FFC
00642DC0   8945C8                 mov     [ebp-$38], eax

* Possible String Reference to: 'CODSUBLOCAL'
|
00642DC3   B888306400             mov     eax, $00643088
00642DC8   8945CC                 mov     [ebp-$34], eax
00642DCB   8D4DC4                 lea     ecx, [ebp-$3C]
00642DCE   8B1578DD7D00           mov     edx, [$007DDD78]
00642DD4   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00642DD9   E88A711700             call    007B9F68
00642DDE   F6C320                 test    bl, $20
00642DE1   750D                   jnz     00642DF0
00642DE3   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642DE8   3AC3                   cmp     al, bl
00642DEA   0F85A8000000           jnz     00642E98
00642DF0   FF75F0                 push    dword ptr [ebp-$10]

* Possible String Reference to: ' AND (FILIAL = '
|
00642DF3   68C02F6400             push    $00642FC0
00642DF8   8D559C                 lea     edx, [ebp-$64]
00642DFB   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00642DFE   E81D0D1600             call    007A3B20
00642E03   FF759C                 push    dword ptr [ebp-$64]
00642E06   68D82F6400             push    $00642FD8
00642E0B   8D45A0                 lea     eax, [ebp-$60]
00642E0E   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
00642E13   E8042ADCFF             call    0040581C
00642E18   8B45A0                 mov     eax, [ebp-$60]
00642E1B   50                     push    eax

* Possible String Reference to: 'CODPROD,FILIAL,LINHA,COLUNA'
|
00642E1C   68EC306400             push    $006430EC

* Possible String Reference to: 'CODPROD'
|
00642E21   B8782F6400             mov     eax, $00642F78
00642E26   8945A4                 mov     [ebp-$5C], eax

* Possible String Reference to: 'FILIAL'
|
00642E29   B8FC2F6400             mov     eax, $00642FFC
00642E2E   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'LINHA'
|
00642E31   B810316400             mov     eax, $00643110
00642E36   8945AC                 mov     [ebp-$54], eax

* Possible String Reference to: 'COLUNA'
|
00642E39   B820316400             mov     eax, $00643120
00642E3E   8945B0                 mov     [ebp-$50], eax
00642E41   8D45A4                 lea     eax, [ebp-$5C]
00642E44   50                     push    eax
00642E45   6A03                   push    $03
00642E47   6A01                   push    $01
00642E49   8BC6                   mov     eax, esi

|
00642E4B   E87C551600             call    007A83CC
00642E50   8BD0                   mov     edx, eax

* Possible String Reference to: 'PRODGRAD'
|
00642E52   B930316400             mov     ecx, $00643130
00642E57   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to : tArrayTable._PROC_007B8E10()
|
00642E5C   E8AF5F1700             call    007B8E10
00642E61   84C0                   test    al, al
00642E63   7433                   jz      00642E98
00642E65   F6C302                 test    bl, $02
00642E68   7509                   jnz     00642E73
00642E6A   A0A02F6400             mov     al, byte ptr [$00642FA0]
00642E6F   3AC3                   cmp     al, bl
00642E71   7525                   jnz     00642E98
00642E73   6A01                   push    $01

* Possible String Reference to: 'CODPROD'
|
00642E75   B8782F6400             mov     eax, $00642F78
00642E7A   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'FILIAL'
|
00642E7D   B8FC2F6400             mov     eax, $00642FFC
00642E82   8945DC                 mov     [ebp-$24], eax
00642E85   8D4DD8                 lea     ecx, [ebp-$28]
00642E88   8B1570DD7D00           mov     edx, [$007DDD70]
00642E8E   A180DD7D00             mov     eax, dword ptr [$007DDD80]

|
00642E93   E8D0701700             call    007B9F68
00642E98   C645F701               mov     byte ptr [ebp-$09], $01
00642E9C   33C0                   xor     eax, eax
00642E9E   5A                     pop     edx
00642E9F   59                     pop     ecx
00642EA0   59                     pop     ecx
00642EA1   648910                 mov     fs:[eax], edx
00642EA4   EB49                   jmp     00642EEF

* Reference to: System.@HandleOnException;
|
00642EA6   E9051DDCFF             jmp     00404BB0
00642EAB   0100                   add     [eax], eax
00642EAD   0000                   add     [eax], al
00642EAF   40                     inc     eax
00642EB0   95                     xchg    eax, ebp
00642EB1   40                     inc     eax
00642EB2   00B72E640089           add     [edi+$8900642E], dh
00642EB8   C3                     ret

00642EB9   A168B67D00             mov     eax, dword ptr [$007DB668]
00642EBE   8B00                   mov     eax, [eax]
00642EC0   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
00642EC2   E8650EE7FF             call    004B3D2C
00642EC7   6A00                   push    $00
00642EC9   8B4B04                 mov     ecx, [ebx+$04]
00642ECC   8D4598                 lea     eax, [ebp-$68]

* Possible String Reference to: 'Erro ao carregar mProdutos!'
|
00642ECF   BA44316400             mov     edx, $00643144

* Reference to: System.@LStrCat3;
|
00642ED4   E8CF28DCFF             call    004057A8
00642ED9   8B4598                 mov     eax, [ebp-$68]
00642EDC   668B0D64316400         mov     cx, word ptr [$00643164]
00642EE3   B201                   mov     dl, $01

|
00642EE5   E8420CE0FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00642EEA   E8C11FDCFF             call    00404EB0

****** END
|
00642EEF   33C0                   xor     eax, eax
00642EF1   5A                     pop     edx
00642EF2   59                     pop     ecx
00642EF3   59                     pop     ecx
00642EF4   648910                 mov     fs:[eax], edx

****** FINALLY
|
00642EF7   68042F6400             push    $00642F04
00642EFC   C3                     ret


* Reference to: System.@HandleFinally;
|
00642EFD   E9361EDCFF             jmp     00404D38
00642F02   EBF8                   jmp     00642EFC

****** END
|
00642F04   33C0                   xor     eax, eax
00642F06   5A                     pop     edx
00642F07   59                     pop     ecx
00642F08   59                     pop     ecx
00642F09   648910                 mov     fs:[eax], edx

****** FINALLY
|
00642F0C   68622F6400             push    $00642F62
00642F11   8D4598                 lea     eax, [ebp-$68]
00642F14   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00642F19   E8A225DCFF             call    004054C0
00642F1E   8D45B4                 lea     eax, [ebp-$4C]
00642F21   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00642F26   E89525DCFF             call    004054C0
00642F2B   8D45D0                 lea     eax, [ebp-$30]
00642F2E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00642F33   E88825DCFF             call    004054C0
00642F38   8D45E0                 lea     eax, [ebp-$20]
00642F3B   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00642F40   E87B25DCFF             call    004054C0
00642F45   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
00642F48   E84F25DCFF             call    0040549C
00642F4D   8D45F8                 lea     eax, [ebp-$08]
00642F50   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00642F55   E86625DCFF             call    004054C0
00642F5A   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00642F5B(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00642F5B   E9D81DDCFF             jmp     00404D38

|
00642F60   EBAF                   jmp     00642F11
00642F62   8A45F7                 mov     al, byte ptr [ebp-$09]
00642F65   5F                     pop     edi
00642F66   5E                     pop     esi
00642F67   5B                     pop     ebx
00642F68   8BE5                   mov     esp, ebp
00642F6A   5D                     pop     ebp
00642F6B   C20400                 ret     $0004

*)
end;

procedure TFrmF2SubLocal._PROC_00642F9A(Sender : TObject);
begin
(*
00642F9A   4C                     dec     esp
00642F9B   4C                     dec     esp
00642F9C   2900                   sub     dword ptr [eax], eax
00642F9E   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00642FB1(Sender : TObject);
begin
(*
00642FB1   54                     push    esp
00642FB2   4F                     dec     edi
00642FB3   53                     push    ebx
00642FB4   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00643078(Sender : TObject);
begin
(*
00643078   42                     inc     edx
00643079   4C                     dec     esp
0064307A   4F                     dec     edi
0064307B   43                     inc     ebx
0064307C   41                     inc     ecx
0064307D   4C                     dec     esp
0064307E   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0064308D(Sender : TObject);
begin
(*
0064308D   42                     inc     edx
0064308E   4C                     dec     esp
0064308F   4F                     dec     edi
00643090   43                     inc     ebx
00643091   41                     inc     ecx
00643092   4C                     dec     esp
00643093   00FF                   add     bh, bh
00643095   FFFF                   DB  $FF, $FF  //      
00643097   FF07                   inc     dword ptr [edi]
00643099   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006430C0(Sender : TObject);
begin
(*
006430C0   42                     inc     edx
006430C1   4C                     dec     esp
006430C2   4F                     dec     edi
006430C3   43                     inc     ebx
006430C4   41                     inc     ecx
006430C5   4C                     dec     esp
006430C6   2C41                   sub     al, $41
006430C8   4E                     dec     esi
006430C9   4F                     dec     edi
006430CA   4D                     dec     ebp
006430CB   45                     inc     ebp
006430CC   53                     push    ebx
006430CD   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00643105(Sender : TObject);
begin
(*
00643105   4E                     dec     esi
00643106   41                     inc     ecx
00643107   00FF                   add     bh, bh
00643109   FFFF                   DB  $FF, $FF  //      
0064310B   FF050000004C           inc     dword ptr [$4C000000]
00643111   49                     dec     ecx
00643112   4E                     dec     esi
00643113   48                     dec     eax
00643114   41                     inc     ecx
00643115   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00643124(Sender : TObject);
begin
(*
00643124   4E                     dec     esi
00643125   41                     inc     ecx
00643126   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00643169(Sender : TObject);
begin
(*
00643169   8BEC                   mov     ebp, esp
0064316B   83C4EC                 add     esp, -$14
0064316E   53                     push    ebx
0064316F   56                     push    esi
00643170   57                     push    edi
00643171   33DB                   xor     ebx, ebx
00643173   895DEC                 mov     [ebp-$14], ebx
00643176   894DF4                 mov     [ebp-$0C], ecx
00643179   8955F8                 mov     [ebp-$08], edx
0064317C   8945FC                 mov     [ebp-$04], eax
0064317F   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00643182   E8C527DCFF             call    0040594C
00643187   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064318A   E8BD27DCFF             call    0040594C
0064318F   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00643192   E8B527DCFF             call    0040594C
00643197   8B4534                 mov     eax, [ebp+$34]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064319A   E8AD27DCFF             call    0040594C
0064319F   8B4530                 mov     eax, [ebp+$30]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006431A2   E8A527DCFF             call    0040594C
006431A7   8B452C                 mov     eax, [ebp+$2C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006431AA   E89D27DCFF             call    0040594C
006431AF   33C0                   xor     eax, eax
006431B1   55                     push    ebp
006431B2   684F336400             push    $0064334F

***** TRY
|
006431B7   64FF30                 push    dword ptr fs:[eax]
006431BA   648920                 mov     fs:[eax], esp
006431BD   C645F300               mov     byte ptr [ebp-$0D], $00
006431C1   33C0                   xor     eax, eax
006431C3   55                     push    ebp
006431C4   6818336400             push    $00643318

***** TRY
|
006431C9   64FF30                 push    dword ptr fs:[eax]
006431CC   648920                 mov     fs:[eax], esp
006431CF   33C0                   xor     eax, eax
006431D1   55                     push    ebp
006431D2   6800336400             push    $00643300

***** TRY
|
006431D7   64FF30                 push    dword ptr fs:[eax]
006431DA   648920                 mov     fs:[eax], esp
006431DD   8B45F8                 mov     eax, [ebp-$08]

|
006431E0   E8E3E31600             call    007B15C8
006431E5   84C0                   test    al, al
006431E7   0F8409010000           jz      006432F6
006431ED   837DF400               cmp     dword ptr [ebp-$0C], +$00
006431F1   7410                   jz      00643203
006431F3   8B45F4                 mov     eax, [ebp-$0C]

|
006431F6   E82DD71600             call    007B0928
006431FB   84C0                   test    al, al
006431FD   0F84F3000000           jz      006432F6
00643203   8B45FC                 mov     eax, [ebp-$04]
00643206   BA6C336400             mov     edx, $0064336C

* Reference to: System.@LStrCmp;
|
0064320B   E89826DCFF             call    004058A8
00643210   7540                   jnz     00643252
00643212   8B4534                 mov     eax, [ebp+$34]

|
00643215   E846D51600             call    007B0760
0064321A   8845F3                 mov     [ebp-$0D], al
0064321D   807DF300               cmp     byte ptr [ebp-$0D], $00
00643221   753C                   jnz     0064325F
00643223   6A00                   push    $00

* Possible String Reference to: 'Atenção!O C.G.C. do Cliente ('
|
00643225   6878336400             push    $00643378
0064322A   FF7534                 push    dword ptr [ebp+$34]

* Possible String Reference to: ') não foi localizado! Os impostos s
|                                obre o item não podem ser calculado
|                                s!'
|
0064322D   68A0336400             push    $006433A0
00643232   8D45EC                 lea     eax, [ebp-$14]
00643235   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0064323A   E8DD25DCFF             call    0040581C
0064323F   8B45EC                 mov     eax, [ebp-$14]
00643242   668B0DEC336400         mov     cx, word ptr [$006433EC]
00643249   33D2                   xor     edx, edx

|
0064324B   E8DC08E0FF             call    00443B2C
00643250   EB0D                   jmp     0064325F
00643252   8B45FC                 mov     eax, [ebp-$04]
00643255   BAF8336400             mov     edx, $006433F8

* Reference to: System.@LStrCmp;
|
0064325A   E84926DCFF             call    004058A8
0064325F   807DF300               cmp     byte ptr [ebp-$0D], $00
00643263   0F848D000000           jz      006432F6
00643269   A164A07D00             mov     eax, dword ptr [$007DA064]
0064326E   8B00                   mov     eax, [eax]

* Possible String Reference to: 'D0-D1-D2-D3'
|
00643270   BA04346400             mov     edx, $00643404

* Reference to: System.@LStrPos;
|
00643275   E82628DCFF             call    00405AA0
0064327A   85C0                   test    eax, eax
0064327C   7578                   jnz     006432F6
0064327E   8B452C                 mov     eax, [ebp+$2C]

|
00643281   E82ADE1600             call    007B10B0
00643286   84C0                   test    al, al
00643288   746C                   jz      006432F6
0064328A   837D3000               cmp     dword ptr [ebp+$30], +$00
0064328E   7515                   jnz     006432A5
00643290   8D5530                 lea     edx, [ebp+$30]
00643293   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00643298   8B00                   mov     eax, [eax]
0064329A   8B80B0040000           mov     eax, [eax+$04B0]
006432A0   8B08                   mov     ecx, [eax]
006432A2   FF5160                 call    dword ptr [ecx+$60]
006432A5   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006432AA   8B00                   mov     eax, [eax]
006432AC   8B8068090000           mov     eax, [eax+$0968]
006432B2   8B10                   mov     edx, [eax]
006432B4   FF5244                 call    dword ptr [edx+$44]
006432B7   84C0                   test    al, al
006432B9   743B                   jz      006432F6
006432BB   668B4520               mov     ax, word ptr [ebp+$20]
006432BF   50                     push    eax
006432C0   FF751C                 push    dword ptr [ebp+$1C]
006432C3   FF7518                 push    dword ptr [ebp+$18]
006432C6   668B4514               mov     ax, word ptr [ebp+$14]
006432CA   50                     push    eax
006432CB   FF7510                 push    dword ptr [ebp+$10]
006432CE   FF750C                 push    dword ptr [ebp+$0C]
006432D1   8B45F4                 mov     eax, [ebp-$0C]
006432D4   50                     push    eax
006432D5   8B4534                 mov     eax, [ebp+$34]
006432D8   50                     push    eax
006432D9   8B4530                 mov     eax, [ebp+$30]
006432DC   50                     push    eax
006432DD   8B452C                 mov     eax, [ebp+$2C]
006432E0   50                     push    eax
006432E1   8A4508                 mov     al, byte ptr [ebp+$08]
006432E4   50                     push    eax
006432E5   8B5528                 mov     edx, [ebp+$28]
006432E8   8B4524                 mov     eax, [ebp+$24]
006432EB   8B4DFC                 mov     ecx, [ebp-$04]

|
006432EE   E81D010000             call    00643410
006432F3   8845F3                 mov     [ebp-$0D], al
006432F6   33C0                   xor     eax, eax
006432F8   5A                     pop     edx
006432F9   59                     pop     ecx
006432FA   59                     pop     ecx
006432FB   648910                 mov     fs:[eax], edx
006432FE   EB0A                   jmp     0064330A

* Reference to: System.@HandleAnyException;
|
00643300   E97F17DCFF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
00643305   E8A61BDCFF             call    00404EB0

****** END
|
0064330A   33C0                   xor     eax, eax
0064330C   5A                     pop     edx
0064330D   59                     pop     ecx
0064330E   59                     pop     ecx
0064330F   648910                 mov     fs:[eax], edx

****** FINALLY
|
00643312   681F336400             push    $0064331F
00643317   C3                     ret


* Reference to: System.@HandleFinally;
|
00643318   E91B1ADCFF             jmp     00404D38
0064331D   EBF8                   jmp     00643317

****** END
|
0064331F   33C0                   xor     eax, eax
00643321   5A                     pop     edx
00643322   59                     pop     ecx
00643323   59                     pop     ecx
00643324   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEó_^[‹å]Â0'
|
00643327   6856336400             push    $00643356
0064332C   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
0064332F   E86821DCFF             call    0040549C
00643334   8D45F4                 lea     eax, [ebp-$0C]
00643337   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064333C   E87F21DCFF             call    004054C0
00643341   8D452C                 lea     eax, [ebp+$2C]
00643344   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00643349   E87221DCFF             call    004054C0
0064334E   C3                     ret


* Reference to: System.@HandleFinally;
|
0064334F   E9E419DCFF             jmp     00404D38
00643354   EBD6                   jmp     0064332C

****** END
|
00643356   8A45F3                 mov     al, byte ptr [ebp-$0D]
00643359   5F                     pop     edi
0064335A   5E                     pop     esi
0064335B   5B                     pop     ebx
0064335C   8BE5                   mov     esp, ebp
0064335E   5D                     pop     ebp
0064335F   C23000                 ret     $0030

*)
end;

procedure TFrmF2SubLocal._PROC_00643411(Sender : TObject);
begin
(*
00643411   8BEC                   mov     ebp, esp
00643413   81C45CFFFFFF           add     esp, $FFFFFF5C
00643419   53                     push    ebx
0064341A   56                     push    esi
0064341B   57                     push    edi
0064341C   33DB                   xor     ebx, ebx
0064341E   895D80                 mov     [ebp-$80], ebx
00643421   899D60FFFFFF           mov     [ebp+$FFFFFF60], ebx
00643427   899D64FFFFFF           mov     [ebp+$FFFFFF64], ebx
0064342D   899D68FFFFFF           mov     [ebp+$FFFFFF68], ebx
00643433   899D6CFFFFFF           mov     [ebp+$FFFFFF6C], ebx
00643439   895D84                 mov     [ebp-$7C], ebx
0064343C   895D88                 mov     [ebp-$78], ebx
0064343F   895D8C                 mov     [ebp-$74], ebx
00643442   895DF4                 mov     [ebp-$0C], ebx
00643445   895DF0                 mov     [ebp-$10], ebx
00643448   894DFC                 mov     [ebp-$04], ecx
0064344B   8BF2                   mov     esi, edx
0064344D   8BF8                   mov     edi, eax
0064344F   8B5D08                 mov     ebx, [ebp+$08]
00643452   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00643455   E8F224DCFF             call    0040594C
0064345A   8B4518                 mov     eax, [ebp+$18]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064345D   E8EA24DCFF             call    0040594C
00643462   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00643465   E8E224DCFF             call    0040594C
0064346A   8B4510                 mov     eax, [ebp+$10]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064346D   E8DA24DCFF             call    0040594C
00643472   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00643475   E8D224DCFF             call    0040594C
0064347A   33C0                   xor     eax, eax
0064347C   55                     push    ebp
0064347D   68D9396400             push    $006439D9

***** TRY
|
00643482   64FF30                 push    dword ptr fs:[eax]
00643485   648920                 mov     fs:[eax], esp
00643488   C645FB00               mov     byte ptr [ebp-$05], $00
0064348C   33D2                   xor     edx, edx
0064348E   55                     push    ebp
0064348F   688A396400             push    $0064398A

***** TRY
|
00643494   64FF32                 push    dword ptr fs:[edx]
00643497   648922                 mov     fs:[edx], esp
0064349A   33D2                   xor     edx, edx
0064349C   55                     push    ebp
0064349D   685E396400             push    $0064395E

***** TRY
|
006434A2   64FF32                 push    dword ptr fs:[edx]
006434A5   648922                 mov     fs:[edx], esp
006434A8   8D55F4                 lea     edx, [ebp-$0C]
006434AB   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006434B0   8B00                   mov     eax, [eax]
006434B2   8B8088030000           mov     eax, [eax+$0388]
006434B8   8B08                   mov     ecx, [eax]
006434BA   FF5160                 call    dword ptr [ecx+$60]
006434BD   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
006434C0   E8D71FDCFF             call    0040549C
006434C5   33C0                   xor     eax, eax
006434C7   8945B0                 mov     [ebp-$50], eax
006434CA   8945B4                 mov     [ebp-$4C], eax
006434CD   668945B8               mov     [ebp-$48], ax
006434D1   8B45FC                 mov     eax, [ebp-$04]
006434D4   BAF4396400             mov     edx, $006439F4

* Reference to: System.@LStrCmp;
|
006434D9   E8CA23DCFF             call    004058A8
006434DE   7511                   jnz     006434F1
006434E0   8B55F4                 mov     edx, [ebp-$0C]
006434E3   B8003A6400             mov     eax, $00643A00

* Reference to: System.@LStrPos;
|
006434E8   E8B325DCFF             call    00405AA0
006434ED   85C0                   test    eax, eax
006434EF   7F26                   jnle    00643517
006434F1   8B45FC                 mov     eax, [ebp-$04]
006434F4   BA0C3A6400             mov     edx, $00643A0C

* Reference to: System.@LStrCmp;
|
006434F9   E8AA23DCFF             call    004058A8
006434FE   0F850C010000           jnz     00643610
00643504   8B45F0                 mov     eax, [ebp-$10]
00643507   BA183A6400             mov     edx, $00643A18

* Reference to: System.@LStrCmp;
|
0064350C   E89723DCFF             call    004058A8
00643511   0F85F9000000           jnz     00643610
00643517   8D4590                 lea     eax, [ebp-$70]
0064351A   50                     push    eax
0064351B   8BCB                   mov     ecx, ebx
0064351D   8B55FC                 mov     edx, [ebp-$04]
00643520   8B4518                 mov     eax, [ebp+$18]

|
00643523   E834AD1600             call    007AE25C
00643528   8B4590                 mov     eax, [ebp-$70]
0064352B   8945E0                 mov     [ebp-$20], eax
0064352E   8B4594                 mov     eax, [ebp-$6C]
00643531   8945E4                 mov     [ebp-$1C], eax
00643534   668B4598               mov     ax, word ptr [ebp-$68]
00643538   668945E8               mov     [ebp-$18], ax
0064353C   DB6DE0                 fld     tbyte ptr [ebp-$20]
0064353F   D9051C3A6400           fld     dword ptr [$00643A1C]

* Reference to: System.@FSafeDivide;
|
00643545   E8B6FFDBFF             call    00403500
0064354A   DB6D28                 fld     tbyte ptr [ebp+$28]
0064354D   DEC9                   fmulp   st(1), st(0)
0064354F   83C4F8                 add     esp, -$08
00643552   DD1C24                 fstp    qword ptr [esp]
00643555   9B                     wait
00643556   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064355B   8B00                   mov     eax, [eax]
0064355D   8B806C020000           mov     eax, [eax+$026C]
00643563   8B10                   mov     edx, [eax]
00643565   FF5258                 call    dword ptr [edx+$58]

|
00643568   E897DD1500             call    007A1304
0064356D   DB7DC0                 fstp    tbyte ptr [ebp-$40]
00643570   9B                     wait
00643571   8B45C0                 mov     eax, [ebp-$40]
00643574   8945B0                 mov     [ebp-$50], eax
00643577   8B45C4                 mov     eax, [ebp-$3C]
0064357A   8945B4                 mov     [ebp-$4C], eax
0064357D   668B45C8               mov     ax, word ptr [ebp-$38]
00643581   668945B8               mov     [ebp-$48], ax
00643585   DB6DC0                 fld     tbyte ptr [ebp-$40]
00643588   D81D203A6400           fcomp   dword ptr [$00643A20]
0064358E   DFE0                   fstsw   ax
00643590   9E                     sahf
00643591   772B                   jnbe    006435BE
00643593   DB6DE0                 fld     tbyte ptr [ebp-$20]
00643596   D9051C3A6400           fld     dword ptr [$00643A1C]

* Reference to: System.@FSafeDivide;
|
0064359C   E85FFFDBFF             call    00403500
006435A1   DB6D28                 fld     tbyte ptr [ebp+$28]
006435A4   DEC9                   fmulp   st(1), st(0)
006435A6   DB7DC0                 fstp    tbyte ptr [ebp-$40]
006435A9   9B                     wait
006435AA   8B45C0                 mov     eax, [ebp-$40]
006435AD   8945B0                 mov     [ebp-$50], eax
006435B0   8B45C4                 mov     eax, [ebp-$3C]
006435B3   8945B4                 mov     [ebp-$4C], eax
006435B6   668B45C8               mov     ax, word ptr [ebp-$38]
006435BA   668945B8               mov     [ebp-$48], ax
006435BE   DB6DE0                 fld     tbyte ptr [ebp-$20]
006435C1   D81D203A6400           fcomp   dword ptr [$00643A20]
006435C7   DFE0                   fstsw   ax
006435C9   9E                     sahf
006435CA   750E                   jnz     006435DA
006435CC   8BC6                   mov     eax, esi

* Possible String Reference to: 'IPI'
|
006435CE   BA2C3A6400             mov     edx, $00643A2C

|
006435D3   E8D8060000             call    00643CB0
006435D8   EB42                   jmp     0064361C
006435DA   668B4530               mov     ax, word ptr [ebp+$30]
006435DE   50                     push    eax
006435DF   FF752C                 push    dword ptr [ebp+$2C]
006435E2   FF7528                 push    dword ptr [ebp+$28]
006435E5   668B45E8               mov     ax, word ptr [ebp-$18]
006435E9   50                     push    eax
006435EA   FF75E4                 push    dword ptr [ebp-$1C]
006435ED   FF75E0                 push    dword ptr [ebp-$20]
006435F0   668B45C8               mov     ax, word ptr [ebp-$38]
006435F4   50                     push    eax
006435F5   FF75C4                 push    dword ptr [ebp-$3C]
006435F8   FF75C0                 push    dword ptr [ebp-$40]
006435FB   8B4514                 mov     eax, [ebp+$14]
006435FE   50                     push    eax
006435FF   8BC6                   mov     eax, esi
00643601   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: 'IPI'
|
00643604   BA2C3A6400             mov     edx, $00643A2C

|
00643609   E882040000             call    00643A90
0064360E   EB0C                   jmp     0064361C
00643610   8BC6                   mov     eax, esi

* Possible String Reference to: 'IPI'
|
00643612   BA2C3A6400             mov     edx, $00643A2C

|
00643617   E894060000             call    00643CB0
0064361C   837D1000               cmp     dword ptr [ebp+$10], +$00
00643620   7515                   jnz     00643637
00643622   8D5510                 lea     edx, [ebp+$10]
00643625   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0064362A   8B00                   mov     eax, [eax]
0064362C   8B80B0040000           mov     eax, [eax+$04B0]
00643632   8B08                   mov     ecx, [eax]
00643634   FF5160                 call    dword ptr [ecx+$60]
00643637   8B55F4                 mov     edx, [ebp-$0C]
0064363A   B8003A6400             mov     eax, $00643A00

* Reference to: System.@LStrPos;
|
0064363F   E85C24DCFF             call    00405AA0
00643644   85C0                   test    eax, eax
00643646   7F15                   jnle    0064365D
00643648   8B55F4                 mov     edx, [ebp-$0C]
0064364B   B8383A6400             mov     eax, $00643A38

* Reference to: System.@LStrPos;
|
00643650   E84B24DCFF             call    00405AA0
00643655   85C0                   test    eax, eax
00643657   0F8E56020000           jle     006438B3
0064365D   8B4510                 mov     eax, [ebp+$10]

* Reference to : TFrmInfoAtu._PROC_007AF18C()
|
00643660   E827BB1600             call    007AF18C
00643665   84C0                   test    al, al
00643667   0F8446020000           jz      006438B3
0064366D   53                     push    ebx
0064366E   8D4590                 lea     eax, [ebp-$70]
00643671   50                     push    eax
00643672   8B4D18                 mov     ecx, [ebp+$18]
00643675   8B5514                 mov     edx, [ebp+$14]
00643678   8B45FC                 mov     eax, [ebp-$04]

|
0064367B   E834B71600             call    007AEDB4
00643680   8B4590                 mov     eax, [ebp-$70]
00643683   8945E0                 mov     [ebp-$20], eax
00643686   8B4594                 mov     eax, [ebp-$6C]
00643689   8945E4                 mov     [ebp-$1C], eax
0064368C   668B4598               mov     ax, word ptr [ebp-$68]
00643690   668945E8               mov     [ebp-$18], ax
00643694   8B45A0                 mov     eax, [ebp-$60]
00643697   8945D0                 mov     [ebp-$30], eax
0064369A   8B45A4                 mov     eax, [ebp-$5C]
0064369D   8945D4                 mov     [ebp-$2C], eax
006436A0   668B45A8               mov     ax, word ptr [ebp-$58]
006436A4   668945D8               mov     [ebp-$28], ax
006436A8   8A5DAA                 mov     bl, byte ptr [ebp-$56]
006436AB   668B45D8               mov     ax, word ptr [ebp-$28]
006436AF   50                     push    eax
006436B0   FF75D4                 push    dword ptr [ebp-$2C]
006436B3   FF75D0                 push    dword ptr [ebp-$30]
006436B6   8BD3                   mov     edx, ebx
006436B8   8B4510                 mov     eax, [ebp+$10]

|
006436BB   E888BC1600             call    007AF348
006436C0   DB6D28                 fld     tbyte ptr [ebp+$28]
006436C3   DEC9                   fmulp   st(1), st(0)
006436C5   83C4F8                 add     esp, -$08
006436C8   DD1C24                 fstp    qword ptr [esp]
006436CB   9B                     wait
006436CC   B802000000             mov     eax, $00000002

|
006436D1   E82EDC1500             call    007A1304
006436D6   DB7D28                 fstp    tbyte ptr [ebp+$28]
006436D9   9B                     wait
006436DA   8B45FC                 mov     eax, [ebp-$04]
006436DD   BAF4396400             mov     edx, $006439F4

* Reference to: System.@LStrCmp;
|
006436E2   E8C121DCFF             call    004058A8
006436E7   0F8584000000           jnz     00643771
006436ED   8B4514                 mov     eax, [ebp+$14]

|
006436F0   E86BD01600             call    007B0760
006436F5   84C0                   test    al, al
006436F7   7478                   jz      00643771
006436F9   8D558C                 lea     edx, [ebp-$74]
006436FC   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00643701   8B00                   mov     eax, [eax]
00643703   8B80EC090000           mov     eax, [eax+$09EC]
00643709   8B08                   mov     ecx, [eax]
0064370B   FF5160                 call    dword ptr [ecx+$60]
0064370E   8B458C                 mov     eax, [ebp-$74]
00643711   BA183A6400             mov     edx, $00643A18

* Reference to: System.@LStrCmp;
|
00643716   E88D21DCFF             call    004058A8
0064371B   7448                   jz      00643765
0064371D   8D5588                 lea     edx, [ebp-$78]
00643720   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00643725   8B00                   mov     eax, [eax]
00643727   8B80F0090000           mov     eax, [eax+$09F0]
0064372D   8B08                   mov     ecx, [eax]
0064372F   FF5160                 call    dword ptr [ecx+$60]
00643732   8B4588                 mov     eax, [ebp-$78]
00643735   BA443A6400             mov     edx, $00643A44

* Reference to: System.@LStrCmp;
|
0064373A   E86921DCFF             call    004058A8
0064373F   7530                   jnz     00643771
00643741   8D5584                 lea     edx, [ebp-$7C]
00643744   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00643749   8B00                   mov     eax, [eax]
0064374B   8B80EC090000           mov     eax, [eax+$09EC]
00643751   8B08                   mov     ecx, [eax]
00643753   FF5160                 call    dword ptr [ecx+$60]
00643756   8B4584                 mov     eax, [ebp-$7C]
00643759   BA503A6400             mov     edx, $00643A50

* Reference to: System.@LStrCmp;
|
0064375E   E84521DCFF             call    004058A8
00643763   750C                   jnz     00643771
00643765   DB6D28                 fld     tbyte ptr [ebp+$28]
00643768   DB6DB0                 fld     tbyte ptr [ebp-$50]
0064376B   DEC1                   faddp   st(1), st(0)
0064376D   DB7D28                 fstp    tbyte ptr [ebp+$28]
00643770   9B                     wait
00643771   DB6DE0                 fld     tbyte ptr [ebp-$20]
00643774   D9051C3A6400           fld     dword ptr [$00643A1C]

* Reference to: System.@FSafeDivide;
|
0064377A   E881FDDBFF             call    00403500
0064377F   DB6D28                 fld     tbyte ptr [ebp+$28]
00643782   DEC9                   fmulp   st(1), st(0)
00643784   83C4F8                 add     esp, -$08
00643787   DD1C24                 fstp    qword ptr [esp]
0064378A   9B                     wait
0064378B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00643790   8B00                   mov     eax, [eax]
00643792   8B806C020000           mov     eax, [eax+$026C]
00643798   8B10                   mov     edx, [eax]
0064379A   FF5258                 call    dword ptr [edx+$58]

|
0064379D   E862DB1500             call    007A1304
006437A2   DB7DC0                 fstp    tbyte ptr [ebp-$40]
006437A5   9B                     wait
006437A6   8D4D80                 lea     ecx, [ebp-$80]
006437A9   8B07                   mov     eax, [edi]

* Possible String Reference to: 'CodProd'
|
006437AB   BA5C3A6400             mov     edx, $00643A5C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006437B0   E883451700             call    007B7D38
006437B5   837D8000               cmp     dword ptr [ebp-$80], +$00
006437B9   754D                   jnz     00643808
006437BB   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Possible String Reference to: 'ICMS'
|
006437C1   BA6C3A6400             mov     edx, $00643A6C

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006437C6   E8F954DDFF             call    00418CC4
006437CB   56                     push    esi
006437CC   8DB560FFFFFF           lea     esi, [ebp+$FFFFFF60]
006437D2   8DBD70FFFFFF           lea     edi, [ebp+$FFFFFF70]
006437D8   A5                     movsd
006437D9   A5                     movsd
006437DA   A5                     movsd
006437DB   A5                     movsd
006437DC   5E                     pop     esi
006437DD   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]
006437E3   50                     push    eax
006437E4   6A00                   push    $00

* Possible String Reference to: 'Imposto'
|
006437E6   B87C3A6400             mov     eax, $00643A7C
006437EB   89855CFFFFFF           mov     [ebp+$FFFFFF5C], eax
006437F1   8D955CFFFFFF           lea     edx, [ebp+$FFFFFF5C]
006437F7   8B06                   mov     eax, [esi]
006437F9   33C9                   xor     ecx, ecx

* Reference to : tArrayTable._PROC_007B8568()
|
006437FB   E8684D1700             call    007B8568
00643800   84C0                   test    al, al
00643802   0F85B7000000           jnz     006438BF
00643808   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064380D   8B00                   mov     eax, [eax]
0064380F   8B806C040000           mov     eax, [eax+$046C]
00643815   8B10                   mov     edx, [eax]
00643817   FF5244                 call    dword ptr [edx+$44]
0064381A   84C0                   test    al, al
0064381C   745F                   jz      0064387D
0064381E   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00643823   8B00                   mov     eax, [eax]
00643825   8B803C020000           mov     eax, [eax+$023C]
0064382B   8B10                   mov     edx, [eax]
0064382D   FF5244                 call    dword ptr [edx+$44]
00643830   84C0                   test    al, al
00643832   7449                   jz      0064387D
00643834   8B45FC                 mov     eax, [ebp-$04]
00643837   BAF4396400             mov     edx, $006439F4

* Reference to: System.@LStrCmp;
|
0064383C   E86720DCFF             call    004058A8
00643841   753A                   jnz     0064387D
00643843   DB6D28                 fld     tbyte ptr [ebp+$28]
00643846   DB6D1C                 fld     tbyte ptr [ebp+$1C]
00643849   DEC1                   faddp   st(1), st(0)
0064384B   83C4F4                 add     esp, -$0C
0064384E   DB3C24                 fstp    tbyte ptr [esp]
00643851   9B                     wait
00643852   668B45E8               mov     ax, word ptr [ebp-$18]
00643856   50                     push    eax
00643857   FF75E4                 push    dword ptr [ebp-$1C]
0064385A   FF75E0                 push    dword ptr [ebp-$20]
0064385D   668B45C8               mov     ax, word ptr [ebp-$38]
00643861   50                     push    eax
00643862   FF75C4                 push    dword ptr [ebp-$3C]
00643865   FF75C0                 push    dword ptr [ebp-$40]
00643868   8B4514                 mov     eax, [ebp+$14]
0064386B   50                     push    eax
0064386C   8BC6                   mov     eax, esi
0064386E   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: 'ICMS'
|
00643871   BA6C3A6400             mov     edx, $00643A6C

|
00643876   E815020000             call    00643A90
0064387B   EB42                   jmp     006438BF
0064387D   668B4530               mov     ax, word ptr [ebp+$30]
00643881   50                     push    eax
00643882   FF752C                 push    dword ptr [ebp+$2C]
00643885   FF7528                 push    dword ptr [ebp+$28]
00643888   668B45E8               mov     ax, word ptr [ebp-$18]
0064388C   50                     push    eax
0064388D   FF75E4                 push    dword ptr [ebp-$1C]
00643890   FF75E0                 push    dword ptr [ebp-$20]
00643893   668B45C8               mov     ax, word ptr [ebp-$38]
00643897   50                     push    eax
00643898   FF75C4                 push    dword ptr [ebp-$3C]
0064389B   FF75C0                 push    dword ptr [ebp-$40]
0064389E   8B4514                 mov     eax, [ebp+$14]
006438A1   50                     push    eax
006438A2   8BC6                   mov     eax, esi
006438A4   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: 'ICMS'
|
006438A7   BA6C3A6400             mov     edx, $00643A6C

|
006438AC   E8DF010000             call    00643A90
006438B1   EB0C                   jmp     006438BF
006438B3   8BC6                   mov     eax, esi

* Possible String Reference to: 'ICMS'
|
006438B5   BA6C3A6400             mov     edx, $00643A6C

|
006438BA   E8F1030000             call    00643CB0
006438BF   8B45FC                 mov     eax, [ebp-$04]
006438C2   BAF4396400             mov     edx, $006439F4

* Reference to: System.@LStrCmp;
|
006438C7   E8DC1FDCFF             call    004058A8
006438CC   757A                   jnz     00643948
006438CE   8B55F4                 mov     edx, [ebp-$0C]
006438D1   B8F4396400             mov     eax, $006439F4

* Reference to: System.@LStrPos;
|
006438D6   E8C521DCFF             call    00405AA0
006438DB   85C0                   test    eax, eax
006438DD   7E69                   jle     00643948
006438DF   8D4590                 lea     eax, [ebp-$70]

* Reference to : TFrmInfoAtu._PROC_007AEE78()
|
006438E2   E891B51600             call    007AEE78
006438E7   8B4590                 mov     eax, [ebp-$70]
006438EA   8945E0                 mov     [ebp-$20], eax
006438ED   8B4594                 mov     eax, [ebp-$6C]
006438F0   8945E4                 mov     [ebp-$1C], eax
006438F3   668B4598               mov     ax, word ptr [ebp-$68]
006438F7   668945E8               mov     [ebp-$18], ax
006438FB   DB6DE0                 fld     tbyte ptr [ebp-$20]
006438FE   D9051C3A6400           fld     dword ptr [$00643A1C]

* Reference to: System.@FSafeDivide;
|
00643904   E8F7FBDBFF             call    00403500
00643909   DB6D28                 fld     tbyte ptr [ebp+$28]
0064390C   DEC9                   fmulp   st(1), st(0)
0064390E   DB7DC0                 fstp    tbyte ptr [ebp-$40]
00643911   9B                     wait
00643912   668B4530               mov     ax, word ptr [ebp+$30]
00643916   50                     push    eax
00643917   FF752C                 push    dword ptr [ebp+$2C]
0064391A   FF7528                 push    dword ptr [ebp+$28]
0064391D   668B45E8               mov     ax, word ptr [ebp-$18]
00643921   50                     push    eax
00643922   FF75E4                 push    dword ptr [ebp-$1C]
00643925   FF75E0                 push    dword ptr [ebp-$20]
00643928   668B45C8               mov     ax, word ptr [ebp-$38]
0064392C   50                     push    eax
0064392D   FF75C4                 push    dword ptr [ebp-$3C]
00643930   FF75C0                 push    dword ptr [ebp-$40]
00643933   8B4514                 mov     eax, [ebp+$14]
00643936   50                     push    eax
00643937   8BC6                   mov     eax, esi
00643939   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: 'ISS'
|
0064393C   BA8C3A6400             mov     edx, $00643A8C

|
00643941   E84A010000             call    00643A90
00643946   EB0C                   jmp     00643954
00643948   8BC6                   mov     eax, esi

* Possible String Reference to: 'ISS'
|
0064394A   BA8C3A6400             mov     edx, $00643A8C

|
0064394F   E85C030000             call    00643CB0
00643954   33C0                   xor     eax, eax
00643956   5A                     pop     edx
00643957   59                     pop     ecx
00643958   59                     pop     ecx
00643959   648910                 mov     fs:[eax], edx
0064395C   EB1E                   jmp     0064397C

* Reference to: System.@HandleOnException;
|
0064395E   E94D12DCFF             jmp     00404BB0
00643963   0100                   add     [eax], eax
00643965   0000                   add     [eax], al
00643967   40                     inc     eax
00643968   95                     xchg    eax, ebp
00643969   40                     inc     eax
0064396A   006F39                 add     [edi+$39], ch
0064396D   64008B4004E8AD         add     fs:[ebx+$ADE80440], cl
00643974   02E0                   add     ah, al
00643976   FFE8                   jmp     ax
00643978   3415                   xor     al, $15
0064397A   DCFF                   fdiv    st(7), st(0)

****** END
|
0064397C   33C0                   xor     eax, eax
0064397E   5A                     pop     edx
0064397F   59                     pop     ecx
00643980   59                     pop     ecx
00643981   648910                 mov     fs:[eax], edx

****** FINALLY
|
00643984   6891396400             push    $00643991
00643989   C3                     ret


* Reference to: System.@HandleFinally;
|
0064398A   E9A913DCFF             jmp     00404D38
0064398F   EBF8                   jmp     00643989

****** END
|
00643991   33C0                   xor     eax, eax
00643993   5A                     pop     edx
00643994   59                     pop     ecx
00643995   59                     pop     ecx
00643996   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEû_^[‹å]Â,'
|
00643999   68E0396400             push    $006439E0
0064399E   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006439A4   E8CF0BDDFF             call    00414578
006439A9   8D4580                 lea     eax, [ebp-$80]
006439AC   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006439B1   E80A1BDCFF             call    004054C0
006439B6   8D45F0                 lea     eax, [ebp-$10]
006439B9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006439BE   E8FD1ADCFF             call    004054C0
006439C3   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006439C6   E8D11ADCFF             call    0040549C
006439CB   8D450C                 lea     eax, [ebp+$0C]
006439CE   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006439D3   E8E81ADCFF             call    004054C0
006439D8   C3                     ret


* Reference to: System.@HandleFinally;
|
006439D9   E95A13DCFF             jmp     00404D38
006439DE   EBBE                   jmp     0064399E

****** END
|
006439E0   8A45FB                 mov     al, byte ptr [ebp-$05]
006439E3   5F                     pop     edi
006439E4   5E                     pop     esi
006439E5   5B                     pop     ebx
006439E6   8BE5                   mov     esp, ebp
006439E8   5D                     pop     ebp
006439E9   C22C00                 ret     $002C

*)
end;

procedure TFrmF2SubLocal._PROC_0064398A(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064398A   E9A913DCFF             jmp     00404D38

|
0064398F   EBF8                   jmp     00643989
00643991   33C0                   xor     eax, eax
00643993   5A                     pop     edx
00643994   59                     pop     ecx
00643995   59                     pop     ecx
00643996   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEû_^[‹å]Â,'
|
00643999   68E0396400             push    $006439E0
0064399E   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006439A4   E8CF0BDDFF             call    00414578
006439A9   8D4580                 lea     eax, [ebp-$80]
006439AC   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006439B1   E80A1BDCFF             call    004054C0
006439B6   8D45F0                 lea     eax, [ebp-$10]
006439B9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006439BE   E8FD1ADCFF             call    004054C0
006439C3   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006439C6   E8D11ADCFF             call    0040549C
006439CB   8D450C                 lea     eax, [ebp+$0C]
006439CE   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006439D3   E8E81ADCFF             call    004054C0
006439D8   C3                     ret


* Reference to: System.@HandleFinally;
|
006439D9   E95A13DCFF             jmp     00404D38
006439DE   EBBE                   jmp     0064399E

****** END
|
006439E0   8A45FB                 mov     al, byte ptr [ebp-$05]
006439E3   5F                     pop     edi
006439E4   5E                     pop     esi
006439E5   5B                     pop     ebx
006439E6   8BE5                   mov     esp, ebp
006439E8   5D                     pop     ebp
006439E9   C22C00                 ret     $002C

*)
end;

procedure TFrmF2SubLocal._PROC_00643A91(Sender : TObject);
begin
(*
00643A91   8BEC                   mov     ebp, esp
00643A93   51                     push    ecx
00643A94   B90F000000             mov     ecx, $0000000F
00643A99   6A00                   push    $00
00643A9B   6A00                   push    $00
00643A9D   49                     dec     ecx
00643A9E   75F9                   jnz     00643A99
00643AA0   874DFC                 xchg    [ebp-$04], ecx
00643AA3   53                     push    ebx
00643AA4   56                     push    esi
00643AA5   57                     push    edi
00643AA6   8955FC                 mov     [ebp-$04], edx
00643AA9   8BD8                   mov     ebx, eax
00643AAB   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00643AAE   E8991EDCFF             call    0040594C
00643AB3   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00643AB6   E8911EDCFF             call    0040594C
00643ABB   33C0                   xor     eax, eax
00643ABD   55                     push    ebp
00643ABE   684C3C6400             push    $00643C4C

***** TRY
|
00643AC3   64FF30                 push    dword ptr fs:[eax]
00643AC6   648920                 mov     fs:[eax], esp
00643AC9   C645FB00               mov     byte ptr [ebp-$05], $00
00643ACD   33D2                   xor     edx, edx
00643ACF   55                     push    ebp
00643AD0   680C3C6400             push    $00643C0C

***** TRY
|
00643AD5   64FF32                 push    dword ptr fs:[edx]
00643AD8   648922                 mov     fs:[edx], esp
00643ADB   33D2                   xor     edx, edx
00643ADD   55                     push    ebp
00643ADE   68E03B6400             push    $00643BE0

***** TRY
|
00643AE3   64FF32                 push    dword ptr fs:[edx]
00643AE6   648922                 mov     fs:[edx], esp
00643AE9   DB6D0C                 fld     tbyte ptr [ebp+$0C]
00643AEC   D81D603C6400           fcomp   dword ptr [$00643C60]
00643AF2   DFE0                   fstsw   ax
00643AF4   9E                     sahf
00643AF5   0F84DB000000           jz      00643BD6
00643AFB   8D45D8                 lea     eax, [ebp-$28]
00643AFE   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00643B01   E8BE51DDFF             call    00418CC4
00643B06   8D75D8                 lea     esi, [ebp-$28]
00643B09   8D7DE8                 lea     edi, [ebp-$18]
00643B0C   A5                     movsd
00643B0D   A5                     movsd
00643B0E   A5                     movsd
00643B0F   A5                     movsd
00643B10   8D45E8                 lea     eax, [ebp-$18]
00643B13   50                     push    eax
00643B14   6A00                   push    $00

* Possible String Reference to: 'Imposto'
|
00643B16   B86C3C6400             mov     eax, $00643C6C
00643B1B   8945D4                 mov     [ebp-$2C], eax
00643B1E   8D55D4                 lea     edx, [ebp-$2C]
00643B21   8B03                   mov     eax, [ebx]
00643B23   33C9                   xor     ecx, ecx

* Reference to : tArrayTable._PROC_007B8568()
|
00643B25   E83E4A1700             call    007B8568
00643B2A   84C0                   test    al, al
00643B2C   7539                   jnz     00643B67
00643B2E   8D45C4                 lea     eax, [ebp-$3C]
00643B31   33D2                   xor     edx, edx

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00643B33   E88C51DDFF             call    00418CC4
00643B38   8D75C4                 lea     esi, [ebp-$3C]
00643B3B   8D7DE8                 lea     edi, [ebp-$18]
00643B3E   A5                     movsd
00643B3F   A5                     movsd
00643B40   A5                     movsd
00643B41   A5                     movsd
00643B42   8D45E8                 lea     eax, [ebp-$18]
00643B45   50                     push    eax
00643B46   6A00                   push    $00

* Possible String Reference to: 'Imposto'
|
00643B48   B86C3C6400             mov     eax, $00643C6C
00643B4D   8945D4                 mov     [ebp-$2C], eax
00643B50   8D55D4                 lea     edx, [ebp-$2C]
00643B53   8B03                   mov     eax, [ebx]
00643B55   33C9                   xor     ecx, ecx

* Reference to : tArrayTable._PROC_007B8568()
|
00643B57   E80C4A1700             call    007B8568
00643B5C   84C0                   test    al, al
00643B5E   7507                   jnz     00643B67
00643B60   8B03                   mov     eax, [ebx]

|
00643B62   E80D371700             call    007B7274
00643B67   8D45B4                 lea     eax, [ebp-$4C]
00643B6A   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00643B6D   E85251DDFF             call    00418CC4
00643B72   8D4DB4                 lea     ecx, [ebp-$4C]
00643B75   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Imposto'
|
00643B77   BA6C3C6400             mov     edx, $00643C6C

* Reference to : tArrayTable._PROC_007B767C()
|
00643B7C   E8FB3A1700             call    007B767C
00643B81   DB6D24                 fld     tbyte ptr [ebp+$24]
00643B84   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: Variants.@VarFromReal;
|
00643B87   E8FC50DDFF             call    00418C88
00643B8C   8D4DA4                 lea     ecx, [ebp-$5C]
00643B8F   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'BaseCalculo'
|
00643B91   BA7C3C6400             mov     edx, $00643C7C

* Reference to : tArrayTable._PROC_007B767C()
|
00643B96   E8E13A1700             call    007B767C
00643B9B   DB6D18                 fld     tbyte ptr [ebp+$18]
00643B9E   8D4594                 lea     eax, [ebp-$6C]

* Reference to: Variants.@VarFromReal;
|
00643BA1   E8E250DDFF             call    00418C88
00643BA6   8D4D94                 lea     ecx, [ebp-$6C]
00643BA9   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Aliquota'
|
00643BAB   BA903C6400             mov     edx, $00643C90

* Reference to : tArrayTable._PROC_007B767C()
|
00643BB0   E8C73A1700             call    007B767C
00643BB5   DB6D0C                 fld     tbyte ptr [ebp+$0C]
00643BB8   8D4584                 lea     eax, [ebp-$7C]

* Reference to: Variants.@VarFromReal;
|
00643BBB   E8C850DDFF             call    00418C88
00643BC0   8D4D84                 lea     ecx, [ebp-$7C]
00643BC3   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrImposto'
|
00643BC5   BAA43C6400             mov     edx, $00643CA4

* Reference to : tArrayTable._PROC_007B767C()
|
00643BCA   E8AD3A1700             call    007B767C
00643BCF   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00643BD1   E806621700             call    007B9DDC
00643BD6   33C0                   xor     eax, eax
00643BD8   5A                     pop     edx
00643BD9   59                     pop     ecx
00643BDA   59                     pop     ecx
00643BDB   648910                 mov     fs:[eax], edx
00643BDE   EB1E                   jmp     00643BFE

* Reference to: System.@HandleOnException;
|
00643BE0   E9CB0FDCFF             jmp     00404BB0
00643BE5   0100                   add     [eax], eax
00643BE7   0000                   add     [eax], al
00643BE9   40                     inc     eax
00643BEA   95                     xchg    eax, ebp
00643BEB   40                     inc     eax
00643BEC   00F1                   add     cl, dh
00643BEE   3B64008B               cmp     esp, [eax+eax-$75]
00643BF2   40                     inc     eax
00643BF3   04E8                   add     al, -$18
00643BF5   2B00                   sub     eax, dword ptr [eax]
00643BF7   E0FF                   loopn   -$01

* Reference to: System.@DoneExcept;
|
00643BF9   E8B212DCFF             call    00404EB0

****** END
|
00643BFE   33C0                   xor     eax, eax
00643C00   5A                     pop     edx
00643C01   59                     pop     ecx
00643C02   59                     pop     ecx
00643C03   648910                 mov     fs:[eax], edx

****** FINALLY
|
00643C06   68133C6400             push    $00643C13
00643C0B   C3                     ret


* Reference to: System.@HandleFinally;
|
00643C0C   E92711DCFF             jmp     00404D38
00643C11   EBF8                   jmp     00643C0B

****** END
|
00643C13   33C0                   xor     eax, eax
00643C15   5A                     pop     edx
00643C16   59                     pop     ecx
00643C17   59                     pop     ecx
00643C18   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEû_^[‹å]Â('
|
00643C1B   68533C6400             push    $00643C53
00643C20   8D4584                 lea     eax, [ebp-$7C]

* Reference to object Variant
|
00643C23   8B1524114000           mov     edx, [$00401124]
00643C29   B905000000             mov     ecx, $00000005

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00643C2E   E86924DCFF             call    0040609C
00643C33   8D45D8                 lea     eax, [ebp-$28]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00643C36   E83D09DDFF             call    00414578
00643C3B   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00643C3E   E85918DCFF             call    0040549C
00643C43   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
00643C46   E85118DCFF             call    0040549C
00643C4B   C3                     ret


* Reference to: System.@HandleFinally;
|
00643C4C   E9E710DCFF             jmp     00404D38
00643C51   EBCD                   jmp     00643C20

****** END
|
00643C53   8A45FB                 mov     al, byte ptr [ebp-$05]
00643C56   5F                     pop     edi
00643C57   5E                     pop     esi
00643C58   5B                     pop     ebx
00643C59   8BE5                   mov     esp, ebp
00643C5B   5D                     pop     ebp
00643C5C   C22800                 ret     $0028

*)
end;

procedure TFrmF2SubLocal._PROC_00643C0C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00643C0C   E92711DCFF             jmp     00404D38

|
00643C11   EBF8                   jmp     00643C0B
00643C13   33C0                   xor     eax, eax
00643C15   5A                     pop     edx
00643C16   59                     pop     ecx
00643C17   59                     pop     ecx
00643C18   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEû_^[‹å]Â('
|
00643C1B   68533C6400             push    $00643C53
00643C20   8D4584                 lea     eax, [ebp-$7C]

* Reference to object Variant
|
00643C23   8B1524114000           mov     edx, [$00401124]
00643C29   B905000000             mov     ecx, $00000005

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00643C2E   E86924DCFF             call    0040609C
00643C33   8D45D8                 lea     eax, [ebp-$28]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00643C36   E83D09DDFF             call    00414578
00643C3B   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00643C3E   E85918DCFF             call    0040549C
00643C43   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
00643C46   E85118DCFF             call    0040549C
00643C4B   C3                     ret


* Reference to: System.@HandleFinally;
|
00643C4C   E9E710DCFF             jmp     00404D38
00643C51   EBCD                   jmp     00643C20

****** END
|
00643C53   8A45FB                 mov     al, byte ptr [ebp-$05]
00643C56   5F                     pop     edi
00643C57   5E                     pop     esi
00643C58   5B                     pop     ebx
00643C59   8BE5                   mov     esp, ebp
00643C5B   5D                     pop     ebp
00643C5C   C22800                 ret     $0028

*)
end;

procedure TFrmF2SubLocal._PROC_00643CB1(Sender : TObject);
begin
(*
00643CB1   8BEC                   mov     ebp, esp
00643CB3   83C4D4                 add     esp, -$2C
00643CB6   53                     push    ebx
00643CB7   56                     push    esi
00643CB8   57                     push    edi
00643CB9   33C9                   xor     ecx, ecx
00643CBB   894DD8                 mov     [ebp-$28], ecx
00643CBE   894DDC                 mov     [ebp-$24], ecx
00643CC1   894DE0                 mov     [ebp-$20], ecx
00643CC4   894DE4                 mov     [ebp-$1C], ecx
00643CC7   8955FC                 mov     [ebp-$04], edx
00643CCA   8BD8                   mov     ebx, eax
00643CCC   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00643CCF   E8781CDCFF             call    0040594C
00643CD4   33C0                   xor     eax, eax
00643CD6   55                     push    ebp
00643CD7   689B3D6400             push    $00643D9B

***** TRY
|
00643CDC   64FF30                 push    dword ptr fs:[eax]
00643CDF   648920                 mov     fs:[eax], esp
00643CE2   C645FB00               mov     byte ptr [ebp-$05], $00
00643CE6   33D2                   xor     edx, edx
00643CE8   55                     push    ebp
00643CE9   68763D6400             push    $00643D76

***** TRY
|
00643CEE   64FF32                 push    dword ptr fs:[edx]
00643CF1   648922                 mov     fs:[edx], esp
00643CF4   33D2                   xor     edx, edx
00643CF6   55                     push    ebp
00643CF7   684A3D6400             push    $00643D4A

***** TRY
|
00643CFC   64FF32                 push    dword ptr fs:[edx]
00643CFF   648922                 mov     fs:[edx], esp
00643D02   8D45D8                 lea     eax, [ebp-$28]
00643D05   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00643D08   E8B74FDDFF             call    00418CC4
00643D0D   8D75D8                 lea     esi, [ebp-$28]
00643D10   8D7DE8                 lea     edi, [ebp-$18]
00643D13   A5                     movsd
00643D14   A5                     movsd
00643D15   A5                     movsd
00643D16   A5                     movsd
00643D17   8D45E8                 lea     eax, [ebp-$18]
00643D1A   50                     push    eax
00643D1B   6A00                   push    $00

* Possible String Reference to: 'Imposto'
|
00643D1D   B8B43D6400             mov     eax, $00643DB4
00643D22   8945D4                 mov     [ebp-$2C], eax
00643D25   8D55D4                 lea     edx, [ebp-$2C]
00643D28   8B03                   mov     eax, [ebx]
00643D2A   33C9                   xor     ecx, ecx

* Reference to : tArrayTable._PROC_007B8568()
|
00643D2C   E837481700             call    007B8568
00643D31   84C0                   test    al, al
00643D33   7407                   jz      00643D3C
00643D35   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B74AC()
|
00643D37   E870371700             call    007B74AC
00643D3C   C645FB01               mov     byte ptr [ebp-$05], $01
00643D40   33C0                   xor     eax, eax
00643D42   5A                     pop     edx
00643D43   59                     pop     ecx
00643D44   59                     pop     ecx
00643D45   648910                 mov     fs:[eax], edx
00643D48   EB1E                   jmp     00643D68

* Reference to: System.@HandleOnException;
|
00643D4A   E9610EDCFF             jmp     00404BB0
00643D4F   0100                   add     [eax], eax
00643D51   0000                   add     [eax], al
00643D53   40                     inc     eax
00643D54   95                     xchg    eax, ebp
00643D55   40                     inc     eax
00643D56   005B3D                 add     [ebx+$3D], bl
00643D59   64008B4004E8C1         add     fs:[ebx+$C1E80440], cl
00643D60   FEDF                   DB  $FE, $DF  //      
00643D62   FFE8                   jmp     ax
00643D64   48                     dec     eax
00643D65   11DC                   adc     esp, ebx
00643D67   FF33                   push    dword ptr [ebx]
00643D69   C05A5959               rcr     byte ptr [edx+$59], $59
00643D6D   648910                 mov     fs:[eax], edx

****** FINALLY
|
00643D70   687D3D6400             push    $00643D7D
00643D75   C3                     ret


* Reference to: System.@HandleFinally;
|
00643D76   E9BD0FDCFF             jmp     00404D38
00643D7B   EBF8                   jmp     00643D75

****** END
|
00643D7D   33C0                   xor     eax, eax
00643D7F   5A                     pop     edx
00643D80   59                     pop     ecx
00643D81   59                     pop     ecx
00643D82   648910                 mov     fs:[eax], edx

****** FINALLY
|
00643D85   68A23D6400             push    $00643DA2
00643D8A   8D45D8                 lea     eax, [ebp-$28]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00643D8D   E8E607DDFF             call    00414578
00643D92   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00643D95   E80217DCFF             call    0040549C
00643D9A   C3                     ret


* Reference to: System.@HandleFinally;
|
00643D9B   E9980FDCFF             jmp     00404D38
00643DA0   EBE8                   jmp     00643D8A

****** END
|
00643DA2   8A45FB                 mov     al, byte ptr [ebp-$05]
00643DA5   5F                     pop     edi
00643DA6   5E                     pop     esi
00643DA7   5B                     pop     ebx
00643DA8   8BE5                   mov     esp, ebp
00643DAA   5D                     pop     ebp
00643DAB   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00643D76(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00643D76   E9BD0FDCFF             jmp     00404D38

|
00643D7B   EBF8                   jmp     00643D75
00643D7D   33C0                   xor     eax, eax
00643D7F   5A                     pop     edx
00643D80   59                     pop     ecx
00643D81   59                     pop     ecx
00643D82   648910                 mov     fs:[eax], edx

****** FINALLY
|
00643D85   68A23D6400             push    $00643DA2
00643D8A   8D45D8                 lea     eax, [ebp-$28]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00643D8D   E8E607DDFF             call    00414578
00643D92   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00643D95   E80217DCFF             call    0040549C
00643D9A   C3                     ret


* Reference to: System.@HandleFinally;
|
00643D9B   E9980FDCFF             jmp     00404D38
00643DA0   EBE8                   jmp     00643D8A

****** END
|
00643DA2   8A45FB                 mov     al, byte ptr [ebp-$05]
00643DA5   5F                     pop     edi
00643DA6   5E                     pop     esi
00643DA7   5B                     pop     ebx
00643DA8   8BE5                   mov     esp, ebp
00643DAA   5D                     pop     ebp
00643DAB   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00643DBD(Sender : TObject);
begin
(*
00643DBD   8BEC                   mov     ebp, esp
00643DBF   53                     push    ebx
00643DC0   33C0                   xor     eax, eax
00643DC2   55                     push    ebp
00643DC3   68DE3D6400             push    $00643DDE

***** TRY
|
00643DC8   64FF30                 push    dword ptr fs:[eax]
00643DCB   648920                 mov     fs:[eax], esp
00643DCE   33DB                   xor     ebx, ebx
00643DD0   33C0                   xor     eax, eax
00643DD2   5A                     pop     edx
00643DD3   59                     pop     ecx
00643DD4   59                     pop     ecx
00643DD5   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '‹Ã[]Â,'
|
00643DD8   68E53D6400             push    $00643DE5
00643DDD   C3                     ret


* Reference to: System.@HandleFinally;
|
00643DDE   E9550FDCFF             jmp     00404D38
00643DE3   EBF8                   jmp     00643DDD

****** END
|
00643DE5   8BC3                   mov     eax, ebx
00643DE7   5B                     pop     ebx
00643DE8   5D                     pop     ebp
00643DE9   C22C00                 ret     $002C

*)
end;

procedure TFrmF2SubLocal._PROC_00643DEC(Sender : TObject);
begin
(*
00643DEC   55                     push    ebp
00643DED   8BEC                   mov     ebp, esp
00643DEF   53                     push    ebx
00643DF0   33C0                   xor     eax, eax
00643DF2   55                     push    ebp
00643DF3   680E3E6400             push    $00643E0E

***** TRY
|
00643DF8   64FF30                 push    dword ptr fs:[eax]
00643DFB   648920                 mov     fs:[eax], esp
00643DFE   33DB                   xor     ebx, ebx
00643E00   33C0                   xor     eax, eax
00643E02   5A                     pop     edx
00643E03   59                     pop     ecx
00643E04   59                     pop     ecx
00643E05   648910                 mov     fs:[eax], edx

****** FINALLY
|
00643E08   68153E6400             push    $00643E15
00643E0D   C3                     ret


* Reference to: System.@HandleFinally;
|
00643E0E   E9250FDCFF             jmp     00404D38
00643E13   EBF8                   jmp     00643E0D

****** END
|
00643E15   8BC3                   mov     eax, ebx
00643E17   5B                     pop     ebx
00643E18   5D                     pop     ebp
00643E19   C20C00                 ret     $000C

*)
end;

procedure TFrmF2SubLocal._PROC_00643E1C(Sender : TObject);
begin
(*
00643E1C   55                     push    ebp
00643E1D   8BEC                   mov     ebp, esp
00643E1F   83C4A8                 add     esp, -$58
00643E22   53                     push    ebx
00643E23   56                     push    esi
00643E24   57                     push    edi
00643E25   33D2                   xor     edx, edx
00643E27   8955A8                 mov     [ebp-$58], edx
00643E2A   8955AC                 mov     [ebp-$54], edx
00643E2D   8955B0                 mov     [ebp-$50], edx
00643E30   8955B4                 mov     [ebp-$4C], edx
00643E33   8955B8                 mov     [ebp-$48], edx
00643E36   8955C4                 mov     [ebp-$3C], edx
00643E39   8955C0                 mov     [ebp-$40], edx
00643E3C   8955BC                 mov     [ebp-$44], edx
00643E3F   8955C8                 mov     [ebp-$38], edx
00643E42   8955CC                 mov     [ebp-$34], edx
00643E45   8945FC                 mov     [ebp-$04], eax
00643E48   33C0                   xor     eax, eax
00643E4A   55                     push    ebp
00643E4B   6848406400             push    $00644048

***** TRY
|
00643E50   64FF30                 push    dword ptr fs:[eax]
00643E53   648920                 mov     fs:[eax], esp
00643E56   33C0                   xor     eax, eax
00643E58   8945F0                 mov     [ebp-$10], eax
00643E5B   8945F4                 mov     [ebp-$0C], eax
00643E5E   668945F8               mov     [ebp-$08], ax
00643E62   8B45FC                 mov     eax, [ebp-$04]

|
00643E65   E8EE601700             call    007B9F58
00643E6A   33C0                   xor     eax, eax
00643E6C   55                     push    ebp
00643E6D   6816406400             push    $00644016

***** TRY
|
00643E72   64FF30                 push    dword ptr fs:[eax]
00643E75   648920                 mov     fs:[eax], esp
00643E78   33C0                   xor     eax, eax
00643E7A   55                     push    ebp
00643E7B   68B63F6400             push    $00643FB6

***** TRY
|
00643E80   64FF30                 push    dword ptr fs:[eax]
00643E83   648920                 mov     fs:[eax], esp
00643E86   8B45FC                 mov     eax, [ebp-$04]

|
00643E89   E812451700             call    007B83A0
00643E8E   E909010000             jmp     00643F9C
00643E93   8D4DCC                 lea     ecx, [ebp-$34]

* Possible String Reference to: 'TipoPgto'
|
00643E96   BA64406400             mov     edx, $00644064
00643E9B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00643E9E   E8953E1700             call    007B7D38
00643EA3   8B45CC                 mov     eax, [ebp-$34]
00643EA6   BA78406400             mov     edx, $00644078

* Reference to: System.@LStrCmp;
|
00643EAB   E8F819DCFF             call    004058A8
00643EB0   0F85DE000000           jnz     00643F94
00643EB6   8D4DC8                 lea     ecx, [ebp-$38]

* Possible String Reference to: 'CodCard'
|
00643EB9   BA84406400             mov     edx, $00644084
00643EBE   8B45FC                 mov     eax, [ebp-$04]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00643EC1   E8723E1700             call    007B7D38
00643EC6   837DC800               cmp     dword ptr [ebp-$38], +$00
00643ECA   0F84C4000000           jz      00643F94
00643ED0   8D4DBC                 lea     ecx, [ebp-$44]

* Possible String Reference to: 'CodCard'
|
00643ED3   BA84406400             mov     edx, $00644084
00643ED8   8B45FC                 mov     eax, [ebp-$04]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00643EDB   E8583E1700             call    007B7D38
00643EE0   8B45BC                 mov     eax, [ebp-$44]
00643EE3   8D55C0                 lea     edx, [ebp-$40]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
00643EE6   E835FC1500             call    007A3B20
00643EEB   8B4DC0                 mov     ecx, [ebp-$40]
00643EEE   8D45C4                 lea     eax, [ebp-$3C]

* Possible String Reference to: 'CODCARD = '
|
00643EF1   BA94406400             mov     edx, $00644094

* Reference to: System.@LStrCat3;
|
00643EF6   E8AD18DCFF             call    004057A8
00643EFB   8B45C4                 mov     eax, [ebp-$3C]
00643EFE   50                     push    eax
00643EFF   6A00                   push    $00
00643F01   B9A8406400             mov     ecx, $006440A8

* Possible String Reference to: 'CARTOES'
|
00643F06   BAB4406400             mov     edx, $006440B4
00643F0B   33C0                   xor     eax, eax

|
00643F0D   E8DE4F1600             call    007A8EF0
00643F12   84C0                   test    al, al
00643F14   747E                   jz      00643F94
00643F16   A1689F7D00             mov     eax, dword ptr [$007D9F68]
00643F1B   8B00                   mov     eax, [eax]
00643F1D   8B4058                 mov     eax, [eax+$58]

* Possible String Reference to: 'PrcDesconto'
|
00643F20   BAC4406400             mov     edx, $006440C4

* Reference to: IBSQL.TIBSQL.FieldByName(TIBSQL;AnsiString):TIBXSQLVAR;
|
00643F25   E82217F2FF             call    0056564C

* Reference to: IBSQL.TIBXSQLVAR.GetAsFloat(TIBXSQLVAR):Float;
|
00643F2A   E89DEEF1FF             call    00562DCC
00643F2F   DB7DE0                 fstp    tbyte ptr [ebp-$20]
00643F32   9B                     wait

* Possible String Reference to: 'Valor'
|
00643F33   BAD8406400             mov     edx, $006440D8
00643F38   8B45FC                 mov     eax, [ebp-$04]

|
00643F3B   E8E83B1700             call    007B7B28
00643F40   DB6DE0                 fld     tbyte ptr [ebp-$20]
00643F43   DEC9                   fmulp   st(1), st(0)
00643F45   D905E0406400           fld     dword ptr [$006440E0]

* Reference to: System.@FSafeDivide;
|
00643F4B   E8B0F5DBFF             call    00403500
00643F50   83C4F8                 add     esp, -$08
00643F53   DD1C24                 fstp    qword ptr [esp]
00643F56   9B                     wait
00643F57   B802000000             mov     eax, $00000002

|
00643F5C   E8A3D31500             call    007A1304
00643F61   DB7DD0                 fstp    tbyte ptr [ebp-$30]
00643F64   9B                     wait
00643F65   DB6DD0                 fld     tbyte ptr [ebp-$30]
00643F68   8D45AC                 lea     eax, [ebp-$54]

* Reference to: Variants.@VarFromReal;
|
00643F6B   E8184DDDFF             call    00418C88
00643F70   8D4DAC                 lea     ecx, [ebp-$54]

* Possible String Reference to: 'VlrDeduc'
|
00643F73   BAEC406400             mov     edx, $006440EC
00643F78   8B45FC                 mov     eax, [ebp-$04]

* Reference to : tArrayTable._PROC_007B767C()
|
00643F7B   E8FC361700             call    007B767C
00643F80   8B45FC                 mov     eax, [ebp-$04]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00643F83   E8545E1700             call    007B9DDC
00643F88   DB6DF0                 fld     tbyte ptr [ebp-$10]
00643F8B   DB6DD0                 fld     tbyte ptr [ebp-$30]
00643F8E   DEC1                   faddp   st(1), st(0)
00643F90   DB7DF0                 fstp    tbyte ptr [ebp-$10]
00643F93   9B                     wait
00643F94   8B45FC                 mov     eax, [ebp-$04]

|
00643F97   E858471700             call    007B86F4
00643F9C   8B45FC                 mov     eax, [ebp-$04]

|
00643F9F   E894381700             call    007B7838
00643FA4   84C0                   test    al, al
00643FA6   0F84E7FEFFFF           jz      00643E93
00643FAC   33C0                   xor     eax, eax
00643FAE   5A                     pop     edx
00643FAF   59                     pop     ecx
00643FB0   59                     pop     ecx
00643FB1   648910                 mov     fs:[eax], edx
00643FB4   EB3B                   jmp     00643FF1

* Reference to: System.@HandleOnException;
|
00643FB6   E9F50BDCFF             jmp     00404BB0
00643FBB   0100                   add     [eax], eax
00643FBD   0000                   add     [eax], al
00643FBF   40                     inc     eax
00643FC0   95                     xchg    eax, ebp
00643FC1   40                     inc     eax
00643FC2   00C7                   add     bh, al
00643FC4   3F                     aas
00643FC5   640089C36A008B         add     fs:[ecx+$8B006AC3], cl
00643FCC   4B                     dec     ebx
00643FCD   048D                   add     al, -$73
00643FCF   45                     inc     ebp
00643FD0   A8BA                   test    al, $BA
00643FD2   004164                 add     [ecx+$64], al
00643FD5   00E8                   add     al, ch
00643FD7   CD17                   int     $17
00643FD9   DCFF                   fdiv    st(7), st(0)
00643FDB   8B45A8                 mov     eax, [ebp-$58]
00643FDE   668B0D1C416400         mov     cx, word ptr [$0064411C]
00643FE5   B201                   mov     dl, $01

|
00643FE7   E840FBDFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00643FEC   E8BF0EDCFF             call    00404EB0

****** END
|
00643FF1   33C0                   xor     eax, eax
00643FF3   5A                     pop     edx
00643FF4   59                     pop     ecx
00643FF5   59                     pop     ecx
00643FF6   648910                 mov     fs:[eax], edx

****** FINALLY
|
00643FF9   681D406400             push    $0064401D
00643FFE   A1689F7D00             mov     eax, dword ptr [$007D9F68]
00644003   8B00                   mov     eax, [eax]
00644005   8B4058                 mov     eax, [eax+$58]

* Reference to: IBSQL.TIBSQL.Close(TIBSQL);
|
00644008   E8DB12F2FF             call    005652E8
0064400D   8B45FC                 mov     eax, [ebp-$04]

|
00644010   E84B5F1700             call    007B9F60
00644015   C3                     ret


* Reference to: System.@HandleFinally;
|
00644016   E91D0DDCFF             jmp     00404D38
0064401B   EBE1                   jmp     00643FFE

****** END
|
0064401D   33C0                   xor     eax, eax
0064401F   5A                     pop     edx
00644020   59                     pop     ecx
00644021   59                     pop     ecx
00644022   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'Ûmð_^[‹å]Ã'
|
00644025   684F406400             push    $0064404F
0064402A   8D45A8                 lea     eax, [ebp-$58]

* Reference to: System.@LStrClr(void;void);
|
0064402D   E86A14DCFF             call    0040549C
00644032   8D45AC                 lea     eax, [ebp-$54]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00644035   E83E05DDFF             call    00414578
0064403A   8D45BC                 lea     eax, [ebp-$44]
0064403D   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00644042   E87914DCFF             call    004054C0
00644047   C3                     ret


* Reference to: System.@HandleFinally;
|
00644048   E9EB0CDCFF             jmp     00404D38
0064404D   EBDB                   jmp     0064402A

****** END
|
0064404F   DB6DF0                 fld     tbyte ptr [ebp-$10]
00644052   5F                     pop     edi
00644053   5E                     pop     esi
00644054   5B                     pop     ebx
00644055   8BE5                   mov     esp, ebp
00644057   5D                     pop     ebp
00644058   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00644048(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00644048   E9EB0CDCFF             jmp     00404D38

|
0064404D   EBDB                   jmp     0064402A
0064404F   DB6DF0                 fld     tbyte ptr [ebp-$10]
00644052   5F                     pop     edi
00644053   5E                     pop     esi
00644054   5B                     pop     ebx
00644055   8BE5                   mov     esp, ebp
00644057   5D                     pop     ebp
00644058   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00644121(Sender : TObject);
begin
(*
00644121   8BEC                   mov     ebp, esp
00644123   83C4EC                 add     esp, -$14
00644126   53                     push    ebx
00644127   56                     push    esi
00644128   57                     push    edi
00644129   33D2                   xor     edx, edx
0064412B   8955EC                 mov     [ebp-$14], edx
0064412E   8945FC                 mov     [ebp-$04], eax
00644131   33C0                   xor     eax, eax
00644133   55                     push    ebp
00644134   6805426400             push    $00644205

***** TRY
|
00644139   64FF30                 push    dword ptr fs:[eax]
0064413C   648920                 mov     fs:[eax], esp
0064413F   33C0                   xor     eax, eax
00644141   8945F0                 mov     [ebp-$10], eax
00644144   8945F4                 mov     [ebp-$0C], eax
00644147   668945F8               mov     [ebp-$08], ax
0064414B   8B45FC                 mov     eax, [ebp-$04]

|
0064414E   E8055E1700             call    007B9F58
00644153   33C0                   xor     eax, eax
00644155   55                     push    ebp
00644156   68E8416400             push    $006441E8

***** TRY
|
0064415B   64FF30                 push    dword ptr fs:[eax]
0064415E   648920                 mov     fs:[eax], esp
00644161   33C0                   xor     eax, eax
00644163   55                     push    ebp
00644164   6897416400             push    $00644197

***** TRY
|
00644169   64FF30                 push    dword ptr fs:[eax]
0064416C   648920                 mov     fs:[eax], esp
0064416F   8B45FC                 mov     eax, [ebp-$04]

|
00644172   E829421700             call    007B83A0
00644177   EB08                   jmp     00644181
00644179   8B45FC                 mov     eax, [ebp-$04]

|
0064417C   E873451700             call    007B86F4
00644181   8B45FC                 mov     eax, [ebp-$04]

|
00644184   E8AF361700             call    007B7838
00644189   84C0                   test    al, al
0064418B   74EC                   jz      00644179
0064418D   33C0                   xor     eax, eax
0064418F   5A                     pop     edx
00644190   59                     pop     ecx
00644191   59                     pop     ecx
00644192   648910                 mov     fs:[eax], edx
00644195   EB3B                   jmp     006441D2

* Reference to: System.@HandleOnException;
|
00644197   E9140ADCFF             jmp     00404BB0
0064419C   0100                   add     [eax], eax
0064419E   0000                   add     [eax], al
006441A0   40                     inc     eax
006441A1   95                     xchg    eax, ebp
006441A2   40                     inc     eax
006441A3   00A841640089           add     [eax+$89006441], ch
006441A9   C3                     ret

006441AA   6A00                   push    $00
006441AC   8B4B04                 mov     ecx, [ebx+$04]
006441AF   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'Erro ao somar o itens!'
|
006441B2   BA20426400             mov     edx, $00644220

* Reference to: System.@LStrCat3;
|
006441B7   E8EC15DCFF             call    004057A8
006441BC   8B45EC                 mov     eax, [ebp-$14]
006441BF   668B0D3C426400         mov     cx, word ptr [$0064423C]
006441C6   B201                   mov     dl, $01

|
006441C8   E85FF9DFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006441CD   E8DE0CDCFF             call    00404EB0

****** END
|
006441D2   33C0                   xor     eax, eax
006441D4   5A                     pop     edx
006441D5   59                     pop     ecx
006441D6   59                     pop     ecx
006441D7   648910                 mov     fs:[eax], edx

****** FINALLY
|
006441DA   68EF416400             push    $006441EF
006441DF   8B45FC                 mov     eax, [ebp-$04]

|
006441E2   E8795D1700             call    007B9F60
006441E7   C3                     ret


* Reference to: System.@HandleFinally;
|
006441E8   E94B0BDCFF             jmp     00404D38
006441ED   EBF0                   jmp     006441DF

****** END
|
006441EF   33C0                   xor     eax, eax
006441F1   5A                     pop     edx
006441F2   59                     pop     ecx
006441F3   59                     pop     ecx
006441F4   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'Ûmð_^[‹å]Ã'
|
006441F7   680C426400             push    $0064420C
006441FC   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
006441FF   E89812DCFF             call    0040549C
00644204   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00644205(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00644205   E92E0BDCFF             jmp     00404D38

|
0064420A   EBF0                   jmp     006441FC
0064420C   DB6DF0                 fld     tbyte ptr [ebp-$10]
0064420F   5F                     pop     edi
00644210   5E                     pop     esi
00644211   5B                     pop     ebx
00644212   8BE5                   mov     esp, ebp
00644214   5D                     pop     ebp
00644215   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00644241(Sender : TObject);
begin
(*
00644241   8BEC                   mov     ebp, esp
00644243   51                     push    ecx
00644244   B905000000             mov     ecx, $00000005
00644249   6A00                   push    $00
0064424B   6A00                   push    $00
0064424D   49                     dec     ecx
0064424E   75F9                   jnz     00644249
00644250   51                     push    ecx
00644251   874DFC                 xchg    [ebp-$04], ecx
00644254   53                     push    ebx
00644255   56                     push    esi
00644256   57                     push    edi
00644257   8BF1                   mov     esi, ecx
00644259   8955FC                 mov     [ebp-$04], edx
0064425C   8BD8                   mov     ebx, eax
0064425E   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00644261   E8E616DCFF             call    0040594C
00644266   33C0                   xor     eax, eax
00644268   55                     push    ebp
00644269   687E446400             push    $0064447E

***** TRY
|
0064426E   64FF30                 push    dword ptr fs:[eax]
00644271   648920                 mov     fs:[eax], esp
00644274   C645FB00               mov     byte ptr [ebp-$05], $00
00644278   8B45FC                 mov     eax, [ebp-$04]
0064427B   8B00                   mov     eax, [eax]

|
0064427D   E8D65C1700             call    007B9F58
00644282   33C0                   xor     eax, eax
00644284   55                     push    ebp
00644285   6854446400             push    $00644454

***** TRY
|
0064428A   64FF30                 push    dword ptr fs:[eax]
0064428D   648920                 mov     fs:[eax], esp
00644290   33C0                   xor     eax, eax
00644292   55                     push    ebp
00644293   6801446400             push    $00644401

***** TRY
|
00644298   64FF30                 push    dword ptr fs:[eax]
0064429B   648920                 mov     fs:[eax], esp
0064429E   8D4DF4                 lea     ecx, [ebp-$0C]
006442A1   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'TipoLcto'
|
006442A3   BA9C446400             mov     edx, $0064449C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006442A8   E88B3A1700             call    007B7D38
006442AD   8B55F4                 mov     edx, [ebp-$0C]
006442B0   A164A07D00             mov     eax, dword ptr [$007DA064]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006442B5   E83612DCFF             call    004054F0
006442BA   8B45FC                 mov     eax, [ebp-$04]
006442BD   8B00                   mov     eax, [eax]

|
006442BF   E8DC401700             call    007B83A0
006442C4   E918010000             jmp     006443E1
006442C9   8D4DF0                 lea     ecx, [ebp-$10]
006442CC   8B45FC                 mov     eax, [ebp-$04]
006442CF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodProd'
|
006442D1   BAB0446400             mov     edx, $006444B0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006442D6   E85D3A1700             call    007B7D38
006442DB   837DF000               cmp     dword ptr [ebp-$10], +$00
006442DF   0F84F2000000           jz      006443D7
006442E5   8D4DEC                 lea     ecx, [ebp-$14]
006442E8   8B45FC                 mov     eax, [ebp-$04]
006442EB   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodProd'
|
006442ED   BAB0446400             mov     edx, $006444B0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006442F2   E8413A1700             call    007B7D38
006442F7   8B45EC                 mov     eax, [ebp-$14]
006442FA   50                     push    eax
006442FB   8D4DE8                 lea     ecx, [ebp-$18]
006442FE   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NatOper'
|
00644300   BAC0446400             mov     edx, $006444C0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00644305   E82E3A1700             call    007B7D38
0064430A   8B45E8                 mov     eax, [ebp-$18]
0064430D   50                     push    eax
0064430E   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'DtLcto'
|
00644310   BAD0446400             mov     edx, $006444D0

|
00644315   E806371700             call    007B7A20
0064431A   83C4F8                 add     esp, -$08
0064431D   DD1C24                 fstp    qword ptr [esp]
00644320   9B                     wait
00644321   8D4DE4                 lea     ecx, [ebp-$1C]
00644324   8B45FC                 mov     eax, [ebp-$04]
00644327   8B00                   mov     eax, [eax]

* Possible String Reference to: 'UnidMed'
|
00644329   BAE0446400             mov     edx, $006444E0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064432E   E8053A1700             call    007B7D38
00644333   8B45E4                 mov     eax, [ebp-$1C]
00644336   50                     push    eax
00644337   8B45FC                 mov     eax, [ebp-$04]
0064433A   8B00                   mov     eax, [eax]

* Possible String Reference to: 'QtdeUnidMed'
|
0064433C   BAF0446400             mov     edx, $006444F0

|
00644341   E8E2371700             call    007B7B28
00644346   83C4F4                 add     esp, -$0C
00644349   DB3C24                 fstp    tbyte ptr [esp]
0064434C   9B                     wait
0064434D   8B45FC                 mov     eax, [ebp-$04]
00644350   8B00                   mov     eax, [eax]

* Possible String Reference to: 'QtdLcto'
|
00644352   BA04456400             mov     edx, $00644504

|
00644357   E8CC371700             call    007B7B28
0064435C   83C4F4                 add     esp, -$0C
0064435F   DB3C24                 fstp    tbyte ptr [esp]
00644362   9B                     wait
00644363   8B45FC                 mov     eax, [ebp-$04]
00644366   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VlrUnit'
|
00644368   BA14456400             mov     edx, $00644514

|
0064436D   E8B6371700             call    007B7B28
00644372   83C4F4                 add     esp, -$0C
00644375   DB3C24                 fstp    tbyte ptr [esp]
00644378   9B                     wait
00644379   8B4508                 mov     eax, [ebp+$08]
0064437C   50                     push    eax
0064437D   8D4DE0                 lea     ecx, [ebp-$20]
00644380   8B45FC                 mov     eax, [ebp-$04]
00644383   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodSubLocal'
|
00644385   BA24456400             mov     edx, $00644524

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064438A   E8A9391700             call    007B7D38
0064438F   8B45E0                 mov     eax, [ebp-$20]
00644392   50                     push    eax
00644393   8B45FC                 mov     eax, [ebp-$04]
00644396   50                     push    eax
00644397   56                     push    esi
00644398   8D4DDC                 lea     ecx, [ebp-$24]
0064439B   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Serie'
|
0064439D   BA38456400             mov     edx, $00644538

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006443A2   E891391700             call    007B7D38
006443A7   8B45DC                 mov     eax, [ebp-$24]
006443AA   50                     push    eax
006443AB   8D4DD8                 lea     ecx, [ebp-$28]
006443AE   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Especie'
|
006443B0   BA48456400             mov     edx, $00644548

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006443B5   E87E391700             call    007B7D38
006443BA   8B45D8                 mov     eax, [ebp-$28]
006443BD   50                     push    eax
006443BE   8D4DD4                 lea     ecx, [ebp-$2C]
006443C1   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Filial'
|
006443C3   BA58456400             mov     edx, $00644558

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006443C8   E86B391700             call    007B7D38
006443CD   8B45D4                 mov     eax, [ebp-$2C]
006443D0   5A                     pop     edx
006443D1   59                     pop     ecx

|
006443D2   E809020000             call    006445E0
006443D7   8B45FC                 mov     eax, [ebp-$04]
006443DA   8B00                   mov     eax, [eax]

|
006443DC   E813431700             call    007B86F4
006443E1   8B45FC                 mov     eax, [ebp-$04]
006443E4   8B00                   mov     eax, [eax]

|
006443E6   E84D341700             call    007B7838
006443EB   84C0                   test    al, al
006443ED   0F84D6FEFFFF           jz      006442C9
006443F3   C645FB01               mov     byte ptr [ebp-$05], $01
006443F7   33C0                   xor     eax, eax
006443F9   5A                     pop     edx
006443FA   59                     pop     ecx
006443FB   59                     pop     ecx
006443FC   648910                 mov     fs:[eax], edx
006443FF   EB3B                   jmp     0064443C

* Reference to: System.@HandleOnException;
|
00644401   E9AA07DCFF             jmp     00404BB0
00644406   0100                   add     [eax], eax
00644408   0000                   add     [eax], al
0064440A   40                     inc     eax
0064440B   95                     xchg    eax, ebp
0064440C   40                     inc     eax
0064440D   0012                   add     [edx], dl
0064440F   44                     inc     esp
00644410   640089C36A008B         add     fs:[ecx+$8B006AC3], cl
00644417   4B                     dec     ebx
00644418   048D                   add     al, -$73
0064441A   45                     inc     ebp
0064441B   D0BA68456400           sar     byte ptr [edx+$644568], 1

* Reference to: System.@LStrCat3;
|
00644421   E88213DCFF             call    004057A8
00644426   8B45D0                 mov     eax, [ebp-$30]
00644429   668B0DDC456400         mov     cx, word ptr [$006445DC]
00644430   B201                   mov     dl, $01

|
00644432   E8F5F6DFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00644437   E8740ADCFF             call    00404EB0

****** END
|
0064443C   33C0                   xor     eax, eax
0064443E   5A                     pop     edx
0064443F   59                     pop     ecx
00644440   59                     pop     ecx
00644441   648910                 mov     fs:[eax], edx

****** FINALLY
|
00644444   685B446400             push    $0064445B
00644449   8B45FC                 mov     eax, [ebp-$04]
0064444C   8B00                   mov     eax, [eax]

|
0064444E   E80D5B1700             call    007B9F60
00644453   C3                     ret


* Reference to: System.@HandleFinally;
|
00644454   E9DF08DCFF             jmp     00404D38
00644459   EBEE                   jmp     00644449

****** END
|
0064445B   33C0                   xor     eax, eax
0064445D   5A                     pop     edx
0064445E   59                     pop     ecx
0064445F   59                     pop     ecx
00644460   648910                 mov     fs:[eax], edx

****** FINALLY
|
00644463   6885446400             push    $00644485
00644468   8D45D0                 lea     eax, [ebp-$30]
0064446B   BA0A000000             mov     edx, $0000000A

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00644470   E84B10DCFF             call    004054C0
00644475   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
00644478   E81F10DCFF             call    0040549C
0064447D   C3                     ret


* Reference to: System.@HandleFinally;
|
0064447E   E9B508DCFF             jmp     00404D38
00644483   EBE3                   jmp     00644468

****** END
|
00644485   8A45FB                 mov     al, byte ptr [ebp-$05]
00644488   5F                     pop     edi
00644489   5E                     pop     esi
0064448A   5B                     pop     ebx
0064448B   8BE5                   mov     esp, ebp
0064448D   5D                     pop     ebp
0064448E   C20400                 ret     $0004

*)
end;

procedure TFrmF2SubLocal._PROC_0064447E(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064447E   E9B508DCFF             jmp     00404D38

|
00644483   EBE3                   jmp     00644468
00644485   8A45FB                 mov     al, byte ptr [ebp-$05]
00644488   5F                     pop     edi
00644489   5E                     pop     esi
0064448A   5B                     pop     ebx
0064448B   8BE5                   mov     esp, ebp
0064448D   5D                     pop     ebp
0064448E   C20400                 ret     $0004

*)
end;

procedure TFrmF2SubLocal._PROC_006444E1(Sender : TObject);
begin
(*
006444E1   6E                     outsb
006444E2   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
006444EA   FFFF                   DB  $FF, $FF  //      
006444EC   0B00                   or      eax, [eax]
006444EE   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006444F5(Sender : TObject);
begin
(*
006444F5   6E                     outsb
006444F6   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
006444FE   FFFF                   DB  $FF, $FF  //      
00644500   07                     pop     es
00644501   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00644518(Sender : TObject);
begin
(*
00644518   6E                     outsb
00644519   697400FFFFFFFF0B       imul    esi, [eax+eax-$01], $0BFFFFFF
00644521   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006445E1(Sender : TObject);
begin
(*
006445E1   8BEC                   mov     ebp, esp
006445E3   51                     push    ecx
006445E4   B972000000             mov     ecx, $00000072
006445E9   6A00                   push    $00
006445EB   6A00                   push    $00
006445ED   49                     dec     ecx
006445EE   75F9                   jnz     006445E9
006445F0   51                     push    ecx
006445F1   874DFC                 xchg    [ebp-$04], ecx
006445F4   53                     push    ebx
006445F5   56                     push    esi
006445F6   57                     push    edi
006445F7   894DF4                 mov     [ebp-$0C], ecx
006445FA   8955F8                 mov     [ebp-$08], edx
006445FD   8945FC                 mov     [ebp-$04], eax
00644600   8B750C                 mov     esi, [ebp+$0C]
00644603   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00644606   E84113DCFF             call    0040594C
0064460B   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064460E   E83913DCFF             call    0040594C
00644613   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00644616   E83113DCFF             call    0040594C
0064461B   8B454C                 mov     eax, [ebp+$4C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064461E   E82913DCFF             call    0040594C
00644623   8B4548                 mov     eax, [ebp+$48]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00644626   E82113DCFF             call    0040594C
0064462B   8B453C                 mov     eax, [ebp+$3C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064462E   E81913DCFF             call    0040594C
00644633   8B4514                 mov     eax, [ebp+$14]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00644636   E81113DCFF             call    0040594C
0064463B   8B4510                 mov     eax, [ebp+$10]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064463E   E80913DCFF             call    0040594C
00644643   BB74DD7D00             mov     ebx, $007DDD74
00644648   33C0                   xor     eax, eax
0064464A   55                     push    ebp
0064464B   684E586400             push    $0064584E

***** TRY
|
00644650   64FF30                 push    dword ptr fs:[eax]
00644653   648920                 mov     fs:[eax], esp
00644656   C645F300               mov     byte ptr [ebp-$0D], $00
0064465A   33C0                   xor     eax, eax
0064465C   55                     push    ebp
0064465D   6856566400             push    $00645656

***** TRY
|
00644662   64FF30                 push    dword ptr fs:[eax]
00644665   648920                 mov     fs:[eax], esp
00644668   33C0                   xor     eax, eax
0064466A   55                     push    ebp
0064466B   6807566400             push    $00645607

***** TRY
|
00644670   64FF30                 push    dword ptr fs:[eax]
00644673   648920                 mov     fs:[eax], esp
00644676   837D4C00               cmp     dword ptr [ebp+$4C], +$00
0064467A   0F844B010000           jz      006447CB
00644680   8B5548                 mov     edx, [ebp+$48]
00644683   8B45FC                 mov     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007B1710()
|
00644686   E885D01600             call    007B1710
0064468B   84C0                   test    al, al
0064468D   0F84DF000000           jz      00644772
00644693   A164A07D00             mov     eax, dword ptr [$007DA064]
00644698   8B00                   mov     eax, [eax]

* Possible String Reference to: 'VE-CO-VA-E0-E1-S0-S1-D0-D1-D2-D3'
|
0064469A   BA6C586400             mov     edx, $0064586C

* Reference to: System.@LStrPos;
|
0064469F   E8FC13DCFF             call    00405AA0
006446A4   85C0                   test    eax, eax
006446A6   7E67                   jle     0064470F
006446A8   A18CA97D00             mov     eax, dword ptr [$007DA98C]
006446AD   8B00                   mov     eax, [eax]
006446AF   8B806C090000           mov     eax, [eax+$096C]
006446B5   8B10                   mov     edx, [eax]
006446B7   FF5244                 call    dword ptr [edx+$44]
006446BA   84C0                   test    al, al
006446BC   7451                   jz      0064470F
006446BE   833D6CDD7D0000         cmp     dword ptr [$007DDD6C], +$00
006446C5   7430                   jz      006446F7
006446C7   833D6CDD7D0000         cmp     dword ptr [$007DDD6C], +$00
006446CE   0F84F7000000           jz      006447CB
006446D4   8D4DA4                 lea     ecx, [ebp-$5C]

* Possible String Reference to: 'CodProd'
|
006446D7   BA98586400             mov     edx, $00645898
006446DC   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006446E1   E852361700             call    007B7D38
006446E6   8B45A4                 mov     eax, [ebp-$5C]
006446E9   8B554C                 mov     edx, [ebp+$4C]

* Reference to: System.@LStrCmp;
|
006446EC   E8B711DCFF             call    004058A8
006446F1   0F84D4000000           jz      006447CB
006446F7   A0A0586400             mov     al, byte ptr [$006458A0]
006446FC   50                     push    eax
006446FD   8B4DFC                 mov     ecx, [ebp-$04]
00644700   8B554C                 mov     edx, [ebp+$4C]
00644703   33C0                   xor     eax, eax

|
00644705   E82EE3FFFF             call    00642A38
0064470A   E9BC000000             jmp     006447CB
0064470F   A164A07D00             mov     eax, dword ptr [$007DA064]
00644714   8B00                   mov     eax, [eax]

* Possible String Reference to: 'ASE-ASS-TE-TS-EP-SP'
|
00644716   BAAC586400             mov     edx, $006458AC

* Reference to: System.@LStrPos;
|
0064471B   E88013DCFF             call    00405AA0
00644720   85C0                   test    eax, eax
00644722   0F8EA3000000           jle     006447CB
00644728   833D6CDD7D0000         cmp     dword ptr [$007DDD6C], +$00
0064472F   742C                   jz      0064475D
00644731   833D6CDD7D0000         cmp     dword ptr [$007DDD6C], +$00
00644738   0F848D000000           jz      006447CB
0064473E   8D4DA0                 lea     ecx, [ebp-$60]

* Possible String Reference to: 'CodProd'
|
00644741   BA98586400             mov     edx, $00645898
00644746   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064474B   E8E8351700             call    007B7D38
00644750   8B45A0                 mov     eax, [ebp-$60]
00644753   8B554C                 mov     edx, [ebp+$4C]

* Reference to: System.@LStrCmp;
|
00644756   E84D11DCFF             call    004058A8
0064475B   746E                   jz      006447CB
0064475D   A0A0586400             mov     al, byte ptr [$006458A0]
00644762   50                     push    eax
00644763   8B4DFC                 mov     ecx, [ebp-$04]
00644766   8B554C                 mov     edx, [ebp+$4C]
00644769   33C0                   xor     eax, eax

|
0064476B   E8C8E2FFFF             call    00642A38
00644770   EB59                   jmp     006447CB
00644772   A164A07D00             mov     eax, dword ptr [$007DA064]
00644777   8B00                   mov     eax, [eax]

* Possible String Reference to: 'ASE-ASS-TE-TS-EP-SP'
|
00644779   BAAC586400             mov     edx, $006458AC

* Reference to: System.@LStrPos;
|
0064477E   E81D13DCFF             call    00405AA0
00644783   85C0                   test    eax, eax
00644785   7E44                   jle     006447CB
00644787   833D6CDD7D0000         cmp     dword ptr [$007DDD6C], +$00
0064478E   7428                   jz      006447B8
00644790   833D6CDD7D0000         cmp     dword ptr [$007DDD6C], +$00
00644797   7432                   jz      006447CB
00644799   8D4D9C                 lea     ecx, [ebp-$64]

* Possible String Reference to: 'CodProd'
|
0064479C   BA98586400             mov     edx, $00645898
006447A1   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006447A6   E88D351700             call    007B7D38
006447AB   8B459C                 mov     eax, [ebp-$64]
006447AE   8B554C                 mov     edx, [ebp+$4C]

* Reference to: System.@LStrCmp;
|
006447B1   E8F210DCFF             call    004058A8
006447B6   7413                   jz      006447CB
006447B8   A0A0586400             mov     al, byte ptr [$006458A0]
006447BD   50                     push    eax
006447BE   8B4DFC                 mov     ecx, [ebp-$04]
006447C1   8B554C                 mov     edx, [ebp+$4C]
006447C4   33C0                   xor     eax, eax

|
006447C6   E86DE2FFFF             call    00642A38
006447CB   833D6CDD7D0000         cmp     dword ptr [$007DDD6C], +$00
006447D2   0F8400010000           jz      006448D8
006447D8   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to : tArrayTable._PROC_007B8B80()
|
006447DD   E89E431700             call    007B8B80
006447E2   48                     dec     eax
006447E3   0F85EF000000           jnz     006448D8
006447E9   8B45FC                 mov     eax, [ebp-$04]
006447EC   8B15DCAD7D00           mov     edx, [$007DADDC]
006447F2   8B12                   mov     edx, [edx]

* Reference to: System.@LStrCmp;
|
006447F4   E8AF10DCFF             call    004058A8
006447F9   0F84D9000000           jz      006448D8
006447FF   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]
00644805   8B554C                 mov     edx, [ebp+$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644808   E8B744DDFF             call    00418CC4
0064480D   56                     push    esi
0064480E   8DB56CFFFFFF           lea     esi, [ebp+$FFFFFF6C]
00644814   8DBD7CFFFFFF           lea     edi, [ebp+$FFFFFF7C]
0064481A   A5                     movsd
0064481B   A5                     movsd
0064481C   A5                     movsd
0064481D   A5                     movsd
0064481E   5E                     pop     esi
0064481F   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]
00644825   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644828   E89744DDFF             call    00418CC4
0064482D   56                     push    esi
0064482E   8DB55CFFFFFF           lea     esi, [ebp+$FFFFFF5C]
00644834   8D7D8C                 lea     edi, [ebp-$74]
00644837   A5                     movsd
00644838   A5                     movsd
00644839   A5                     movsd
0064483A   A5                     movsd
0064483B   5E                     pop     esi
0064483C   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]
00644842   50                     push    eax
00644843   6A01                   push    $01

* Possible String Reference to: 'CodProd'
|
00644845   B898586400             mov     eax, $00645898
0064484A   898554FFFFFF           mov     [ebp+$FFFFFF54], eax

* Possible String Reference to: 'Filial'
|
00644850   B8C8586400             mov     eax, $006458C8
00644855   898558FFFFFF           mov     [ebp+$FFFFFF58], eax
0064485B   8D9554FFFFFF           lea     edx, [ebp+$FFFFFF54]
00644861   B901000000             mov     ecx, $00000001
00644866   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B8568()
|
0064486B   E8F83C1700             call    007B8568
00644870   84C0                   test    al, al
00644872   7406                   jz      0064487A
00644874   C645F301               mov     byte ptr [ebp-$0D], $01
00644878   EB5E                   jmp     006448D8
0064487A   A170DD7D00             mov     eax, dword ptr [$007DDD70]

|
0064487F   E8F0291700             call    007B7274
00644884   8D8544FFFFFF           lea     eax, [ebp+$FFFFFF44]
0064488A   8B554C                 mov     edx, [ebp+$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064488D   E83244DDFF             call    00418CC4
00644892   8D8D44FFFFFF           lea     ecx, [ebp+$FFFFFF44]

* Possible String Reference to: 'CodProd'
|
00644898   BA98586400             mov     edx, $00645898
0064489D   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B767C()
|
006448A2   E8D52D1700             call    007B767C
006448A7   8D8534FFFFFF           lea     eax, [ebp+$FFFFFF34]
006448AD   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006448B0   E80F44DDFF             call    00418CC4
006448B5   8D8D34FFFFFF           lea     ecx, [ebp+$FFFFFF34]

* Possible String Reference to: 'Filial'
|
006448BB   BAC8586400             mov     edx, $006458C8
006448C0   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B767C()
|
006448C5   E8B22D1700             call    007B767C
006448CA   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006448CF   E808551700             call    007B9DDC
006448D4   C645F301               mov     byte ptr [ebp-$0D], $01
006448D8   833D6CDD7D0000         cmp     dword ptr [$007DDD6C], +$00
006448DF   0F84180D0000           jz      006455FD
006448E5   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to : tArrayTable._PROC_007B8B80()
|
006448EA   E891421700             call    007B8B80
006448EF   48                     dec     eax
006448F0   0F85070D0000           jnz     006455FD
006448F6   33C0                   xor     eax, eax
006448F8   55                     push    ebp
006448F9   68B8556400             push    $006455B8

***** TRY
|
006448FE   64FF30                 push    dword ptr fs:[eax]
00644901   648920                 mov     fs:[eax], esp
00644904   B054                   mov     al, $54
00644906   888521FFFFFF           mov     [ebp+$FFFFFF21], al
0064490C   C68520FFFFFF01         mov     byte ptr [ebp+$FFFFFF20], $01
00644913   8D8524FFFFFF           lea     eax, [ebp+$FFFFFF24]
00644919   8D9520FFFFFF           lea     edx, [ebp+$FFFFFF20]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
0064491F   E8CC43DDFF             call    00418CF0
00644924   8D8D24FFFFFF           lea     ecx, [ebp+$FFFFFF24]
0064492A   8B06                   mov     eax, [esi]

* Possible String Reference to: 'MOVESTOQUE'
|
0064492C   BAD8586400             mov     edx, $006458D8

* Reference to : tArrayTable._PROC_007B767C()
|
00644931   E8462D1700             call    007B767C
00644936   8B06                   mov     eax, [esi]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00644938   E89F541700             call    007B9DDC
0064493D   FF7544                 push    dword ptr [ebp+$44]
00644940   FF7540                 push    dword ptr [ebp+$40]
00644943   8D4DEC                 lea     ecx, [ebp-$14]
00644946   8D55EE                 lea     edx, [ebp-$12]
00644949   8D45F0                 lea     eax, [ebp-$10]

|
0064494C   E86392DCFF             call    0040DBB4
00644951   668B4538               mov     ax, word ptr [ebp+$38]
00644955   50                     push    eax
00644956   FF7534                 push    dword ptr [ebp+$34]
00644959   FF7530                 push    dword ptr [ebp+$30]
0064495C   668B452C               mov     ax, word ptr [ebp+$2C]
00644960   50                     push    eax
00644961   FF7528                 push    dword ptr [ebp+$28]
00644964   FF7524                 push    dword ptr [ebp+$24]
00644967   8B4D3C                 mov     ecx, [ebp+$3C]
0064496A   8B55FC                 mov     edx, [ebp-$04]
0064496D   8B454C                 mov     eax, [ebp+$4C]

|
00644970   E8B78BFFFF             call    0063D52C
00644975   DB7D24                 fstp    tbyte ptr [ebp+$24]
00644978   9B                     wait
00644979   8D851CFFFFFF           lea     eax, [ebp+$FFFFFF1C]
0064497F   50                     push    eax
00644980   8BCE                   mov     ecx, esi
00644982   8B5510                 mov     edx, [ebp+$10]
00644985   8B45FC                 mov     eax, [ebp-$04]

|
00644988   E8EF280000             call    0064727C
0064498D   8B951CFFFFFF           mov     edx, [ebp+$FFFFFF1C]
00644993   8D4510                 lea     eax, [ebp+$10]

* Reference to: System.@LStrLAsg(void;void;void;void);
|
00644996   E8990BDCFF             call    00405534
0064499B   8D8518FFFFFF           lea     eax, [ebp+$FFFFFF18]
006449A1   50                     push    eax
006449A2   8D8508FFFFFF           lea     eax, [ebp+$FFFFFF08]
006449A8   0FB755F0               movzx   edx, word ptr [ebp-$10]
006449AC   B102                   mov     cl, $02

|
006449AE   E8BD40DDFF             call    00418A70
006449B3   8D8508FFFFFF           lea     eax, [ebp+$FFFFFF08]
006449B9   33C9                   xor     ecx, ecx
006449BB   BA04000000             mov     edx, $00000004

* Reference to : TFrmInfoAtu._PROC_007A05B8()
|
006449C0   E8F3BB1500             call    007A05B8
006449C5   8D8518FFFFFF           lea     eax, [ebp+$FFFFFF18]
006449CB   50                     push    eax
006449CC   8D8504FFFFFF           lea     eax, [ebp+$FFFFFF04]
006449D2   50                     push    eax
006449D3   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
006449D9   0FB755EE               movzx   edx, word ptr [ebp-$12]
006449DD   B102                   mov     cl, $02

|
006449DF   E88C40DDFF             call    00418A70
006449E4   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
006449EA   33C9                   xor     ecx, ecx
006449EC   BA02000000             mov     edx, $00000002

* Reference to : TFrmInfoAtu._PROC_007A05B8()
|
006449F1   E8C2BB1500             call    007A05B8
006449F6   8B9504FFFFFF           mov     edx, [ebp+$FFFFFF04]
006449FC   58                     pop     eax

* Reference to: System.@LStrCat;
|
006449FD   E8620DDCFF             call    00405764
00644A02   8B8518FFFFFF           mov     eax, [ebp+$FFFFFF18]

* Reference to: SysUtils.StrToInt(AnsiString):Integer;
|
00644A08   E8C364DCFF             call    0040AED0
00644A0D   8BF8                   mov     edi, eax
00644A0F   33C0                   xor     eax, eax
00644A11   8945C8                 mov     [ebp-$38], eax
00644A14   8945CC                 mov     [ebp-$34], eax
00644A17   668945D0               mov     [ebp-$30], ax
00644A1B   33C0                   xor     eax, eax
00644A1D   8945B8                 mov     [ebp-$48], eax
00644A20   8945BC                 mov     [ebp-$44], eax
00644A23   668945C0               mov     [ebp-$40], ax
00644A27   33C0                   xor     eax, eax
00644A29   8945A8                 mov     [ebp-$58], eax
00644A2C   8945AC                 mov     [ebp-$54], eax
00644A2F   668945B0               mov     [ebp-$50], ax
00644A33   33C0                   xor     eax, eax
00644A35   8945D8                 mov     [ebp-$28], eax
00644A38   8945DC                 mov     [ebp-$24], eax
00644A3B   668945E0               mov     [ebp-$20], ax
00644A3F   33C0                   xor     eax, eax
00644A41   8945E4                 mov     [ebp-$1C], eax
00644A44   8D55D4                 lea     edx, [ebp-$2C]
00644A47   A18CA97D00             mov     eax, dword ptr [$007DA98C]
00644A4C   8B00                   mov     eax, [eax]
00644A4E   8B807C090000           mov     eax, [eax+$097C]
00644A54   8B08                   mov     ecx, [eax]
00644A56   FF5160                 call    dword ptr [ecx+$60]
00644A59   8B03                   mov     eax, [ebx]

|
00644A5B   E8B83A1700             call    007B8518

* Possible String Reference to: 'ANOMES'
|
00644A60   BAEC586400             mov     edx, $006458EC
00644A65   8B03                   mov     eax, [ebx]

|
00644A67   E8C8311700             call    007B7C34
00644A6C   8945E8                 mov     [ebp-$18], eax
00644A6F   837DE800               cmp     dword ptr [ebp-$18], +$00
00644A73   7503                   jnz     00644A78
00644A75   897DE8                 mov     [ebp-$18], edi
00644A78   8D8DF0FEFFFF           lea     ecx, [ebp+$FFFFFEF0]
00644A7E   8B06                   mov     eax, [esi]

* Possible String Reference to: 'TipoLcto'
|
00644A80   BAFC586400             mov     edx, $006458FC

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00644A85   E8AE321700             call    007B7D38
00644A8A   8B85F0FEFFFF           mov     eax, [ebp+$FFFFFEF0]

* Possible String Reference to: 'AI'
|
00644A90   BA10596400             mov     edx, $00645910

* Reference to: System.@LStrCmp;
|
00644A95   E80E0EDCFF             call    004058A8
00644A9A   7510                   jnz     00644AAC
00644A9C   6A00                   push    $00
00644A9E   6A00                   push    $00
00644AA0   6A00                   push    $00
00644AA2   8B5508                 mov     edx, [ebp+$08]
00644AA5   33C0                   xor     eax, eax

|
00644AA7   E8683E0000             call    00648914
00644AAC   8D85A0FEFFFF           lea     eax, [ebp+$FFFFFEA0]
00644AB2   8B554C                 mov     edx, [ebp+$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644AB5   E80A42DDFF             call    00418CC4
00644ABA   56                     push    esi
00644ABB   57                     push    edi
00644ABC   8DB5A0FEFFFF           lea     esi, [ebp+$FFFFFEA0]
00644AC2   8DBDB0FEFFFF           lea     edi, [ebp+$FFFFFEB0]
00644AC8   A5                     movsd
00644AC9   A5                     movsd
00644ACA   A5                     movsd
00644ACB   A5                     movsd
00644ACC   5F                     pop     edi
00644ACD   5E                     pop     esi
00644ACE   8D8590FEFFFF           lea     eax, [ebp+$FFFFFE90]
00644AD4   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644AD7   E8E841DDFF             call    00418CC4
00644ADC   56                     push    esi
00644ADD   57                     push    edi
00644ADE   8DB590FEFFFF           lea     esi, [ebp+$FFFFFE90]
00644AE4   8DBDC0FEFFFF           lea     edi, [ebp+$FFFFFEC0]
00644AEA   A5                     movsd
00644AEB   A5                     movsd
00644AEC   A5                     movsd
00644AED   A5                     movsd
00644AEE   5F                     pop     edi
00644AEF   5E                     pop     esi
00644AF0   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]
00644AF6   8BD7                   mov     edx, edi
00644AF8   B1FC                   mov     cl, $FC

|
00644AFA   E8713FDDFF             call    00418A70
00644AFF   56                     push    esi
00644B00   57                     push    edi
00644B01   8DB580FEFFFF           lea     esi, [ebp+$FFFFFE80]
00644B07   8DBDD0FEFFFF           lea     edi, [ebp+$FFFFFED0]
00644B0D   A5                     movsd
00644B0E   A5                     movsd
00644B0F   A5                     movsd
00644B10   A5                     movsd
00644B11   5F                     pop     edi
00644B12   5E                     pop     esi
00644B13   8D8570FEFFFF           lea     eax, [ebp+$FFFFFE70]
00644B19   8B1524A07D00           mov     edx, [$007DA024]
00644B1F   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644B21   E89E41DDFF             call    00418CC4
00644B26   56                     push    esi
00644B27   57                     push    edi
00644B28   8DB570FEFFFF           lea     esi, [ebp+$FFFFFE70]
00644B2E   8DBDE0FEFFFF           lea     edi, [ebp+$FFFFFEE0]
00644B34   A5                     movsd
00644B35   A5                     movsd
00644B36   A5                     movsd
00644B37   A5                     movsd
00644B38   5F                     pop     edi
00644B39   5E                     pop     esi
00644B3A   8D85B0FEFFFF           lea     eax, [ebp+$FFFFFEB0]
00644B40   50                     push    eax
00644B41   6A03                   push    $03

* Possible String Reference to: 'CodProd'
|
00644B43   B898586400             mov     eax, $00645898
00644B48   898560FEFFFF           mov     [ebp+$FFFFFE60], eax

* Possible String Reference to: 'Filial'
|
00644B4E   B8C8586400             mov     eax, $006458C8
00644B53   898564FEFFFF           mov     [ebp+$FFFFFE64], eax

* Possible String Reference to: 'AnoMes'
|
00644B59   B81C596400             mov     eax, $0064591C
00644B5E   898568FEFFFF           mov     [ebp+$FFFFFE68], eax

* Possible String Reference to: 'Modify'
|
00644B64   B82C596400             mov     eax, $0064592C
00644B69   89856CFEFFFF           mov     [ebp+$FFFFFE6C], eax
00644B6F   8D9560FEFFFF           lea     edx, [ebp+$FFFFFE60]
00644B75   B903000000             mov     ecx, $00000003
00644B7A   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B8568()
|
00644B7C   E8E7391700             call    007B8568
00644B81   84C0                   test    al, al
00644B83   0F8551030000           jnz     00644EDA
00644B89   8B03                   mov     eax, [ebx]

|
00644B8B   E8E4261700             call    007B7274
00644B90   8D8550FEFFFF           lea     eax, [ebp+$FFFFFE50]
00644B96   8B554C                 mov     edx, [ebp+$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644B99   E82641DDFF             call    00418CC4
00644B9E   8D8D50FEFFFF           lea     ecx, [ebp+$FFFFFE50]

* Possible String Reference to: 'CODPROD'
|
00644BA4   BA3C596400             mov     edx, $0064593C
00644BA9   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00644BAB   E8CC2A1700             call    007B767C
00644BB0   8D8540FEFFFF           lea     eax, [ebp+$FFFFFE40]
00644BB6   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644BB9   E80641DDFF             call    00418CC4
00644BBE   8D8D40FEFFFF           lea     ecx, [ebp+$FFFFFE40]

* Possible String Reference to: 'FILIAL'
|
00644BC4   BA4C596400             mov     edx, $0064594C
00644BC9   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00644BCB   E8AC2A1700             call    007B767C
00644BD0   8D8530FEFFFF           lea     eax, [ebp+$FFFFFE30]
00644BD6   8BD7                   mov     edx, edi
00644BD8   B1FC                   mov     cl, $FC

|
00644BDA   E8913EDDFF             call    00418A70
00644BDF   8D8D30FEFFFF           lea     ecx, [ebp+$FFFFFE30]

* Possible String Reference to: 'ANOMES'
|
00644BE5   BAEC586400             mov     edx, $006458EC
00644BEA   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00644BEC   E88B2A1700             call    007B767C
00644BF1   8D8520FEFFFF           lea     eax, [ebp+$FFFFFE20]
00644BF7   8B1524A07D00           mov     edx, [$007DA024]
00644BFD   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644BFF   E8C040DDFF             call    00418CC4
00644C04   8D8D20FEFFFF           lea     ecx, [ebp+$FFFFFE20]

* Possible String Reference to: 'MODIFY'
|
00644C0A   BA5C596400             mov     edx, $0064595C
00644C0F   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00644C11   E8662A1700             call    007B767C
00644C16   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00644C18   E8BF511700             call    007B9DDC
00644C1D   8B03                   mov     eax, [ebx]

|
00644C1F   E8203F1700             call    007B8B44
00644C24   8D8D1CFEFFFF           lea     ecx, [ebp+$FFFFFE1C]

* Possible String Reference to: 'CODPROD'
|
00644C2A   BA3C596400             mov     edx, $0064593C
00644C2F   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00644C31   E802311700             call    007B7D38
00644C36   8B851CFEFFFF           mov     eax, [ebp+$FFFFFE1C]
00644C3C   8B554C                 mov     edx, [ebp+$4C]

* Reference to: System.@LStrCmp;
|
00644C3F   E8640CDCFF             call    004058A8
00644C44   0F858E000000           jnz     00644CD8
00644C4A   8D8D18FEFFFF           lea     ecx, [ebp+$FFFFFE18]

* Possible String Reference to: 'FILIAL'
|
00644C50   BA4C596400             mov     edx, $0064594C
00644C55   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00644C57   E8DC301700             call    007B7D38
00644C5C   8B8518FEFFFF           mov     eax, [ebp+$FFFFFE18]
00644C62   8B55FC                 mov     edx, [ebp-$04]

* Reference to: System.@LStrCmp;
|
00644C65   E83E0CDCFF             call    004058A8
00644C6A   756C                   jnz     00644CD8

* Possible String Reference to: 'ANOMES'
|
00644C6C   BAEC586400             mov     edx, $006458EC
00644C71   8B03                   mov     eax, [ebx]

|
00644C73   E8BC2F1700             call    007B7C34
00644C78   3BF8                   cmp     edi, eax
00644C7A   7E5C                   jle     00644CD8

* Possible String Reference to: 'ESTOQUE'
|
00644C7C   BA6C596400             mov     edx, $0064596C
00644C81   8B03                   mov     eax, [ebx]

|
00644C83   E8A02E1700             call    007B7B28
00644C88   DB7DC8                 fstp    tbyte ptr [ebp-$38]
00644C8B   9B                     wait
00644C8C   8B45F4                 mov     eax, [ebp-$0C]
00644C8F   50                     push    eax
00644C90   6A00                   push    $00
00644C92   8B1564A07D00           mov     edx, [$007DA064]
00644C98   8B12                   mov     edx, [edx]
00644C9A   8B4DF8                 mov     ecx, [ebp-$08]
00644C9D   8B45FC                 mov     eax, [ebp-$04]

|
00644CA0   E883B71600             call    007B0428
00644CA5   84C0                   test    al, al
00644CA7   7410                   jz      00644CB9

* Possible String Reference to: 'ESTOQCORR'
|
00644CA9   BA7C596400             mov     edx, $0064597C
00644CAE   8B03                   mov     eax, [ebx]

|
00644CB0   E8732E1700             call    007B7B28
00644CB5   DB7DB8                 fstp    tbyte ptr [ebp-$48]
00644CB8   9B                     wait
00644CB9   8B55E8                 mov     edx, [ebp-$18]
00644CBC   8B4510                 mov     eax, [ebp+$10]

|
00644CBF   E87C230000             call    00647040
00644CC4   DB7DA8                 fstp    tbyte ptr [ebp-$58]
00644CC7   9B                     wait

* Possible String Reference to: 'GIROMEDIO'
|
00644CC8   BA90596400             mov     edx, $00645990
00644CCD   8B03                   mov     eax, [ebx]

|
00644CCF   E8542E1700             call    007B7B28
00644CD4   DB7DD8                 fstp    tbyte ptr [ebp-$28]
00644CD7   9B                     wait
00644CD8   C745E401000000         mov     dword ptr [ebp-$1C], $00000001
00644CDF   EB0A                   jmp     00644CEB
00644CE1   FF45E4                 inc     dword ptr [ebp-$1C]
00644CE4   8B03                   mov     eax, [ebx]

|
00644CE6   E8593E1700             call    007B8B44
00644CEB   8B03                   mov     eax, [ebx]

|
00644CED   E8AA531700             call    007BA09C
00644CF2   84C0                   test    al, al
00644CF4   7544                   jnz     00644D3A
00644CF6   8D8D14FEFFFF           lea     ecx, [ebp+$FFFFFE14]

* Possible String Reference to: 'CODPROD'
|
00644CFC   BA3C596400             mov     edx, $0064593C
00644D01   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00644D03   E830301700             call    007B7D38
00644D08   8B8514FEFFFF           mov     eax, [ebp+$FFFFFE14]
00644D0E   8B554C                 mov     edx, [ebp+$4C]

* Reference to: System.@LStrCmp;
|
00644D11   E8920BDCFF             call    004058A8
00644D16   7522                   jnz     00644D3A
00644D18   8D8D10FEFFFF           lea     ecx, [ebp+$FFFFFE10]

* Possible String Reference to: 'FILIAL'
|
00644D1E   BA4C596400             mov     edx, $0064594C
00644D23   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00644D25   E80E301700             call    007B7D38
00644D2A   8B8510FEFFFF           mov     eax, [ebp+$FFFFFE10]
00644D30   8B55FC                 mov     edx, [ebp-$04]

* Reference to: System.@LStrCmp;
|
00644D33   E8700BDCFF             call    004058A8
00644D38   74A7                   jz      00644CE1
00644D3A   8D8500FEFFFF           lea     eax, [ebp+$FFFFFE00]
00644D40   8B554C                 mov     edx, [ebp+$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644D43   E87C3FDDFF             call    00418CC4
00644D48   56                     push    esi
00644D49   57                     push    edi
00644D4A   8DB500FEFFFF           lea     esi, [ebp+$FFFFFE00]
00644D50   8DBDB0FEFFFF           lea     edi, [ebp+$FFFFFEB0]
00644D56   A5                     movsd
00644D57   A5                     movsd
00644D58   A5                     movsd
00644D59   A5                     movsd
00644D5A   5F                     pop     edi
00644D5B   5E                     pop     esi
00644D5C   8D85F0FDFFFF           lea     eax, [ebp+$FFFFFDF0]
00644D62   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644D65   E85A3FDDFF             call    00418CC4
00644D6A   56                     push    esi
00644D6B   57                     push    edi
00644D6C   8DB5F0FDFFFF           lea     esi, [ebp+$FFFFFDF0]
00644D72   8DBDC0FEFFFF           lea     edi, [ebp+$FFFFFEC0]
00644D78   A5                     movsd
00644D79   A5                     movsd
00644D7A   A5                     movsd
00644D7B   A5                     movsd
00644D7C   5F                     pop     edi
00644D7D   5E                     pop     esi
00644D7E   8D85E0FDFFFF           lea     eax, [ebp+$FFFFFDE0]
00644D84   8BD7                   mov     edx, edi
00644D86   B1FC                   mov     cl, $FC

|
00644D88   E8E33CDDFF             call    00418A70
00644D8D   56                     push    esi
00644D8E   57                     push    edi
00644D8F   8DB5E0FDFFFF           lea     esi, [ebp+$FFFFFDE0]
00644D95   8DBDD0FEFFFF           lea     edi, [ebp+$FFFFFED0]
00644D9B   A5                     movsd
00644D9C   A5                     movsd
00644D9D   A5                     movsd
00644D9E   A5                     movsd
00644D9F   5F                     pop     edi
00644DA0   5E                     pop     esi
00644DA1   8D85D0FDFFFF           lea     eax, [ebp+$FFFFFDD0]
00644DA7   8B1524A07D00           mov     edx, [$007DA024]
00644DAD   8B12                   mov     edx, [edx]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644DAF   E8103FDDFF             call    00418CC4
00644DB4   56                     push    esi
00644DB5   57                     push    edi
00644DB6   8DB5D0FDFFFF           lea     esi, [ebp+$FFFFFDD0]
00644DBC   8DBDE0FEFFFF           lea     edi, [ebp+$FFFFFEE0]
00644DC2   A5                     movsd
00644DC3   A5                     movsd
00644DC4   A5                     movsd
00644DC5   A5                     movsd
00644DC6   5F                     pop     edi
00644DC7   5E                     pop     esi
00644DC8   8D85B0FEFFFF           lea     eax, [ebp+$FFFFFEB0]
00644DCE   50                     push    eax
00644DCF   6A03                   push    $03

* Possible String Reference to: 'CODPROD'
|
00644DD1   B83C596400             mov     eax, $0064593C
00644DD6   898560FEFFFF           mov     [ebp+$FFFFFE60], eax

* Possible String Reference to: 'FILIAL'
|
00644DDC   B84C596400             mov     eax, $0064594C
00644DE1   898564FEFFFF           mov     [ebp+$FFFFFE64], eax

* Possible String Reference to: 'ANOMES'
|
00644DE7   B8EC586400             mov     eax, $006458EC
00644DEC   898568FEFFFF           mov     [ebp+$FFFFFE68], eax

* Possible String Reference to: 'MODIFY'
|
00644DF2   B85C596400             mov     eax, $0064595C
00644DF7   89856CFEFFFF           mov     [ebp+$FFFFFE6C], eax
00644DFD   8D9560FEFFFF           lea     edx, [ebp+$FFFFFE60]
00644E03   B903000000             mov     ecx, $00000003
00644E08   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B8568()
|
00644E0A   E859371700             call    007B8568
00644E0F   DB6DC8                 fld     tbyte ptr [ebp-$38]
00644E12   8D85C0FDFFFF           lea     eax, [ebp+$FFFFFDC0]

* Reference to: Variants.@VarFromReal;
|
00644E18   E86B3EDDFF             call    00418C88
00644E1D   8D8DC0FDFFFF           lea     ecx, [ebp+$FFFFFDC0]

* Possible String Reference to: 'ESTOQUE'
|
00644E23   BA6C596400             mov     edx, $0064596C
00644E28   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00644E2A   E84D281700             call    007B767C
00644E2F   8B45F4                 mov     eax, [ebp-$0C]
00644E32   50                     push    eax
00644E33   6A00                   push    $00
00644E35   8B1564A07D00           mov     edx, [$007DA064]
00644E3B   8B12                   mov     edx, [edx]
00644E3D   8B4DF8                 mov     ecx, [ebp-$08]
00644E40   8B45FC                 mov     eax, [ebp-$04]

|
00644E43   E8E0B51600             call    007B0428
00644E48   84C0                   test    al, al
00644E4A   7420                   jz      00644E6C
00644E4C   DB6DB8                 fld     tbyte ptr [ebp-$48]
00644E4F   8D85B0FDFFFF           lea     eax, [ebp+$FFFFFDB0]

* Reference to: Variants.@VarFromReal;
|
00644E55   E82E3EDDFF             call    00418C88
00644E5A   8D8DB0FDFFFF           lea     ecx, [ebp+$FFFFFDB0]

* Possible String Reference to: 'ESTOQCORR'
|
00644E60   BA7C596400             mov     edx, $0064597C
00644E65   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00644E67   E810281700             call    007B767C
00644E6C   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00644E6E   E8694F1700             call    007B9DDC
00644E73   668B45B0               mov     ax, word ptr [ebp-$50]
00644E77   50                     push    eax
00644E78   FF75AC                 push    dword ptr [ebp-$54]
00644E7B   FF75A8                 push    dword ptr [ebp-$58]
00644E7E   33C9                   xor     ecx, ecx
00644E80   8BD7                   mov     edx, edi
00644E82   8B4510                 mov     eax, [ebp+$10]

|
00644E85   E8BE2C0000             call    00647B48
00644E8A   668B45B0               mov     ax, word ptr [ebp-$50]
00644E8E   50                     push    eax
00644E8F   FF75AC                 push    dword ptr [ebp-$54]
00644E92   FF75A8                 push    dword ptr [ebp-$58]
00644E95   8BCE                   mov     ecx, esi
00644E97   33D2                   xor     edx, edx
00644E99   8B4510                 mov     eax, [ebp+$10]

|
00644E9C   E8DB310000             call    0064807C
00644EA1   8D8DACFDFFFF           lea     ecx, [ebp+$FFFFFDAC]
00644EA7   8B06                   mov     eax, [esi]

* Possible String Reference to: 'TipoLcto'
|
00644EA9   BAFC586400             mov     edx, $006458FC

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00644EAE   E8852E1700             call    007B7D38
00644EB3   8B85ACFDFFFF           mov     eax, [ebp+$FFFFFDAC]

* Possible String Reference to: 'AI'
|
00644EB9   BA10596400             mov     edx, $00645910

* Reference to: System.@LStrCmp;
|
00644EBE   E8E509DCFF             call    004058A8
00644EC3   7415                   jz      00644EDA
00644EC5   668B45D0               mov     ax, word ptr [ebp-$30]
00644EC9   50                     push    eax
00644ECA   FF75CC                 push    dword ptr [ebp-$34]
00644ECD   FF75C8                 push    dword ptr [ebp-$38]
00644ED0   8B5508                 mov     edx, [ebp+$08]
00644ED3   33C0                   xor     eax, eax

|
00644ED5   E83A3A0000             call    00648914
00644EDA   8B4514                 mov     eax, [ebp+$14]
00644EDD   BAA4596400             mov     edx, $006459A4

* Reference to: System.@LStrCmp;
|
00644EE2   E8C109DCFF             call    004058A8
00644EE7   7535                   jnz     00644F1E
00644EE9   668B452C               mov     ax, word ptr [ebp+$2C]
00644EED   50                     push    eax
00644EEE   FF7528                 push    dword ptr [ebp+$28]
00644EF1   FF7524                 push    dword ptr [ebp+$24]
00644EF4   668B4520               mov     ax, word ptr [ebp+$20]
00644EF8   50                     push    eax
00644EF9   FF751C                 push    dword ptr [ebp+$1C]
00644EFC   FF7518                 push    dword ptr [ebp+$18]
00644EFF   668B45E0               mov     ax, word ptr [ebp-$20]
00644F03   50                     push    eax
00644F04   FF75DC                 push    dword ptr [ebp-$24]
00644F07   FF75D8                 push    dword ptr [ebp-$28]
00644F0A   8B45F4                 mov     eax, [ebp-$0C]
00644F0D   50                     push    eax
00644F0E   8B4DF8                 mov     ecx, [ebp-$08]
00644F11   8B55E4                 mov     edx, [ebp-$1C]
00644F14   8B45D4                 mov     eax, [ebp-$2C]

|
00644F17   E8940B0000             call    00645AB0
00644F1C   EB33                   jmp     00644F51
00644F1E   668B452C               mov     ax, word ptr [ebp+$2C]
00644F22   50                     push    eax
00644F23   FF7528                 push    dword ptr [ebp+$28]
00644F26   FF7524                 push    dword ptr [ebp+$24]
00644F29   668B4520               mov     ax, word ptr [ebp+$20]
00644F2D   50                     push    eax
00644F2E   FF751C                 push    dword ptr [ebp+$1C]
00644F31   FF7518                 push    dword ptr [ebp+$18]
00644F34   668B45E0               mov     ax, word ptr [ebp-$20]
00644F38   50                     push    eax
00644F39   FF75DC                 push    dword ptr [ebp-$24]
00644F3C   FF75D8                 push    dword ptr [ebp-$28]
00644F3F   8B45F4                 mov     eax, [ebp-$0C]
00644F42   50                     push    eax
00644F43   8B4DF8                 mov     ecx, [ebp-$08]
00644F46   8B55E4                 mov     edx, [ebp-$1C]
00644F49   8B45D4                 mov     eax, [ebp-$2C]

|
00644F4C   E827160000             call    00646578
00644F51   8D859CFDFFFF           lea     eax, [ebp+$FFFFFD9C]
00644F57   8B554C                 mov     edx, [ebp+$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644F5A   E8653DDDFF             call    00418CC4
00644F5F   56                     push    esi
00644F60   57                     push    edi
00644F61   8DB59CFDFFFF           lea     esi, [ebp+$FFFFFD9C]
00644F67   8DBDB0FEFFFF           lea     edi, [ebp+$FFFFFEB0]
00644F6D   A5                     movsd
00644F6E   A5                     movsd
00644F6F   A5                     movsd
00644F70   A5                     movsd
00644F71   5F                     pop     edi
00644F72   5E                     pop     esi
00644F73   8D858CFDFFFF           lea     eax, [ebp+$FFFFFD8C]
00644F79   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00644F7C   E8433DDDFF             call    00418CC4
00644F81   56                     push    esi
00644F82   57                     push    edi
00644F83   8DB58CFDFFFF           lea     esi, [ebp+$FFFFFD8C]
00644F89   8DBDC0FEFFFF           lea     edi, [ebp+$FFFFFEC0]
00644F8F   A5                     movsd
00644F90   A5                     movsd
00644F91   A5                     movsd
00644F92   A5                     movsd
00644F93   5F                     pop     edi
00644F94   5E                     pop     esi
00644F95   8D857CFDFFFF           lea     eax, [ebp+$FFFFFD7C]
00644F9B   8BD7                   mov     edx, edi
00644F9D   B1FC                   mov     cl, $FC

|
00644F9F   E8CC3ADDFF             call    00418A70
00644FA4   56                     push    esi
00644FA5   57                     push    edi
00644FA6   8DB57CFDFFFF           lea     esi, [ebp+$FFFFFD7C]
00644FAC   8DBDD0FEFFFF           lea     edi, [ebp+$FFFFFED0]
00644FB2   A5                     movsd
00644FB3   A5                     movsd
00644FB4   A5                     movsd
00644FB5   A5                     movsd
00644FB6   5F                     pop     edi
00644FB7   5E                     pop     esi
00644FB8   B043                   mov     al, $43
00644FBA   888521FFFFFF           mov     [ebp+$FFFFFF21], al
00644FC0   C68520FFFFFF01         mov     byte ptr [ebp+$FFFFFF20], $01
00644FC7   8D856CFDFFFF           lea     eax, [ebp+$FFFFFD6C]
00644FCD   8D9520FFFFFF           lea     edx, [ebp+$FFFFFF20]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
00644FD3   E8183DDDFF             call    00418CF0
00644FD8   56                     push    esi
00644FD9   57                     push    edi
00644FDA   8DB56CFDFFFF           lea     esi, [ebp+$FFFFFD6C]
00644FE0   8DBDE0FEFFFF           lea     edi, [ebp+$FFFFFEE0]
00644FE6   A5                     movsd
00644FE7   A5                     movsd
00644FE8   A5                     movsd
00644FE9   A5                     movsd
00644FEA   5F                     pop     edi
00644FEB   5E                     pop     esi
00644FEC   8D85B0FEFFFF           lea     eax, [ebp+$FFFFFEB0]
00644FF2   50                     push    eax
00644FF3   6A03                   push    $03

* Possible String Reference to: 'CODPROD'
|
00644FF5   B83C596400             mov     eax, $0064593C
00644FFA   898560FEFFFF           mov     [ebp+$FFFFFE60], eax

* Possible String Reference to: 'FILIAL'
|
00645000   B84C596400             mov     eax, $0064594C
00645005   898564FEFFFF           mov     [ebp+$FFFFFE64], eax

* Possible String Reference to: 'ANOMES'
|
0064500B   B8EC586400             mov     eax, $006458EC
00645010   898568FEFFFF           mov     [ebp+$FFFFFE68], eax

* Possible String Reference to: 'MODIFY'
|
00645016   B85C596400             mov     eax, $0064595C
0064501B   89856CFEFFFF           mov     [ebp+$FFFFFE6C], eax
00645021   8D9560FEFFFF           lea     edx, [ebp+$FFFFFE60]
00645027   B903000000             mov     ecx, $00000003
0064502C   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B8568()
|
0064502E   E835351700             call    007B8568
00645033   E9AC020000             jmp     006452E4

* Possible String Reference to: 'ANOMES'
|
00645038   BAEC586400             mov     edx, $006458EC
0064503D   8B03                   mov     eax, [ebx]

|
0064503F   E8F02B1700             call    007B7C34
00645044   3BF8                   cmp     edi, eax
00645046   0F8F71020000           jnle    006452BD
0064504C   8B4514                 mov     eax, [ebp+$14]
0064504F   BAA4596400             mov     edx, $006459A4

* Reference to: System.@LStrCmp;
|
00645054   E84F08DCFF             call    004058A8
00645059   0F853A010000           jnz     00645199
0064505F   8D8D68FDFFFF           lea     ecx, [ebp+$FFFFFD68]
00645065   8B06                   mov     eax, [esi]

* Possible String Reference to: 'Especie'
|
00645067   BAB0596400             mov     edx, $006459B0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064506C   E8C72C1700             call    007B7D38
00645071   8B8568FDFFFF           mov     eax, [ebp+$FFFFFD68]

* Possible String Reference to: 'simul'
|
00645077   BAC0596400             mov     edx, $006459C0

* Reference to: System.@LStrCmp;
|
0064507C   E82708DCFF             call    004058A8
00645081   0F8436020000           jz      006452BD
00645087   8D8D64FDFFFF           lea     ecx, [ebp+$FFFFFD64]
0064508D   8B06                   mov     eax, [esi]

* Possible String Reference to: 'Especie'
|
0064508F   BAB0596400             mov     edx, $006459B0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645094   E89F2C1700             call    007B7D38
00645099   8B8564FDFFFF           mov     eax, [ebp+$FFFFFD64]

* Possible String Reference to: 'empen'
|
0064509F   BAD0596400             mov     edx, $006459D0

* Reference to: System.@LStrCmp;
|
006450A4   E8FF07DCFF             call    004058A8
006450A9   0F840E020000           jz      006452BD
006450AF   8D8D50FDFFFF           lea     ecx, [ebp+$FFFFFD50]

* Possible String Reference to: 'ESTOQUE'
|
006450B5   BA6C596400             mov     edx, $0064596C
006450BA   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006450BC   E8772C1700             call    007B7D38
006450C1   8B8550FDFFFF           mov     eax, [ebp+$FFFFFD50]

|
006450C7   E86CCC1500             call    007A1D38
006450CC   DB6D24                 fld     tbyte ptr [ebp+$24]
006450CF   DEC1                   faddp   st(1), st(0)
006450D1   8D8554FDFFFF           lea     eax, [ebp+$FFFFFD54]

* Reference to: Variants.@VarFromReal;
|
006450D7   E8AC3BDDFF             call    00418C88
006450DC   8D8D54FDFFFF           lea     ecx, [ebp+$FFFFFD54]

* Possible String Reference to: 'ESTOQUE'
|
006450E2   BA6C596400             mov     edx, $0064596C
006450E7   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
006450E9   E88E251700             call    007B767C
006450EE   8B45F4                 mov     eax, [ebp-$0C]
006450F1   50                     push    eax
006450F2   6A00                   push    $00
006450F4   8B1564A07D00           mov     edx, [$007DA064]
006450FA   8B12                   mov     edx, [edx]
006450FC   8B4DF8                 mov     ecx, [ebp-$08]
006450FF   8B45FC                 mov     eax, [ebp-$04]

|
00645102   E821B31600             call    007B0428
00645107   84C0                   test    al, al
00645109   743F                   jz      0064514A
0064510B   8D8D3CFDFFFF           lea     ecx, [ebp+$FFFFFD3C]

* Possible String Reference to: 'ESTOQCORR'
|
00645111   BA7C596400             mov     edx, $0064597C
00645116   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645118   E81B2C1700             call    007B7D38
0064511D   8B853CFDFFFF           mov     eax, [ebp+$FFFFFD3C]

|
00645123   E810CC1500             call    007A1D38
00645128   DB6D24                 fld     tbyte ptr [ebp+$24]
0064512B   DEC1                   faddp   st(1), st(0)
0064512D   8D8540FDFFFF           lea     eax, [ebp+$FFFFFD40]

* Reference to: Variants.@VarFromReal;
|
00645133   E8503BDDFF             call    00418C88
00645138   8D8D40FDFFFF           lea     ecx, [ebp+$FFFFFD40]

* Possible String Reference to: 'ESTOQCORR'
|
0064513E   BA7C596400             mov     edx, $0064597C
00645143   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00645145   E832251700             call    007B767C
0064514A   668B452C               mov     ax, word ptr [ebp+$2C]
0064514E   50                     push    eax
0064514F   FF7528                 push    dword ptr [ebp+$28]
00645152   FF7524                 push    dword ptr [ebp+$24]
00645155   B9A4596400             mov     ecx, $006459A4
0064515A   8BD7                   mov     edx, edi
0064515C   8B4510                 mov     eax, [ebp+$10]

|
0064515F   E8E4290000             call    00647B48
00645164   668B452C               mov     ax, word ptr [ebp+$2C]
00645168   50                     push    eax
00645169   FF7528                 push    dword ptr [ebp+$28]
0064516C   FF7524                 push    dword ptr [ebp+$24]
0064516F   8BCE                   mov     ecx, esi
00645171   8B5514                 mov     edx, [ebp+$14]
00645174   8B4510                 mov     eax, [ebp+$10]

|
00645177   E8002F0000             call    0064807C
0064517C   668B452C               mov     ax, word ptr [ebp+$2C]
00645180   50                     push    eax
00645181   FF7528                 push    dword ptr [ebp+$28]
00645184   FF7524                 push    dword ptr [ebp+$24]
00645187   8B5508                 mov     edx, [ebp+$08]
0064518A   B8A4596400             mov     eax, $006459A4

|
0064518F   E880370000             call    00648914
00645194   E924010000             jmp     006452BD
00645199   8D8D38FDFFFF           lea     ecx, [ebp+$FFFFFD38]
0064519F   8B06                   mov     eax, [esi]

* Possible String Reference to: 'Especie'
|
006451A1   BAB0596400             mov     edx, $006459B0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006451A6   E88D2B1700             call    007B7D38
006451AB   8B8538FDFFFF           mov     eax, [ebp+$FFFFFD38]

* Possible String Reference to: 'simul'
|
006451B1   BAC0596400             mov     edx, $006459C0

* Reference to: System.@LStrCmp;
|
006451B6   E8ED06DCFF             call    004058A8
006451BB   0F84FC000000           jz      006452BD
006451C1   8D8D34FDFFFF           lea     ecx, [ebp+$FFFFFD34]
006451C7   8B06                   mov     eax, [esi]

* Possible String Reference to: 'Especie'
|
006451C9   BAB0596400             mov     edx, $006459B0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006451CE   E8652B1700             call    007B7D38
006451D3   8B8534FDFFFF           mov     eax, [ebp+$FFFFFD34]

* Possible String Reference to: 'empen'
|
006451D9   BAD0596400             mov     edx, $006459D0

* Reference to: System.@LStrCmp;
|
006451DE   E8C506DCFF             call    004058A8
006451E3   0F84D4000000           jz      006452BD

* Possible String Reference to: 'ESTOQUE'
|
006451E9   BA6C596400             mov     edx, $0064596C
006451EE   8B03                   mov     eax, [ebx]

|
006451F0   E833291700             call    007B7B28
006451F5   DB6D24                 fld     tbyte ptr [ebp+$24]
006451F8   DEE9                   fsubp   st(1), st(0)
006451FA   8D8524FDFFFF           lea     eax, [ebp+$FFFFFD24]

* Reference to: Variants.@VarFromReal;
|
00645200   E8833ADDFF             call    00418C88
00645205   8D8D24FDFFFF           lea     ecx, [ebp+$FFFFFD24]

* Possible String Reference to: 'ESTOQUE'
|
0064520B   BA6C596400             mov     edx, $0064596C
00645210   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
00645212   E865241700             call    007B767C
00645217   8B45F4                 mov     eax, [ebp-$0C]
0064521A   50                     push    eax
0064521B   6A00                   push    $00
0064521D   8B1564A07D00           mov     edx, [$007DA064]
00645223   8B12                   mov     edx, [edx]
00645225   8B4DF8                 mov     ecx, [ebp-$08]
00645228   8B45FC                 mov     eax, [ebp-$04]

|
0064522B   E8F8B11600             call    007B0428
00645230   84C0                   test    al, al
00645232   743F                   jz      00645273
00645234   8D8D10FDFFFF           lea     ecx, [ebp+$FFFFFD10]

* Possible String Reference to: 'ESTOQCORR'
|
0064523A   BA7C596400             mov     edx, $0064597C
0064523F   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645241   E8F22A1700             call    007B7D38
00645246   8B8510FDFFFF           mov     eax, [ebp+$FFFFFD10]

|
0064524C   E8E7CA1500             call    007A1D38
00645251   DB6D24                 fld     tbyte ptr [ebp+$24]
00645254   DEE9                   fsubp   st(1), st(0)
00645256   8D8514FDFFFF           lea     eax, [ebp+$FFFFFD14]

* Reference to: Variants.@VarFromReal;
|
0064525C   E8273ADDFF             call    00418C88
00645261   8D8D14FDFFFF           lea     ecx, [ebp+$FFFFFD14]

* Possible String Reference to: 'ESTOQCORR'
|
00645267   BA7C596400             mov     edx, $0064597C
0064526C   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B767C()
|
0064526E   E809241700             call    007B767C
00645273   668B452C               mov     ax, word ptr [ebp+$2C]
00645277   50                     push    eax
00645278   FF7528                 push    dword ptr [ebp+$28]
0064527B   FF7524                 push    dword ptr [ebp+$24]
0064527E   B9E0596400             mov     ecx, $006459E0
00645283   8BD7                   mov     edx, edi
00645285   8B4510                 mov     eax, [ebp+$10]

|
00645288   E8BB280000             call    00647B48
0064528D   668B452C               mov     ax, word ptr [ebp+$2C]
00645291   50                     push    eax
00645292   FF7528                 push    dword ptr [ebp+$28]
00645295   FF7524                 push    dword ptr [ebp+$24]
00645298   8BCE                   mov     ecx, esi
0064529A   8B5514                 mov     edx, [ebp+$14]
0064529D   8B4510                 mov     eax, [ebp+$10]

|
006452A0   E8D72D0000             call    0064807C
006452A5   668B452C               mov     ax, word ptr [ebp+$2C]
006452A9   50                     push    eax
006452AA   FF7528                 push    dword ptr [ebp+$28]
006452AD   FF7524                 push    dword ptr [ebp+$24]
006452B0   8B5508                 mov     edx, [ebp+$08]
006452B3   B8E0596400             mov     eax, $006459E0

|
006452B8   E857360000             call    00648914

* Possible String Reference to: 'ESTOQUE'
|
006452BD   BA6C596400             mov     edx, $0064596C
006452C2   8B03                   mov     eax, [ebx]

|
006452C4   E85F281700             call    007B7B28
006452C9   DB7DC8                 fstp    tbyte ptr [ebp-$38]
006452CC   9B                     wait

* Possible String Reference to: 'ESTOQCORR'
|
006452CD   BA7C596400             mov     edx, $0064597C
006452D2   8B03                   mov     eax, [ebx]

|
006452D4   E84F281700             call    007B7B28
006452D9   DB7DB8                 fstp    tbyte ptr [ebp-$48]
006452DC   9B                     wait
006452DD   8B03                   mov     eax, [ebx]

|
006452DF   E810341700             call    007B86F4
006452E4   8B03                   mov     eax, [ebx]

|
006452E6   E84D251700             call    007B7838
006452EB   84C0                   test    al, al
006452ED   7548                   jnz     00645337
006452EF   8D8D0CFDFFFF           lea     ecx, [ebp+$FFFFFD0C]

* Possible String Reference to: 'FILIAL'
|
006452F5   BA4C596400             mov     edx, $0064594C
006452FA   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006452FC   E8372A1700             call    007B7D38
00645301   8B850CFDFFFF           mov     eax, [ebp+$FFFFFD0C]
00645307   8B55FC                 mov     edx, [ebp-$04]

* Reference to: System.@LStrCmp;
|
0064530A   E89905DCFF             call    004058A8
0064530F   7526                   jnz     00645337
00645311   8D8D08FDFFFF           lea     ecx, [ebp+$FFFFFD08]

* Possible String Reference to: 'CODPROD'
|
00645317   BA3C596400             mov     edx, $0064593C
0064531C   8B03                   mov     eax, [ebx]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064531E   E8152A1700             call    007B7D38
00645323   8B8508FDFFFF           mov     eax, [ebp+$FFFFFD08]
00645329   8B554C                 mov     edx, [ebp+$4C]

* Reference to: System.@LStrCmp;
|
0064532C   E87705DCFF             call    004058A8
00645331   0F8401FDFFFF           jz      00645038
00645337   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00645339   E89E4A1700             call    007B9DDC
0064533E   8D85F8FCFFFF           lea     eax, [ebp+$FFFFFCF8]
00645344   8B554C                 mov     edx, [ebp+$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00645347   E87839DDFF             call    00418CC4
0064534C   56                     push    esi
0064534D   8DB5F8FCFFFF           lea     esi, [ebp+$FFFFFCF8]
00645353   8DBD7CFFFFFF           lea     edi, [ebp+$FFFFFF7C]
00645359   A5                     movsd
0064535A   A5                     movsd
0064535B   A5                     movsd
0064535C   A5                     movsd
0064535D   5E                     pop     esi
0064535E   8D85E8FCFFFF           lea     eax, [ebp+$FFFFFCE8]
00645364   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00645367   E85839DDFF             call    00418CC4
0064536C   56                     push    esi
0064536D   8DB5E8FCFFFF           lea     esi, [ebp+$FFFFFCE8]
00645373   8D7D8C                 lea     edi, [ebp-$74]
00645376   A5                     movsd
00645377   A5                     movsd
00645378   A5                     movsd
00645379   A5                     movsd
0064537A   5E                     pop     esi
0064537B   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]
00645381   50                     push    eax
00645382   6A01                   push    $01

* Possible String Reference to: 'CodProd'
|
00645384   B898586400             mov     eax, $00645898
00645389   898554FFFFFF           mov     [ebp+$FFFFFF54], eax

* Possible String Reference to: 'Filial'
|
0064538F   B8C8586400             mov     eax, $006458C8
00645394   898558FFFFFF           mov     [ebp+$FFFFFF58], eax
0064539A   8D9554FFFFFF           lea     edx, [ebp+$FFFFFF54]
006453A0   B901000000             mov     ecx, $00000001
006453A5   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B8568()
|
006453AA   E8B9311700             call    007B8568
006453AF   84C0                   test    al, al
006453B1   750A                   jnz     006453BD
006453B3   A170DD7D00             mov     eax, dword ptr [$007DDD70]

|
006453B8   E8B71E1700             call    007B7274
006453BD   8D85D8FCFFFF           lea     eax, [ebp+$FFFFFCD8]
006453C3   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006453C6   E8F938DDFF             call    00418CC4
006453CB   8D8DD8FCFFFF           lea     ecx, [ebp+$FFFFFCD8]

* Possible String Reference to: 'Filial'
|
006453D1   BAC8586400             mov     edx, $006458C8
006453D6   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B767C()
|
006453DB   E89C221700             call    007B767C
006453E0   8D85C8FCFFFF           lea     eax, [ebp+$FFFFFCC8]
006453E6   8B554C                 mov     edx, [ebp+$4C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006453E9   E8D638DDFF             call    00418CC4
006453EE   8D8DC8FCFFFF           lea     ecx, [ebp+$FFFFFCC8]

* Possible String Reference to: 'CodProd'
|
006453F4   BA98586400             mov     edx, $00645898
006453F9   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B767C()
|
006453FE   E879221700             call    007B767C
00645403   DB6DC8                 fld     tbyte ptr [ebp-$38]
00645406   8D85B8FCFFFF           lea     eax, [ebp+$FFFFFCB8]

* Reference to: Variants.@VarFromReal;
|
0064540C   E87738DDFF             call    00418C88
00645411   8D8DB8FCFFFF           lea     ecx, [ebp+$FFFFFCB8]

* Possible String Reference to: 'ESTOQUEATUAL'
|
00645417   BAEC596400             mov     edx, $006459EC
0064541C   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B767C()
|
00645421   E856221700             call    007B767C
00645426   8B45F4                 mov     eax, [ebp-$0C]
00645429   50                     push    eax
0064542A   6A00                   push    $00
0064542C   8B1564A07D00           mov     edx, [$007DA064]
00645432   8B12                   mov     edx, [edx]
00645434   8B4DF8                 mov     ecx, [ebp-$08]
00645437   8B45FC                 mov     eax, [ebp-$04]

|
0064543A   E8E9AF1600             call    007B0428
0064543F   84C0                   test    al, al
00645441   7423                   jz      00645466
00645443   DB6DB8                 fld     tbyte ptr [ebp-$48]
00645446   8D85A8FCFFFF           lea     eax, [ebp+$FFFFFCA8]

* Reference to: Variants.@VarFromReal;
|
0064544C   E83738DDFF             call    00418C88
00645451   8D8DA8FCFFFF           lea     ecx, [ebp+$FFFFFCA8]

* Possible String Reference to: 'ESTOQCORR'
|
00645457   BA7C596400             mov     edx, $0064597C
0064545C   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B767C()
|
00645461   E816221700             call    007B767C
00645466   8D8DA4FCFFFF           lea     ecx, [ebp+$FFFFFCA4]
0064546C   8B06                   mov     eax, [esi]

* Possible String Reference to: 'Especie'
|
0064546E   BAB0596400             mov     edx, $006459B0

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645473   E8C0281700             call    007B7D38
00645478   8B85A4FCFFFF           mov     eax, [ebp+$FFFFFCA4]

* Possible String Reference to: 'empen'
|
0064547E   BAD0596400             mov     edx, $006459D0

* Reference to: System.@LStrCmp;
|
00645483   E82004DCFF             call    004058A8
00645488   0F8588000000           jnz     00645516
0064548E   8B4514                 mov     eax, [ebp+$14]
00645491   BAA4596400             mov     edx, $006459A4

* Reference to: System.@LStrCmp;
|
00645496   E80D04DCFF             call    004058A8
0064549B   7536                   jnz     006454D3

* Possible String Reference to: 'Empenho'
|
0064549D   BA045A6400             mov     edx, $00645A04
006454A2   A170DD7D00             mov     eax, dword ptr [$007DDD70]

|
006454A7   E87C261700             call    007B7B28
006454AC   DB6D24                 fld     tbyte ptr [ebp+$24]
006454AF   DEC1                   faddp   st(1), st(0)
006454B1   8D8594FCFFFF           lea     eax, [ebp+$FFFFFC94]

* Reference to: Variants.@VarFromReal;
|
006454B7   E8CC37DDFF             call    00418C88
006454BC   8D8D94FCFFFF           lea     ecx, [ebp+$FFFFFC94]

* Possible String Reference to: 'Empenho'
|
006454C2   BA045A6400             mov     edx, $00645A04
006454C7   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B767C()
|
006454CC   E8AB211700             call    007B767C
006454D1   EB43                   jmp     00645516
006454D3   8B4514                 mov     eax, [ebp+$14]
006454D6   BAE0596400             mov     edx, $006459E0

* Reference to: System.@LStrCmp;
|
006454DB   E8C803DCFF             call    004058A8
006454E0   7534                   jnz     00645516

* Possible String Reference to: 'Empenho'
|
006454E2   BA045A6400             mov     edx, $00645A04
006454E7   A170DD7D00             mov     eax, dword ptr [$007DDD70]

|
006454EC   E837261700             call    007B7B28
006454F1   DB6D24                 fld     tbyte ptr [ebp+$24]
006454F4   DEE9                   fsubp   st(1), st(0)
006454F6   8D8584FCFFFF           lea     eax, [ebp+$FFFFFC84]

* Reference to: Variants.@VarFromReal;
|
006454FC   E88737DDFF             call    00418C88
00645501   8D8D84FCFFFF           lea     ecx, [ebp+$FFFFFC84]

* Possible String Reference to: 'Empenho'
|
00645507   BA045A6400             mov     edx, $00645A04
0064550C   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B767C()
|
00645511   E866211700             call    007B767C
00645516   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0064551B   E8BC481700             call    007B9DDC
00645520   8D8D80FCFFFF           lea     ecx, [ebp+$FFFFFC80]

* Possible String Reference to: 'Tipo'
|
00645526   BA145A6400             mov     edx, $00645A14
0064552B   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645530   E803281700             call    007B7D38
00645535   8B8580FCFFFF           mov     eax, [ebp+$FFFFFC80]
0064553B   BA245A6400             mov     edx, $00645A24

* Reference to: System.@LStrCmp;
|
00645540   E86303DCFF             call    004058A8
00645545   7559                   jnz     006455A0

* Possible String Reference to: 'EstoqueAtual'
|
00645547   BA305A6400             mov     edx, $00645A30
0064554C   A170DD7D00             mov     eax, dword ptr [$007DDD70]

|
00645551   E8D2251700             call    007B7B28
00645556   D81DA0586400           fcomp   dword ptr [$006458A0]
0064555C   DFE0                   fstsw   ax
0064555E   9E                     sahf
0064555F   773F                   jnbe    006455A0
00645561   B044                   mov     al, $44
00645563   888521FFFFFF           mov     [ebp+$FFFFFF21], al
00645569   C68520FFFFFF01         mov     byte ptr [ebp+$FFFFFF20], $01
00645570   8D8570FCFFFF           lea     eax, [ebp+$FFFFFC70]
00645576   8D9520FFFFFF           lea     edx, [ebp+$FFFFFF20]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
0064557C   E86F37DDFF             call    00418CF0
00645581   8D8D70FCFFFF           lea     ecx, [ebp+$FFFFFC70]

* Possible String Reference to: 'Tipo'
|
00645587   BA145A6400             mov     edx, $00645A14
0064558C   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to : tArrayTable._PROC_007B767C()
|
00645591   E8E6201700             call    007B767C
00645596   A16CDD7D00             mov     eax, dword ptr [$007DDD6C]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0064559B   E83C481700             call    007B9DDC
006455A0   A0405A6400             mov     al, byte ptr [$00645A40]

|
006455A5   E84AD3FFFF             call    006428F4
006455AA   C645F301               mov     byte ptr [ebp-$0D], $01
006455AE   33C0                   xor     eax, eax
006455B0   5A                     pop     edx
006455B1   59                     pop     ecx
006455B2   59                     pop     ecx
006455B3   648910                 mov     fs:[eax], edx
006455B6   EB45                   jmp     006455FD

* Reference to: System.@HandleOnException;
|
006455B8   E9F3F5DBFF             jmp     00404BB0
006455BD   0100                   add     [eax], eax
006455BF   0000                   add     [eax], al
006455C1   40                     inc     eax
006455C2   95                     xchg    eax, ebp
006455C3   40                     inc     eax
006455C4   00C9                   add     cl, cl
006455C6   55                     push    ebp
006455C7   640089C36A008B         add     fs:[ecx+$8B006AC3], cl
006455CE   4B                     dec     ebx
006455CF   048D                   add     al, -$73
006455D1   856CFCFF               test    [esp+edi*8-$01], ebp
006455D5   FFBA                   DB  $FF, $BA  //      
006455D7   4C                     dec     esp
006455D8   5A                     pop     edx
006455D9   6400E8                 add     al, ch
006455DC   C801                   enter   , $01
006455DE   DCFF                   fdiv    st(7), st(0)
006455E0   8B856CFCFFFF           mov     eax, [ebp+$FFFFFC6C]
006455E6   668B0D7C5A6400         mov     cx, word ptr [$00645A7C]
006455ED   B202                   mov     dl, $02

|
006455EF   E838E5DFFF             call    00443B2C
006455F4   C645F300               mov     byte ptr [ebp-$0D], $00

* Reference to: System.@DoneExcept;
|
006455F8   E8B3F8DBFF             call    00404EB0

****** END
|
006455FD   33C0                   xor     eax, eax
006455FF   5A                     pop     edx
00645600   59                     pop     ecx
00645601   59                     pop     ecx
00645602   648910                 mov     fs:[eax], edx
00645605   EB41                   jmp     00645648

* Reference to: System.@HandleOnException;
|
00645607   E9A4F5DBFF             jmp     00404BB0
0064560C   0100                   add     [eax], eax
0064560E   0000                   add     [eax], al
00645610   40                     inc     eax
00645611   95                     xchg    eax, ebp
00645612   40                     inc     eax
00645613   0018                   add     [eax], bl
00645615   56                     push    esi
00645616   640089C36A008B         add     fs:[ecx+$8B006AC3], cl
0064561D   4B                     dec     ebx
0064561E   048D                   add     al, -$73
00645620   8568FC                 test    [eax-$04], ebp
00645623   FFFF                   DB  $FF, $FF  //      

* Possible String Reference to: 'Erro na função "mAtualizaProdSaldo"
|                                !'
|
00645625   BA885A6400             mov     edx, $00645A88

* Reference to: System.@LStrCat3;
|
0064562A   E87901DCFF             call    004057A8
0064562F   8B8568FCFFFF           mov     eax, [ebp+$FFFFFC68]
00645635   668B0D7C5A6400         mov     cx, word ptr [$00645A7C]
0064563C   B201                   mov     dl, $01

|
0064563E   E8E9E4DFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00645643   E868F8DBFF             call    00404EB0

****** END
|
00645648   33C0                   xor     eax, eax
0064564A   5A                     pop     edx
0064564B   59                     pop     ecx
0064564C   59                     pop     ecx
0064564D   648910                 mov     fs:[eax], edx

****** FINALLY
|
00645650   685D566400             push    $0064565D
00645655   C3                     ret


* Reference to: System.@HandleFinally;
|
00645656   E9DDF6DBFF             jmp     00404D38
0064565B   EBF8                   jmp     00645655

****** END
|
0064565D   33C0                   xor     eax, eax
0064565F   5A                     pop     edx
00645660   59                     pop     ecx
00645661   59                     pop     ecx
00645662   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEó_^[‹å]ÂH'
|
00645665   6858586400             push    $00645858
0064566A   8D8568FCFFFF           lea     eax, [ebp+$FFFFFC68]
00645670   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00645675   E846FEDBFF             call    004054C0
0064567A   8D8570FCFFFF           lea     eax, [ebp+$FFFFFC70]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00645680   E8F3EEDCFF             call    00414578
00645685   8D8580FCFFFF           lea     eax, [ebp+$FFFFFC80]

* Reference to: System.@LStrClr(void;void);
|
0064568B   E80CFEDBFF             call    0040549C
00645690   8D8584FCFFFF           lea     eax, [ebp+$FFFFFC84]

* Reference to object Variant
|
00645696   8B1524114000           mov     edx, [$00401124]
0064569C   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006456A1   E8F609DCFF             call    0040609C
006456A6   8D85A4FCFFFF           lea     eax, [ebp+$FFFFFCA4]

* Reference to: System.@LStrClr(void;void);
|
006456AC   E8EBFDDBFF             call    0040549C
006456B1   8D85A8FCFFFF           lea     eax, [ebp+$FFFFFCA8]

* Reference to object Variant
|
006456B7   8B1524114000           mov     edx, [$00401124]
006456BD   B906000000             mov     ecx, $00000006

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006456C2   E8D509DCFF             call    0040609C
006456C7   8D8508FDFFFF           lea     eax, [ebp+$FFFFFD08]
006456CD   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006456D2   E8E9FDDBFF             call    004054C0
006456D7   8D8514FDFFFF           lea     eax, [ebp+$FFFFFD14]

* Reference to object Variant
|
006456DD   8B1524114000           mov     edx, [$00401124]
006456E3   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006456E8   E8AF09DCFF             call    0040609C
006456ED   8D8534FDFFFF           lea     eax, [ebp+$FFFFFD34]
006456F3   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006456F8   E8C3FDDBFF             call    004054C0
006456FD   8D8540FDFFFF           lea     eax, [ebp+$FFFFFD40]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00645703   E870EEDCFF             call    00414578
00645708   8D8550FDFFFF           lea     eax, [ebp+$FFFFFD50]

* Reference to: System.@LStrClr(void;void);
|
0064570E   E889FDDBFF             call    0040549C
00645713   8D8554FDFFFF           lea     eax, [ebp+$FFFFFD54]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00645719   E85AEEDCFF             call    00414578
0064571E   8D8564FDFFFF           lea     eax, [ebp+$FFFFFD64]
00645724   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00645729   E892FDDBFF             call    004054C0
0064572E   8D856CFDFFFF           lea     eax, [ebp+$FFFFFD6C]

* Reference to object Variant
|
00645734   8B1524114000           mov     edx, [$00401124]
0064573A   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0064573F   E85809DCFF             call    0040609C
00645744   8D85ACFDFFFF           lea     eax, [ebp+$FFFFFDAC]

* Reference to: System.@LStrClr(void;void);
|
0064574A   E84DFDDBFF             call    0040549C
0064574F   8D85B0FDFFFF           lea     eax, [ebp+$FFFFFDB0]

* Reference to object Variant
|
00645755   8B1524114000           mov     edx, [$00401124]
0064575B   B906000000             mov     ecx, $00000006

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00645760   E83709DCFF             call    0040609C
00645765   8D8510FEFFFF           lea     eax, [ebp+$FFFFFE10]
0064576B   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00645770   E84BFDDBFF             call    004054C0
00645775   8D8520FEFFFF           lea     eax, [ebp+$FFFFFE20]

* Reference to object Variant
|
0064577B   8B1524114000           mov     edx, [$00401124]
00645781   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00645786   E81109DCFF             call    0040609C
0064578B   8D8570FEFFFF           lea     eax, [ebp+$FFFFFE70]

* Reference to object Variant
|
00645791   8B1524114000           mov     edx, [$00401124]
00645797   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
0064579C   E8FB08DCFF             call    0040609C
006457A1   8D85F0FEFFFF           lea     eax, [ebp+$FFFFFEF0]

* Reference to: System.@LStrClr(void;void);
|
006457A7   E8F0FCDBFF             call    0040549C
006457AC   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006457B2   E8C1EDDCFF             call    00414578
006457B7   8D8504FFFFFF           lea     eax, [ebp+$FFFFFF04]

* Reference to: System.@LStrClr(void;void);
|
006457BD   E8DAFCDBFF             call    0040549C
006457C2   8D8508FFFFFF           lea     eax, [ebp+$FFFFFF08]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006457C8   E8ABEDDCFF             call    00414578
006457CD   8D8518FFFFFF           lea     eax, [ebp+$FFFFFF18]
006457D3   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
006457D8   E8E3FCDBFF             call    004054C0
006457DD   8D8524FFFFFF           lea     eax, [ebp+$FFFFFF24]

* Reference to object Variant
|
006457E3   8B1524114000           mov     edx, [$00401124]
006457E9   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006457EE   E8A908DCFF             call    0040609C
006457F3   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]

* Reference to object Variant
|
006457F9   8B1524114000           mov     edx, [$00401124]
006457FF   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00645804   E89308DCFF             call    0040609C
00645809   8D459C                 lea     eax, [ebp-$64]
0064580C   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00645811   E8AAFCDBFF             call    004054C0
00645816   8D45D4                 lea     eax, [ebp-$2C]

* Reference to: System.@LStrClr(void;void);
|
00645819   E87EFCDBFF             call    0040549C
0064581E   8D45F4                 lea     eax, [ebp-$0C]
00645821   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00645826   E895FCDBFF             call    004054C0
0064582B   8D4510                 lea     eax, [ebp+$10]
0064582E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00645833   E888FCDBFF             call    004054C0
00645838   8D453C                 lea     eax, [ebp+$3C]

* Reference to: System.@LStrClr(void;void);
|
0064583B   E85CFCDBFF             call    0040549C
00645840   8D4548                 lea     eax, [ebp+$48]
00645843   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00645848   E873FCDBFF             call    004054C0
0064584D   C3                     ret


* Reference to: System.@HandleFinally;
|
0064584E   E9E5F4DBFF             jmp     00404D38
00645853   E912FEFFFF             jmp     0064566A

****** END
|
00645858   8A45F3                 mov     al, byte ptr [ebp-$0D]
0064585B   5F                     pop     edi
0064585C   5E                     pop     esi
0064585D   5B                     pop     ebx
0064585E   8BE5                   mov     esp, ebp
00645860   5D                     pop     ebp
00645861   C24800                 ret     $0048

*)
end;

procedure TFrmF2SubLocal._PROC_0064584E(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064584E   E9E5F4DBFF             jmp     00404D38

|
00645853   E912FEFFFF             jmp     0064566A
00645858   8A45F3                 mov     al, byte ptr [ebp-$0D]
0064585B   5F                     pop     edi
0064585C   5E                     pop     esi
0064585D   5B                     pop     ebx
0064585E   8BE5                   mov     esp, ebp
00645860   5D                     pop     ebp
00645861   C24800                 ret     $0048

*)
end;

procedure TFrmF2SubLocal._PROC_006458E1(Sender : TObject);
begin
(*
006458E1   45                     inc     ebp
006458E2   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00645972(Sender : TObject);
begin
(*
00645972   45                     inc     ebp
00645973   00FF                   add     bh, bh
00645975   FFFF                   DB  $FF, $FF  //      
00645977   FF09                   dec     dword ptr [ecx]
00645979   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006459F2(Sender : TObject);
begin
(*
006459F2   45                     inc     ebp
006459F3   41                     inc     ecx
006459F4   54                     push    esp
006459F5   55                     push    ebp
006459F6   41                     inc     ecx
006459F7   4C                     dec     esp
006459F8   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00645AB1(Sender : TObject);
begin
(*
00645AB1   8BEC                   mov     ebp, esp
00645AB3   51                     push    ecx
00645AB4   B933000000             mov     ecx, $00000033
00645AB9   6A00                   push    $00
00645ABB   6A00                   push    $00
00645ABD   49                     dec     ecx
00645ABE   75F9                   jnz     00645AB9
00645AC0   874DFC                 xchg    [ebp-$04], ecx
00645AC3   53                     push    ebx
00645AC4   56                     push    esi
00645AC5   57                     push    edi
00645AC6   894DF8                 mov     [ebp-$08], ecx
00645AC9   8BDA                   mov     ebx, edx
00645ACB   8945FC                 mov     [ebp-$04], eax
00645ACE   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00645AD1   E876FEDBFF             call    0040594C
00645AD6   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00645AD9   E86EFEDBFF             call    0040594C
00645ADE   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00645AE1   E866FEDBFF             call    0040594C
00645AE6   8B3564A07D00           mov     esi, [$007DA064]
00645AEC   33C0                   xor     eax, eax
00645AEE   55                     push    ebp
00645AEF   682F636400             push    $0064632F

***** TRY
|
00645AF4   64FF30                 push    dword ptr fs:[eax]
00645AF7   648920                 mov     fs:[eax], esp
00645AFA   C645F700               mov     byte ptr [ebp-$09], $00
00645AFE   33C0                   xor     eax, eax
00645B00   55                     push    ebp
00645B01   68F8616400             push    $006461F8

***** TRY
|
00645B06   64FF30                 push    dword ptr fs:[eax]
00645B09   648920                 mov     fs:[eax], esp
00645B0C   33C0                   xor     eax, eax
00645B0E   55                     push    ebp
00645B0F   68A9616400             push    $006461A9

***** TRY
|
00645B14   64FF30                 push    dword ptr fs:[eax]
00645B17   648920                 mov     fs:[eax], esp
00645B1A   8B06                   mov     eax, [esi]

* Possible String Reference to: 'VE'
|
00645B1C   BA50636400             mov     edx, $00646350

* Reference to: System.@LStrCmp;
|
00645B21   E882FDDBFF             call    004058A8
00645B26   742E                   jz      00645B56
00645B28   8B06                   mov     eax, [esi]

* Possible String Reference to: 'D0'
|
00645B2A   BA5C636400             mov     edx, $0064635C

* Reference to: System.@LStrCmp;
|
00645B2F   E874FDDBFF             call    004058A8
00645B34   7420                   jz      00645B56
00645B36   8B06                   mov     eax, [esi]

* Possible String Reference to: 'D1'
|
00645B38   BA68636400             mov     edx, $00646368

* Reference to: System.@LStrCmp;
|
00645B3D   E866FDDBFF             call    004058A8
00645B42   7412                   jz      00645B56
00645B44   8B06                   mov     eax, [esi]

* Possible String Reference to: 'VA'
|
00645B46   BA74636400             mov     edx, $00646374

* Reference to: System.@LStrCmp;
|
00645B4B   E858FDDBFF             call    004058A8
00645B50   0F8517020000           jnz     00645D6D

* Possible String Reference to: 'PrecoMedio'
|
00645B56   BA80636400             mov     edx, $00646380
00645B5B   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
00645B60   E8C31F1700             call    007B7B28
00645B65   DB7DE8                 fstp    tbyte ptr [ebp-$18]
00645B68   9B                     wait

* Possible String Reference to: 'Vendas'
|
00645B69   BA94636400             mov     edx, $00646394
00645B6E   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
00645B73   E8B01F1700             call    007B7B28
00645B78   DB7DD8                 fstp    tbyte ptr [ebp-$28]
00645B7B   9B                     wait

* Possible String Reference to: 'GiroMedio'
|
00645B7C   BAA4636400             mov     edx, $006463A4
00645B81   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
00645B86   E89D1F1700             call    007B7B28
00645B8B   DB7DC8                 fstp    tbyte ptr [ebp-$38]
00645B8E   9B                     wait
00645B8F   8B45FC                 mov     eax, [ebp-$04]
00645B92   BAB8636400             mov     edx, $006463B8

* Reference to: System.@LStrCmp;
|
00645B97   E80CFDDBFF             call    004058A8
00645B9C   0F8515010000           jnz     00645CB7
00645BA2   DB6DD8                 fld     tbyte ptr [ebp-$28]
00645BA5   DB6D24                 fld     tbyte ptr [ebp+$24]
00645BA8   DEE9                   fsubp   st(1), st(0)
00645BAA   D81DBC636400           fcomp   dword ptr [$006463BC]
00645BB0   DFE0                   fstsw   ax
00645BB2   9E                     sahf
00645BB3   743B                   jz      00645BF0
00645BB5   DB6DE8                 fld     tbyte ptr [ebp-$18]
00645BB8   DB6DD8                 fld     tbyte ptr [ebp-$28]
00645BBB   DEC9                   fmulp   st(1), st(0)
00645BBD   DB6D18                 fld     tbyte ptr [ebp+$18]
00645BC0   DB6D24                 fld     tbyte ptr [ebp+$24]
00645BC3   DEC9                   fmulp   st(1), st(0)
00645BC5   DEE9                   fsubp   st(1), st(0)
00645BC7   DB6DD8                 fld     tbyte ptr [ebp-$28]
00645BCA   DB6D24                 fld     tbyte ptr [ebp+$24]
00645BCD   DEE9                   fsubp   st(1), st(0)

* Reference to: System.@FSafeDivide;
|
00645BCF   E82CD9DBFF             call    00403500
00645BD4   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarFromReal;
|
00645BD7   E8AC30DDFF             call    00418C88
00645BDC   8D4D98                 lea     ecx, [ebp-$68]

* Possible String Reference to: 'PrecoMedio'
|
00645BDF   BA80636400             mov     edx, $00646380
00645BE4   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645BE9   E88E1A1700             call    007B767C
00645BEE   EB1E                   jmp     00645C0E
00645BF0   8D4588                 lea     eax, [ebp-$78]
00645BF3   33D2                   xor     edx, edx
00645BF5   B101                   mov     cl, $01

|
00645BF7   E8742EDDFF             call    00418A70
00645BFC   8D4D88                 lea     ecx, [ebp-$78]

* Possible String Reference to: 'PrecoMedio'
|
00645BFF   BA80636400             mov     edx, $00646380
00645C04   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645C09   E86E1A1700             call    007B767C
00645C0E   DB6DD8                 fld     tbyte ptr [ebp-$28]
00645C11   DB6D24                 fld     tbyte ptr [ebp+$24]
00645C14   DEE9                   fsubp   st(1), st(0)
00645C16   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]

* Reference to: Variants.@VarFromReal;
|
00645C1C   E86730DDFF             call    00418C88
00645C21   8D8D78FFFFFF           lea     ecx, [ebp+$FFFFFF78]

* Possible String Reference to: 'Vendas'
|
00645C27   BA94636400             mov     edx, $00646394
00645C2C   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645C31   E8461A1700             call    007B767C
00645C36   8D7301                 lea     esi, [ebx+$01]
00645C39   85F6                   test    esi, esi
00645C3B   7451                   jz      00645C8E
00645C3D   899D64FFFFFF           mov     [ebp+$FFFFFF64], ebx
00645C43   DB8564FFFFFF           fild    dword ptr [ebp+$FFFFFF64]
00645C49   DB6D0C                 fld     tbyte ptr [ebp+$0C]
00645C4C   DEC9                   fmulp   st(1), st(0)
00645C4E   DB6DC8                 fld     tbyte ptr [ebp-$38]
00645C51   DEC1                   faddp   st(1), st(0)
00645C53   DB6D24                 fld     tbyte ptr [ebp+$24]
00645C56   DEE9                   fsubp   st(1), st(0)
00645C58   89B560FFFFFF           mov     [ebp+$FFFFFF60], esi
00645C5E   DB8560FFFFFF           fild    dword ptr [ebp+$FFFFFF60]

* Reference to: System.@FSafeDivide;
|
00645C64   E897D8DBFF             call    00403500
00645C69   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Reference to: Variants.@VarFromReal;
|
00645C6F   E81430DDFF             call    00418C88
00645C74   8D8D68FFFFFF           lea     ecx, [ebp+$FFFFFF68]

* Possible String Reference to: 'GiroMedio'
|
00645C7A   BAA4636400             mov     edx, $006463A4
00645C7F   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645C84   E8F3191700             call    007B767C
00645C89   E903050000             jmp     00646191
00645C8E   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]
00645C94   33D2                   xor     edx, edx
00645C96   B101                   mov     cl, $01

|
00645C98   E8D32DDDFF             call    00418A70
00645C9D   8D8D50FFFFFF           lea     ecx, [ebp+$FFFFFF50]

* Possible String Reference to: 'GiroMedio'
|
00645CA3   BAA4636400             mov     edx, $006463A4
00645CA8   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645CAD   E8CA191700             call    007B767C
00645CB2   E9DA040000             jmp     00646191
00645CB7   8B45FC                 mov     eax, [ebp-$04]
00645CBA   BAC8636400             mov     edx, $006463C8

* Reference to: System.@LStrCmp;
|
00645CBF   E8E4FBDBFF             call    004058A8
00645CC4   754A                   jnz     00645D10
00645CC6   8D8D3CFFFFFF           lea     ecx, [ebp+$FFFFFF3C]

* Possible String Reference to: 'TransfSai'
|
00645CCC   BAD4636400             mov     edx, $006463D4
00645CD1   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645CD6   E85D201700             call    007B7D38
00645CDB   8B853CFFFFFF           mov     eax, [ebp+$FFFFFF3C]

|
00645CE1   E852C01500             call    007A1D38
00645CE6   DB6D24                 fld     tbyte ptr [ebp+$24]
00645CE9   DEE9                   fsubp   st(1), st(0)
00645CEB   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]

* Reference to: Variants.@VarFromReal;
|
00645CF1   E8922FDDFF             call    00418C88
00645CF6   8D8D40FFFFFF           lea     ecx, [ebp+$FFFFFF40]

* Possible String Reference to: 'TransfSai'
|
00645CFC   BAD4636400             mov     edx, $006463D4
00645D01   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645D06   E871191700             call    007B767C
00645D0B   E981040000             jmp     00646191
00645D10   8B45FC                 mov     eax, [ebp-$04]
00645D13   BAE8636400             mov     edx, $006463E8

* Reference to: System.@LStrCmp;
|
00645D18   E88BFBDBFF             call    004058A8
00645D1D   0F856E040000           jnz     00646191
00645D23   8D8D28FFFFFF           lea     ecx, [ebp+$FFFFFF28]

* Possible String Reference to: 'OutrasSai'
|
00645D29   BAF4636400             mov     edx, $006463F4
00645D2E   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645D33   E800201700             call    007B7D38
00645D38   8B8528FFFFFF           mov     eax, [ebp+$FFFFFF28]

|
00645D3E   E8F5BF1500             call    007A1D38
00645D43   DB6D24                 fld     tbyte ptr [ebp+$24]
00645D46   DEE9                   fsubp   st(1), st(0)
00645D48   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: Variants.@VarFromReal;
|
00645D4E   E8352FDDFF             call    00418C88
00645D53   8D8D2CFFFFFF           lea     ecx, [ebp+$FFFFFF2C]

* Possible String Reference to: 'OutrasSai'
|
00645D59   BAF4636400             mov     edx, $006463F4
00645D5E   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645D63   E814191700             call    007B767C
00645D68   E924040000             jmp     00646191
00645D6D   8B06                   mov     eax, [esi]

* Possible String Reference to: 'CO'
|
00645D6F   BA08646400             mov     edx, $00646408

* Reference to: System.@LStrCmp;
|
00645D74   E82FFBDBFF             call    004058A8
00645D79   7420                   jz      00645D9B
00645D7B   8B06                   mov     eax, [esi]

* Possible String Reference to: 'D2'
|
00645D7D   BA14646400             mov     edx, $00646414

* Reference to: System.@LStrCmp;
|
00645D82   E821FBDBFF             call    004058A8
00645D87   7412                   jz      00645D9B
00645D89   8B06                   mov     eax, [esi]

* Possible String Reference to: 'D3'
|
00645D8B   BA20646400             mov     edx, $00646420

* Reference to: System.@LStrCmp;
|
00645D90   E813FBDBFF             call    004058A8
00645D95   0F856A010000           jnz     00645F05

* Possible String Reference to: 'CustoMedio'
|
00645D9B   BA2C646400             mov     edx, $0064642C
00645DA0   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
00645DA5   E87E1D1700             call    007B7B28
00645DAA   DB7DB8                 fstp    tbyte ptr [ebp-$48]
00645DAD   9B                     wait

* Possible String Reference to: 'Compras'
|
00645DAE   BA40646400             mov     edx, $00646440
00645DB3   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
00645DB8   E86B1D1700             call    007B7B28
00645DBD   DB7DA8                 fstp    tbyte ptr [ebp-$58]
00645DC0   9B                     wait
00645DC1   8B45FC                 mov     eax, [ebp-$04]
00645DC4   BA50646400             mov     edx, $00646450

* Reference to: System.@LStrCmp;
|
00645DC9   E8DAFADBFF             call    004058A8
00645DCE   757F                   jnz     00645E4F
00645DD0   DB6DA8                 fld     tbyte ptr [ebp-$58]
00645DD3   DB6D24                 fld     tbyte ptr [ebp+$24]
00645DD6   DEC1                   faddp   st(1), st(0)
00645DD8   D81DBC636400           fcomp   dword ptr [$006463BC]
00645DDE   DFE0                   fstsw   ax
00645DE0   9E                     sahf
00645DE1   743F                   jz      00645E22
00645DE3   DB6DB8                 fld     tbyte ptr [ebp-$48]
00645DE6   DB6DA8                 fld     tbyte ptr [ebp-$58]
00645DE9   DEC9                   fmulp   st(1), st(0)
00645DEB   DB6D18                 fld     tbyte ptr [ebp+$18]
00645DEE   DB6D24                 fld     tbyte ptr [ebp+$24]
00645DF1   DEC9                   fmulp   st(1), st(0)
00645DF3   DEC1                   faddp   st(1), st(0)
00645DF5   DB6DA8                 fld     tbyte ptr [ebp-$58]
00645DF8   DB6D24                 fld     tbyte ptr [ebp+$24]
00645DFB   DEC1                   faddp   st(1), st(0)

* Reference to: System.@FSafeDivide;
|
00645DFD   E8FED6DBFF             call    00403500
00645E02   8D8518FFFFFF           lea     eax, [ebp+$FFFFFF18]

* Reference to: Variants.@VarFromReal;
|
00645E08   E87B2EDDFF             call    00418C88
00645E0D   8D8D18FFFFFF           lea     ecx, [ebp+$FFFFFF18]

* Possible String Reference to: 'CustoMedio'
|
00645E13   BA2C646400             mov     edx, $0064642C
00645E18   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645E1D   E85A181700             call    007B767C
00645E22   DB6DA8                 fld     tbyte ptr [ebp-$58]
00645E25   DB6D24                 fld     tbyte ptr [ebp+$24]
00645E28   DEC1                   faddp   st(1), st(0)
00645E2A   8D8508FFFFFF           lea     eax, [ebp+$FFFFFF08]

* Reference to: Variants.@VarFromReal;
|
00645E30   E8532EDDFF             call    00418C88
00645E35   8D8D08FFFFFF           lea     ecx, [ebp+$FFFFFF08]

* Possible String Reference to: 'Compras'
|
00645E3B   BA40646400             mov     edx, $00646440
00645E40   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645E45   E832181700             call    007B767C
00645E4A   E942030000             jmp     00646191
00645E4F   8B45FC                 mov     eax, [ebp-$04]
00645E52   BAC8636400             mov     edx, $006463C8

* Reference to: System.@LStrCmp;
|
00645E57   E84CFADBFF             call    004058A8
00645E5C   754A                   jnz     00645EA8
00645E5E   8D8DF4FEFFFF           lea     ecx, [ebp+$FFFFFEF4]

* Possible String Reference to: 'TransfEntr'
|
00645E64   BA5C646400             mov     edx, $0064645C
00645E69   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645E6E   E8C51E1700             call    007B7D38
00645E73   8B85F4FEFFFF           mov     eax, [ebp+$FFFFFEF4]

|
00645E79   E8BABE1500             call    007A1D38
00645E7E   DB6D24                 fld     tbyte ptr [ebp+$24]
00645E81   DEC1                   faddp   st(1), st(0)
00645E83   8D85F8FEFFFF           lea     eax, [ebp+$FFFFFEF8]

* Reference to: Variants.@VarFromReal;
|
00645E89   E8FA2DDDFF             call    00418C88
00645E8E   8D8DF8FEFFFF           lea     ecx, [ebp+$FFFFFEF8]

* Possible String Reference to: 'TransfEntr'
|
00645E94   BA5C646400             mov     edx, $0064645C
00645E99   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645E9E   E8D9171700             call    007B767C
00645EA3   E9E9020000             jmp     00646191
00645EA8   8B45FC                 mov     eax, [ebp-$04]
00645EAB   BAE8636400             mov     edx, $006463E8

* Reference to: System.@LStrCmp;
|
00645EB0   E8F3F9DBFF             call    004058A8
00645EB5   0F85D6020000           jnz     00646191
00645EBB   8D8DE0FEFFFF           lea     ecx, [ebp+$FFFFFEE0]

* Possible String Reference to: 'OutrasEntr'
|
00645EC1   BA70646400             mov     edx, $00646470
00645EC6   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645ECB   E8681E1700             call    007B7D38
00645ED0   8B85E0FEFFFF           mov     eax, [ebp+$FFFFFEE0]

|
00645ED6   E85DBE1500             call    007A1D38
00645EDB   DB6D24                 fld     tbyte ptr [ebp+$24]
00645EDE   DEC1                   faddp   st(1), st(0)
00645EE0   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]

* Reference to: Variants.@VarFromReal;
|
00645EE6   E89D2DDDFF             call    00418C88
00645EEB   8D8DE4FEFFFF           lea     ecx, [ebp+$FFFFFEE4]

* Possible String Reference to: 'OutrasEntr'
|
00645EF1   BA70646400             mov     edx, $00646470
00645EF6   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645EFB   E87C171700             call    007B767C
00645F00   E98C020000             jmp     00646191
00645F05   8B06                   mov     eax, [esi]

* Possible String Reference to: 'EP'
|
00645F07   BA84646400             mov     edx, $00646484

* Reference to: System.@LStrCmp;
|
00645F0C   E897F9DBFF             call    004058A8
00645F11   7570                   jnz     00645F83
00645F13   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'simul'
|
00645F16   BA90646400             mov     edx, $00646490

* Reference to: System.@LStrCmp;
|
00645F1B   E888F9DBFF             call    004058A8
00645F20   0F846B020000           jz      00646191
00645F26   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'empen'
|
00645F29   BAA0646400             mov     edx, $006464A0

* Reference to: System.@LStrCmp;
|
00645F2E   E875F9DBFF             call    004058A8
00645F33   0F8458020000           jz      00646191
00645F39   8D8DCCFEFFFF           lea     ecx, [ebp+$FFFFFECC]

* Possible String Reference to: 'ProducaoEntr'
|
00645F3F   BAB0646400             mov     edx, $006464B0
00645F44   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645F49   E8EA1D1700             call    007B7D38
00645F4E   8B85CCFEFFFF           mov     eax, [ebp+$FFFFFECC]

|
00645F54   E8DFBD1500             call    007A1D38
00645F59   DB6D24                 fld     tbyte ptr [ebp+$24]
00645F5C   DEC1                   faddp   st(1), st(0)
00645F5E   8D85D0FEFFFF           lea     eax, [ebp+$FFFFFED0]

* Reference to: Variants.@VarFromReal;
|
00645F64   E81F2DDDFF             call    00418C88
00645F69   8D8DD0FEFFFF           lea     ecx, [ebp+$FFFFFED0]

* Possible String Reference to: 'ProducaoEntr'
|
00645F6F   BAB0646400             mov     edx, $006464B0
00645F74   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645F79   E8FE161700             call    007B767C
00645F7E   E90E020000             jmp     00646191
00645F83   8B06                   mov     eax, [esi]

* Possible String Reference to: 'SP'
|
00645F85   BAC8646400             mov     edx, $006464C8

* Reference to: System.@LStrCmp;
|
00645F8A   E819F9DBFF             call    004058A8
00645F8F   7570                   jnz     00646001
00645F91   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'simul'
|
00645F94   BA90646400             mov     edx, $00646490

* Reference to: System.@LStrCmp;
|
00645F99   E80AF9DBFF             call    004058A8
00645F9E   0F84ED010000           jz      00646191
00645FA4   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'empen'
|
00645FA7   BAA0646400             mov     edx, $006464A0

* Reference to: System.@LStrCmp;
|
00645FAC   E8F7F8DBFF             call    004058A8
00645FB1   0F84DA010000           jz      00646191
00645FB7   8D8DB8FEFFFF           lea     ecx, [ebp+$FFFFFEB8]

* Possible String Reference to: 'ProducaoSai'
|
00645FBD   BAD4646400             mov     edx, $006464D4
00645FC2   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00645FC7   E86C1D1700             call    007B7D38
00645FCC   8B85B8FEFFFF           mov     eax, [ebp+$FFFFFEB8]

|
00645FD2   E861BD1500             call    007A1D38
00645FD7   DB6D24                 fld     tbyte ptr [ebp+$24]
00645FDA   DEE9                   fsubp   st(1), st(0)
00645FDC   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]

* Reference to: Variants.@VarFromReal;
|
00645FE2   E8A12CDDFF             call    00418C88
00645FE7   8D8DBCFEFFFF           lea     ecx, [ebp+$FFFFFEBC]

* Possible String Reference to: 'ProducaoSai'
|
00645FED   BAD4646400             mov     edx, $006464D4
00645FF2   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00645FF7   E880161700             call    007B767C
00645FFC   E990010000             jmp     00646191
00646001   8B06                   mov     eax, [esi]

* Possible String Reference to: 'TE'
|
00646003   BAE8646400             mov     edx, $006464E8

* Reference to: System.@LStrCmp;
|
00646008   E89BF8DBFF             call    004058A8
0064600D   754A                   jnz     00646059
0064600F   8D8DA4FEFFFF           lea     ecx, [ebp+$FFFFFEA4]

* Possible String Reference to: 'TransfEntr'
|
00646015   BA5C646400             mov     edx, $0064645C
0064601A   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064601F   E8141D1700             call    007B7D38
00646024   8B85A4FEFFFF           mov     eax, [ebp+$FFFFFEA4]

|
0064602A   E809BD1500             call    007A1D38
0064602F   DB6D24                 fld     tbyte ptr [ebp+$24]
00646032   DEC1                   faddp   st(1), st(0)
00646034   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to: Variants.@VarFromReal;
|
0064603A   E8492CDDFF             call    00418C88
0064603F   8D8DA8FEFFFF           lea     ecx, [ebp+$FFFFFEA8]

* Possible String Reference to: 'TransfEntr'
|
00646045   BA5C646400             mov     edx, $0064645C
0064604A   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
0064604F   E828161700             call    007B767C
00646054   E938010000             jmp     00646191
00646059   8B06                   mov     eax, [esi]

* Possible String Reference to: 'TS'
|
0064605B   BAF4646400             mov     edx, $006464F4

* Reference to: System.@LStrCmp;
|
00646060   E843F8DBFF             call    004058A8
00646065   754A                   jnz     006460B1
00646067   8D8D90FEFFFF           lea     ecx, [ebp+$FFFFFE90]

* Possible String Reference to: 'TransfSai'
|
0064606D   BAD4636400             mov     edx, $006463D4
00646072   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00646077   E8BC1C1700             call    007B7D38
0064607C   8B8590FEFFFF           mov     eax, [ebp+$FFFFFE90]

|
00646082   E8B1BC1500             call    007A1D38
00646087   DB6D24                 fld     tbyte ptr [ebp+$24]
0064608A   DEE9                   fsubp   st(1), st(0)
0064608C   8D8594FEFFFF           lea     eax, [ebp+$FFFFFE94]

* Reference to: Variants.@VarFromReal;
|
00646092   E8F12BDDFF             call    00418C88
00646097   8D8D94FEFFFF           lea     ecx, [ebp+$FFFFFE94]

* Possible String Reference to: 'TransfSai'
|
0064609D   BAD4636400             mov     edx, $006463D4
006460A2   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
006460A7   E8D0151700             call    007B767C
006460AC   E9E0000000             jmp     00646191
006460B1   8B06                   mov     eax, [esi]

* Possible String Reference to: 'ASE'
|
006460B3   BA00656400             mov     edx, $00646500

* Reference to: System.@LStrCmp;
|
006460B8   E8EBF7DBFF             call    004058A8
006460BD   741C                   jz      006460DB
006460BF   8B06                   mov     eax, [esi]

* Possible String Reference to: 'E0'
|
006460C1   BA0C656400             mov     edx, $0064650C

* Reference to: System.@LStrCmp;
|
006460C6   E8DDF7DBFF             call    004058A8
006460CB   740E                   jz      006460DB
006460CD   8B06                   mov     eax, [esi]

* Possible String Reference to: 'E1'
|
006460CF   BA18656400             mov     edx, $00646518

* Reference to: System.@LStrCmp;
|
006460D4   E8CFF7DBFF             call    004058A8
006460D9   7547                   jnz     00646122
006460DB   8D8D7CFEFFFF           lea     ecx, [ebp+$FFFFFE7C]

* Possible String Reference to: 'OutrasEntr'
|
006460E1   BA70646400             mov     edx, $00646470
006460E6   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006460EB   E8481C1700             call    007B7D38
006460F0   8B857CFEFFFF           mov     eax, [ebp+$FFFFFE7C]

|
006460F6   E83DBC1500             call    007A1D38
006460FB   DB6D24                 fld     tbyte ptr [ebp+$24]
006460FE   DEC1                   faddp   st(1), st(0)
00646100   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]

* Reference to: Variants.@VarFromReal;
|
00646106   E87D2BDDFF             call    00418C88
0064610B   8D8D80FEFFFF           lea     ecx, [ebp+$FFFFFE80]

* Possible String Reference to: 'OutrasEntr'
|
00646111   BA70646400             mov     edx, $00646470
00646116   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
0064611B   E85C151700             call    007B767C
00646120   EB6F                   jmp     00646191
00646122   8B06                   mov     eax, [esi]

* Possible String Reference to: 'ASS'
|
00646124   BA24656400             mov     edx, $00646524

* Reference to: System.@LStrCmp;
|
00646129   E87AF7DBFF             call    004058A8
0064612E   741C                   jz      0064614C
00646130   8B06                   mov     eax, [esi]

* Possible String Reference to: 'S0'
|
00646132   BA30656400             mov     edx, $00646530

* Reference to: System.@LStrCmp;
|
00646137   E86CF7DBFF             call    004058A8
0064613C   740E                   jz      0064614C
0064613E   8B06                   mov     eax, [esi]

* Possible String Reference to: 'S1'
|
00646140   BA3C656400             mov     edx, $0064653C

* Reference to: System.@LStrCmp;
|
00646145   E85EF7DBFF             call    004058A8
0064614A   7545                   jnz     00646191
0064614C   8D8D68FEFFFF           lea     ecx, [ebp+$FFFFFE68]

* Possible String Reference to: 'OutrasSai'
|
00646152   BAF4636400             mov     edx, $006463F4
00646157   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064615C   E8D71B1700             call    007B7D38
00646161   8B8568FEFFFF           mov     eax, [ebp+$FFFFFE68]

|
00646167   E8CCBB1500             call    007A1D38
0064616C   DB6D24                 fld     tbyte ptr [ebp+$24]
0064616F   DEE9                   fsubp   st(1), st(0)
00646171   8D856CFEFFFF           lea     eax, [ebp+$FFFFFE6C]

* Reference to: Variants.@VarFromReal;
|
00646177   E80C2BDDFF             call    00418C88
0064617C   8D8D6CFEFFFF           lea     ecx, [ebp+$FFFFFE6C]

* Possible String Reference to: 'OutrasSai'
|
00646182   BAF4636400             mov     edx, $006463F4
00646187   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
0064618C   E8EB141700             call    007B767C
00646191   C645F701               mov     byte ptr [ebp-$09], $01
00646195   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0064619A   E83D3C1700             call    007B9DDC
0064619F   33C0                   xor     eax, eax
006461A1   5A                     pop     edx
006461A2   59                     pop     ecx
006461A3   59                     pop     ecx
006461A4   648910                 mov     fs:[eax], edx
006461A7   EB41                   jmp     006461EA

* Reference to: System.@HandleOnException;
|
006461A9   E902EADBFF             jmp     00404BB0
006461AE   0100                   add     [eax], eax
006461B0   0000                   add     [eax], al
006461B2   40                     inc     eax
006461B3   95                     xchg    eax, ebp
006461B4   40                     inc     eax
006461B5   00BA61640089           add     [edx+$89006461], bh
006461BB   C3                     ret

006461BC   6A00                   push    $00
006461BE   8B4B04                 mov     ecx, [ebx+$04]
006461C1   8D8564FEFFFF           lea     eax, [ebp+$FFFFFE64]

* Possible String Reference to: 'Ocorreu um erro na rotina "mPoeProd
|                                Sald"'
|
006461C7   BA48656400             mov     edx, $00646548

* Reference to: System.@LStrCat3;
|
006461CC   E8D7F5DBFF             call    004057A8
006461D1   8B8564FEFFFF           mov     eax, [ebp+$FFFFFE64]
006461D7   668B0D74656400         mov     cx, word ptr [$00646574]
006461DE   B201                   mov     dl, $01

|
006461E0   E847D9DFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006461E5   E8C6ECDBFF             call    00404EB0

****** END
|
006461EA   33C0                   xor     eax, eax
006461EC   5A                     pop     edx
006461ED   59                     pop     ecx
006461EE   59                     pop     ecx
006461EF   648910                 mov     fs:[eax], edx

****** FINALLY
|
006461F2   68FF616400             push    $006461FF
006461F7   C3                     ret


* Reference to: System.@HandleFinally;
|
006461F8   E93BEBDBFF             jmp     00404D38
006461FD   EBF8                   jmp     006461F7

****** END
|
006461FF   33C0                   xor     eax, eax
00646201   5A                     pop     edx
00646202   59                     pop     ecx
00646203   59                     pop     ecx
00646204   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠE÷_^[‹å]Â('
|
00646207   6839636400             push    $00646339
0064620C   8D8564FEFFFF           lea     eax, [ebp+$FFFFFE64]
00646212   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00646217   E8A4F2DBFF             call    004054C0
0064621C   8D856CFEFFFF           lea     eax, [ebp+$FFFFFE6C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646222   E851E3DCFF             call    00414578
00646227   8D857CFEFFFF           lea     eax, [ebp+$FFFFFE7C]

* Reference to: System.@LStrClr(void;void);
|
0064622D   E86AF2DBFF             call    0040549C
00646232   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646238   E83BE3DCFF             call    00414578
0064623D   8D8590FEFFFF           lea     eax, [ebp+$FFFFFE90]

* Reference to: System.@LStrClr(void;void);
|
00646243   E854F2DBFF             call    0040549C
00646248   8D8594FEFFFF           lea     eax, [ebp+$FFFFFE94]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0064624E   E825E3DCFF             call    00414578
00646253   8D85A4FEFFFF           lea     eax, [ebp+$FFFFFEA4]

* Reference to: System.@LStrClr(void;void);
|
00646259   E83EF2DBFF             call    0040549C
0064625E   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646264   E80FE3DCFF             call    00414578
00646269   8D85B8FEFFFF           lea     eax, [ebp+$FFFFFEB8]

* Reference to: System.@LStrClr(void;void);
|
0064626F   E828F2DBFF             call    0040549C
00646274   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0064627A   E8F9E2DCFF             call    00414578
0064627F   8D85CCFEFFFF           lea     eax, [ebp+$FFFFFECC]

* Reference to: System.@LStrClr(void;void);
|
00646285   E812F2DBFF             call    0040549C
0064628A   8D85D0FEFFFF           lea     eax, [ebp+$FFFFFED0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646290   E8E3E2DCFF             call    00414578
00646295   8D85E0FEFFFF           lea     eax, [ebp+$FFFFFEE0]

* Reference to: System.@LStrClr(void;void);
|
0064629B   E8FCF1DBFF             call    0040549C
006462A0   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006462A6   E8CDE2DCFF             call    00414578
006462AB   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]

* Reference to: System.@LStrClr(void;void);
|
006462B1   E8E6F1DBFF             call    0040549C
006462B6   8D85F8FEFFFF           lea     eax, [ebp+$FFFFFEF8]

* Reference to object Variant
|
006462BC   8B1524114000           mov     edx, [$00401124]
006462C2   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006462C7   E8D0FDDBFF             call    0040609C
006462CC   8D8528FFFFFF           lea     eax, [ebp+$FFFFFF28]

* Reference to: System.@LStrClr(void;void);
|
006462D2   E8C5F1DBFF             call    0040549C
006462D7   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
006462DD   E896E2DCFF             call    00414578
006462E2   8D853CFFFFFF           lea     eax, [ebp+$FFFFFF3C]

* Reference to: System.@LStrClr(void;void);
|
006462E8   E8AFF1DBFF             call    0040549C
006462ED   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]

* Reference to object Variant
|
006462F3   8B1524114000           mov     edx, [$00401124]
006462F9   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006462FE   E899FDDBFF             call    0040609C
00646303   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Reference to object Variant
|
00646309   8B1524114000           mov     edx, [$00401124]
0064630F   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00646314   E883FDDBFF             call    0040609C
00646319   8D45F8                 lea     eax, [ebp-$08]
0064631C   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00646321   E89AF1DBFF             call    004054C0
00646326   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
00646329   E86EF1DBFF             call    0040549C
0064632E   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0064632F(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064632F   E904EADBFF             jmp     00404D38

|
00646334   E9D3FEFFFF             jmp     0064620C
00646339   8A45F7                 mov     al, byte ptr [ebp-$09]
0064633C   5F                     pop     edi
0064633D   5E                     pop     esi
0064633E   5B                     pop     ebx
0064633F   8BE5                   mov     esp, ebp
00646341   5D                     pop     ebp
00646342   C22800                 ret     $0028

*)
end;

procedure TFrmF2SubLocal._PROC_00646579(Sender : TObject);
begin
(*
00646579   8BEC                   mov     ebp, esp
0064657B   51                     push    ecx
0064657C   B933000000             mov     ecx, $00000033
00646581   6A00                   push    $00
00646583   6A00                   push    $00
00646585   49                     dec     ecx
00646586   75F9                   jnz     00646581
00646588   874DFC                 xchg    [ebp-$04], ecx
0064658B   53                     push    ebx
0064658C   56                     push    esi
0064658D   57                     push    edi
0064658E   894DF8                 mov     [ebp-$08], ecx
00646591   8BDA                   mov     ebx, edx
00646593   8945FC                 mov     [ebp-$04], eax
00646596   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00646599   E8AEF3DBFF             call    0040594C
0064659E   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006465A1   E8A6F3DBFF             call    0040594C
006465A6   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006465A9   E89EF3DBFF             call    0040594C
006465AE   8B3564A07D00           mov     esi, [$007DA064]
006465B4   33C0                   xor     eax, eax
006465B6   55                     push    ebp

* Possible String Reference to: 'é<ßÛÿéÓþÿÿŠE÷_^[‹å]Â('
|
006465B7   68F76D6400             push    $00646DF7

***** TRY
|
006465BC   64FF30                 push    dword ptr fs:[eax]
006465BF   648920                 mov     fs:[eax], esp
006465C2   C645F700               mov     byte ptr [ebp-$09], $00
006465C6   33C0                   xor     eax, eax
006465C8   55                     push    ebp
006465C9   68C06C6400             push    $00646CC0

***** TRY
|
006465CE   64FF30                 push    dword ptr fs:[eax]
006465D1   648920                 mov     fs:[eax], esp
006465D4   33C0                   xor     eax, eax
006465D6   55                     push    ebp
006465D7   68716C6400             push    $00646C71

***** TRY
|
006465DC   64FF30                 push    dword ptr fs:[eax]
006465DF   648920                 mov     fs:[eax], esp
006465E2   8B06                   mov     eax, [esi]

* Possible String Reference to: 'VE'
|
006465E4   BA186E6400             mov     edx, $00646E18

* Reference to: System.@LStrCmp;
|
006465E9   E8BAF2DBFF             call    004058A8
006465EE   742E                   jz      0064661E
006465F0   8B06                   mov     eax, [esi]

* Possible String Reference to: 'D0'
|
006465F2   BA246E6400             mov     edx, $00646E24

* Reference to: System.@LStrCmp;
|
006465F7   E8ACF2DBFF             call    004058A8
006465FC   7420                   jz      0064661E
006465FE   8B06                   mov     eax, [esi]

* Possible String Reference to: 'D1'
|
00646600   BA306E6400             mov     edx, $00646E30

* Reference to: System.@LStrCmp;
|
00646605   E89EF2DBFF             call    004058A8
0064660A   7412                   jz      0064661E
0064660C   8B06                   mov     eax, [esi]

* Possible String Reference to: 'VA'
|
0064660E   BA3C6E6400             mov     edx, $00646E3C

* Reference to: System.@LStrCmp;
|
00646613   E890F2DBFF             call    004058A8
00646618   0F8517020000           jnz     00646835

* Possible String Reference to: 'PrecoMedio'
|
0064661E   BA486E6400             mov     edx, $00646E48
00646623   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
00646628   E8FB141700             call    007B7B28
0064662D   DB7DE8                 fstp    tbyte ptr [ebp-$18]
00646630   9B                     wait

* Possible String Reference to: 'Vendas'
|
00646631   BA5C6E6400             mov     edx, $00646E5C
00646636   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
0064663B   E8E8141700             call    007B7B28
00646640   DB7DD8                 fstp    tbyte ptr [ebp-$28]
00646643   9B                     wait

* Possible String Reference to: 'GiroMedio'
|
00646644   BA6C6E6400             mov     edx, $00646E6C
00646649   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
0064664E   E8D5141700             call    007B7B28
00646653   DB7DC8                 fstp    tbyte ptr [ebp-$38]
00646656   9B                     wait
00646657   8B45FC                 mov     eax, [ebp-$04]
0064665A   BA806E6400             mov     edx, $00646E80

* Reference to: System.@LStrCmp;
|
0064665F   E844F2DBFF             call    004058A8
00646664   0F8515010000           jnz     0064677F
0064666A   DB6DD8                 fld     tbyte ptr [ebp-$28]
0064666D   DB6D24                 fld     tbyte ptr [ebp+$24]
00646670   DEC1                   faddp   st(1), st(0)
00646672   D81D846E6400           fcomp   dword ptr [$00646E84]
00646678   DFE0                   fstsw   ax
0064667A   9E                     sahf
0064667B   743B                   jz      006466B8
0064667D   DB6DE8                 fld     tbyte ptr [ebp-$18]
00646680   DB6DD8                 fld     tbyte ptr [ebp-$28]
00646683   DEC9                   fmulp   st(1), st(0)
00646685   DB6D18                 fld     tbyte ptr [ebp+$18]
00646688   DB6D24                 fld     tbyte ptr [ebp+$24]
0064668B   DEC9                   fmulp   st(1), st(0)
0064668D   DEC1                   faddp   st(1), st(0)
0064668F   DB6DD8                 fld     tbyte ptr [ebp-$28]
00646692   DB6D24                 fld     tbyte ptr [ebp+$24]
00646695   DEC1                   faddp   st(1), st(0)

* Reference to: System.@FSafeDivide;
|
00646697   E864CEDBFF             call    00403500
0064669C   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarFromReal;
|
0064669F   E8E425DDFF             call    00418C88
006466A4   8D4D98                 lea     ecx, [ebp-$68]

* Possible String Reference to: 'PrecoMedio'
|
006466A7   BA486E6400             mov     edx, $00646E48
006466AC   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
006466B1   E8C60F1700             call    007B767C
006466B6   EB1E                   jmp     006466D6
006466B8   8D4588                 lea     eax, [ebp-$78]
006466BB   33D2                   xor     edx, edx
006466BD   B101                   mov     cl, $01

|
006466BF   E8AC23DDFF             call    00418A70
006466C4   8D4D88                 lea     ecx, [ebp-$78]

* Possible String Reference to: 'PrecoMedio'
|
006466C7   BA486E6400             mov     edx, $00646E48
006466CC   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
006466D1   E8A60F1700             call    007B767C
006466D6   DB6DD8                 fld     tbyte ptr [ebp-$28]
006466D9   DB6D24                 fld     tbyte ptr [ebp+$24]
006466DC   DEC1                   faddp   st(1), st(0)
006466DE   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]

* Reference to: Variants.@VarFromReal;
|
006466E4   E89F25DDFF             call    00418C88
006466E9   8D8D78FFFFFF           lea     ecx, [ebp+$FFFFFF78]

* Possible String Reference to: 'Vendas'
|
006466EF   BA5C6E6400             mov     edx, $00646E5C
006466F4   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
006466F9   E87E0F1700             call    007B767C
006466FE   8D7301                 lea     esi, [ebx+$01]
00646701   85F6                   test    esi, esi
00646703   7451                   jz      00646756
00646705   899D64FFFFFF           mov     [ebp+$FFFFFF64], ebx
0064670B   DB8564FFFFFF           fild    dword ptr [ebp+$FFFFFF64]
00646711   DB6D0C                 fld     tbyte ptr [ebp+$0C]
00646714   DEC9                   fmulp   st(1), st(0)
00646716   DB6DC8                 fld     tbyte ptr [ebp-$38]
00646719   DEC1                   faddp   st(1), st(0)
0064671B   DB6D24                 fld     tbyte ptr [ebp+$24]
0064671E   DEC1                   faddp   st(1), st(0)
00646720   89B560FFFFFF           mov     [ebp+$FFFFFF60], esi
00646726   DB8560FFFFFF           fild    dword ptr [ebp+$FFFFFF60]

* Reference to: System.@FSafeDivide;
|
0064672C   E8CFCDDBFF             call    00403500
00646731   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Reference to: Variants.@VarFromReal;
|
00646737   E84C25DDFF             call    00418C88
0064673C   8D8D68FFFFFF           lea     ecx, [ebp+$FFFFFF68]

* Possible String Reference to: 'GiroMedio'
|
00646742   BA6C6E6400             mov     edx, $00646E6C
00646747   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
0064674C   E82B0F1700             call    007B767C
00646751   E903050000             jmp     00646C59
00646756   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]
0064675C   33D2                   xor     edx, edx
0064675E   B101                   mov     cl, $01

|
00646760   E80B23DDFF             call    00418A70
00646765   8D8D50FFFFFF           lea     ecx, [ebp+$FFFFFF50]

* Possible String Reference to: 'GiroMedio'
|
0064676B   BA6C6E6400             mov     edx, $00646E6C
00646770   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00646775   E8020F1700             call    007B767C
0064677A   E9DA040000             jmp     00646C59
0064677F   8B45FC                 mov     eax, [ebp-$04]
00646782   BA906E6400             mov     edx, $00646E90

* Reference to: System.@LStrCmp;
|
00646787   E81CF1DBFF             call    004058A8
0064678C   754A                   jnz     006467D8
0064678E   8D8D3CFFFFFF           lea     ecx, [ebp+$FFFFFF3C]

* Possible String Reference to: 'TransfSai'
|
00646794   BA9C6E6400             mov     edx, $00646E9C
00646799   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064679E   E895151700             call    007B7D38
006467A3   8B853CFFFFFF           mov     eax, [ebp+$FFFFFF3C]

|
006467A9   E88AB51500             call    007A1D38
006467AE   DB6D24                 fld     tbyte ptr [ebp+$24]
006467B1   DEC1                   faddp   st(1), st(0)
006467B3   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]

* Reference to: Variants.@VarFromReal;
|
006467B9   E8CA24DDFF             call    00418C88
006467BE   8D8D40FFFFFF           lea     ecx, [ebp+$FFFFFF40]

* Possible String Reference to: 'TransfSai'
|
006467C4   BA9C6E6400             mov     edx, $00646E9C
006467C9   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
006467CE   E8A90E1700             call    007B767C
006467D3   E981040000             jmp     00646C59
006467D8   8B45FC                 mov     eax, [ebp-$04]
006467DB   BAB06E6400             mov     edx, $00646EB0

* Reference to: System.@LStrCmp;
|
006467E0   E8C3F0DBFF             call    004058A8
006467E5   0F856E040000           jnz     00646C59
006467EB   8D8D28FFFFFF           lea     ecx, [ebp+$FFFFFF28]

* Possible String Reference to: 'OutrasSai'
|
006467F1   BABC6E6400             mov     edx, $00646EBC
006467F6   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006467FB   E838151700             call    007B7D38
00646800   8B8528FFFFFF           mov     eax, [ebp+$FFFFFF28]

|
00646806   E82DB51500             call    007A1D38
0064680B   DB6D24                 fld     tbyte ptr [ebp+$24]
0064680E   DEC1                   faddp   st(1), st(0)
00646810   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: Variants.@VarFromReal;
|
00646816   E86D24DDFF             call    00418C88
0064681B   8D8D2CFFFFFF           lea     ecx, [ebp+$FFFFFF2C]

* Possible String Reference to: 'OutrasSai'
|
00646821   BABC6E6400             mov     edx, $00646EBC
00646826   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
0064682B   E84C0E1700             call    007B767C
00646830   E924040000             jmp     00646C59
00646835   8B06                   mov     eax, [esi]

* Possible String Reference to: 'CO'
|
00646837   BAD06E6400             mov     edx, $00646ED0

* Reference to: System.@LStrCmp;
|
0064683C   E867F0DBFF             call    004058A8
00646841   7420                   jz      00646863
00646843   8B06                   mov     eax, [esi]

* Possible String Reference to: 'D2'
|
00646845   BADC6E6400             mov     edx, $00646EDC

* Reference to: System.@LStrCmp;
|
0064684A   E859F0DBFF             call    004058A8
0064684F   7412                   jz      00646863
00646851   8B06                   mov     eax, [esi]

* Possible String Reference to: 'D3'
|
00646853   BAE86E6400             mov     edx, $00646EE8

* Reference to: System.@LStrCmp;
|
00646858   E84BF0DBFF             call    004058A8
0064685D   0F856A010000           jnz     006469CD

* Possible String Reference to: 'CustoMedio'
|
00646863   BAF46E6400             mov     edx, $00646EF4
00646868   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
0064686D   E8B6121700             call    007B7B28
00646872   DB7DB8                 fstp    tbyte ptr [ebp-$48]
00646875   9B                     wait

* Possible String Reference to: 'Compras'
|
00646876   BA086F6400             mov     edx, $00646F08
0064687B   A174DD7D00             mov     eax, dword ptr [$007DDD74]

|
00646880   E8A3121700             call    007B7B28
00646885   DB7DA8                 fstp    tbyte ptr [ebp-$58]
00646888   9B                     wait
00646889   8B45FC                 mov     eax, [ebp-$04]
0064688C   BA186F6400             mov     edx, $00646F18

* Reference to: System.@LStrCmp;
|
00646891   E812F0DBFF             call    004058A8
00646896   757F                   jnz     00646917
00646898   DB6DA8                 fld     tbyte ptr [ebp-$58]
0064689B   DB6D24                 fld     tbyte ptr [ebp+$24]
0064689E   DEE9                   fsubp   st(1), st(0)
006468A0   D81D846E6400           fcomp   dword ptr [$00646E84]
006468A6   DFE0                   fstsw   ax
006468A8   9E                     sahf
006468A9   743F                   jz      006468EA
006468AB   DB6DB8                 fld     tbyte ptr [ebp-$48]
006468AE   DB6DA8                 fld     tbyte ptr [ebp-$58]
006468B1   DEC9                   fmulp   st(1), st(0)
006468B3   DB6D18                 fld     tbyte ptr [ebp+$18]
006468B6   DB6D24                 fld     tbyte ptr [ebp+$24]
006468B9   DEC9                   fmulp   st(1), st(0)
006468BB   DEE9                   fsubp   st(1), st(0)
006468BD   DB6DA8                 fld     tbyte ptr [ebp-$58]
006468C0   DB6D24                 fld     tbyte ptr [ebp+$24]
006468C3   DEE9                   fsubp   st(1), st(0)

* Reference to: System.@FSafeDivide;
|
006468C5   E836CCDBFF             call    00403500
006468CA   8D8518FFFFFF           lea     eax, [ebp+$FFFFFF18]

* Reference to: Variants.@VarFromReal;
|
006468D0   E8B323DDFF             call    00418C88
006468D5   8D8D18FFFFFF           lea     ecx, [ebp+$FFFFFF18]

* Possible String Reference to: 'CustoMedio'
|
006468DB   BAF46E6400             mov     edx, $00646EF4
006468E0   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
006468E5   E8920D1700             call    007B767C
006468EA   DB6DA8                 fld     tbyte ptr [ebp-$58]
006468ED   DB6D24                 fld     tbyte ptr [ebp+$24]
006468F0   DEE9                   fsubp   st(1), st(0)
006468F2   8D8508FFFFFF           lea     eax, [ebp+$FFFFFF08]

* Reference to: Variants.@VarFromReal;
|
006468F8   E88B23DDFF             call    00418C88
006468FD   8D8D08FFFFFF           lea     ecx, [ebp+$FFFFFF08]

* Possible String Reference to: 'Compras'
|
00646903   BA086F6400             mov     edx, $00646F08
00646908   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
0064690D   E86A0D1700             call    007B767C
00646912   E942030000             jmp     00646C59
00646917   8B45FC                 mov     eax, [ebp-$04]
0064691A   BA906E6400             mov     edx, $00646E90

* Reference to: System.@LStrCmp;
|
0064691F   E884EFDBFF             call    004058A8
00646924   754A                   jnz     00646970
00646926   8D8DF4FEFFFF           lea     ecx, [ebp+$FFFFFEF4]

* Possible String Reference to: 'TransfEntr'
|
0064692C   BA246F6400             mov     edx, $00646F24
00646931   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00646936   E8FD131700             call    007B7D38
0064693B   8B85F4FEFFFF           mov     eax, [ebp+$FFFFFEF4]

|
00646941   E8F2B31500             call    007A1D38
00646946   DB6D24                 fld     tbyte ptr [ebp+$24]
00646949   DEE9                   fsubp   st(1), st(0)
0064694B   8D85F8FEFFFF           lea     eax, [ebp+$FFFFFEF8]

* Reference to: Variants.@VarFromReal;
|
00646951   E83223DDFF             call    00418C88
00646956   8D8DF8FEFFFF           lea     ecx, [ebp+$FFFFFEF8]

* Possible String Reference to: 'TransfEntr'
|
0064695C   BA246F6400             mov     edx, $00646F24
00646961   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00646966   E8110D1700             call    007B767C
0064696B   E9E9020000             jmp     00646C59
00646970   8B45FC                 mov     eax, [ebp-$04]
00646973   BAB06E6400             mov     edx, $00646EB0

* Reference to: System.@LStrCmp;
|
00646978   E82BEFDBFF             call    004058A8
0064697D   0F85D6020000           jnz     00646C59
00646983   8D8DE0FEFFFF           lea     ecx, [ebp+$FFFFFEE0]

* Possible String Reference to: 'OutrasEntr'
|
00646989   BA386F6400             mov     edx, $00646F38
0064698E   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00646993   E8A0131700             call    007B7D38
00646998   8B85E0FEFFFF           mov     eax, [ebp+$FFFFFEE0]

|
0064699E   E895B31500             call    007A1D38
006469A3   DB6D24                 fld     tbyte ptr [ebp+$24]
006469A6   DEE9                   fsubp   st(1), st(0)
006469A8   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]

* Reference to: Variants.@VarFromReal;
|
006469AE   E8D522DDFF             call    00418C88
006469B3   8D8DE4FEFFFF           lea     ecx, [ebp+$FFFFFEE4]

* Possible String Reference to: 'OutrasEntr'
|
006469B9   BA386F6400             mov     edx, $00646F38
006469BE   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
006469C3   E8B40C1700             call    007B767C
006469C8   E98C020000             jmp     00646C59
006469CD   8B06                   mov     eax, [esi]

* Possible String Reference to: 'EP'
|
006469CF   BA4C6F6400             mov     edx, $00646F4C

* Reference to: System.@LStrCmp;
|
006469D4   E8CFEEDBFF             call    004058A8
006469D9   7570                   jnz     00646A4B
006469DB   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'simul'
|
006469DE   BA586F6400             mov     edx, $00646F58

* Reference to: System.@LStrCmp;
|
006469E3   E8C0EEDBFF             call    004058A8
006469E8   0F846B020000           jz      00646C59
006469EE   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'empen'
|
006469F1   BA686F6400             mov     edx, $00646F68

* Reference to: System.@LStrCmp;
|
006469F6   E8ADEEDBFF             call    004058A8
006469FB   0F8458020000           jz      00646C59
00646A01   8D8DCCFEFFFF           lea     ecx, [ebp+$FFFFFECC]

* Possible String Reference to: 'ProducaoEntr'
|
00646A07   BA786F6400             mov     edx, $00646F78
00646A0C   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00646A11   E822131700             call    007B7D38
00646A16   8B85CCFEFFFF           mov     eax, [ebp+$FFFFFECC]

|
00646A1C   E817B31500             call    007A1D38
00646A21   DB6D24                 fld     tbyte ptr [ebp+$24]
00646A24   DEE9                   fsubp   st(1), st(0)
00646A26   8D85D0FEFFFF           lea     eax, [ebp+$FFFFFED0]

* Reference to: Variants.@VarFromReal;
|
00646A2C   E85722DDFF             call    00418C88
00646A31   8D8DD0FEFFFF           lea     ecx, [ebp+$FFFFFED0]

* Possible String Reference to: 'ProducaoEntr'
|
00646A37   BA786F6400             mov     edx, $00646F78
00646A3C   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00646A41   E8360C1700             call    007B767C
00646A46   E90E020000             jmp     00646C59
00646A4B   8B06                   mov     eax, [esi]

* Possible String Reference to: 'SP'
|
00646A4D   BA906F6400             mov     edx, $00646F90

* Reference to: System.@LStrCmp;
|
00646A52   E851EEDBFF             call    004058A8
00646A57   7570                   jnz     00646AC9
00646A59   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'simul'
|
00646A5C   BA586F6400             mov     edx, $00646F58

* Reference to: System.@LStrCmp;
|
00646A61   E842EEDBFF             call    004058A8
00646A66   0F84ED010000           jz      00646C59
00646A6C   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'empen'
|
00646A6F   BA686F6400             mov     edx, $00646F68

* Reference to: System.@LStrCmp;
|
00646A74   E82FEEDBFF             call    004058A8
00646A79   0F84DA010000           jz      00646C59
00646A7F   8D8DB8FEFFFF           lea     ecx, [ebp+$FFFFFEB8]

* Possible String Reference to: 'ProducaoSai'
|
00646A85   BA9C6F6400             mov     edx, $00646F9C
00646A8A   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00646A8F   E8A4121700             call    007B7D38
00646A94   8B85B8FEFFFF           mov     eax, [ebp+$FFFFFEB8]

|
00646A9A   E899B21500             call    007A1D38
00646A9F   DB6D24                 fld     tbyte ptr [ebp+$24]
00646AA2   DEC1                   faddp   st(1), st(0)
00646AA4   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]

* Reference to: Variants.@VarFromReal;
|
00646AAA   E8D921DDFF             call    00418C88
00646AAF   8D8DBCFEFFFF           lea     ecx, [ebp+$FFFFFEBC]

* Possible String Reference to: 'ProducaoSai'
|
00646AB5   BA9C6F6400             mov     edx, $00646F9C
00646ABA   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00646ABF   E8B80B1700             call    007B767C
00646AC4   E990010000             jmp     00646C59
00646AC9   8B06                   mov     eax, [esi]

* Possible String Reference to: 'TE'
|
00646ACB   BAB06F6400             mov     edx, $00646FB0

* Reference to: System.@LStrCmp;
|
00646AD0   E8D3EDDBFF             call    004058A8
00646AD5   754A                   jnz     00646B21
00646AD7   8D8DA4FEFFFF           lea     ecx, [ebp+$FFFFFEA4]

* Possible String Reference to: 'TransfEntr'
|
00646ADD   BA246F6400             mov     edx, $00646F24
00646AE2   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00646AE7   E84C121700             call    007B7D38
00646AEC   8B85A4FEFFFF           mov     eax, [ebp+$FFFFFEA4]

|
00646AF2   E841B21500             call    007A1D38
00646AF7   DB6D24                 fld     tbyte ptr [ebp+$24]
00646AFA   DEE9                   fsubp   st(1), st(0)
00646AFC   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to: Variants.@VarFromReal;
|
00646B02   E88121DDFF             call    00418C88
00646B07   8D8DA8FEFFFF           lea     ecx, [ebp+$FFFFFEA8]

* Possible String Reference to: 'TransfEntr'
|
00646B0D   BA246F6400             mov     edx, $00646F24
00646B12   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00646B17   E8600B1700             call    007B767C
00646B1C   E938010000             jmp     00646C59
00646B21   8B06                   mov     eax, [esi]

* Possible String Reference to: 'TS'
|
00646B23   BABC6F6400             mov     edx, $00646FBC

* Reference to: System.@LStrCmp;
|
00646B28   E87BEDDBFF             call    004058A8
00646B2D   754A                   jnz     00646B79
00646B2F   8D8D90FEFFFF           lea     ecx, [ebp+$FFFFFE90]

* Possible String Reference to: 'TransfSai'
|
00646B35   BA9C6E6400             mov     edx, $00646E9C
00646B3A   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00646B3F   E8F4111700             call    007B7D38
00646B44   8B8590FEFFFF           mov     eax, [ebp+$FFFFFE90]

|
00646B4A   E8E9B11500             call    007A1D38
00646B4F   DB6D24                 fld     tbyte ptr [ebp+$24]
00646B52   DEC1                   faddp   st(1), st(0)
00646B54   8D8594FEFFFF           lea     eax, [ebp+$FFFFFE94]

* Reference to: Variants.@VarFromReal;
|
00646B5A   E82921DDFF             call    00418C88
00646B5F   8D8D94FEFFFF           lea     ecx, [ebp+$FFFFFE94]

* Possible String Reference to: 'TransfSai'
|
00646B65   BA9C6E6400             mov     edx, $00646E9C
00646B6A   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00646B6F   E8080B1700             call    007B767C
00646B74   E9E0000000             jmp     00646C59
00646B79   8B06                   mov     eax, [esi]

* Possible String Reference to: 'ASE'
|
00646B7B   BAC86F6400             mov     edx, $00646FC8

* Reference to: System.@LStrCmp;
|
00646B80   E823EDDBFF             call    004058A8
00646B85   741C                   jz      00646BA3
00646B87   8B06                   mov     eax, [esi]

* Possible String Reference to: 'E0'
|
00646B89   BAD46F6400             mov     edx, $00646FD4

* Reference to: System.@LStrCmp;
|
00646B8E   E815EDDBFF             call    004058A8
00646B93   740E                   jz      00646BA3
00646B95   8B06                   mov     eax, [esi]

* Possible String Reference to: 'E1'
|
00646B97   BAE06F6400             mov     edx, $00646FE0

* Reference to: System.@LStrCmp;
|
00646B9C   E807EDDBFF             call    004058A8
00646BA1   7547                   jnz     00646BEA
00646BA3   8D8D7CFEFFFF           lea     ecx, [ebp+$FFFFFE7C]

* Possible String Reference to: 'OutrasEntr'
|
00646BA9   BA386F6400             mov     edx, $00646F38
00646BAE   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00646BB3   E880111700             call    007B7D38
00646BB8   8B857CFEFFFF           mov     eax, [ebp+$FFFFFE7C]

|
00646BBE   E875B11500             call    007A1D38
00646BC3   DB6D24                 fld     tbyte ptr [ebp+$24]
00646BC6   DEE9                   fsubp   st(1), st(0)
00646BC8   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]

* Reference to: Variants.@VarFromReal;
|
00646BCE   E8B520DDFF             call    00418C88
00646BD3   8D8D80FEFFFF           lea     ecx, [ebp+$FFFFFE80]

* Possible String Reference to: 'OutrasEntr'
|
00646BD9   BA386F6400             mov     edx, $00646F38
00646BDE   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00646BE3   E8940A1700             call    007B767C
00646BE8   EB6F                   jmp     00646C59
00646BEA   8B06                   mov     eax, [esi]

* Possible String Reference to: 'ASS'
|
00646BEC   BAEC6F6400             mov     edx, $00646FEC

* Reference to: System.@LStrCmp;
|
00646BF1   E8B2ECDBFF             call    004058A8
00646BF6   741C                   jz      00646C14
00646BF8   8B06                   mov     eax, [esi]

* Possible String Reference to: 'S0'
|
00646BFA   BAF86F6400             mov     edx, $00646FF8

* Reference to: System.@LStrCmp;
|
00646BFF   E8A4ECDBFF             call    004058A8
00646C04   740E                   jz      00646C14
00646C06   8B06                   mov     eax, [esi]

* Possible String Reference to: 'S1'
|
00646C08   BA04706400             mov     edx, $00647004

* Reference to: System.@LStrCmp;
|
00646C0D   E896ECDBFF             call    004058A8
00646C12   7545                   jnz     00646C59
00646C14   8D8D68FEFFFF           lea     ecx, [ebp+$FFFFFE68]

* Possible String Reference to: 'OutrasSai'
|
00646C1A   BABC6E6400             mov     edx, $00646EBC
00646C1F   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00646C24   E80F111700             call    007B7D38
00646C29   8B8568FEFFFF           mov     eax, [ebp+$FFFFFE68]

|
00646C2F   E804B11500             call    007A1D38
00646C34   DB6D24                 fld     tbyte ptr [ebp+$24]
00646C37   DEC1                   faddp   st(1), st(0)
00646C39   8D856CFEFFFF           lea     eax, [ebp+$FFFFFE6C]

* Reference to: Variants.@VarFromReal;
|
00646C3F   E84420DDFF             call    00418C88
00646C44   8D8D6CFEFFFF           lea     ecx, [ebp+$FFFFFE6C]

* Possible String Reference to: 'OutrasSai'
|
00646C4A   BABC6E6400             mov     edx, $00646EBC
00646C4F   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to : tArrayTable._PROC_007B767C()
|
00646C54   E8230A1700             call    007B767C
00646C59   C645F701               mov     byte ptr [ebp-$09], $01
00646C5D   A174DD7D00             mov     eax, dword ptr [$007DDD74]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00646C62   E875311700             call    007B9DDC
00646C67   33C0                   xor     eax, eax
00646C69   5A                     pop     edx
00646C6A   59                     pop     ecx
00646C6B   59                     pop     ecx
00646C6C   648910                 mov     fs:[eax], edx
00646C6F   EB41                   jmp     00646CB2

* Reference to: System.@HandleOnException;
|
00646C71   E93ADFDBFF             jmp     00404BB0
00646C76   0100                   add     [eax], eax
00646C78   0000                   add     [eax], al
00646C7A   40                     inc     eax
00646C7B   95                     xchg    eax, ebp
00646C7C   40                     inc     eax
00646C7D   00826C640089           add     [edx+$8900646C], al
00646C83   C3                     ret

00646C84   6A00                   push    $00
00646C86   8B4B04                 mov     ecx, [ebx+$04]
00646C89   8D8564FEFFFF           lea     eax, [ebp+$FFFFFE64]

* Possible String Reference to: 'Ocorreu um erro na rotina "TiraProd
|                                Saldo"'
|
00646C8F   BA10706400             mov     edx, $00647010

* Reference to: System.@LStrCat3;
|
00646C94   E80FEBDBFF             call    004057A8
00646C99   8B8564FEFFFF           mov     eax, [ebp+$FFFFFE64]
00646C9F   668B0D3C706400         mov     cx, word ptr [$0064703C]
00646CA6   B201                   mov     dl, $01

|
00646CA8   E87FCEDFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00646CAD   E8FEE1DBFF             call    00404EB0

****** END
|
00646CB2   33C0                   xor     eax, eax
00646CB4   5A                     pop     edx
00646CB5   59                     pop     ecx
00646CB6   59                     pop     ecx
00646CB7   648910                 mov     fs:[eax], edx

****** FINALLY
|
00646CBA   68C76C6400             push    $00646CC7
00646CBF   C3                     ret


* Reference to: System.@HandleFinally;
|
00646CC0   E973E0DBFF             jmp     00404D38
00646CC5   EBF8                   jmp     00646CBF

****** END
|
00646CC7   33C0                   xor     eax, eax
00646CC9   5A                     pop     edx
00646CCA   59                     pop     ecx
00646CCB   59                     pop     ecx
00646CCC   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠE÷_^[‹å]Â('
|
00646CCF   68016E6400             push    $00646E01
00646CD4   8D8564FEFFFF           lea     eax, [ebp+$FFFFFE64]
00646CDA   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00646CDF   E8DCE7DBFF             call    004054C0
00646CE4   8D856CFEFFFF           lea     eax, [ebp+$FFFFFE6C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646CEA   E889D8DCFF             call    00414578
00646CEF   8D857CFEFFFF           lea     eax, [ebp+$FFFFFE7C]

* Reference to: System.@LStrClr(void;void);
|
00646CF5   E8A2E7DBFF             call    0040549C
00646CFA   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646D00   E873D8DCFF             call    00414578
00646D05   8D8590FEFFFF           lea     eax, [ebp+$FFFFFE90]

* Reference to: System.@LStrClr(void;void);
|
00646D0B   E88CE7DBFF             call    0040549C
00646D10   8D8594FEFFFF           lea     eax, [ebp+$FFFFFE94]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646D16   E85DD8DCFF             call    00414578
00646D1B   8D85A4FEFFFF           lea     eax, [ebp+$FFFFFEA4]

* Reference to: System.@LStrClr(void;void);
|
00646D21   E876E7DBFF             call    0040549C
00646D26   8D85A8FEFFFF           lea     eax, [ebp+$FFFFFEA8]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646D2C   E847D8DCFF             call    00414578
00646D31   8D85B8FEFFFF           lea     eax, [ebp+$FFFFFEB8]

* Reference to: System.@LStrClr(void;void);
|
00646D37   E860E7DBFF             call    0040549C
00646D3C   8D85BCFEFFFF           lea     eax, [ebp+$FFFFFEBC]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646D42   E831D8DCFF             call    00414578
00646D47   8D85CCFEFFFF           lea     eax, [ebp+$FFFFFECC]

* Reference to: System.@LStrClr(void;void);
|
00646D4D   E84AE7DBFF             call    0040549C
00646D52   8D85D0FEFFFF           lea     eax, [ebp+$FFFFFED0]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646D58   E81BD8DCFF             call    00414578
00646D5D   8D85E0FEFFFF           lea     eax, [ebp+$FFFFFEE0]

* Reference to: System.@LStrClr(void;void);
|
00646D63   E834E7DBFF             call    0040549C
00646D68   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646D6E   E805D8DCFF             call    00414578
00646D73   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]

* Reference to: System.@LStrClr(void;void);
|
00646D79   E81EE7DBFF             call    0040549C
00646D7E   8D85F8FEFFFF           lea     eax, [ebp+$FFFFFEF8]

* Reference to object Variant
|
00646D84   8B1524114000           mov     edx, [$00401124]
00646D8A   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00646D8F   E808F3DBFF             call    0040609C
00646D94   8D8528FFFFFF           lea     eax, [ebp+$FFFFFF28]

* Reference to: System.@LStrClr(void;void);
|
00646D9A   E8FDE6DBFF             call    0040549C
00646D9F   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00646DA5   E8CED7DCFF             call    00414578
00646DAA   8D853CFFFFFF           lea     eax, [ebp+$FFFFFF3C]

* Reference to: System.@LStrClr(void;void);
|
00646DB0   E8E7E6DBFF             call    0040549C
00646DB5   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]

* Reference to object Variant
|
00646DBB   8B1524114000           mov     edx, [$00401124]
00646DC1   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00646DC6   E8D1F2DBFF             call    0040609C
00646DCB   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Reference to object Variant
|
00646DD1   8B1524114000           mov     edx, [$00401124]
00646DD7   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00646DDC   E8BBF2DBFF             call    0040609C
00646DE1   8D45F8                 lea     eax, [ebp-$08]
00646DE4   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00646DE9   E8D2E6DBFF             call    004054C0
00646DEE   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
00646DF1   E8A6E6DBFF             call    0040549C
00646DF6   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00646DF7(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00646DF7   E93CDFDBFF             jmp     00404D38

|
00646DFC   E9D3FEFFFF             jmp     00646CD4
00646E01   8A45F7                 mov     al, byte ptr [ebp-$09]
00646E04   5F                     pop     edi
00646E05   5E                     pop     esi
00646E06   5B                     pop     ebx
00646E07   8BE5                   mov     esp, ebp
00646E09   5D                     pop     ebp
00646E0A   C22800                 ret     $0028

*)
end;

procedure TFrmF2SubLocal._PROC_00647041(Sender : TObject);
begin
(*
00647041   8BEC                   mov     ebp, esp
00647043   83C4A4                 add     esp, -$5C
00647046   53                     push    ebx
00647047   56                     push    esi
00647048   57                     push    edi
00647049   33C9                   xor     ecx, ecx
0064704B   894DA4                 mov     [ebp-$5C], ecx
0064704E   894DC0                 mov     [ebp-$40], ecx
00647051   894DC4                 mov     [ebp-$3C], ecx
00647054   894DC8                 mov     [ebp-$38], ecx
00647057   894DCC                 mov     [ebp-$34], ecx
0064705A   894DB0                 mov     [ebp-$50], ecx
0064705D   894DB4                 mov     [ebp-$4C], ecx
00647060   894DB8                 mov     [ebp-$48], ecx
00647063   894DBC                 mov     [ebp-$44], ecx
00647066   8BF2                   mov     esi, edx
00647068   8945FC                 mov     [ebp-$04], eax
0064706B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064706E   E8D9E8DBFF             call    0040594C
00647073   33C0                   xor     eax, eax
00647075   55                     push    ebp

* Possible String Reference to: 'éWÛÛÿëÕÛmð_^[‹å]Ã'
|
00647076   68DC716400             push    $006471DC

***** TRY
|
0064707B   64FF30                 push    dword ptr fs:[eax]
0064707E   648920                 mov     fs:[eax], esp
00647081   33C0                   xor     eax, eax
00647083   8945F0                 mov     [ebp-$10], eax
00647086   8945F4                 mov     [ebp-$0C], eax
00647089   668945F8               mov     [ebp-$08], ax
0064708D   B301                   mov     bl, $01
0064708F   33C0                   xor     eax, eax
00647091   55                     push    ebp
00647092   68A4716400             push    $006471A4

***** TRY
|
00647097   64FF30                 push    dword ptr fs:[eax]
0064709A   648920                 mov     fs:[eax], esp
0064709D   33C0                   xor     eax, eax
0064709F   55                     push    ebp
006470A0   685B716400             push    $0064715B

***** TRY
|
006470A5   64FF30                 push    dword ptr fs:[eax]
006470A8   648920                 mov     fs:[eax], esp
006470AB   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
006470B0   8B00                   mov     eax, [eax]
006470B2   8B80A8030000           mov     eax, [eax+$03A8]
006470B8   8B10                   mov     edx, [eax]
006470BA   FF5244                 call    dword ptr [edx+$44]
006470BD   84C0                   test    al, al
006470BF   0F848C000000           jz      00647151
006470C5   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'NAO'
|
006470C8   BAF8716400             mov     edx, $006471F8

* Reference to: System.@LStrCmp;
|
006470CD   E8D6E7DBFF             call    004058A8
006470D2   747D                   jz      00647151
006470D4   84DB                   test    bl, bl
006470D6   7479                   jz      00647151
006470D8   BBF4FFFFFF             mov     ebx, $FFFFFFF4
006470DD   8D45C0                 lea     eax, [ebp-$40]
006470E0   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006470E3   E8DC1BDDFF             call    00418CC4
006470E8   56                     push    esi
006470E9   8D75C0                 lea     esi, [ebp-$40]
006470EC   8D7DD0                 lea     edi, [ebp-$30]
006470EF   A5                     movsd
006470F0   A5                     movsd
006470F1   A5                     movsd
006470F2   A5                     movsd
006470F3   5E                     pop     esi
006470F4   8D45B0                 lea     eax, [ebp-$50]
006470F7   8BD6                   mov     edx, esi
006470F9   B1FC                   mov     cl, $FC

|
006470FB   E87019DDFF             call    00418A70
00647100   56                     push    esi
00647101   8D75B0                 lea     esi, [ebp-$50]
00647104   8D7DE0                 lea     edi, [ebp-$20]
00647107   A5                     movsd
00647108   A5                     movsd
00647109   A5                     movsd
0064710A   A5                     movsd
0064710B   5E                     pop     esi
0064710C   8D45D0                 lea     eax, [ebp-$30]
0064710F   50                     push    eax
00647110   6A01                   push    $01

* Possible String Reference to: 'CodSubLocal'
|
00647112   B804726400             mov     eax, $00647204
00647117   8945A8                 mov     [ebp-$58], eax

* Possible String Reference to: 'AnoMes'
|
0064711A   B818726400             mov     eax, $00647218
0064711F   8945AC                 mov     [ebp-$54], eax
00647122   8D55A8                 lea     edx, [ebp-$58]
00647125   B901000000             mov     ecx, $00000001
0064712A   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B8568()
|
0064712F   E834141700             call    007B8568
00647134   84C0                   test    al, al
00647136   7415                   jz      0064714D

* Possible String Reference to: 'Estoque'
|
00647138   BA28726400             mov     edx, $00647228
0064713D   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00647142   E8E1091700             call    007B7B28
00647147   DB7DF0                 fstp    tbyte ptr [ebp-$10]
0064714A   9B                     wait
0064714B   EB04                   jmp     00647151
0064714D   4E                     dec     esi
0064714E   43                     inc     ebx
0064714F   758C                   jnz     006470DD
00647151   33C0                   xor     eax, eax
00647153   5A                     pop     edx
00647154   59                     pop     ecx
00647155   59                     pop     ecx
00647156   648910                 mov     fs:[eax], edx
00647159   EB3B                   jmp     00647196

* Reference to: System.@HandleOnException;
|
0064715B   E950DADBFF             jmp     00404BB0
00647160   0100                   add     [eax], eax
00647162   0000                   add     [eax], al
00647164   40                     inc     eax
00647165   95                     xchg    eax, ebp
00647166   40                     inc     eax
00647167   006C7164               add     [ecx+esi*2+$64], ch
0064716B   0089C36A008B           add     [ecx+$8B006AC3], cl
00647171   4B                     dec     ebx
00647172   048D                   add     al, -$73
00647174   45                     inc     ebp
00647175   A4                     movsb

* Possible String Reference to: 'Erro ao retornar o saldo de estoque
|                                 dos produtos por locais.'
|
00647176   BA38726400             mov     edx, $00647238

* Reference to: System.@LStrCat3;
|
0064717B   E828E6DBFF             call    004057A8
00647180   8B45A4                 mov     eax, [ebp-$5C]
00647183   668B0D78726400         mov     cx, word ptr [$00647278]
0064718A   B202                   mov     dl, $02

|
0064718C   E89BC9DFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00647191   E81ADDDBFF             call    00404EB0

****** END
|
00647196   33C0                   xor     eax, eax
00647198   5A                     pop     edx
00647199   59                     pop     ecx
0064719A   59                     pop     ecx
0064719B   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064719E   68AB716400             push    $006471AB
006471A3   C3                     ret


* Reference to: System.@HandleFinally;
|
006471A4   E98FDBDBFF             jmp     00404D38
006471A9   EBF8                   jmp     006471A3

****** END
|
006471AB   33C0                   xor     eax, eax
006471AD   5A                     pop     edx
006471AE   59                     pop     ecx
006471AF   59                     pop     ecx
006471B0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'Ûmð_^[‹å]Ã'
|
006471B3   68E3716400             push    $006471E3
006471B8   8D45A4                 lea     eax, [ebp-$5C]

* Reference to: System.@LStrClr(void;void);
|
006471BB   E8DCE2DBFF             call    0040549C
006471C0   8D45B0                 lea     eax, [ebp-$50]

* Reference to object Variant
|
006471C3   8B1524114000           mov     edx, [$00401124]
006471C9   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
006471CE   E8C9EEDBFF             call    0040609C
006471D3   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
006471D6   E8C1E2DBFF             call    0040549C
006471DB   C3                     ret


* Reference to: System.@HandleFinally;
|
006471DC   E957DBDBFF             jmp     00404D38
006471E1   EBD5                   jmp     006471B8

****** END
|
006471E3   DB6DF0                 fld     tbyte ptr [ebp-$10]
006471E6   5F                     pop     edi
006471E7   5E                     pop     esi
006471E8   5B                     pop     ebx
006471E9   8BE5                   mov     esp, ebp
006471EB   5D                     pop     ebp
006471EC   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_006471DC(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
006471DC   E957DBDBFF             jmp     00404D38

|
006471E1   EBD5                   jmp     006471B8
006471E3   DB6DF0                 fld     tbyte ptr [ebp-$10]
006471E6   5F                     pop     edi
006471E7   5E                     pop     esi
006471E8   5B                     pop     ebx
006471E9   8BE5                   mov     esp, ebp
006471EB   5D                     pop     ebp
006471EC   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0064727D(Sender : TObject);
begin
(*
0064727D   8BEC                   mov     ebp, esp
0064727F   51                     push    ecx
00647280   B91E000000             mov     ecx, $0000001E
00647285   6A00                   push    $00
00647287   6A00                   push    $00
00647289   49                     dec     ecx
0064728A   75F9                   jnz     00647285
0064728C   874DFC                 xchg    [ebp-$04], ecx
0064728F   53                     push    ebx
00647290   56                     push    esi
00647291   57                     push    edi
00647292   8BF1                   mov     esi, ecx
00647294   8955F8                 mov     [ebp-$08], edx
00647297   8945FC                 mov     [ebp-$04], eax
0064729A   8B5D08                 mov     ebx, [ebp+$08]
0064729D   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006472A0   E8A7E6DBFF             call    0040594C
006472A5   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006472A8   E89FE6DBFF             call    0040594C
006472AD   33C0                   xor     eax, eax
006472AF   55                     push    ebp
006472B0   689C786400             push    $0064789C

***** TRY
|
006472B5   64FF30                 push    dword ptr fs:[eax]
006472B8   648920                 mov     fs:[eax], esp
006472BB   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'NAO'
|
006472BE   BAB8786400             mov     edx, $006478B8

* Reference to: System.@LStrCmp;
|
006472C3   E8E0E5DBFF             call    004058A8
006472C8   750C                   jnz     006472D6
006472CA   8BC3                   mov     eax, ebx
006472CC   8B55F8                 mov     edx, [ebp-$08]

* Reference to: System.@LStrAsg(void;void;void;void);
|
006472CF   E81CE2DBFF             call    004054F0
006472D4   EB07                   jmp     006472DD
006472D6   8BC3                   mov     eax, ebx

* Reference to: System.@LStrClr(void;void);
|
006472D8   E8BFE1DBFF             call    0040549C
006472DD   33C0                   xor     eax, eax
006472DF   55                     push    ebp
006472E0   68F6776400             push    $006477F6

***** TRY
|
006472E5   64FF30                 push    dword ptr fs:[eax]
006472E8   648920                 mov     fs:[eax], esp
006472EB   33C0                   xor     eax, eax
006472ED   55                     push    ebp
006472EE   68A7776400             push    $006477A7

***** TRY
|
006472F3   64FF30                 push    dword ptr fs:[eax]
006472F6   648920                 mov     fs:[eax], esp
006472F9   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
006472FE   8B00                   mov     eax, [eax]
00647300   8B80A8030000           mov     eax, [eax+$03A8]
00647306   8B10                   mov     edx, [eax]
00647308   FF5244                 call    dword ptr [edx+$44]
0064730B   84C0                   test    al, al
0064730D   0F848A040000           jz      0064779D
00647313   8B45F8                 mov     eax, [ebp-$08]

* Possible String Reference to: 'NAO'
|
00647316   BAB8786400             mov     edx, $006478B8

* Reference to: System.@LStrCmp;
|
0064731B   E888E5DBFF             call    004058A8
00647320   0F8477040000           jz      0064779D
00647326   8D45D4                 lea     eax, [ebp-$2C]
00647329   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064732C   E89319DDFF             call    00418CC4
00647331   56                     push    esi
00647332   8D75D4                 lea     esi, [ebp-$2C]
00647335   8D7DE4                 lea     edi, [ebp-$1C]
00647338   A5                     movsd
00647339   A5                     movsd
0064733A   A5                     movsd
0064733B   A5                     movsd
0064733C   5E                     pop     esi
0064733D   8D45E4                 lea     eax, [ebp-$1C]
00647340   50                     push    eax
00647341   6A00                   push    $00

* Possible String Reference to: 'Filial'
|
00647343   B8C4786400             mov     eax, $006478C4
00647348   8945D0                 mov     [ebp-$30], eax
0064734B   8D55D0                 lea     edx, [ebp-$30]
0064734E   33C9                   xor     ecx, ecx
00647350   A170DD7D00             mov     eax, dword ptr [$007DDD70]

* Reference to : tArrayTable._PROC_007B8568()
|
00647355   E80E121700             call    007B8568
0064735A   A178DD7D00             mov     eax, dword ptr [$007DDD78]

|
0064735F   E83C101700             call    007B83A0
00647364   837DF800               cmp     dword ptr [ebp-$08], +$00
00647368   743C                   jz      006473A6
0064736A   8D45C0                 lea     eax, [ebp-$40]
0064736D   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00647370   E84F19DDFF             call    00418CC4
00647375   56                     push    esi
00647376   8D75C0                 lea     esi, [ebp-$40]
00647379   8D7DE4                 lea     edi, [ebp-$1C]
0064737C   A5                     movsd
0064737D   A5                     movsd
0064737E   A5                     movsd
0064737F   A5                     movsd
00647380   5E                     pop     esi
00647381   8D45E4                 lea     eax, [ebp-$1C]
00647384   50                     push    eax
00647385   6A00                   push    $00

* Possible String Reference to: 'CodSubLocal'
|
00647387   B8D4786400             mov     eax, $006478D4
0064738C   8945D0                 mov     [ebp-$30], eax
0064738F   8D55D0                 lea     edx, [ebp-$30]
00647392   33C9                   xor     ecx, ecx
00647394   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8568()
|
00647399   E8CA111700             call    007B8568
0064739E   84C0                   test    al, al
006473A0   0F85ED030000           jnz     00647793
006473A6   A150B47D00             mov     eax, dword ptr [$007DB450]
006473AB   803800                 cmp     byte ptr [eax], $00
006473AE   0F84B6020000           jz      0064766A
006473B4   8D55BC                 lea     edx, [ebp-$44]
006473B7   8B06                   mov     eax, [esi]
006473B9   8B4070                 mov     eax, [eax+$70]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
006473BC   E8DB32DCFF             call    0040A69C
006473C1   8B45BC                 mov     eax, [ebp-$44]

* Possible String Reference to: 'entritem'
|
006473C4   BAE8786400             mov     edx, $006478E8

* Reference to: System.@LStrCmp;
|
006473C9   E8DAE4DBFF             call    004058A8
006473CE   750F                   jnz     006473DF
006473D0   8D45F4                 lea     eax, [ebp-$0C]
006473D3   BAFC786400             mov     edx, $006478FC

* Reference to: System.@LStrLAsg(void;void;void;void);
|
006473D8   E857E1DBFF             call    00405534
006473DD   EB33                   jmp     00647412
006473DF   8D55B8                 lea     edx, [ebp-$48]
006473E2   8B06                   mov     eax, [esi]
006473E4   8B4070                 mov     eax, [eax+$70]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
006473E7   E8B032DCFF             call    0040A69C
006473EC   8B45B8                 mov     eax, [ebp-$48]

* Possible String Reference to: 'saiditem'
|
006473EF   BA08796400             mov     edx, $00647908

* Reference to: System.@LStrCmp;
|
006473F4   E8AFE4DBFF             call    004058A8
006473F9   750F                   jnz     0064740A
006473FB   8D45F4                 lea     eax, [ebp-$0C]
006473FE   BA1C796400             mov     edx, $0064791C

* Reference to: System.@LStrLAsg(void;void;void;void);
|
00647403   E82CE1DBFF             call    00405534
00647408   EB08                   jmp     00647412
0064740A   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0064740D   E88AE0DBFF             call    0040549C
00647412   837DF800               cmp     dword ptr [ebp-$08], +$00
00647416   7412                   jz      0064742A
00647418   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8B80()
|
0064741D   E85E171700             call    007B8B80
00647422   85C0                   test    eax, eax
00647424   0F8FD4000000           jnle    006474FE
0064742A   B054                   mov     al, $54
0064742C   8845A5                 mov     [ebp-$5B], al
0064742F   C645A401               mov     byte ptr [ebp-$5C], $01
00647433   8D45A8                 lea     eax, [ebp-$58]
00647436   8D55A4                 lea     edx, [ebp-$5C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
00647439   E8B218DDFF             call    00418CF0
0064743E   56                     push    esi
0064743F   8D75A8                 lea     esi, [ebp-$58]
00647442   8D7DE4                 lea     edi, [ebp-$1C]
00647445   A5                     movsd
00647446   A5                     movsd
00647447   A5                     movsd
00647448   A5                     movsd
00647449   5E                     pop     esi
0064744A   8D45E4                 lea     eax, [ebp-$1C]
0064744D   50                     push    eax
0064744E   6A00                   push    $00

* Possible String Reference to: 'Padrao'
|
00647450   B828796400             mov     eax, $00647928
00647455   8945D0                 mov     [ebp-$30], eax
00647458   8D55D0                 lea     edx, [ebp-$30]
0064745B   33C9                   xor     ecx, ecx
0064745D   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8568()
|
00647462   E801111700             call    007B8568
00647467   84C0                   test    al, al
00647469   0F858F000000           jnz     006474FE
0064746F   8D4DA0                 lea     ecx, [ebp-$60]
00647472   8B06                   mov     eax, [esi]

* Possible String Reference to: 'Especie'
|
00647474   BA38796400             mov     edx, $00647938

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00647479   E8BA081700             call    007B7D38
0064747E   8B45A0                 mov     eax, [ebp-$60]
00647481   50                     push    eax
00647482   8D4D9C                 lea     ecx, [ebp-$64]
00647485   8B06                   mov     eax, [esi]

* Possible String Reference to: 'Serie'
|
00647487   BA48796400             mov     edx, $00647948

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064748C   E8A7081700             call    007B7D38
00647491   8B459C                 mov     eax, [ebp-$64]
00647494   50                     push    eax
00647495   8D4D98                 lea     ecx, [ebp-$68]
00647498   8B06                   mov     eax, [esi]

* Possible String Reference to: 'CodProd'
|
0064749A   BA58796400             mov     edx, $00647958

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064749F   E894081700             call    007B7D38
006474A4   8B4598                 mov     eax, [ebp-$68]
006474A7   50                     push    eax
006474A8   8B45F4                 mov     eax, [ebp-$0C]
006474AB   50                     push    eax
006474AC   8B06                   mov     eax, [esi]

* Possible String Reference to: 'NumLcto'
|
006474AE   BA68796400             mov     edx, $00647968

|
006474B3   E87C071700             call    007B7C34
006474B8   50                     push    eax
006474B9   8D45F8                 lea     eax, [ebp-$08]
006474BC   50                     push    eax
006474BD   8D4D94                 lea     ecx, [ebp-$6C]
006474C0   8B06                   mov     eax, [esi]

* Possible String Reference to: 'DtLcto'
|
006474C2   BA78796400             mov     edx, $00647978

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006474C7   E86C081700             call    007B7D38
006474CC   8B4594                 mov     eax, [ebp-$6C]
006474CF   50                     push    eax
006474D0   8D4D90                 lea     ecx, [ebp-$70]
006474D3   8B06                   mov     eax, [esi]

* Possible String Reference to: 'TipoLcto'
|
006474D5   BA88796400             mov     edx, $00647988

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006474DA   E859081700             call    007B7D38
006474DF   8B4590                 mov     eax, [ebp-$70]
006474E2   50                     push    eax
006474E3   8D4D8C                 lea     ecx, [ebp-$74]
006474E6   8B06                   mov     eax, [esi]

* Possible String Reference to: 'Filial'
|
006474E8   BAC4786400             mov     edx, $006478C4

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
006474ED   E846081700             call    007B7D38
006474F2   8B458C                 mov     eax, [ebp-$74]
006474F5   5A                     pop     edx
006474F6   59                     pop     ecx

* Reference to: xmlutil.PutValue(IDOMNode;AnsiString;AnsiString);
|
006474F7   E8E454FFFF             call    0063C9E0
006474FC   EB12                   jmp     00647510
006474FE   8D4DF8                 lea     ecx, [ebp-$08]

* Possible String Reference to: 'CODSUBLOCAL'
|
00647501   BA9C796400             mov     edx, $0064799C
00647506   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064750B   E828081700             call    007B7D38
00647510   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]
00647516   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00647519   E8A617DDFF             call    00418CC4
0064751E   56                     push    esi
0064751F   8DB57CFFFFFF           lea     esi, [ebp+$FFFFFF7C]
00647525   8D7DE4                 lea     edi, [ebp-$1C]
00647528   A5                     movsd
00647529   A5                     movsd
0064752A   A5                     movsd
0064752B   A5                     movsd
0064752C   5E                     pop     esi
0064752D   8D45E4                 lea     eax, [ebp-$1C]
00647530   50                     push    eax
00647531   6A00                   push    $00

* Possible String Reference to: 'CodSubLocal'
|
00647533   B8D4786400             mov     eax, $006478D4
00647538   8945D0                 mov     [ebp-$30], eax
0064753B   8D55D0                 lea     edx, [ebp-$30]
0064753E   33C9                   xor     ecx, ecx
00647540   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8568()
|
00647545   E81E101700             call    007B8568
0064754A   84C0                   test    al, al
0064754C   0F84EF000000           jz      00647641
00647552   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8B80()
|
00647557   E824161700             call    007B8B80
0064755C   48                     dec     eax
0064755D   755D                   jnz     006475BC
0064755F   8D8D78FFFFFF           lea     ecx, [ebp+$FFFFFF78]

* Possible String Reference to: 'Padrao'
|
00647565   BA28796400             mov     edx, $00647928
0064756A   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064756F   E8C4071700             call    007B7D38
00647574   8B8578FFFFFF           mov     eax, [ebp+$FFFFFF78]
0064757A   BAB0796400             mov     edx, $006479B0

* Reference to: System.@LStrCmp;
|
0064757F   E824E3DBFF             call    004058A8
00647584   7436                   jz      006475BC
00647586   B054                   mov     al, $54
00647588   8845A5                 mov     [ebp-$5B], al
0064758B   C645A401               mov     byte ptr [ebp-$5C], $01
0064758F   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
00647595   8D55A4                 lea     edx, [ebp-$5C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
00647598   E85317DDFF             call    00418CF0
0064759D   8D8D68FFFFFF           lea     ecx, [ebp+$FFFFFF68]

* Possible String Reference to: 'PADRAO'
|
006475A3   BABC796400             mov     edx, $006479BC
006475A8   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B767C()
|
006475AD   E8CA001700             call    007B767C
006475B2   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006475B7   E820281700             call    007B9DDC
006475BC   8D9560FFFFFF           lea     edx, [ebp+$FFFFFF60]
006475C2   8B45F8                 mov     eax, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
006475C5   E856C51500             call    007A3B20
006475CA   8B8D60FFFFFF           mov     ecx, [ebp+$FFFFFF60]
006475D0   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]

* Possible String Reference to: 'CODSUBLOCAL = '
|
006475D6   BACC796400             mov     edx, $006479CC

* Reference to: System.@LStrCat3;
|
006475DB   E8C8E1DBFF             call    004057A8
006475E0   8B8564FFFFFF           mov     eax, [ebp+$FFFFFF64]
006475E6   50                     push    eax
006475E7   6A01                   push    $01

* Possible String Reference to: 'CODSUBLOCAL'
|
006475E9   B99C796400             mov     ecx, $0064799C

* Possible String Reference to: 'SUBLOCAL'
|
006475EE   BAE4796400             mov     edx, $006479E4
006475F3   33C0                   xor     eax, eax

|
006475F5   E8F6181600             call    007A8EF0
006475FA   84C0                   test    al, al
006475FC   7429                   jz      00647627
006475FE   8D8550FFFFFF           lea     eax, [ebp+$FFFFFF50]
00647604   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00647607   E8B816DDFF             call    00418CC4
0064760C   8D8D50FFFFFF           lea     ecx, [ebp+$FFFFFF50]
00647612   8B06                   mov     eax, [esi]

* Possible String Reference to: 'CodSubLocal'
|
00647614   BAD4786400             mov     edx, $006478D4

* Reference to : tArrayTable._PROC_007B767C()
|
00647619   E85E001700             call    007B767C
0064761E   8B06                   mov     eax, [esi]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00647620   E8B7271700             call    007B9DDC
00647625   EB34                   jmp     0064765B
00647627   6A00                   push    $00
00647629   668B0DF0796400         mov     cx, word ptr [$006479F0]
00647630   B202                   mov     dl, $02

* Possible String Reference to: 'Atenção, O SubLocal selecionado não
|                                 está cadastrado. Verifique!'
|
00647632   B8FC796400             mov     eax, $006479FC

|
00647637   E8F0C4DFFF             call    00443B2C
0064763C   E973FDFFFF             jmp     006473B4
00647641   6A00                   push    $00
00647643   668B0DF0796400         mov     cx, word ptr [$006479F0]
0064764A   B202                   mov     dl, $02

* Possible String Reference to: 'Atenção, O SubLocal selecionado não
|                                 é Válido. Verifique!'
|
0064764C   B8447A6400             mov     eax, $00647A44

|
00647651   E8D6C4DFFF             call    00443B2C
00647656   E959FDFFFF             jmp     006473B4
0064765B   8BC3                   mov     eax, ebx
0064765D   8B55F8                 mov     edx, [ebp-$08]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00647660   E88BDEDBFF             call    004054F0
00647665   E933010000             jmp     0064779D
0064766A   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8B80()
|
0064766F   E80C151700             call    007B8B80
00647674   85C0                   test    eax, eax
00647676   7F1A                   jnle    00647692
00647678   6A00                   push    $00
0064767A   668B0DF0796400         mov     cx, word ptr [$006479F0]
00647681   B202                   mov     dl, $02

* Possible String Reference to: 'Atenção!O Winsati não pode determin
|                                ar qual o sublocal adequado, pois n
|                                ão há nenhum sub local cadastrado p
|                                ara o produto!'
|
00647683   B8887A6400             mov     eax, $00647A88

|
00647688   E89FC4DFFF             call    00443B2C
0064768D   E922FDFFFF             jmp     006473B4
00647692   B054                   mov     al, $54
00647694   8845A5                 mov     [ebp-$5B], al
00647697   C645A401               mov     byte ptr [ebp-$5C], $01
0064769B   8D8540FFFFFF           lea     eax, [ebp+$FFFFFF40]
006476A1   8D55A4                 lea     edx, [ebp-$5C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
006476A4   E84716DDFF             call    00418CF0
006476A9   56                     push    esi
006476AA   8DB540FFFFFF           lea     esi, [ebp+$FFFFFF40]
006476B0   8D7DE4                 lea     edi, [ebp-$1C]
006476B3   A5                     movsd
006476B4   A5                     movsd
006476B5   A5                     movsd
006476B6   A5                     movsd
006476B7   5E                     pop     esi
006476B8   8D45E4                 lea     eax, [ebp-$1C]
006476BB   50                     push    eax
006476BC   6A00                   push    $00

* Possible String Reference to: 'Padrao'
|
006476BE   B828796400             mov     eax, $00647928
006476C3   8945D0                 mov     [ebp-$30], eax
006476C6   8D55D0                 lea     edx, [ebp-$30]
006476C9   33C9                   xor     ecx, ecx
006476CB   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8568()
|
006476D0   E8930E1700             call    007B8568
006476D5   84C0                   test    al, al
006476D7   7540                   jnz     00647719
006476D9   A178DD7D00             mov     eax, dword ptr [$007DDD78]

|
006476DE   E8BD0C1700             call    007B83A0
006476E3   B054                   mov     al, $54
006476E5   8845A5                 mov     [ebp-$5B], al
006476E8   C645A401               mov     byte ptr [ebp-$5C], $01
006476EC   8D8530FFFFFF           lea     eax, [ebp+$FFFFFF30]
006476F2   8D55A4                 lea     edx, [ebp-$5C]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
006476F5   E8F615DDFF             call    00418CF0
006476FA   8D8D30FFFFFF           lea     ecx, [ebp+$FFFFFF30]

* Possible String Reference to: 'Padrao'
|
00647700   BA28796400             mov     edx, $00647928
00647705   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B767C()
|
0064770A   E86DFF1600             call    007B767C
0064770F   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00647714   E8C3261700             call    007B9DDC
00647719   8D4DF8                 lea     ecx, [ebp-$08]

* Possible String Reference to: 'CodSubLocal'
|
0064771C   BAD4786400             mov     edx, $006478D4
00647721   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00647726   E80D061700             call    007B7D38
0064772B   A0047B6400             mov     al, byte ptr [$00647B04]
00647730   50                     push    eax
00647731   8D8520FFFFFF           lea     eax, [ebp+$FFFFFF20]
00647737   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064773A   E88515DDFF             call    00418CC4
0064773F   8D8D20FFFFFF           lea     ecx, [ebp+$FFFFFF20]
00647745   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064774A   8B00                   mov     eax, [eax]
0064774C   8B8020070000           mov     eax, [eax+$0720]

* Possible String Reference to: 'CodSubLocal'
|
00647752   BAD4786400             mov     edx, $006478D4

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
00647757   E89C0C1600             call    007A83F8
0064775C   84C0                   test    al, al
0064775E   7427                   jz      00647787
00647760   8D8510FFFFFF           lea     eax, [ebp+$FFFFFF10]
00647766   8B55F8                 mov     edx, [ebp-$08]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00647769   E85615DDFF             call    00418CC4
0064776E   8D8D10FFFFFF           lea     ecx, [ebp+$FFFFFF10]
00647774   8B06                   mov     eax, [esi]

* Possible String Reference to: 'CodSubLocal'
|
00647776   BAD4786400             mov     edx, $006478D4

* Reference to : tArrayTable._PROC_007B767C()
|
0064777B   E8FCFE1600             call    007B767C
00647780   8B06                   mov     eax, [esi]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00647782   E855261700             call    007B9DDC
00647787   8BC3                   mov     eax, ebx
00647789   8B55F8                 mov     edx, [ebp-$08]

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064778C   E85FDDDBFF             call    004054F0
00647791   EB0A                   jmp     0064779D
00647793   8BC3                   mov     eax, ebx
00647795   8B55F8                 mov     edx, [ebp-$08]

* Reference to: System.@LStrAsg(void;void;void;void);
|
00647798   E853DDDBFF             call    004054F0
0064779D   33C0                   xor     eax, eax
0064779F   5A                     pop     edx
006477A0   59                     pop     ecx
006477A1   59                     pop     ecx
006477A2   648910                 mov     fs:[eax], edx
006477A5   EB41                   jmp     006477E8

* Reference to: System.@HandleOnException;
|
006477A7   E904D4DBFF             jmp     00404BB0
006477AC   0100                   add     [eax], eax
006477AE   0000                   add     [eax], al
006477B0   40                     inc     eax
006477B1   95                     xchg    eax, ebp
006477B2   40                     inc     eax
006477B3   00B877640089           add     [eax+$89006477], bh
006477B9   C3                     ret

006477BA   6A00                   push    $00
006477BC   8B4B04                 mov     ecx, [ebx+$04]
006477BF   8D850CFFFFFF           lea     eax, [ebp+$FFFFFF0C]

* Possible String Reference to: 'Erro ao verificar o local apropriad
|                                o para estocagem.'
|
006477C5   BA107B6400             mov     edx, $00647B10

* Reference to: System.@LStrCat3;
|
006477CA   E8D9DFDBFF             call    004057A8
006477CF   8B850CFFFFFF           mov     eax, [ebp+$FFFFFF0C]
006477D5   668B0DF0796400         mov     cx, word ptr [$006479F0]
006477DC   B202                   mov     dl, $02

|
006477DE   E849C3DFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006477E3   E8C8D6DBFF             call    00404EB0

****** END
|
006477E8   33C0                   xor     eax, eax
006477EA   5A                     pop     edx
006477EB   59                     pop     ecx
006477EC   59                     pop     ecx
006477ED   648910                 mov     fs:[eax], edx

****** FINALLY
|
006477F0   68FD776400             push    $006477FD
006477F5   C3                     ret


* Reference to: System.@HandleFinally;
|
006477F6   E93DD5DBFF             jmp     00404D38
006477FB   EBF8                   jmp     006477F5

****** END
|
006477FD   33C0                   xor     eax, eax
006477FF   5A                     pop     edx
00647800   59                     pop     ecx
00647801   59                     pop     ecx
00647802   648910                 mov     fs:[eax], edx

****** FINALLY
|
00647805   68A6786400             push    $006478A6
0064780A   8D850CFFFFFF           lea     eax, [ebp+$FFFFFF0C]

* Reference to: System.@LStrClr(void;void);
|
00647810   E887DCDBFF             call    0040549C
00647815   8D8510FFFFFF           lea     eax, [ebp+$FFFFFF10]

* Reference to object Variant
|
0064781B   8B1524114000           mov     edx, [$00401124]
00647821   B905000000             mov     ecx, $00000005

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00647826   E871E8DBFF             call    0040609C
0064782B   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]
00647831   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00647836   E885DCDBFF             call    004054C0
0064783B   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00647841   E832CDDCFF             call    00414578
00647846   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]

* Reference to: System.@LStrClr(void;void);
|
0064784C   E84BDCDBFF             call    0040549C
00647851   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00647857   E81CCDDCFF             call    00414578
0064785C   8D458C                 lea     eax, [ebp-$74]
0064785F   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00647864   E857DCDBFF             call    004054C0
00647869   8D45A8                 lea     eax, [ebp-$58]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0064786C   E807CDDCFF             call    00414578
00647871   8D45B8                 lea     eax, [ebp-$48]
00647874   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00647879   E842DCDBFF             call    004054C0
0064787E   8D45C0                 lea     eax, [ebp-$40]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00647881   E8F2CCDCFF             call    00414578
00647886   8D45D4                 lea     eax, [ebp-$2C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00647889   E8EACCDCFF             call    00414578
0064788E   8D45F4                 lea     eax, [ebp-$0C]
00647891   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00647896   E825DCDBFF             call    004054C0
0064789B   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0064789C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064789C   E997D4DBFF             jmp     00404D38

|
006478A1   E964FFFFFF             jmp     0064780A
006478A6   5F                     pop     edi
006478A7   5E                     pop     esi
006478A8   5B                     pop     ebx
006478A9   8BE5                   mov     esp, ebp
006478AB   5D                     pop     ebp
006478AC   C20400                 ret     $0004

*)
end;

procedure TFrmF2SubLocal._PROC_006479A1(Sender : TObject);
begin
(*
006479A1   42                     inc     edx
006479A2   4C                     dec     esp
006479A3   4F                     dec     edi
006479A4   43                     inc     ebx
006479A5   41                     inc     ecx
006479A6   4C                     dec     esp
006479A7   00FF                   add     bh, bh
006479A9   FFFF                   DB  $FF, $FF  //      
006479AB   FF01                   inc     dword ptr [ecx]
006479AD   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006479D1(Sender : TObject);
begin
(*
006479D1   42                     inc     edx
006479D2   4C                     dec     esp
006479D3   4F                     dec     edi
006479D4   43                     inc     ebx
006479D5   41                     inc     ecx
006479D6   4C                     dec     esp
006479D7   203D200000FF           and     [$FF000020], bh
006479DD   FFFF                   DB  $FF, $FF  //      
006479DF   FF08                   dec     dword ptr [eax]
006479E1   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006479E6(Sender : TObject);
begin
(*
006479E6   42                     inc     edx
006479E7   4C                     dec     esp
006479E8   4F                     dec     edi
006479E9   43                     inc     ebx
006479EA   41                     inc     ecx
006479EB   4C                     dec     esp
006479EC   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00647B49(Sender : TObject);
begin
(*
00647B49   8BEC                   mov     ebp, esp
00647B4B   51                     push    ecx
00647B4C   B91E000000             mov     ecx, $0000001E
00647B51   6A00                   push    $00
00647B53   6A00                   push    $00
00647B55   49                     dec     ecx
00647B56   75F9                   jnz     00647B51
00647B58   51                     push    ecx
00647B59   874DFC                 xchg    [ebp-$04], ecx
00647B5C   53                     push    ebx
00647B5D   56                     push    esi
00647B5E   57                     push    edi
00647B5F   894DF8                 mov     [ebp-$08], ecx
00647B62   8BDA                   mov     ebx, edx
00647B64   8945FC                 mov     [ebp-$04], eax
00647B67   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00647B6A   E8DDDDDBFF             call    0040594C
00647B6F   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00647B72   E8D5DDDBFF             call    0040594C
00647B77   33C0                   xor     eax, eax
00647B79   55                     push    ebp
00647B7A   68887F6400             push    $00647F88

***** TRY
|
00647B7F   64FF30                 push    dword ptr fs:[eax]
00647B82   648920                 mov     fs:[eax], esp
00647B85   C645F700               mov     byte ptr [ebp-$09], $00
00647B89   33D2                   xor     edx, edx
00647B8B   55                     push    ebp
00647B8C   68117F6400             push    $00647F11

***** TRY
|
00647B91   64FF32                 push    dword ptr fs:[edx]
00647B94   648922                 mov     fs:[edx], esp
00647B97   33D2                   xor     edx, edx
00647B99   55                     push    ebp
00647B9A   68C27E6400             push    $00647EC2

***** TRY
|
00647B9F   64FF32                 push    dword ptr fs:[edx]
00647BA2   648922                 mov     fs:[edx], esp
00647BA5   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00647BAA   8B00                   mov     eax, [eax]
00647BAC   8B80A8030000           mov     eax, [eax+$03A8]
00647BB2   8B10                   mov     edx, [eax]
00647BB4   FF5244                 call    dword ptr [edx+$44]
00647BB7   84C0                   test    al, al
00647BB9   0F84F9020000           jz      00647EB8
00647BBF   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'NAO'
|
00647BC2   BAA47F6400             mov     edx, $00647FA4

* Reference to: System.@LStrCmp;
|
00647BC7   E8DCDCDBFF             call    004058A8
00647BCC   0F84E6020000           jz      00647EB8
00647BD2   8D45B8                 lea     eax, [ebp-$48]
00647BD5   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00647BD8   E8E710DDFF             call    00418CC4
00647BDD   8D75B8                 lea     esi, [ebp-$48]
00647BE0   8D7DC8                 lea     edi, [ebp-$38]
00647BE3   A5                     movsd
00647BE4   A5                     movsd
00647BE5   A5                     movsd
00647BE6   A5                     movsd
00647BE7   8D45A8                 lea     eax, [ebp-$58]
00647BEA   8BD3                   mov     edx, ebx
00647BEC   B1FC                   mov     cl, $FC

|
00647BEE   E87D0EDDFF             call    00418A70
00647BF3   8D75A8                 lea     esi, [ebp-$58]
00647BF6   8D7DD8                 lea     edi, [ebp-$28]
00647BF9   A5                     movsd
00647BFA   A5                     movsd
00647BFB   A5                     movsd
00647BFC   A5                     movsd
00647BFD   8D45C8                 lea     eax, [ebp-$38]
00647C00   50                     push    eax
00647C01   6A01                   push    $01

* Possible String Reference to: 'CODSUBLOCAL'
|
00647C03   B8B07F6400             mov     eax, $00647FB0
00647C08   8945A0                 mov     [ebp-$60], eax

* Possible String Reference to: 'ANOMES'
|
00647C0B   B8C47F6400             mov     eax, $00647FC4
00647C10   8945A4                 mov     [ebp-$5C], eax
00647C13   8D55A0                 lea     edx, [ebp-$60]
00647C16   B901000000             mov     ecx, $00000001
00647C1B   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B8568()
|
00647C20   E843091700             call    007B8568
00647C25   84C0                   test    al, al
00647C27   0F857B010000           jnz     00647DA8
00647C2D   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00647C32   E83DF61600             call    007B7274
00647C37   8D4590                 lea     eax, [ebp-$70]
00647C3A   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00647C3D   E88210DDFF             call    00418CC4
00647C42   8D4D90                 lea     ecx, [ebp-$70]

* Possible String Reference to: 'CodSubLocal'
|
00647C45   BAD47F6400             mov     edx, $00647FD4
00647C4A   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B767C()
|
00647C4F   E828FA1600             call    007B767C
00647C54   8D4580                 lea     eax, [ebp-$80]
00647C57   8BD3                   mov     edx, ebx
00647C59   B1FC                   mov     cl, $FC

|
00647C5B   E8100EDDFF             call    00418A70
00647C60   8D4D80                 lea     ecx, [ebp-$80]

* Possible String Reference to: 'AnoMes'
|
00647C63   BAE87F6400             mov     edx, $00647FE8
00647C68   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B767C()
|
00647C6D   E80AFA1600             call    007B767C
00647C72   DB6D08                 fld     tbyte ptr [ebp+$08]
00647C75   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]

* Reference to: Variants.@VarFromReal;
|
00647C7B   E80810DDFF             call    00418C88
00647C80   8D8D70FFFFFF           lea     ecx, [ebp+$FFFFFF70]

* Possible String Reference to: 'Estoque'
|
00647C86   BAF87F6400             mov     edx, $00647FF8
00647C8B   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B767C()
|
00647C90   E8E7F91600             call    007B767C
00647C95   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00647C9A   E83D211700             call    007B9DDC
00647C9F   8B45F8                 mov     eax, [ebp-$08]
00647CA2   BA08806400             mov     edx, $00648008

* Reference to: System.@LStrCmp;
|
00647CA7   E8FCDBDBFF             call    004058A8
00647CAC   7413                   jz      00647CC1
00647CAE   8B45F8                 mov     eax, [ebp-$08]
00647CB1   BA14806400             mov     edx, $00648014

* Reference to: System.@LStrCmp;
|
00647CB6   E8EDDBDBFF             call    004058A8
00647CBB   0F85F7010000           jnz     00647EB8
00647CC1   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00647CC6   E8790E1700             call    007B8B44
00647CCB   8D8D6CFFFFFF           lea     ecx, [ebp+$FFFFFF6C]

* Possible String Reference to: 'CodSubLocal'
|
00647CD1   BAD47F6400             mov     edx, $00647FD4
00647CD6   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00647CDB   E858001700             call    007B7D38
00647CE0   8B856CFFFFFF           mov     eax, [ebp+$FFFFFF6C]
00647CE6   8B55FC                 mov     edx, [ebp-$04]

* Reference to: System.@LStrCmp;
|
00647CE9   E8BADBDBFF             call    004058A8
00647CEE   0F85C4010000           jnz     00647EB8

* Possible String Reference to: 'Estoque'
|
00647CF4   BAF87F6400             mov     edx, $00647FF8
00647CF9   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00647CFE   E825FE1600             call    007B7B28
00647D03   DB7DE8                 fstp    tbyte ptr [ebp-$18]
00647D06   9B                     wait
00647D07   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00647D0C   E8E3091700             call    007B86F4
00647D11   8B45F8                 mov     eax, [ebp-$08]
00647D14   BA08806400             mov     edx, $00648008

* Reference to: System.@LStrCmp;
|
00647D19   E88ADBDBFF             call    004058A8
00647D1E   7536                   jnz     00647D56

* Possible String Reference to: 'Estoque'
|
00647D20   BAF87F6400             mov     edx, $00647FF8
00647D25   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00647D2A   E8F9FD1600             call    007B7B28
00647D2F   DB6DE8                 fld     tbyte ptr [ebp-$18]
00647D32   DEC1                   faddp   st(1), st(0)
00647D34   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]

* Reference to: Variants.@VarFromReal;
|
00647D3A   E8490FDDFF             call    00418C88
00647D3F   8D8D5CFFFFFF           lea     ecx, [ebp+$FFFFFF5C]

* Possible String Reference to: 'Estoque'
|
00647D45   BAF87F6400             mov     edx, $00647FF8
00647D4A   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B767C()
|
00647D4F   E828F91600             call    007B767C
00647D54   EB43                   jmp     00647D99
00647D56   8B45F8                 mov     eax, [ebp-$08]
00647D59   BA14806400             mov     edx, $00648014

* Reference to: System.@LStrCmp;
|
00647D5E   E845DBDBFF             call    004058A8
00647D63   7534                   jnz     00647D99

* Possible String Reference to: 'Estoque'
|
00647D65   BAF87F6400             mov     edx, $00647FF8
00647D6A   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00647D6F   E8B4FD1600             call    007B7B28
00647D74   DB6DE8                 fld     tbyte ptr [ebp-$18]
00647D77   DEE1                   fsubrp  st(1), st(0)
00647D79   8D854CFFFFFF           lea     eax, [ebp+$FFFFFF4C]

* Reference to: Variants.@VarFromReal;
|
00647D7F   E8040FDDFF             call    00418C88
00647D84   8D8D4CFFFFFF           lea     ecx, [ebp+$FFFFFF4C]

* Possible String Reference to: 'Estoque'
|
00647D8A   BAF87F6400             mov     edx, $00647FF8
00647D8F   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B767C()
|
00647D94   E8E3F81600             call    007B767C
00647D99   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00647D9E   E839201700             call    007B9DDC
00647DA3   E910010000             jmp     00647EB8
00647DA8   8B45F8                 mov     eax, [ebp-$08]
00647DAB   BA08806400             mov     edx, $00648008

* Reference to: System.@LStrCmp;
|
00647DB0   E8F3DADBFF             call    004058A8
00647DB5   7539                   jnz     00647DF0

* Possible String Reference to: 'Estoque'
|
00647DB7   BAF87F6400             mov     edx, $00647FF8
00647DBC   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00647DC1   E862FD1600             call    007B7B28
00647DC6   DB6D08                 fld     tbyte ptr [ebp+$08]
00647DC9   DEC1                   faddp   st(1), st(0)
00647DCB   8D853CFFFFFF           lea     eax, [ebp+$FFFFFF3C]

* Reference to: Variants.@VarFromReal;
|
00647DD1   E8B20EDDFF             call    00418C88
00647DD6   8D8D3CFFFFFF           lea     ecx, [ebp+$FFFFFF3C]

* Possible String Reference to: 'Estoque'
|
00647DDC   BAF87F6400             mov     edx, $00647FF8
00647DE1   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B767C()
|
00647DE6   E891F81600             call    007B767C
00647DEB   E9BE000000             jmp     00647EAE
00647DF0   8B45F8                 mov     eax, [ebp-$08]
00647DF3   BA14806400             mov     edx, $00648014

* Reference to: System.@LStrCmp;
|
00647DF8   E8ABDADBFF             call    004058A8
00647DFD   7536                   jnz     00647E35

* Possible String Reference to: 'Estoque'
|
00647DFF   BAF87F6400             mov     edx, $00647FF8
00647E04   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

|
00647E09   E81AFD1600             call    007B7B28
00647E0E   DB6D08                 fld     tbyte ptr [ebp+$08]
00647E11   DEE9                   fsubp   st(1), st(0)
00647E13   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: Variants.@VarFromReal;
|
00647E19   E86A0EDDFF             call    00418C88
00647E1E   8D8D2CFFFFFF           lea     ecx, [ebp+$FFFFFF2C]

* Possible String Reference to: 'Estoque'
|
00647E24   BAF87F6400             mov     edx, $00647FF8
00647E29   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B767C()
|
00647E2E   E849F81600             call    007B767C
00647E33   EB79                   jmp     00647EAE
00647E35   8B45F8                 mov     eax, [ebp-$08]
00647E38   BA20806400             mov     edx, $00648020

* Reference to: System.@LStrCmp;
|
00647E3D   E866DADBFF             call    004058A8
00647E42   7526                   jnz     00647E6A
00647E44   8D851CFFFFFF           lea     eax, [ebp+$FFFFFF1C]
00647E4A   33D2                   xor     edx, edx
00647E4C   B101                   mov     cl, $01

|
00647E4E   E81D0CDDFF             call    00418A70
00647E53   8D8D1CFFFFFF           lea     ecx, [ebp+$FFFFFF1C]

* Possible String Reference to: 'Estoque'
|
00647E59   BAF87F6400             mov     edx, $00647FF8
00647E5E   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B767C()
|
00647E63   E814F81600             call    007B767C
00647E68   EB44                   jmp     00647EAE
00647E6A   837DF800               cmp     dword ptr [ebp-$08], +$00
00647E6E   7525                   jnz     00647E95
00647E70   DB6D08                 fld     tbyte ptr [ebp+$08]
00647E73   8D850CFFFFFF           lea     eax, [ebp+$FFFFFF0C]

* Reference to: Variants.@VarFromReal;
|
00647E79   E80A0EDDFF             call    00418C88
00647E7E   8D8D0CFFFFFF           lea     ecx, [ebp+$FFFFFF0C]

* Possible String Reference to: 'Estoque'
|
00647E84   BAF87F6400             mov     edx, $00647FF8
00647E89   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B767C()
|
00647E8E   E8E9F71600             call    007B767C
00647E93   EB19                   jmp     00647EAE
00647E95   8B45F8                 mov     eax, [ebp-$08]
00647E98   BA2C806400             mov     edx, $0064802C

* Reference to: System.@LStrCmp;
|
00647E9D   E806DADBFF             call    004058A8
00647EA2   750A                   jnz     00647EAE
00647EA4   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to : tArrayTable._PROC_007B74AC()
|
00647EA9   E8FEF51600             call    007B74AC
00647EAE   A17CDD7D00             mov     eax, dword ptr [$007DDD7C]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00647EB3   E8241F1700             call    007B9DDC
00647EB8   33C0                   xor     eax, eax
00647EBA   5A                     pop     edx
00647EBB   59                     pop     ecx
00647EBC   59                     pop     ecx
00647EBD   648910                 mov     fs:[eax], edx
00647EC0   EB41                   jmp     00647F03

* Reference to: System.@HandleOnException;
|
00647EC2   E9E9CCDBFF             jmp     00404BB0
00647EC7   0100                   add     [eax], eax
00647EC9   0000                   add     [eax], al
00647ECB   40                     inc     eax
00647ECC   95                     xchg    eax, ebp
00647ECD   40                     inc     eax
00647ECE   00D3                   add     bl, dl
00647ED0   7E64                   jle     00647F36
00647ED2   0089C36A008B           add     [ecx+$8B006AC3], cl
00647ED8   4B                     dec     ebx
00647ED9   048D                   add     al, -$73
00647EDB   8508                   test    [eax], ecx
00647EDD   FFFF                   DB  $FF, $FF  //      
00647EDF   FFBA                   DB  $FF, $BA  //      
00647EE1   38806400E8BE           cmp     [eax+$BEE80064], al
00647EE7   D8DB                   fcomp   st(0), st(3)
00647EE9   FF8B8508FFFF           dec     dword ptr [ebx+$FFFF0885]
00647EEF   FF668B                 jmp     dword ptr [esi-$75]
00647EF2   0D78806400             or      eax, $00648078
00647EF7   B202                   mov     dl, $02

|
00647EF9   E82EBCDFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00647EFE   E8ADCFDBFF             call    00404EB0

****** END
|
00647F03   33C0                   xor     eax, eax
00647F05   5A                     pop     edx
00647F06   59                     pop     ecx
00647F07   59                     pop     ecx
00647F08   648910                 mov     fs:[eax], edx

****** FINALLY
|
00647F0B   68187F6400             push    $00647F18
00647F10   C3                     ret


* Reference to: System.@HandleFinally;
|
00647F11   E922CEDBFF             jmp     00404D38
00647F16   EBF8                   jmp     00647F10

****** END
|
00647F18   33C0                   xor     eax, eax
00647F1A   5A                     pop     edx
00647F1B   59                     pop     ecx
00647F1C   59                     pop     ecx
00647F1D   648910                 mov     fs:[eax], edx

****** FINALLY
|
00647F20   688F7F6400             push    $00647F8F
00647F25   8D8508FFFFFF           lea     eax, [ebp+$FFFFFF08]

* Reference to: System.@LStrClr(void;void);
|
00647F2B   E86CD5DBFF             call    0040549C
00647F30   8D850CFFFFFF           lea     eax, [ebp+$FFFFFF0C]

* Reference to object Variant
|
00647F36   8B1524114000           mov     edx, [$00401124]
00647F3C   B906000000             mov     ecx, $00000006

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00647F41   E856E1DBFF             call    0040609C
00647F46   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Reference to: System.@LStrClr(void;void);
|
00647F4C   E84BD5DBFF             call    0040549C
00647F51   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]

* Reference to object Variant
|
00647F57   8B1524114000           mov     edx, [$00401124]
00647F5D   B903000000             mov     ecx, $00000003

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00647F62   E835E1DBFF             call    0040609C
00647F67   8D45A8                 lea     eax, [ebp-$58]

* Reference to object Variant
|
00647F6A   8B1524114000           mov     edx, [$00401124]
00647F70   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00647F75   E822E1DBFF             call    0040609C
00647F7A   8D45F8                 lea     eax, [ebp-$08]
00647F7D   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00647F82   E839D5DBFF             call    004054C0
00647F87   C3                     ret


* Reference to: System.@HandleFinally;
|
00647F88   E9ABCDDBFF             jmp     00404D38
00647F8D   EB96                   jmp     00647F25

****** END
|
00647F8F   8A45F7                 mov     al, byte ptr [ebp-$09]
00647F92   5F                     pop     edi
00647F93   5E                     pop     esi
00647F94   5B                     pop     ebx
00647F95   8BE5                   mov     esp, ebp
00647F97   5D                     pop     ebp
00647F98   C20C00                 ret     $000C

*)
end;

procedure TFrmF2SubLocal._PROC_00647F88(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00647F88   E9ABCDDBFF             jmp     00404D38

|
00647F8D   EB96                   jmp     00647F25
00647F8F   8A45F7                 mov     al, byte ptr [ebp-$09]
00647F92   5F                     pop     edi
00647F93   5E                     pop     esi
00647F94   5B                     pop     ebx
00647F95   8BE5                   mov     esp, ebp
00647F97   5D                     pop     ebp
00647F98   C20C00                 ret     $000C

*)
end;

procedure TFrmF2SubLocal._PROC_00647FB5(Sender : TObject);
begin
(*
00647FB5   42                     inc     edx
00647FB6   4C                     dec     esp
00647FB7   4F                     dec     edi
00647FB8   43                     inc     ebx
00647FB9   41                     inc     ecx
00647FBA   4C                     dec     esp
00647FBB   00FF                   add     bh, bh
00647FBD   FFFF                   DB  $FF, $FF  //      
00647FBF   FF06                   inc     dword ptr [esi]
00647FC1   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0064807D(Sender : TObject);
begin
(*
0064807D   8BEC                   mov     ebp, esp
0064807F   51                     push    ecx
00648080   B924000000             mov     ecx, $00000024
00648085   6A00                   push    $00
00648087   6A00                   push    $00
00648089   49                     dec     ecx
0064808A   75F9                   jnz     00648085
0064808C   874DFC                 xchg    [ebp-$04], ecx
0064808F   53                     push    ebx
00648090   56                     push    esi
00648091   57                     push    edi
00648092   8BD9                   mov     ebx, ecx
00648094   8955F8                 mov     [ebp-$08], edx
00648097   8945FC                 mov     [ebp-$04], eax
0064809A   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064809D   E8AAD8DBFF             call    0040594C
006480A2   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
006480A5   E8A2D8DBFF             call    0040594C
006480AA   33C0                   xor     eax, eax
006480AC   55                     push    ebp
006480AD   688E866400             push    $0064868E

***** TRY
|
006480B2   64FF30                 push    dword ptr fs:[eax]
006480B5   648920                 mov     fs:[eax], esp
006480B8   C645F701               mov     byte ptr [ebp-$09], $01
006480BC   33C0                   xor     eax, eax
006480BE   55                     push    ebp
006480BF   68FE856400             push    $006485FE

***** TRY
|
006480C4   64FF30                 push    dword ptr fs:[eax]
006480C7   648920                 mov     fs:[eax], esp
006480CA   33C0                   xor     eax, eax
006480CC   55                     push    ebp
006480CD   68AF856400             push    $006485AF

***** TRY
|
006480D2   64FF30                 push    dword ptr fs:[eax]
006480D5   648920                 mov     fs:[eax], esp
006480D8   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
006480DD   8B00                   mov     eax, [eax]
006480DF   8B80A8030000           mov     eax, [eax+$03A8]
006480E5   8B10                   mov     edx, [eax]
006480E7   FF5244                 call    dword ptr [edx+$44]
006480EA   84C0                   test    al, al
006480EC   0F84B3040000           jz      006485A5
006480F2   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'NAO'
|
006480F5   BAAC866400             mov     edx, $006486AC

* Reference to: System.@LStrCmp;
|
006480FA   E8A9D7DBFF             call    004058A8
006480FF   0F84A0040000           jz      006485A5
00648105   8D45D0                 lea     eax, [ebp-$30]
00648108   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064810B   E8B40BDDFF             call    00418CC4
00648110   8D75D0                 lea     esi, [ebp-$30]
00648113   8D7DE0                 lea     edi, [ebp-$20]
00648116   A5                     movsd
00648117   A5                     movsd
00648118   A5                     movsd
00648119   A5                     movsd
0064811A   8D45E0                 lea     eax, [ebp-$20]
0064811D   50                     push    eax
0064811E   6A00                   push    $00

* Possible String Reference to: 'CodSubLocal'
|
00648120   B8B8866400             mov     eax, $006486B8
00648125   8945CC                 mov     [ebp-$34], eax
00648128   8D55CC                 lea     edx, [ebp-$34]
0064812B   33C9                   xor     ecx, ecx
0064812D   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8568()
|
00648132   E831041700             call    007B8568
00648137   84C0                   test    al, al
00648139   0F857E030000           jnz     006484BD
0064813F   A150B47D00             mov     eax, dword ptr [$007DB450]
00648144   803800                 cmp     byte ptr [eax], $00
00648147   0F8455020000           jz      006483A2
0064814D   8D55C8                 lea     edx, [ebp-$38]
00648150   8B03                   mov     eax, [ebx]
00648152   8B4070                 mov     eax, [eax+$70]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
00648155   E84225DCFF             call    0040A69C
0064815A   8B45C8                 mov     eax, [ebp-$38]

* Possible String Reference to: 'entritem'
|
0064815D   BACC866400             mov     edx, $006486CC

* Reference to: System.@LStrCmp;
|
00648162   E841D7DBFF             call    004058A8
00648167   750F                   jnz     00648178
00648169   8D45F0                 lea     eax, [ebp-$10]
0064816C   BAE0866400             mov     edx, $006486E0

* Reference to: System.@LStrLAsg(void;void;void;void);
|
00648171   E8BED3DBFF             call    00405534
00648176   EB33                   jmp     006481AB
00648178   8D55C4                 lea     edx, [ebp-$3C]
0064817B   8B03                   mov     eax, [ebx]
0064817D   8B4070                 mov     eax, [eax+$70]

* Reference to: SysUtils.AnsiUpperCase(AnsiString):AnsiString;
|
00648180   E81725DCFF             call    0040A69C
00648185   8B45C4                 mov     eax, [ebp-$3C]

* Possible String Reference to: 'saiditem'
|
00648188   BAEC866400             mov     edx, $006486EC

* Reference to: System.@LStrCmp;
|
0064818D   E816D7DBFF             call    004058A8
00648192   750F                   jnz     006481A3
00648194   8D45F0                 lea     eax, [ebp-$10]
00648197   BA00876400             mov     edx, $00648700

* Reference to: System.@LStrLAsg(void;void;void;void);
|
0064819C   E893D3DBFF             call    00405534
006481A1   EB08                   jmp     006481AB
006481A3   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
006481A6   E8F1D2DBFF             call    0040549C
006481AB   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8B80()
|
006481B0   E8CB091700             call    007B8B80
006481B5   85C0                   test    eax, eax
006481B7   7E43                   jle     006481FC
006481B9   B054                   mov     al, $54
006481BB   8845B1                 mov     [ebp-$4F], al
006481BE   C645B001               mov     byte ptr [ebp-$50], $01
006481C2   8D45B4                 lea     eax, [ebp-$4C]
006481C5   8D55B0                 lea     edx, [ebp-$50]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
006481C8   E8230BDDFF             call    00418CF0
006481CD   8D75B4                 lea     esi, [ebp-$4C]
006481D0   8D7DE0                 lea     edi, [ebp-$20]
006481D3   A5                     movsd
006481D4   A5                     movsd
006481D5   A5                     movsd
006481D6   A5                     movsd
006481D7   8D45E0                 lea     eax, [ebp-$20]
006481DA   50                     push    eax
006481DB   6A00                   push    $00

* Possible String Reference to: 'Padrao'
|
006481DD   B80C876400             mov     eax, $0064870C
006481E2   8945CC                 mov     [ebp-$34], eax
006481E5   8D55CC                 lea     edx, [ebp-$34]
006481E8   33C9                   xor     ecx, ecx
006481EA   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8568()
|
006481EF   E874031700             call    007B8568
006481F4   84C0                   test    al, al
006481F6   0F858F000000           jnz     0064828B
006481FC   8D4DAC                 lea     ecx, [ebp-$54]
006481FF   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Especie'
|
00648201   BA1C876400             mov     edx, $0064871C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00648206   E82DFB1600             call    007B7D38
0064820B   8B45AC                 mov     eax, [ebp-$54]
0064820E   50                     push    eax
0064820F   8D4DA8                 lea     ecx, [ebp-$58]
00648212   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Serie'
|
00648214   BA2C876400             mov     edx, $0064872C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00648219   E81AFB1600             call    007B7D38
0064821E   8B45A8                 mov     eax, [ebp-$58]
00648221   50                     push    eax
00648222   8D4DA4                 lea     ecx, [ebp-$5C]
00648225   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodProd'
|
00648227   BA3C876400             mov     edx, $0064873C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064822C   E807FB1600             call    007B7D38
00648231   8B45A4                 mov     eax, [ebp-$5C]
00648234   50                     push    eax
00648235   8B45F0                 mov     eax, [ebp-$10]
00648238   50                     push    eax
00648239   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'NumLcto'
|
0064823B   BA4C876400             mov     edx, $0064874C

|
00648240   E8EFF91600             call    007B7C34
00648245   50                     push    eax
00648246   8D45FC                 lea     eax, [ebp-$04]
00648249   50                     push    eax
0064824A   8D4DA0                 lea     ecx, [ebp-$60]
0064824D   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'DtLcto'
|
0064824F   BA5C876400             mov     edx, $0064875C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00648254   E8DFFA1600             call    007B7D38
00648259   8B45A0                 mov     eax, [ebp-$60]
0064825C   50                     push    eax
0064825D   8D4D9C                 lea     ecx, [ebp-$64]
00648260   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'TipoLcto'
|
00648262   BA6C876400             mov     edx, $0064876C

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00648267   E8CCFA1600             call    007B7D38
0064826C   8B459C                 mov     eax, [ebp-$64]
0064826F   50                     push    eax
00648270   8D4D98                 lea     ecx, [ebp-$68]
00648273   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Filial'
|
00648275   BA80876400             mov     edx, $00648780

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064827A   E8B9FA1600             call    007B7D38
0064827F   8B4598                 mov     eax, [ebp-$68]
00648282   5A                     pop     edx
00648283   59                     pop     ecx

* Reference to: xmlutil.PutValue(IDOMNode;AnsiString;AnsiString);
|
00648284   E85747FFFF             call    0063C9E0
00648289   EB12                   jmp     0064829D
0064828B   8D4DFC                 lea     ecx, [ebp-$04]

* Possible String Reference to: 'CodSubLocal'
|
0064828E   BAB8866400             mov     edx, $006486B8
00648293   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00648298   E89BFA1600             call    007B7D38
0064829D   8D4588                 lea     eax, [ebp-$78]
006482A0   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
006482A3   E81C0ADDFF             call    00418CC4
006482A8   8D7588                 lea     esi, [ebp-$78]
006482AB   8D7DE0                 lea     edi, [ebp-$20]
006482AE   A5                     movsd
006482AF   A5                     movsd
006482B0   A5                     movsd
006482B1   A5                     movsd
006482B2   8D45E0                 lea     eax, [ebp-$20]
006482B5   50                     push    eax
006482B6   6A00                   push    $00

* Possible String Reference to: 'CodSubLocal'
|
006482B8   B8B8866400             mov     eax, $006486B8
006482BD   8945CC                 mov     [ebp-$34], eax
006482C0   8D55CC                 lea     edx, [ebp-$34]
006482C3   33C9                   xor     ecx, ecx
006482C5   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8568()
|
006482CA   E899021700             call    007B8568
006482CF   84C0                   test    al, al
006482D1   0F84B1000000           jz      00648388
006482D7   B054                   mov     al, $54
006482D9   8845B1                 mov     [ebp-$4F], al
006482DC   C645B001               mov     byte ptr [ebp-$50], $01
006482E0   8D8578FFFFFF           lea     eax, [ebp+$FFFFFF78]
006482E6   8D55B0                 lea     edx, [ebp-$50]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
006482E9   E8020ADDFF             call    00418CF0
006482EE   8D8D78FFFFFF           lea     ecx, [ebp+$FFFFFF78]

* Possible String Reference to: 'PADRAO'
|
006482F4   BA90876400             mov     edx, $00648790
006482F9   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B767C()
|
006482FE   E879F31600             call    007B767C
00648303   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00648308   E8CF1A1700             call    007B9DDC
0064830D   A098876400             mov     al, byte ptr [$00648798]
00648312   50                     push    eax
00648313   8D8568FFFFFF           lea     eax, [ebp+$FFFFFF68]
00648319   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064831C   E8A309DDFF             call    00418CC4
00648321   8D8D68FFFFFF           lea     ecx, [ebp+$FFFFFF68]
00648327   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064832C   8B00                   mov     eax, [eax]
0064832E   8B8020070000           mov     eax, [eax+$0720]

* Possible String Reference to: 'CodSubLocal'
|
00648334   BAB8866400             mov     edx, $006486B8

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
00648339   E8BA001600             call    007A83F8
0064833E   84C0                   test    al, al
00648340   742C                   jz      0064836E
00648342   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
00648348   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064834B   E87409DDFF             call    00418CC4
00648350   8D8D58FFFFFF           lea     ecx, [ebp+$FFFFFF58]
00648356   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodSubLocal'
|
00648358   BAB8866400             mov     edx, $006486B8

* Reference to : tArrayTable._PROC_007B767C()
|
0064835D   E81AF31600             call    007B767C
00648362   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00648364   E8731A1700             call    007B9DDC
00648369   E94F010000             jmp     006484BD
0064836E   6A00                   push    $00
00648370   668B0D9C876400         mov     cx, word ptr [$0064879C]
00648377   B202                   mov     dl, $02

* Possible String Reference to: 'Atenção, O SubLocal selecionado não
|                                 está cadastrado. Verifique!'
|
00648379   B8A8876400             mov     eax, $006487A8

|
0064837E   E8A9B7DFFF             call    00443B2C
00648383   E9C5FDFFFF             jmp     0064814D
00648388   6A00                   push    $00
0064838A   668B0D9C876400         mov     cx, word ptr [$0064879C]
00648391   B202                   mov     dl, $02

* Possible String Reference to: 'Atenção, O SubLocal selecionado não
|                                 é Válido. Verifique!'
|
00648393   B8F0876400             mov     eax, $006487F0

|
00648398   E88FB7DFFF             call    00443B2C
0064839D   E9ABFDFFFF             jmp     0064814D
006483A2   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8B80()
|
006483A7   E8D4071700             call    007B8B80
006483AC   85C0                   test    eax, eax
006483AE   7F1A                   jnle    006483CA
006483B0   6A00                   push    $00
006483B2   668B0D9C876400         mov     cx, word ptr [$0064879C]
006483B9   B202                   mov     dl, $02

* Possible String Reference to: 'Atenção!O Winsati não pode determin
|                                ar qual o sublocal adequado, pois n
|                                ão há nenhum sub local cadastrado p
|                                ara o produto!'
|
006483BB   B834886400             mov     eax, $00648834

|
006483C0   E867B7DFFF             call    00443B2C
006483C5   E983FDFFFF             jmp     0064814D
006483CA   B054                   mov     al, $54
006483CC   8845B1                 mov     [ebp-$4F], al
006483CF   C645B001               mov     byte ptr [ebp-$50], $01
006483D3   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]
006483D9   8D55B0                 lea     edx, [ebp-$50]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
006483DC   E80F09DDFF             call    00418CF0
006483E1   8DB548FFFFFF           lea     esi, [ebp+$FFFFFF48]
006483E7   8D7DE0                 lea     edi, [ebp-$20]
006483EA   A5                     movsd
006483EB   A5                     movsd
006483EC   A5                     movsd
006483ED   A5                     movsd
006483EE   8D45E0                 lea     eax, [ebp-$20]
006483F1   50                     push    eax
006483F2   6A00                   push    $00

* Possible String Reference to: 'Padrao'
|
006483F4   B80C876400             mov     eax, $0064870C
006483F9   8945CC                 mov     [ebp-$34], eax
006483FC   8D55CC                 lea     edx, [ebp-$34]
006483FF   33C9                   xor     ecx, ecx
00648401   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B8568()
|
00648406   E85D011700             call    007B8568
0064840B   84C0                   test    al, al
0064840D   7540                   jnz     0064844F
0064840F   A178DD7D00             mov     eax, dword ptr [$007DDD78]

|
00648414   E887FF1600             call    007B83A0
00648419   B054                   mov     al, $54
0064841B   8845B1                 mov     [ebp-$4F], al
0064841E   C645B001               mov     byte ptr [ebp-$50], $01
00648422   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]
00648428   8D55B0                 lea     edx, [ebp-$50]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
0064842B   E8C008DDFF             call    00418CF0
00648430   8D8D38FFFFFF           lea     ecx, [ebp+$FFFFFF38]

* Possible String Reference to: 'Padrao'
|
00648436   BA0C876400             mov     edx, $0064870C
0064843B   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B767C()
|
00648440   E837F21600             call    007B767C
00648445   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
0064844A   E88D191700             call    007B9DDC
0064844F   8D4DFC                 lea     ecx, [ebp-$04]

* Possible String Reference to: 'CodSubLocal'
|
00648452   BAB8866400             mov     edx, $006486B8
00648457   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064845C   E8D7F81600             call    007B7D38
00648461   A098876400             mov     al, byte ptr [$00648798]
00648466   50                     push    eax
00648467   8D8528FFFFFF           lea     eax, [ebp+$FFFFFF28]
0064846D   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
00648470   E84F08DDFF             call    00418CC4
00648475   8D8D28FFFFFF           lea     ecx, [ebp+$FFFFFF28]
0064847B   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
00648480   8B00                   mov     eax, [eax]
00648482   8B8020070000           mov     eax, [eax+$0720]

* Possible String Reference to: 'CodSubLocal'
|
00648488   BAB8866400             mov     edx, $006486B8

* Reference to : TFrmInfoAtu._PROC_007A83F8()
|
0064848D   E866FF1500             call    007A83F8
00648492   84C0                   test    al, al
00648494   7427                   jz      006484BD
00648496   8D8518FFFFFF           lea     eax, [ebp+$FFFFFF18]
0064849C   8B55FC                 mov     edx, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
0064849F   E82008DDFF             call    00418CC4
006484A4   8D8D18FFFFFF           lea     ecx, [ebp+$FFFFFF18]
006484AA   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodSubLocal'
|
006484AC   BAB8866400             mov     edx, $006486B8

* Reference to : tArrayTable._PROC_007B767C()
|
006484B1   E8C6F11600             call    007B767C
006484B6   8B03                   mov     eax, [ebx]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006484B8   E81F191700             call    007B9DDC
006484BD   837DF800               cmp     dword ptr [ebp-$08], +$00
006484C1   7528                   jnz     006484EB
006484C3   DB6D08                 fld     tbyte ptr [ebp+$08]
006484C6   8D8508FFFFFF           lea     eax, [ebp+$FFFFFF08]

* Reference to: Variants.@VarFromReal;
|
006484CC   E8B707DDFF             call    00418C88
006484D1   8D8D08FFFFFF           lea     ecx, [ebp+$FFFFFF08]

* Possible String Reference to: 'SaldoEstoque'
|
006484D7   BAB8886400             mov     edx, $006488B8
006484DC   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B767C()
|
006484E1   E896F11600             call    007B767C
006484E6   E9B0000000             jmp     0064859B
006484EB   8B45F8                 mov     eax, [ebp-$08]
006484EE   BAD0886400             mov     edx, $006488D0

* Reference to: System.@LStrCmp;
|
006484F3   E8B0D3DBFF             call    004058A8
006484F8   7547                   jnz     00648541
006484FA   8D8DF4FEFFFF           lea     ecx, [ebp+$FFFFFEF4]

* Possible String Reference to: 'SaldoEstoque'
|
00648500   BAB8886400             mov     edx, $006488B8
00648505   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
0064850A   E829F81600             call    007B7D38
0064850F   8B85F4FEFFFF           mov     eax, [ebp+$FFFFFEF4]

|
00648515   E81E981500             call    007A1D38
0064851A   DB6D08                 fld     tbyte ptr [ebp+$08]
0064851D   DEC1                   faddp   st(1), st(0)
0064851F   8D85F8FEFFFF           lea     eax, [ebp+$FFFFFEF8]

* Reference to: Variants.@VarFromReal;
|
00648525   E85E07DDFF             call    00418C88
0064852A   8D8DF8FEFFFF           lea     ecx, [ebp+$FFFFFEF8]

* Possible String Reference to: 'SaldoEstoque'
|
00648530   BAB8886400             mov     edx, $006488B8
00648535   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B767C()
|
0064853A   E83DF11600             call    007B767C
0064853F   EB5A                   jmp     0064859B
00648541   8B45F8                 mov     eax, [ebp-$08]
00648544   BADC886400             mov     edx, $006488DC

* Reference to: System.@LStrCmp;
|
00648549   E85AD3DBFF             call    004058A8
0064854E   7547                   jnz     00648597
00648550   8D8DE0FEFFFF           lea     ecx, [ebp+$FFFFFEE0]

* Possible String Reference to: 'SaldoEstoque'
|
00648556   BAB8886400             mov     edx, $006488B8
0064855B   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: DBAdapt.TCustomDataSetAdapterField.ImplUpdateValue(TCustomDataSetAdapterField;WebAdapt.IActionRequest;System.Integer);
|
00648560   E8D3F71600             call    007B7D38
00648565   8B85E0FEFFFF           mov     eax, [ebp+$FFFFFEE0]

|
0064856B   E8C8971500             call    007A1D38
00648570   DB6D08                 fld     tbyte ptr [ebp+$08]
00648573   DEE9                   fsubp   st(1), st(0)
00648575   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]

* Reference to: Variants.@VarFromReal;
|
0064857B   E80807DDFF             call    00418C88
00648580   8D8DE4FEFFFF           lea     ecx, [ebp+$FFFFFEE4]

* Possible String Reference to: 'SaldoEstoque'
|
00648586   BAB8886400             mov     edx, $006488B8
0064858B   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to : tArrayTable._PROC_007B767C()
|
00648590   E8E7F01600             call    007B767C
00648595   EB04                   jmp     0064859B
00648597   C645F700               mov     byte ptr [ebp-$09], $00
0064859B   A178DD7D00             mov     eax, dword ptr [$007DDD78]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
006485A0   E837181700             call    007B9DDC
006485A5   33C0                   xor     eax, eax
006485A7   5A                     pop     edx
006485A8   59                     pop     ecx
006485A9   59                     pop     ecx
006485AA   648910                 mov     fs:[eax], edx
006485AD   EB41                   jmp     006485F0

* Reference to: System.@HandleOnException;
|
006485AF   E9FCC5DBFF             jmp     00404BB0
006485B4   0100                   add     [eax], eax
006485B6   0000                   add     [eax], al
006485B8   40                     inc     eax
006485B9   95                     xchg    eax, ebp
006485BA   40                     inc     eax
006485BB   00C0                   add     al, al
006485BD   85640089               test    [eax+eax-$77], esp
006485C1   C3                     ret

006485C2   6A00                   push    $00
006485C4   8B4B04                 mov     ecx, [ebx+$04]
006485C7   8D85DCFEFFFF           lea     eax, [ebp+$FFFFFEDC]

* Possible String Reference to: 'Erro na rotina "Ajusta estoque do l
|                                ocal"'
|
006485CD   BAE8886400             mov     edx, $006488E8

* Reference to: System.@LStrCat3;
|
006485D2   E8D1D1DBFF             call    004057A8
006485D7   8B85DCFEFFFF           mov     eax, [ebp+$FFFFFEDC]
006485DD   668B0D9C876400         mov     cx, word ptr [$0064879C]
006485E4   B201                   mov     dl, $01

|
006485E6   E841B5DFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
006485EB   E8C0C8DBFF             call    00404EB0

****** END
|
006485F0   33C0                   xor     eax, eax
006485F2   5A                     pop     edx
006485F3   59                     pop     ecx
006485F4   59                     pop     ecx
006485F5   648910                 mov     fs:[eax], edx

****** FINALLY
|
006485F8   6805866400             push    $00648605
006485FD   C3                     ret


* Reference to: System.@HandleFinally;
|
006485FE   E935C7DBFF             jmp     00404D38
00648603   EBF8                   jmp     006485FD

****** END
|
00648605   33C0                   xor     eax, eax
00648607   5A                     pop     edx
00648608   59                     pop     ecx
00648609   59                     pop     ecx
0064860A   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064860D   6898866400             push    $00648698
00648612   8D85DCFEFFFF           lea     eax, [ebp+$FFFFFEDC]
00648618   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064861D   E89ECEDBFF             call    004054C0
00648622   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00648628   E84BBFDCFF             call    00414578
0064862D   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]

* Reference to: System.@LStrClr(void;void);
|
00648633   E864CEDBFF             call    0040549C
00648638   8D85F8FEFFFF           lea     eax, [ebp+$FFFFFEF8]

* Reference to object Variant
|
0064863E   8B1524114000           mov     edx, [$00401124]
00648644   B90A000000             mov     ecx, $0000000A

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00648649   E84EDADBFF             call    0040609C
0064864E   8D4598                 lea     eax, [ebp-$68]
00648651   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00648656   E865CEDBFF             call    004054C0
0064865B   8D45B4                 lea     eax, [ebp-$4C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
0064865E   E815BFDCFF             call    00414578
00648663   8D45C4                 lea     eax, [ebp-$3C]
00648666   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064866B   E850CEDBFF             call    004054C0
00648670   8D45D0                 lea     eax, [ebp-$30]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
00648673   E800BFDCFF             call    00414578
00648678   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrClr(void;void);
|
0064867B   E81CCEDBFF             call    0040549C
00648680   8D45F8                 lea     eax, [ebp-$08]
00648683   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
00648688   E833CEDBFF             call    004054C0
0064868D   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_0064868E(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064868E   E9A5C6DBFF             jmp     00404D38

|
00648693   E97AFFFFFF             jmp     00648612
00648698   8A45F7                 mov     al, byte ptr [ebp-$09]
0064869B   5F                     pop     edi
0064869C   5E                     pop     esi
0064869D   5B                     pop     ebx
0064869E   8BE5                   mov     esp, ebp
006486A0   5D                     pop     ebp
006486A1   C20C00                 ret     $000C

*)
end;

procedure TFrmF2SubLocal._PROC_00648915(Sender : TObject);
begin
(*
00648915   8BEC                   mov     ebp, esp
00648917   83C494                 add     esp, -$6C
0064891A   53                     push    ebx
0064891B   56                     push    esi
0064891C   57                     push    edi
0064891D   33C9                   xor     ecx, ecx
0064891F   894D94                 mov     [ebp-$6C], ecx
00648922   894DB0                 mov     [ebp-$50], ecx
00648925   894DB4                 mov     [ebp-$4C], ecx
00648928   894DB8                 mov     [ebp-$48], ecx
0064892B   894DBC                 mov     [ebp-$44], ecx
0064892E   894DA0                 mov     [ebp-$60], ecx
00648931   894DA4                 mov     [ebp-$5C], ecx
00648934   894DA8                 mov     [ebp-$58], ecx
00648937   894DAC                 mov     [ebp-$54], ecx
0064893A   8BDA                   mov     ebx, edx
0064893C   8945FC                 mov     [ebp-$04], eax
0064893F   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00648942   E805D0DBFF             call    0040594C
00648947   33C0                   xor     eax, eax
00648949   55                     push    ebp
0064894A   688E8B6400             push    $00648B8E

***** TRY
|
0064894F   64FF30                 push    dword ptr fs:[eax]
00648952   648920                 mov     fs:[eax], esp
00648955   C645FB00               mov     byte ptr [ebp-$05], $00
00648959   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064895E   8B00                   mov     eax, [eax]
00648960   8B80D8040000           mov     eax, [eax+$04D8]
00648966   8B10                   mov     edx, [eax]
00648968   FF5244                 call    dword ptr [edx+$44]
0064896B   84C0                   test    al, al
0064896D   0F84EA010000           jz      00648B5D
00648973   33C0                   xor     eax, eax
00648975   55                     push    ebp
00648976   68568B6400             push    $00648B56

***** TRY
|
0064897B   64FF30                 push    dword ptr fs:[eax]
0064897E   648920                 mov     fs:[eax], esp
00648981   33C0                   xor     eax, eax
00648983   55                     push    ebp
00648984   680D8B6400             push    $00648B0D

***** TRY
|
00648989   64FF30                 push    dword ptr fs:[eax]
0064898C   648920                 mov     fs:[eax], esp
0064898F   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to : tArrayTable._PROC_007B8B80()
|
00648994   E8E7011700             call    007B8B80
00648999   85C0                   test    eax, eax
0064899B   0F8E62010000           jle     00648B03
006489A1   DB6D08                 fld     tbyte ptr [ebp+$08]
006489A4   D81DA48B6400           fcomp   dword ptr [$00648BA4]
006489AA   DFE0                   fstsw   ax
006489AC   9E                     sahf
006489AD   0F8418010000           jz      00648ACB
006489B3   8B03                   mov     eax, [ebx]

* Reference to : tArrayTable._PROC_007B8B80()
|
006489B5   E8C6011700             call    007B8B80
006489BA   85C0                   test    eax, eax
006489BC   0F8EEA000000           jle     00648AAC
006489C2   33C0                   xor     eax, eax
006489C4   8945E0                 mov     [ebp-$20], eax
006489C7   8945E4                 mov     [ebp-$1C], eax
006489CA   668945E8               mov     [ebp-$18], ax
006489CE   8B03                   mov     eax, [ebx]

|
006489D0   E8CBF91600             call    007B83A0
006489D5   E9B6000000             jmp     00648A90
006489DA   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Linha'
|
006489DC   BAB08B6400             mov     edx, $00648BB0

|
006489E1   E84EF21600             call    007B7C34
006489E6   8BF0                   mov     esi, eax
006489E8   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Coluna'
|
006489EA   BAC08B6400             mov     edx, $00648BC0

|
006489EF   E840F21600             call    007B7C34
006489F4   8BF8                   mov     edi, eax
006489F6   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'QtdLcto'
|
006489F8   BAD08B6400             mov     edx, $00648BD0

|
006489FD   E826F11600             call    007B7B28
00648A02   DB7DF0                 fstp    tbyte ptr [ebp-$10]
00648A05   9B                     wait
00648A06   DB6DE0                 fld     tbyte ptr [ebp-$20]
00648A09   DB6DF0                 fld     tbyte ptr [ebp-$10]
00648A0C   DEC1                   faddp   st(1), st(0)
00648A0E   DB7DE0                 fstp    tbyte ptr [ebp-$20]
00648A11   9B                     wait
00648A12   8D45B0                 lea     eax, [ebp-$50]
00648A15   8BD6                   mov     edx, esi
00648A17   B1FC                   mov     cl, $FC

|
00648A19   E85200DDFF             call    00418A70
00648A1E   57                     push    edi
00648A1F   8D75B0                 lea     esi, [ebp-$50]
00648A22   8D7DC0                 lea     edi, [ebp-$40]
00648A25   A5                     movsd
00648A26   A5                     movsd
00648A27   A5                     movsd
00648A28   A5                     movsd
00648A29   5F                     pop     edi
00648A2A   8D45A0                 lea     eax, [ebp-$60]
00648A2D   8BD7                   mov     edx, edi
00648A2F   B1FC                   mov     cl, $FC

|
00648A31   E83A00DDFF             call    00418A70
00648A36   8D75A0                 lea     esi, [ebp-$60]
00648A39   8D7DD0                 lea     edi, [ebp-$30]
00648A3C   A5                     movsd
00648A3D   A5                     movsd
00648A3E   A5                     movsd
00648A3F   A5                     movsd
00648A40   8D45C0                 lea     eax, [ebp-$40]
00648A43   50                     push    eax
00648A44   6A01                   push    $01

* Possible String Reference to: 'Linha'
|
00648A46   B8B08B6400             mov     eax, $00648BB0
00648A4B   894598                 mov     [ebp-$68], eax

* Possible String Reference to: 'Coluna'
|
00648A4E   B8C08B6400             mov     eax, $00648BC0
00648A53   89459C                 mov     [ebp-$64], eax
00648A56   8D5598                 lea     edx, [ebp-$68]
00648A59   B901000000             mov     ecx, $00000001
00648A5E   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to : tArrayTable._PROC_007B8568()
|
00648A63   E800FB1600             call    007B8568
00648A68   84C0                   test    al, al
00648A6A   750A                   jnz     00648A76
00648A6C   A180DD7D00             mov     eax, dword ptr [$007DDD80]

|
00648A71   E82AF91600             call    007B83A0
00648A76   668B45F8               mov     ax, word ptr [ebp-$08]
00648A7A   50                     push    eax
00648A7B   FF75F4                 push    dword ptr [ebp-$0C]
00648A7E   FF75F0                 push    dword ptr [ebp-$10]
00648A81   8B45FC                 mov     eax, [ebp-$04]

|
00648A84   E883010000             call    00648C0C
00648A89   8B03                   mov     eax, [ebx]

|
00648A8B   E864FC1600             call    007B86F4
00648A90   8B03                   mov     eax, [ebx]

|
00648A92   E8A1ED1600             call    007B7838
00648A97   84C0                   test    al, al
00648A99   0F843BFFFFFF           jz      006489DA
00648A9F   DB6DE0                 fld     tbyte ptr [ebp-$20]
00648AA2   DB6D08                 fld     tbyte ptr [ebp+$08]
00648AA5   DED9                   fcompp
00648AA7   DFE0                   fstsw   ax
00648AA9   9E                     sahf
00648AAA   EB57                   jmp     00648B03
00648AAC   A180DD7D00             mov     eax, dword ptr [$007DDD80]

|
00648AB1   E8EAF81600             call    007B83A0
00648AB6   668B4510               mov     ax, word ptr [ebp+$10]
00648ABA   50                     push    eax
00648ABB   FF750C                 push    dword ptr [ebp+$0C]
00648ABE   FF7508                 push    dword ptr [ebp+$08]
00648AC1   8B45FC                 mov     eax, [ebp-$04]

|
00648AC4   E843010000             call    00648C0C
00648AC9   EB38                   jmp     00648B03
00648ACB   837DFC00               cmp     dword ptr [ebp-$04], +$00
00648ACF   7532                   jnz     00648B03
00648AD1   A180DD7D00             mov     eax, dword ptr [$007DDD80]

|
00648AD6   E8C5F81600             call    007B83A0
00648ADB   EB18                   jmp     00648AF5
00648ADD   6A00                   push    $00
00648ADF   6A00                   push    $00
00648AE1   6A00                   push    $00
00648AE3   8B45FC                 mov     eax, [ebp-$04]

|
00648AE6   E821010000             call    00648C0C
00648AEB   A180DD7D00             mov     eax, dword ptr [$007DDD80]

|
00648AF0   E8FFFB1600             call    007B86F4
00648AF5   A180DD7D00             mov     eax, dword ptr [$007DDD80]

|
00648AFA   E839ED1600             call    007B7838
00648AFF   84C0                   test    al, al
00648B01   74DA                   jz      00648ADD
00648B03   33C0                   xor     eax, eax
00648B05   5A                     pop     edx
00648B06   59                     pop     ecx
00648B07   59                     pop     ecx
00648B08   648910                 mov     fs:[eax], edx
00648B0B   EB3B                   jmp     00648B48

* Reference to: System.@HandleOnException;
|
00648B0D   E99EC0DBFF             jmp     00404BB0
00648B12   0100                   add     [eax], eax
00648B14   0000                   add     [eax], al
00648B16   40                     inc     eax
00648B17   95                     xchg    eax, ebp
00648B18   40                     inc     eax
00648B19   001E                   add     [esi], bl
00648B1B   8B640089               mov     esp, [eax+eax-$77]
00648B1F   C3                     ret

00648B20   6A00                   push    $00
00648B22   8B4B04                 mov     ecx, [ebx+$04]
00648B25   8D4594                 lea     eax, [ebp-$6C]

* Possible String Reference to: 'Erro ao atualizar o estoque da grad
|                                e!'
|
00648B28   BAE08B6400             mov     edx, $00648BE0

* Reference to: System.@LStrCat3;
|
00648B2D   E876CCDBFF             call    004057A8
00648B32   8B4594                 mov     eax, [ebp-$6C]
00648B35   668B0D088C6400         mov     cx, word ptr [$00648C08]
00648B3C   B201                   mov     dl, $01

|
00648B3E   E8E9AFDFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00648B43   E868C3DBFF             call    00404EB0

****** END
|
00648B48   33C0                   xor     eax, eax
00648B4A   5A                     pop     edx
00648B4B   59                     pop     ecx
00648B4C   59                     pop     ecx
00648B4D   648910                 mov     fs:[eax], edx

****** FINALLY
|
00648B50   685D8B6400             push    $00648B5D
00648B55   C3                     ret


* Reference to: System.@HandleFinally;
|
00648B56   E9DDC1DBFF             jmp     00404D38
00648B5B   EBF8                   jmp     00648B55

****** END
|
00648B5D   33C0                   xor     eax, eax
00648B5F   5A                     pop     edx
00648B60   59                     pop     ecx
00648B61   59                     pop     ecx
00648B62   648910                 mov     fs:[eax], edx

****** FINALLY
|
00648B65   68958B6400             push    $00648B95
00648B6A   8D4594                 lea     eax, [ebp-$6C]

* Reference to: System.@LStrClr(void;void);
|
00648B6D   E82AC9DBFF             call    0040549C
00648B72   8D45A0                 lea     eax, [ebp-$60]

* Reference to object Variant
|
00648B75   8B1524114000           mov     edx, [$00401124]
00648B7B   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00648B80   E817D5DBFF             call    0040609C
00648B85   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00648B88   E80FC9DBFF             call    0040549C
00648B8D   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00648B8E(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00648B8E   E9A5C1DBFF             jmp     00404D38

|
00648B93   EBD5                   jmp     00648B6A
00648B95   8A45FB                 mov     al, byte ptr [ebp-$05]
00648B98   5F                     pop     edi
00648B99   5E                     pop     esi
00648B9A   5B                     pop     ebx
00648B9B   8BE5                   mov     esp, ebp
00648B9D   5D                     pop     ebp
00648B9E   C20C00                 ret     $000C

*)
end;

procedure TFrmF2SubLocal._PROC_00648C0D(Sender : TObject);
begin
(*
00648C0D   8BEC                   mov     ebp, esp
00648C0F   B909000000             mov     ecx, $00000009
00648C14   6A00                   push    $00
00648C16   6A00                   push    $00
00648C18   49                     dec     ecx
00648C19   75F9                   jnz     00648C14
00648C1B   51                     push    ecx
00648C1C   53                     push    ebx
00648C1D   56                     push    esi
00648C1E   57                     push    edi
00648C1F   8945FC                 mov     [ebp-$04], eax
00648C22   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00648C25   E822CDDBFF             call    0040594C
00648C2A   33C0                   xor     eax, eax
00648C2C   55                     push    ebp
00648C2D   68C48D6400             push    $00648DC4

***** TRY
|
00648C32   64FF30                 push    dword ptr fs:[eax]
00648C35   648920                 mov     fs:[eax], esp
00648C38   C645FB00               mov     byte ptr [ebp-$05], $00
00648C3C   33C0                   xor     eax, eax
00648C3E   55                     push    ebp
00648C3F   688C8D6400             push    $00648D8C

***** TRY
|
00648C44   64FF30                 push    dword ptr fs:[eax]
00648C47   648920                 mov     fs:[eax], esp
00648C4A   33C0                   xor     eax, eax
00648C4C   55                     push    ebp
00648C4D   68438D6400             push    $00648D43

***** TRY
|
00648C52   64FF30                 push    dword ptr fs:[eax]
00648C55   648920                 mov     fs:[eax], esp
00648C58   8B45FC                 mov     eax, [ebp-$04]
00648C5B   BAE08D6400             mov     edx, $00648DE0

* Reference to: System.@LStrCmp;
|
00648C60   E843CCDBFF             call    004058A8
00648C65   7533                   jnz     00648C9A

* Possible String Reference to: 'SaldoEstoque'
|
00648C67   BAEC8D6400             mov     edx, $00648DEC
00648C6C   A180DD7D00             mov     eax, dword ptr [$007DDD80]

|
00648C71   E8B2EE1600             call    007B7B28
00648C76   DB6D08                 fld     tbyte ptr [ebp+$08]
00648C79   DEC1                   faddp   st(1), st(0)
00648C7B   8D45E8                 lea     eax, [ebp-$18]

* Reference to: Variants.@VarFromReal;
|
00648C7E   E80500DDFF             call    00418C88
00648C83   8D4DE8                 lea     ecx, [ebp-$18]

* Possible String Reference to: 'SaldoEstoque'
|
00648C86   BAEC8D6400             mov     edx, $00648DEC
00648C8B   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to : tArrayTable._PROC_007B767C()
|
00648C90   E8E7E91600             call    007B767C
00648C95   E991000000             jmp     00648D2B
00648C9A   8B45FC                 mov     eax, [ebp-$04]
00648C9D   BA048E6400             mov     edx, $00648E04

* Reference to: System.@LStrCmp;
|
00648CA2   E801CCDBFF             call    004058A8
00648CA7   7530                   jnz     00648CD9

* Possible String Reference to: 'SaldoEstoque'
|
00648CA9   BAEC8D6400             mov     edx, $00648DEC
00648CAE   A180DD7D00             mov     eax, dword ptr [$007DDD80]

|
00648CB3   E870EE1600             call    007B7B28
00648CB8   DB6D08                 fld     tbyte ptr [ebp+$08]
00648CBB   DEE9                   fsubp   st(1), st(0)
00648CBD   8D45D8                 lea     eax, [ebp-$28]

* Reference to: Variants.@VarFromReal;
|
00648CC0   E8C3FFDCFF             call    00418C88
00648CC5   8D4DD8                 lea     ecx, [ebp-$28]

* Possible String Reference to: 'SaldoEstoque'
|
00648CC8   BAEC8D6400             mov     edx, $00648DEC
00648CCD   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to : tArrayTable._PROC_007B767C()
|
00648CD2   E8A5E91600             call    007B767C
00648CD7   EB52                   jmp     00648D2B
00648CD9   837DFC00               cmp     dword ptr [ebp-$04], +$00
00648CDD   751F                   jnz     00648CFE
00648CDF   DB6D08                 fld     tbyte ptr [ebp+$08]
00648CE2   8D45C8                 lea     eax, [ebp-$38]

* Reference to: Variants.@VarFromReal;
|
00648CE5   E89EFFDCFF             call    00418C88
00648CEA   8D4DC8                 lea     ecx, [ebp-$38]

* Possible String Reference to: 'SaldoEstoque'
|
00648CED   BAEC8D6400             mov     edx, $00648DEC
00648CF2   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to : tArrayTable._PROC_007B767C()
|
00648CF7   E880E91600             call    007B767C
00648CFC   EB2D                   jmp     00648D2B
00648CFE   8B45FC                 mov     eax, [ebp-$04]
00648D01   BA108E6400             mov     edx, $00648E10

* Reference to: System.@LStrCmp;
|
00648D06   E89DCBDBFF             call    004058A8
00648D0B   751E                   jnz     00648D2B
00648D0D   8D45B8                 lea     eax, [ebp-$48]
00648D10   33D2                   xor     edx, edx
00648D12   B101                   mov     cl, $01

|
00648D14   E857FDDCFF             call    00418A70
00648D19   8D4DB8                 lea     ecx, [ebp-$48]

* Possible String Reference to: 'SaldoEstoque'
|
00648D1C   BAEC8D6400             mov     edx, $00648DEC
00648D21   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to : tArrayTable._PROC_007B767C()
|
00648D26   E851E91600             call    007B767C
00648D2B   A180DD7D00             mov     eax, dword ptr [$007DDD80]

* Reference to: IWCSStdCtrls.TIWCSCustomNavigator.Submit(TIWCSCustomNavigator;AnsiString);
|
00648D30   E8A7101700             call    007B9DDC
00648D35   C645FB01               mov     byte ptr [ebp-$05], $01
00648D39   33C0                   xor     eax, eax
00648D3B   5A                     pop     edx
00648D3C   59                     pop     ecx
00648D3D   59                     pop     ecx
00648D3E   648910                 mov     fs:[eax], edx
00648D41   EB3B                   jmp     00648D7E

* Reference to: System.@HandleOnException;
|
00648D43   E968BEDBFF             jmp     00404BB0
00648D48   0100                   add     [eax], eax
00648D4A   0000                   add     [eax], al
00648D4C   40                     inc     eax
00648D4D   95                     xchg    eax, ebp
00648D4E   40                     inc     eax
00648D4F   00548D64               add     [ebp+ecx*4+$64], dl
00648D53   0089C36A008B           add     [ecx+$8B006AC3], cl
00648D59   4B                     dec     ebx
00648D5A   048D                   add     al, -$73
00648D5C   45                     inc     ebp
00648D5D   B4BA                   mov     ah, $BA
00648D5F   1C8E                   sbb     al, $8E
00648D61   6400E8                 add     al, ch
00648D64   40                     inc     eax
00648D65   CA                     ret     

00648D66   DBFF                   DB  $DB, $FF  //
00648D68   8B45B4                 mov     eax, [ebp-$4C]
00648D6B   668B0D448E6400         mov     cx, word ptr [$00648E44]
00648D72   B201                   mov     dl, $01

|
00648D74   E8B3ADDFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
00648D79   E832C1DBFF             call    00404EB0

****** END
|
00648D7E   33C0                   xor     eax, eax
00648D80   5A                     pop     edx
00648D81   59                     pop     ecx
00648D82   59                     pop     ecx
00648D83   648910                 mov     fs:[eax], edx

****** FINALLY
|
00648D86   68938D6400             push    $00648D93
00648D8B   C3                     ret


* Reference to: System.@HandleFinally;
|
00648D8C   E9A7BFDBFF             jmp     00404D38
00648D91   EBF8                   jmp     00648D8B

****** END
|
00648D93   33C0                   xor     eax, eax
00648D95   5A                     pop     edx
00648D96   59                     pop     ecx
00648D97   59                     pop     ecx
00648D98   648910                 mov     fs:[eax], edx

****** FINALLY
|
00648D9B   68CB8D6400             push    $00648DCB
00648DA0   8D45B4                 lea     eax, [ebp-$4C]

* Reference to: System.@LStrClr(void;void);
|
00648DA3   E8F4C6DBFF             call    0040549C
00648DA8   8D45B8                 lea     eax, [ebp-$48]

* Reference to object Variant
|
00648DAB   8B1524114000           mov     edx, [$00401124]
00648DB1   B904000000             mov     ecx, $00000004

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
00648DB6   E8E1D2DBFF             call    0040609C
00648DBB   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
00648DBE   E8D9C6DBFF             call    0040549C
00648DC3   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00648DC4(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
00648DC4   E96FBFDBFF             jmp     00404D38

|
00648DC9   EBD5                   jmp     00648DA0
00648DCB   8A45FB                 mov     al, byte ptr [ebp-$05]
00648DCE   5F                     pop     edi
00648DCF   5E                     pop     esi
00648DD0   5B                     pop     ebx
00648DD1   8BE5                   mov     esp, ebp
00648DD3   5D                     pop     ebp
00648DD4   C20C00                 ret     $000C

*)
end;

procedure TFrmF2SubLocal._PROC_00648E49(Sender : TObject);
begin
(*
00648E49   8BEC                   mov     ebp, esp
00648E4B   33C0                   xor     eax, eax
00648E4D   55                     push    ebp

* Possible String Reference to: 'éÆ¾Ûÿëø]Ã‹Àƒ-„Ý}'
|
00648E4E   686D8E6400             push    $00648E6D

***** TRY
|
00648E53   64FF30                 push    dword ptr fs:[eax]
00648E56   648920                 mov     fs:[eax], esp
00648E59   FF0584DD7D00           inc     dword ptr [$007DDD84]
00648E5F   33C0                   xor     eax, eax
00648E61   5A                     pop     edx
00648E62   59                     pop     ecx
00648E63   59                     pop     ecx
00648E64   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-„Ý}'
|
00648E67   68748E6400             push    $00648E74
00648E6C   C3                     ret


* Reference to: System.@HandleFinally;
|
00648E6D   E9C6BEDBFF             jmp     00404D38
00648E72   EBF8                   jmp     00648E6C

****** END
|
00648E74   5D                     pop     ebp
00648E75   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00648E78(Sender : TObject);
begin
(*
00648E78   832D84DD7D0001         sub     dword ptr [$007DDD84], +$01
00648E7F   C3                     ret

*)
end;

procedure TFrmF2SubLocal._PROC_00648E80(Sender : TObject);
begin
(*
00648E80   CC                     int     3
00648E81   8E640000               mov     fs, word ptr [eax+eax+$00]
00648E85   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00648FF9(Sender : TObject);
begin
(*
00648FF9   42                     inc     edx
00648FFA   4C                     dec     esp
00648FFB   4F                     dec     edi
00648FFC   43                     inc     ebx
00648FFD   41                     inc     ecx
00648FFE   4C                     dec     esp
00648FFF   8C00                   mov     word ptr [eax], es
00649001   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0064901A(Sender : TObject);
begin
(*
0064901A   45                     inc     ebp
0064901B   90                     nop
0064901C   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00649044(Sender : TObject);
begin
(*
00649044   41                     inc     ecx
00649045   4C                     dec     esp
00649046   49                     dec     ecx
00649047   5A                     pop     edx
00649048   41                     inc     ecx
00649049   43                     inc     ebx
0064904A   41                     inc     ecx
0064904B   4F                     dec     edi
0064904C   98                     cwde 
0064904D   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_00649060(Sender : TObject);
begin
(*
00649060   42                     inc     edx
00649061   4C                     dec     esp
00649062   4F                     dec     edi
00649063   43                     inc     ebx
00649064   41                     inc     ecx
00649065   4C                     dec     esp
00649066   9C                     pushf   
00649067   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006490B6(Sender : TObject);
begin
(*
006490B6   50                     push    eax
006490B7   4F                     dec     edi
006490B8   AC                     lodsb
006490B9   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_0064915D(Sender : TObject);
begin
(*
0064915D   50                     push    eax
0064915E   4F                     dec     edi
0064915F   C800                   enter   , $00
00649161   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006491EC(Sender : TObject);
begin
(*
006491EC   4E                     dec     esi
006491ED   49                     dec     ecx
006491EE   54                     push    esp
006491EF   E000                   loopn   +$00
006491F1   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006492B5(Sender : TObject);
begin
(*
006492B5   45                     inc     ebp
006492B6   41                     inc     ecx
006492B7   54                     push    esp
006492B8   55                     push    ebp
006492B9   41                     inc     ecx
006492BA   4C                     dec     esp
006492BB   0401                   add     al, +$01
006492BD   0000                   add     [eax], al

*)
end;

procedure TFrmF2SubLocal._PROC_006493DB(Sender : TObject);
begin
(*
006493DB   6E                     outsb
006493DC   6964300100000400       imul    esp, [eax+esi+$01], $00040000
006493E4   115165                 adc     [ecx+$65], edx
006493E7   50                     push    eax
006493E8   726F                   jb      00649459
006493EA   6455                   push    ebp
006493EC   6E                     outsb
006493ED   6964434F4450524F       imul    esp, [ebx+eax*2+$4F], $4F525044
006493F5   44                     inc     esp
006493F6   3401                   xor     al, $01
006493F8   0000                   add     [eax], al

006493FA   0400                   add     al, +$00
006493FC   105165                 adc     [ecx+$65], dl
006493FF   50                     push    eax
00649400   726F                   jb      00649471
00649402   6455                   push    ebp
00649404   6E                     outsb
00649405   696446494C49414C       imul    esp, [esi+eax*2+$49], $4C41494C
0064940D   3801                   cmp     [ecx], al
0064940F   0000                   add     [eax], al

00649411   0400                   add     al, +$00
00649413   115165                 adc     [ecx+$65], edx
00649416   50                     push    eax
00649417   726F                   jb      00649488
00649419   6455                   push    ebp
0064941B   6E                     outsb
0064941C   6964554E49444D45       imul    esp, [ebp+edx*2+$4E], $454D4449
00649424   44                     inc     esp
00649425   3C01                   cmp     al, $01
00649427   0000                   add     [eax], al

00649429   0500155165             add     eax, +$65511500
0064942E   50                     push    eax
0064942F   726F                   jb      006494A0
00649431   6455                   push    ebp
00649433   6E                     outsb
00649434   696451544445554E       imul    esp, [ecx+edx*2+$54], $4E554544
0064943C   49                     dec     ecx
0064943D   44                     inc     esp
0064943E   4D                     dec     ebp
0064943F   45                     inc     ebp
00649440   44                     inc     esp
00649441   40                     inc     eax
00649442   0100                   add     [eax], eax
00649444   000400                 add     [eax+eax], al
00649447   125165                 adc     dl, byte ptr [ecx+$65]
0064944A   50                     push    eax
0064944B   726F                   jb      006494BC
0064944D   6455                   push    ebp
0064944F   6E                     outsb
00649450   6964434F44424152       imul    esp, [ebx+eax*2+$4F], $52414244
00649458   52                     push    edx
00649459   41                     inc     ecx
0064945A   44                     inc     esp
0064945B   0100                   add     [eax], eax
0064945D   000400                 add     [eax+eax], al
00649460   1451                   adc     al, $51
00649462   6550                   push    eax
00649464   726F                   jb      006494D5
00649466   6455                   push    ebp
00649468   6E                     outsb
00649469   6964434F4D504C45       imul    esp, [ebx+eax*2+$4F], $454C504D
00649471   4D                     dec     ebp
00649472   42                     inc     edx
00649473   41                     inc     ecx
00649474   4C                     dec     esp
00649475   48                     dec     eax
00649476   0100                   add     [eax], eax
00649478   000500115165           add     [$65511100], al
0064947E   50                     push    eax
0064947F   726F                   jb      006494F0
00649481   6455                   push    ebp
00649483   6E                     outsb
00649484   6964564C52554E49       imul    esp, [esi+edx*2+$4C], $494E5552
0064948C   54                     push    esp
0064948D   4C                     dec     esp
0064948E   0100                   add     [eax], eax
00649490   000500125165           add     [$65511200], al
00649496   50                     push    eax
00649497   726F                   jb      00649508
00649499   6455                   push    ebp
0064949B   6E                     outsb
0064949C   6964564C52435553       imul    esp, [esi+edx*2+$4C], $53554352
006494A4   54                     push    esp
006494A5   4F                     dec     edi
006494A6   50                     push    eax
006494A7   0100                   add     [eax], eax
006494A9   000400                 add     [eax+eax], al
006494AC   105165                 adc     [ecx+$65], dl
006494AF   50                     push    eax
006494B0   726F                   jb      00649521
006494B2   6455                   push    ebp
006494B4   6E                     outsb
006494B5   696450414452414F       imul    esp, [eax+edx*2+$41], $4F415244
006494BD   54                     push    esp
006494BE   0100                   add     [eax], eax
006494C0   000500105165           add     [$65511000], al
006494C6   50                     push    eax
006494C7   726F                   jb      00649538
006494C9   6455                   push    ebp
006494CB   6E                     outsb
006494CC   69644D415247454D       imul    esp, [ebp+ecx*2+$41], $4D454752
006494D4   58                     pop     eax
006494D5   0100                   add     [eax], eax
006494D7   000500185165           add     [$65511800], al
006494DD   50                     push    eax
006494DE   726F                   jb      0064954F
006494E0   6455                   push    ebp
006494E2   6E                     outsb
006494E3   69644641544F5243       imul    esp, [esi+eax*2+$41], $43524F54
006494EB   4F                     dec     edi
006494EC   4E                     dec     esi
006494ED   56                     push    esi
006494EE   45                     inc     ebp
006494EF   52                     push    edx
006494F0   53                     push    ebx
006494F1   41                     inc     ecx
006494F2   4F                     dec     edi
006494F3   5C                     pop     esp
006494F4   0100                   add     [eax], eax
006494F6   000500155165           add     [$65511500], al
006494FC   50                     push    eax
006494FD   726F                   jb      0064956E
006494FF   6455                   push    ebp
00649501   6E                     outsb
00649502   6964414C4951554F       imul    esp, [ecx+eax*2+$4C], $4F555149
0064950A   54                     push    esp
0064950B   41                     inc     ecx
0064950C   49                     dec     ecx
0064950D   50                     push    eax
0064950E   49                     dec     ecx
0064950F   60                     pusha
00649510   0100                   add     [eax], eax
00649512   000500195165           add     [$65511900], al
00649518   50                     push    eax
00649519   726F                   jb      0064958A
0064951B   6455                   push    ebp
0064951D   6E                     outsb
0064951E   69646363566C7255       imul    esp, [ebx+$63], $55726C56
00649526   6E                     outsb
00649527   6974436F6D495049       imul    esi, [ebx+eax*2+$6F], $4950496D
0064952F   640100                 add     fs:[eax], eax
00649532   000500135165           add     [$65511300], al
00649538   50                     push    eax
00649539   726F                   jb      006495AA
0064953B   6455                   push    ebp
0064953D   6E                     outsb
0064953E   69646363566C7255       imul    esp, [ebx+$63], $55726C56
00649546   6E                     outsb
00649547   6974680100000500       imul    esi, [eax+ebp*2+$01], $00050000
0064954F   1551655072             adc     eax, $72506551
00649554   6F                     outsd
00649555   6455                   push    ebp
00649557   6E                     outsb
00649558   69646363566C7243       imul    esp, [ebx+$63], $43726C56
00649560   6F                     outsd
00649561   6D                     insd
00649562   49                     dec     ecx
00649563   50                     push    eax
00649564   49                     dec     ecx
00649565   6C                     insb
00649566   0100                   add     [eax], eax
00649568   000500125165           add     [$65511200], al
0064956E   50                     push    eax
0064956F   726F                   jb      006495E0
00649571   6455                   push    ebp
00649573   6E                     outsb
00649574   69646363566C724D       imul    esp, [ebx+$63], $4D726C56
0064957C   696C700100000500       imul    ebp, [eax+esi*2+$01], $00050000
00649584   1551655072             adc     eax, $72506551
00649589   6F                     outsd
0064958A   6455                   push    ebp
0064958C   6E                     outsb
0064958D   69646363566C7254       imul    esp, [ebx+$63], $54726C56
00649595   61                     popa
00649596   62656C                 bound   esp, qword ptr [ebp+$6C]
00649599   61                     popa
0064959A   7401                   jz      0064959D
0064959C   0000                   add     [eax], al

0064959E   0500165165             add     eax, +$65511600
006495A3   50                     push    eax
006495A4   726F                   jb      00649615
006495A6   6455                   push    ebp
006495A8   6E                     outsb
006495A9   6964444553435052       imul    esp, [esp+eax*2+$45], $52504353
006495B1   4F                     dec     edi
006495B2   4D                     dec     ebp
006495B3   4F                     dec     edi
006495B4   43                     inc     ebx
006495B5   41                     inc     ecx
006495B6   4F                     dec     edi
006495B7   7801                   js      006495BA
006495B9   0000                   add     [eax], al

006495BB   0800                   or      [eax], al
006495BD   17                     pop     ss
006495BE   51                     push    ecx
006495BF   6550                   push    eax
006495C1   726F                   jb      00649632
006495C3   6455                   push    ebp
006495C5   6E                     outsb
006495C6   69644454494E4950       imul    esp, [esp+eax*2+$54], $50494E49
006495CE   52                     push    edx
006495CF   4F                     dec     edi
006495D0   4D                     dec     ebp
006495D1   4F                     dec     edi
006495D2   43                     inc     ebx
006495D3   41                     inc     ecx
006495D4   4F                     dec     edi
006495D5   7C01                   jl      006495D8
006495D7   0000                   add     [eax], al

006495D9   0800                   or      [eax], al
006495DB   17                     pop     ss
006495DC   51                     push    ecx
006495DD   6550                   push    eax
006495DF   726F                   jb      00649650
006495E1   6455                   push    ebp
006495E3   6E                     outsb
006495E4   6964445446494D50       imul    esp, [esp+eax*2+$54], $504D4946
006495EC   52                     push    edx
006495ED   4F                     dec     edi
006495EE   4D                     dec     ebp
006495EF   4F                     dec     edi
006495F0   43                     inc     ebx
006495F1   41                     inc     ecx
006495F2   4F                     dec     edi
006495F3   800100                 add     byte ptr [ecx], $00
006495F6   000500145165           add     [$65511400], al
006495FC   50                     push    eax
006495FD   726F                   jb      0064966E
006495FF   6455                   push    ebp
00649601   6E                     outsb
00649602   6964564C52554E49       imul    esp, [esi+edx*2+$4C], $494E5552
0064960A   54                     push    esp
0064960B   41                     inc     ecx
0064960C   4E                     dec     esi
0064960D   54                     push    esp
0064960E   8401                   test    [ecx], al
00649610   0000                   add     [eax], al

00649612   0500155165             add     eax, +$65511500
00649617   50                     push    eax
00649618   726F                   jb      00649689
0064961A   6455                   push    ebp
0064961C   6E                     outsb
0064961D   6964564C52435553       imul    esp, [esi+edx*2+$4C], $53554352
00649625   54                     push    esp
00649626   4F                     dec     edi
00649627   41                     inc     ecx
00649628   4E                     dec     esi
00649629   54                     push    esp
0064962A   8801                   mov     [ecx], al
0064962C   0000                   add     [eax], al

0064962E   0800                   or      [eax], al
00649630   125165                 adc     dl, byte ptr [ecx+$65]
00649633   50                     push    eax
00649634   726F                   jb      006496A5
00649636   6455                   push    ebp
00649638   6E                     outsb
00649639   69644454414C5456       imul    esp, [esp+eax*2+$54], $56544C41
00649641   4C                     dec     esp
00649642   52                     push    edx
00649643   8C01                   mov     word ptr [ecx], es
00649645   0000                   add     [eax], al

00649647   07                     pop     es
00649648   0011                   add     [ecx], dl
0064964A   51                     push    ecx
0064964B   6550                   push    eax
0064964D   726F                   jb      006496BE
0064964F   6455                   push    ebp
00649651   6E                     outsb
00649652   6964414C54554E49       imul    esp, [ecx+eax*2+$4C], $494E5554
0064965A   54                     push    esp
0064965B   90                     nop
0064965C   0100                   add     [eax], eax
0064965E   0001                   add     [ecx], al
00649660   000A                   add     [edx], cl
00649662   44                     inc     esp
00649663   7350                   jnb     006496B5
00649665   726F                   jb      006496D6
00649667   6455                   push    ebp
00649669   6E                     outsb
0064966A   6964940100000200       imul    esp, [esp+edx*4+$01], $00020000
00649672   095165                 or      [ecx+$65], edx
00649675   50                     push    eax
00649676   726F                   jb      006496E7
00649678   644C                   dec     esp
0064967A   6F                     outsd
0064967B   639801000004           arpl    [eax+$4000001], bx
00649681   0010                   add     [eax], dl
00649683   51                     push    ecx
00649684   6550                   push    eax
00649686   726F                   jb      006496F7
00649688   644C                   dec     esp
0064968A   6F                     outsd
0064968B   63434F                 arpl    [ebx+$4F], ax
0064968E   44                     inc     esp
0064968F   50                     push    eax
00649690   52                     push    edx
00649691   4F                     dec     edi
00649692   44                     inc     esp
00649693   9C                     pushf   
00649694   0100                   add     [eax], eax
00649696   000400                 add     [eax+eax], al
00649699   0F51                   DB  $0F, $51  //
0064969B   6550                   push    eax
0064969D   726F                   jb      0064970E
0064969F   644C                   dec     esp
006496A1   6F                     outsd
006496A2   634649                 arpl    [esi+$49], ax
006496A5   4C                     dec     esp
006496A6   49                     dec     ecx
006496A7   41                     inc     ecx
006496A8   4C                     dec     esp
006496A9   A001000004             mov     al, byte ptr [$04000001]
006496AE   001451                 add     [ecx+edx*2], dl
006496B1   6550                   push    eax
006496B3   726F                   jb      00649724
006496B5   644C                   dec     esp
006496B7   6F                     outsd
006496B8   63434F                 arpl    [ebx+$4F], ax
006496BB   44                     inc     esp
006496BC   53                     push    ebx
006496BD   55                     push    ebp
006496BE   42                     inc     edx
006496BF   4C                     dec     esp
006496C0   4F                     dec     edi
006496C1   43                     inc     ebx
006496C2   41                     inc     ecx
006496C3   4C                     dec     esp
006496C4   A4                     movsb
006496C5   0100                   add     [eax], eax
006496C7   000500155165           add     [$65511500], al
006496CD   50                     push    eax
006496CE   726F                   jb      0064973F
006496D0   644C                   dec     esp
006496D2   6F                     outsd
006496D3   635341                 arpl    [ebx+$41], dx
006496D6   4C                     dec     esp
006496D7   44                     inc     esp
006496D8   4F                     dec     edi
006496D9   45                     inc     ebp
006496DA   53                     push    ebx
006496DB   54                     push    esp
006496DC   4F                     dec     edi
006496DD   51                     push    ecx
006496DE   55                     push    ebp
006496DF   45                     inc     ebp
006496E0   A801                   test    al, $01
006496E2   0000                   add     [eax], al

006496E4   0400                   add     al, +$00
006496E6   125165                 adc     dl, byte ptr [ecx+$65]
006496E9   50                     push    eax
006496EA   726F                   jb      0064975B
006496EC   644C                   dec     esp
006496EE   6F                     outsd
006496EF   63444553               arpl    [ebp+eax*2+$53], ax
006496F3   43                     inc     ebx
006496F4   52                     push    edx
006496F5   49                     dec     ecx
006496F6   43                     inc     ebx
006496F7   41                     inc     ecx
006496F8   4F                     dec     edi
006496F9   AC                     lodsb
006496FA   0100                   add     [eax], eax
006496FC   000400                 add     [eax+eax], al
006496FF   0F51                   DB  $0F, $51  //
00649701   6550                   push    eax
00649703   726F                   jb      00649774
00649705   644C                   dec     esp
00649707   6F                     outsd
00649708   635041                 arpl    [eax+$41], dx
0064970B   44                     inc     esp
0064970C   52                     push    edx
0064970D   41                     inc     ecx
0064970E   4F                     dec     edi
0064970F   B001                   mov     al, $01
00649711   0000                   add     [eax], al

00649713   0100                   add     [eax], eax
00649715   09447350               or      [ebx+esi*2+$50], eax
00649719   726F                   jb      0064978A
0064971B   644C                   dec     esp
0064971D   6F                     outsd
0064971E   63B40100000200         arpl    [ecx+eax+$20000], si
00649725   0A5165                 or      dl, byte ptr [ecx+$65]
00649728   50                     push    eax
00649729   726F                   jb      0064979A
0064972B   6443                   inc     ebx
0064972D   6D                     insd
0064972E   706C                   jo      0064979C
00649730   B801000004             mov     eax, $04000001
00649735   0011                   add     [ecx], dl
00649737   51                     push    ecx
00649738   6550                   push    eax
0064973A   726F                   jb      006497AB
0064973C   6443                   inc     ebx
0064973E   6D                     insd
0064973F   706C                   jo      006497AD
00649741   43                     inc     ebx
00649742   4F                     dec     edi
00649743   44                     inc     esp
00649744   50                     push    eax
00649745   52                     push    edx
00649746   4F                     dec     edi
00649747   44                     inc     esp
00649748   BC01000009             mov     esp, $09000001
0064974D   001551655072           add     [$72506551], dl
00649753   6F                     outsd
00649754   6443                   inc     ebx
00649756   6D                     insd
00649757   706C                   jo      006497C5
00649759   43                     inc     ebx
0064975A   4F                     dec     edi
0064975B   4D                     dec     ebp
0064975C   50                     push    eax
0064975D   4C                     dec     esp
0064975E   45                     inc     ebp
0064975F   4D                     dec     ebp
00649760   45                     inc     ebp
00649761   4E                     dec     esi
00649762   54                     push    esp
00649763   4F                     dec     edi
00649764   C00100                 rol     byte ptr [ecx], $00
00649767   000A                   add     [edx], cl
00649769   000E                   add     [esi], cl
0064976B   51                     push    ecx
0064976C   6550                   push    eax
0064976E   726F                   jb      006497DF
00649770   6443                   inc     ebx
00649772   6D                     insd
00649773   706C                   jo      006497E1
00649775   46                     inc     esi
00649776   4F                     dec     edi
00649777   54                     push    esp
00649778   4F                     dec     edi
00649779   C401                   les     eax, [ecx]
0064977B   0000                   add     [eax], al

0064977D   0400                   add     al, +$00
0064977F   115165                 adc     [ecx+$65], edx
00649782   50                     push    eax
00649783   726F                   jb      006497F4
00649785   6443                   inc     ebx
00649787   6D                     insd
00649788   706C                   jo      006497F6
0064978A   44                     inc     esp
0064978B   49                     dec     ecx
0064978C   52                     push    edx
0064978D   46                     inc     esi
0064978E   4F                     dec     edi
0064978F   54                     push    esp
00649790   4F                     dec     edi
00649791   C801                   enter   , $01
00649793   0000                   add     [eax], al

00649795   0400                   add     al, +$00
00649797   105165                 adc     [ecx+$65], dl
0064979A   50                     push    eax
0064979B   726F                   jb      0064980C
0064979D   6443                   inc     ebx
0064979F   6D                     insd
006497A0   706C                   jo      0064980E
006497A2   44                     inc     esp
006497A3   49                     dec     ecx
006497A4   52                     push    edx
006497A5   4D                     dec     ebp
006497A6   50                     push    eax
006497A7   33CC                   xor     ecx, esp
006497A9   0100                   add     [eax], eax
006497AB   0009                   add     [ecx], cl
006497AD   0010                   add     [eax], dl
006497AF   51                     push    ecx
006497B0   6550                   push    eax
006497B2   726F                   jb      00649823
006497B4   6443                   inc     ebx
006497B6   6D                     insd
006497B7   706C                   jo      00649825
006497B9   4F                     dec     edi
006497BA   42                     inc     edx
006497BB   53                     push    ebx
006497BC   45                     inc     ebp
006497BD   52                     push    edx
006497BE   56                     push    esi
006497BF   D001                   rol     byte ptr [ecx], 1
006497C1   0000                   add     [eax], al

006497C3   0100                   add     [eax], eax
006497C5   0A447350               or      al, byte ptr [ebx+esi*2+$50]
006497C9   726F                   jb      0064983A
006497CB   6443                   inc     ebx
006497CD   6D                     insd
006497CE   706C                   jo      0064983C
006497D0   D4                     aam
006497D1   0100                   add     [eax], eax
006497D3   0002                   add     [edx], al
006497D5   000A                   add     [edx], cl
006497D7   51                     push    ecx
006497D8   6550                   push    eax
006497DA   726F                   jb      0064984B
006497DC   6453                   push    ebx
006497DE   696D69D8010000         imul    ebp, [ebp+$69], $000001D8
006497E5   0400                   add     al, +$00
006497E7   115165                 adc     [ecx+$65], edx
006497EA   50                     push    eax
006497EB   726F                   jb      0064985C
006497ED   6453                   push    ebx
006497EF   696D69434F4450         imul    ebp, [ebp+$69], $50444F43
006497F6   52                     push    edx
006497F7   4F                     dec     edi
006497F8   44                     inc     esp
006497F9   DC01                   fadd    qword ptr [ecx]
006497FB   0000                   add     [eax], al

006497FD   0400                   add     al, +$00
006497FF   115165                 adc     [ecx+$65], edx
00649802   50                     push    eax
00649803   726F                   jb      00649874
00649805   6453                   push    ebx
00649807   696D69434F4453         imul    ebp, [ebp+$69], $53444F43
0064980E   49                     dec     ecx
0064980F   4D                     dec     ebp
00649810   49                     dec     ecx
00649811   E001                   loopn   +$01
00649813   0000                   add     [eax], al

00649815   0400                   add     al, +$00
00649817   135165                 adc     edx, [ecx+$65]
0064981A   50                     push    eax
0064981B   726F                   jb      0064988C
0064981D   6453                   push    ebx
0064981F   696D6944455343         imul    ebp, [ebp+$69], $43534544
00649826   52                     push    edx
00649827   49                     dec     ecx
00649828   43                     inc     ebx
00649829   41                     inc     ecx
0064982A   4F                     dec     edi
0064982B   E401                   in      al, $01
0064982D   0000                   add     [eax], al

0064982F   0100                   add     [eax], eax
00649831   0A447350               or      al, byte ptr [ebx+esi*2+$50]
00649835   726F                   jb      006498A6
00649837   6453                   push    ebx
00649839   696D69E8010000         imul    ebp, [ebp+$69], $000001E8
00649840   0200                   add     al, byte ptr [eax]
00649842   0A5165                 or      dl, byte ptr [ecx+$65]
00649845   50                     push    eax
00649846   726F                   jb      006498B7
00649848   6453                   push    ebx
0064984A   61                     popa
0064984B   6C                     insb
0064984C   64EC                   in      al, dx
0064984E   0100                   add     [eax], eax
00649850   000400                 add     [eax+eax], al
00649853   115165                 adc     [ecx+$65], edx
00649856   50                     push    eax
00649857   726F                   jb      006498C8
00649859   6453                   push    ebx
0064985B   61                     popa
0064985C   6C                     insb
0064985D   6443                   inc     ebx
0064985F   4F                     dec     edi
00649860   44                     inc     esp
00649861   50                     push    eax
00649862   52                     push    edx
00649863   4F                     dec     edi
00649864   44                     inc     esp
00649865   F0                     lock
00649866   0100                   add     [eax], eax
00649868   000400                 add     [eax+eax], al
0064986B   105165                 adc     [ecx+$65], dl
0064986E   50                     push    eax
0064986F   726F                   jb      006498E0
00649871   6453                   push    ebx
00649873   61                     popa
00649874   6C                     insb
00649875   6446                   inc     esi
00649877   49                     dec     ecx
00649878   4C                     dec     esp
00649879   49                     dec     ecx
0064987A   41                     inc     ecx
0064987B   4C                     dec     esp
0064987C   F4                     hlt
0064987D   0100                   add     [eax], eax
0064987F   0003                   add     [ebx], al
00649881   0010                   add     [eax], dl
00649883   51                     push    ecx
00649884   6550                   push    eax
00649886   726F                   jb      006498F7
00649888   6453                   push    ebx
0064988A   61                     popa
0064988B   6C                     insb
0064988C   6441                   inc     ecx
0064988E   4E                     dec     esi
0064988F   4F                     dec     edi
00649890   4D                     dec     ebp
00649891   45                     inc     ebp
00649892   53                     push    ebx
00649893   F8                     clc
00649894   0100                   add     [eax], eax
00649896   000400                 add     [eax+eax], al
00649899   105165                 adc     [ecx+$65], dl
0064989C   50                     push    eax
0064989D   726F                   jb      0064990E
0064989F   6453                   push    ebx
006498A1   61                     popa
006498A2   6C                     insb
006498A3   644D                   dec     ebp
006498A5   4F                     dec     edi
006498A6   44                     inc     esp
006498A7   49                     dec     ecx
006498A8   46                     inc     esi
006498A9   59                     pop     ecx
006498AA   FC                     cld
006498AB   0100                   add     [eax], eax
006498AD   000500115165           add     [$65511100], al
006498B3   50                     push    eax
006498B4   726F                   jb      00649925
006498B6   6453                   push    ebx
006498B8   61                     popa
006498B9   6C                     insb
006498BA   6445                   inc     ebp
006498BC   53                     push    ebx
006498BD   54                     push    esp
006498BE   4F                     dec     edi
006498BF   51                     push    ecx
006498C0   55                     push    ebp
006498C1   45                     inc     ebp
006498C2   0002                   add     [edx], al
006498C4   0000                   add     [eax], al

006498C6   0500135165             add     eax, +$65511300
006498CB   50                     push    eax
006498CC   726F                   jb      0064993D
006498CE   6453                   push    ebx
006498D0   61                     popa
006498D1   6C                     insb
006498D2   6445                   inc     ebp
006498D4   53                     push    ebx
006498D5   54                     push    esp
006498D6   4F                     dec     edi
006498D7   51                     push    ecx
006498D8   43                     inc     ebx
006498D9   4F                     dec     edi
006498DA   52                     push    edx
006498DB   52                     push    edx
006498DC   0402                   add     al, +$02
006498DE   0000                   add     [eax], al

006498E0   0500105165             add     eax, +$65511000
006498E5   50                     push    eax
006498E6   726F                   jb      00649957
006498E8   6453                   push    ebx
006498EA   61                     popa
006498EB   6C                     insb
006498EC   6456                   push    esi
006498EE   45                     inc     ebp
006498EF   4E                     dec     esi
006498F0   44                     inc     esp
006498F1   41                     inc     ecx
006498F2   53                     push    ebx
006498F3   0802                   or      [edx], al
006498F5   0000                   add     [eax], al

006498F7   0500115165             add     eax, +$65511100
006498FC   50                     push    eax
006498FD   726F                   jb      0064996E
006498FF   6453                   push    ebx
00649901   61                     popa
00649902   6C                     insb
00649903   6443                   inc     ebx
00649905   4F                     dec     edi
00649906   4D                     dec     ebp
00649907   50                     push    eax
00649908   52                     push    edx
00649909   41                     inc     ecx
0064990A   53                     push    ebx
0064990B   0C02                   or      al, $02
0064990D   0000                   add     [eax], al

0064990F   0500165165             add     eax, +$65511600
00649914   50                     push    eax
00649915   726F                   jb      00649986
00649917   6453                   push    ebx
00649919   61                     popa
0064991A   6C                     insb
0064991B   6450                   push    eax
0064991D   52                     push    edx
0064991E   4F                     dec     edi
0064991F   44                     inc     esp
00649920   55                     push    ebp
00649921   43                     inc     ebx
00649922   41                     inc     ecx
00649923   4F                     dec     edi
00649924   45                     inc     ebp
00649925   4E                     dec     esi
00649926   54                     push    esp
00649927   52                     push    edx
00649928   1002                   adc     [edx], al
0064992A   0000                   add     [eax], al

0064992C   0500155165             add     eax, +$65511500
00649931   50                     push    eax
00649932   726F                   jb      006499A3
00649934   6453                   push    ebx
00649936   61                     popa
00649937   6C                     insb
00649938   6450                   push    eax
0064993A   52                     push    edx
0064993B   4F                     dec     edi
0064993C   44                     inc     esp
0064993D   55                     push    ebp
0064993E   43                     inc     ebx
0064993F   41                     inc     ecx
00649940   4F                     dec     edi
00649941   53                     push    ebx
00649942   41                     inc     ecx
00649943   49                     dec     ecx
00649944   1402                   adc     al, $02
00649946   0000                   add     [eax], al

00649948   0500145165             add     eax, +$65511400
0064994D   50                     push    eax
0064994E   726F                   jb      006499BF
00649950   6453                   push    ebx
00649952   61                     popa
00649953   6C                     insb
00649954   6454                   push    esp
00649956   52                     push    edx
00649957   41                     inc     ecx
00649958   4E                     dec     esi
00649959   53                     push    ebx
0064995A   46                     inc     esi
0064995B   45                     inc     ebp
0064995C   4E                     dec     esi
0064995D   54                     push    esp
0064995E   52                     push    edx
0064995F   1802                   sbb     [edx], al
00649961   0000                   add     [eax], al

00649963   0500135165             add     eax, +$65511300
00649968   50                     push    eax
00649969   726F                   jb      006499DA
0064996B   6453                   push    ebx
0064996D   61                     popa
0064996E   6C                     insb
0064996F   6454                   push    esp
00649971   52                     push    edx
00649972   41                     inc     ecx
00649973   4E                     dec     esi
00649974   53                     push    ebx
00649975   46                     inc     esi
00649976   53                     push    ebx
00649977   41                     inc     ecx
00649978   49                     dec     ecx
00649979   1C02                   sbb     al, $02
0064997B   0000                   add     [eax], al

0064997D   0500145165             add     eax, +$65511400
00649982   50                     push    eax
00649983   726F                   jb      006499F4
00649985   6453                   push    ebx
00649987   61                     popa
00649988   6C                     insb
00649989   644F                   dec     edi
0064998B   55                     push    ebp
0064998C   54                     push    esp
0064998D   52                     push    edx
0064998E   41                     inc     ecx
0064998F   53                     push    ebx
00649990   45                     inc     ebp
00649991   4E                     dec     esi
00649992   54                     push    esp
00649993   52                     push    edx
00649994   2002                   and     [edx], al
00649996   0000                   add     [eax], al

00649998   0500135165             add     eax, +$65511300
0064999D   50                     push    eax
0064999E   726F                   jb      00649A0F
006499A0   6453                   push    ebx
006499A2   61                     popa
006499A3   6C                     insb
006499A4   644F                   dec     edi
006499A6   55                     push    ebp
006499A7   54                     push    esp
006499A8   52                     push    edx
006499A9   41                     inc     ecx
006499AA   53                     push    ebx
006499AB   53                     push    ebx
006499AC   41                     inc     ecx
006499AD   49                     dec     ecx
006499AE   2402                   and     al, $02
006499B0   0000                   add     [eax], al

006499B2   0500145165             add     eax, +$65511400
006499B7   50                     push    eax
006499B8   726F                   jb      00649A29
006499BA   6453                   push    ebx
006499BC   61                     popa
006499BD   6C                     insb
006499BE   6443                   inc     ebx
006499C0   55                     push    ebp
006499C1   53                     push    ebx
006499C2   54                     push    esp
006499C3   4F                     dec     edi
006499C4   4D                     dec     ebp
006499C5   45                     inc     ebp
006499C6   44                     inc     esp
006499C7   49                     dec     ecx
006499C8   4F                     dec     edi
006499C9   2802                   sub     [edx], al
006499CB   0000                   add     [eax], al

006499CD   0500145165             add     eax, +$65511400
006499D2   50                     push    eax
006499D3   726F                   jb      00649A44
006499D5   6453                   push    ebx
006499D7   61                     popa
006499D8   6C                     insb
006499D9   6450                   push    eax
006499DB   52                     push    edx
006499DC   45                     inc     ebp
006499DD   43                     inc     ebx
006499DE   4F                     dec     edi
006499DF   4D                     dec     ebp
006499E0   45                     inc     ebp
006499E1   44                     inc     esp
006499E2   49                     dec     ecx
006499E3   4F                     dec     edi
006499E4   2C02                   sub     al, $02
006499E6   0000                   add     [eax], al

006499E8   0500135165             add     eax, +$65511300
006499ED   50                     push    eax
006499EE   726F                   jb      00649A5F
006499F0   6453                   push    ebx
006499F2   61                     popa
006499F3   6C                     insb
006499F4   6447                   inc     edi
006499F6   49                     dec     ecx
006499F7   52                     push    edx
006499F8   4F                     dec     edi
006499F9   4D                     dec     ebp
006499FA   45                     inc     ebp
006499FB   44                     inc     esp
006499FC   49                     dec     ecx
006499FD   4F                     dec     edi
006499FE   3002                   xor     [edx], al
00649A00   0000                   add     [eax], al

00649A02   0500135165             add     eax, +$65511300
00649A07   50                     push    eax
00649A08   726F                   jb      00649A79
00649A0A   6453                   push    ebx
00649A0C   61                     popa
00649A0D   6C                     insb
00649A0E   6456                   push    esi
00649A10   4C                     dec     esp
00649A11   52                     push    edx
00649A12   4F                     dec     edi
00649A13   52                     push    edx
00649A14   43                     inc     ebx
00649A15   41                     inc     ecx
00649A16   44                     inc     esp
00649A17   4F                     dec     edi
00649A18   3402                   xor     al, $02
00649A1A   0000                   add     [eax], al

00649A1C   0500135165             add     eax, +$65511300
00649A21   50                     push    eax
00649A22   726F                   jb      00649A93
00649A24   6453                   push    ebx
00649A26   61                     popa
00649A27   6C                     insb
00649A28   6451                   push    ecx
00649A2A   54                     push    esp
00649A2B   44                     inc     esp
00649A2C   4F                     dec     edi
00649A2D   52                     push    edx
00649A2E   43                     inc     ebx
00649A2F   41                     inc     ecx
00649A30   44                     inc     esp
00649A31   41                     inc     ecx
00649A32   3802                   cmp     [edx], al
00649A34   0000                   add     [eax], al

00649A36   0500115165             add     eax, +$65511100
00649A3B   50                     push    eax
00649A3C   726F                   jb      00649AAD
00649A3E   6453                   push    ebx
00649A40   61                     popa
00649A41   6C                     insb
00649A42   6443                   inc     ebx
00649A44   4F                     dec     edi
00649A45   54                     push    esp
00649A46   41                     inc     ecx
00649A47   43                     inc     ebx
00649A48   41                     inc     ecx
00649A49   4F                     dec     edi
00649A4A   3C02                   cmp     al, $02
00649A4C   0000                   add     [eax], al

00649A4E   0300                   add     eax, [eax]
00649A50   1551655072             adc     eax, $72506551
00649A55   6F                     outsd
00649A56   6453                   push    ebx
00649A58   61                     popa
00649A59   6C                     insb
00649A5A   644E                   dec     esi
00649A5C   55                     push    ebp
00649A5D   4D                     dec     ebp
00649A5E   43                     inc     ebx
00649A5F   4F                     dec     edi
00649A60   54                     push    esp
00649A61   41                     inc     ecx
00649A62   43                     inc     ebx
00649A63   4F                     dec     edi
00649A64   45                     inc     ebp
00649A65   53                     push    ebx
00649A66   40                     inc     eax
00649A67   0200                   add     al, byte ptr [eax]
00649A69   0007                   add     [edi], al
00649A6B   0012                   add     [edx], dl
00649A6D   51                     push    ecx
00649A6E   6550                   push    eax
00649A70   726F                   jb      00649AE1
00649A72   6453                   push    ebx
00649A74   61                     popa
00649A75   6C                     insb
00649A76   6463634D               arpl    fs:[ebx+$4D], sp
00649A7A   657341                 jnb     00649ABE
00649A7D   6E                     outsb
00649A7E   6F                     outsd
00649A7F   44                     inc     esp
00649A80   0200                   add     al, byte ptr [eax]
00649A82   0003                   add     [ebx], al
00649A84   001C51                 add     [ecx+edx*2], bl
00649A87   6550                   push    eax
00649A89   726F                   jb      00649AFA
00649A8B   6453                   push    ebx
00649A8D   61                     popa
00649A8E   6C                     insb
00649A8F   64636353               arpl    fs:[ebx+$53], sp
00649A93   657175                 jno     00649B0B
00649A96   656E                   outsb
00649A98   636961                 arpl    [ecx+$61], bp
00649A9B   47                     inc     edi
00649A9C   7261                   jb      00649AFF
00649A9E   6669636F4802           imul    sp, word ptr [ebx+$6F], $0248
00649AA4   0000                   add     [eax], al

00649AA6   0100                   add     [eax], eax
00649AA8   0A447350               or      al, byte ptr [ebx+esi*2+$50]
00649AAC   726F                   jb      00649B1D
00649AAE   6453                   push    ebx
00649AB0   61                     popa
00649AB1   6C                     insb
00649AB2   644C                   dec     esp
00649AB4   0200                   add     al, byte ptr [eax]
00649AB6   0001                   add     [ecx], al
00649AB8   0009                   add     [ecx], cl
00649ABA   44                     inc     esp
00649ABB   7350                   jnb     00649B0D
00649ABD   726F                   jb      00649B2E
00649ABF   644F                   dec     edi
00649AC1   627350                 bound   esi, qword ptr [ebx+$50]
00649AC4   0200                   add     al, byte ptr [eax]
00649AC6   0002                   add     [edx], al
00649AC8   0009                   add     [ecx], cl
00649ACA   51                     push    ecx
00649ACB   6550                   push    eax
00649ACD   726F                   jb      00649B3E
00649ACF   644F                   dec     edi
00649AD1   627354                 bound   esi, qword ptr [ebx+$54]
00649AD4   0200                   add     al, byte ptr [eax]
00649AD6   000400                 add     [eax+eax], al
00649AD9   105165                 adc     [ecx+$65], dl
00649ADC   50                     push    eax
00649ADD   726F                   jb      00649B4E
00649ADF   644F                   dec     edi
00649AE1   627343                 bound   esi, qword ptr [ebx+$43]
00649AE4   4F                     dec     edi
00649AE5   44                     inc     esp
00649AE6   50                     push    eax
00649AE7   52                     push    edx
00649AE8   4F                     dec     edi
00649AE9   44                     inc     esp
00649AEA   58                     pop     eax
00649AEB   0200                   add     al, byte ptr [eax]
00649AED   000400                 add     [eax+eax], al
00649AF0   0F51                   DB  $0F, $51  //
00649AF2   6550                   push    eax
00649AF4   726F                   jb      00649B65
00649AF6   644F                   dec     edi
00649AF8   627346                 bound   esi, qword ptr [ebx+$46]
00649AFB   49                     dec     ecx
00649AFC   4C                     dec     esp
00649AFD   49                     dec     ecx
00649AFE   41                     inc     ecx
00649AFF   4C                     dec     esp
00649B00   5C                     pop     esp
00649B01   0200                   add     al, byte ptr [eax]
00649B03   000400                 add     [eax+eax], al
00649B06   0F51                   DB  $0F, $51  //
00649B08   6550                   push    eax
00649B0A   726F                   jb      00649B7B
00649B0C   644F                   dec     edi
00649B0E   627343                 bound   esi, qword ptr [ebx+$43]
00649B11   4F                     dec     edi
00649B12   44                     inc     esp
00649B13   4F                     dec     edi
00649B14   42                     inc     edx
00649B15   53                     push    ebx
00649B16   60                     pusha
00649B17   0200                   add     al, byte ptr [eax]
00649B19   000400                 add     [eax+eax], al
00649B1C   1451                   adc     al, $51
00649B1E   6550                   push    eax
00649B20   726F                   jb      00649B91
00649B22   644F                   dec     edi
00649B24   627341                 bound   esi, qword ptr [ebx+$41]
00649B27   54                     push    esp
00649B28   55                     push    ebp
00649B29   41                     inc     ecx
00649B2A   4C                     dec     esp
00649B2B   49                     dec     ecx
00649B2C   5A                     pop     edx
00649B2D   41                     inc     ecx
00649B2E   43                     inc     ebx
00649B2F   41                     inc     ecx
00649B30   4F                     dec     edi
00649B31   640200                 add     al, byte ptr fs:[eax]
00649B34   0002                   add     [edx], al
00649B36   000A                   add     [edx], cl
00649B38   51                     push    ecx
00649B39   6550                   push    eax
00649B3B   726F                   jb      00649BAC
00649B3D   6449                   dec     ecx
00649B3F   6D                     insd
00649B40   706F                   jo      00649BB1
00649B42   6802000004             push    $04000002
00649B47   0011                   add     [ecx], dl
00649B49   51                     push    ecx
00649B4A   6550                   push    eax
00649B4C   726F                   jb      00649BBD
00649B4E   6449                   dec     ecx
00649B50   6D                     insd
00649B51   706F                   jo      00649BC2
00649B53   43                     inc     ebx
00649B54   4F                     dec     edi
00649B55   44                     inc     esp
00649B56   50                     push    eax
00649B57   52                     push    edx
00649B58   4F                     dec     edi
00649B59   44                     inc     esp
00649B5A   6C                     insb
00649B5B   0200                   add     al, byte ptr [eax]
00649B5D   000400                 add     [eax+eax], al
00649B60   105165                 adc     [ecx+$65], dl
00649B63   50                     push    eax
00649B64   726F                   jb      00649BD5
00649B66   6449                   dec     ecx
00649B68   6D                     insd
00649B69   706F                   jo      00649BDA
00649B6B   46                     inc     esi
00649B6C   49                     dec     ecx
00649B6D   4C                     dec     esp
00649B6E   49                     dec     ecx
00649B6F   41                     inc     ecx
00649B70   4C                     dec     esp
00649B71   7002                   jo      00649B75
00649B73   0000                   add     [eax], al

00649B75   0400                   add     al, +$00
00649B77   115165                 adc     [ecx+$65], edx
00649B7A   50                     push    eax
00649B7B   726F                   jb      00649BEC
00649B7D   6449                   dec     ecx
00649B7F   6D                     insd
00649B80   706F                   jo      00649BF1
00649B82   49                     dec     ecx
00649B83   4D                     dec     ebp
00649B84   50                     push    eax
00649B85   4F                     dec     edi
00649B86   53                     push    ebx
00649B87   54                     push    esp
00649B88   4F                     dec     edi
00649B89   7402                   jz      00649B8D
00649B8B   0000                   add     [eax], al

00649B8D   0500125165             add     eax, +$65511200
00649B92   50                     push    eax
00649B93   726F                   jb      00649C04
00649B95   6449                   dec     ecx
00649B97   6D                     insd
00649B98   706F                   jo      00649C09
00649B9A   41                     inc     ecx
00649B9B   4C                     dec     esp
00649B9C   49                     dec     ecx
00649B9D   51                     push    ecx
00649B9E   55                     push    ebp
00649B9F   4F                     dec     edi
00649BA0   54                     push    esp
00649BA1   41                     inc     ecx
00649BA2   7802                   js      00649BA6
00649BA4   0000                   add     [eax], al

00649BA6   0500125165             add     eax, +$65511200
00649BAB   50                     push    eax
00649BAC   726F                   jb      00649C1D
00649BAE   6449                   dec     ecx
00649BB0   6D                     insd
00649BB1   706F                   jo      00649C22
00649BB3   50                     push    eax
00649BB4   52                     push    edx
00649BB5   43                     inc     ebx
00649BB6   52                     push    edx
00649BB7   45                     inc     ebp
00649BB8   44                     inc     esp
00649BB9   55                     push    ebp
00649BBA   43                     inc     ebx
00649BBB   7C02                   jl      00649BBF
00649BBD   0000                   add     [eax], al

00649BBF   0400                   add     al, +$00
00649BC1   1551655072             adc     eax, $72506551
00649BC6   6F                     outsd
00649BC7   6449                   dec     ecx
00649BC9   6D                     insd
00649BCA   706F                   jo      00649C3B
00649BCC   41                     inc     ecx
00649BCD   54                     push    esp
00649BCE   55                     push    ebp
00649BCF   41                     inc     ecx
00649BD0   4C                     dec     esp
00649BD1   49                     dec     ecx
00649BD2   5A                     pop     edx
00649BD3   41                     inc     ecx
00649BD4   43                     inc     ebx
00649BD5   41                     inc     ecx
00649BD6   4F                     dec     edi
00649BD7   800200                 add     byte ptr [edx], $00
00649BDA   000500135165           add     [$65511300], al
00649BE0   50                     push    eax
00649BE1   726F                   jb      00649C52
00649BE3   6449                   dec     ecx
00649BE5   6D                     insd
00649BE6   706F                   jo      00649C57
00649BE8   50                     push    eax
00649BE9   52                     push    edx
00649BEA   43                     inc     ebx
00649BEB   52                     push    edx
00649BEC   45                     inc     ebp
00649BED   44                     inc     esp
00649BEE   55                     push    ebp
00649BEF   43                     inc     ebx
00649BF0   37                     aaa
00649BF1   8402                   test    [edx], al
00649BF3   0000                   add     [eax], al

00649BF5   0500145165             add     eax, +$65511400
00649BFA   50                     push    eax
00649BFB   726F                   jb      00649C6C
00649BFD   6449                   dec     ecx
00649BFF   6D                     insd
00649C00   706F                   jo      00649C71
00649C02   50                     push    eax
00649C03   52                     push    edx
00649C04   43                     inc     ebx
00649C05   52                     push    edx
00649C06   45                     inc     ebp
00649C07   44                     inc     esp
00649C08   55                     push    ebp
00649C09   43                     inc     ebx
00649C0A   3132                   xor     [edx], esi
00649C0C   8802                   mov     [edx], al
00649C0E   0000                   add     [eax], al

00649C10   0400                   add     al, +$00
00649C12   17                     pop     ss
00649C13   51                     push    ecx
00649C14   6550                   push    eax
00649C16   726F                   jb      00649C87
00649C18   6449                   dec     ecx
00649C1A   6D                     insd
00649C1B   706F                   jo      00649C8C
00649C1D   52                     push    edx
00649C1E   45                     inc     ebp
00649C1F   44                     inc     esp
00649C20   55                     push    ebp
00649C21   43                     inc     ebx
00649C22   54                     push    esp
00649C23   49                     dec     ecx
00649C24   50                     push    eax
00649C25   4F                     dec     edi
00649C26   45                     inc     ebp
00649C27   4D                     dec     ebp
00649C28   50                     push    eax
00649C29   52                     push    edx
00649C2A   8C02                   mov     word ptr [edx], es
00649C2C   0000                   add     [eax], al

00649C2E   0100                   add     [eax], eax
00649C30   0A447350               or      al, byte ptr [ebx+esi*2+$50]
00649C34   726F                   jb      00649CA5
00649C36   6449                   dec     ecx
00649C38   6D                     insd
00649C39   706F                   jo      00649CAA
00649C3B   90                     nop
00649C3C   0200                   add     al, byte ptr [eax]
00649C3E   0002                   add     [edx], al
00649C40   0008                   add     [eax], cl
00649C42   51                     push    ecx
00649C43   6546                   inc     esi
00649C45   6F                     outsd
00649C46   726D                   jb      00649CB5
00649C48   61                     popa
00649C49   7394                   jnb     00649BDF
00649C4B   0200                   add     al, byte ptr [eax]
00649C4D   0001                   add     [ecx], al
00649C4F   0008                   add     [eax], cl
00649C51   44                     inc     esp
00649C52   7346                   jnb     00649C9A
00649C54   6F                     outsd
00649C55   726D                   jb      00649CC4
00649C57   61                     popa
00649C58   7398                   jnb     00649BF2
00649C5A   0200                   add     al, byte ptr [eax]
00649C5C   000400                 add     [eax+eax], al
00649C5F   105165                 adc     [ecx+$65], dl
00649C62   46                     inc     esi
00649C63   6F                     outsd
00649C64   726D                   jb      00649CD3
00649C66   61                     popa
00649C67   7354                   jnb     00649CBD
00649C69   49                     dec     ecx
00649C6A   50                     push    eax
00649C6B   4F                     dec     edi
00649C6C   50                     push    eax
00649C6D   47                     inc     edi
00649C6E   54                     push    esp
00649C6F   4F                     dec     edi
00649C70   9C                     pushf   
00649C71   0200                   add     al, byte ptr [eax]
00649C73   000400                 add     [eax+eax], al
00649C76   115165                 adc     [ecx+$65], edx
00649C79   46                     inc     esi
00649C7A   6F                     outsd
00649C7B   726D                   jb      00649CEA
00649C7D   61                     popa
00649C7E   7344                   jnb     00649CC4
00649C80   45                     inc     ebp
00649C81   53                     push    ebx
00649C82   43                     inc     ebx
00649C83   52                     push    edx
00649C84   49                     dec     ecx
00649C85   43                     inc     ebx
00649C86   41                     inc     ecx
00649C87   4F                     dec     edi
00649C88   A002000004             mov     al, byte ptr [$04000002]
00649C8D   000C51                 add     [ecx+edx*2], cl
00649C90   6546                   inc     esi
00649C92   6F                     outsd
00649C93   726D                   jb      00649D02
00649C95   61                     popa
00649C96   7354                   jnb     00649CEC
00649C98   49                     dec     ecx
00649C99   50                     push    eax
00649C9A   4F                     dec     edi
00649C9B   A4                     movsb
00649C9C   0200                   add     al, byte ptr [eax]
00649C9E   000400                 add     [eax+eax], al
00649CA1   155165466F             adc     eax, $6F466551
00649CA6   726D                   jb      00649D15
00649CA8   61                     popa
00649CA9   7343                   jnb     00649CEE
00649CAB   4C                     dec     esp
00649CAC   41                     inc     ecx
00649CAD   53                     push    ebx
00649CAE   53                     push    ebx
00649CAF   49                     dec     ecx
00649CB0   46                     inc     esi
00649CB1   49                     dec     ecx
00649CB2   43                     inc     ebx
00649CB3   41                     inc     ecx
00649CB4   43                     inc     ebx
00649CB5   41                     inc     ecx
00649CB6   4F                     dec     edi
00649CB7   A802                   test    al, $02
00649CB9   0000                   add     [eax], al

00649CBB   0400                   add     al, +$00
00649CBD   135165                 adc     edx, [ecx+$65]
00649CC0   46                     inc     esi
00649CC1   6F                     outsd
00649CC2   726D                   jb      00649D31
00649CC4   61                     popa
00649CC5   7341                   jnb     00649D08
00649CC7   54                     push    esp
00649CC8   55                     push    ebp
00649CC9   41                     inc     ecx
00649CCA   4C                     dec     esp
00649CCB   49                     dec     ecx
00649CCC   5A                     pop     edx
00649CCD   41                     inc     ecx
00649CCE   43                     inc     ebx
00649CCF   41                     inc     ecx
00649CD0   4F                     dec     edi
00649CD1   AC                     lodsb
00649CD2   0200                   add     al, byte ptr [eax]
00649CD4   0002                   add     [edx], al
00649CD6   0007                   add     [edi], al
00649CD8   51                     push    ecx
00649CD9   6547                   inc     edi
00649CDB   657261                 jb      00649D3F
00649CDE   6C                     insb
00649CDF   B002                   mov     al, $02
00649CE1   0000                   add     [eax], al

00649CE3   0200                   add     al, byte ptr [eax]
00649CE5   0C51                   or      al, $51
00649CE7   6546                   inc     esi
00649CE9   324365                 xor     al, byte ptr [ebx+$65]
00649CEC   7046                   jo      00649D34
00649CEE   61                     popa
00649CEF   697861B4020000         imul    edi, [eax+$61], $000002B4
00649CF6   0100                   add     [eax], eax
00649CF8   0C44                   or      al, $44
00649CFA   7346                   jnb     00649D42
00649CFC   324365                 xor     al, byte ptr [ebx+$65]
00649CFF   7046                   jo      00649D47
00649D01   61                     popa
00649D02   697861B8020000         imul    edi, [eax+$61], $000002B8
00649D09   0200                   add     al, byte ptr [eax]
00649D0B   07                     pop     es
00649D0C   51                     push    ecx
00649D0D   6546                   inc     esi
00649D0F   324365                 xor     al, byte ptr [ebx+$65]
00649D12   70BC                   jo      00649CD0
00649D14   0200                   add     al, byte ptr [eax]
00649D16   0001                   add     [ecx], al
00649D18   0007                   add     [edi], al
00649D1A   44                     inc     esp
00649D1B   7346                   jnb     00649D63
00649D1D   324365                 xor     al, byte ptr [ebx+$65]
00649D20   7010                   jo      00649D32
00649D22   001B                   add     [ebx], bl
00649D24   0040A7                 add     [eax-$59], al
00649D27   64001451               add     fs:[ecx+edx*2], dl
00649D2B   6550                   push    eax
00649D2D   726F                   jb      00649D9E
00649D2F   6446                   inc     esi
00649D31   696C6943616C6346       imul    ebp, [ecx+ebp*2+$43], $46636C61
00649D39   69656C64731B00         imul    esp, [ebp+$6C], $001B7364
00649D40   C0A76400145165         shl     byte ptr [edi+$51140064], $65
00649D47   50                     push    eax
00649D48   726F                   jb      00649DB9
00649D4A   6453                   push    ebx
00649D4C   61                     popa
00649D4D   6C                     insb
00649D4E   6443                   inc     ebx
00649D50   61                     popa
00649D51   6C                     insb
00649D52   634669                 arpl    [esi+$69], ax
00649D55   656C                   insb
00649D57   647323                 jnb     00649D7D
00649D5A   0064A964               add     [ecx+ebp*4+$64], ah
00649D5E   001C51                 add     [ecx+edx*2], bl
00649D61   6550                   push    eax
00649D63   726F                   jb      00649DD4
00649D65   6455                   push    ebp
00649D67   6E                     outsb
00649D68   69646363566C7254       imul    esp, [ebx+$63], $54726C56
00649D70   61                     popa
00649D71   62656C                 bound   esp, qword ptr [ebp+$6C]
00649D74   61                     popa
00649D75   47                     inc     edi
00649D76   657454                 jz      00649DCD
00649D79   657874                 js      00649DF0
00649D7C   2000                   and     [eax], al
00649D7E   E0A9                   loopn   -$57
00649D80   640019                 add     fs:[ecx], bl
00649D83   51                     push    ecx
00649D84   6550                   push    eax
00649D86   726F                   jb      00649DF7
00649D88   6455                   push    ebp
00649D8A   6E                     outsb
00649D8B   69646363566C724D       imul    esp, [ebx+$63], $4D726C56
00649D93   696C476574546578       imul    ebp, [edi+eax*2+$65], $78655474
00649D9B   7423                   jz      00649DC0
00649D9D   005CAA64               add     [edx+ebp*4+$64], bl
00649DA1   001C51                 add     [ecx+edx*2], bl
00649DA4   6550                   push    eax
00649DA6   726F                   jb      00649E17
00649DA8   6455                   push    ebp
00649DAA   6E                     outsb
00649DAB   69646363566C7243       imul    esp, [ebx+$63], $43726C56
00649DB3   6F                     outsd
00649DB4   6D                     insd
00649DB5   49                     dec     ecx
00649DB6   50                     push    eax
00649DB7   49                     dec     ecx
00649DB8   47                     inc     edi
00649DB9   657454                 jz      00649E10
00649DBC   657874                 js      00649E33
00649DBF   2100                   and     [eax], eax
00649DC1   D8AA64001A51           fsubr   dword ptr [edx+$511A0064]
00649DC7   6550                   push    eax
00649DC9   726F                   jb      00649E3A
00649DCB   6455                   push    ebp
00649DCD   6E                     outsb
00649DCE   69646363566C7255       imul    esp, [ebx+$63], $55726C56
00649DD6   6E                     outsb
00649DD7   6974476574546578       imul    esi, [edi+eax*2+$65], $78655474
00649DDF   7427                   jz      00649E08
00649DE1   0054AB64               add     [ebx+ebp*4+$64], dl
00649DE5   0020                   add     [eax], ah
00649DE7   51                     push    ecx
00649DE8   6550                   push    eax
00649DEA   726F                   jb      00649E5B
00649DEC   6455                   push    ebp
00649DEE   6E                     outsb
00649DEF   69646363566C7255       imul    esp, [ebx+$63], $55726C56
00649DF7   6E                     outsb
00649DF8   6974436F6D495049       imul    esi, [ebx+eax*2+$6F], $4950496D
00649E00   47                     inc     edi
00649E01   657454                 jz      00649E58
00649E04   657874                 js      00649E7B
00649E07   1E                     push    ds
00649E08   00D0                   add     al, dl
00649E0A   AB                     stosd
00649E0B   640017                 add     fs:[edi], dl
00649E0E   51                     push    ecx
00649E0F   6550                   push    eax
00649E11   726F                   jb      00649E82
00649E13   6455                   push    ebp
00649E15   6E                     outsb
00649E16   69644D415247454D       imul    esp, [ebp+ecx*2+$41], $4D454752
00649E1E   47                     inc     edi
00649E1F   657454                 jz      00649E76
00649E22   657874                 js      00649E99
00649E25   2800                   sub     [eax], al
00649E27   3CAC                   cmp     al, $AC
00649E29   640021                 add     fs:[ecx], ah
00649E2C   51                     push    ecx
00649E2D   6550                   push    eax
00649E2F   726F                   jb      00649EA0
00649E31   6446                   inc     esi
00649E33   696C696363455354       imul    ebp, [ecx+ebp*2+$63], $54534563
00649E3B   4F                     dec     edi
00649E3C   51                     push    ecx
00649E3D   50                     push    eax
00649E3E   52                     push    edx
00649E3F   4F                     dec     edi
00649E40   4A                     dec     edx
00649E41   45                     inc     ebp
00649E42   54                     push    esp
00649E43   41                     inc     ecx
00649E44   44                     inc     esp
00649E45   4F                     dec     edi
00649E46   47                     inc     edi
00649E47   657454                 jz      00649E9E
00649E4A   657874                 js      00649EC1
00649E4D   2100                   and     [eax], eax
00649E4F   B8AC64001A             mov     eax, $1A0064AC
00649E54   51                     push    ecx
00649E55   6550                   push    eax
00649E57   726F                   jb      00649EC8
00649E59   6446                   inc     esi
00649E5B   696C694553544F51       imul    ebp, [ecx+ebp*2+$45], $514F5453
00649E63   43                     inc     ebx
00649E64   4F                     dec     edi
00649E65   52                     push    edx
00649E66   52                     push    edx
00649E67   47                     inc     edi
00649E68   657454                 jz      00649EBF
00649E6B   657874                 js      00649EE2
00649E6E   1F                     pop     ds
00649E6F   0034AD64001851         add     [$51180064+ebp*4], dh
00649E76   6550                   push    eax
00649E78   726F                   jb      00649EE9
00649E7A   6446                   inc     esi
00649E7C   696C6952454D4553       imul    ebp, [ecx+ebp*2+$52], $53454D45
00649E84   53                     push    ebx
00649E85   41                     inc     ecx
00649E86   47                     inc     edi
00649E87   657454                 jz      00649EDE
00649E8A   657874                 js      00649F01
00649E8D   2000                   and     [eax], al
00649E8F   B0AD                   mov     al, $AD
00649E91   640019                 add     fs:[ecx], bl
00649E94   51                     push    ecx
00649E95   6550                   push    eax
00649E97   726F                   jb      00649F08
00649E99   6446                   inc     esi
00649E9B   696C694152454345       imul    ebp, [ecx+ebp*2+$41], $45434552
00649EA3   42                     inc     edx
00649EA4   45                     inc     ebp
00649EA5   52                     push    edx
00649EA6   47                     inc     edi
00649EA7   657454                 jz      00649EFE
00649EAA   657874                 js      00649F21
00649EAD   2100                   and     [eax], eax
00649EAF   2CAE                   sub     al, $AE
00649EB1   64001A                 add     fs:[edx], bl
00649EB4   51                     push    ecx
00649EB5   6550                   push    eax
00649EB7   726F                   jb      00649F28
00649EB9   6446                   inc     esi
00649EBB   696C6941454E5452       imul    ebp, [ecx+ebp*2+$41], $52544E45
00649EC3   45                     inc     ebp
00649EC4   47                     inc     edi
00649EC5   41                     inc     ecx
00649EC6   52                     push    edx
00649EC7   47                     inc     edi
00649EC8   657454                 jz      00649F1F
00649ECB   657874                 js      00649F42
00649ECE   2400                   and     al, $00
00649ED0   A8AE                   test    al, $AE
00649ED2   64001D51655072         add     fs:[$72506551], bl
00649ED9   6F                     outsd
00649EDA   6446                   inc     esi
00649EDC   696C694553544F51       imul    ebp, [ecx+ebp*2+$45], $514F5453
00649EE4   55                     push    ebp
00649EE5   45                     inc     ebp
00649EE6   41                     inc     ecx
00649EE7   54                     push    esp
00649EE8   55                     push    ebp
00649EE9   41                     inc     ecx
00649EEA   4C                     dec     esp
00649EEB   47                     inc     edi
00649EEC   657454                 jz      00649F43
00649EEF   657874                 js      00649F66
00649EF2   1F                     pop     ds
00649EF3   0024AF                 add     [edi+ebp*4], ah
00649EF6   640018                 add     fs:[eax], bl
00649EF9   51                     push    ecx
00649EFA   6550                   push    eax
00649EFC   726F                   jb      00649F6D
00649EFE   6455                   push    ebp
00649F00   6E                     outsb
00649F01   6964564C52554E49       imul    esp, [esi+edx*2+$4C], $494E5552
00649F09   54                     push    esp
00649F0A   47                     inc     edi
00649F0B   657454                 jz      00649F62
00649F0E   657874                 js      00649F85
00649F11   2000                   and     [eax], al
00649F13   A0AF640019             mov     al, byte ptr [$190064AF]
00649F18   51                     push    ecx
00649F19   6550                   push    eax
00649F1B   726F                   jb      00649F8C
00649F1D   6455                   push    ebp
00649F1F   6E                     outsb
00649F20   6964564C52435553       imul    esp, [esi+edx*2+$4C], $53554352
00649F28   54                     push    esp
00649F29   4F                     dec     edi
00649F2A   47                     inc     edi
00649F2B   657454                 jz      00649F82
00649F2E   657874                 js      00649FA5
00649F31   03545165               add     edx, [ecx+edx*2+$65]
00649F35   0B00                   or      eax, [eax]
00649F37   3820                   cmp     [eax], ah
00649F39   56                     push    esi
00649F3A   0064A84D               add     [eax+ebp*4+$4D], ah
00649F3E   008CA959004475         add     [ecx+ebp*4+$75440059], cl
00649F45   4D                     dec     ebp
00649F46   0018                   add     [eax], bl
00649F48   97                     xchg    eax, edi
00649F49   55                     push    ebp
00649F4A   00A87C4D00E8           add     [eax+$E8004D7C], ch
00649F50   764D                   jbe     00649F9F
00649F52   0008                   add     [eax], cl
00649F54   704D                   jo      00649FA3
00649F56   00CC                   add     ah, cl
00649F58   814D0048924D00         or      dword ptr [ebp+$00], $004D9248
00649F5F   80904D0090689F         adc     byte ptr [eax+$6890004D], $9F
00649F66   640007                 add     fs:[edi], al
00649F69   03545165               add     edx, [ecx+edx*2+$65]
00649F6D   CC                     int     3
00649F6E   8E6400E4               mov     fs, word ptr [eax+eax-$1C]
00649F72   124200                 adc     al, byte ptr [edx+$00]
00649F75   0500045564             add     eax, +$64550400
00649F7A   6D                     insd
00649F7B   51                     push    ecx
00649F7C   0000                   add     [eax], al

00649F7E   8BC0                   mov     eax, eax
00649F80   55                     push    ebp
00649F81   8BEC                   mov     ebp, esp
00649F83   83C4E8                 add     esp, -$18
00649F86   53                     push    ebx
00649F87   56                     push    esi
00649F88   57                     push    edi
00649F89   33DB                   xor     ebx, ebx
00649F8B   895DE8                 mov     [ebp-$18], ebx
00649F8E   895DEC                 mov     [ebp-$14], ebx
00649F91   895DF0                 mov     [ebp-$10], ebx
00649F94   894DF8                 mov     [ebp-$08], ecx
00649F97   8955FC                 mov     [ebp-$04], edx
00649F9A   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00649F9D   E8AAB9DBFF             call    0040594C
00649FA2   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
00649FA5   E8A2B9DBFF             call    0040594C
00649FAA   33C0                   xor     eax, eax
00649FAC   55                     push    ebp
00649FAD   686FA16400             push    $0064A16F

***** TRY
|
00649FB2   64FF30                 push    dword ptr fs:[eax]
00649FB5   648920                 mov     fs:[eax], esp
00649FB8   C645F700               mov     byte ptr [ebp-$09], $00
00649FBC   A188DD7D00             mov     eax, dword ptr [$007DDD88]
00649FC1   8B407C                 mov     eax, [eax+$7C]

* Reference to: DB.TDataSet.Close(TDataSet);
|
00649FC4   E897E9E9FF             call    004E8960
00649FC9   A188DD7D00             mov     eax, dword ptr [$007DDD88]
00649FCE   8B407C                 mov     eax, [eax+$7C]
00649FD1   8B9850020000           mov     ebx, [eax+$0250]
00649FD7   8BC3                   mov     eax, ebx
00649FD9   8B10                   mov     edx, [eax]
00649FDB   FF5244                 call    dword ptr [edx+$44]

* Possible String Reference to: 'SELECT'
|
00649FDE   BA88A16400             mov     edx, $0064A188
00649FE3   8BC3                   mov     eax, ebx
00649FE5   8B08                   mov     ecx, [eax]
00649FE7   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'PRODLOC.CODPROD,'
|
00649FEA   BA98A16400             mov     edx, $0064A198
00649FEF   8BC3                   mov     eax, ebx
00649FF1   8B08                   mov     ecx, [eax]
00649FF3   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'PRODLOC.FILIAL,'
|
00649FF6   BAB4A16400             mov     edx, $0064A1B4
00649FFB   8BC3                   mov     eax, ebx
00649FFD   8B08                   mov     ecx, [eax]
00649FFF   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'PRODLOC.CODSUBLOCAL,'
|
0064A002   BACCA16400             mov     edx, $0064A1CC
0064A007   8BC3                   mov     eax, ebx
0064A009   8B08                   mov     ecx, [eax]
0064A00B   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'PRODLOC.SALDOESTOQUE,'
|
0064A00E   BAECA16400             mov     edx, $0064A1EC
0064A013   8BC3                   mov     eax, ebx
0064A015   8B08                   mov     ecx, [eax]
0064A017   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'PRODLOC.PADRAO,'
|
0064A01A   BA0CA26400             mov     edx, $0064A20C
0064A01F   8BC3                   mov     eax, ebx
0064A021   8B08                   mov     ecx, [eax]
0064A023   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'PRODLOC.ATUALIZACAO,'
|
0064A026   BA24A26400             mov     edx, $0064A224
0064A02B   8BC3                   mov     eax, ebx
0064A02D   8B08                   mov     ecx, [eax]
0064A02F   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'SUBLOCAL.DESCRICAO LKSUBLOCAL'
|
0064A032   BA44A26400             mov     edx, $0064A244
0064A037   8BC3                   mov     eax, ebx
0064A039   8B08                   mov     ecx, [eax]
0064A03B   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'FROM PRODLOC'
|
0064A03E   BA6CA26400             mov     edx, $0064A26C
0064A043   8BC3                   mov     eax, ebx
0064A045   8B08                   mov     ecx, [eax]
0064A047   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'LEFT OUTER JOIN SUBLOCAL '
|
0064A04A   BA84A26400             mov     edx, $0064A284
0064A04F   8BC3                   mov     eax, ebx
0064A051   8B08                   mov     ecx, [eax]
0064A053   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'ON (PRODLOC.CODSUBLOCAL = SUBLOCAL.
|                                CODSUBLOCAL)'
|
0064A056   BAA8A26400             mov     edx, $0064A2A8
0064A05B   8BC3                   mov     eax, ebx
0064A05D   8B08                   mov     ecx, [eax]
0064A05F   FF5138                 call    dword ptr [ecx+$38]
0064A062   837DF800               cmp     dword ptr [ebp-$08], +$00
0064A066   741A                   jz      0064A082
0064A068   8D45F0                 lea     eax, [ebp-$10]
0064A06B   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: ' WHERE '
|
0064A06E   BAE0A26400             mov     edx, $0064A2E0

* Reference to: System.@LStrCat3;
|
0064A073   E830B7DBFF             call    004057A8
0064A078   8B55F0                 mov     edx, [ebp-$10]
0064A07B   8BC3                   mov     eax, ebx
0064A07D   8B08                   mov     ecx, [eax]
0064A07F   FF5138                 call    dword ptr [ecx+$38]
0064A082   837DFC00               cmp     dword ptr [ebp-$04], +$00
0064A086   741A                   jz      0064A0A2
0064A088   8D45EC                 lea     eax, [ebp-$14]
0064A08B   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: ' ORDER BY '
|
0064A08E   BAF0A26400             mov     edx, $0064A2F0

* Reference to: System.@LStrCat3;
|
0064A093   E810B7DBFF             call    004057A8
0064A098   8B55EC                 mov     edx, [ebp-$14]
0064A09B   8BC3                   mov     eax, ebx
0064A09D   8B08                   mov     ecx, [eax]
0064A09F   FF5138                 call    dword ptr [ecx+$38]
0064A0A2   A168B67D00             mov     eax, dword ptr [$007DB668]
0064A0A7   8B00                   mov     eax, [eax]
0064A0A9   66BAEFFF               mov     dx, $FFEF

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0064A0AD   E87A9CE6FF             call    004B3D2C
0064A0B2   33C0                   xor     eax, eax
0064A0B4   55                     push    ebp
0064A0B5   6840A16400             push    $0064A140

***** TRY
|
0064A0BA   64FF30                 push    dword ptr fs:[eax]
0064A0BD   648920                 mov     fs:[eax], esp
0064A0C0   33C0                   xor     eax, eax
0064A0C2   55                     push    ebp
0064A0C3   68E9A06400             push    $0064A0E9

***** TRY
|
0064A0C8   64FF30                 push    dword ptr fs:[eax]
0064A0CB   648920                 mov     fs:[eax], esp
0064A0CE   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A0D3   8B407C                 mov     eax, [eax+$7C]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A0D6   E879E8E9FF             call    004E8954
0064A0DB   C645F701               mov     byte ptr [ebp-$09], $01
0064A0DF   33C0                   xor     eax, eax
0064A0E1   5A                     pop     edx
0064A0E2   59                     pop     ecx
0064A0E3   59                     pop     ecx
0064A0E4   648910                 mov     fs:[eax], edx
0064A0E7   EB3B                   jmp     0064A124

* Reference to: System.@HandleOnException;
|
0064A0E9   E9C2AADBFF             jmp     00404BB0
0064A0EE   0100                   add     [eax], eax
0064A0F0   0000                   add     [eax], al
0064A0F2   40                     inc     eax
0064A0F3   95                     xchg    eax, ebp
0064A0F4   40                     inc     eax
0064A0F5   00FA                   add     dl, bh
0064A0F7   A0640089C3             mov     al, byte ptr [$C3890064]
0064A0FC   6A00                   push    $00
0064A0FE   8B4B04                 mov     ecx, [ebx+$04]
0064A101   8D45E8                 lea     eax, [ebp-$18]

* Possible String Reference to: 'Erro ao abrir tabela de Locais!'
|
0064A104   BA04A36400             mov     edx, $0064A304

* Reference to: System.@LStrCat3;
|
0064A109   E89AB6DBFF             call    004057A8
0064A10E   8B45E8                 mov     eax, [ebp-$18]
0064A111   668B0D28A36400         mov     cx, word ptr [$0064A328]
0064A118   B201                   mov     dl, $01

|
0064A11A   E80D9ADFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0064A11F   E88CADDBFF             call    00404EB0

****** END
|
0064A124   33C0                   xor     eax, eax
0064A126   5A                     pop     edx
0064A127   59                     pop     ecx
0064A128   59                     pop     ecx
0064A129   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064A12C   6847A16400             push    $0064A147
0064A131   A168B67D00             mov     eax, dword ptr [$007DB668]
0064A136   8B00                   mov     eax, [eax]
0064A138   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0064A13A   E8ED9BE6FF             call    004B3D2C
0064A13F   C3                     ret


* Reference to: System.@HandleFinally;
|
0064A140   E9F3ABDBFF             jmp     00404D38
0064A145   EBEA                   jmp     0064A131

****** END
|
0064A147   33C0                   xor     eax, eax
0064A149   5A                     pop     edx
0064A14A   59                     pop     ecx
0064A14B   59                     pop     ecx
0064A14C   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064A14F   6876A16400             push    $0064A176
0064A154   8D45E8                 lea     eax, [ebp-$18]
0064A157   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064A15C   E85FB3DBFF             call    004054C0
0064A161   8D45F8                 lea     eax, [ebp-$08]
0064A164   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064A169   E852B3DBFF             call    004054C0
0064A16E   C3                     ret

*)
end;

end.