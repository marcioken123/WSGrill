unit UdmT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, DBClient, IBCustomDataSet;

type
  TTMP=class(TDataModule)
    TbGeral: TIBDataSet;
    DsGeral: TDataSource;
    DsParmG: TDataSource;
    cdParmG: TClientDataSet;
    cdParmGLinhasAnt: TIntegerField;
    cdParmGLinhasDep: TIntegerField;
    cdParmGNumPDV: TIntegerField;
    cdParmGUltCupom: TIntegerField;
    cdParmGUltData: TDateField;
    cdParmGTMargem: TIntegerField;
    cdParmGTVolumes: TIntegerField;
    cdParmGTCodProd: TIntegerField;
    cdParmGTUnidMed: TIntegerField;
    cdParmGTQuantidade: TIntegerField;
    cdParmGTVlrUnit: TIntegerField;
    cdParmGTVlrTotal: TIntegerField;
    cdParmGTDescricao: TIntegerField;
    cdParmGTPagtos: TIntegerField;
    cdParmGTTotalizaQtde: TBooleanField;
    cdParmGTEscondeFormPgto: TBooleanField;
    cdParmGTCabecalho: TMemoField;
    cdParmGTRodape: TMemoField;
    cdParmGTempoAtualiza: TIntegerField;
    cdParmGTempoAlerta: TIntegerField;
    cdParmGImpressora: TStringField;
    cdParmGUsaCodBarras: TBooleanField;
    cdCupom: TClientDataSet;
    DsCupom: TDataSource;
    cdCupomItem: TIntegerField;
    cdCupomDescricao: TStringField;
    cdParmGUsaVolumes: TBooleanField;
    cdCupomTipo: TStringField;
    cdCupomCartao: TStringField;
    cdParmGModoRapido: TBooleanField;
    cdCupomCgcClie: TStringField;
    cdCupomNumCupom: TIntegerField;
    cdCupomCodProd: TStringField;
    cdCupomCodBarra: TStringField;
    cdCupomDescrResu: TStringField;
    cdCupomQtdLcto: TFloatField;
    cdCupomVlrUnit: TFloatField;
    cdCupomTipoPgto: TStringField;
    cdCupomNumBanco: TIntegerField;
    cdCupomNumAgencia: TIntegerField;
    cdCupomNumCheque: TIntegerField;
    cdCupomContaCorr: TStringField;
    cdCupomEmitente: TStringField;
    cdCupomCodCard: TStringField;
    cdCupomSenhaAutoriza: TStringField;
    cdCupomTrib: TStringField;
    cdCupomUnidMed: TStringField;
    cdCupomQtdeUnidMed: TFloatField;
    cdCupomComplEmbal: TStringField;
    cdCupomVlrCusto: TFloatField;
    cdCupomVlrTabela: TFloatField;
    cdCupomCodFunc: TStringField;
    cdCupomNatOper: TStringField;
    cdCupomCodBanco: TStringField;
    cdCupomSitTrib: TStringField;
    cdCupomClassFisc: TStringField;
    cdCupomStatus: TStringField;
    cdPagtos: TClientDataSet;
    cdPagtosItem: TIntegerField;
    cdPagtosTipoPagto: TStringField;
    cdPagtosDescricao: TStringField;
    cdPagtosValor: TFloatField;
    dsPagtos: TDataSource;
    cdCupomDtVencto: TDateField;
    cdPagtosNumBanco: TIntegerField;
    cdPagtosNumAgencia: TIntegerField;
    cdPagtosNumCheque: TIntegerField;
    cdPagtosContaCorr: TStringField;
    cdPagtosDtVencto: TDateField;
    cdPagtosEmitente: TStringField;
    cdPagtosCodCard: TStringField;
    cdPagtosCartao: TStringField;
    cdPagtosSenhaAutoriza: TStringField;
    cdParmGImprWin: TStringField;
    cdParmGPrcMesa: TFloatField;
    cdParmGAdicMesa: TBooleanField;
    cdCupomCodSubLocal: TStringField;
    cdCupomLinha: TIntegerField;
    cdCupomColuna: TIntegerField;
    cdCupomHistorico: TStringField;
    cdParmGMovEstoque: TBooleanField;
    cdParmGGravaVendas: TBooleanField;
    cdParmGmodelo: TStringField;
    cdCupomCodPgto: TStringField;
    cdPagtosCodPgto: TStringField;
    cdParmGUsaPrcDesc: TBooleanField;
    cdCupomVlrTotal: TStringField;
    cdParmGAceitaZero: TBooleanField;
    cdParmGNFPagto: TBooleanField;
    cdParmGNTroco: TBooleanField;
    cdParmGPedeVendedor: TBooleanField;
    cdParmGDtFiscal: TDateField;
    cdParmGSenhaCanc: TStringField;
    cdCupomVolumes: TFloatField;
    cdParmGDescrResu: TBooleanField;
    cdParmGMudaPreco: TBooleanField;
    cdParmGImprDefault: TIntegerField;
    cdParmGLkImpDefault: TStringField;
    cdParmGUsaGaveta: TBooleanField;
    cdParmGAuditaGav: TBooleanField;
    cdParmGgSerial: TIntegerField;
    cdParmGgAciona: TStringField;
    cdParmGgTempo: TIntegerField;
    cdParmGgBat_Ini: TStringField;
    cdParmGgBat_Abre: TStringField;
    cdParmGgDirBat: TStringField;
    cdParmGgModGaveta: TStringField;
    cdParmGgImpGaveta: TStringField;
    cdCupomCodImpressora: TIntegerField;
    cdParmGImprimeItensFinal: TBooleanField;
    cdCupomNaoImprime: TBooleanField;
    cdCupomViagem: TBooleanField;
    cdCupomPrcDesc: TFloatField;
    cdCupomVlrDesc: TFloatField;
    cdParmGImprComanda: TIntegerField;
    cdParmGSenhaRemis: TStringField;
    cdCupomFilial: TStringField;
    cdParmGUsaMouse: TBooleanField;
    cdParmGNumPessoas: TIntegerField;
    cdCupomDelivery: TBooleanField;
    cdParmGPorta: TIntegerField;
    cdParmGUsaLimiteCodComanda: TStringField;
    cdParmGLimiteCodComanda: TIntegerField;
    procedure DataModuleCreate(Sender : TObject);
    procedure cdParmGCalcFields(Sender : TObject);
    procedure _PROC_005D995C(Sender : TObject);
    procedure _PROC_005D99B0(Sender : TObject);
    procedure _PROC_005D99D8(Sender : TObject);
    procedure _PROC_005D9B76(Sender : TObject);
    procedure _PROC_005D9CD1(Sender : TObject);
    procedure _PROC_005D9D00(Sender : TObject);
    procedure _PROC_005D9D08(Sender : TObject);
    procedure _PROC_005D9E38(Sender : TObject);
    procedure _PROC_005D9E64(Sender : TObject);
    procedure _PROC_005D9E7C(Sender : TObject);
    procedure _PROC_005D9E95(Sender : TObject);
    procedure _PROC_005D9EAF(Sender : TObject);
    procedure _PROC_005D9F1D(Sender : TObject);
    procedure _PROC_005D9F4E(Sender : TObject);
    procedure _PROC_005DA00A(Sender : TObject);
    procedure _PROC_005DA051(Sender : TObject);
    procedure _PROC_005DA088(Sender : TObject);
    procedure _PROC_005DA0CF(Sender : TObject);
    procedure _PROC_005DA2BB(Sender : TObject);
    procedure _PROC_005DA4F1(Sender : TObject);
    procedure _PROC_005DA72A(Sender : TObject);
    procedure _PROC_005DA88A(Sender : TObject);
    procedure _PROC_005DA8A6(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  TMP: TTMP;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TTMP.DataModuleCreate(Sender : TObject);
begin
(*
005D9998   55                     push    ebp
005D9999   8BEC                   mov     ebp, esp
005D999B   53                     push    ebx
005D999C   8BD8                   mov     ebx, eax
005D999E   8BC3                   mov     eax, ebx

* Reference to : TTMP._PROC_005D99D8()
|
005D99A0   E833000000             call    005D99D8
005D99A5   8BC3                   mov     eax, ebx

* Reference to : TTMP._PROC_005D99B0()
|
005D99A7   E804000000             call    005D99B0
005D99AC   5B                     pop     ebx
005D99AD   5D                     pop     ebp
005D99AE   C3                     ret

*)
end;

procedure TTMP.cdParmGCalcFields(Sender : TObject);
begin
(*
005D9BD4   55                     push    ebp
005D9BD5   8BEC                   mov     ebp, esp
005D9BD7   33C9                   xor     ecx, ecx
005D9BD9   51                     push    ecx
005D9BDA   51                     push    ecx
005D9BDB   51                     push    ecx
005D9BDC   51                     push    ecx
005D9BDD   51                     push    ecx
005D9BDE   33C0                   xor     eax, eax
005D9BE0   55                     push    ebp

* Possible String Reference to: 'é­°âÿëë‹å]Ã'
|
005D9BE1   68869C5D00             push    $005D9C86

***** TRY
|
005D9BE6   64FF30                 push    dword ptr fs:[eax]
005D9BE9   648920                 mov     fs:[eax], esp
005D9BEC   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
005D9BF1   803800                 cmp     byte ptr [eax], $00
005D9BF4   7475                   jz      005D9C6B
005D9BF6   8D55FC                 lea     edx, [ebp-$04]
005D9BF9   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D9BFE   8B80E8010000           mov     eax, [eax+$01E8]
005D9C04   8B08                   mov     ecx, [eax]
005D9C06   FF5160                 call    dword ptr [ecx+$60]
005D9C09   837DFC00               cmp     dword ptr [ebp-$04], +$00
005D9C0D   745C                   jz      005D9C6B

* Possible String Reference to: 'DESCRICAO'
|
005D9C0F   689C9C5D00             push    $005D9C9C
005D9C14   8D45F8                 lea     eax, [ebp-$08]
005D9C17   50                     push    eax
005D9C18   8D55EC                 lea     edx, [ebp-$14]
005D9C1B   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D9C20   8B80E8010000           mov     eax, [eax+$01E8]
005D9C26   8B08                   mov     ecx, [eax]
005D9C28   FF5160                 call    dword ptr [ecx+$60]
005D9C2B   8B45EC                 mov     eax, [ebp-$14]
005D9C2E   8D55F0                 lea     edx, [ebp-$10]

* Reference to: Controls.TWinControl.ReadState(TWinControl;TReader);
|
005D9C31   E81E5F1D00             call    007AFB54
005D9C36   8B4DF0                 mov     ecx, [ebp-$10]
005D9C39   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODIMPR = '
|
005D9C3C   BAB09C5D00             mov     edx, $005D9CB0

* Reference to: System.@LStrCat3;
|
005D9C41   E862BBE2FF             call    004057A8
005D9C46   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'IMPRGRILL'
|
005D9C49   BAC49C5D00             mov     edx, $005D9CC4
005D9C4E   33C0                   xor     eax, eax

|
005D9C50   E8BBF61C00             call    007A9310
005D9C55   8B55F8                 mov     edx, [ebp-$08]
005D9C58   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D9C5D   8B80EC010000           mov     eax, [eax+$01EC]
005D9C63   8B08                   mov     ecx, [eax]
005D9C65   FF91B0000000           call    dword ptr [ecx+$00B0]
005D9C6B   33C0                   xor     eax, eax
005D9C6D   5A                     pop     edx
005D9C6E   59                     pop     ecx
005D9C6F   59                     pop     ecx
005D9C70   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '‹å]Ã'
|
005D9C73   688D9C5D00             push    $005D9C8D
005D9C78   8D45EC                 lea     eax, [ebp-$14]
005D9C7B   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005D9C80   E83BB8E2FF             call    004054C0
005D9C85   C3                     ret


* Reference to: System.@HandleFinally;
|
005D9C86   E9ADB0E2FF             jmp     00404D38
005D9C8B   EBEB                   jmp     005D9C78

****** END
|
005D9C8D   8BE5                   mov     esp, ebp
005D9C8F   5D                     pop     ebp
005D9C90   C3                     ret

*)
end;

procedure TTMP._PROC_005D995C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
005D995C   E9D7B3E2FF             jmp     00404D38

|
005D9961   EBEB                   jmp     005D994E
005D9963   8A45FF                 mov     al, byte ptr [ebp-$01]
005D9966   5F                     pop     edi
005D9967   5E                     pop     esi
005D9968   5B                     pop     ebx
005D9969   8BE5                   mov     esp, ebp
005D996B   5D                     pop     ebp
005D996C   C3                     ret

*)
end;

procedure TTMP._PROC_005D99B0(Sender : TObject);
begin
(*
005D99B0   55                     push    ebp
005D99B1   8BEC                   mov     ebp, esp
005D99B3   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D99B8   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DBClient.TCustomClientDataSet.CreateDataSet(TCustomClientDataSet);
|
005D99BE   E8B9D3F1FF             call    004F6D7C
005D99C3   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D99C8   8B80C0000000           mov     eax, [eax+$00C0]

* Reference to: DB.TDataSet.Open(TDataSet);
|
005D99CE   E881EFF0FF             call    004E8954
005D99D3   5D                     pop     ebp
005D99D4   C3                     ret

*)
end;

procedure TTMP._PROC_005D99D8(Sender : TObject);
begin
(*
005D99D8   55                     push    ebp
005D99D9   8BEC                   mov     ebp, esp
005D99DB   33C9                   xor     ecx, ecx
005D99DD   51                     push    ecx
005D99DE   51                     push    ecx
005D99DF   51                     push    ecx
005D99E0   51                     push    ecx
005D99E1   51                     push    ecx
005D99E2   53                     push    ebx
005D99E3   56                     push    esi
005D99E4   57                     push    edi
005D99E5   8BD8                   mov     ebx, eax
005D99E7   33C0                   xor     eax, eax
005D99E9   55                     push    ebp

* Possible String Reference to: 'é½±âÿëë_^[‹å]Ãÿÿÿÿ'
|
005D99EA   68769B5D00             push    $005D9B76

***** TRY
|
005D99EF   64FF30                 push    dword ptr fs:[eax]
005D99F2   648920                 mov     fs:[eax], esp
005D99F5   33C9                   xor     ecx, ecx
005D99F7   B201                   mov     dl, $01

* Reference to class TClientDataSet
|
005D99F9   A15C2B4F00             mov     eax, dword ptr [$004F2B5C]

* Reference to: ADODB.TCustomADODataSet.Create(TCustomADODataSet;boolean;TComponent);
|
005D99FE   E811A6F1FF             call    004F4014
005D9A03   8945FC                 mov     [ebp-$04], eax
005D9A06   33C0                   xor     eax, eax
005D9A08   55                     push    ebp
005D9A09   68549B5D00             push    $005D9B54

***** TRY
|
005D9A0E   64FF30                 push    dword ptr fs:[eax]
005D9A11   648920                 mov     fs:[eax], esp
005D9A14   33C0                   xor     eax, eax
005D9A16   55                     push    ebp
005D9A17   68039B5D00             push    $005D9B03

***** TRY
|
005D9A1C   64FF30                 push    dword ptr fs:[eax]
005D9A1F   648920                 mov     fs:[eax], esp
005D9A22   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D9A27   8B4064                 mov     eax, [eax+$64]

* Reference to: DBClient.TCustomClientDataSet.CreateDataSet(TCustomClientDataSet);
|
005D9A2A   E84DD3F1FF             call    004F6D7C
005D9A2F   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D9A34   8B4064                 mov     eax, [eax+$64]

* Reference to: DB.TDataSet.Open(TDataSet);
|
005D9A37   E818EFF0FF             call    004E8954
005D9A3C   8D55F4                 lea     edx, [ebp-$0C]
005D9A3F   33C0                   xor     eax, eax

* Reference to: System.ParamStr(Integer):String;
|
005D9A41   E8A692E2FF             call    00402CEC
005D9A46   8B45F4                 mov     eax, [ebp-$0C]
005D9A49   8D55F8                 lea     edx, [ebp-$08]

* Reference to: SysUtils.ExtractFilePath(AnsiString):AnsiString;
|
005D9A4C   E8EB1DE3FF             call    0040B83C
005D9A51   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'params.dat'
|
005D9A54   BA8C9B5D00             mov     edx, $005D9B8C

* Reference to: System.@LStrCat;
|
005D9A59   E806BDE2FF             call    00405764
005D9A5E   8B55F8                 mov     edx, [ebp-$08]
005D9A61   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D9A66   8B4064                 mov     eax, [eax+$64]

* Reference to: DBClient.TCustomClientDataSet.SetFileName(TCustomClientDataSet;AnsiString);
|
005D9A69   E882F8F1FF             call    004F92F0
005D9A6E   8B55FC                 mov     edx, [ebp-$04]
005D9A71   8BC3                   mov     eax, ebx

|
005D9A73   E8BCFDFFFF             call    005D9834
005D9A78   84C0                   test    al, al
005D9A7A   747D                   jz      005D9AF9
005D9A7C   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D9A81   8B4064                 mov     eax, [eax+$64]

* Reference to: DB.TDataSet.Edit(TDataSet);
|
005D9A84   E8AF19F1FF             call    004EB438
005D9A89   8B45FC                 mov     eax, [ebp-$04]

* Reference to: DB.TDataSet.GetFieldCount(TDataSet):Integer;
|
005D9A8C   E857FCF0FF             call    004E96E8
005D9A91   8BF0                   mov     esi, eax
005D9A93   4E                     dec     esi
005D9A94   85F6                   test    esi, esi
005D9A96   7C51                   jl      005D9AE9
005D9A98   46                     inc     esi
005D9A99   33DB                   xor     ebx, ebx
005D9A9B   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TClientDataSet.FieldDefs : TFieldDefs
|
005D9A9E   8B4038                 mov     eax, [eax+$38]
005D9AA1   8BD3                   mov     edx, ebx

* Reference to: DB.TFieldDefs.GetFieldDef(TFieldDefs;Integer):TFieldDef;
|
005D9AA3   E81432F0FF             call    004DCCBC

* Reference to field TFieldDefs.UpdateCount : Integer
|
005D9AA8   8B500C                 mov     edx, [eax+$0C]
005D9AAB   8B45FC                 mov     eax, [ebp-$04]

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
005D9AAE   E85101F1FF             call    004E9C04
005D9AB3   8D55F0                 lea     edx, [ebp-$10]
005D9AB6   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TClientDataSet.OFFS_60
|
005D9AB8   FF5160                 call    dword ptr [ecx+$60]
005D9ABB   8B45F0                 mov     eax, [ebp-$10]
005D9ABE   50                     push    eax
005D9ABF   8B45FC                 mov     eax, [ebp-$04]

* Reference to field TClientDataSet.FieldDefs : TFieldDefs
|
005D9AC2   8B4038                 mov     eax, [eax+$38]
005D9AC5   8BD3                   mov     edx, ebx

* Reference to: DB.TFieldDefs.GetFieldDef(TFieldDefs;Integer):TFieldDef;
|
005D9AC7   E8F031F0FF             call    004DCCBC

* Reference to field TFieldDefs.UpdateCount : Integer
|
005D9ACC   8B500C                 mov     edx, [eax+$0C]
005D9ACF   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D9AD4   8B4064                 mov     eax, [eax+$64]

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
005D9AD7   E82801F1FF             call    004E9C04
005D9ADC   5A                     pop     edx
005D9ADD   8B08                   mov     ecx, [eax]
005D9ADF   FF91B0000000           call    dword ptr [ecx+$00B0]
005D9AE5   43                     inc     ebx
005D9AE6   4E                     dec     esi
005D9AE7   75B2                   jnz     005D9A9B
005D9AE9   A1A8D97D00             mov     eax, dword ptr [$007DD9A8]
005D9AEE   8B4064                 mov     eax, [eax+$64]
005D9AF1   8B10                   mov     edx, [eax]
005D9AF3   FF924C020000           call    dword ptr [edx+$024C]
005D9AF9   33C0                   xor     eax, eax
005D9AFB   5A                     pop     edx
005D9AFC   59                     pop     ecx
005D9AFD   59                     pop     ecx
005D9AFE   648910                 mov     fs:[eax], edx
005D9B01   EB3B                   jmp     005D9B3E

* Reference to: System.@HandleOnException;
|
005D9B03   E9A8B0E2FF             jmp     00404BB0
005D9B08   0100                   add     [eax], eax
005D9B0A   0000                   add     [eax], al
005D9B0C   40                     inc     eax
005D9B0D   95                     xchg    eax, ebp
005D9B0E   40                     inc     eax
005D9B0F   00149B                 add     [ebx+ebx*4], dl
005D9B12   5D                     pop     ebp
005D9B13   0089C36A008B           add     [ecx+$8B006AC3], cl
005D9B19   4B                     dec     ebx
005D9B1A   048D                   add     al, -$73
005D9B1C   45                     inc     ebp
005D9B1D   EC                     in      al, dx

* Possible String Reference to: 'Erro ao inicializar os parâmetros d
|                                o sistema!'
|
005D9B1E   BAA09B5D00             mov     edx, $005D9BA0

* Reference to: System.@LStrCat3;
|
005D9B23   E880BCE2FF             call    004057A8
005D9B28   8B45EC                 mov     eax, [ebp-$14]
005D9B2B   668B0DD09B5D00         mov     cx, word ptr [$005D9BD0]
005D9B32   B201                   mov     dl, $01

|
005D9B34   E8F39FE6FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
005D9B39   E872B3E2FF             call    00404EB0

****** END
|
005D9B3E   33C0                   xor     eax, eax
005D9B40   5A                     pop     edx
005D9B41   59                     pop     ecx
005D9B42   59                     pop     ecx
005D9B43   648910                 mov     fs:[eax], edx

****** FINALLY
|
005D9B46   685B9B5D00             push    $005D9B5B
005D9B4B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.TObject.Free(TObject);
|
005D9B4E   E849AAE2FF             call    0040459C
005D9B53   C3                     ret


* Reference to: System.@HandleFinally;
|
005D9B54   E9DFB1E2FF             jmp     00404D38
005D9B59   EBF0                   jmp     005D9B4B

****** END
|
005D9B5B   33C0                   xor     eax, eax
005D9B5D   5A                     pop     edx
005D9B5E   59                     pop     ecx
005D9B5F   59                     pop     ecx
005D9B60   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ãÿÿÿÿ'
|
005D9B63   687D9B5D00             push    $005D9B7D
005D9B68   8D45EC                 lea     eax, [ebp-$14]
005D9B6B   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005D9B70   E84BB9E2FF             call    004054C0
005D9B75   C3                     ret


* Reference to: System.@HandleFinally;
|
005D9B76   E9BDB1E2FF             jmp     00404D38
005D9B7B   EBEB                   jmp     005D9B68

****** END
|
005D9B7D   5F                     pop     edi
005D9B7E   5E                     pop     esi
005D9B7F   5B                     pop     ebx
005D9B80   8BE5                   mov     esp, ebp
005D9B82   5D                     pop     ebp
005D9B83   C3                     ret

*)
end;

procedure TTMP._PROC_005D9B76(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
005D9B76   E9BDB1E2FF             jmp     00404D38

|
005D9B7B   EBEB                   jmp     005D9B68
005D9B7D   5F                     pop     edi
005D9B7E   5E                     pop     esi
005D9B7F   5B                     pop     ebx
005D9B80   8BE5                   mov     esp, ebp
005D9B82   5D                     pop     ebp
005D9B83   C3                     ret

*)
end;

procedure TTMP._PROC_005D9CD1(Sender : TObject);
begin
(*
005D9CD1   8BEC                   mov     ebp, esp
005D9CD3   33C0                   xor     eax, eax
005D9CD5   55                     push    ebp

* Possible String Reference to: 'é>°âÿëø]Ã‹Àƒ-¬Ù}'
|
005D9CD6   68F59C5D00             push    $005D9CF5

***** TRY
|
005D9CDB   64FF30                 push    dword ptr fs:[eax]
005D9CDE   648920                 mov     fs:[eax], esp
005D9CE1   FF05ACD97D00           inc     dword ptr [$007DD9AC]
005D9CE7   33C0                   xor     eax, eax
005D9CE9   5A                     pop     edx
005D9CEA   59                     pop     ecx
005D9CEB   59                     pop     ecx
005D9CEC   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-¬Ù}'
|
005D9CEF   68FC9C5D00             push    $005D9CFC
005D9CF4   C3                     ret


* Reference to: System.@HandleFinally;
|
005D9CF5   E93EB0E2FF             jmp     00404D38
005D9CFA   EBF8                   jmp     005D9CF4

****** END
|
005D9CFC   5D                     pop     ebp
005D9CFD   C3                     ret

*)
end;

procedure TTMP._PROC_005D9D00(Sender : TObject);
begin
(*
005D9D00   832DACD97D0001         sub     dword ptr [$007DD9AC], +$01
005D9D07   C3                     ret

*)
end;

procedure TTMP._PROC_005D9D08(Sender : TObject);
begin
(*
005D9D08   54                     push    esp
005D9D09   9D                     pop     
005D9D0A   5D                     pop     ebp
005D9D0B   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005D9E38(Sender : TObject);
begin
(*
005D9E38   4D                     dec     ebp
005D9E39   52                     push    edx
005D9E3A   45                     inc     ebp
005D9E3B   51                     push    ecx
005D9E3C   800000                 add     byte ptr [eax], $00
005D9E3F   000400                 add     [eax+eax], al
005D9E42   10546252               adc     [edx+$52], dl
005D9E46   657175                 jno     005D9EBE
005D9E49   69734454524551         imul    esi, [ebx+$44], $51455254
005D9E50   55                     push    ebp
005D9E51   49                     dec     ecx
005D9E52   53                     push    ebx
005D9E53   8400                   test    [eax], al
005D9E55   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005D9E64(Sender : TObject);
begin
(*
005D9E64   4D                     dec     ebp
005D9E65   50                     push    eax
005D9E66   45                     inc     ebp
005D9E67   44                     inc     esp
005D9E68   49                     dec     ecx
005D9E69   44                     inc     esp
005D9E6A   4F                     dec     edi
005D9E6B   8800                   mov     [eax], al
005D9E6D   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005D9E7C(Sender : TObject);
begin
(*
005D9E7C   4D                     dec     ebp
005D9E7D   4C                     dec     esp
005D9E7E   43                     inc     ebx
005D9E7F   54                     push    esp
005D9E80   4F                     dec     edi
005D9E81   8C00                   mov     word ptr [eax], es
005D9E83   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005D9E95(Sender : TObject);
begin
(*
005D9E95   42                     inc     edx
005D9E96   4C                     dec     esp
005D9E97   4F                     dec     edi
005D9E98   43                     inc     ebx
005D9E99   41                     inc     ecx
005D9E9A   4C                     dec     esp
005D9E9B   90                     nop
005D9E9C   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005D9EAF(Sender : TObject);
begin
(*
005D9EAF   4E                     dec     esi
005D9EB0   43                     inc     ebx
005D9EB1   94                     xchg    eax, esp
005D9EB2   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005D9F1D(Sender : TObject);
begin
(*
005D9F1D   41                     inc     ecx
005D9F1E   4C                     dec     esp
005D9F1F   49                     dec     ecx
005D9F20   5A                     pop     edx
005D9F21   41                     inc     ecx
005D9F22   43                     inc     ebx
005D9F23   41                     inc     ecx
005D9F24   4F                     dec     edi
005D9F25   A800                   test    al, $00
005D9F27   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005D9F4E(Sender : TObject);
begin
(*
005D9F4E   53                     push    ebx
005D9F4F   B000                   mov     al, $00
005D9F51   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005DA00A(Sender : TObject);
begin
(*
005DA00A   4D                     dec     ebp
005DA00B   52                     push    edx
005DA00C   45                     inc     ebp
005DA00D   51                     push    ecx
005DA00E   D000                   rol     byte ptr [eax], 1
005DA010   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005DA051(Sender : TObject);
begin
(*
005DA051   42                     inc     edx
005DA052   4C                     dec     esp
005DA053   4F                     dec     edi
005DA054   43                     inc     ebx
005DA055   41                     inc     ecx
005DA056   4C                     dec     esp
005DA057   32DC                   xor     bl, ah
005DA059   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005DA088(Sender : TObject);
begin
(*
005DA088   49                     dec     ecx
005DA089   53                     push    ebx
005DA08A   E400                   in      al, $00
005DA08C   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005DA0CF(Sender : TObject);
begin
(*
005DA0CF   4E                     dec     esi
005DA0D0   43                     inc     ebx
005DA0D1   41                     inc     ecx
005DA0D2   54                     push    esp
005DA0D3   45                     inc     ebp
005DA0D4   4E                     dec     esi
005DA0D5   44                     inc     esp
005DA0D6   F0                     lock
005DA0D7   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005DA2BB(Sender : TObject);
begin
(*
005DA2BB   45                     inc     ebp
005DA2BC   53                     push    ebx
005DA2BD   44                     inc     esp
005DA2BE   0100                   add     [eax], eax
005DA2C0   0006                   add     [esi], al
005DA2C2   0012                   add     [edx], dl
005DA2C4   54                     push    esp
005DA2C5   624361                 bound   eax, qword ptr [ebx+$61]
005DA2C8   69786153555052         imul    edi, [eax+$61], $52505553
005DA2CF   49                     dec     ecx
005DA2D0   4D                     dec     ebp
005DA2D1   45                     inc     ebp
005DA2D2   4E                     dec     esi
005DA2D3   54                     push    esp
005DA2D4   4F                     dec     edi
005DA2D5   53                     push    ebx
005DA2D6   48                     dec     eax
005DA2D7   0100                   add     [eax], eax
005DA2D9   0006                   add     [esi], al
005DA2DB   001554624361           add     [$61436254], dl
005DA2E1   6978615452414E         imul    edi, [eax+$61], $4E415254
005DA2E8   53                     push    ebx
005DA2E9   46                     inc     esi
005DA2EA   45                     inc     ebp
005DA2EB   52                     push    edx
005DA2EC   45                     inc     ebp
005DA2ED   4E                     dec     esi
005DA2EE   43                     inc     ebx
005DA2EF   49                     dec     ecx
005DA2F0   41                     inc     ecx
005DA2F1   53                     push    ebx
005DA2F2   4C                     dec     esp
005DA2F3   0100                   add     [eax], eax
005DA2F5   0006                   add     [esi], al
005DA2F7   000E                   add     [esi], cl
005DA2F9   54                     push    esp
005DA2FA   624361                 bound   eax, qword ptr [ebx+$61]
005DA2FD   697861414A5553         imul    edi, [eax+$61], $53554A41
005DA304   54                     push    esp
005DA305   45                     inc     ebp
005DA306   53                     push    ebx
005DA307   50                     push    eax
005DA308   0100                   add     [eax], eax
005DA30A   0006                   add     [esi], al
005DA30C   000D54624361           add     [$61436254], cl
005DA312   69786141564953         imul    edi, [eax+$61], $53495641
005DA319   54                     push    esp
005DA31A   41                     inc     ecx
005DA31B   54                     push    esp
005DA31C   0100                   add     [eax], eax
005DA31E   0006                   add     [esi], al
005DA320   000D54624361           add     [$61436254], cl
005DA326   69786141505241         imul    edi, [eax+$61], $41525041
005DA32D   5A                     pop     edx
005DA32E   4F                     dec     edi
005DA32F   58                     pop     eax
005DA330   0100                   add     [eax], eax
005DA332   0006                   add     [esi], al
005DA334   000F                   add     [edi], cl
005DA336   54                     push    esp
005DA337   624361                 bound   eax, qword ptr [ebx+$61]
005DA33A   69786146415455         imul    edi, [eax+$61], $55544146
005DA341   52                     push    edx
005DA342   41                     inc     ecx
005DA343   44                     inc     esp
005DA344   4F                     dec     edi
005DA345   5C                     pop     esp
005DA346   0100                   add     [eax], eax
005DA348   0006                   add     [esi], al
005DA34A   000F                   add     [edi], cl
005DA34C   54                     push    esp
005DA34D   624361                 bound   eax, qword ptr [ebx+$61]
005DA350   6978614F524450         imul    edi, [eax+$61], $5044524F
005DA357   41                     inc     ecx
005DA358   47                     inc     edi
005DA359   54                     push    esp
005DA35A   4F                     dec     edi
005DA35B   60                     pusha
005DA35C   0100                   add     [eax], eax
005DA35E   0006                   add     [esi], al
005DA360   000F                   add     [edi], cl
005DA362   54                     push    esp
005DA363   624361                 bound   eax, qword ptr [ebx+$61]
005DA366   69786143415254         imul    edi, [eax+$61], $54524143
005DA36D   45                     inc     ebp
005DA36E   49                     dec     ecx
005DA36F   52                     push    edx
005DA370   41                     inc     ecx
005DA371   640100                 add     fs:[eax], eax
005DA374   0002                   add     [edx], al
005DA376   0012                   add     [edx], dl
005DA378   54                     push    esp
005DA379   624361                 bound   eax, qword ptr [ebx+$61]
005DA37C   69786141545541         imul    edi, [eax+$61], $41555441
005DA383   4C                     dec     esp
005DA384   49                     dec     ecx
005DA385   5A                     pop     edx
005DA386   41                     inc     ecx
005DA387   43                     inc     ebx
005DA388   41                     inc     ecx
005DA389   4F                     dec     edi
005DA38A   6801000006             push    $06000001
005DA38F   0012                   add     [edx], dl
005DA391   54                     push    esp
005DA392   624361                 bound   eax, qword ptr [ebx+$61]
005DA395   697861564C5253         imul    edi, [eax+$61], $53524C56
005DA39C   41                     inc     ecx
005DA39D   4E                     dec     esi
005DA39E   47                     inc     edi
005DA39F   52                     push    edx
005DA3A0   49                     dec     ecx
005DA3A1   41                     inc     ecx
005DA3A2   316C0100               xor     [ecx+eax+$00], ebp
005DA3A6   0002                   add     [edx], al
005DA3A8   0013                   add     [ebx], dl
005DA3AA   54                     push    esp
005DA3AB   624361                 bound   eax, qword ptr [ebx+$61]
005DA3AE   697861484F5241         imul    edi, [eax+$61], $41524F48
005DA3B5   53                     push    ebx
005DA3B6   41                     inc     ecx
005DA3B7   4E                     dec     esi
005DA3B8   47                     inc     edi
005DA3B9   52                     push    edx
005DA3BA   49                     dec     ecx
005DA3BB   41                     inc     ecx
005DA3BC   317001                 xor     [eax+$01], esi
005DA3BF   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005DA4F1(Sender : TObject);
begin
(*
005DA4F1   45                     inc     ebp
005DA4F2   53                     push    ebx
005DA4F3   A4                     movsb
005DA4F4   0100                   add     [eax], eax
005DA4F6   0006                   add     [esi], al
005DA4F8   001554624361           add     [$61436254], dl
005DA4FE   69785469706F53         imul    edi, [eax+$54], $536F7069
005DA505   55                     push    ebp
005DA506   50                     push    eax
005DA507   52                     push    edx
005DA508   49                     dec     ecx
005DA509   4D                     dec     ebp
005DA50A   45                     inc     ebp
005DA50B   4E                     dec     esi
005DA50C   54                     push    esp
005DA50D   4F                     dec     edi
005DA50E   53                     push    ebx
005DA50F   A801                   test    al, $01
005DA511   0000                   add     [eax], al

*)
end;

procedure TTMP._PROC_005DA72A(Sender : TObject);
begin
(*
005DA72A   45                     inc     ebp
005DA72B   53                     push    ebx
005DA72C   47                     inc     edi
005DA72D   657454                 jz      005DA784
005DA730   657874                 js      005DA7A7
005DA733   2300                   and     eax, [eax]
005DA735   BCBD5D001C             mov     esp, $1C005DBD
005DA73A   54                     push    esp
005DA73B   624361                 bound   eax, qword ptr [ebx+$61]
005DA73E   69785469706F53         imul    edi, [eax+$54], $536F7069
005DA745   55                     push    ebp
005DA746   50                     push    eax
005DA747   52                     push    edx
005DA748   49                     dec     ecx
005DA749   4D                     dec     ebp
005DA74A   45                     inc     ebp
005DA74B   4E                     dec     esi
005DA74C   54                     push    esp
005DA74D   4F                     dec     edi
005DA74E   53                     push    ebx
005DA74F   47                     inc     edi
005DA750   657454                 jz      005DA7A7
005DA753   657874                 js      005DA7CA
005DA756   260028                 add     es:[eax], ch
005DA759   BE5D001F54             mov     esi, $541F005D
005DA75E   624361                 bound   eax, qword ptr [ebx+$61]
005DA761   69785469706F54         imul    edi, [eax+$54], $546F7069
005DA768   52                     push    edx
005DA769   41                     inc     ecx
005DA76A   4E                     dec     esi
005DA76B   53                     push    ebx
005DA76C   46                     inc     esi
005DA76D   45                     inc     ebp
005DA76E   52                     push    edx
005DA76F   45                     inc     ebp
005DA770   4E                     dec     esi
005DA771   43                     inc     ebx
005DA772   49                     dec     ecx
005DA773   41                     inc     ecx
005DA774   53                     push    ebx
005DA775   47                     inc     edi
005DA776   657454                 jz      005DA7CD
005DA779   657874                 js      005DA7F0
005DA77C   2200                   and     al, byte ptr [eax]
005DA77E   94                     xchg    eax, esp
005DA77F   BE5D001B54             mov     esi, $541B005D
005DA784   624361                 bound   eax, qword ptr [ebx+$61]
005DA787   69785469706F56         imul    edi, [eax+$54], $566F7069
005DA78E   4C                     dec     esp
005DA78F   52                     push    edx
005DA790   46                     inc     esi
005DA791   45                     inc     ebp
005DA792   43                     inc     ebx
005DA793   48                     dec     eax
005DA794   41                     inc     ecx
005DA795   44                     inc     esp
005DA796   4F                     dec     edi
005DA797   47                     inc     edi
005DA798   657454                 jz      005DA7EF
005DA79B   657874                 js      005DA812
005DA79E   2200                   and     al, byte ptr [eax]
005DA7A0   00BF5D001B54           add     [edi+$541B005D], bh
005DA7A6   624361                 bound   eax, qword ptr [ebx+$61]
005DA7A9   69786153414C44         imul    edi, [eax+$61], $444C4153
005DA7B0   4F                     dec     edi
005DA7B1   41                     inc     ecx
005DA7B2   4E                     dec     esi
005DA7B3   54                     push    esp
005DA7B4   45                     inc     ebp
005DA7B5   52                     push    edx
005DA7B6   49                     dec     ecx
005DA7B7   4F                     dec     edi
005DA7B8   52                     push    edx
005DA7B9   47                     inc     edi
005DA7BA   657454                 jz      005DA811
005DA7BD   657874                 js      005DA834
005DA7C0   1B00                   sbb     eax, [eax]
005DA7C2   6C                     insb
005DA7C3   BF5D001454             mov     edi, $5414005D
005DA7C8   624361                 bound   eax, qword ptr [ebx+$61]
005DA7CB   69786156454E44         imul    edi, [eax+$61], $444E4556
005DA7D2   41                     inc     ecx
005DA7D3   53                     push    ebx
005DA7D4   47                     inc     edi
005DA7D5   657454                 jz      005DA82C
005DA7D8   657874                 js      005DA84F
005DA7DB   1A00                   sbb     al, byte ptr [eax]
005DA7DD   D8BF5D001354           fdivr   dword ptr [edi+$5413005D]
005DA7E3   624361                 bound   eax, qword ptr [ebx+$61]
005DA7E6   69786146524554         imul    edi, [eax+$61], $54455246
005DA7ED   45                     inc     ebp
005DA7EE   47                     inc     edi
005DA7EF   657454                 jz      005DA846
005DA7F2   657874                 js      005DA869
005DA7F5   1800                   sbb     [eax], al
005DA7F7   44                     inc     esp
005DA7F8   C05D0011               rcr     byte ptr [ebp+$00], $11
005DA7FC   54                     push    esp
005DA7FD   624361                 bound   eax, qword ptr [ebx+$61]
005DA800   69786149504947         imul    edi, [eax+$61], $47495049
005DA807   657454                 jz      005DA85E
005DA80A   657874                 js      005DA881
005DA80D   1900                   sbb     [eax], eax
005DA80F   B0C0                   mov     al, $C0
005DA811   5D                     pop     ebp
005DA812   0012                   add     [edx], dl
005DA814   54                     push    esp
005DA815   624361                 bound   eax, qword ptr [ebx+$61]
005DA818   6978614D455243         imul    edi, [eax+$61], $4352454D
005DA81F   47                     inc     edi
005DA820   657454                 jz      005DA877
005DA823   657874                 js      005DA89A
005DA826   1B00                   sbb     eax, [eax]
005DA828   1CC1                   sbb     al, $C1
005DA82A   5D                     pop     ebp
005DA82B   001454                 add     [esp+edx*2], dl
005DA82E   624361                 bound   eax, qword ptr [ebx+$61]
005DA831   69786153415155         imul    edi, [eax+$61], $55514153
005DA838   45                     inc     ebp
005DA839   53                     push    ebx
005DA83A   47                     inc     edi
005DA83B   657454                 jz      005DA892
005DA83E   657874                 js      005DA8B5
005DA841   2000                   and     [eax], al
005DA843   88C1                   mov     cl, al
005DA845   5D                     pop     ebp
005DA846   0019                   add     [ecx], bl
005DA848   54                     push    esp
005DA849   624361                 bound   eax, qword ptr [ebx+$61]
005DA84C   69786153555052         imul    edi, [eax+$61], $52505553
005DA853   49                     dec     ecx
005DA854   4D                     dec     ebp
005DA855   45                     inc     ebp
005DA856   4E                     dec     esi
005DA857   54                     push    esp
005DA858   4F                     dec     edi
005DA859   53                     push    ebx
005DA85A   47                     inc     edi
005DA85B   657454                 jz      005DA8B2
005DA85E   657874                 js      005DA8D5
005DA861   2300                   and     eax, [eax]
005DA863   F4                     hlt
005DA864   C15D001C               rcr     dword ptr [ebp+$00], $1C
005DA868   54                     push    esp
005DA869   624361                 bound   eax, qword ptr [ebx+$61]
005DA86C   6978615452414E         imul    edi, [eax+$61], $4E415254
005DA873   53                     push    ebx
005DA874   46                     inc     esi
005DA875   45                     inc     ebp
005DA876   52                     push    edx
005DA877   45                     inc     ebp
005DA878   4E                     dec     esi
005DA879   43                     inc     ebx
005DA87A   49                     dec     ecx
005DA87B   41                     inc     ecx
005DA87C   53                     push    ebx
005DA87D   47                     inc     edi
005DA87E   657454                 jz      005DA8D5
005DA881   657874                 js      005DA8F8
005DA884   1C00                   sbb     al, $00
005DA886   60                     pusha
005DA887   C25D00                 ret     $005D

*)
end;

procedure TTMP._PROC_005DA88A(Sender : TObject);
begin
(*
005DA88A   1554624361             adc     eax, $61436254
005DA88F   697861414A5553         imul    edi, [eax+$61], $53554A41
005DA896   54                     push    esp
005DA897   45                     inc     ebp
005DA898   53                     push    ebx
005DA899   47                     inc     edi
005DA89A   657454                 jz      005DA8F1
005DA89D   657874                 js      005DA914
005DA8A0   1B00                   sbb     eax, [eax]
005DA8A2   CC                     int     3
005DA8A3   C25D00                 ret     $005D

*)
end;

procedure TTMP._PROC_005DA8A6(Sender : TObject);
begin
(*
005DA8A6   1454                   adc     al, $54
005DA8A8   624361                 bound   eax, qword ptr [ebx+$61]
005DA8AB   69786141564953         imul    edi, [eax+$61], $53495641
005DA8B2   54                     push    esp
005DA8B3   41                     inc     ecx
005DA8B4   47                     inc     edi
005DA8B5   657454                 jz      005DA90C
005DA8B8   657874                 js      005DA92F
005DA8BB   1B00                   sbb     eax, [eax]
005DA8BD   38C3                   cmp     bl, al
005DA8BF   5D                     pop     ebp
005DA8C0   001454                 add     [esp+edx*2], dl
005DA8C3   624361                 bound   eax, qword ptr [ebx+$61]
005DA8C6   69786141505241         imul    edi, [eax+$61], $41525041
005DA8CD   5A                     pop     edx
005DA8CE   4F                     dec     edi
005DA8CF   47                     inc     edi
005DA8D0   657454                 jz      005DA927
005DA8D3   657874                 js      005DA94A
005DA8D6   1D00A4C35D             sbb     eax, $5DC3A400
005DA8DB   0016                   add     [esi], dl
005DA8DD   54                     push    esp
005DA8DE   624361                 bound   eax, qword ptr [ebx+$61]
005DA8E1   69786146415455         imul    edi, [eax+$61], $55544146
005DA8E8   52                     push    edx
005DA8E9   41                     inc     ecx
005DA8EA   44                     inc     esp
005DA8EB   4F                     dec     edi
005DA8EC   47                     inc     edi
005DA8ED   657454                 jz      005DA944
005DA8F0   657874                 js      005DA967
005DA8F3   1D0010C45D             sbb     eax, $5DC41000
005DA8F8   0016                   add     [esi], dl
005DA8FA   54                     push    esp
005DA8FB   624361                 bound   eax, qword ptr [ebx+$61]
005DA8FE   6978614F524450         imul    edi, [eax+$61], $5044524F
005DA905   41                     inc     ecx
005DA906   47                     inc     edi
005DA907   54                     push    esp
005DA908   4F                     dec     edi
005DA909   47                     inc     edi
005DA90A   657454                 jz      005DA961
005DA90D   657874                 js      005DA984
005DA910   1D007CC45D             sbb     eax, $5DC47C00
005DA915   0016                   add     [esi], dl
005DA917   54                     push    esp
005DA918   624361                 bound   eax, qword ptr [ebx+$61]
005DA91B   69786143415254         imul    edi, [eax+$61], $54524143
005DA922   45                     inc     ebp
005DA923   49                     dec     ecx
005DA924   52                     push    edx
005DA925   41                     inc     ecx
005DA926   47                     inc     edi
005DA927   657454                 jz      005DA97E
005DA92A   657874                 js      005DA9A1
005DA92D   2000                   and     [eax], al
005DA92F   E8C45D0019             call    195E06F8
005DA934   54                     push    esp
005DA935   624361                 bound   eax, qword ptr [ebx+$61]
005DA938   697861564C5253         imul    edi, [eax+$61], $53524C56
005DA93F   41                     inc     ecx
005DA940   4E                     dec     esi
005DA941   47                     inc     edi
005DA942   52                     push    edx
005DA943   49                     dec     ecx
005DA944   41                     inc     ecx
005DA945   314765                 xor     [edi+$65], eax
005DA948   7454                   jz      005DA99E
005DA94A   657874                 js      005DA9C1
005DA94D   2000                   and     [eax], al
005DA94F   54                     push    esp
005DA950   C55D00                 lds     ebx, [ebp+$00]
005DA953   19546243               sbb     [edx+$43], edx
005DA957   61                     popa
005DA958   697861564C5253         imul    edi, [eax+$61], $53524C56
005DA95F   41                     inc     ecx
005DA960   4E                     dec     esi
005DA961   47                     inc     edi
005DA962   52                     push    edx
005DA963   49                     dec     ecx
005DA964   41                     inc     ecx
005DA965   324765                 xor     al, byte ptr [edi+$65]
005DA968   7454                   jz      005DA9BE
005DA96A   657874                 js      005DA9E1
005DA96D   2000                   and     [eax], al
005DA96F   C0C55D                 rol     ch, $5D
005DA972   0019                   add     [ecx], bl
005DA974   54                     push    esp
005DA975   624361                 bound   eax, qword ptr [ebx+$61]
005DA978   697861564C5253         imul    edi, [eax+$61], $53524C56
005DA97F   41                     inc     ecx
005DA980   4E                     dec     esi
005DA981   47                     inc     edi
005DA982   52                     push    edx
005DA983   49                     dec     ecx
005DA984   41                     inc     ecx
005DA985   334765                 xor     eax, [edi+$65]
005DA988   7454                   jz      005DA9DE
005DA98A   657874                 js      005DAA01
005DA98D   1D002CC65D             sbb     eax, $5DC62C00
005DA992   0016                   add     [esi], dl
005DA994   54                     push    esp
005DA995   624361                 bound   eax, qword ptr [ebx+$61]
005DA998   69786156414C45         imul    edi, [eax+$61], $454C4156
005DA99F   53                     push    ebx
005DA9A0   44                     inc     esp
005DA9A1   49                     dec     ecx
005DA9A2   41                     inc     ecx
005DA9A3   47                     inc     edi
005DA9A4   657454                 jz      005DA9FB
005DA9A7   657874                 js      005DAA1E
005DA9AA   1B00                   sbb     eax, [eax]
005DA9AC   98                     cwde 
005DA9AD   C65D0014               mov     byte ptr [ebp+$00], $14
005DA9B1   54                     push    esp
005DA9B2   624361                 bound   eax, qword ptr [ebx+$61]
005DA9B5   69785469706F43         imul    edi, [eax+$54], $436F7069
005DA9BC   61                     popa
005DA9BD   6C                     insb
005DA9BE   634669                 arpl    [esi+$69], ax
005DA9C1   656C                   insb
005DA9C3   647322                 jnb     005DA9E8
005DA9C6   004CCA5D               add     [edx+ecx*8+$5D], cl
005DA9CA   001B                   add     [ebx], bl
005DA9CC   54                     push    esp
005DA9CD   624361                 bound   eax, qword ptr [ebx+$61]
005DA9D0   69785469706F56         imul    edi, [eax+$54], $566F7069
005DA9D7   45                     inc     ebp
005DA9D8   4E                     dec     esi
005DA9D9   44                     inc     esp
005DA9DA   41                     inc     ecx
005DA9DB   53                     push    ebx
005DA9DC   43                     inc     ebx
005DA9DD   4F                     dec     edi
005DA9DE   52                     push    edx
005DA9DF   52                     push    edx
005DA9E0   47                     inc     edi
005DA9E1   657454                 jz      005DAA38
005DA9E4   657874                 js      005DAA5B
005DA9E7   0454                   add     al, +$54
005DA9E9   44                     inc     esp
005DA9EA   6D                     insd
005DA9EB   3307                   xor     eax, [edi]
005DA9ED   0064A84D               add     [eax+ebp*4+$4D], ah
005DA9F1   00B4A555001897         add     [ebp+$97180055], dh
005DA9F8   55                     push    ebp
005DA9F9   0044754D               add     [ebp+esi*2+$4D], al
005DA9FD   00CC                   add     ah, cl
005DA9FF   814D0008704D00         or      dword ptr [ebp+$00], $004D7008
005DAA06   A87C                   test    al, $7C
005DAA08   4D                     dec     ebp
005DAA09   008BC010AA5D           add     [ebx+$5DAA10C0], cl
005DAA0F   0007                   add     [edi], al
005DAA11   0454                   add     al, +$54
005DAA13   44                     inc     esp
005DAA14   6D                     insd
005DAA15   33549D5D               xor     edx, [ebp+ebx*4+$5D]
005DAA19   00E4                   add     ah, ah
005DAA1B   124200                 adc     al, byte ptr [edx+$00]
005DAA1E   0500047564             add     eax, +$64750400
005DAA23   6D                     insd
005DAA24   3300                   xor     eax, [eax]
005DAA26   0090558BEC53           add     [eax+$53EC8B55], dl
005DAA2C   56                     push    esi
005DAA2D   57                     push    edi
005DAA2E   BEB0D97D00             mov     esi, $007DD9B0
005DAA33   8B3D78B47D00           mov     edi, [$007DB478]
005DAA39   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponentCount(TComponent):Integer;
|
005DAA3B   E8C038E5FF             call    0042E300
005DAA40   8BD8                   mov     ebx, eax
005DAA42   4B                     dec     ebx
005DAA43   83FB00                 cmp     ebx, +$00
005DAA46   0F8CDB000000           jl      005DAB27
005DAA4C   8BD3                   mov     edx, ebx
005DAA4E   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005DAA50   E87F38E5FF             call    0042E2D4

* Reference to class TIBDataSet
|
005DAA55   8B15B4A55500           mov     edx, [$0055A5B4]

* Reference to: System.@IsClass(TObject;TClass):Boolean;
|
005DAA5B   E8D09CE2FF             call    00404730
005DAA60   84C0                   test    al, al
005DAA62   0F84B5000000           jz      005DAB1D
005DAA68   8BD3                   mov     edx, ebx
005DAA6A   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005DAA6C   E86338E5FF             call    0042E2D4
005DAA71   8B17                   mov     edx, [edi]
005DAA73   8990BC000000           mov     [eax+$00BC], edx

* Possible String Reference to: 'U‹ì‹Âèæ²þÿ]ÃU‹ìj'
|
005DAA79   C780B8000000E8CF7B00   mov     dword ptr [eax+$00B8], $007BCFE8
005DAA83   8BD3                   mov     edx, ebx
005DAA85   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005DAA87   E84838E5FF             call    0042E2D4
005DAA8C   83780C00               cmp     dword ptr [eax+$0C], +$00
005DAA90   0F8E87000000           jle     005DAB1D
005DAA96   8BD3                   mov     edx, ebx
005DAA98   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005DAA9A   E83538E5FF             call    0042E2D4
005DAA9F   8B17                   mov     edx, [edi]
005DAAA1   8990D4000000           mov     [eax+$00D4], edx

* Possible String Reference to: 'U‹ìj'
|
005DAAA7   C780D000000044D27B00   mov     dword ptr [eax+$00D0], $007BD244
005DAAB1   8BD3                   mov     edx, ebx
005DAAB3   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005DAAB5   E81A38E5FF             call    0042E2D4
005DAABA   8B17                   mov     edx, [edi]
005DAABC   8990E4000000           mov     [eax+$00E4], edx

* Possible String Reference to: 'U‹ì3ÉQQQQSV‹ò3ÀUh”Ñ{'
|
005DAAC2   C780E0000000C8D07B00   mov     dword ptr [eax+$00E0], $007BD0C8
005DAACC   8BD3                   mov     edx, ebx
005DAACE   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005DAAD0   E8FF37E5FF             call    0042E2D4
005DAAD5   8B17                   mov     edx, [edi]
005DAAD7   8990F4000000           mov     [eax+$00F4], edx

* Possible String Reference to: 'U‹ì3ÉQQQQSVW‹ò‹ø3ÀUhßÔ{'
|
005DAADD   C780F0000000C0D37B00   mov     dword ptr [eax+$00F0], $007BD3C0
005DAAE7   8BD3                   mov     edx, ebx
005DAAE9   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005DAAEB   E8E437E5FF             call    0042E2D4
005DAAF0   8B17                   mov     edx, [edi]
005DAAF2   8990FC000000           mov     [eax+$00FC], edx

* Possible String Reference to: 'U‹ìj'
|
005DAAF8   C780F8000000F4CF7B00   mov     dword ptr [eax+$00F8], $007BCFF4
005DAB02   8BD3                   mov     edx, ebx
005DAB04   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005DAB06   E8C937E5FF             call    0042E2D4
005DAB0B   8B17                   mov     edx, [edi]
005DAB0D   89901C010000           mov     [eax+$011C], edx

* Possible String Reference to: 'U‹ìj'
|
005DAB13   C7801801000008CF7B00   mov     dword ptr [eax+$0118], $007BCF08
005DAB1D   4B                     dec     ebx
005DAB1E   83FBFF                 cmp     ebx, -$01
005DAB21   0F8525FFFFFF           jnz     005DAA4C
005DAB27   5F                     pop     edi
005DAB28   5E                     pop     esi
005DAB29   5B                     pop     ebx
005DAB2A   5D                     pop     ebp
005DAB2B   C3                     ret

*)
end;

end.