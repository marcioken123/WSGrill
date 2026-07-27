unit udm3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet;
  
type
  TDm3=class(TDataModule)
    DsRequis: TDataSource;
    DsReqItem: TDataSource;
    DsCaixa: TDataSource;
    DsCaixTipo: TDataSource;
    TbRequis: TIBDataSet;
    TbReqItem: TIBDataSet;
    TbCaixa: TIBDataSet;
    TbCaixTipo: TIBDataSet;
    TbRequisFILIAL: TIBStringField;
    TbRequisNUMREQ: TIntegerField;
    TbRequisDTREQUIS: TDateTimeField;
    TbRequisNUMPEDIDO: TIntegerField;
    TbRequisNUMLCTO: TIntegerField;
    TbRequisCODSUBLOCAL: TIBStringField;
    TbRequisCODFUNC: TIBStringField;
    TbRequisCGC: TIBStringField;
    TbRequisEMITIDA: TIBStringField;
    TbRequisESPECIELCTO: TIBStringField;
    TbRequisSERIELCTO: TIBStringField;
    TbRequisATUALIZACAO: TIBStringField;
    TbRequisMOTIVO: TIBStringField;
    TbRequisSTATUS: TIBStringField;
    TbRequisccMotivo: TStringField;
    TbReqItemccDescrProd: TStringField;
    TbRequisLkRazao: TStringField;
    TbRequisLkFuncionario: TStringField;
    TbRequisLkLocal: TStringField;
    TbRequisLkSubLocal: TStringField;
    TbReqItemFILIAL: TIBStringField;
    TbReqItemNUMREQ: TIntegerField;
    TbReqItemCODPROD: TIBStringField;
    TbReqItemFILIAL2: TIBStringField;
    TbReqItemCODSUBLOCAL2: TIBStringField;
    TbReqItemDESCRICAO: TIBStringField;
    TbReqItemQTDREQUIS: TFloatField;
    TbReqItemQTDATEND: TFloatField;
    TbReqItemVLRVENDA: TFloatField;
    TbReqItemCODFUNCATEND: TIBStringField;
    TbReqItemMOTIVO: TIBStringField;
    TbReqItemLkCodLocal2: TStringField;
    TbReqItemLkFuncionario: TStringField;
    TbReqItemLkFilial: TStringField;
    TbReqItemLkModelo2: TStringField;
    TbReqItemLkModelo: TStringField;
    TbReqItemLkDescrProd: TStringField;
    TbReqItemLkLocal2: TStringField;
    TbReqItemLkSubLocal2: TStringField;
    TbReqItemLkMarca: TStringField;
    TbReqItemLkGrupo: TStringField;
    TbReqItemLkSaldoEstoque: TFloatField;
    TbCaixaFILIAL: TIBStringField;
    TbCaixaCODPDV: TIBStringField;
    TbCaixaDTCAIXA: TDateTimeField;
    TbCaixaSALDOANTERIOR: TFloatField;
    TbCaixaVENDAS: TFloatField;
    TbCaixaFRETE: TFloatField;
    TbCaixaIPI: TFloatField;
    TbCaixaMERC: TFloatField;
    TbCaixaSAQUES: TFloatField;
    TbCaixaSUPRIMENTOS: TFloatField;
    TbCaixaTRANSFERENCIAS: TFloatField;
    TbCaixaAJUSTES: TFloatField;
    TbCaixaAVISTA: TFloatField;
    TbCaixaAPRAZO: TFloatField;
    TbCaixaFATURADO: TFloatField;
    TbCaixaORDPAGTO: TFloatField;
    TbCaixaCARTEIRA: TFloatField;
    TbCaixaATUALIZACAO: TIBStringField;
    TbCaixaVLRSANGRIA1: TFloatField;
    TbCaixaHORASANGRIA1: TIBStringField;
    TbCaixaVLRSANGRIA2: TFloatField;
    TbCaixaHORASANGRIA2: TIBStringField;
    TbCaixaVLRSANGRIA3: TFloatField;
    TbCaixaHORASANGRIA3: TIBStringField;
    TbCaixaFECHADO: TIBStringField;
    TbCaixaVALESDIA: TFloatField;
    TbCaixTipoFILIAL: TIBStringField;
    TbCaixTipoCODPDV: TIBStringField;
    TbCaixTipoDTCAIXA: TDateTimeField;
    TbCaixTipoTIPOPGTO: TIBStringField;
    TbCaixTipoCODCARD: TIBStringField;
    TbCaixTipoVENDAS: TFloatField;
    TbCaixTipoSAQUES: TFloatField;
    TbCaixTipoSUPRIMENTOS: TFloatField;
    TbCaixTipoTRANSFERENCIAS: TFloatField;
    TbCaixTipoVLRFECHADO: TFloatField;
    TbCaixaLkPDV: TStringField;
    TbCaixaccStatusCaixa: TStringField;
    TbCaixaccSaldoAtual: TFloatField;
    TbCaixaccAntecipacoes: TFloatField;
    TbCaixTipoLkTipoPgto: TStringField;
    TbCaixTipoLkCartao: TStringField;
    TbCaixTipoccTotal: TFloatField;
    TbCaixTipoccVlrAFechar: TFloatField;
    TbCaixaVENDASCORR: TFloatField;
    TbCaixTipoVENDASCORR: TFloatField;
    procedure DataModuleCreate(Sender : TObject);
    procedure TbRequisCalcFields(Sender : TObject);
    procedure TbReqItemCalcFields(Sender : TObject);
    procedure TbReqItemNewRecord(Sender : TObject);
    procedure TbCaixaNewRecord(Sender : TObject);
    procedure TbCaixTipoNewRecord(Sender : TObject);
    procedure TbCaixaCalcFields(Sender : TObject);
    procedure TbCaixTipoVENDASGetText(Sender : TObject);
    procedure TbCaixTipoSAQUESGetText(Sender : TObject);
    procedure TbCaixTipoSUPRIMENTOSGetText(Sender : TObject);
    procedure TbCaixTipoTRANSFERENCIASGetText(Sender : TObject);
    procedure TbCaixTipoVLRFECHADOGetText(Sender : TObject);
    procedure TbCaixaSALDOANTERIORGetText(Sender : TObject);
    procedure TbCaixaVENDASGetText(Sender : TObject);
    procedure TbCaixaFRETEGetText(Sender : TObject);
    procedure TbCaixaIPIGetText(Sender : TObject);
    procedure TbCaixaMERCGetText(Sender : TObject);
    procedure TbCaixaSAQUESGetText(Sender : TObject);
    procedure TbCaixaSUPRIMENTOSGetText(Sender : TObject);
    procedure TbCaixaTRANSFERENCIASGetText(Sender : TObject);
    procedure TbCaixaAJUSTESGetText(Sender : TObject);
    procedure TbCaixaAVISTAGetText(Sender : TObject);
    procedure TbCaixaAPRAZOGetText(Sender : TObject);
    procedure TbCaixaFATURADOGetText(Sender : TObject);
    procedure TbCaixaORDPAGTOGetText(Sender : TObject);
    procedure TbCaixaCARTEIRAGetText(Sender : TObject);
    procedure TbCaixaVLRSANGRIA1GetText(Sender : TObject);
    procedure TbCaixaVLRSANGRIA2GetText(Sender : TObject);
    procedure TbCaixaVLRSANGRIA3GetText(Sender : TObject);
    procedure TbCaixaVALESDIAGetText(Sender : TObject);
    procedure TbCaixTipoCalcFields(Sender : TObject);
    procedure TbCaixTipoVENDASCORRGetText(Sender : TObject);
    procedure _PROC_005DAF01(Sender : TObject);
    procedure _PROC_005DAF69(Sender : TObject);
    procedure _PROC_005DAF7A(Sender : TObject);
    procedure _PROC_005DAFB9(Sender : TObject);
    procedure _PROC_005DAFCE(Sender : TObject);
    procedure _PROC_005DB035(Sender : TObject);
    procedure _PROC_005DB08E(Sender : TObject);
    procedure _PROC_005DB664(Sender : TObject);
    procedure _PROC_005DB6F7(Sender : TObject);
    procedure _PROC_005DB71D(Sender : TObject);
    procedure _PROC_005DB737(Sender : TObject);
    procedure _PROC_005DB780(Sender : TObject);
    procedure _PROC_005DB7C9(Sender : TObject);
    procedure _PROC_005DB7DE(Sender : TObject);
    procedure _PROC_005DB82D(Sender : TObject);
    procedure _PROC_005DB83E(Sender : TObject);
    procedure _PROC_005DBC47(Sender : TObject);
    procedure _PROC_005DC987(Sender : TObject);
    procedure _PROC_005DCAB8(Sender : TObject);
    procedure _PROC_005DCAE8(Sender : TObject);
    procedure _PROC_005DCAF0(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  Dm3: TDm3;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TDm3.DataModuleCreate(Sender : TObject);
begin
(*
005DAB2C   55                     push    ebp
005DAB2D   8BEC                   mov     ebp, esp

|
005DAB2F   E8F4FEFFFF             call    005DAA28
005DAB34   5D                     pop     ebp
005DAB35   C3                     ret

*)
end;

procedure TDm3.TbRequisCalcFields(Sender : TObject);
begin
(*
005DAB38   55                     push    ebp
005DAB39   8BEC                   mov     ebp, esp
005DAB3B   B90D000000             mov     ecx, $0000000D
005DAB40   6A00                   push    $00
005DAB42   6A00                   push    $00
005DAB44   49                     dec     ecx
005DAB45   75F9                   jnz     005DAB40
005DAB47   53                     push    ebx
005DAB48   56                     push    esi
005DAB49   57                     push    edi
005DAB4A   BBB0D97D00             mov     ebx, $007DD9B0
005DAB4F   33C0                   xor     eax, eax
005DAB51   55                     push    ebp

* Possible String Reference to: 'È2û‚ˇÎ–_^[ãÂ]√'
|
005DAB52   6801AF5D00             push    $005DAF01

***** TRY
|
005DAB57   64FF30                 push    dword ptr fs:[eax]
005DAB5A   648920                 mov     fs:[eax], esp
005DAB5D   33C0                   xor     eax, eax
005DAB5F   55                     push    ebp
005DAB60   68C4AE5D00             push    $005DAEC4

***** TRY
|
005DAB65   64FF30                 push    dword ptr fs:[eax]
005DAB68   648920                 mov     fs:[eax], esp
005DAB6B   33C0                   xor     eax, eax
005DAB6D   55                     push    ebp
005DAB6E   687BAE5D00             push    $005DAE7B

***** TRY
|
005DAB73   64FF30                 push    dword ptr fs:[eax]
005DAB76   648920                 mov     fs:[eax], esp
005DAB79   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
005DAB7E   803800                 cmp     byte ptr [eax], $00
005DAB81   0F84C4010000           jz      005DAD4B
005DAB87   8D55F8                 lea     edx, [ebp-$08]
005DAB8A   8B03                   mov     eax, [ebx]
005DAB8C   8B8094000000           mov     eax, [eax+$0094]
005DAB92   8B08                   mov     ecx, [eax]
005DAB94   FF5160                 call    dword ptr [ecx+$60]
005DAB97   837DF800               cmp     dword ptr [ebp-$08], +$00
005DAB9B   7456                   jz      005DABF3

* Possible String Reference to: 'RAZAO'
|
005DAB9D   6818AF5D00             push    $005DAF18
005DABA2   8D45F4                 lea     eax, [ebp-$0C]
005DABA5   50                     push    eax
005DABA6   8D55E8                 lea     edx, [ebp-$18]
005DABA9   8B03                   mov     eax, [ebx]
005DABAB   8B8094000000           mov     eax, [eax+$0094]
005DABB1   8B08                   mov     ecx, [eax]
005DABB3   FF5160                 call    dword ptr [ecx+$60]
005DABB6   8B45E8                 mov     eax, [ebp-$18]
005DABB9   8D55EC                 lea     edx, [ebp-$14]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DABBC   E85F8F1C00             call    007A3B20
005DABC1   8B4DEC                 mov     ecx, [ebp-$14]
005DABC4   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'CGCCLIE = '
|
005DABC7   BA28AF5D00             mov     edx, $005DAF28

* Reference to: System.@LStrCat3;
|
005DABCC   E8D7ABE2FF             call    004057A8
005DABD1   8B4DF0                 mov     ecx, [ebp-$10]

* Possible String Reference to: 'CLIENTES'
|
005DABD4   BA3CAF5D00             mov     edx, $005DAF3C
005DABD9   33C0                   xor     eax, eax

|
005DABDB   E830E71C00             call    007A9310
005DABE0   8B55F4                 mov     edx, [ebp-$0C]
005DABE3   8B03                   mov     eax, [ebx]
005DABE5   8B80B8000000           mov     eax, [eax+$00B8]
005DABEB   8B08                   mov     ecx, [eax]
005DABED   FF91B0000000           call    dword ptr [ecx+$00B0]
005DABF3   8D55E4                 lea     edx, [ebp-$1C]
005DABF6   8B03                   mov     eax, [ebx]
005DABF8   8B8090000000           mov     eax, [eax+$0090]
005DABFE   8B08                   mov     ecx, [eax]
005DAC00   FF5160                 call    dword ptr [ecx+$60]
005DAC03   837DE400               cmp     dword ptr [ebp-$1C], +$00
005DAC07   7456                   jz      005DAC5F

* Possible String Reference to: 'FANTASIA'
|
005DAC09   6850AF5D00             push    $005DAF50
005DAC0E   8D45E0                 lea     eax, [ebp-$20]
005DAC11   50                     push    eax
005DAC12   8D55D4                 lea     edx, [ebp-$2C]
005DAC15   8B03                   mov     eax, [ebx]
005DAC17   8B8090000000           mov     eax, [eax+$0090]
005DAC1D   8B08                   mov     ecx, [eax]
005DAC1F   FF5160                 call    dword ptr [ecx+$60]
005DAC22   8B45D4                 mov     eax, [ebp-$2C]
005DAC25   8D55D8                 lea     edx, [ebp-$28]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DAC28   E8F38E1C00             call    007A3B20
005DAC2D   8B4DD8                 mov     ecx, [ebp-$28]
005DAC30   8D45DC                 lea     eax, [ebp-$24]

* Possible String Reference to: 'CODFUNC = '
|
005DAC33   BA64AF5D00             mov     edx, $005DAF64

* Reference to: System.@LStrCat3;
|
005DAC38   E86BABE2FF             call    004057A8
005DAC3D   8B4DDC                 mov     ecx, [ebp-$24]

* Possible String Reference to: 'FUNCREPR'
|
005DAC40   BA78AF5D00             mov     edx, $005DAF78
005DAC45   33C0                   xor     eax, eax

|
005DAC47   E8C4E61C00             call    007A9310
005DAC4C   8B55E0                 mov     edx, [ebp-$20]
005DAC4F   8B03                   mov     eax, [ebx]
005DAC51   8B80BC000000           mov     eax, [eax+$00BC]
005DAC57   8B08                   mov     ecx, [eax]
005DAC59   FF91B0000000           call    dword ptr [ecx+$00B0]
005DAC5F   8D55D0                 lea     edx, [ebp-$30]
005DAC62   8B03                   mov     eax, [ebx]
005DAC64   8B808C000000           mov     eax, [eax+$008C]
005DAC6A   8B08                   mov     ecx, [eax]
005DAC6C   FF5160                 call    dword ptr [ecx+$60]
005DAC6F   837DD000               cmp     dword ptr [ebp-$30], +$00
005DAC73   0F84D2000000           jz      005DAD4B
005DAC79   6A00                   push    $00
005DAC7B   8D45FC                 lea     eax, [ebp-$04]
005DAC7E   B901000000             mov     ecx, $00000001

* Reference to object tLookup
|
005DAC83   8B1514515D00           mov     edx, [$005D5114]

* Reference to: System.@DynArraySetLength;
|
005DAC89   E822BFE2FF             call    00406BB0
005DAC8E   83C404                 add     esp, +$04

* Possible String Reference to: 'CODLOCAL'
|
005DAC91   B88CAF5D00             mov     eax, $005DAF8C
005DAC96   8945C8                 mov     [ebp-$38], eax

* Possible String Reference to: 'DESCRICAO'
|
005DAC99   B8A0AF5D00             mov     eax, $005DAFA0
005DAC9E   8945CC                 mov     [ebp-$34], eax
005DACA1   8D45C8                 lea     eax, [ebp-$38]
005DACA4   50                     push    eax
005DACA5   6A01                   push    $01
005DACA7   8D45FC                 lea     eax, [ebp-$04]
005DACAA   50                     push    eax
005DACAB   8D55BC                 lea     edx, [ebp-$44]
005DACAE   8B03                   mov     eax, [ebx]
005DACB0   8B808C000000           mov     eax, [eax+$008C]
005DACB6   8B08                   mov     ecx, [eax]
005DACB8   FF5160                 call    dword ptr [ecx+$60]
005DACBB   8B45BC                 mov     eax, [ebp-$44]
005DACBE   8D55C0                 lea     edx, [ebp-$40]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DACC1   E85A8E1C00             call    007A3B20
005DACC6   8B4DC0                 mov     ecx, [ebp-$40]
005DACC9   8D45C4                 lea     eax, [ebp-$3C]

* Possible String Reference to: 'CODSUBLOCAL = '
|
005DACCC   BAB4AF5D00             mov     edx, $005DAFB4

* Reference to: System.@LStrCat3;
|
005DACD1   E8D2AAE2FF             call    004057A8
005DACD6   8B4DC4                 mov     ecx, [ebp-$3C]

* Possible String Reference to: 'SUBLOCAL'
|
005DACD9   BACCAF5D00             mov     edx, $005DAFCC
005DACDE   33C0                   xor     eax, eax

* Reference to: IBSecurityEditor.TfrmIBSecurityEditor.AddParam(TfrmIBSecurityEditor;AnsiString;AnsiString);
|
005DACE0   E81BE81C00             call    007A9500
005DACE5   8B45FC                 mov     eax, [ebp-$04]
005DACE8   8B5004                 mov     edx, [eax+$04]
005DACEB   8B03                   mov     eax, [ebx]
005DACED   8B80C4000000           mov     eax, [eax+$00C4]
005DACF3   8B08                   mov     ecx, [eax]
005DACF5   FF91B0000000           call    dword ptr [ecx+$00B0]
005DACFB   8B45FC                 mov     eax, [ebp-$04]
005DACFE   833800                 cmp     dword ptr [eax], +$00
005DAD01   7448                   jz      005DAD4B

* Possible String Reference to: 'DESCRICAO'
|
005DAD03   68A0AF5D00             push    $005DAFA0
005DAD08   8D45B8                 lea     eax, [ebp-$48]
005DAD0B   50                     push    eax
005DAD0C   8D55B0                 lea     edx, [ebp-$50]
005DAD0F   8B45FC                 mov     eax, [ebp-$04]
005DAD12   8B00                   mov     eax, [eax]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DAD14   E8078E1C00             call    007A3B20
005DAD19   8B4DB0                 mov     ecx, [ebp-$50]
005DAD1C   8D45B4                 lea     eax, [ebp-$4C]

* Possible String Reference to: 'CODLOCAL = '
|
005DAD1F   BAE0AF5D00             mov     edx, $005DAFE0

* Reference to: System.@LStrCat3;
|
005DAD24   E87FAAE2FF             call    004057A8
005DAD29   8B4DB4                 mov     ecx, [ebp-$4C]

* Possible String Reference to: 'LOCAIS'
|
005DAD2C   BAF4AF5D00             mov     edx, $005DAFF4
005DAD31   33C0                   xor     eax, eax

|
005DAD33   E8D8E51C00             call    007A9310
005DAD38   8B55B8                 mov     edx, [ebp-$48]
005DAD3B   8B03                   mov     eax, [ebx]
005DAD3D   8B80C0000000           mov     eax, [eax+$00C0]
005DAD43   8B08                   mov     ecx, [eax]
005DAD45   FF91B0000000           call    dword ptr [ecx+$00B0]
005DAD4B   8D55AC                 lea     edx, [ebp-$54]
005DAD4E   8B03                   mov     eax, [ebx]
005DAD50   8B80A8000000           mov     eax, [eax+$00A8]
005DAD56   8B08                   mov     ecx, [eax]
005DAD58   FF5160                 call    dword ptr [ecx+$60]
005DAD5B   8B45AC                 mov     eax, [ebp-$54]
005DAD5E   BA04B05D00             mov     edx, $005DB004

* Reference to: System.@LStrCmp;
|
005DAD63   E840ABE2FF             call    004058A8
005DAD68   751A                   jnz     005DAD84
005DAD6A   8B03                   mov     eax, [ebx]
005DAD6C   8B80B0000000           mov     eax, [eax+$00B0]

* Possible String Reference to: 'REPOSI«√O'
|
005DAD72   BA10B05D00             mov     edx, $005DB010
005DAD77   8B08                   mov     ecx, [eax]
005DAD79   FF91B0000000           call    dword ptr [ecx+$00B0]
005DAD7F   E9ED000000             jmp     005DAE71
005DAD84   8D55A8                 lea     edx, [ebp-$58]
005DAD87   8B03                   mov     eax, [ebx]
005DAD89   8B80A8000000           mov     eax, [eax+$00A8]
005DAD8F   8B08                   mov     ecx, [eax]
005DAD91   FF5160                 call    dword ptr [ecx+$60]
005DAD94   8B45A8                 mov     eax, [ebp-$58]
005DAD97   BA24B05D00             mov     edx, $005DB024

* Reference to: System.@LStrCmp;
|
005DAD9C   E807ABE2FF             call    004058A8
005DADA1   751A                   jnz     005DADBD
005DADA3   8B03                   mov     eax, [ebx]
005DADA5   8B80B0000000           mov     eax, [eax+$00B0]

* Possible String Reference to: 'CONSUMO'
|
005DADAB   BA30B05D00             mov     edx, $005DB030
005DADB0   8B08                   mov     ecx, [eax]
005DADB2   FF91B0000000           call    dword ptr [ecx+$00B0]
005DADB8   E9B4000000             jmp     005DAE71
005DADBD   8D55A4                 lea     edx, [ebp-$5C]
005DADC0   8B03                   mov     eax, [ebx]
005DADC2   8B80A8000000           mov     eax, [eax+$00A8]
005DADC8   8B08                   mov     ecx, [eax]
005DADCA   FF5160                 call    dword ptr [ecx+$60]
005DADCD   8B45A4                 mov     eax, [ebp-$5C]
005DADD0   BA40B05D00             mov     edx, $005DB040

* Reference to: System.@LStrCmp;
|
005DADD5   E8CEAAE2FF             call    004058A8
005DADDA   7517                   jnz     005DADF3
005DADDC   8B03                   mov     eax, [ebx]
005DADDE   8B80B0000000           mov     eax, [eax+$00B0]

* Possible String Reference to: 'DEMONSTRA«√O'
|
005DADE4   BA4CB05D00             mov     edx, $005DB04C
005DADE9   8B08                   mov     ecx, [eax]
005DADEB   FF91B0000000           call    dword ptr [ecx+$00B0]
005DADF1   EB7E                   jmp     005DAE71
005DADF3   8D55A0                 lea     edx, [ebp-$60]
005DADF6   8B03                   mov     eax, [ebx]
005DADF8   8B80A8000000           mov     eax, [eax+$00A8]
005DADFE   8B08                   mov     ecx, [eax]
005DAE00   FF5160                 call    dword ptr [ecx+$60]
005DAE03   8B45A0                 mov     eax, [ebp-$60]
005DAE06   BA64B05D00             mov     edx, $005DB064

* Reference to: System.@LStrCmp;
|
005DAE0B   E898AAE2FF             call    004058A8
005DAE10   7517                   jnz     005DAE29
005DAE12   8B03                   mov     eax, [ebx]
005DAE14   8B80B0000000           mov     eax, [eax+$00B0]

* Possible String Reference to: 'VENDA'
|
005DAE1A   BA70B05D00             mov     edx, $005DB070
005DAE1F   8B08                   mov     ecx, [eax]
005DAE21   FF91B0000000           call    dword ptr [ecx+$00B0]
005DAE27   EB48                   jmp     005DAE71
005DAE29   8D559C                 lea     edx, [ebp-$64]
005DAE2C   8B03                   mov     eax, [ebx]
005DAE2E   8B80A8000000           mov     eax, [eax+$00A8]
005DAE34   8B08                   mov     ecx, [eax]
005DAE36   FF5160                 call    dword ptr [ecx+$60]
005DAE39   8B459C                 mov     eax, [ebp-$64]
005DAE3C   BA80B05D00             mov     edx, $005DB080

* Reference to: System.@LStrCmp;
|
005DAE41   E862AAE2FF             call    004058A8
005DAE46   7517                   jnz     005DAE5F
005DAE48   8B03                   mov     eax, [ebx]
005DAE4A   8B80B0000000           mov     eax, [eax+$00B0]

* Possible String Reference to: 'MULTIPLO'
|
005DAE50   BA8CB05D00             mov     edx, $005DB08C
005DAE55   8B08                   mov     ecx, [eax]
005DAE57   FF91B0000000           call    dword ptr [ecx+$00B0]
005DAE5D   EB12                   jmp     005DAE71
005DAE5F   8B03                   mov     eax, [ebx]
005DAE61   8B80B0000000           mov     eax, [eax+$00B0]
005DAE67   33D2                   xor     edx, edx
005DAE69   8B08                   mov     ecx, [eax]
005DAE6B   FF91B0000000           call    dword ptr [ecx+$00B0]
005DAE71   33C0                   xor     eax, eax
005DAE73   5A                     pop     edx
005DAE74   59                     pop     ecx
005DAE75   59                     pop     ecx
005DAE76   648910                 mov     fs:[eax], edx
005DAE79   EB3B                   jmp     005DAEB6

* Reference to: System.@HandleOnException;
|
005DAE7B   E9309DE2FF             jmp     00404BB0
005DAE80   0100                   add     [eax], eax
005DAE82   0000                   add     [eax], al
005DAE84   40                     inc     eax
005DAE85   95                     xchg    eax, ebp
005DAE86   40                     inc     eax
005DAE87   008CAE5D0089C3         add     [esi+ebp*4+$C389005D], cl
005DAE8E   6A00                   push    $00
005DAE90   8B4B04                 mov     ecx, [ebx+$04]
005DAE93   8D4598                 lea     eax, [ebp-$68]

* Possible String Reference to: 'Erro no evento OnCalcFields da Tabe
|                                las Requis!'
|
005DAE96   BAA0B05D00             mov     edx, $005DB0A0

* Reference to: System.@LStrCat3;
|
005DAE9B   E808A9E2FF             call    004057A8
005DAEA0   8B4598                 mov     eax, [ebp-$68]
005DAEA3   668B0DD4B05D00         mov     cx, word ptr [$005DB0D4]
005DAEAA   B201                   mov     dl, $01

|
005DAEAC   E87B8CE6FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
005DAEB1   E8FA9FE2FF             call    00404EB0

****** END
|
005DAEB6   33C0                   xor     eax, eax
005DAEB8   5A                     pop     edx
005DAEB9   59                     pop     ecx
005DAEBA   59                     pop     ecx
005DAEBB   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DAEBE   68CBAE5D00             push    $005DAECB
005DAEC3   C3                     ret


* Reference to: System.@HandleFinally;
|
005DAEC4   E96F9EE2FF             jmp     00404D38
005DAEC9   EBF8                   jmp     005DAEC3

****** END
|
005DAECB   33C0                   xor     eax, eax
005DAECD   5A                     pop     edx
005DAECE   59                     pop     ecx
005DAECF   59                     pop     ecx
005DAED0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
005DAED3   6808AF5D00             push    $005DAF08
005DAED8   8D4598                 lea     eax, [ebp-$68]
005DAEDB   BA0C000000             mov     edx, $0000000C

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005DAEE0   E8DBA5E2FF             call    004054C0
005DAEE5   8D45D0                 lea     eax, [ebp-$30]
005DAEE8   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005DAEED   E8CEA5E2FF             call    004054C0
005DAEF2   8D45FC                 lea     eax, [ebp-$04]

* Reference to object tLookup
|
005DAEF5   8B1514515D00           mov     edx, [$005D5114]

* Reference to: System.@DynArrayClear(Pointer;Pointer;Pointer);
|
005DAEFB   E8D0BDE2FF             call    00406CD0
005DAF00   C3                     ret


* Reference to: System.@HandleFinally;
|
005DAF01   E9329EE2FF             jmp     00404D38
005DAF06   EBD0                   jmp     005DAED8

****** END
|
005DAF08   5F                     pop     edi
005DAF09   5E                     pop     esi
005DAF0A   5B                     pop     ebx
005DAF0B   8BE5                   mov     esp, ebp
005DAF0D   5D                     pop     ebp
005DAF0E   C3                     ret

*)
end;

procedure TDm3.TbReqItemCalcFields(Sender : TObject);
begin
(*
005DB0D8   55                     push    ebp
005DB0D9   8BEC                   mov     ebp, esp
005DB0DB   B916000000             mov     ecx, $00000016
005DB0E0   6A00                   push    $00
005DB0E2   6A00                   push    $00
005DB0E4   49                     dec     ecx
005DB0E5   75F9                   jnz     005DB0E0
005DB0E7   51                     push    ecx
005DB0E8   53                     push    ebx
005DB0E9   56                     push    esi
005DB0EA   57                     push    edi
005DB0EB   BEB0D97D00             mov     esi, $007DD9B0
005DB0F0   33C0                   xor     eax, eax
005DB0F2   55                     push    ebp

* Possible String Reference to: 'Èœñ‚ˇÎª_^[ãÂ]√'
|
005DB0F3   6864B65D00             push    $005DB664

***** TRY
|
005DB0F8   64FF30                 push    dword ptr fs:[eax]
005DB0FB   648920                 mov     fs:[eax], esp
005DB0FE   33C0                   xor     eax, eax
005DB100   55                     push    ebp
005DB101   6812B65D00             push    $005DB612

***** TRY
|
005DB106   64FF30                 push    dword ptr fs:[eax]
005DB109   648920                 mov     fs:[eax], esp
005DB10C   33C0                   xor     eax, eax
005DB10E   55                     push    ebp
005DB10F   68C3B55D00             push    $005DB5C3

***** TRY
|
005DB114   64FF30                 push    dword ptr fs:[eax]
005DB117   648920                 mov     fs:[eax], esp
005DB11A   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
005DB11F   803800                 cmp     byte ptr [eax], $00
005DB122   0F84DC030000           jz      005DB504
005DB128   8D55F4                 lea     edx, [ebp-$0C]
005DB12B   8B06                   mov     eax, [esi]
005DB12D   8B80D4000000           mov     eax, [eax+$00D4]
005DB133   8B08                   mov     ecx, [eax]
005DB135   FF5160                 call    dword ptr [ecx+$60]
005DB138   837DF400               cmp     dword ptr [ebp-$0C], +$00
005DB13C   7456                   jz      005DB194

* Possible String Reference to: 'RAZAO'
|
005DB13E   687CB65D00             push    $005DB67C
005DB143   8D45F0                 lea     eax, [ebp-$10]
005DB146   50                     push    eax
005DB147   8D55E4                 lea     edx, [ebp-$1C]
005DB14A   8B06                   mov     eax, [esi]
005DB14C   8B80D4000000           mov     eax, [eax+$00D4]
005DB152   8B08                   mov     ecx, [eax]
005DB154   FF5160                 call    dword ptr [ecx+$60]
005DB157   8B45E4                 mov     eax, [ebp-$1C]
005DB15A   8D55E8                 lea     edx, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DB15D   E8BE891C00             call    007A3B20
005DB162   8B4DE8                 mov     ecx, [ebp-$18]
005DB165   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'FILIAL = '
|
005DB168   BA8CB65D00             mov     edx, $005DB68C

* Reference to: System.@LStrCat3;
|
005DB16D   E836A6E2FF             call    004057A8
005DB172   8B4DEC                 mov     ecx, [ebp-$14]

* Possible String Reference to: 'FILIAIS'
|
005DB175   BAA0B65D00             mov     edx, $005DB6A0
005DB17A   33C0                   xor     eax, eax

|
005DB17C   E88FE11C00             call    007A9310
005DB181   8B55F0                 mov     edx, [ebp-$10]
005DB184   8B06                   mov     eax, [esi]
005DB186   8B80FC000000           mov     eax, [eax+$00FC]
005DB18C   8B08                   mov     ecx, [eax]
005DB18E   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB194   8D55E0                 lea     edx, [ebp-$20]
005DB197   8B06                   mov     eax, [esi]
005DB199   8B80D0000000           mov     eax, [eax+$00D0]
005DB19F   8B08                   mov     ecx, [eax]
005DB1A1   FF5160                 call    dword ptr [ecx+$60]
005DB1A4   837DE000               cmp     dword ptr [ebp-$20], +$00
005DB1A8   0F84BD010000           jz      005DB36B
005DB1AE   6A00                   push    $00
005DB1B0   8D45FC                 lea     eax, [ebp-$04]
005DB1B3   B901000000             mov     ecx, $00000001

* Reference to object tLookup
|
005DB1B8   8B1514515D00           mov     edx, [$005D5114]

* Reference to: System.@DynArraySetLength;
|
005DB1BE   E8EDB9E2FF             call    00406BB0
005DB1C3   83C404                 add     esp, +$04

* Possible String Reference to: 'DESCRICAO'
|
005DB1C6   B8B0B65D00             mov     eax, $005DB6B0
005DB1CB   8945CC                 mov     [ebp-$34], eax

* Possible String Reference to: 'MODELO'
|
005DB1CE   B8C4B65D00             mov     eax, $005DB6C4
005DB1D3   8945D0                 mov     [ebp-$30], eax

* Possible String Reference to: 'MODELO2'
|
005DB1D6   B8D4B65D00             mov     eax, $005DB6D4
005DB1DB   8945D4                 mov     [ebp-$2C], eax

* Possible String Reference to: 'MARCA'
|
005DB1DE   B8E4B65D00             mov     eax, $005DB6E4
005DB1E3   8945D8                 mov     [ebp-$28], eax

* Possible String Reference to: 'GRUPO'
|
005DB1E6   B8F4B65D00             mov     eax, $005DB6F4
005DB1EB   8945DC                 mov     [ebp-$24], eax
005DB1EE   8D45CC                 lea     eax, [ebp-$34]
005DB1F1   50                     push    eax
005DB1F2   6A04                   push    $04
005DB1F4   8D45FC                 lea     eax, [ebp-$04]
005DB1F7   50                     push    eax
005DB1F8   8D55C0                 lea     edx, [ebp-$40]
005DB1FB   8B06                   mov     eax, [esi]
005DB1FD   8B80D0000000           mov     eax, [eax+$00D0]
005DB203   8B08                   mov     ecx, [eax]
005DB205   FF5160                 call    dword ptr [ecx+$60]
005DB208   8B45C0                 mov     eax, [ebp-$40]
005DB20B   8D55C4                 lea     edx, [ebp-$3C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DB20E   E80D891C00             call    007A3B20
005DB213   8B4DC4                 mov     ecx, [ebp-$3C]
005DB216   8D45C8                 lea     eax, [ebp-$38]

* Possible String Reference to: 'CODPROD = '
|
005DB219   BA04B75D00             mov     edx, $005DB704

* Reference to: System.@LStrCat3;
|
005DB21E   E885A5E2FF             call    004057A8
005DB223   8B4DC8                 mov     ecx, [ebp-$38]

* Possible String Reference to: 'PRODUTOS'
|
005DB226   BA18B75D00             mov     edx, $005DB718
005DB22B   33C0                   xor     eax, eax

* Reference to: IBSecurityEditor.TfrmIBSecurityEditor.AddParam(TfrmIBSecurityEditor;AnsiString;AnsiString);
|
005DB22D   E8CEE21C00             call    007A9500
005DB232   8B45FC                 mov     eax, [ebp-$04]
005DB235   8B10                   mov     edx, [eax]
005DB237   8B06                   mov     eax, [esi]
005DB239   8B8008010000           mov     eax, [eax+$0108]
005DB23F   8B08                   mov     ecx, [eax]
005DB241   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB247   8B45FC                 mov     eax, [ebp-$04]
005DB24A   8B5004                 mov     edx, [eax+$04]
005DB24D   8B06                   mov     eax, [esi]
005DB24F   8B8004010000           mov     eax, [eax+$0104]
005DB255   8B08                   mov     ecx, [eax]
005DB257   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB25D   8B45FC                 mov     eax, [ebp-$04]
005DB260   8B5008                 mov     edx, [eax+$08]
005DB263   8B06                   mov     eax, [esi]
005DB265   8B8000010000           mov     eax, [eax+$0100]
005DB26B   8B08                   mov     ecx, [eax]
005DB26D   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB273   8B45FC                 mov     eax, [ebp-$04]
005DB276   8B500C                 mov     edx, [eax+$0C]
005DB279   8B06                   mov     eax, [esi]
005DB27B   8B8014010000           mov     eax, [eax+$0114]
005DB281   8B08                   mov     ecx, [eax]
005DB283   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB289   8B45FC                 mov     eax, [ebp-$04]
005DB28C   8B5010                 mov     edx, [eax+$10]
005DB28F   8B06                   mov     eax, [esi]
005DB291   8B8018010000           mov     eax, [eax+$0118]
005DB297   8B08                   mov     ecx, [eax]
005DB299   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB29F   8D55BC                 lea     edx, [ebp-$44]
005DB2A2   8B06                   mov     eax, [esi]
005DB2A4   8B80D8000000           mov     eax, [eax+$00D8]
005DB2AA   8B08                   mov     ecx, [eax]
005DB2AC   FF5160                 call    dword ptr [ecx+$60]
005DB2AF   837DBC00               cmp     dword ptr [ebp-$44], +$00
005DB2B3   0F84B2000000           jz      005DB36B

* Possible String Reference to: 'SALDOESTOQUE'
|
005DB2B9   682CB75D00             push    $005DB72C
005DB2BE   8D45B8                 lea     eax, [ebp-$48]
005DB2C1   50                     push    eax

* Possible String Reference to: '(CODPROD = '
|
005DB2C2   6844B75D00             push    $005DB744
005DB2C7   8D55AC                 lea     edx, [ebp-$54]
005DB2CA   8B06                   mov     eax, [esi]
005DB2CC   8B80D0000000           mov     eax, [eax+$00D0]
005DB2D2   8B08                   mov     ecx, [eax]
005DB2D4   FF5160                 call    dword ptr [ecx+$60]
005DB2D7   8B45AC                 mov     eax, [ebp-$54]
005DB2DA   8D55B0                 lea     edx, [ebp-$50]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DB2DD   E83E881C00             call    007A3B20
005DB2E2   FF75B0                 push    dword ptr [ebp-$50]

* Possible String Reference to: ') AND (FILIAL = '
|
005DB2E5   6858B75D00             push    $005DB758
005DB2EA   8D55A4                 lea     edx, [ebp-$5C]
005DB2ED   8B06                   mov     eax, [esi]
005DB2EF   8B80D4000000           mov     eax, [eax+$00D4]
005DB2F5   8B08                   mov     ecx, [eax]
005DB2F7   FF5160                 call    dword ptr [ecx+$60]
005DB2FA   8B45A4                 mov     eax, [ebp-$5C]
005DB2FD   8D55A8                 lea     edx, [ebp-$58]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DB300   E81B881C00             call    007A3B20
005DB305   FF75A8                 push    dword ptr [ebp-$58]

* Possible String Reference to: ') AND (CODSUBLOCAL = '
|
005DB308   6874B75D00             push    $005DB774
005DB30D   8D559C                 lea     edx, [ebp-$64]
005DB310   8B06                   mov     eax, [esi]
005DB312   8B80D8000000           mov     eax, [eax+$00D8]
005DB318   8B08                   mov     ecx, [eax]
005DB31A   FF5160                 call    dword ptr [ecx+$60]
005DB31D   8B459C                 mov     eax, [ebp-$64]
005DB320   8D55A0                 lea     edx, [ebp-$60]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DB323   E8F8871C00             call    007A3B20
005DB328   FF75A0                 push    dword ptr [ebp-$60]
005DB32B   6894B75D00             push    $005DB794
005DB330   8D45B4                 lea     eax, [ebp-$4C]
005DB333   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrCatN;
|
005DB338   E8DFA4E2FF             call    0040581C
005DB33D   8B4DB4                 mov     ecx, [ebp-$4C]

* Possible String Reference to: 'PRODLOC'
|
005DB340   BAA0B75D00             mov     edx, $005DB7A0
005DB345   33C0                   xor     eax, eax

|
005DB347   E8C4DF1C00             call    007A9310
005DB34C   8B45B8                 mov     eax, [ebp-$48]

|
005DB34F   E8E4691C00             call    007A1D38
005DB354   83C4F8                 add     esp, -$08
005DB357   DD1C24                 fstp    qword ptr [esp]
005DB35A   9B                     wait
005DB35B   8B06                   mov     eax, [esi]
005DB35D   8B801C010000           mov     eax, [eax+$011C]
005DB363   8B10                   mov     edx, [eax]
005DB365   FF92A4000000           call    dword ptr [edx+$00A4]
005DB36B   8D5598                 lea     edx, [ebp-$68]
005DB36E   8B06                   mov     eax, [esi]
005DB370   8B80D8000000           mov     eax, [eax+$00D8]
005DB376   8B08                   mov     ecx, [eax]
005DB378   FF5160                 call    dword ptr [ecx+$60]
005DB37B   837D9800               cmp     dword ptr [ebp-$68], +$00
005DB37F   0F84F5000000           jz      005DB47A
005DB385   6A00                   push    $00
005DB387   8D45F8                 lea     eax, [ebp-$08]
005DB38A   B901000000             mov     ecx, $00000001

* Reference to object tLookup
|
005DB38F   8B1514515D00           mov     edx, [$005D5114]

* Reference to: System.@DynArraySetLength;
|
005DB395   E816B8E2FF             call    00406BB0
005DB39A   83C404                 add     esp, +$04

* Possible String Reference to: 'DESCRICAO'
|
005DB39D   B8B0B65D00             mov     eax, $005DB6B0
005DB3A2   894590                 mov     [ebp-$70], eax

* Possible String Reference to: 'CODLOCAL'
|
005DB3A5   B8B0B75D00             mov     eax, $005DB7B0
005DB3AA   894594                 mov     [ebp-$6C], eax
005DB3AD   8D4590                 lea     eax, [ebp-$70]
005DB3B0   50                     push    eax
005DB3B1   6A01                   push    $01
005DB3B3   8D45F8                 lea     eax, [ebp-$08]
005DB3B6   50                     push    eax
005DB3B7   8D5584                 lea     edx, [ebp-$7C]
005DB3BA   8B06                   mov     eax, [esi]
005DB3BC   8B80D8000000           mov     eax, [eax+$00D8]
005DB3C2   8B08                   mov     ecx, [eax]
005DB3C4   FF5160                 call    dword ptr [ecx+$60]
005DB3C7   8B4584                 mov     eax, [ebp-$7C]
005DB3CA   8D5588                 lea     edx, [ebp-$78]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DB3CD   E84E871C00             call    007A3B20
005DB3D2   8B4D88                 mov     ecx, [ebp-$78]
005DB3D5   8D458C                 lea     eax, [ebp-$74]

* Possible String Reference to: 'CODSUBLOCAL = '
|
005DB3D8   BAC4B75D00             mov     edx, $005DB7C4

* Reference to: System.@LStrCat3;
|
005DB3DD   E8C6A3E2FF             call    004057A8
005DB3E2   8B4D8C                 mov     ecx, [ebp-$74]

* Possible String Reference to: 'SUBLOCAL'
|
005DB3E5   BADCB75D00             mov     edx, $005DB7DC
005DB3EA   33C0                   xor     eax, eax

* Reference to: IBSecurityEditor.TfrmIBSecurityEditor.AddParam(TfrmIBSecurityEditor;AnsiString;AnsiString);
|
005DB3EC   E80FE11C00             call    007A9500
005DB3F1   8B45F8                 mov     eax, [ebp-$08]
005DB3F4   8B10                   mov     edx, [eax]
005DB3F6   8B06                   mov     eax, [esi]
005DB3F8   8B8010010000           mov     eax, [eax+$0110]
005DB3FE   8B08                   mov     ecx, [eax]
005DB400   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB406   8B45F8                 mov     eax, [ebp-$08]
005DB409   83780400               cmp     dword ptr [eax+$04], +$00
005DB40D   746B                   jz      005DB47A
005DB40F   8B45F8                 mov     eax, [ebp-$08]
005DB412   8B5004                 mov     edx, [eax+$04]
005DB415   8B06                   mov     eax, [esi]
005DB417   8B80F4000000           mov     eax, [eax+$00F4]
005DB41D   8B08                   mov     ecx, [eax]
005DB41F   FF91B0000000           call    dword ptr [ecx+$00B0]

* Possible String Reference to: 'DESCRICAO'
|
005DB425   68B0B65D00             push    $005DB6B0
005DB42A   8D4580                 lea     eax, [ebp-$80]
005DB42D   50                     push    eax
005DB42E   8D9578FFFFFF           lea     edx, [ebp+$FFFFFF78]
005DB434   8B45F8                 mov     eax, [ebp-$08]
005DB437   8B4004                 mov     eax, [eax+$04]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DB43A   E8E1861C00             call    007A3B20
005DB43F   8B8D78FFFFFF           mov     ecx, [ebp+$FFFFFF78]
005DB445   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]

* Possible String Reference to: 'CODLOCAL = '
|
005DB44B   BAF0B75D00             mov     edx, $005DB7F0

* Reference to: System.@LStrCat3;
|
005DB450   E853A3E2FF             call    004057A8
005DB455   8B8D7CFFFFFF           mov     ecx, [ebp+$FFFFFF7C]

* Possible String Reference to: 'LOCAIS'
|
005DB45B   BA04B85D00             mov     edx, $005DB804
005DB460   33C0                   xor     eax, eax

|
005DB462   E8A9DE1C00             call    007A9310
005DB467   8B5580                 mov     edx, [ebp-$80]
005DB46A   8B06                   mov     eax, [esi]
005DB46C   8B800C010000           mov     eax, [eax+$010C]
005DB472   8B08                   mov     ecx, [eax]
005DB474   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB47A   8D9574FFFFFF           lea     edx, [ebp+$FFFFFF74]
005DB480   8B06                   mov     eax, [esi]
005DB482   8B80EC000000           mov     eax, [eax+$00EC]
005DB488   8B08                   mov     ecx, [eax]
005DB48A   FF5160                 call    dword ptr [ecx+$60]
005DB48D   83BD74FFFFFF00         cmp     dword ptr [ebp+$FFFFFF74], +$00
005DB494   746E                   jz      005DB504

* Possible String Reference to: 'FANTASIA'
|
005DB496   6814B85D00             push    $005DB814
005DB49B   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]
005DB4A1   50                     push    eax
005DB4A2   8D9564FFFFFF           lea     edx, [ebp+$FFFFFF64]
005DB4A8   8B06                   mov     eax, [esi]
005DB4AA   8B80EC000000           mov     eax, [eax+$00EC]
005DB4B0   8B08                   mov     ecx, [eax]
005DB4B2   FF5160                 call    dword ptr [ecx+$60]
005DB4B5   8B8564FFFFFF           mov     eax, [ebp+$FFFFFF64]
005DB4BB   8D9568FFFFFF           lea     edx, [ebp+$FFFFFF68]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DB4C1   E85A861C00             call    007A3B20
005DB4C6   8B8D68FFFFFF           mov     ecx, [ebp+$FFFFFF68]
005DB4CC   8D856CFFFFFF           lea     eax, [ebp+$FFFFFF6C]

* Possible String Reference to: 'CODFUNC = '
|
005DB4D2   BA28B85D00             mov     edx, $005DB828

* Reference to: System.@LStrCat3;
|
005DB4D7   E8CCA2E2FF             call    004057A8
005DB4DC   8B8D6CFFFFFF           mov     ecx, [ebp+$FFFFFF6C]

* Possible String Reference to: 'FUNCREPR'
|
005DB4E2   BA3CB85D00             mov     edx, $005DB83C
005DB4E7   33C0                   xor     eax, eax

|
005DB4E9   E822DE1C00             call    007A9310
005DB4EE   8B9570FFFFFF           mov     edx, [ebp+$FFFFFF70]
005DB4F4   8B06                   mov     eax, [esi]
005DB4F6   8B80F8000000           mov     eax, [eax+$00F8]
005DB4FC   8B08                   mov     ecx, [eax]
005DB4FE   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB504   8D9560FFFFFF           lea     edx, [ebp+$FFFFFF60]
005DB50A   8B06                   mov     eax, [esi]
005DB50C   8B80D0000000           mov     eax, [eax+$00D0]
005DB512   8B08                   mov     ecx, [eax]
005DB514   FF5160                 call    dword ptr [ecx+$60]
005DB517   83BD60FFFFFF00         cmp     dword ptr [ebp+$FFFFFF60], +$00
005DB51E   0F8495000000           jz      005DB5B9
005DB524   8D855CFFFFFF           lea     eax, [ebp+$FFFFFF5C]
005DB52A   50                     push    eax
005DB52B   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
005DB531   8B06                   mov     eax, [esi]
005DB533   8B80D0000000           mov     eax, [eax+$00D0]
005DB539   8B08                   mov     ecx, [eax]
005DB53B   FF5160                 call    dword ptr [ecx+$60]
005DB53E   8B8558FFFFFF           mov     eax, [ebp+$FFFFFF58]
005DB544   B901000000             mov     ecx, $00000001
005DB549   BA01000000             mov     edx, $00000001

* Reference to: System.@LStrCopy;
|
005DB54E   E869A4E2FF             call    004059BC
005DB553   8B855CFFFFFF           mov     eax, [ebp+$FFFFFF5C]
005DB559   BA50B85D00             mov     edx, $005DB850

* Reference to: System.@LStrCmp;
|
005DB55E   E845A3E2FF             call    004058A8
005DB563   742B                   jz      005DB590
005DB565   8D9554FFFFFF           lea     edx, [ebp+$FFFFFF54]
005DB56B   8B06                   mov     eax, [esi]
005DB56D   8B8008010000           mov     eax, [eax+$0108]
005DB573   8B08                   mov     ecx, [eax]
005DB575   FF5160                 call    dword ptr [ecx+$60]
005DB578   8B9554FFFFFF           mov     edx, [ebp+$FFFFFF54]
005DB57E   8B06                   mov     eax, [esi]
005DB580   8B80B4000000           mov     eax, [eax+$00B4]
005DB586   8B08                   mov     ecx, [eax]
005DB588   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB58E   EB29                   jmp     005DB5B9
005DB590   8D9550FFFFFF           lea     edx, [ebp+$FFFFFF50]
005DB596   8B06                   mov     eax, [esi]
005DB598   8B80DC000000           mov     eax, [eax+$00DC]
005DB59E   8B08                   mov     ecx, [eax]
005DB5A0   FF5160                 call    dword ptr [ecx+$60]
005DB5A3   8B9550FFFFFF           mov     edx, [ebp+$FFFFFF50]
005DB5A9   8B06                   mov     eax, [esi]
005DB5AB   8B80B4000000           mov     eax, [eax+$00B4]
005DB5B1   8B08                   mov     ecx, [eax]
005DB5B3   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB5B9   33C0                   xor     eax, eax
005DB5BB   5A                     pop     edx
005DB5BC   59                     pop     ecx
005DB5BD   59                     pop     ecx
005DB5BE   648910                 mov     fs:[eax], edx
005DB5C1   EB41                   jmp     005DB604

* Reference to: System.@HandleOnException;
|
005DB5C3   E9E895E2FF             jmp     00404BB0
005DB5C8   0100                   add     [eax], eax
005DB5CA   0000                   add     [eax], al
005DB5CC   40                     inc     eax
005DB5CD   95                     xchg    eax, ebp
005DB5CE   40                     inc     eax
005DB5CF   00D4                   add     ah, dl
005DB5D1   B55D                   mov     ch, $5D
005DB5D3   0089C36A008B           add     [ecx+$8B006AC3], cl
005DB5D9   4B                     dec     ebx
005DB5DA   048D                   add     al, -$73
005DB5DC   854CFFFF               test    [edi+edi*8-$01], ecx
005DB5E0   FFBA                   DB  $FF, $BA  //      
005DB5E2   5C                     pop     esp
005DB5E3   B85D00E8BD             mov     eax, $BDE8005D
005DB5E8   A1E2FF8B85             mov     eax, dword ptr [$858BFFE2]
005DB5ED   4C                     dec     esp
005DB5EE   FFFF                   DB  $FF, $FF  //      
005DB5F0   FF668B                 jmp     dword ptr [esi-$75]
005DB5F3   0D90B85D00             or      eax, $005DB890
005DB5F8   B201                   mov     dl, $01

|
005DB5FA   E82D85E6FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
005DB5FF   E8AC98E2FF             call    00404EB0

****** END
|
005DB604   33C0                   xor     eax, eax
005DB606   5A                     pop     edx
005DB607   59                     pop     ecx
005DB608   59                     pop     ecx
005DB609   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DB60C   6819B65D00             push    $005DB619
005DB611   C3                     ret


* Reference to: System.@HandleFinally;
|
005DB612   E92197E2FF             jmp     00404D38
005DB617   EBF8                   jmp     005DB611

****** END
|
005DB619   33C0                   xor     eax, eax
005DB61B   5A                     pop     edx
005DB61C   59                     pop     ecx
005DB61D   59                     pop     ecx
005DB61E   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
005DB621   686BB65D00             push    $005DB66B
005DB626   8D854CFFFFFF           lea     eax, [ebp+$FFFFFF4C]
005DB62C   BA11000000             mov     edx, $00000011

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005DB631   E88A9EE2FF             call    004054C0
005DB636   8D4598                 lea     eax, [ebp-$68]
005DB639   BA0D000000             mov     edx, $0000000D

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005DB63E   E87D9EE2FF             call    004054C0
005DB643   8D45E0                 lea     eax, [ebp-$20]
005DB646   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005DB64B   E8709EE2FF             call    004054C0
005DB650   8D45F8                 lea     eax, [ebp-$08]

* Reference to object tLookup
|
005DB653   8B1514515D00           mov     edx, [$005D5114]
005DB659   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
005DB65E   E839AAE2FF             call    0040609C
005DB663   C3                     ret


* Reference to: System.@HandleFinally;
|
005DB664   E9CF96E2FF             jmp     00404D38
005DB669   EBBB                   jmp     005DB626

****** END
|
005DB66B   5F                     pop     edi
005DB66C   5E                     pop     esi
005DB66D   5B                     pop     ebx
005DB66E   8BE5                   mov     esp, ebp
005DB670   5D                     pop     ebp
005DB671   C3                     ret

*)
end;

procedure TDm3.TbReqItemNewRecord(Sender : TObject);
begin
(*
005DB894   55                     push    ebp
005DB895   8BEC                   mov     ebp, esp
005DB897   6A00                   push    $00
005DB899   33C0                   xor     eax, eax
005DB89B   55                     push    ebp
005DB89C   6805B95D00             push    $005DB905

***** TRY
|
005DB8A1   64FF30                 push    dword ptr fs:[eax]
005DB8A4   648920                 mov     fs:[eax], esp
005DB8A7   8D55FC                 lea     edx, [ebp-$04]
005DB8AA   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DB8AF   8B4078                 mov     eax, [eax+$78]
005DB8B2   8B08                   mov     ecx, [eax]
005DB8B4   FF5160                 call    dword ptr [ecx+$60]
005DB8B7   8B55FC                 mov     edx, [ebp-$04]
005DB8BA   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DB8BF   8B80C8000000           mov     eax, [eax+$00C8]
005DB8C5   8B08                   mov     ecx, [eax]
005DB8C7   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB8CD   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DB8D2   8B407C                 mov     eax, [eax+$7C]
005DB8D5   8B10                   mov     edx, [eax]
005DB8D7   FF5258                 call    dword ptr [edx+$58]
005DB8DA   8BD0                   mov     edx, eax
005DB8DC   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DB8E1   8B80CC000000           mov     eax, [eax+$00CC]
005DB8E7   8B08                   mov     ecx, [eax]
005DB8E9   FF91A8000000           call    dword ptr [ecx+$00A8]
005DB8EF   33C0                   xor     eax, eax
005DB8F1   5A                     pop     edx
005DB8F2   59                     pop     ecx
005DB8F3   59                     pop     ecx
005DB8F4   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DB8F7   680CB95D00             push    $005DB90C
005DB8FC   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DB8FF   E8989BE2FF             call    0040549C
005DB904   C3                     ret


* Reference to: System.@HandleFinally;
|
005DB905   E92E94E2FF             jmp     00404D38
005DB90A   EBF0                   jmp     005DB8FC

****** END
|
005DB90C   59                     pop     ecx
005DB90D   5D                     pop     ebp
005DB90E   C3                     ret

*)
end;

procedure TDm3.TbCaixaNewRecord(Sender : TObject);
begin
(*
005DB910   55                     push    ebp
005DB911   8BEC                   mov     ebp, esp
005DB913   8B15DCAD7D00           mov     edx, [$007DADDC]
005DB919   8B12                   mov     edx, [edx]
005DB91B   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DB920   8B8020010000           mov     eax, [eax+$0120]
005DB926   8B08                   mov     ecx, [eax]
005DB928   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB92E   8B15D4A27D00           mov     edx, [$007DA2D4]
005DB934   8B12                   mov     edx, [edx]
005DB936   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DB93B   8B8024010000           mov     eax, [eax+$0124]
005DB941   8B08                   mov     ecx, [eax]
005DB943   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB949   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DB94E   8B8080010000           mov     eax, [eax+$0180]
005DB954   BA6CB95D00             mov     edx, $005DB96C
005DB959   8B08                   mov     ecx, [eax]
005DB95B   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB961   5D                     pop     ebp
005DB962   C3                     ret

*)
end;

procedure TDm3.TbCaixTipoNewRecord(Sender : TObject);
begin
(*
005DB970   55                     push    ebp
005DB971   8BEC                   mov     ebp, esp
005DB973   6A00                   push    $00
005DB975   6A00                   push    $00
005DB977   6A00                   push    $00
005DB979   53                     push    ebx
005DB97A   BBB0D97D00             mov     ebx, $007DD9B0
005DB97F   33C0                   xor     eax, eax
005DB981   55                     push    ebp

* Possible String Reference to: 'È"ì‚ˇÎÎ[ãÂ]√ç@'
|
005DB982   6811BA5D00             push    $005DBA11

***** TRY
|
005DB987   64FF30                 push    dword ptr fs:[eax]
005DB98A   648920                 mov     fs:[eax], esp
005DB98D   8D55FC                 lea     edx, [ebp-$04]
005DB990   8B03                   mov     eax, [ebx]

* Reference to control TDm3.TbCaixaFILIAL : TIBStringField
|
005DB992   8B8020010000           mov     eax, [eax+$0120]
005DB998   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TIBStringField.OFFS_60
|
005DB99A   FF5160                 call    dword ptr [ecx+$60]
005DB99D   8B55FC                 mov     edx, [ebp-$04]
005DB9A0   8B03                   mov     eax, [ebx]

* Reference to field TIBStringField.OFFS_0188
|
005DB9A2   8B8088010000           mov     eax, [eax+$0188]
005DB9A8   8B08                   mov     ecx, [eax]
005DB9AA   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB9B0   8D55F8                 lea     edx, [ebp-$08]
005DB9B3   8B03                   mov     eax, [ebx]
005DB9B5   8B8024010000           mov     eax, [eax+$0124]
005DB9BB   8B08                   mov     ecx, [eax]
005DB9BD   FF5160                 call    dword ptr [ecx+$60]
005DB9C0   8B55F8                 mov     edx, [ebp-$08]
005DB9C3   8B03                   mov     eax, [ebx]
005DB9C5   8B808C010000           mov     eax, [eax+$018C]
005DB9CB   8B08                   mov     ecx, [eax]
005DB9CD   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB9D3   8D55F4                 lea     edx, [ebp-$0C]
005DB9D6   8B03                   mov     eax, [ebx]
005DB9D8   8B8028010000           mov     eax, [eax+$0128]
005DB9DE   8B08                   mov     ecx, [eax]
005DB9E0   FF5160                 call    dword ptr [ecx+$60]
005DB9E3   8B55F4                 mov     edx, [ebp-$0C]
005DB9E6   8B03                   mov     eax, [ebx]
005DB9E8   8B8090010000           mov     eax, [eax+$0190]
005DB9EE   8B08                   mov     ecx, [eax]
005DB9F0   FF91B0000000           call    dword ptr [ecx+$00B0]
005DB9F6   33C0                   xor     eax, eax
005DB9F8   5A                     pop     edx
005DB9F9   59                     pop     ecx
005DB9FA   59                     pop     ecx
005DB9FB   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[ãÂ]√ç@'
|
005DB9FE   6818BA5D00             push    $005DBA18
005DBA03   8D45F4                 lea     eax, [ebp-$0C]
005DBA06   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005DBA0B   E8B09AE2FF             call    004054C0
005DBA10   C3                     ret


* Reference to: System.@HandleFinally;
|
005DBA11   E92293E2FF             jmp     00404D38
005DBA16   EBEB                   jmp     005DBA03

****** END
|
005DBA18   5B                     pop     ebx
005DBA19   8BE5                   mov     esp, ebp
005DBA1B   5D                     pop     ebp
005DBA1C   C3                     ret

*)
end;

procedure TDm3.TbCaixaCalcFields(Sender : TObject);
begin
(*
005DBA20   55                     push    ebp
005DBA21   8BEC                   mov     ebp, esp
005DBA23   83C4B4                 add     esp, -$4C
005DBA26   53                     push    ebx
005DBA27   56                     push    esi
005DBA28   57                     push    edi
005DBA29   33C9                   xor     ecx, ecx
005DBA2B   894DB4                 mov     [ebp-$4C], ecx
005DBA2E   894DB8                 mov     [ebp-$48], ecx
005DBA31   894DBC                 mov     [ebp-$44], ecx
005DBA34   894DC0                 mov     [ebp-$40], ecx
005DBA37   894DC4                 mov     [ebp-$3C], ecx
005DBA3A   BEB0D97D00             mov     esi, $007DD9B0
005DBA3F   33C0                   xor     eax, eax
005DBA41   55                     push    ebp

* Possible String Reference to: 'ÈÏê‚ˇÎÎ_^[ãÂ]√'
|
005DBA42   6847BC5D00             push    $005DBC47

***** TRY
|
005DBA47   64FF30                 push    dword ptr fs:[eax]
005DBA4A   648920                 mov     fs:[eax], esp
005DBA4D   33C0                   xor     eax, eax
005DBA4F   55                     push    ebp
005DBA50   68FCBB5D00             push    $005DBBFC

***** TRY
|
005DBA55   64FF30                 push    dword ptr fs:[eax]
005DBA58   648920                 mov     fs:[eax], esp
005DBA5B   8B06                   mov     eax, [esi]
005DBA5D   8B8068010000           mov     eax, [eax+$0168]
005DBA63   8B10                   mov     edx, [eax]
005DBA65   FF5254                 call    dword ptr [edx+$54]
005DBA68   DD5DF8                 fstp    qword ptr [ebp-$08]
005DBA6B   9B                     wait
005DBA6C   8B06                   mov     eax, [esi]
005DBA6E   8B8070010000           mov     eax, [eax+$0170]
005DBA74   8B10                   mov     edx, [eax]
005DBA76   FF5254                 call    dword ptr [edx+$54]
005DBA79   DC45F8                 fadd    qword ptr [ebp-$08]
005DBA7C   DB7DEC                 fstp    tbyte ptr [ebp-$14]
005DBA7F   9B                     wait
005DBA80   8B06                   mov     eax, [esi]
005DBA82   8B8078010000           mov     eax, [eax+$0178]
005DBA88   8B10                   mov     edx, [eax]
005DBA8A   FF5254                 call    dword ptr [edx+$54]
005DBA8D   DB6DEC                 fld     tbyte ptr [ebp-$14]
005DBA90   DEC1                   faddp   st(1), st(0)
005DBA92   83C4F8                 add     esp, -$08
005DBA95   DD1C24                 fstp    qword ptr [esp]
005DBA98   9B                     wait
005DBA99   8B06                   mov     eax, [esi]
005DBA9B   8B80BC010000           mov     eax, [eax+$01BC]
005DBAA1   8B10                   mov     edx, [eax]
005DBAA3   FF92A4000000           call    dword ptr [edx+$00A4]
005DBAA9   8B06                   mov     eax, [esi]
005DBAAB   8B802C010000           mov     eax, [eax+$012C]
005DBAB1   8B10                   mov     edx, [eax]
005DBAB3   FF5254                 call    dword ptr [edx+$54]
005DBAB6   DD5DF8                 fstp    qword ptr [ebp-$08]
005DBAB9   9B                     wait
005DBABA   8B06                   mov     eax, [esi]
005DBABC   8B804C010000           mov     eax, [eax+$014C]
005DBAC2   8B10                   mov     edx, [eax]
005DBAC4   FF5254                 call    dword ptr [edx+$54]
005DBAC7   DC45F8                 fadd    qword ptr [ebp-$08]
005DBACA   DB7DEC                 fstp    tbyte ptr [ebp-$14]
005DBACD   9B                     wait
005DBACE   8B06                   mov     eax, [esi]
005DBAD0   8B8030010000           mov     eax, [eax+$0130]
005DBAD6   8B10                   mov     edx, [eax]
005DBAD8   FF5254                 call    dword ptr [edx+$54]
005DBADB   DB6DEC                 fld     tbyte ptr [ebp-$14]
005DBADE   DEC1                   faddp   st(1), st(0)
005DBAE0   DB7DE0                 fstp    tbyte ptr [ebp-$20]
005DBAE3   9B                     wait
005DBAE4   8B06                   mov     eax, [esi]
005DBAE6   8B8044010000           mov     eax, [eax+$0144]
005DBAEC   8B10                   mov     edx, [eax]
005DBAEE   FF5254                 call    dword ptr [edx+$54]
005DBAF1   DB6DE0                 fld     tbyte ptr [ebp-$20]
005DBAF4   DEC1                   faddp   st(1), st(0)
005DBAF6   DB7DD4                 fstp    tbyte ptr [ebp-$2C]
005DBAF9   9B                     wait
005DBAFA   8B06                   mov     eax, [esi]
005DBAFC   8B8040010000           mov     eax, [eax+$0140]
005DBB02   8B10                   mov     edx, [eax]
005DBB04   FF5254                 call    dword ptr [edx+$54]
005DBB07   DB6DD4                 fld     tbyte ptr [ebp-$2C]
005DBB0A   DEE1                   fsubrp  st(1), st(0)
005DBB0C   DB7DC8                 fstp    tbyte ptr [ebp-$38]
005DBB0F   9B                     wait
005DBB10   8B06                   mov     eax, [esi]
005DBB12   8B80BC010000           mov     eax, [eax+$01BC]
005DBB18   8B10                   mov     edx, [eax]
005DBB1A   FF5254                 call    dword ptr [edx+$54]
005DBB1D   DB6DC8                 fld     tbyte ptr [ebp-$38]
005DBB20   DEE1                   fsubrp  st(1), st(0)
005DBB22   83C4F8                 add     esp, -$08
005DBB25   DD1C24                 fstp    qword ptr [esp]
005DBB28   9B                     wait
005DBB29   8B06                   mov     eax, [esi]
005DBB2B   8B80B8010000           mov     eax, [eax+$01B8]
005DBB31   8B10                   mov     edx, [eax]
005DBB33   FF92A4000000           call    dword ptr [edx+$00A4]
005DBB39   8D55C4                 lea     edx, [ebp-$3C]
005DBB3C   8B06                   mov     eax, [esi]
005DBB3E   8B8080010000           mov     eax, [eax+$0180]
005DBB44   8B08                   mov     ecx, [eax]
005DBB46   FF5160                 call    dword ptr [ecx+$60]
005DBB49   8B45C4                 mov     eax, [ebp-$3C]
005DBB4C   BA60BC5D00             mov     edx, $005DBC60

* Reference to: System.@LStrCmp;
|
005DBB51   E8529DE2FF             call    004058A8
005DBB56   751A                   jnz     005DBB72
005DBB58   8B06                   mov     eax, [esi]
005DBB5A   8B80B4010000           mov     eax, [eax+$01B4]

* Possible String Reference to: 'Fechado'
|
005DBB60   BA6CBC5D00             mov     edx, $005DBC6C
005DBB65   8B08                   mov     ecx, [eax]
005DBB67   FF91B0000000           call    dword ptr [ecx+$00B0]
005DBB6D   E980000000             jmp     005DBBF2
005DBB72   8D55C0                 lea     edx, [ebp-$40]
005DBB75   8B06                   mov     eax, [esi]
005DBB77   8B8080010000           mov     eax, [eax+$0180]
005DBB7D   8B08                   mov     ecx, [eax]
005DBB7F   FF5160                 call    dword ptr [ecx+$60]
005DBB82   8B45C0                 mov     eax, [ebp-$40]
005DBB85   BA7CBC5D00             mov     edx, $005DBC7C

* Reference to: System.@LStrCmp;
|
005DBB8A   E8199DE2FF             call    004058A8
005DBB8F   7517                   jnz     005DBBA8
005DBB91   8B06                   mov     eax, [esi]
005DBB93   8B80B4010000           mov     eax, [eax+$01B4]

* Possible String Reference to: 'Parcial'
|
005DBB99   BA88BC5D00             mov     edx, $005DBC88
005DBB9E   8B08                   mov     ecx, [eax]
005DBBA0   FF91B0000000           call    dword ptr [ecx+$00B0]
005DBBA6   EB4A                   jmp     005DBBF2
005DBBA8   8D55BC                 lea     edx, [ebp-$44]
005DBBAB   8B06                   mov     eax, [esi]
005DBBAD   8B8080010000           mov     eax, [eax+$0180]
005DBBB3   8B08                   mov     ecx, [eax]
005DBBB5   FF5160                 call    dword ptr [ecx+$60]
005DBBB8   8B45BC                 mov     eax, [ebp-$44]
005DBBBB   BA98BC5D00             mov     edx, $005DBC98

* Reference to: System.@LStrCmp;
|
005DBBC0   E8E39CE2FF             call    004058A8
005DBBC5   7416                   jz      005DBBDD
005DBBC7   8D55B8                 lea     edx, [ebp-$48]
005DBBCA   8B06                   mov     eax, [esi]
005DBBCC   8B8080010000           mov     eax, [eax+$0180]
005DBBD2   8B08                   mov     ecx, [eax]
005DBBD4   FF5160                 call    dword ptr [ecx+$60]
005DBBD7   837DB800               cmp     dword ptr [ebp-$48], +$00
005DBBDB   7515                   jnz     005DBBF2
005DBBDD   8B06                   mov     eax, [esi]
005DBBDF   8B80B4010000           mov     eax, [eax+$01B4]

* Possible String Reference to: 'Aberto'
|
005DBBE5   BAA4BC5D00             mov     edx, $005DBCA4
005DBBEA   8B08                   mov     ecx, [eax]
005DBBEC   FF91B0000000           call    dword ptr [ecx+$00B0]
005DBBF2   33C0                   xor     eax, eax
005DBBF4   5A                     pop     edx
005DBBF5   59                     pop     ecx
005DBBF6   59                     pop     ecx
005DBBF7   648910                 mov     fs:[eax], edx
005DBBFA   EB30                   jmp     005DBC2C

* Reference to: System.@HandleOnException;
|
005DBBFC   E9AF8FE2FF             jmp     00404BB0
005DBC01   0100                   add     [eax], eax
005DBC03   0000                   add     [eax], al
005DBC05   40                     inc     eax
005DBC06   95                     xchg    eax, ebp
005DBC07   40                     inc     eax
005DBC08   000DBC5D0089           add     [$89005DBC], cl
005DBC0E   C3                     ret

005DBC0F   8B4B04                 mov     ecx, [ebx+$04]
005DBC12   8D45B4                 lea     eax, [ebp-$4C]

* Possible String Reference to: 'Erro no evento OnCalcFields da tabe
|                                la Caixa!'
|
005DBC15   BAB4BC5D00             mov     edx, $005DBCB4

* Reference to: System.@LStrCat3;
|
005DBC1A   E8899BE2FF             call    004057A8
005DBC1F   8B45B4                 mov     eax, [ebp-$4C]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
005DBC22   E8FD7FE6FF             call    00443C24

* Reference to: System.@DoneExcept;
|
005DBC27   E88492E2FF             call    00404EB0

****** END
|
005DBC2C   33C0                   xor     eax, eax
005DBC2E   5A                     pop     edx
005DBC2F   59                     pop     ecx
005DBC30   59                     pop     ecx
005DBC31   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
005DBC34   684EBC5D00             push    $005DBC4E
005DBC39   8D45B4                 lea     eax, [ebp-$4C]
005DBC3C   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005DBC41   E87A98E2FF             call    004054C0
005DBC46   C3                     ret

*)
end;

procedure TDm3.TbCaixTipoVENDASGetText(Sender : TObject);
begin
(*
005DBCE4   55                     push    ebp
005DBCE5   8BEC                   mov     ebp, esp
005DBCE7   6A00                   push    $00
005DBCE9   53                     push    ebx
005DBCEA   8BD9                   mov     ebx, ecx
005DBCEC   33C0                   xor     eax, eax
005DBCEE   55                     push    ebp
005DBCEF   6843BD5D00             push    $005DBD43

***** TRY
|
005DBCF4   64FF30                 push    dword ptr fs:[eax]
005DBCF7   648920                 mov     fs:[eax], esp
005DBCFA   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DBCFF   8B809C010000           mov     eax, [eax+$019C]
005DBD05   8B10                   mov     edx, [eax]
005DBD07   FF5254                 call    dword ptr [edx+$54]
005DBD0A   83C4F4                 add     esp, -$0C
005DBD0D   DB3C24                 fstp    tbyte ptr [esp]
005DBD10   9B                     wait
005DBD11   8D4DFC                 lea     ecx, [ebp-$04]
005DBD14   BA02000000             mov     edx, $00000002
005DBD19   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DBD1E   E801561C00             call    007A1324
005DBD23   8B55FC                 mov     edx, [ebp-$04]
005DBD26   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DBD28   E8C397E2FF             call    004054F0
005DBD2D   33C0                   xor     eax, eax
005DBD2F   5A                     pop     edx
005DBD30   59                     pop     ecx
005DBD31   59                     pop     ecx
005DBD32   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DBD35   684ABD5D00             push    $005DBD4A
005DBD3A   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DBD3D   E85A97E2FF             call    0040549C
005DBD42   C3                     ret


* Reference to: System.@HandleFinally;
|
005DBD43   E9F08FE2FF             jmp     00404D38
005DBD48   EBF0                   jmp     005DBD3A

****** END
|
005DBD4A   5B                     pop     ebx
005DBD4B   59                     pop     ecx
005DBD4C   5D                     pop     ebp
005DBD4D   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixTipoSAQUESGetText(Sender : TObject);
begin
(*
005DBD50   55                     push    ebp
005DBD51   8BEC                   mov     ebp, esp
005DBD53   6A00                   push    $00
005DBD55   53                     push    ebx
005DBD56   8BD9                   mov     ebx, ecx
005DBD58   33C0                   xor     eax, eax
005DBD5A   55                     push    ebp
005DBD5B   68AFBD5D00             push    $005DBDAF

***** TRY
|
005DBD60   64FF30                 push    dword ptr fs:[eax]
005DBD63   648920                 mov     fs:[eax], esp
005DBD66   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DBD6B   8B80A0010000           mov     eax, [eax+$01A0]
005DBD71   8B10                   mov     edx, [eax]
005DBD73   FF5254                 call    dword ptr [edx+$54]
005DBD76   83C4F4                 add     esp, -$0C
005DBD79   DB3C24                 fstp    tbyte ptr [esp]
005DBD7C   9B                     wait
005DBD7D   8D4DFC                 lea     ecx, [ebp-$04]
005DBD80   BA02000000             mov     edx, $00000002
005DBD85   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DBD8A   E895551C00             call    007A1324
005DBD8F   8B55FC                 mov     edx, [ebp-$04]
005DBD92   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DBD94   E85797E2FF             call    004054F0
005DBD99   33C0                   xor     eax, eax
005DBD9B   5A                     pop     edx
005DBD9C   59                     pop     ecx
005DBD9D   59                     pop     ecx
005DBD9E   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DBDA1   68B6BD5D00             push    $005DBDB6
005DBDA6   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DBDA9   E8EE96E2FF             call    0040549C
005DBDAE   C3                     ret


* Reference to: System.@HandleFinally;
|
005DBDAF   E9848FE2FF             jmp     00404D38
005DBDB4   EBF0                   jmp     005DBDA6

****** END
|
005DBDB6   5B                     pop     ebx
005DBDB7   59                     pop     ecx
005DBDB8   5D                     pop     ebp
005DBDB9   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixTipoSUPRIMENTOSGetText(Sender : TObject);
begin
(*
005DBDBC   55                     push    ebp
005DBDBD   8BEC                   mov     ebp, esp
005DBDBF   6A00                   push    $00
005DBDC1   53                     push    ebx
005DBDC2   8BD9                   mov     ebx, ecx
005DBDC4   33C0                   xor     eax, eax
005DBDC6   55                     push    ebp
005DBDC7   681BBE5D00             push    $005DBE1B

***** TRY
|
005DBDCC   64FF30                 push    dword ptr fs:[eax]
005DBDCF   648920                 mov     fs:[eax], esp
005DBDD2   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DBDD7   8B80A4010000           mov     eax, [eax+$01A4]
005DBDDD   8B10                   mov     edx, [eax]
005DBDDF   FF5254                 call    dword ptr [edx+$54]
005DBDE2   83C4F4                 add     esp, -$0C
005DBDE5   DB3C24                 fstp    tbyte ptr [esp]
005DBDE8   9B                     wait
005DBDE9   8D4DFC                 lea     ecx, [ebp-$04]
005DBDEC   BA02000000             mov     edx, $00000002
005DBDF1   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DBDF6   E829551C00             call    007A1324
005DBDFB   8B55FC                 mov     edx, [ebp-$04]
005DBDFE   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DBE00   E8EB96E2FF             call    004054F0
005DBE05   33C0                   xor     eax, eax
005DBE07   5A                     pop     edx
005DBE08   59                     pop     ecx
005DBE09   59                     pop     ecx
005DBE0A   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DBE0D   6822BE5D00             push    $005DBE22
005DBE12   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DBE15   E88296E2FF             call    0040549C
005DBE1A   C3                     ret


* Reference to: System.@HandleFinally;
|
005DBE1B   E9188FE2FF             jmp     00404D38
005DBE20   EBF0                   jmp     005DBE12

****** END
|
005DBE22   5B                     pop     ebx
005DBE23   59                     pop     ecx
005DBE24   5D                     pop     ebp
005DBE25   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixTipoTRANSFERENCIASGetText(Sender : TObject);
begin
(*
005DBE28   55                     push    ebp
005DBE29   8BEC                   mov     ebp, esp
005DBE2B   6A00                   push    $00
005DBE2D   53                     push    ebx
005DBE2E   8BD9                   mov     ebx, ecx
005DBE30   33C0                   xor     eax, eax
005DBE32   55                     push    ebp
005DBE33   6887BE5D00             push    $005DBE87

***** TRY
|
005DBE38   64FF30                 push    dword ptr fs:[eax]
005DBE3B   648920                 mov     fs:[eax], esp
005DBE3E   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DBE43   8B80A8010000           mov     eax, [eax+$01A8]
005DBE49   8B10                   mov     edx, [eax]
005DBE4B   FF5254                 call    dword ptr [edx+$54]
005DBE4E   83C4F4                 add     esp, -$0C
005DBE51   DB3C24                 fstp    tbyte ptr [esp]
005DBE54   9B                     wait
005DBE55   8D4DFC                 lea     ecx, [ebp-$04]
005DBE58   BA02000000             mov     edx, $00000002
005DBE5D   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DBE62   E8BD541C00             call    007A1324
005DBE67   8B55FC                 mov     edx, [ebp-$04]
005DBE6A   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DBE6C   E87F96E2FF             call    004054F0
005DBE71   33C0                   xor     eax, eax
005DBE73   5A                     pop     edx
005DBE74   59                     pop     ecx
005DBE75   59                     pop     ecx
005DBE76   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DBE79   688EBE5D00             push    $005DBE8E
005DBE7E   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DBE81   E81696E2FF             call    0040549C
005DBE86   C3                     ret


* Reference to: System.@HandleFinally;
|
005DBE87   E9AC8EE2FF             jmp     00404D38
005DBE8C   EBF0                   jmp     005DBE7E

****** END
|
005DBE8E   5B                     pop     ebx
005DBE8F   59                     pop     ecx
005DBE90   5D                     pop     ebp
005DBE91   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixTipoVLRFECHADOGetText(Sender : TObject);
begin
(*
005DBE94   55                     push    ebp
005DBE95   8BEC                   mov     ebp, esp
005DBE97   6A00                   push    $00
005DBE99   53                     push    ebx
005DBE9A   8BD9                   mov     ebx, ecx
005DBE9C   33C0                   xor     eax, eax
005DBE9E   55                     push    ebp
005DBE9F   68F3BE5D00             push    $005DBEF3

***** TRY
|
005DBEA4   64FF30                 push    dword ptr fs:[eax]
005DBEA7   648920                 mov     fs:[eax], esp
005DBEAA   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DBEAF   8B80AC010000           mov     eax, [eax+$01AC]
005DBEB5   8B10                   mov     edx, [eax]
005DBEB7   FF5254                 call    dword ptr [edx+$54]
005DBEBA   83C4F4                 add     esp, -$0C
005DBEBD   DB3C24                 fstp    tbyte ptr [esp]
005DBEC0   9B                     wait
005DBEC1   8D4DFC                 lea     ecx, [ebp-$04]
005DBEC4   BA02000000             mov     edx, $00000002
005DBEC9   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DBECE   E851541C00             call    007A1324
005DBED3   8B55FC                 mov     edx, [ebp-$04]
005DBED6   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DBED8   E81396E2FF             call    004054F0
005DBEDD   33C0                   xor     eax, eax
005DBEDF   5A                     pop     edx
005DBEE0   59                     pop     ecx
005DBEE1   59                     pop     ecx
005DBEE2   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DBEE5   68FABE5D00             push    $005DBEFA
005DBEEA   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DBEED   E8AA95E2FF             call    0040549C
005DBEF2   C3                     ret


* Reference to: System.@HandleFinally;
|
005DBEF3   E9408EE2FF             jmp     00404D38
005DBEF8   EBF0                   jmp     005DBEEA

****** END
|
005DBEFA   5B                     pop     ebx
005DBEFB   59                     pop     ecx
005DBEFC   5D                     pop     ebp
005DBEFD   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaSALDOANTERIORGetText(Sender : TObject);
begin
(*
005DBF00   55                     push    ebp
005DBF01   8BEC                   mov     ebp, esp
005DBF03   6A00                   push    $00
005DBF05   53                     push    ebx
005DBF06   8BD9                   mov     ebx, ecx
005DBF08   33C0                   xor     eax, eax
005DBF0A   55                     push    ebp
005DBF0B   685FBF5D00             push    $005DBF5F

***** TRY
|
005DBF10   64FF30                 push    dword ptr fs:[eax]
005DBF13   648920                 mov     fs:[eax], esp
005DBF16   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DBF1B   8B802C010000           mov     eax, [eax+$012C]
005DBF21   8B10                   mov     edx, [eax]
005DBF23   FF5254                 call    dword ptr [edx+$54]
005DBF26   83C4F4                 add     esp, -$0C
005DBF29   DB3C24                 fstp    tbyte ptr [esp]
005DBF2C   9B                     wait
005DBF2D   8D4DFC                 lea     ecx, [ebp-$04]
005DBF30   BA02000000             mov     edx, $00000002
005DBF35   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DBF3A   E8E5531C00             call    007A1324
005DBF3F   8B55FC                 mov     edx, [ebp-$04]
005DBF42   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DBF44   E8A795E2FF             call    004054F0
005DBF49   33C0                   xor     eax, eax
005DBF4B   5A                     pop     edx
005DBF4C   59                     pop     ecx
005DBF4D   59                     pop     ecx
005DBF4E   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DBF51   6866BF5D00             push    $005DBF66
005DBF56   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DBF59   E83E95E2FF             call    0040549C
005DBF5E   C3                     ret


* Reference to: System.@HandleFinally;
|
005DBF5F   E9D48DE2FF             jmp     00404D38
005DBF64   EBF0                   jmp     005DBF56

****** END
|
005DBF66   5B                     pop     ebx
005DBF67   59                     pop     ecx
005DBF68   5D                     pop     ebp
005DBF69   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaVENDASGetText(Sender : TObject);
begin
(*
005DBF6C   55                     push    ebp
005DBF6D   8BEC                   mov     ebp, esp
005DBF6F   6A00                   push    $00
005DBF71   53                     push    ebx
005DBF72   8BD9                   mov     ebx, ecx
005DBF74   33C0                   xor     eax, eax
005DBF76   55                     push    ebp
005DBF77   68CBBF5D00             push    $005DBFCB

***** TRY
|
005DBF7C   64FF30                 push    dword ptr fs:[eax]
005DBF7F   648920                 mov     fs:[eax], esp
005DBF82   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DBF87   8B8030010000           mov     eax, [eax+$0130]
005DBF8D   8B10                   mov     edx, [eax]
005DBF8F   FF5254                 call    dword ptr [edx+$54]
005DBF92   83C4F4                 add     esp, -$0C
005DBF95   DB3C24                 fstp    tbyte ptr [esp]
005DBF98   9B                     wait
005DBF99   8D4DFC                 lea     ecx, [ebp-$04]
005DBF9C   BA02000000             mov     edx, $00000002
005DBFA1   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DBFA6   E879531C00             call    007A1324
005DBFAB   8B55FC                 mov     edx, [ebp-$04]
005DBFAE   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DBFB0   E83B95E2FF             call    004054F0
005DBFB5   33C0                   xor     eax, eax
005DBFB7   5A                     pop     edx
005DBFB8   59                     pop     ecx
005DBFB9   59                     pop     ecx
005DBFBA   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DBFBD   68D2BF5D00             push    $005DBFD2
005DBFC2   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DBFC5   E8D294E2FF             call    0040549C
005DBFCA   C3                     ret


* Reference to: System.@HandleFinally;
|
005DBFCB   E9688DE2FF             jmp     00404D38
005DBFD0   EBF0                   jmp     005DBFC2

****** END
|
005DBFD2   5B                     pop     ebx
005DBFD3   59                     pop     ecx
005DBFD4   5D                     pop     ebp
005DBFD5   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaFRETEGetText(Sender : TObject);
begin
(*
005DBFD8   55                     push    ebp
005DBFD9   8BEC                   mov     ebp, esp
005DBFDB   6A00                   push    $00
005DBFDD   53                     push    ebx
005DBFDE   8BD9                   mov     ebx, ecx
005DBFE0   33C0                   xor     eax, eax
005DBFE2   55                     push    ebp
005DBFE3   6837C05D00             push    $005DC037

***** TRY
|
005DBFE8   64FF30                 push    dword ptr fs:[eax]
005DBFEB   648920                 mov     fs:[eax], esp
005DBFEE   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DBFF3   8B8034010000           mov     eax, [eax+$0134]
005DBFF9   8B10                   mov     edx, [eax]
005DBFFB   FF5254                 call    dword ptr [edx+$54]
005DBFFE   83C4F4                 add     esp, -$0C
005DC001   DB3C24                 fstp    tbyte ptr [esp]
005DC004   9B                     wait
005DC005   8D4DFC                 lea     ecx, [ebp-$04]
005DC008   BA02000000             mov     edx, $00000002
005DC00D   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC012   E80D531C00             call    007A1324
005DC017   8B55FC                 mov     edx, [ebp-$04]
005DC01A   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC01C   E8CF94E2FF             call    004054F0
005DC021   33C0                   xor     eax, eax
005DC023   5A                     pop     edx
005DC024   59                     pop     ecx
005DC025   59                     pop     ecx
005DC026   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC029   683EC05D00             push    $005DC03E
005DC02E   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC031   E86694E2FF             call    0040549C
005DC036   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC037   E9FC8CE2FF             jmp     00404D38
005DC03C   EBF0                   jmp     005DC02E

****** END
|
005DC03E   5B                     pop     ebx
005DC03F   59                     pop     ecx
005DC040   5D                     pop     ebp
005DC041   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaIPIGetText(Sender : TObject);
begin
(*
005DC044   55                     push    ebp
005DC045   8BEC                   mov     ebp, esp
005DC047   6A00                   push    $00
005DC049   53                     push    ebx
005DC04A   8BD9                   mov     ebx, ecx
005DC04C   33C0                   xor     eax, eax
005DC04E   55                     push    ebp
005DC04F   68A3C05D00             push    $005DC0A3

***** TRY
|
005DC054   64FF30                 push    dword ptr fs:[eax]
005DC057   648920                 mov     fs:[eax], esp
005DC05A   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC05F   8B8038010000           mov     eax, [eax+$0138]
005DC065   8B10                   mov     edx, [eax]
005DC067   FF5254                 call    dword ptr [edx+$54]
005DC06A   83C4F4                 add     esp, -$0C
005DC06D   DB3C24                 fstp    tbyte ptr [esp]
005DC070   9B                     wait
005DC071   8D4DFC                 lea     ecx, [ebp-$04]
005DC074   BA02000000             mov     edx, $00000002
005DC079   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC07E   E8A1521C00             call    007A1324
005DC083   8B55FC                 mov     edx, [ebp-$04]
005DC086   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC088   E86394E2FF             call    004054F0
005DC08D   33C0                   xor     eax, eax
005DC08F   5A                     pop     edx
005DC090   59                     pop     ecx
005DC091   59                     pop     ecx
005DC092   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC095   68AAC05D00             push    $005DC0AA
005DC09A   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC09D   E8FA93E2FF             call    0040549C
005DC0A2   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC0A3   E9908CE2FF             jmp     00404D38
005DC0A8   EBF0                   jmp     005DC09A

****** END
|
005DC0AA   5B                     pop     ebx
005DC0AB   59                     pop     ecx
005DC0AC   5D                     pop     ebp
005DC0AD   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaMERCGetText(Sender : TObject);
begin
(*
005DC0B0   55                     push    ebp
005DC0B1   8BEC                   mov     ebp, esp
005DC0B3   6A00                   push    $00
005DC0B5   53                     push    ebx
005DC0B6   8BD9                   mov     ebx, ecx
005DC0B8   33C0                   xor     eax, eax
005DC0BA   55                     push    ebp
005DC0BB   680FC15D00             push    $005DC10F

***** TRY
|
005DC0C0   64FF30                 push    dword ptr fs:[eax]
005DC0C3   648920                 mov     fs:[eax], esp
005DC0C6   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC0CB   8B803C010000           mov     eax, [eax+$013C]
005DC0D1   8B10                   mov     edx, [eax]
005DC0D3   FF5254                 call    dword ptr [edx+$54]
005DC0D6   83C4F4                 add     esp, -$0C
005DC0D9   DB3C24                 fstp    tbyte ptr [esp]
005DC0DC   9B                     wait
005DC0DD   8D4DFC                 lea     ecx, [ebp-$04]
005DC0E0   BA02000000             mov     edx, $00000002
005DC0E5   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC0EA   E835521C00             call    007A1324
005DC0EF   8B55FC                 mov     edx, [ebp-$04]
005DC0F2   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC0F4   E8F793E2FF             call    004054F0
005DC0F9   33C0                   xor     eax, eax
005DC0FB   5A                     pop     edx
005DC0FC   59                     pop     ecx
005DC0FD   59                     pop     ecx
005DC0FE   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC101   6816C15D00             push    $005DC116
005DC106   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC109   E88E93E2FF             call    0040549C
005DC10E   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC10F   E9248CE2FF             jmp     00404D38
005DC114   EBF0                   jmp     005DC106

****** END
|
005DC116   5B                     pop     ebx
005DC117   59                     pop     ecx
005DC118   5D                     pop     ebp
005DC119   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaSAQUESGetText(Sender : TObject);
begin
(*
005DC11C   55                     push    ebp
005DC11D   8BEC                   mov     ebp, esp
005DC11F   6A00                   push    $00
005DC121   53                     push    ebx
005DC122   8BD9                   mov     ebx, ecx
005DC124   33C0                   xor     eax, eax
005DC126   55                     push    ebp
005DC127   687BC15D00             push    $005DC17B

***** TRY
|
005DC12C   64FF30                 push    dword ptr fs:[eax]
005DC12F   648920                 mov     fs:[eax], esp
005DC132   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC137   8B8040010000           mov     eax, [eax+$0140]
005DC13D   8B10                   mov     edx, [eax]
005DC13F   FF5254                 call    dword ptr [edx+$54]
005DC142   83C4F4                 add     esp, -$0C
005DC145   DB3C24                 fstp    tbyte ptr [esp]
005DC148   9B                     wait
005DC149   8D4DFC                 lea     ecx, [ebp-$04]
005DC14C   BA02000000             mov     edx, $00000002
005DC151   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC156   E8C9511C00             call    007A1324
005DC15B   8B55FC                 mov     edx, [ebp-$04]
005DC15E   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC160   E88B93E2FF             call    004054F0
005DC165   33C0                   xor     eax, eax
005DC167   5A                     pop     edx
005DC168   59                     pop     ecx
005DC169   59                     pop     ecx
005DC16A   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC16D   6882C15D00             push    $005DC182
005DC172   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC175   E82293E2FF             call    0040549C
005DC17A   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC17B   E9B88BE2FF             jmp     00404D38
005DC180   EBF0                   jmp     005DC172

****** END
|
005DC182   5B                     pop     ebx
005DC183   59                     pop     ecx
005DC184   5D                     pop     ebp
005DC185   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaSUPRIMENTOSGetText(Sender : TObject);
begin
(*
005DC188   55                     push    ebp
005DC189   8BEC                   mov     ebp, esp
005DC18B   6A00                   push    $00
005DC18D   53                     push    ebx
005DC18E   8BD9                   mov     ebx, ecx
005DC190   33C0                   xor     eax, eax
005DC192   55                     push    ebp
005DC193   68E7C15D00             push    $005DC1E7

***** TRY
|
005DC198   64FF30                 push    dword ptr fs:[eax]
005DC19B   648920                 mov     fs:[eax], esp
005DC19E   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC1A3   8B8044010000           mov     eax, [eax+$0144]
005DC1A9   8B10                   mov     edx, [eax]
005DC1AB   FF5254                 call    dword ptr [edx+$54]
005DC1AE   83C4F4                 add     esp, -$0C
005DC1B1   DB3C24                 fstp    tbyte ptr [esp]
005DC1B4   9B                     wait
005DC1B5   8D4DFC                 lea     ecx, [ebp-$04]
005DC1B8   BA02000000             mov     edx, $00000002
005DC1BD   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC1C2   E85D511C00             call    007A1324
005DC1C7   8B55FC                 mov     edx, [ebp-$04]
005DC1CA   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC1CC   E81F93E2FF             call    004054F0
005DC1D1   33C0                   xor     eax, eax
005DC1D3   5A                     pop     edx
005DC1D4   59                     pop     ecx
005DC1D5   59                     pop     ecx
005DC1D6   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC1D9   68EEC15D00             push    $005DC1EE
005DC1DE   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC1E1   E8B692E2FF             call    0040549C
005DC1E6   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC1E7   E94C8BE2FF             jmp     00404D38
005DC1EC   EBF0                   jmp     005DC1DE

****** END
|
005DC1EE   5B                     pop     ebx
005DC1EF   59                     pop     ecx
005DC1F0   5D                     pop     ebp
005DC1F1   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaTRANSFERENCIASGetText(Sender : TObject);
begin
(*
005DC1F4   55                     push    ebp
005DC1F5   8BEC                   mov     ebp, esp
005DC1F7   6A00                   push    $00
005DC1F9   53                     push    ebx
005DC1FA   8BD9                   mov     ebx, ecx
005DC1FC   33C0                   xor     eax, eax
005DC1FE   55                     push    ebp
005DC1FF   6853C25D00             push    $005DC253

***** TRY
|
005DC204   64FF30                 push    dword ptr fs:[eax]
005DC207   648920                 mov     fs:[eax], esp
005DC20A   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC20F   8B8048010000           mov     eax, [eax+$0148]
005DC215   8B10                   mov     edx, [eax]
005DC217   FF5254                 call    dword ptr [edx+$54]
005DC21A   83C4F4                 add     esp, -$0C
005DC21D   DB3C24                 fstp    tbyte ptr [esp]
005DC220   9B                     wait
005DC221   8D4DFC                 lea     ecx, [ebp-$04]
005DC224   BA02000000             mov     edx, $00000002
005DC229   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC22E   E8F1501C00             call    007A1324
005DC233   8B55FC                 mov     edx, [ebp-$04]
005DC236   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC238   E8B392E2FF             call    004054F0
005DC23D   33C0                   xor     eax, eax
005DC23F   5A                     pop     edx
005DC240   59                     pop     ecx
005DC241   59                     pop     ecx
005DC242   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC245   685AC25D00             push    $005DC25A
005DC24A   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC24D   E84A92E2FF             call    0040549C
005DC252   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC253   E9E08AE2FF             jmp     00404D38
005DC258   EBF0                   jmp     005DC24A

****** END
|
005DC25A   5B                     pop     ebx
005DC25B   59                     pop     ecx
005DC25C   5D                     pop     ebp
005DC25D   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaAJUSTESGetText(Sender : TObject);
begin
(*
005DC260   55                     push    ebp
005DC261   8BEC                   mov     ebp, esp
005DC263   6A00                   push    $00
005DC265   53                     push    ebx
005DC266   8BD9                   mov     ebx, ecx
005DC268   33C0                   xor     eax, eax
005DC26A   55                     push    ebp
005DC26B   68BFC25D00             push    $005DC2BF

***** TRY
|
005DC270   64FF30                 push    dword ptr fs:[eax]
005DC273   648920                 mov     fs:[eax], esp
005DC276   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC27B   8B804C010000           mov     eax, [eax+$014C]
005DC281   8B10                   mov     edx, [eax]
005DC283   FF5254                 call    dword ptr [edx+$54]
005DC286   83C4F4                 add     esp, -$0C
005DC289   DB3C24                 fstp    tbyte ptr [esp]
005DC28C   9B                     wait
005DC28D   8D4DFC                 lea     ecx, [ebp-$04]
005DC290   BA02000000             mov     edx, $00000002
005DC295   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC29A   E885501C00             call    007A1324
005DC29F   8B55FC                 mov     edx, [ebp-$04]
005DC2A2   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC2A4   E84792E2FF             call    004054F0
005DC2A9   33C0                   xor     eax, eax
005DC2AB   5A                     pop     edx
005DC2AC   59                     pop     ecx
005DC2AD   59                     pop     ecx
005DC2AE   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC2B1   68C6C25D00             push    $005DC2C6
005DC2B6   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC2B9   E8DE91E2FF             call    0040549C
005DC2BE   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC2BF   E9748AE2FF             jmp     00404D38
005DC2C4   EBF0                   jmp     005DC2B6

****** END
|
005DC2C6   5B                     pop     ebx
005DC2C7   59                     pop     ecx
005DC2C8   5D                     pop     ebp
005DC2C9   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaAVISTAGetText(Sender : TObject);
begin
(*
005DC2CC   55                     push    ebp
005DC2CD   8BEC                   mov     ebp, esp
005DC2CF   6A00                   push    $00
005DC2D1   53                     push    ebx
005DC2D2   8BD9                   mov     ebx, ecx
005DC2D4   33C0                   xor     eax, eax
005DC2D6   55                     push    ebp
005DC2D7   682BC35D00             push    $005DC32B

***** TRY
|
005DC2DC   64FF30                 push    dword ptr fs:[eax]
005DC2DF   648920                 mov     fs:[eax], esp
005DC2E2   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC2E7   8B8050010000           mov     eax, [eax+$0150]
005DC2ED   8B10                   mov     edx, [eax]
005DC2EF   FF5254                 call    dword ptr [edx+$54]
005DC2F2   83C4F4                 add     esp, -$0C
005DC2F5   DB3C24                 fstp    tbyte ptr [esp]
005DC2F8   9B                     wait
005DC2F9   8D4DFC                 lea     ecx, [ebp-$04]
005DC2FC   BA02000000             mov     edx, $00000002
005DC301   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC306   E819501C00             call    007A1324
005DC30B   8B55FC                 mov     edx, [ebp-$04]
005DC30E   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC310   E8DB91E2FF             call    004054F0
005DC315   33C0                   xor     eax, eax
005DC317   5A                     pop     edx
005DC318   59                     pop     ecx
005DC319   59                     pop     ecx
005DC31A   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC31D   6832C35D00             push    $005DC332
005DC322   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC325   E87291E2FF             call    0040549C
005DC32A   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC32B   E9088AE2FF             jmp     00404D38
005DC330   EBF0                   jmp     005DC322

****** END
|
005DC332   5B                     pop     ebx
005DC333   59                     pop     ecx
005DC334   5D                     pop     ebp
005DC335   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaAPRAZOGetText(Sender : TObject);
begin
(*
005DC338   55                     push    ebp
005DC339   8BEC                   mov     ebp, esp
005DC33B   6A00                   push    $00
005DC33D   53                     push    ebx
005DC33E   8BD9                   mov     ebx, ecx
005DC340   33C0                   xor     eax, eax
005DC342   55                     push    ebp
005DC343   6897C35D00             push    $005DC397

***** TRY
|
005DC348   64FF30                 push    dword ptr fs:[eax]
005DC34B   648920                 mov     fs:[eax], esp
005DC34E   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC353   8B8054010000           mov     eax, [eax+$0154]
005DC359   8B10                   mov     edx, [eax]
005DC35B   FF5254                 call    dword ptr [edx+$54]
005DC35E   83C4F4                 add     esp, -$0C
005DC361   DB3C24                 fstp    tbyte ptr [esp]
005DC364   9B                     wait
005DC365   8D4DFC                 lea     ecx, [ebp-$04]
005DC368   BA02000000             mov     edx, $00000002
005DC36D   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC372   E8AD4F1C00             call    007A1324
005DC377   8B55FC                 mov     edx, [ebp-$04]
005DC37A   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC37C   E86F91E2FF             call    004054F0
005DC381   33C0                   xor     eax, eax
005DC383   5A                     pop     edx
005DC384   59                     pop     ecx
005DC385   59                     pop     ecx
005DC386   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC389   689EC35D00             push    $005DC39E
005DC38E   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC391   E80691E2FF             call    0040549C
005DC396   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC397   E99C89E2FF             jmp     00404D38
005DC39C   EBF0                   jmp     005DC38E

****** END
|
005DC39E   5B                     pop     ebx
005DC39F   59                     pop     ecx
005DC3A0   5D                     pop     ebp
005DC3A1   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaFATURADOGetText(Sender : TObject);
begin
(*
005DC3A4   55                     push    ebp
005DC3A5   8BEC                   mov     ebp, esp
005DC3A7   6A00                   push    $00
005DC3A9   53                     push    ebx
005DC3AA   8BD9                   mov     ebx, ecx
005DC3AC   33C0                   xor     eax, eax
005DC3AE   55                     push    ebp
005DC3AF   6803C45D00             push    $005DC403

***** TRY
|
005DC3B4   64FF30                 push    dword ptr fs:[eax]
005DC3B7   648920                 mov     fs:[eax], esp
005DC3BA   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC3BF   8B8058010000           mov     eax, [eax+$0158]
005DC3C5   8B10                   mov     edx, [eax]
005DC3C7   FF5254                 call    dword ptr [edx+$54]
005DC3CA   83C4F4                 add     esp, -$0C
005DC3CD   DB3C24                 fstp    tbyte ptr [esp]
005DC3D0   9B                     wait
005DC3D1   8D4DFC                 lea     ecx, [ebp-$04]
005DC3D4   BA02000000             mov     edx, $00000002
005DC3D9   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC3DE   E8414F1C00             call    007A1324
005DC3E3   8B55FC                 mov     edx, [ebp-$04]
005DC3E6   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC3E8   E80391E2FF             call    004054F0
005DC3ED   33C0                   xor     eax, eax
005DC3EF   5A                     pop     edx
005DC3F0   59                     pop     ecx
005DC3F1   59                     pop     ecx
005DC3F2   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC3F5   680AC45D00             push    $005DC40A
005DC3FA   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC3FD   E89A90E2FF             call    0040549C
005DC402   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC403   E93089E2FF             jmp     00404D38
005DC408   EBF0                   jmp     005DC3FA

****** END
|
005DC40A   5B                     pop     ebx
005DC40B   59                     pop     ecx
005DC40C   5D                     pop     ebp
005DC40D   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaORDPAGTOGetText(Sender : TObject);
begin
(*
005DC410   55                     push    ebp
005DC411   8BEC                   mov     ebp, esp
005DC413   6A00                   push    $00
005DC415   53                     push    ebx
005DC416   8BD9                   mov     ebx, ecx
005DC418   33C0                   xor     eax, eax
005DC41A   55                     push    ebp
005DC41B   686FC45D00             push    $005DC46F

***** TRY
|
005DC420   64FF30                 push    dword ptr fs:[eax]
005DC423   648920                 mov     fs:[eax], esp
005DC426   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC42B   8B805C010000           mov     eax, [eax+$015C]
005DC431   8B10                   mov     edx, [eax]
005DC433   FF5254                 call    dword ptr [edx+$54]
005DC436   83C4F4                 add     esp, -$0C
005DC439   DB3C24                 fstp    tbyte ptr [esp]
005DC43C   9B                     wait
005DC43D   8D4DFC                 lea     ecx, [ebp-$04]
005DC440   BA02000000             mov     edx, $00000002
005DC445   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC44A   E8D54E1C00             call    007A1324
005DC44F   8B55FC                 mov     edx, [ebp-$04]
005DC452   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC454   E89790E2FF             call    004054F0
005DC459   33C0                   xor     eax, eax
005DC45B   5A                     pop     edx
005DC45C   59                     pop     ecx
005DC45D   59                     pop     ecx
005DC45E   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC461   6876C45D00             push    $005DC476
005DC466   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC469   E82E90E2FF             call    0040549C
005DC46E   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC46F   E9C488E2FF             jmp     00404D38
005DC474   EBF0                   jmp     005DC466

****** END
|
005DC476   5B                     pop     ebx
005DC477   59                     pop     ecx
005DC478   5D                     pop     ebp
005DC479   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaCARTEIRAGetText(Sender : TObject);
begin
(*
005DC47C   55                     push    ebp
005DC47D   8BEC                   mov     ebp, esp
005DC47F   6A00                   push    $00
005DC481   53                     push    ebx
005DC482   8BD9                   mov     ebx, ecx
005DC484   33C0                   xor     eax, eax
005DC486   55                     push    ebp
005DC487   68DBC45D00             push    $005DC4DB

***** TRY
|
005DC48C   64FF30                 push    dword ptr fs:[eax]
005DC48F   648920                 mov     fs:[eax], esp
005DC492   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC497   8B8060010000           mov     eax, [eax+$0160]
005DC49D   8B10                   mov     edx, [eax]
005DC49F   FF5254                 call    dword ptr [edx+$54]
005DC4A2   83C4F4                 add     esp, -$0C
005DC4A5   DB3C24                 fstp    tbyte ptr [esp]
005DC4A8   9B                     wait
005DC4A9   8D4DFC                 lea     ecx, [ebp-$04]
005DC4AC   BA02000000             mov     edx, $00000002
005DC4B1   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC4B6   E8694E1C00             call    007A1324
005DC4BB   8B55FC                 mov     edx, [ebp-$04]
005DC4BE   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC4C0   E82B90E2FF             call    004054F0
005DC4C5   33C0                   xor     eax, eax
005DC4C7   5A                     pop     edx
005DC4C8   59                     pop     ecx
005DC4C9   59                     pop     ecx
005DC4CA   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC4CD   68E2C45D00             push    $005DC4E2
005DC4D2   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC4D5   E8C28FE2FF             call    0040549C
005DC4DA   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC4DB   E95888E2FF             jmp     00404D38
005DC4E0   EBF0                   jmp     005DC4D2

****** END
|
005DC4E2   5B                     pop     ebx
005DC4E3   59                     pop     ecx
005DC4E4   5D                     pop     ebp
005DC4E5   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaVLRSANGRIA1GetText(Sender : TObject);
begin
(*
005DC4E8   55                     push    ebp
005DC4E9   8BEC                   mov     ebp, esp
005DC4EB   6A00                   push    $00
005DC4ED   53                     push    ebx
005DC4EE   8BD9                   mov     ebx, ecx
005DC4F0   33C0                   xor     eax, eax
005DC4F2   55                     push    ebp
005DC4F3   6847C55D00             push    $005DC547

***** TRY
|
005DC4F8   64FF30                 push    dword ptr fs:[eax]
005DC4FB   648920                 mov     fs:[eax], esp
005DC4FE   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC503   8B8068010000           mov     eax, [eax+$0168]
005DC509   8B10                   mov     edx, [eax]
005DC50B   FF5254                 call    dword ptr [edx+$54]
005DC50E   83C4F4                 add     esp, -$0C
005DC511   DB3C24                 fstp    tbyte ptr [esp]
005DC514   9B                     wait
005DC515   8D4DFC                 lea     ecx, [ebp-$04]
005DC518   BA02000000             mov     edx, $00000002
005DC51D   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC522   E8FD4D1C00             call    007A1324
005DC527   8B55FC                 mov     edx, [ebp-$04]
005DC52A   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC52C   E8BF8FE2FF             call    004054F0
005DC531   33C0                   xor     eax, eax
005DC533   5A                     pop     edx
005DC534   59                     pop     ecx
005DC535   59                     pop     ecx
005DC536   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC539   684EC55D00             push    $005DC54E
005DC53E   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC541   E8568FE2FF             call    0040549C
005DC546   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC547   E9EC87E2FF             jmp     00404D38
005DC54C   EBF0                   jmp     005DC53E

****** END
|
005DC54E   5B                     pop     ebx
005DC54F   59                     pop     ecx
005DC550   5D                     pop     ebp
005DC551   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaVLRSANGRIA2GetText(Sender : TObject);
begin
(*
005DC554   55                     push    ebp
005DC555   8BEC                   mov     ebp, esp
005DC557   6A00                   push    $00
005DC559   53                     push    ebx
005DC55A   8BD9                   mov     ebx, ecx
005DC55C   33C0                   xor     eax, eax
005DC55E   55                     push    ebp
005DC55F   68B3C55D00             push    $005DC5B3

***** TRY
|
005DC564   64FF30                 push    dword ptr fs:[eax]
005DC567   648920                 mov     fs:[eax], esp
005DC56A   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC56F   8B8070010000           mov     eax, [eax+$0170]
005DC575   8B10                   mov     edx, [eax]
005DC577   FF5254                 call    dword ptr [edx+$54]
005DC57A   83C4F4                 add     esp, -$0C
005DC57D   DB3C24                 fstp    tbyte ptr [esp]
005DC580   9B                     wait
005DC581   8D4DFC                 lea     ecx, [ebp-$04]
005DC584   BA02000000             mov     edx, $00000002
005DC589   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC58E   E8914D1C00             call    007A1324
005DC593   8B55FC                 mov     edx, [ebp-$04]
005DC596   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC598   E8538FE2FF             call    004054F0
005DC59D   33C0                   xor     eax, eax
005DC59F   5A                     pop     edx
005DC5A0   59                     pop     ecx
005DC5A1   59                     pop     ecx
005DC5A2   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC5A5   68BAC55D00             push    $005DC5BA
005DC5AA   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC5AD   E8EA8EE2FF             call    0040549C
005DC5B2   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC5B3   E98087E2FF             jmp     00404D38
005DC5B8   EBF0                   jmp     005DC5AA

****** END
|
005DC5BA   5B                     pop     ebx
005DC5BB   59                     pop     ecx
005DC5BC   5D                     pop     ebp
005DC5BD   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaVLRSANGRIA3GetText(Sender : TObject);
begin
(*
005DC5C0   55                     push    ebp
005DC5C1   8BEC                   mov     ebp, esp
005DC5C3   6A00                   push    $00
005DC5C5   53                     push    ebx
005DC5C6   8BD9                   mov     ebx, ecx
005DC5C8   33C0                   xor     eax, eax
005DC5CA   55                     push    ebp
005DC5CB   681FC65D00             push    $005DC61F

***** TRY
|
005DC5D0   64FF30                 push    dword ptr fs:[eax]
005DC5D3   648920                 mov     fs:[eax], esp
005DC5D6   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC5DB   8B8078010000           mov     eax, [eax+$0178]
005DC5E1   8B10                   mov     edx, [eax]
005DC5E3   FF5254                 call    dword ptr [edx+$54]
005DC5E6   83C4F4                 add     esp, -$0C
005DC5E9   DB3C24                 fstp    tbyte ptr [esp]
005DC5EC   9B                     wait
005DC5ED   8D4DFC                 lea     ecx, [ebp-$04]
005DC5F0   BA02000000             mov     edx, $00000002
005DC5F5   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC5FA   E8254D1C00             call    007A1324
005DC5FF   8B55FC                 mov     edx, [ebp-$04]
005DC602   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC604   E8E78EE2FF             call    004054F0
005DC609   33C0                   xor     eax, eax
005DC60B   5A                     pop     edx
005DC60C   59                     pop     ecx
005DC60D   59                     pop     ecx
005DC60E   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC611   6826C65D00             push    $005DC626
005DC616   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC619   E87E8EE2FF             call    0040549C
005DC61E   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC61F   E91487E2FF             jmp     00404D38
005DC624   EBF0                   jmp     005DC616

****** END
|
005DC626   5B                     pop     ebx
005DC627   59                     pop     ecx
005DC628   5D                     pop     ebp
005DC629   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixaVALESDIAGetText(Sender : TObject);
begin
(*
005DC62C   55                     push    ebp
005DC62D   8BEC                   mov     ebp, esp
005DC62F   6A00                   push    $00
005DC631   53                     push    ebx
005DC632   8BD9                   mov     ebx, ecx
005DC634   33C0                   xor     eax, eax
005DC636   55                     push    ebp
005DC637   688BC65D00             push    $005DC68B

***** TRY
|
005DC63C   64FF30                 push    dword ptr fs:[eax]
005DC63F   648920                 mov     fs:[eax], esp
005DC642   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DC647   8B8084010000           mov     eax, [eax+$0184]
005DC64D   8B10                   mov     edx, [eax]
005DC64F   FF5254                 call    dword ptr [edx+$54]
005DC652   83C4F4                 add     esp, -$0C
005DC655   DB3C24                 fstp    tbyte ptr [esp]
005DC658   9B                     wait
005DC659   8D4DFC                 lea     ecx, [ebp-$04]
005DC65C   BA02000000             mov     edx, $00000002
005DC661   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DC666   E8B94C1C00             call    007A1324
005DC66B   8B55FC                 mov     edx, [ebp-$04]
005DC66E   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DC670   E87B8EE2FF             call    004054F0
005DC675   33C0                   xor     eax, eax
005DC677   5A                     pop     edx
005DC678   59                     pop     ecx
005DC679   59                     pop     ecx
005DC67A   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DC67D   6892C65D00             push    $005DC692
005DC682   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DC685   E8128EE2FF             call    0040549C
005DC68A   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC68B   E9A886E2FF             jmp     00404D38
005DC690   EBF0                   jmp     005DC682

****** END
|
005DC692   5B                     pop     ebx
005DC693   59                     pop     ecx
005DC694   5D                     pop     ebp
005DC695   C20400                 ret     $0004

*)
end;

procedure TDm3.TbCaixTipoCalcFields(Sender : TObject);
begin
(*
005DC698   55                     push    ebp
005DC699   8BEC                   mov     ebp, esp
005DC69B   B90C000000             mov     ecx, $0000000C
005DC6A0   6A00                   push    $00
005DC6A2   6A00                   push    $00
005DC6A4   49                     dec     ecx
005DC6A5   75F9                   jnz     005DC6A0
005DC6A7   51                     push    ecx
005DC6A8   53                     push    ebx
005DC6A9   56                     push    esi
005DC6AA   57                     push    edi
005DC6AB   BEB0D97D00             mov     esi, $007DD9B0
005DC6B0   33C0                   xor     eax, eax
005DC6B2   55                     push    ebp

* Possible String Reference to: 'È¨É‚ˇÎﬁ_^[ãÂ]√'
|
005DC6B3   6887C95D00             push    $005DC987

***** TRY
|
005DC6B8   64FF30                 push    dword ptr fs:[eax]
005DC6BB   648920                 mov     fs:[eax], esp
005DC6BE   33C0                   xor     eax, eax
005DC6C0   55                     push    ebp
005DC6C1   682FC95D00             push    $005DC92F

***** TRY
|
005DC6C6   64FF30                 push    dword ptr fs:[eax]
005DC6C9   648920                 mov     fs:[eax], esp
005DC6CC   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
005DC6D1   803800                 cmp     byte ptr [eax], $00
005DC6D4   0F84D8000000           jz      005DC7B2
005DC6DA   8D55FC                 lea     edx, [ebp-$04]
005DC6DD   8B06                   mov     eax, [esi]
005DC6DF   8B8094010000           mov     eax, [eax+$0194]
005DC6E5   8B08                   mov     ecx, [eax]
005DC6E7   FF5160                 call    dword ptr [ecx+$60]
005DC6EA   837DFC00               cmp     dword ptr [ebp-$04], +$00
005DC6EE   7456                   jz      005DC746

* Possible String Reference to: 'DESCRICAO'
|
005DC6F0   68A0C95D00             push    $005DC9A0
005DC6F5   8D45F8                 lea     eax, [ebp-$08]
005DC6F8   50                     push    eax
005DC6F9   8D55EC                 lea     edx, [ebp-$14]
005DC6FC   8B06                   mov     eax, [esi]
005DC6FE   8B8094010000           mov     eax, [eax+$0194]
005DC704   8B08                   mov     ecx, [eax]
005DC706   FF5160                 call    dword ptr [ecx+$60]
005DC709   8B45EC                 mov     eax, [ebp-$14]
005DC70C   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DC70F   E80C741C00             call    007A3B20
005DC714   8B4DF0                 mov     ecx, [ebp-$10]
005DC717   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'TIPOPGTO = '
|
005DC71A   BAB4C95D00             mov     edx, $005DC9B4

* Reference to: System.@LStrCat3;
|
005DC71F   E88490E2FF             call    004057A8
005DC724   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'TIPOPGTO'
|
005DC727   BAC8C95D00             mov     edx, $005DC9C8
005DC72C   33C0                   xor     eax, eax

|
005DC72E   E8DDCB1C00             call    007A9310
005DC733   8B55F8                 mov     edx, [ebp-$08]
005DC736   8B06                   mov     eax, [esi]
005DC738   8B80C0010000           mov     eax, [eax+$01C0]
005DC73E   8B08                   mov     ecx, [eax]
005DC740   FF91B0000000           call    dword ptr [ecx+$00B0]
005DC746   8D55E8                 lea     edx, [ebp-$18]
005DC749   8B06                   mov     eax, [esi]
005DC74B   8B8098010000           mov     eax, [eax+$0198]
005DC751   8B08                   mov     ecx, [eax]
005DC753   FF5160                 call    dword ptr [ecx+$60]
005DC756   837DE800               cmp     dword ptr [ebp-$18], +$00
005DC75A   7456                   jz      005DC7B2

* Possible String Reference to: 'DESCRICAO'
|
005DC75C   68A0C95D00             push    $005DC9A0
005DC761   8D45E4                 lea     eax, [ebp-$1C]
005DC764   50                     push    eax
005DC765   8D55D8                 lea     edx, [ebp-$28]
005DC768   8B06                   mov     eax, [esi]
005DC76A   8B8098010000           mov     eax, [eax+$0198]
005DC770   8B08                   mov     ecx, [eax]
005DC772   FF5160                 call    dword ptr [ecx+$60]
005DC775   8B45D8                 mov     eax, [ebp-$28]
005DC778   8D55DC                 lea     edx, [ebp-$24]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
005DC77B   E8A0731C00             call    007A3B20
005DC780   8B4DDC                 mov     ecx, [ebp-$24]
005DC783   8D45E0                 lea     eax, [ebp-$20]

* Possible String Reference to: 'CODCARD = '
|
005DC786   BADCC95D00             mov     edx, $005DC9DC

* Reference to: System.@LStrCat3;
|
005DC78B   E81890E2FF             call    004057A8
005DC790   8B4DE0                 mov     ecx, [ebp-$20]

* Possible String Reference to: 'CARTOES'
|
005DC793   BAF0C95D00             mov     edx, $005DC9F0
005DC798   33C0                   xor     eax, eax

|
005DC79A   E871CB1C00             call    007A9310
005DC79F   8B55E4                 mov     edx, [ebp-$1C]
005DC7A2   8B06                   mov     eax, [esi]
005DC7A4   8B80C4010000           mov     eax, [eax+$01C4]
005DC7AA   8B08                   mov     ecx, [eax]
005DC7AC   FF91B0000000           call    dword ptr [ecx+$00B0]
005DC7B2   8D55D4                 lea     edx, [ebp-$2C]
005DC7B5   8B06                   mov     eax, [esi]
005DC7B7   8B8094010000           mov     eax, [eax+$0194]
005DC7BD   8B08                   mov     ecx, [eax]
005DC7BF   FF5160                 call    dword ptr [ecx+$60]
005DC7C2   8B45D4                 mov     eax, [ebp-$2C]
005DC7C5   BA00CA5D00             mov     edx, $005DCA00

* Reference to: System.@LStrCmp;
|
005DC7CA   E8D990E2FF             call    004058A8
005DC7CF   7566                   jnz     005DC837
005DC7D1   8B06                   mov     eax, [esi]
005DC7D3   8B809C010000           mov     eax, [eax+$019C]
005DC7D9   8B10                   mov     edx, [eax]
005DC7DB   FF5254                 call    dword ptr [edx+$54]
005DC7DE   DD5DCC                 fstp    qword ptr [ebp-$34]
005DC7E1   9B                     wait
005DC7E2   8B06                   mov     eax, [esi]
005DC7E4   8B802C010000           mov     eax, [eax+$012C]
005DC7EA   8B10                   mov     edx, [eax]
005DC7EC   FF5254                 call    dword ptr [edx+$54]
005DC7EF   DC45CC                 fadd    qword ptr [ebp-$34]
005DC7F2   DB7DC0                 fstp    tbyte ptr [ebp-$40]
005DC7F5   9B                     wait
005DC7F6   8B06                   mov     eax, [esi]
005DC7F8   8B80A4010000           mov     eax, [eax+$01A4]
005DC7FE   8B10                   mov     edx, [eax]
005DC800   FF5254                 call    dword ptr [edx+$54]
005DC803   DB6DC0                 fld     tbyte ptr [ebp-$40]
005DC806   DEC1                   faddp   st(1), st(0)
005DC808   DB7DB4                 fstp    tbyte ptr [ebp-$4C]
005DC80B   9B                     wait
005DC80C   8B06                   mov     eax, [esi]
005DC80E   8B80A0010000           mov     eax, [eax+$01A0]
005DC814   8B10                   mov     edx, [eax]
005DC816   FF5254                 call    dword ptr [edx+$54]
005DC819   DB6DB4                 fld     tbyte ptr [ebp-$4C]
005DC81C   DEE1                   fsubrp  st(1), st(0)
005DC81E   83C4F8                 add     esp, -$08
005DC821   DD1C24                 fstp    qword ptr [esp]
005DC824   9B                     wait
005DC825   8B06                   mov     eax, [esi]
005DC827   8B80C8010000           mov     eax, [eax+$01C8]
005DC82D   8B10                   mov     edx, [eax]
005DC82F   FF92A4000000           call    dword ptr [edx+$00A4]
005DC835   EB4E                   jmp     005DC885
005DC837   8B06                   mov     eax, [esi]
005DC839   8B809C010000           mov     eax, [eax+$019C]
005DC83F   8B10                   mov     edx, [eax]
005DC841   FF5254                 call    dword ptr [edx+$54]
005DC844   DD5DCC                 fstp    qword ptr [ebp-$34]
005DC847   9B                     wait
005DC848   8B06                   mov     eax, [esi]
005DC84A   8B80A4010000           mov     eax, [eax+$01A4]
005DC850   8B10                   mov     edx, [eax]
005DC852   FF5254                 call    dword ptr [edx+$54]
005DC855   DC45CC                 fadd    qword ptr [ebp-$34]
005DC858   DB7DC0                 fstp    tbyte ptr [ebp-$40]
005DC85B   9B                     wait
005DC85C   8B06                   mov     eax, [esi]
005DC85E   8B80A0010000           mov     eax, [eax+$01A0]
005DC864   8B10                   mov     edx, [eax]
005DC866   FF5254                 call    dword ptr [edx+$54]
005DC869   DB6DC0                 fld     tbyte ptr [ebp-$40]
005DC86C   DEE1                   fsubrp  st(1), st(0)
005DC86E   83C4F8                 add     esp, -$08
005DC871   DD1C24                 fstp    qword ptr [esp]
005DC874   9B                     wait
005DC875   8B06                   mov     eax, [esi]
005DC877   8B80C8010000           mov     eax, [eax+$01C8]
005DC87D   8B10                   mov     edx, [eax]
005DC87F   FF92A4000000           call    dword ptr [edx+$00A4]
005DC885   8B06                   mov     eax, [esi]
005DC887   8B80C8010000           mov     eax, [eax+$01C8]
005DC88D   8B10                   mov     edx, [eax]
005DC88F   FF5254                 call    dword ptr [edx+$54]
005DC892   DD5DCC                 fstp    qword ptr [ebp-$34]
005DC895   9B                     wait
005DC896   8B06                   mov     eax, [esi]
005DC898   8B80AC010000           mov     eax, [eax+$01AC]
005DC89E   8B10                   mov     edx, [eax]
005DC8A0   FF5254                 call    dword ptr [edx+$54]
005DC8A3   DC6DCC                 fsubr   qword ptr [ebp-$34]
005DC8A6   83C4F8                 add     esp, -$08
005DC8A9   DD1C24                 fstp    qword ptr [esp]
005DC8AC   9B                     wait
005DC8AD   8B06                   mov     eax, [esi]
005DC8AF   8B80CC010000           mov     eax, [eax+$01CC]
005DC8B5   8B10                   mov     edx, [eax]
005DC8B7   FF92A4000000           call    dword ptr [edx+$00A4]
005DC8BD   8D55B0                 lea     edx, [ebp-$50]
005DC8C0   8B06                   mov     eax, [esi]
005DC8C2   8B80C4010000           mov     eax, [eax+$01C4]
005DC8C8   8B08                   mov     ecx, [eax]
005DC8CA   FF5160                 call    dword ptr [ecx+$60]
005DC8CD   837DB000               cmp     dword ptr [ebp-$50], +$00
005DC8D1   7452                   jz      005DC925
005DC8D3   8D55A4                 lea     edx, [ebp-$5C]
005DC8D6   8B06                   mov     eax, [esi]
005DC8D8   8B98C0010000           mov     ebx, [eax+$01C0]
005DC8DE   8BC3                   mov     eax, ebx
005DC8E0   8B08                   mov     ecx, [eax]
005DC8E2   FF5160                 call    dword ptr [ecx+$60]
005DC8E5   FF75A4                 push    dword ptr [ebp-$5C]

* Possible String Reference to: ' - '
|
005DC8E8   680CCA5D00             push    $005DCA0C
005DC8ED   8D55A0                 lea     edx, [ebp-$60]
005DC8F0   8B06                   mov     eax, [esi]
005DC8F2   8B80C4010000           mov     eax, [eax+$01C4]
005DC8F8   8B08                   mov     ecx, [eax]
005DC8FA   FF5160                 call    dword ptr [ecx+$60]
005DC8FD   FF75A0                 push    dword ptr [ebp-$60]
005DC900   8D45A8                 lea     eax, [ebp-$58]
005DC903   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
005DC908   E80F8FE2FF             call    0040581C
005DC90D   8B45A8                 mov     eax, [ebp-$58]
005DC910   8D55AC                 lea     edx, [ebp-$54]

* Reference to: SysUtils.UpperCase(AnsiString):AnsiString;
|
005DC913   E810DCE2FF             call    0040A528
005DC918   8B55AC                 mov     edx, [ebp-$54]
005DC91B   8BC3                   mov     eax, ebx
005DC91D   8B08                   mov     ecx, [eax]
005DC91F   FF91B0000000           call    dword ptr [ecx+$00B0]
005DC925   33C0                   xor     eax, eax
005DC927   5A                     pop     edx
005DC928   59                     pop     ecx
005DC929   59                     pop     ecx
005DC92A   648910                 mov     fs:[eax], edx
005DC92D   EB30                   jmp     005DC95F

* Reference to: System.@HandleOnException;
|
005DC92F   E97C82E2FF             jmp     00404BB0
005DC934   0100                   add     [eax], eax
005DC936   0000                   add     [eax], al
005DC938   40                     inc     eax
005DC939   95                     xchg    eax, ebp
005DC93A   40                     inc     eax
005DC93B   0040C9                 add     [eax-$37], al
005DC93E   5D                     pop     ebp
005DC93F   0089C38B4B04           add     [ecx+$44B8BC3], cl
005DC945   8D459C                 lea     eax, [ebp-$64]

* Possible String Reference to: 'Erro no evento OnCalcFields da tabe
|                                la CaixTipo!'
|
005DC948   BA18CA5D00             mov     edx, $005DCA18

* Reference to: System.@LStrCat3;
|
005DC94D   E8568EE2FF             call    004057A8
005DC952   8B459C                 mov     eax, [ebp-$64]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
005DC955   E8CA72E6FF             call    00443C24

* Reference to: System.@DoneExcept;
|
005DC95A   E85185E2FF             call    00404EB0

****** END
|
005DC95F   33C0                   xor     eax, eax
005DC961   5A                     pop     edx
005DC962   59                     pop     ecx
005DC963   59                     pop     ecx
005DC964   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
005DC967   688EC95D00             push    $005DC98E
005DC96C   8D459C                 lea     eax, [ebp-$64]
005DC96F   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005DC974   E8478BE2FF             call    004054C0
005DC979   8D45D4                 lea     eax, [ebp-$2C]
005DC97C   BA0B000000             mov     edx, $0000000B

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005DC981   E83A8BE2FF             call    004054C0
005DC986   C3                     ret


* Reference to: System.@HandleFinally;
|
005DC987   E9AC83E2FF             jmp     00404D38
005DC98C   EBDE                   jmp     005DC96C

****** END
|
005DC98E   5F                     pop     edi
005DC98F   5E                     pop     esi
005DC990   5B                     pop     ebx
005DC991   8BE5                   mov     esp, ebp
005DC993   5D                     pop     ebp
005DC994   C3                     ret

*)
end;

procedure TDm3.TbCaixTipoVENDASCORRGetText(Sender : TObject);
begin
(*
005DCA4C   55                     push    ebp
005DCA4D   8BEC                   mov     ebp, esp
005DCA4F   6A00                   push    $00
005DCA51   53                     push    ebx
005DCA52   8BD9                   mov     ebx, ecx
005DCA54   33C0                   xor     eax, eax
005DCA56   55                     push    ebp
005DCA57   68ABCA5D00             push    $005DCAAB

***** TRY
|
005DCA5C   64FF30                 push    dword ptr fs:[eax]
005DCA5F   648920                 mov     fs:[eax], esp
005DCA62   A1B0D97D00             mov     eax, dword ptr [$007DD9B0]
005DCA67   8B80D4010000           mov     eax, [eax+$01D4]
005DCA6D   8B10                   mov     edx, [eax]
005DCA6F   FF5254                 call    dword ptr [edx+$54]
005DCA72   83C4F4                 add     esp, -$0C
005DCA75   DB3C24                 fstp    tbyte ptr [esp]
005DCA78   9B                     wait
005DCA79   8D4DFC                 lea     ecx, [ebp-$04]
005DCA7C   BA02000000             mov     edx, $00000002
005DCA81   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
005DCA86   E899481C00             call    007A1324
005DCA8B   8B55FC                 mov     edx, [ebp-$04]
005DCA8E   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
005DCA90   E85B8AE2FF             call    004054F0
005DCA95   33C0                   xor     eax, eax
005DCA97   5A                     pop     edx
005DCA98   59                     pop     ecx
005DCA99   59                     pop     ecx
005DCA9A   648910                 mov     fs:[eax], edx

****** FINALLY
|
005DCA9D   68B2CA5D00             push    $005DCAB2
005DCAA2   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
005DCAA5   E8F289E2FF             call    0040549C
005DCAAA   C3                     ret


* Reference to: System.@HandleFinally;
|
005DCAAB   E98882E2FF             jmp     00404D38
005DCAB0   EBF0                   jmp     005DCAA2

****** END
|
005DCAB2   5B                     pop     ebx
005DCAB3   59                     pop     ecx
005DCAB4   5D                     pop     ebp
005DCAB5   C20400                 ret     $0004

*)
end;

procedure TDm3._PROC_005DAF01(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
005DAF01   E9329EE2FF             jmp     00404D38

|
005DAF06   EBD0                   jmp     005DAED8
005DAF08   5F                     pop     edi
005DAF09   5E                     pop     esi
005DAF0A   5B                     pop     ebx
005DAF0B   8BE5                   mov     esp, ebp
005DAF0D   5D                     pop     ebp
005DAF0E   C3                     ret

*)
end;

procedure TDm3._PROC_005DAF69(Sender : TObject);
begin
(*
005DAF69   4E                     dec     esi
005DAF6A   43                     inc     ebx
005DAF6B   203D200000FF           and     [$FF000020], bh
005DAF71   FFFF                   DB  $FF, $FF  //      
005DAF73   FF08                   dec     dword ptr [eax]
005DAF75   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DAF7A(Sender : TObject);
begin
(*
005DAF7A   4E                     dec     esi
005DAF7B   43                     inc     ebx
005DAF7C   52                     push    edx
005DAF7D   45                     inc     ebp
005DAF7E   50                     push    eax
005DAF7F   52                     push    edx
005DAF80   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DAFB9(Sender : TObject);
begin
(*
005DAFB9   42                     inc     edx
005DAFBA   4C                     dec     esp
005DAFBB   4F                     dec     edi
005DAFBC   43                     inc     ebx
005DAFBD   41                     inc     ecx
005DAFBE   4C                     dec     esp
005DAFBF   203D200000FF           and     [$FF000020], bh
005DAFC5   FFFF                   DB  $FF, $FF  //      
005DAFC7   FF08                   dec     dword ptr [eax]
005DAFC9   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DAFCE(Sender : TObject);
begin
(*
005DAFCE   42                     inc     edx
005DAFCF   4C                     dec     esp
005DAFD0   4F                     dec     edi
005DAFD1   43                     inc     ebx
005DAFD2   41                     inc     ecx
005DAFD3   4C                     dec     esp
005DAFD4   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB035(Sender : TObject);
begin
(*
005DB035   4D                     dec     ebp
005DB036   4F                     dec     edi
005DB037   00FF                   add     bh, bh
005DB039   FFFF                   DB  $FF, $FF  //      
005DB03B   FF01                   inc     dword ptr [ecx]
005DB03D   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB08E(Sender : TObject);
begin
(*
005DB08E   4C                     dec     esp
005DB08F   54                     push    esp
005DB090   49                     dec     ecx
005DB091   50                     push    eax
005DB092   4C                     dec     esp
005DB093   4F                     dec     edi
005DB094   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB664(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
005DB664   E9CF96E2FF             jmp     00404D38

|
005DB669   EBBB                   jmp     005DB626
005DB66B   5F                     pop     edi
005DB66C   5E                     pop     esi
005DB66D   5B                     pop     ebx
005DB66E   8BE5                   mov     esp, ebp
005DB670   5D                     pop     ebp
005DB671   C3                     ret

*)
end;

procedure TDm3._PROC_005DB6F7(Sender : TObject);
begin
(*
005DB6F7   50                     push    eax
005DB6F8   4F                     dec     edi
005DB6F9   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB71D(Sender : TObject);
begin
(*
005DB71D   54                     push    esp
005DB71E   4F                     dec     edi
005DB71F   53                     push    ebx
005DB720   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB737(Sender : TObject);
begin
(*
005DB737   45                     inc     ebp
005DB738   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB780(Sender : TObject);
begin
(*
005DB780   42                     inc     edx
005DB781   4C                     dec     esp
005DB782   4F                     dec     edi
005DB783   43                     inc     ebx
005DB784   41                     inc     ecx
005DB785   4C                     dec     esp
005DB786   203D20000000           and     [$00000020], bh
005DB78C   FFFF                   DB  $FF, $FF  //      
005DB78E   FFFF                   DB  $FF, $FF  //      
005DB790   0100                   add     [eax], eax
005DB792   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB7C9(Sender : TObject);
begin
(*
005DB7C9   42                     inc     edx
005DB7CA   4C                     dec     esp
005DB7CB   4F                     dec     edi
005DB7CC   43                     inc     ebx
005DB7CD   41                     inc     ecx
005DB7CE   4C                     dec     esp
005DB7CF   203D200000FF           and     [$FF000020], bh
005DB7D5   FFFF                   DB  $FF, $FF  //      
005DB7D7   FF08                   dec     dword ptr [eax]
005DB7D9   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB7DE(Sender : TObject);
begin
(*
005DB7DE   42                     inc     edx
005DB7DF   4C                     dec     esp
005DB7E0   4F                     dec     edi
005DB7E1   43                     inc     ebx
005DB7E2   41                     inc     ecx
005DB7E3   4C                     dec     esp
005DB7E4   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB82D(Sender : TObject);
begin
(*
005DB82D   4E                     dec     esi
005DB82E   43                     inc     ebx
005DB82F   203D200000FF           and     [$FF000020], bh
005DB835   FFFF                   DB  $FF, $FF  //      
005DB837   FF08                   dec     dword ptr [eax]
005DB839   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DB83E(Sender : TObject);
begin
(*
005DB83E   4E                     dec     esi
005DB83F   43                     inc     ebx
005DB840   52                     push    edx
005DB841   45                     inc     ebp
005DB842   50                     push    eax
005DB843   52                     push    edx
005DB844   0000                   add     [eax], al

*)
end;

procedure TDm3._PROC_005DBC47(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
005DBC47   E9EC90E2FF             jmp     00404D38

|
005DBC4C   EBEB                   jmp     005DBC39
005DBC4E   5F                     pop     edi
005DBC4F   5E                     pop     esi
005DBC50   5B                     pop     ebx
005DBC51   8BE5                   mov     esp, ebp
005DBC53   5D                     pop     ebp
005DBC54   C3                     ret

*)
end;

procedure TDm3._PROC_005DC987(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
005DC987   E9AC83E2FF             jmp     00404D38

|
005DC98C   EBDE                   jmp     005DC96C
005DC98E   5F                     pop     edi
005DC98F   5E                     pop     esi
005DC990   5B                     pop     ebx
005DC991   8BE5                   mov     esp, ebp
005DC993   5D                     pop     ebp
005DC994   C3                     ret

*)
end;

procedure TDm3._PROC_005DCAB8(Sender : TObject);
begin
(*
005DCAB8   55                     push    ebp
005DCAB9   8BEC                   mov     ebp, esp
005DCABB   33C0                   xor     eax, eax
005DCABD   55                     push    ebp

* Possible String Reference to: 'ÈVÇ‚ˇÎ¯]√ã¿É-¥Ÿ}'
|
005DCABE   68DDCA5D00             push    $005DCADD

***** TRY
|
005DCAC3   64FF30                 push    dword ptr fs:[eax]
005DCAC6   648920                 mov     fs:[eax], esp
005DCAC9   FF05B4D97D00           inc     dword ptr [$007DD9B4]
005DCACF   33C0                   xor     eax, eax
005DCAD1   5A                     pop     edx
005DCAD2   59                     pop     ecx
005DCAD3   59                     pop     ecx
005DCAD4   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']√ã¿É-¥Ÿ}'
|
005DCAD7   68E4CA5D00             push    $005DCAE4
005DCADC   C3                     ret


* Reference to: System.@HandleFinally;
|
005DCADD   E95682E2FF             jmp     00404D38
005DCAE2   EBF8                   jmp     005DCADC

****** END
|
005DCAE4   5D                     pop     ebp
005DCAE5   C3                     ret

*)
end;

procedure TDm3._PROC_005DCAE8(Sender : TObject);
begin
(*
005DCAE8   832DB4D97D0001         sub     dword ptr [$007DD9B4], +$01
005DCAEF   C3                     ret

*)
end;

procedure TDm3._PROC_005DCAF0(Sender : TObject);
begin
(*
005DCAF0   3CCB                   cmp     al, $CB
005DCAF2   5D                     pop     ebp
005DCAF3   0000                   add     [eax], al

*)
end;

end.