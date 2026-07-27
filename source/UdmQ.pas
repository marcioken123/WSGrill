unit UdmQ;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery, IBSQL;

type
  TQe=class(TDataModule)
    SQLGeral: TIBSQL;
    DsF2: TDataSource;
    QeF2: TIBQuery;
    SQLLookups: TIBSQL;
    QeRelator: TIBQuery;
    QeRelatorCODIGO: TIntegerField;
    QeRelatorDESCRICAO: TIBStringField;
    QeRelatorTELA: TIBStringField;
    DsRelator: TDataSource;
    QeF2Local: TIBQuery;
    QeF2LocalCODPROD: TIBStringField;
    QeF2LocalFILIAL: TIBStringField;
    QeF2LocalCODSUBLOCAL: TIBStringField;
    QeF2LocalSALDOESTOQUE: TFloatField;
    QeF2LocalPADRAO: TIBStringField;
    QeF2LocalATUALIZACAO: TIBStringField;
    QeF2LocalLKSUBLOCAL: TIBStringField;
    DsF2Local: TDataSource;
    QeProdutos: TIBQuery;
    QeProdutosCODPROD: TIBStringField;
    QeProdutosCODGRUPO: TIBStringField;
    QeProdutosCODBARRA: TIBStringField;
    QeProdutosDESCRICAO: TIBStringField;
    QeProdutosCODMARCA: TIBStringField;
    QeProdutosMARCA: TIBStringField;
    QeProdutosMODELO: TIBStringField;
    QeProdutosMODELO2: TIBStringField;
    QeProdutosGRUPO: TIBStringField;
    QeProdutosTIPO: TIBStringField;
    QeProdutosDECIQTDE: TSmallintField;
    QeProdutosDECIVLR: TSmallintField;
    QeProdutosCLASSFISC: TIBStringField;
    QeProdutosSITTRIB: TIBStringField;
    QeProdutosVLRUNIT: TFloatField;
    QeProdutosccModelo: TStringField;
    QeProdutosccVlrTabela: TFloatField;
    QeProdutosALIQIPI: TFloatField;
    DsProdutos: TDataSource;
    DsProdFili: TDataSource;
    QeProdFili: TIBQuery;
    QeProdFiliCODPROD: TIBStringField;
    QeProdFiliFILIAL: TIBStringField;
    QeProdFiliESTOQUEATUAL: TFloatField;
    QeProdFiliAENTREGAR: TFloatField;
    QeProdFiliARECEBER: TFloatField;
    QeProdFiliREMESSA: TFloatField;
    QeProdFiliDESCPROMOCAO: TFloatField;
    QeProdFiliDTINIPROMOCAO: TDateTimeField;
    QeProdFiliDTFIMPROMOCAO: TDateTimeField;
    QeProdFiliESTMINIMO: TFloatField;
    QeProdFiliESTOQCORR: TFloatField;
    QeProdFiliccESTOQPROJETADO: TFloatField;
    QeProdFiliLOCALREF: TIBStringField;
    QeProdUnid: TIBQuery;
    QeProdUnidCODPROD: TIBStringField;
    QeProdUnidFILIAL: TIBStringField;
    QeProdUnidUNIDMED: TIBStringField;
    QeProdUnidQTDEUNIDMED: TFloatField;
    QeProdUnidCODBARRA: TIBStringField;
    QeProdUnidCOMPLEMBAL: TIBStringField;
    QeProdUnidVLRUNIT: TFloatField;
    QeProdUnidVLRCUSTO: TFloatField;
    QeProdUnidPADRAO: TIBStringField;
    QeProdUnidMARGEM: TFloatField;
    QeProdUnidFATORCONVERSAO: TFloatField;
    QeProdUnidALIQUOTAIPI: TFloatField;
    QeProdUnidccVlrUnitComIPI: TFloatField;
    QeProdUnidccVlrUnit: TFloatField;
    QeProdUnidccVlrComIPI: TFloatField;
    QeProdUnidccVlrMil: TFloatField;
    QeProdUnidccVlrTabela: TFloatField;
    QeProdUnidDESCPROMOCAO: TFloatField;
    QeProdUnidDTINIPROMOCAO: TDateTimeField;
    QeProdUnidDTFIMPROMOCAO: TDateTimeField;
    QeProdUnidVLRUNITANT: TFloatField;
    QeProdUnidVLRCUSTOANT: TFloatField;
    QeProdUnidDTALTVLR: TDateTimeField;
    QeProdUnidALTUNIT: TStringField;
    DsProdUnid: TDataSource;
    QeProdLoc: TIBQuery;
    QeProdLocCODPROD: TIBStringField;
    QeProdLocFILIAL: TIBStringField;
    QeProdLocCODSUBLOCAL: TIBStringField;
    QeProdLocSALDOESTOQUE: TFloatField;
    QeProdLocDESCRICAO: TIBStringField;
    QeProdLocPADRAO: TIBStringField;
    DsProdLoc: TDataSource;
    QeProdCmpl: TIBQuery;
    QeProdCmplCODPROD: TIBStringField;
    QeProdCmplCOMPLEMENTO: TMemoField;
    QeProdCmplFOTO: TBlobField;
    QeProdCmplDIRFOTO: TIBStringField;
    QeProdCmplDIRMP3: TIBStringField;
    QeProdCmplOBSERV: TMemoField;
    DsProdCmpl: TDataSource;
    QeProdSimi: TIBQuery;
    QeProdSimiCODPROD: TIBStringField;
    QeProdSimiCODSIMI: TIBStringField;
    QeProdSimiDESCRICAO: TIBStringField;
    DsProdSimi: TDataSource;
    QeProdSald: TIBQuery;
    QeProdSaldCODPROD: TIBStringField;
    QeProdSaldFILIAL: TIBStringField;
    QeProdSaldANOMES: TIntegerField;
    QeProdSaldMODIFY: TIBStringField;
    QeProdSaldESTOQUE: TFloatField;
    QeProdSaldESTOQCORR: TFloatField;
    QeProdSaldVENDAS: TFloatField;
    QeProdSaldCOMPRAS: TFloatField;
    QeProdSaldPRODUCAOENTR: TFloatField;
    QeProdSaldPRODUCAOSAI: TFloatField;
    QeProdSaldTRANSFENTR: TFloatField;
    QeProdSaldTRANSFSAI: TFloatField;
    QeProdSaldOUTRASENTR: TFloatField;
    QeProdSaldOUTRASSAI: TFloatField;
    QeProdSaldCUSTOMEDIO: TFloatField;
    QeProdSaldPRECOMEDIO: TFloatField;
    QeProdSaldGIROMEDIO: TFloatField;
    QeProdSaldVLRORCADO: TFloatField;
    QeProdSaldQTDORCADA: TFloatField;
    QeProdSaldCOTACAO: TFloatField;
    QeProdSaldNUMCOTACOES: TIntegerField;
    QeProdSaldccMesAno: TStringField;
    QeProdSaldccSequenciaGrafico: TIntegerField;
    DsProdSald: TDataSource;
    DsProdObs: TDataSource;
    QeProdObs: TIBQuery;
    QeProdObsCODPROD: TIBStringField;
    QeProdObsFILIAL: TIBStringField;
    QeProdObsCODOBS: TIBStringField;
    QeProdObsATUALIZACAO: TIBStringField;
    QeProdImpo: TIBQuery;
    QeProdImpoCODPROD: TIBStringField;
    QeProdImpoFILIAL: TIBStringField;
    QeProdImpoIMPOSTO: TIBStringField;
    QeProdImpoALIQUOTA: TFloatField;
    QeProdImpoPRCREDUC: TFloatField;
    QeProdImpoATUALIZACAO: TIBStringField;
    QeProdImpoPRCREDUC7: TFloatField;
    QeProdImpoPRCREDUC12: TFloatField;
    QeProdImpoREDUCTIPOEMPR: TIBStringField;
    DsProdImpo: TDataSource;
    QeFormas: TIBQuery;
    DsFormas: TDataSource;
    QeFormasTIPOPGTO: TIBStringField;
    QeFormasDESCRICAO: TIBStringField;
    QeFormasTIPO: TIBStringField;
    QeFormasCLASSIFICACAO: TIBStringField;
    QeFormasATUALIZACAO: TIBStringField;
    QeGeral: TIBQuery;
    QeF2CepFaixa: TIBQuery;
    DsF2CepFaixa: TDataSource;
    QeF2Cep: TIBQuery;
    DsF2Cep: TDataSource;
    procedure QeProdFiliCalcFields(Sender : TObject);
    procedure QeProdSaldCalcFields(Sender : TObject);
    procedure QeProdUnidccVlrTabelaGetText(Sender : TObject);
    procedure QeProdUnidccVlrMilGetText(Sender : TObject);
    procedure QeProdUnidccVlrComIPIGetText(Sender : TObject);
    procedure QeProdUnidccVlrUnitGetText(Sender : TObject);
    procedure QeProdUnidccVlrUnitComIPIGetText(Sender : TObject);
    procedure QeProdUnidMARGEMGetText(Sender : TObject);
    procedure QeProdFiliccESTOQPROJETADOGetText(Sender : TObject);
    procedure QeProdFiliESTOQCORRGetText(Sender : TObject);
    procedure QeProdFiliREMESSAGetText(Sender : TObject);
    procedure QeProdFiliARECEBERGetText(Sender : TObject);
    procedure QeProdFiliAENTREGARGetText(Sender : TObject);
    procedure QeProdFiliESTOQUEATUALGetText(Sender : TObject);
    procedure QeProdUnidVLRUNITGetText(Sender : TObject);
    procedure QeProdUnidVLRCUSTOGetText(Sender : TObject);
    procedure _PROC_0064A16F(Sender : TObject);
    procedure _PROC_0064A1D9(Sender : TObject);
    procedure _PROC_0064A1FF(Sender : TObject);
    procedure _PROC_0064A22F(Sender : TObject);
    procedure _PROC_0064A246(Sender : TObject);
    procedure _PROC_0064A28B(Sender : TObject);
    procedure _PROC_0064A2B9(Sender : TObject);
    procedure _PROC_0064A32D(Sender : TObject);
    procedure _PROC_0064A5E5(Sender : TObject);
    procedure _PROC_0064A63F(Sender : TObject);
    procedure _PROC_0064A6C4(Sender : TObject);
    procedure _PROC_0064A6E6(Sender : TObject);
    procedure _PROC_0064A90C(Sender : TObject);
    procedure _PROC_0064B01C(Sender : TObject);
    procedure _PROC_0064B1C6(Sender : TObject);
    procedure _PROC_0064B259(Sender : TObject);
    procedure _PROC_0064B3E4(Sender : TObject);
    procedure _PROC_0064B495(Sender : TObject);
    procedure _PROC_0064B4C4(Sender : TObject);
    procedure _PROC_0064B4CC(Sender : TObject);
    procedure _PROC_0064B4FC(Sender : TObject);
    procedure _PROC_0064B504(Sender : TObject);
    procedure _PROC_0064B534(Sender : TObject);
    procedure _PROC_0064B53C(Sender : TObject);
    procedure _PROC_0064B56C(Sender : TObject);
    procedure _PROC_0064B574(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  Qe: TQe;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TQe.QeProdFiliCalcFields(Sender : TObject);
begin
(*
0064A740   55                     push    ebp
0064A741   8BEC                   mov     ebp, esp
0064A743   83C4E0                 add     esp, -$20
0064A746   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A74B   8B8000010000           mov     eax, [eax+$0100]
0064A751   8B10                   mov     edx, [eax]
0064A753   FF5254                 call    dword ptr [edx+$54]
0064A756   DD5DF8                 fstp    qword ptr [ebp-$08]
0064A759   9B                     wait
0064A75A   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A75F   8B8008010000           mov     eax, [eax+$0108]
0064A765   8B10                   mov     edx, [eax]
0064A767   FF5254                 call    dword ptr [edx+$54]
0064A76A   DC45F8                 fadd    qword ptr [ebp-$08]
0064A76D   DB7DEC                 fstp    tbyte ptr [ebp-$14]
0064A770   9B                     wait
0064A771   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A776   8B8004010000           mov     eax, [eax+$0104]
0064A77C   8B10                   mov     edx, [eax]
0064A77E   FF5254                 call    dword ptr [edx+$54]
0064A781   DB6DEC                 fld     tbyte ptr [ebp-$14]
0064A784   DEE1                   fsubrp  st(1), st(0)
0064A786   DB7DE0                 fstp    tbyte ptr [ebp-$20]
0064A789   9B                     wait
0064A78A   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A78F   8B800C010000           mov     eax, [eax+$010C]
0064A795   8B10                   mov     edx, [eax]
0064A797   FF5254                 call    dword ptr [edx+$54]
0064A79A   DB6DE0                 fld     tbyte ptr [ebp-$20]
0064A79D   DEC1                   faddp   st(1), st(0)
0064A79F   83C4F8                 add     esp, -$08
0064A7A2   DD1C24                 fstp    qword ptr [esp]
0064A7A5   9B                     wait
0064A7A6   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A7AB   8B8024010000           mov     eax, [eax+$0124]
0064A7B1   8B10                   mov     edx, [eax]
0064A7B3   FF92A4000000           call    dword ptr [edx+$00A4]
0064A7B9   8BE5                   mov     esp, ebp
0064A7BB   5D                     pop     ebp
0064A7BC   C3                     ret

*)
end;

procedure TQe.QeProdSaldCalcFields(Sender : TObject);
begin
(*
0064A7C0   55                     push    ebp
0064A7C1   8BEC                   mov     ebp, esp
0064A7C3   33C9                   xor     ecx, ecx
0064A7C5   51                     push    ecx
0064A7C6   51                     push    ecx
0064A7C7   51                     push    ecx
0064A7C8   51                     push    ecx
0064A7C9   51                     push    ecx
0064A7CA   51                     push    ecx
0064A7CB   51                     push    ecx
0064A7CC   53                     push    ebx
0064A7CD   56                     push    esi
0064A7CE   57                     push    edi
0064A7CF   33C0                   xor     eax, eax
0064A7D1   55                     push    ebp

* Possible String Reference to: 'È'§€ˇÎÎ_^[ãÂ]√'
|
0064A7D2   680CA96400             push    $0064A90C

***** TRY
|
0064A7D7   64FF30                 push    dword ptr fs:[eax]
0064A7DA   648920                 mov     fs:[eax], esp
0064A7DD   33C0                   xor     eax, eax
0064A7DF   55                     push    ebp
0064A7E0   68C1A86400             push    $0064A8C1

***** TRY
|
0064A7E5   64FF30                 push    dword ptr fs:[eax]
0064A7E8   648920                 mov     fs:[eax], esp
0064A7EB   8D55FC                 lea     edx, [ebp-$04]
0064A7EE   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A7F3   8B80F4010000           mov     eax, [eax+$01F4]
0064A7F9   8B08                   mov     ecx, [eax]
0064A7FB   FF5160                 call    dword ptr [ecx+$60]
0064A7FE   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0064A801   E856AFDBFF             call    0040575C
0064A806   83F806                 cmp     eax, +$06
0064A809   0F85A8000000           jnz     0064A8B7
0064A80F   8D45F4                 lea     eax, [ebp-$0C]
0064A812   50                     push    eax
0064A813   8D55F0                 lea     edx, [ebp-$10]
0064A816   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A81B   8B80F4010000           mov     eax, [eax+$01F4]
0064A821   8B08                   mov     ecx, [eax]
0064A823   FF5160                 call    dword ptr [ecx+$60]
0064A826   8B45F0                 mov     eax, [ebp-$10]
0064A829   B902000000             mov     ecx, $00000002
0064A82E   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCopy;
|
0064A833   E884B1DBFF             call    004059BC
0064A838   FF75F4                 push    dword ptr [ebp-$0C]
0064A83B   6824A96400             push    $0064A924
0064A840   8D45EC                 lea     eax, [ebp-$14]
0064A843   50                     push    eax
0064A844   8D55E8                 lea     edx, [ebp-$18]
0064A847   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A84C   8B80F4010000           mov     eax, [eax+$01F4]
0064A852   8B08                   mov     ecx, [eax]
0064A854   FF5160                 call    dword ptr [ecx+$60]
0064A857   8B45E8                 mov     eax, [ebp-$18]
0064A85A   B904000000             mov     ecx, $00000004
0064A85F   BA01000000             mov     edx, $00000001

* Reference to: System.@LStrCopy;
|
0064A864   E853B1DBFF             call    004059BC
0064A869   FF75EC                 push    dword ptr [ebp-$14]
0064A86C   8D45F8                 lea     eax, [ebp-$08]
0064A86F   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0064A874   E8A3AFDBFF             call    0040581C
0064A879   8B55F8                 mov     edx, [ebp-$08]
0064A87C   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A881   8B8040020000           mov     eax, [eax+$0240]
0064A887   8B08                   mov     ecx, [eax]
0064A889   FF91B0000000           call    dword ptr [ecx+$00B0]
0064A88F   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A894   8B80E8010000           mov     eax, [eax+$01E8]
0064A89A   8B10                   mov     edx, [eax]
0064A89C   FF9250010000           call    dword ptr [edx+$0150]
0064A8A2   8BD0                   mov     edx, eax
0064A8A4   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A8A9   8B8044020000           mov     eax, [eax+$0244]
0064A8AF   8B08                   mov     ecx, [eax]
0064A8B1   FF91A8000000           call    dword ptr [ecx+$00A8]
0064A8B7   33C0                   xor     eax, eax
0064A8B9   5A                     pop     edx
0064A8BA   59                     pop     ecx
0064A8BB   59                     pop     ecx
0064A8BC   648910                 mov     fs:[eax], edx
0064A8BF   EB30                   jmp     0064A8F1

* Reference to: System.@HandleOnException;
|
0064A8C1   E9EAA2DBFF             jmp     00404BB0
0064A8C6   0100                   add     [eax], eax
0064A8C8   0000                   add     [eax], al
0064A8CA   40                     inc     eax
0064A8CB   95                     xchg    eax, ebp
0064A8CC   40                     inc     eax
0064A8CD   00D2                   add     dl, dl
0064A8CF   A864                   test    al, $64
0064A8D1   0089C38B4B04           add     [ecx+$44B8BC3], cl
0064A8D7   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'Erro no evento OnCalcFields da Quer
|                                y QeProdSald!'
|
0064A8DA   BA30A96400             mov     edx, $0064A930

* Reference to: System.@LStrCat3;
|
0064A8DF   E8C4AEDBFF             call    004057A8
0064A8E4   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0064A8E7   E83893DFFF             call    00443C24

* Reference to: System.@DoneExcept;
|
0064A8EC   E8BFA5DBFF             call    00404EB0

****** END
|
0064A8F1   33C0                   xor     eax, eax
0064A8F3   5A                     pop     edx
0064A8F4   59                     pop     ecx
0064A8F5   59                     pop     ecx
0064A8F6   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0064A8F9   6813A96400             push    $0064A913
0064A8FE   8D45E4                 lea     eax, [ebp-$1C]
0064A901   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064A906   E8B5ABDBFF             call    004054C0
0064A90B   C3                     ret


* Reference to: System.@HandleFinally;
|
0064A90C   E927A4DBFF             jmp     00404D38
0064A911   EBEB                   jmp     0064A8FE

****** END
|
0064A913   5F                     pop     edi
0064A914   5E                     pop     esi
0064A915   5B                     pop     ebx
0064A916   8BE5                   mov     esp, ebp
0064A918   5D                     pop     ebp
0064A919   C3                     ret

*)
end;

procedure TQe.QeProdUnidccVlrTabelaGetText(Sender : TObject);
begin
(*
0064A964   55                     push    ebp
0064A965   8BEC                   mov     ebp, esp
0064A967   6A00                   push    $00
0064A969   53                     push    ebx
0064A96A   8BD9                   mov     ebx, ecx
0064A96C   33C0                   xor     eax, eax
0064A96E   55                     push    ebp
0064A96F   68D2A96400             push    $0064A9D2

***** TRY
|
0064A974   64FF30                 push    dword ptr fs:[eax]
0064A977   648920                 mov     fs:[eax], esp
0064A97A   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A97F   8B8070010000           mov     eax, [eax+$0170]
0064A985   8B10                   mov     edx, [eax]
0064A987   FF5254                 call    dword ptr [edx+$54]
0064A98A   83C4F4                 add     esp, -$0C
0064A98D   DB3C24                 fstp    tbyte ptr [esp]
0064A990   9B                     wait
0064A991   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064A996   8B00                   mov     eax, [eax]
0064A998   8B806C020000           mov     eax, [eax+$026C]
0064A99E   8B10                   mov     edx, [eax]
0064A9A0   FF5258                 call    dword ptr [edx+$58]
0064A9A3   8BD0                   mov     edx, eax
0064A9A5   8D4DFC                 lea     ecx, [ebp-$04]
0064A9A8   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064A9AD   E872691500             call    007A1324
0064A9B2   8B55FC                 mov     edx, [ebp-$04]
0064A9B5   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064A9B7   E834ABDBFF             call    004054F0
0064A9BC   33C0                   xor     eax, eax
0064A9BE   5A                     pop     edx
0064A9BF   59                     pop     ecx
0064A9C0   59                     pop     ecx
0064A9C1   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064A9C4   68D9A96400             push    $0064A9D9
0064A9C9   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064A9CC   E8CBAADBFF             call    0040549C
0064A9D1   C3                     ret


* Reference to: System.@HandleFinally;
|
0064A9D2   E961A3DBFF             jmp     00404D38
0064A9D7   EBF0                   jmp     0064A9C9

****** END
|
0064A9D9   5B                     pop     ebx
0064A9DA   59                     pop     ecx
0064A9DB   5D                     pop     ebp
0064A9DC   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdUnidccVlrMilGetText(Sender : TObject);
begin
(*
0064A9E0   55                     push    ebp
0064A9E1   8BEC                   mov     ebp, esp
0064A9E3   6A00                   push    $00
0064A9E5   53                     push    ebx
0064A9E6   8BD9                   mov     ebx, ecx
0064A9E8   33C0                   xor     eax, eax
0064A9EA   55                     push    ebp
0064A9EB   684EAA6400             push    $0064AA4E

***** TRY
|
0064A9F0   64FF30                 push    dword ptr fs:[eax]
0064A9F3   648920                 mov     fs:[eax], esp
0064A9F6   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064A9FB   8B806C010000           mov     eax, [eax+$016C]
0064AA01   8B10                   mov     edx, [eax]
0064AA03   FF5254                 call    dword ptr [edx+$54]
0064AA06   83C4F4                 add     esp, -$0C
0064AA09   DB3C24                 fstp    tbyte ptr [esp]
0064AA0C   9B                     wait
0064AA0D   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064AA12   8B00                   mov     eax, [eax]
0064AA14   8B806C020000           mov     eax, [eax+$026C]
0064AA1A   8B10                   mov     edx, [eax]
0064AA1C   FF5258                 call    dword ptr [edx+$58]
0064AA1F   8BD0                   mov     edx, eax
0064AA21   8D4DFC                 lea     ecx, [ebp-$04]
0064AA24   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AA29   E8F6681500             call    007A1324
0064AA2E   8B55FC                 mov     edx, [ebp-$04]
0064AA31   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AA33   E8B8AADBFF             call    004054F0
0064AA38   33C0                   xor     eax, eax
0064AA3A   5A                     pop     edx
0064AA3B   59                     pop     ecx
0064AA3C   59                     pop     ecx
0064AA3D   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AA40   6855AA6400             push    $0064AA55
0064AA45   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AA48   E84FAADBFF             call    0040549C
0064AA4D   C3                     ret


* Reference to: System.@HandleFinally;
|
0064AA4E   E9E5A2DBFF             jmp     00404D38
0064AA53   EBF0                   jmp     0064AA45

****** END
|
0064AA55   5B                     pop     ebx
0064AA56   59                     pop     ecx
0064AA57   5D                     pop     ebp
0064AA58   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdUnidccVlrComIPIGetText(Sender : TObject);
begin
(*
0064AA5C   55                     push    ebp
0064AA5D   8BEC                   mov     ebp, esp
0064AA5F   6A00                   push    $00
0064AA61   53                     push    ebx
0064AA62   8BD9                   mov     ebx, ecx
0064AA64   33C0                   xor     eax, eax
0064AA66   55                     push    ebp
0064AA67   68CAAA6400             push    $0064AACA

***** TRY
|
0064AA6C   64FF30                 push    dword ptr fs:[eax]
0064AA6F   648920                 mov     fs:[eax], esp
0064AA72   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AA77   8B8068010000           mov     eax, [eax+$0168]
0064AA7D   8B10                   mov     edx, [eax]
0064AA7F   FF5254                 call    dword ptr [edx+$54]
0064AA82   83C4F4                 add     esp, -$0C
0064AA85   DB3C24                 fstp    tbyte ptr [esp]
0064AA88   9B                     wait
0064AA89   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064AA8E   8B00                   mov     eax, [eax]
0064AA90   8B806C020000           mov     eax, [eax+$026C]
0064AA96   8B10                   mov     edx, [eax]
0064AA98   FF5258                 call    dword ptr [edx+$58]
0064AA9B   8BD0                   mov     edx, eax
0064AA9D   8D4DFC                 lea     ecx, [ebp-$04]
0064AAA0   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AAA5   E87A681500             call    007A1324
0064AAAA   8B55FC                 mov     edx, [ebp-$04]
0064AAAD   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AAAF   E83CAADBFF             call    004054F0
0064AAB4   33C0                   xor     eax, eax
0064AAB6   5A                     pop     edx
0064AAB7   59                     pop     ecx
0064AAB8   59                     pop     ecx
0064AAB9   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AABC   68D1AA6400             push    $0064AAD1
0064AAC1   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AAC4   E8D3A9DBFF             call    0040549C
0064AAC9   C3                     ret


* Reference to: System.@HandleFinally;
|
0064AACA   E969A2DBFF             jmp     00404D38
0064AACF   EBF0                   jmp     0064AAC1

****** END
|
0064AAD1   5B                     pop     ebx
0064AAD2   59                     pop     ecx
0064AAD3   5D                     pop     ebp
0064AAD4   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdUnidccVlrUnitGetText(Sender : TObject);
begin
(*
0064AAD8   55                     push    ebp
0064AAD9   8BEC                   mov     ebp, esp
0064AADB   6A00                   push    $00
0064AADD   53                     push    ebx
0064AADE   8BD9                   mov     ebx, ecx
0064AAE0   33C0                   xor     eax, eax
0064AAE2   55                     push    ebp
0064AAE3   6846AB6400             push    $0064AB46

***** TRY
|
0064AAE8   64FF30                 push    dword ptr fs:[eax]
0064AAEB   648920                 mov     fs:[eax], esp
0064AAEE   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AAF3   8B8064010000           mov     eax, [eax+$0164]
0064AAF9   8B10                   mov     edx, [eax]
0064AAFB   FF5254                 call    dword ptr [edx+$54]
0064AAFE   83C4F4                 add     esp, -$0C
0064AB01   DB3C24                 fstp    tbyte ptr [esp]
0064AB04   9B                     wait
0064AB05   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064AB0A   8B00                   mov     eax, [eax]
0064AB0C   8B806C020000           mov     eax, [eax+$026C]
0064AB12   8B10                   mov     edx, [eax]
0064AB14   FF5258                 call    dword ptr [edx+$58]
0064AB17   8BD0                   mov     edx, eax
0064AB19   8D4DFC                 lea     ecx, [ebp-$04]
0064AB1C   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AB21   E8FE671500             call    007A1324
0064AB26   8B55FC                 mov     edx, [ebp-$04]
0064AB29   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AB2B   E8C0A9DBFF             call    004054F0
0064AB30   33C0                   xor     eax, eax
0064AB32   5A                     pop     edx
0064AB33   59                     pop     ecx
0064AB34   59                     pop     ecx
0064AB35   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AB38   684DAB6400             push    $0064AB4D
0064AB3D   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AB40   E857A9DBFF             call    0040549C
0064AB45   C3                     ret


* Reference to: System.@HandleFinally;
|
0064AB46   E9EDA1DBFF             jmp     00404D38
0064AB4B   EBF0                   jmp     0064AB3D

****** END
|
0064AB4D   5B                     pop     ebx
0064AB4E   59                     pop     ecx
0064AB4F   5D                     pop     ebp
0064AB50   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdUnidccVlrUnitComIPIGetText(Sender : TObject);
begin
(*
0064AB54   55                     push    ebp
0064AB55   8BEC                   mov     ebp, esp
0064AB57   6A00                   push    $00
0064AB59   53                     push    ebx
0064AB5A   8BD9                   mov     ebx, ecx
0064AB5C   33C0                   xor     eax, eax
0064AB5E   55                     push    ebp
0064AB5F   68C2AB6400             push    $0064ABC2

***** TRY
|
0064AB64   64FF30                 push    dword ptr fs:[eax]
0064AB67   648920                 mov     fs:[eax], esp
0064AB6A   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AB6F   8B8060010000           mov     eax, [eax+$0160]
0064AB75   8B10                   mov     edx, [eax]
0064AB77   FF5254                 call    dword ptr [edx+$54]
0064AB7A   83C4F4                 add     esp, -$0C
0064AB7D   DB3C24                 fstp    tbyte ptr [esp]
0064AB80   9B                     wait
0064AB81   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064AB86   8B00                   mov     eax, [eax]
0064AB88   8B806C020000           mov     eax, [eax+$026C]
0064AB8E   8B10                   mov     edx, [eax]
0064AB90   FF5258                 call    dword ptr [edx+$58]
0064AB93   8BD0                   mov     edx, eax
0064AB95   8D4DFC                 lea     ecx, [ebp-$04]
0064AB98   B80C000000             mov     eax, $0000000C

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AB9D   E882671500             call    007A1324
0064ABA2   8B55FC                 mov     edx, [ebp-$04]
0064ABA5   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064ABA7   E844A9DBFF             call    004054F0
0064ABAC   33C0                   xor     eax, eax
0064ABAE   5A                     pop     edx
0064ABAF   59                     pop     ecx
0064ABB0   59                     pop     ecx
0064ABB1   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064ABB4   68C9AB6400             push    $0064ABC9
0064ABB9   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064ABBC   E8DBA8DBFF             call    0040549C
0064ABC1   C3                     ret


* Reference to: System.@HandleFinally;
|
0064ABC2   E971A1DBFF             jmp     00404D38
0064ABC7   EBF0                   jmp     0064ABB9

****** END
|
0064ABC9   5B                     pop     ebx
0064ABCA   59                     pop     ecx
0064ABCB   5D                     pop     ebp
0064ABCC   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdUnidMARGEMGetText(Sender : TObject);
begin
(*
0064ABD0   55                     push    ebp
0064ABD1   8BEC                   mov     ebp, esp
0064ABD3   6A00                   push    $00
0064ABD5   53                     push    ebx
0064ABD6   8BD9                   mov     ebx, ecx
0064ABD8   33C0                   xor     eax, eax
0064ABDA   55                     push    ebp
0064ABDB   682FAC6400             push    $0064AC2F

***** TRY
|
0064ABE0   64FF30                 push    dword ptr fs:[eax]
0064ABE3   648920                 mov     fs:[eax], esp
0064ABE6   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064ABEB   8B8054010000           mov     eax, [eax+$0154]
0064ABF1   8B10                   mov     edx, [eax]
0064ABF3   FF5254                 call    dword ptr [edx+$54]
0064ABF6   83C4F4                 add     esp, -$0C
0064ABF9   DB3C24                 fstp    tbyte ptr [esp]
0064ABFC   9B                     wait
0064ABFD   8D4DFC                 lea     ecx, [ebp-$04]
0064AC00   BA05000000             mov     edx, $00000005
0064AC05   B80D000000             mov     eax, $0000000D

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AC0A   E815671500             call    007A1324
0064AC0F   8B55FC                 mov     edx, [ebp-$04]
0064AC12   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AC14   E8D7A8DBFF             call    004054F0
0064AC19   33C0                   xor     eax, eax
0064AC1B   5A                     pop     edx
0064AC1C   59                     pop     ecx
0064AC1D   59                     pop     ecx
0064AC1E   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AC21   6836AC6400             push    $0064AC36
0064AC26   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AC29   E86EA8DBFF             call    0040549C
0064AC2E   C3                     ret


* Reference to: System.@HandleFinally;
|
0064AC2F   E904A1DBFF             jmp     00404D38
0064AC34   EBF0                   jmp     0064AC26

****** END
|
0064AC36   5B                     pop     ebx
0064AC37   59                     pop     ecx
0064AC38   5D                     pop     ebp
0064AC39   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdFiliccESTOQPROJETADOGetText(Sender : TObject);
begin
(*
0064AC3C   55                     push    ebp
0064AC3D   8BEC                   mov     ebp, esp
0064AC3F   6A00                   push    $00
0064AC41   53                     push    ebx
0064AC42   8BD9                   mov     ebx, ecx
0064AC44   33C0                   xor     eax, eax
0064AC46   55                     push    ebp
0064AC47   68AAAC6400             push    $0064ACAA

***** TRY
|
0064AC4C   64FF30                 push    dword ptr fs:[eax]
0064AC4F   648920                 mov     fs:[eax], esp
0064AC52   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AC57   8B8024010000           mov     eax, [eax+$0124]
0064AC5D   8B10                   mov     edx, [eax]
0064AC5F   FF5254                 call    dword ptr [edx+$54]
0064AC62   83C4F4                 add     esp, -$0C
0064AC65   DB3C24                 fstp    tbyte ptr [esp]
0064AC68   9B                     wait
0064AC69   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064AC6E   8B00                   mov     eax, [eax]
0064AC70   8B8068020000           mov     eax, [eax+$0268]
0064AC76   8B10                   mov     edx, [eax]
0064AC78   FF5258                 call    dword ptr [edx+$58]
0064AC7B   8BD0                   mov     edx, eax
0064AC7D   8D4DFC                 lea     ecx, [ebp-$04]
0064AC80   B80D000000             mov     eax, $0000000D

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AC85   E89A661500             call    007A1324
0064AC8A   8B55FC                 mov     edx, [ebp-$04]
0064AC8D   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AC8F   E85CA8DBFF             call    004054F0
0064AC94   33C0                   xor     eax, eax
0064AC96   5A                     pop     edx
0064AC97   59                     pop     ecx
0064AC98   59                     pop     ecx
0064AC99   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AC9C   68B1AC6400             push    $0064ACB1
0064ACA1   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064ACA4   E8F3A7DBFF             call    0040549C
0064ACA9   C3                     ret


* Reference to: System.@HandleFinally;
|
0064ACAA   E989A0DBFF             jmp     00404D38
0064ACAF   EBF0                   jmp     0064ACA1

****** END
|
0064ACB1   5B                     pop     ebx
0064ACB2   59                     pop     ecx
0064ACB3   5D                     pop     ebp
0064ACB4   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdFiliESTOQCORRGetText(Sender : TObject);
begin
(*
0064ACB8   55                     push    ebp
0064ACB9   8BEC                   mov     ebp, esp
0064ACBB   6A00                   push    $00
0064ACBD   53                     push    ebx
0064ACBE   8BD9                   mov     ebx, ecx
0064ACC0   33C0                   xor     eax, eax
0064ACC2   55                     push    ebp
0064ACC3   6826AD6400             push    $0064AD26

***** TRY
|
0064ACC8   64FF30                 push    dword ptr fs:[eax]
0064ACCB   648920                 mov     fs:[eax], esp
0064ACCE   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064ACD3   8B8020010000           mov     eax, [eax+$0120]
0064ACD9   8B10                   mov     edx, [eax]
0064ACDB   FF5254                 call    dword ptr [edx+$54]
0064ACDE   83C4F4                 add     esp, -$0C
0064ACE1   DB3C24                 fstp    tbyte ptr [esp]
0064ACE4   9B                     wait
0064ACE5   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064ACEA   8B00                   mov     eax, [eax]
0064ACEC   8B8068020000           mov     eax, [eax+$0268]
0064ACF2   8B10                   mov     edx, [eax]
0064ACF4   FF5258                 call    dword ptr [edx+$58]
0064ACF7   8BD0                   mov     edx, eax
0064ACF9   8D4DFC                 lea     ecx, [ebp-$04]
0064ACFC   B80D000000             mov     eax, $0000000D

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AD01   E81E661500             call    007A1324
0064AD06   8B55FC                 mov     edx, [ebp-$04]
0064AD09   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AD0B   E8E0A7DBFF             call    004054F0
0064AD10   33C0                   xor     eax, eax
0064AD12   5A                     pop     edx
0064AD13   59                     pop     ecx
0064AD14   59                     pop     ecx
0064AD15   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AD18   682DAD6400             push    $0064AD2D
0064AD1D   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AD20   E877A7DBFF             call    0040549C
0064AD25   C3                     ret


* Reference to: System.@HandleFinally;
|
0064AD26   E90DA0DBFF             jmp     00404D38
0064AD2B   EBF0                   jmp     0064AD1D

****** END
|
0064AD2D   5B                     pop     ebx
0064AD2E   59                     pop     ecx
0064AD2F   5D                     pop     ebp
0064AD30   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdFiliREMESSAGetText(Sender : TObject);
begin
(*
0064AD34   55                     push    ebp
0064AD35   8BEC                   mov     ebp, esp
0064AD37   6A00                   push    $00
0064AD39   53                     push    ebx
0064AD3A   8BD9                   mov     ebx, ecx
0064AD3C   33C0                   xor     eax, eax
0064AD3E   55                     push    ebp
0064AD3F   68A2AD6400             push    $0064ADA2

***** TRY
|
0064AD44   64FF30                 push    dword ptr fs:[eax]
0064AD47   648920                 mov     fs:[eax], esp
0064AD4A   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AD4F   8B800C010000           mov     eax, [eax+$010C]
0064AD55   8B10                   mov     edx, [eax]
0064AD57   FF5254                 call    dword ptr [edx+$54]
0064AD5A   83C4F4                 add     esp, -$0C
0064AD5D   DB3C24                 fstp    tbyte ptr [esp]
0064AD60   9B                     wait
0064AD61   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064AD66   8B00                   mov     eax, [eax]
0064AD68   8B8068020000           mov     eax, [eax+$0268]
0064AD6E   8B10                   mov     edx, [eax]
0064AD70   FF5258                 call    dword ptr [edx+$58]
0064AD73   8BD0                   mov     edx, eax
0064AD75   8D4DFC                 lea     ecx, [ebp-$04]
0064AD78   B80D000000             mov     eax, $0000000D

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AD7D   E8A2651500             call    007A1324
0064AD82   8B55FC                 mov     edx, [ebp-$04]
0064AD85   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AD87   E864A7DBFF             call    004054F0
0064AD8C   33C0                   xor     eax, eax
0064AD8E   5A                     pop     edx
0064AD8F   59                     pop     ecx
0064AD90   59                     pop     ecx
0064AD91   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AD94   68A9AD6400             push    $0064ADA9
0064AD99   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AD9C   E8FBA6DBFF             call    0040549C
0064ADA1   C3                     ret


* Reference to: System.@HandleFinally;
|
0064ADA2   E9919FDBFF             jmp     00404D38
0064ADA7   EBF0                   jmp     0064AD99

****** END
|
0064ADA9   5B                     pop     ebx
0064ADAA   59                     pop     ecx
0064ADAB   5D                     pop     ebp
0064ADAC   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdFiliARECEBERGetText(Sender : TObject);
begin
(*
0064ADB0   55                     push    ebp
0064ADB1   8BEC                   mov     ebp, esp
0064ADB3   6A00                   push    $00
0064ADB5   53                     push    ebx
0064ADB6   8BD9                   mov     ebx, ecx
0064ADB8   33C0                   xor     eax, eax
0064ADBA   55                     push    ebp
0064ADBB   681EAE6400             push    $0064AE1E

***** TRY
|
0064ADC0   64FF30                 push    dword ptr fs:[eax]
0064ADC3   648920                 mov     fs:[eax], esp
0064ADC6   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064ADCB   8B8008010000           mov     eax, [eax+$0108]
0064ADD1   8B10                   mov     edx, [eax]
0064ADD3   FF5254                 call    dword ptr [edx+$54]
0064ADD6   83C4F4                 add     esp, -$0C
0064ADD9   DB3C24                 fstp    tbyte ptr [esp]
0064ADDC   9B                     wait
0064ADDD   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064ADE2   8B00                   mov     eax, [eax]
0064ADE4   8B8068020000           mov     eax, [eax+$0268]
0064ADEA   8B10                   mov     edx, [eax]
0064ADEC   FF5258                 call    dword ptr [edx+$58]
0064ADEF   8BD0                   mov     edx, eax
0064ADF1   8D4DFC                 lea     ecx, [ebp-$04]
0064ADF4   B80D000000             mov     eax, $0000000D

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064ADF9   E826651500             call    007A1324
0064ADFE   8B55FC                 mov     edx, [ebp-$04]
0064AE01   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AE03   E8E8A6DBFF             call    004054F0
0064AE08   33C0                   xor     eax, eax
0064AE0A   5A                     pop     edx
0064AE0B   59                     pop     ecx
0064AE0C   59                     pop     ecx
0064AE0D   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AE10   6825AE6400             push    $0064AE25
0064AE15   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AE18   E87FA6DBFF             call    0040549C
0064AE1D   C3                     ret


* Reference to: System.@HandleFinally;
|
0064AE1E   E9159FDBFF             jmp     00404D38
0064AE23   EBF0                   jmp     0064AE15

****** END
|
0064AE25   5B                     pop     ebx
0064AE26   59                     pop     ecx
0064AE27   5D                     pop     ebp
0064AE28   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdFiliAENTREGARGetText(Sender : TObject);
begin
(*
0064AE2C   55                     push    ebp
0064AE2D   8BEC                   mov     ebp, esp
0064AE2F   6A00                   push    $00
0064AE31   53                     push    ebx
0064AE32   8BD9                   mov     ebx, ecx
0064AE34   33C0                   xor     eax, eax
0064AE36   55                     push    ebp
0064AE37   689AAE6400             push    $0064AE9A

***** TRY
|
0064AE3C   64FF30                 push    dword ptr fs:[eax]
0064AE3F   648920                 mov     fs:[eax], esp
0064AE42   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AE47   8B8004010000           mov     eax, [eax+$0104]
0064AE4D   8B10                   mov     edx, [eax]
0064AE4F   FF5254                 call    dword ptr [edx+$54]
0064AE52   83C4F4                 add     esp, -$0C
0064AE55   DB3C24                 fstp    tbyte ptr [esp]
0064AE58   9B                     wait
0064AE59   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064AE5E   8B00                   mov     eax, [eax]
0064AE60   8B8068020000           mov     eax, [eax+$0268]
0064AE66   8B10                   mov     edx, [eax]
0064AE68   FF5258                 call    dword ptr [edx+$58]
0064AE6B   8BD0                   mov     edx, eax
0064AE6D   8D4DFC                 lea     ecx, [ebp-$04]
0064AE70   B80D000000             mov     eax, $0000000D

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AE75   E8AA641500             call    007A1324
0064AE7A   8B55FC                 mov     edx, [ebp-$04]
0064AE7D   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AE7F   E86CA6DBFF             call    004054F0
0064AE84   33C0                   xor     eax, eax
0064AE86   5A                     pop     edx
0064AE87   59                     pop     ecx
0064AE88   59                     pop     ecx
0064AE89   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AE8C   68A1AE6400             push    $0064AEA1
0064AE91   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AE94   E803A6DBFF             call    0040549C
0064AE99   C3                     ret


* Reference to: System.@HandleFinally;
|
0064AE9A   E9999EDBFF             jmp     00404D38
0064AE9F   EBF0                   jmp     0064AE91

****** END
|
0064AEA1   5B                     pop     ebx
0064AEA2   59                     pop     ecx
0064AEA3   5D                     pop     ebp
0064AEA4   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdFiliESTOQUEATUALGetText(Sender : TObject);
begin
(*
0064AEA8   55                     push    ebp
0064AEA9   8BEC                   mov     ebp, esp
0064AEAB   6A00                   push    $00
0064AEAD   53                     push    ebx
0064AEAE   8BD9                   mov     ebx, ecx
0064AEB0   33C0                   xor     eax, eax
0064AEB2   55                     push    ebp
0064AEB3   6816AF6400             push    $0064AF16

***** TRY
|
0064AEB8   64FF30                 push    dword ptr fs:[eax]
0064AEBB   648920                 mov     fs:[eax], esp
0064AEBE   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AEC3   8B8000010000           mov     eax, [eax+$0100]
0064AEC9   8B10                   mov     edx, [eax]
0064AECB   FF5254                 call    dword ptr [edx+$54]
0064AECE   83C4F4                 add     esp, -$0C
0064AED1   DB3C24                 fstp    tbyte ptr [esp]
0064AED4   9B                     wait
0064AED5   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064AEDA   8B00                   mov     eax, [eax]
0064AEDC   8B8068020000           mov     eax, [eax+$0268]
0064AEE2   8B10                   mov     edx, [eax]
0064AEE4   FF5258                 call    dword ptr [edx+$58]
0064AEE7   8BD0                   mov     edx, eax
0064AEE9   8D4DFC                 lea     ecx, [ebp-$04]
0064AEEC   B80D000000             mov     eax, $0000000D

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AEF1   E82E641500             call    007A1324
0064AEF6   8B55FC                 mov     edx, [ebp-$04]
0064AEF9   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AEFB   E8F0A5DBFF             call    004054F0
0064AF00   33C0                   xor     eax, eax
0064AF02   5A                     pop     edx
0064AF03   59                     pop     ecx
0064AF04   59                     pop     ecx
0064AF05   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AF08   681DAF6400             push    $0064AF1D
0064AF0D   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AF10   E887A5DBFF             call    0040549C
0064AF15   C3                     ret


* Reference to: System.@HandleFinally;
|
0064AF16   E91D9EDBFF             jmp     00404D38
0064AF1B   EBF0                   jmp     0064AF0D

****** END
|
0064AF1D   5B                     pop     ebx
0064AF1E   59                     pop     ecx
0064AF1F   5D                     pop     ebp
0064AF20   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdUnidVLRUNITGetText(Sender : TObject);
begin
(*
0064AF24   55                     push    ebp
0064AF25   8BEC                   mov     ebp, esp
0064AF27   6A00                   push    $00
0064AF29   53                     push    ebx
0064AF2A   8BD9                   mov     ebx, ecx
0064AF2C   33C0                   xor     eax, eax
0064AF2E   55                     push    ebp
0064AF2F   6892AF6400             push    $0064AF92

***** TRY
|
0064AF34   64FF30                 push    dword ptr fs:[eax]
0064AF37   648920                 mov     fs:[eax], esp
0064AF3A   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AF3F   8B8048010000           mov     eax, [eax+$0148]
0064AF45   8B10                   mov     edx, [eax]
0064AF47   FF5254                 call    dword ptr [edx+$54]
0064AF4A   83C4F4                 add     esp, -$0C
0064AF4D   DB3C24                 fstp    tbyte ptr [esp]
0064AF50   9B                     wait
0064AF51   A18CA97D00             mov     eax, dword ptr [$007DA98C]
0064AF56   8B00                   mov     eax, [eax]
0064AF58   8B8040060000           mov     eax, [eax+$0640]
0064AF5E   8B10                   mov     edx, [eax]
0064AF60   FF5258                 call    dword ptr [edx+$58]
0064AF63   8BD0                   mov     edx, eax
0064AF65   8D4DFC                 lea     ecx, [ebp-$04]
0064AF68   B80D000000             mov     eax, $0000000D

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AF6D   E8B2631500             call    007A1324
0064AF72   8B55FC                 mov     edx, [ebp-$04]
0064AF75   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AF77   E874A5DBFF             call    004054F0
0064AF7C   33C0                   xor     eax, eax
0064AF7E   5A                     pop     edx
0064AF7F   59                     pop     ecx
0064AF80   59                     pop     ecx
0064AF81   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AF84   6899AF6400             push    $0064AF99
0064AF89   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064AF8C   E80BA5DBFF             call    0040549C
0064AF91   C3                     ret


* Reference to: System.@HandleFinally;
|
0064AF92   E9A19DDBFF             jmp     00404D38
0064AF97   EBF0                   jmp     0064AF89

****** END
|
0064AF99   5B                     pop     ebx
0064AF9A   59                     pop     ecx
0064AF9B   5D                     pop     ebp
0064AF9C   C20400                 ret     $0004

*)
end;

procedure TQe.QeProdUnidVLRCUSTOGetText(Sender : TObject);
begin
(*
0064AFA0   55                     push    ebp
0064AFA1   8BEC                   mov     ebp, esp
0064AFA3   6A00                   push    $00
0064AFA5   53                     push    ebx
0064AFA6   8BD9                   mov     ebx, ecx
0064AFA8   33C0                   xor     eax, eax
0064AFAA   55                     push    ebp
0064AFAB   680CB06400             push    $0064B00C

***** TRY
|
0064AFB0   64FF30                 push    dword ptr fs:[eax]
0064AFB3   648920                 mov     fs:[eax], esp
0064AFB6   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AFBB   8B804C010000           mov     eax, [eax+$014C]
0064AFC1   8B10                   mov     edx, [eax]
0064AFC3   FF5254                 call    dword ptr [edx+$54]
0064AFC6   83C4F4                 add     esp, -$0C
0064AFC9   DB3C24                 fstp    tbyte ptr [esp]
0064AFCC   9B                     wait
0064AFCD   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064AFD2   8B80D0000000           mov     eax, [eax+$00D0]
0064AFD8   8B10                   mov     edx, [eax]
0064AFDA   FF5258                 call    dword ptr [edx+$58]
0064AFDD   8BD0                   mov     edx, eax
0064AFDF   8D4DFC                 lea     ecx, [ebp-$04]
0064AFE2   B80D000000             mov     eax, $0000000D

* Reference to : TFrmInfoAtu._PROC_007A1324()
|
0064AFE7   E838631500             call    007A1324
0064AFEC   8B55FC                 mov     edx, [ebp-$04]
0064AFEF   8BC3                   mov     eax, ebx

* Reference to: System.@LStrAsg(void;void;void;void);
|
0064AFF1   E8FAA4DBFF             call    004054F0
0064AFF6   33C0                   xor     eax, eax
0064AFF8   5A                     pop     edx
0064AFF9   59                     pop     ecx
0064AFFA   59                     pop     ecx
0064AFFB   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064AFFE   6813B06400             push    $0064B013
0064B003   8D45FC                 lea     eax, [ebp-$04]

* Reference to: System.@LStrClr(void;void);
|
0064B006   E891A4DBFF             call    0040549C
0064B00B   C3                     ret


* Reference to: System.@HandleFinally;
|
0064B00C   E9279DDBFF             jmp     00404D38
0064B011   EBF0                   jmp     0064B003

****** END
|
0064B013   5B                     pop     ebx
0064B014   59                     pop     ecx
0064B015   5D                     pop     ebp
0064B016   C20400                 ret     $0004

*)
end;

procedure TQe._PROC_0064A16F(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064A16F   E9C4ABDBFF             jmp     00404D38

|
0064A174   EBDE                   jmp     0064A154
0064A176   8A45F7                 mov     al, byte ptr [ebp-$09]
0064A179   5F                     pop     edi
0064A17A   5E                     pop     esi
0064A17B   5B                     pop     ebx
0064A17C   8BE5                   mov     esp, ebp
0064A17E   5D                     pop     ebp
0064A17F   C3                     ret

*)
end;

procedure TQe._PROC_0064A1D9(Sender : TObject);
begin
(*
0064A1D9   42                     inc     edx
0064A1DA   4C                     dec     esp
0064A1DB   4F                     dec     edi
0064A1DC   43                     inc     ebx
0064A1DD   41                     inc     ecx
0064A1DE   4C                     dec     esp
0064A1DF   2C00                   sub     al, $00
0064A1E1   0000                   add     [eax], al

*)
end;

procedure TQe._PROC_0064A1FF(Sender : TObject);
begin
(*
0064A1FF   45                     inc     ebp
0064A200   2C00                   sub     al, $00
0064A202   0000                   add     [eax], al

*)
end;

procedure TQe._PROC_0064A22F(Sender : TObject);
begin
(*
0064A22F   41                     inc     ecx
0064A230   4C                     dec     esp
0064A231   49                     dec     ecx
0064A232   5A                     pop     edx
0064A233   41                     inc     ecx
0064A234   43                     inc     ebx
0064A235   41                     inc     ecx
0064A236   4F                     dec     edi
0064A237   2C00                   sub     al, $00
0064A239   0000                   add     [eax], al

*)
end;

procedure TQe._PROC_0064A246(Sender : TObject);
begin
(*
0064A246   42                     inc     edx
0064A247   4C                     dec     esp
0064A248   4F                     dec     edi
0064A249   43                     inc     ebx
0064A24A   41                     inc     ecx
0064A24B   4C                     dec     esp
0064A24C   2E44                   inc     esp
0064A24E   45                     inc     ebp
0064A24F   53                     push    ebx
0064A250   43                     inc     ebx
0064A251   52                     push    edx
0064A252   49                     dec     ecx
0064A253   43                     inc     ebx
0064A254   41                     inc     ecx
0064A255   4F                     dec     edi
0064A256   204C4B53               and     [ebx+ecx*2+$53], cl
0064A25A   55                     push    ebp
0064A25B   42                     inc     edx
0064A25C   4C                     dec     esp
0064A25D   4F                     dec     edi
0064A25E   43                     inc     ebx
0064A25F   41                     inc     ecx
0064A260   4C                     dec     esp
0064A261   0000                   add     [eax], al

*)
end;

procedure TQe._PROC_0064A28B(Sender : TObject);
begin
(*
0064A28B   54                     push    esp
0064A28C   45                     inc     ebp
0064A28D   52                     push    edx
0064A28E   204A4F                 and     [edx+$4F], cl
0064A291   49                     dec     ecx
0064A292   4E                     dec     esi
0064A293   205355                 and     [ebx+$55], dl
0064A296   42                     inc     edx
0064A297   4C                     dec     esp
0064A298   4F                     dec     edi
0064A299   43                     inc     ebx
0064A29A   41                     inc     ecx
0064A29B   4C                     dec     esp
0064A29C   2000                   and     [eax], al
0064A29E   0000                   add     [eax], al

*)
end;

procedure TQe._PROC_0064A2B9(Sender : TObject);
begin
(*
0064A2B9   42                     inc     edx
0064A2BA   4C                     dec     esp
0064A2BB   4F                     dec     edi
0064A2BC   43                     inc     ebx
0064A2BD   41                     inc     ecx
0064A2BE   4C                     dec     esp
0064A2BF   203D20535542           and     [$42555320], bh
0064A2C5   4C                     dec     esp
0064A2C6   4F                     dec     edi
0064A2C7   43                     inc     ebx
0064A2C8   41                     inc     ecx
0064A2C9   4C                     dec     esp
0064A2CA   2E43                   inc     ebx
0064A2CC   4F                     dec     edi
0064A2CD   44                     inc     esp
0064A2CE   53                     push    ebx
0064A2CF   55                     push    ebp
0064A2D0   42                     inc     edx
0064A2D1   4C                     dec     esp
0064A2D2   4F                     dec     edi
0064A2D3   43                     inc     ebx
0064A2D4   41                     inc     ecx
0064A2D5   4C                     dec     esp
0064A2D6   2900                   sub     dword ptr [eax], eax
0064A2D8   FFFF                   DB  $FF, $FF  //      
0064A2DA   FFFF                   DB  $FF, $FF  //      
0064A2DC   07                     pop     es
0064A2DD   0000                   add     [eax], al

*)
end;

procedure TQe._PROC_0064A32D(Sender : TObject);
begin
(*
0064A32D   8BEC                   mov     ebp, esp
0064A32F   6A00                   push    $00
0064A331   6A00                   push    $00
0064A333   6A00                   push    $00
0064A335   6A00                   push    $00
0064A337   6A00                   push    $00
0064A339   6A00                   push    $00
0064A33B   6A00                   push    $00
0064A33D   6A00                   push    $00
0064A33F   53                     push    ebx
0064A340   56                     push    esi
0064A341   57                     push    edi
0064A342   894DF8                 mov     [ebp-$08], ecx
0064A345   8955FC                 mov     [ebp-$04], edx
0064A348   8BD8                   mov     ebx, eax
0064A34A   8B7D08                 mov     edi, [ebp+$08]
0064A34D   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064A350   E8F7B5DBFF             call    0040594C
0064A355   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064A358   E8EFB5DBFF             call    0040594C
0064A35D   33C0                   xor     eax, eax
0064A35F   55                     push    ebp
0064A360   68E5A56400             push    $0064A5E5

***** TRY
|
0064A365   64FF30                 push    dword ptr fs:[eax]
0064A368   648920                 mov     fs:[eax], esp
0064A36B   C645F700               mov     byte ptr [ebp-$09], $00
0064A36F   837DFC00               cmp     dword ptr [ebp-$04], +$00
0064A373   751F                   jnz     0064A394
0064A375   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0064A37A   8B00                   mov     eax, [eax]
0064A37C   8B80AC010000           mov     eax, [eax+$01AC]

* Possible String Reference to: 'F11Foco'
|
0064A382   BA00A66400             mov     edx, $0064A600

* Reference to: DB.TDataSet.FieldByName(TDataSet;AnsiString):TField;
|
0064A387   E878F8E9FF             call    004E9C04
0064A38C   8D55FC                 lea     edx, [ebp-$04]
0064A38F   8B08                   mov     ecx, [eax]
0064A391   FF5160                 call    dword ptr [ecx+$60]

* Reference to control TQe.QeProdutos : TIBQuery
|
0064A394   8B83A0000000           mov     eax, [ebx+$00A0]

* Reference to: DB.TDataSet.Close(TDataSet);
|
0064A39A   E8C1E5E9FF             call    004E8960

* Reference to control TQe.QeProdutos : TIBQuery
|
0064A39F   8B83A0000000           mov     eax, [ebx+$00A0]

* Reference to field TIBQuery.OFFS_0250
|
0064A3A5   8BB050020000           mov     esi, [eax+$0250]
0064A3AB   8BC6                   mov     eax, esi
0064A3AD   8B10                   mov     edx, [eax]
0064A3AF   FF5244                 call    dword ptr [edx+$44]

* Possible String Reference to: 'SELECT'
|
0064A3B2   BA10A66400             mov     edx, $0064A610
0064A3B7   8BC6                   mov     eax, esi
0064A3B9   8B08                   mov     ecx, [eax]
0064A3BB   FF5138                 call    dword ptr [ecx+$38]
0064A3BE   85FF                   test    edi, edi
0064A3C0   7E24                   jle     0064A3E6
0064A3C2   8D55EC                 lea     edx, [ebp-$14]
0064A3C5   8BC7                   mov     eax, edi

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
0064A3C7   E89809DCFF             call    0040AD64
0064A3CC   8B4DEC                 mov     ecx, [ebp-$14]
0064A3CF   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'FIRST '
|
0064A3D2   BA20A66400             mov     edx, $0064A620

* Reference to: System.@LStrCat3;
|
0064A3D7   E8CCB3DBFF             call    004057A8
0064A3DC   8B55F0                 mov     edx, [ebp-$10]
0064A3DF   8BC6                   mov     eax, esi
0064A3E1   8B08                   mov     ecx, [eax]
0064A3E3   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'CODPROD, CODGRUPO, GRUPO, DESCRICAO
|                                , CODBARRA, MODELO, MODELO2,'
|
0064A3E6   BA30A66400             mov     edx, $0064A630
0064A3EB   8BC6                   mov     eax, esi
0064A3ED   8B08                   mov     ecx, [eax]
0064A3EF   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'CODSETOR, CODMARCA, MARCA, DECIQTDE
|                                , DECIVLR, TIPO, CLASSFISC, SITTRIB
|                                , VLRUNIT, ALIQIPI'
|
0064A3F2   BA78A66400             mov     edx, $0064A678
0064A3F7   8BC6                   mov     eax, esi
0064A3F9   8B08                   mov     ecx, [eax]
0064A3FB   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'FROM PRODUTOS'
|
0064A3FE   BADCA66400             mov     edx, $0064A6DC
0064A403   8BC6                   mov     eax, esi
0064A405   8B08                   mov     ecx, [eax]
0064A407   FF5138                 call    dword ptr [ecx+$38]
0064A40A   837DF800               cmp     dword ptr [ebp-$08], +$00
0064A40E   741A                   jz      0064A42A
0064A410   8D45E8                 lea     eax, [ebp-$18]
0064A413   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: 'WHERE '
|
0064A416   BAF4A66400             mov     edx, $0064A6F4

* Reference to: System.@LStrCat3;
|
0064A41B   E888B3DBFF             call    004057A8
0064A420   8B55E8                 mov     edx, [ebp-$18]
0064A423   8BC6                   mov     eax, esi
0064A425   8B08                   mov     ecx, [eax]
0064A427   FF5138                 call    dword ptr [ecx+$38]
0064A42A   837DFC00               cmp     dword ptr [ebp-$04], +$00
0064A42E   741A                   jz      0064A44A
0064A430   8D45E4                 lea     eax, [ebp-$1C]
0064A433   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: 'ORDER BY '
|
0064A436   BA04A76400             mov     edx, $0064A704

* Reference to: System.@LStrCat3;
|
0064A43B   E868B3DBFF             call    004057A8
0064A440   8B55E4                 mov     edx, [ebp-$1C]
0064A443   8BC6                   mov     eax, esi
0064A445   8B08                   mov     ecx, [eax]
0064A447   FF5138                 call    dword ptr [ecx+$38]
0064A44A   A168B67D00             mov     eax, dword ptr [$007DB668]
0064A44F   8B00                   mov     eax, [eax]
0064A451   66BAEFFF               mov     dx, $FFEF

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0064A455   E8D298E6FF             call    004B3D2C
0064A45A   33C0                   xor     eax, eax
0064A45C   55                     push    ebp
0064A45D   68B6A56400             push    $0064A5B6

***** TRY
|
0064A462   64FF30                 push    dword ptr fs:[eax]
0064A465   648920                 mov     fs:[eax], esp
0064A468   33C0                   xor     eax, eax
0064A46A   55                     push    ebp
0064A46B   685FA56400             push    $0064A55F

***** TRY
|
0064A470   64FF30                 push    dword ptr fs:[eax]
0064A473   648920                 mov     fs:[eax], esp

* Reference to control TQe.QeProdutos : TIBQuery
|
0064A476   8B83A0000000           mov     eax, [ebx+$00A0]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A47C   E8D3E4E9FF             call    004E8954

* Reference to control TQe.QeProdCmpl : TIBQuery
|
0064A481   8B83B4010000           mov     eax, [ebx+$01B4]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
0064A487   E814E6E9FF             call    004E8AA0
0064A48C   84C0                   test    al, al
0064A48E   750B                   jnz     0064A49B

* Reference to control TQe.QeProdCmpl : TIBQuery
|
0064A490   8B83B4010000           mov     eax, [ebx+$01B4]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A496   E8B9E4E9FF             call    004E8954

* Reference to control TQe.QeProdFili : TIBQuery
|
0064A49B   8B83F4000000           mov     eax, [ebx+$00F4]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
0064A4A1   E8FAE5E9FF             call    004E8AA0
0064A4A6   84C0                   test    al, al
0064A4A8   750B                   jnz     0064A4B5

* Reference to control TQe.QeProdFili : TIBQuery
|
0064A4AA   8B83F4000000           mov     eax, [ebx+$00F4]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A4B0   E89FE4E9FF             call    004E8954

* Reference to control TQe.QeProdUnid : TIBQuery
|
0064A4B5   8B832C010000           mov     eax, [ebx+$012C]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
0064A4BB   E8E0E5E9FF             call    004E8AA0
0064A4C0   84C0                   test    al, al
0064A4C2   750B                   jnz     0064A4CF

* Reference to control TQe.QeProdUnid : TIBQuery
|
0064A4C4   8B832C010000           mov     eax, [ebx+$012C]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A4CA   E885E4E9FF             call    004E8954

* Reference to control TQe.QeProdSald : TIBQuery
|
0064A4CF   8B83E8010000           mov     eax, [ebx+$01E8]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
0064A4D5   E8C6E5E9FF             call    004E8AA0
0064A4DA   84C0                   test    al, al
0064A4DC   750B                   jnz     0064A4E9

* Reference to control TQe.QeProdSald : TIBQuery
|
0064A4DE   8B83E8010000           mov     eax, [ebx+$01E8]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A4E4   E86BE4E9FF             call    004E8954

* Reference to control TQe.QeProdLoc : TIBQuery
|
0064A4E9   8B8394010000           mov     eax, [ebx+$0194]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
0064A4EF   E8ACE5E9FF             call    004E8AA0
0064A4F4   84C0                   test    al, al
0064A4F6   750B                   jnz     0064A503

* Reference to control TQe.QeProdLoc : TIBQuery
|
0064A4F8   8B8394010000           mov     eax, [ebx+$0194]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A4FE   E851E4E9FF             call    004E8954

* Reference to control TQe.QeProdSimi : TIBQuery
|
0064A503   8B83D4010000           mov     eax, [ebx+$01D4]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
0064A509   E892E5E9FF             call    004E8AA0
0064A50E   84C0                   test    al, al
0064A510   750B                   jnz     0064A51D

* Reference to control TQe.QeProdSimi : TIBQuery
|
0064A512   8B83D4010000           mov     eax, [ebx+$01D4]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A518   E837E4E9FF             call    004E8954

* Reference to control TQe.QeProdObs : TIBQuery
|
0064A51D   8B8350020000           mov     eax, [ebx+$0250]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
0064A523   E878E5E9FF             call    004E8AA0
0064A528   84C0                   test    al, al
0064A52A   750B                   jnz     0064A537

* Reference to control TQe.QeProdObs : TIBQuery
|
0064A52C   8B8350020000           mov     eax, [ebx+$0250]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A532   E81DE4E9FF             call    004E8954

* Reference to control TQe.QeProdImpo : TIBQuery
|
0064A537   8B8364020000           mov     eax, [ebx+$0264]

* Reference to: DB.TDataSet.GetActive(TDataSet):Boolean;
|
0064A53D   E85EE5E9FF             call    004E8AA0
0064A542   84C0                   test    al, al
0064A544   750B                   jnz     0064A551

* Reference to control TQe.QeProdImpo : TIBQuery
|
0064A546   8B8364020000           mov     eax, [ebx+$0264]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064A54C   E803E4E9FF             call    004E8954
0064A551   C645F701               mov     byte ptr [ebp-$09], $01
0064A555   33C0                   xor     eax, eax
0064A557   5A                     pop     edx
0064A558   59                     pop     ecx
0064A559   59                     pop     ecx
0064A55A   648910                 mov     fs:[eax], edx
0064A55D   EB3B                   jmp     0064A59A

* Reference to: System.@HandleOnException;
|
0064A55F   E94CA6DBFF             jmp     00404BB0
0064A564   0100                   add     [eax], eax
0064A566   0000                   add     [eax], al
0064A568   40                     inc     eax
0064A569   95                     xchg    eax, ebp
0064A56A   40                     inc     eax
0064A56B   0070A5                 add     [eax-$5B], dh
0064A56E   640089C36A008B         add     fs:[ecx+$8B006AC3], cl
0064A575   4B                     dec     ebx
0064A576   048D                   add     al, -$73
0064A578   45                     inc     ebp
0064A579   E0BA                   loopn   -$46
0064A57B   18A76400E824           sbb     [edi+$24E80064], ah
0064A581   B2DB                   mov     dl, $DB
0064A583   FF8B45E0668B           dec     dword ptr [ebx+$8B66E045]
0064A589   0D3CA76400             or      eax, $0064A73C
0064A58E   B201                   mov     dl, $01

|
0064A590   E89795DFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0064A595   E816A9DBFF             call    00404EB0

****** END
|
0064A59A   33C0                   xor     eax, eax
0064A59C   5A                     pop     edx
0064A59D   59                     pop     ecx
0064A59E   59                     pop     ecx
0064A59F   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064A5A2   68BDA56400             push    $0064A5BD
0064A5A7   A168B67D00             mov     eax, dword ptr [$007DB668]
0064A5AC   8B00                   mov     eax, [eax]
0064A5AE   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0064A5B0   E87797E6FF             call    004B3D2C
0064A5B5   C3                     ret


* Reference to: System.@HandleFinally;
|
0064A5B6   E97DA7DBFF             jmp     00404D38
0064A5BB   EBEA                   jmp     0064A5A7

****** END
|
0064A5BD   33C0                   xor     eax, eax
0064A5BF   5A                     pop     edx
0064A5C0   59                     pop     ecx
0064A5C1   59                     pop     ecx
0064A5C2   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064A5C5   68ECA56400             push    $0064A5EC
0064A5CA   8D45E0                 lea     eax, [ebp-$20]
0064A5CD   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064A5D2   E8E9AEDBFF             call    004054C0
0064A5D7   8D45F8                 lea     eax, [ebp-$08]
0064A5DA   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064A5DF   E8DCAEDBFF             call    004054C0
0064A5E4   C3                     ret


* Reference to: System.@HandleFinally;
|
0064A5E5   E94EA7DBFF             jmp     00404D38
0064A5EA   EBDE                   jmp     0064A5CA

****** END
|
0064A5EC   8A45F7                 mov     al, byte ptr [ebp-$09]
0064A5EF   5F                     pop     edi
0064A5F0   5E                     pop     esi
0064A5F1   5B                     pop     ebx
0064A5F2   8BE5                   mov     esp, ebp
0064A5F4   5D                     pop     ebp
0064A5F5   C20400                 ret     $0004

*)
end;

procedure TQe._PROC_0064A5E5(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064A5E5   E94EA7DBFF             jmp     00404D38

|
0064A5EA   EBDE                   jmp     0064A5CA
0064A5EC   8A45F7                 mov     al, byte ptr [ebp-$09]
0064A5EF   5F                     pop     edi
0064A5F0   5E                     pop     esi
0064A5F1   5B                     pop     ebx
0064A5F2   8BE5                   mov     esp, ebp
0064A5F4   5D                     pop     ebp
0064A5F5   C20400                 ret     $0004

*)
end;

procedure TQe._PROC_0064A63F(Sender : TObject);
begin
(*
0064A63F   50                     push    eax
0064A640   4F                     dec     edi
0064A641   2C20                   sub     al, $20
0064A643   47                     inc     edi
0064A644   52                     push    edx
0064A645   55                     push    ebp
0064A646   50                     push    eax
0064A647   4F                     dec     edi
0064A648   2C20                   sub     al, $20
0064A64A   44                     inc     esp
0064A64B   45                     inc     ebp
0064A64C   53                     push    ebx
0064A64D   43                     inc     ebx
0064A64E   52                     push    edx
0064A64F   49                     dec     ecx
0064A650   43                     inc     ebx
0064A651   41                     inc     ecx
0064A652   4F                     dec     edi
0064A653   2C20                   sub     al, $20
0064A655   43                     inc     ebx
0064A656   4F                     dec     edi
0064A657   44                     inc     esp
0064A658   42                     inc     edx
0064A659   41                     inc     ecx
0064A65A   52                     push    edx
0064A65B   52                     push    edx
0064A65C   41                     inc     ecx
0064A65D   2C20                   sub     al, $20
0064A65F   4D                     dec     ebp
0064A660   4F                     dec     edi
0064A661   44                     inc     esp
0064A662   45                     inc     ebp
0064A663   4C                     dec     esp
0064A664   4F                     dec     edi
0064A665   2C20                   sub     al, $20
0064A667   4D                     dec     ebp
0064A668   4F                     dec     edi
0064A669   44                     inc     esp
0064A66A   45                     inc     ebp
0064A66B   4C                     dec     esp
0064A66C   4F                     dec     edi
0064A66D   322C00                 xor     ch, byte ptr [eax+eax]
0064A670   FFFF                   DB  $FF, $FF  //      
0064A672   FFFF                   DB  $FF, $FF  //      
0064A674   58                     pop     eax
0064A675   0000                   add     [eax], al

*)
end;

procedure TQe._PROC_0064A6C4(Sender : TObject);
begin
(*
0064A6C4   4E                     dec     esi
0064A6C5   49                     dec     ecx
0064A6C6   54                     push    esp
0064A6C7   2C20                   sub     al, $20
0064A6C9   41                     inc     ecx
0064A6CA   4C                     dec     esp
0064A6CB   49                     dec     ecx
0064A6CC   51                     push    ecx
0064A6CD   49                     dec     ecx
0064A6CE   50                     push    eax
0064A6CF   49                     dec     ecx
0064A6D0   0000                   add     [eax], al

*)
end;

procedure TQe._PROC_0064A6E6(Sender : TObject);
begin
(*
0064A6E6   54                     push    esp
0064A6E7   4F                     dec     edi
0064A6E8   53                     push    ebx
0064A6E9   0000                   add     [eax], al

*)
end;

procedure TQe._PROC_0064A90C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064A90C   E927A4DBFF             jmp     00404D38

|
0064A911   EBEB                   jmp     0064A8FE
0064A913   5F                     pop     edi
0064A914   5E                     pop     esi
0064A915   5B                     pop     ebx
0064A916   8BE5                   mov     esp, ebp
0064A918   5D                     pop     ebp
0064A919   C3                     ret

*)
end;

procedure TQe._PROC_0064B01C(Sender : TObject);
begin
(*
0064B01C   55                     push    ebp
0064B01D   8BEC                   mov     ebp, esp
0064B01F   6A00                   push    $00
0064B021   6A00                   push    $00
0064B023   6A00                   push    $00
0064B025   6A00                   push    $00
0064B027   6A00                   push    $00
0064B029   6A00                   push    $00
0064B02B   6A00                   push    $00
0064B02D   53                     push    ebx
0064B02E   56                     push    esi
0064B02F   57                     push    edi
0064B030   894DF8                 mov     [ebp-$08], ecx
0064B033   8955FC                 mov     [ebp-$04], edx
0064B036   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064B039   E80EA9DBFF             call    0040594C
0064B03E   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064B041   E806A9DBFF             call    0040594C
0064B046   8B4508                 mov     eax, [ebp+$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064B049   E8FEA8DBFF             call    0040594C
0064B04E   33C0                   xor     eax, eax
0064B050   55                     push    ebp
0064B051   68C6B16400             push    $0064B1C6

***** TRY
|
0064B056   64FF30                 push    dword ptr fs:[eax]
0064B059   648920                 mov     fs:[eax], esp
0064B05C   C645F700               mov     byte ptr [ebp-$09], $00
0064B060   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064B065   8B80B8020000           mov     eax, [eax+$02B8]

* Reference to: DB.TDataSet.Close(TDataSet);
|
0064B06B   E8F0D8E9FF             call    004E8960
0064B070   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064B075   8B80B8020000           mov     eax, [eax+$02B8]
0064B07B   8B9850020000           mov     ebx, [eax+$0250]
0064B081   8BC3                   mov     eax, ebx
0064B083   8B10                   mov     edx, [eax]
0064B085   FF5244                 call    dword ptr [edx+$44]

* Possible String Reference to: 'SELECT * '
|
0064B088   BAE4B16400             mov     edx, $0064B1E4
0064B08D   8BC3                   mov     eax, ebx
0064B08F   8B08                   mov     ecx, [eax]
0064B091   FF5138                 call    dword ptr [ecx+$38]
0064B094   8D45F0                 lea     eax, [ebp-$10]
0064B097   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: 'FROM '
|
0064B09A   BAF8B16400             mov     edx, $0064B1F8

* Reference to: System.@LStrCat3;
|
0064B09F   E804A7DBFF             call    004057A8
0064B0A4   8B55F0                 mov     edx, [ebp-$10]
0064B0A7   8BC3                   mov     eax, ebx
0064B0A9   8B08                   mov     ecx, [eax]
0064B0AB   FF5138                 call    dword ptr [ecx+$38]
0064B0AE   837D0800               cmp     dword ptr [ebp+$08], +$00
0064B0B2   741A                   jz      0064B0CE
0064B0B4   8D45EC                 lea     eax, [ebp-$14]
0064B0B7   8B4D08                 mov     ecx, [ebp+$08]

* Possible String Reference to: ' WHERE '
|
0064B0BA   BA08B26400             mov     edx, $0064B208

* Reference to: System.@LStrCat3;
|
0064B0BF   E8E4A6DBFF             call    004057A8
0064B0C4   8B55EC                 mov     edx, [ebp-$14]
0064B0C7   8BC3                   mov     eax, ebx
0064B0C9   8B08                   mov     ecx, [eax]
0064B0CB   FF5138                 call    dword ptr [ecx+$38]
0064B0CE   837DF800               cmp     dword ptr [ebp-$08], +$00
0064B0D2   741A                   jz      0064B0EE
0064B0D4   8D45E8                 lea     eax, [ebp-$18]
0064B0D7   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: ' ORDER BY '
|
0064B0DA   BA18B26400             mov     edx, $0064B218

* Reference to: System.@LStrCat3;
|
0064B0DF   E8C4A6DBFF             call    004057A8
0064B0E4   8B55E8                 mov     edx, [ebp-$18]
0064B0E7   8BC3                   mov     eax, ebx
0064B0E9   8B08                   mov     ecx, [eax]
0064B0EB   FF5138                 call    dword ptr [ecx+$38]
0064B0EE   A168B67D00             mov     eax, dword ptr [$007DB668]
0064B0F3   8B00                   mov     eax, [eax]
0064B0F5   66BAEFFF               mov     dx, $FFEF

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0064B0F9   E82E8CE6FF             call    004B3D2C
0064B0FE   33C0                   xor     eax, eax
0064B100   55                     push    ebp
0064B101   688FB16400             push    $0064B18F

***** TRY
|
0064B106   64FF30                 push    dword ptr fs:[eax]
0064B109   648920                 mov     fs:[eax], esp
0064B10C   33C0                   xor     eax, eax
0064B10E   55                     push    ebp
0064B10F   6838B16400             push    $0064B138

***** TRY
|
0064B114   64FF30                 push    dword ptr fs:[eax]
0064B117   648920                 mov     fs:[eax], esp
0064B11A   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064B11F   8B80B8020000           mov     eax, [eax+$02B8]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064B125   E82AD8E9FF             call    004E8954
0064B12A   C645F701               mov     byte ptr [ebp-$09], $01
0064B12E   33C0                   xor     eax, eax
0064B130   5A                     pop     edx
0064B131   59                     pop     ecx
0064B132   59                     pop     ecx
0064B133   648910                 mov     fs:[eax], edx
0064B136   EB3B                   jmp     0064B173

* Reference to: System.@HandleOnException;
|
0064B138   E9739ADBFF             jmp     00404BB0
0064B13D   0100                   add     [eax], eax
0064B13F   0000                   add     [eax], al
0064B141   40                     inc     eax
0064B142   95                     xchg    eax, ebp
0064B143   40                     inc     eax
0064B144   0049B1                 add     [ecx-$4F], cl
0064B147   640089C36A008B         add     fs:[ecx+$8B006AC3], cl
0064B14E   4B                     dec     ebx
0064B14F   048D                   add     al, -$73
0064B151   45                     inc     ebp
0064B152   E4BA                   in      al, $BA
0064B154   2CB2                   sub     al, $B2
0064B156   6400E8                 add     al, ch
0064B159   4B                     dec     ebx
0064B15A   A6                     cmpsb
0064B15B   DBFF                   DB  $DB, $FF  //
0064B15D   8B45E4                 mov     eax, [ebp-$1C]
0064B160   668B0D54B26400         mov     cx, word ptr [$0064B254]
0064B167   B201                   mov     dl, $01

|
0064B169   E8BE89DFFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0064B16E   E83D9DDBFF             call    00404EB0

****** END
|
0064B173   33C0                   xor     eax, eax
0064B175   5A                     pop     edx
0064B176   59                     pop     ecx
0064B177   59                     pop     ecx
0064B178   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064B17B   6896B16400             push    $0064B196
0064B180   A168B67D00             mov     eax, dword ptr [$007DB668]
0064B185   8B00                   mov     eax, [eax]
0064B187   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0064B189   E89E8BE6FF             call    004B3D2C
0064B18E   C3                     ret


* Reference to: System.@HandleFinally;
|
0064B18F   E9A49BDBFF             jmp     00404D38
0064B194   EBEA                   jmp     0064B180

****** END
|
0064B196   33C0                   xor     eax, eax
0064B198   5A                     pop     edx
0064B199   59                     pop     ecx
0064B19A   59                     pop     ecx
0064B19B   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064B19E   68CDB16400             push    $0064B1CD
0064B1A3   8D45E4                 lea     eax, [ebp-$1C]
0064B1A6   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064B1AB   E810A3DBFF             call    004054C0
0064B1B0   8D45F8                 lea     eax, [ebp-$08]
0064B1B3   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064B1B8   E803A3DBFF             call    004054C0
0064B1BD   8D4508                 lea     eax, [ebp+$08]

* Reference to: System.@LStrClr(void;void);
|
0064B1C0   E8D7A2DBFF             call    0040549C
0064B1C5   C3                     ret


* Reference to: System.@HandleFinally;
|
0064B1C6   E96D9BDBFF             jmp     00404D38
0064B1CB   EBD6                   jmp     0064B1A3

****** END
|
0064B1CD   8A45F7                 mov     al, byte ptr [ebp-$09]
0064B1D0   5F                     pop     edi
0064B1D1   5E                     pop     esi
0064B1D2   5B                     pop     ebx
0064B1D3   8BE5                   mov     esp, ebp
0064B1D5   5D                     pop     ebp
0064B1D6   C20400                 ret     $0004

*)
end;

procedure TQe._PROC_0064B1C6(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064B1C6   E96D9BDBFF             jmp     00404D38

|
0064B1CB   EBD6                   jmp     0064B1A3
0064B1CD   8A45F7                 mov     al, byte ptr [ebp-$09]
0064B1D0   5F                     pop     edi
0064B1D1   5E                     pop     esi
0064B1D2   5B                     pop     ebx
0064B1D3   8BE5                   mov     esp, ebp
0064B1D5   5D                     pop     ebp
0064B1D6   C20400                 ret     $0004

*)
end;

procedure TQe._PROC_0064B259(Sender : TObject);
begin
(*
0064B259   8BEC                   mov     ebp, esp
0064B25B   83C4E8                 add     esp, -$18
0064B25E   53                     push    ebx
0064B25F   56                     push    esi
0064B260   57                     push    edi
0064B261   33DB                   xor     ebx, ebx
0064B263   895DE8                 mov     [ebp-$18], ebx
0064B266   895DEC                 mov     [ebp-$14], ebx
0064B269   895DF0                 mov     [ebp-$10], ebx
0064B26C   894DF8                 mov     [ebp-$08], ecx
0064B26F   8955FC                 mov     [ebp-$04], edx
0064B272   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064B275   E8D2A6DBFF             call    0040594C
0064B27A   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
0064B27D   E8CAA6DBFF             call    0040594C
0064B282   33C0                   xor     eax, eax
0064B284   55                     push    ebp

* Possible String Reference to: 'ÈOô€ˇÎﬁäE˜_^[ãÂ]√'
|
0064B285   68E4B36400             push    $0064B3E4

***** TRY
|
0064B28A   64FF30                 push    dword ptr fs:[eax]
0064B28D   648920                 mov     fs:[eax], esp
0064B290   C645F700               mov     byte ptr [ebp-$09], $00
0064B294   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064B299   8B80B0020000           mov     eax, [eax+$02B0]

* Reference to: DB.TDataSet.Close(TDataSet);
|
0064B29F   E8BCD6E9FF             call    004E8960
0064B2A4   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064B2A9   8B80B0020000           mov     eax, [eax+$02B0]
0064B2AF   8B9850020000           mov     ebx, [eax+$0250]
0064B2B5   8BC3                   mov     eax, ebx
0064B2B7   8B10                   mov     edx, [eax]
0064B2B9   FF5244                 call    dword ptr [edx+$44]

* Possible String Reference to: 'SELECT INICIAL, FINAL, TABELA '
|
0064B2BC   BA00B46400             mov     edx, $0064B400
0064B2C1   8BC3                   mov     eax, ebx
0064B2C3   8B08                   mov     ecx, [eax]
0064B2C5   FF5138                 call    dword ptr [ecx+$38]

* Possible String Reference to: 'FROM CEPFAIXA'
|
0064B2C8   BA28B46400             mov     edx, $0064B428
0064B2CD   8BC3                   mov     eax, ebx
0064B2CF   8B08                   mov     ecx, [eax]
0064B2D1   FF5138                 call    dword ptr [ecx+$38]
0064B2D4   837DF800               cmp     dword ptr [ebp-$08], +$00
0064B2D8   741A                   jz      0064B2F4
0064B2DA   8D45F0                 lea     eax, [ebp-$10]
0064B2DD   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: ' WHERE '
|
0064B2E0   BA40B46400             mov     edx, $0064B440

* Reference to: System.@LStrCat3;
|
0064B2E5   E8BEA4DBFF             call    004057A8
0064B2EA   8B55F0                 mov     edx, [ebp-$10]
0064B2ED   8BC3                   mov     eax, ebx
0064B2EF   8B08                   mov     ecx, [eax]
0064B2F1   FF5138                 call    dword ptr [ecx+$38]
0064B2F4   837DFC00               cmp     dword ptr [ebp-$04], +$00
0064B2F8   741A                   jz      0064B314
0064B2FA   8D45EC                 lea     eax, [ebp-$14]
0064B2FD   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: ' ORDER BY '
|
0064B300   BA50B46400             mov     edx, $0064B450

* Reference to: System.@LStrCat3;
|
0064B305   E89EA4DBFF             call    004057A8
0064B30A   8B55EC                 mov     edx, [ebp-$14]
0064B30D   8BC3                   mov     eax, ebx
0064B30F   8B08                   mov     ecx, [eax]
0064B311   FF5138                 call    dword ptr [ecx+$38]
0064B314   A168B67D00             mov     eax, dword ptr [$007DB668]
0064B319   8B00                   mov     eax, [eax]
0064B31B   66BAEFFF               mov     dx, $FFEF

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0064B31F   E8088AE6FF             call    004B3D2C
0064B324   33C0                   xor     eax, eax
0064B326   55                     push    ebp
0064B327   68B5B36400             push    $0064B3B5

***** TRY
|
0064B32C   64FF30                 push    dword ptr fs:[eax]
0064B32F   648920                 mov     fs:[eax], esp
0064B332   33C0                   xor     eax, eax
0064B334   55                     push    ebp
0064B335   685EB36400             push    $0064B35E

***** TRY
|
0064B33A   64FF30                 push    dword ptr fs:[eax]
0064B33D   648920                 mov     fs:[eax], esp
0064B340   A188DD7D00             mov     eax, dword ptr [$007DDD88]
0064B345   8B80B0020000           mov     eax, [eax+$02B0]

* Reference to: DB.TDataSet.Open(TDataSet);
|
0064B34B   E804D6E9FF             call    004E8954
0064B350   C645F701               mov     byte ptr [ebp-$09], $01
0064B354   33C0                   xor     eax, eax
0064B356   5A                     pop     edx
0064B357   59                     pop     ecx
0064B358   59                     pop     ecx
0064B359   648910                 mov     fs:[eax], edx
0064B35C   EB3B                   jmp     0064B399

* Reference to: System.@HandleOnException;
|
0064B35E   E94D98DBFF             jmp     00404BB0
0064B363   0100                   add     [eax], eax
0064B365   0000                   add     [eax], al
0064B367   40                     inc     eax
0064B368   95                     xchg    eax, ebp
0064B369   40                     inc     eax
0064B36A   006FB3                 add     [edi-$4D], ch
0064B36D   640089C36A008B         add     fs:[ecx+$8B006AC3], cl
0064B374   4B                     dec     ebx
0064B375   048D                   add     al, -$73
0064B377   45                     inc     ebp
0064B378   E8BA64B464             call    65191837
0064B37D   00E8                   add     al, ch
0064B37F   25A4DBFF8B             and     eax, $8BFFDBA4
0064B384   45                     inc     ebp
0064B385   E8668B0D90             call    90723EF0
0064B38A   B464                   mov     ah, $64
0064B38C   00B201E89887           add     [edx+$8798E801], dh
0064B392   DFFF                   DB  $DF, $FF  //

* Reference to: System.@DoneExcept;
|
0064B394   E8179BDBFF             call    00404EB0

****** END
|
0064B399   33C0                   xor     eax, eax
0064B39B   5A                     pop     edx
0064B39C   59                     pop     ecx
0064B39D   59                     pop     ecx
0064B39E   648910                 mov     fs:[eax], edx

****** FINALLY
|
0064B3A1   68BCB36400             push    $0064B3BC
0064B3A6   A168B67D00             mov     eax, dword ptr [$007DB668]
0064B3AB   8B00                   mov     eax, [eax]
0064B3AD   33D2                   xor     edx, edx

* Reference to: Forms.TScreen.SetCursor(TScreen;TCursor);
|
0064B3AF   E87889E6FF             call    004B3D2C
0064B3B4   C3                     ret


* Reference to: System.@HandleFinally;
|
0064B3B5   E97E99DBFF             jmp     00404D38
0064B3BA   EBEA                   jmp     0064B3A6

****** END
|
0064B3BC   33C0                   xor     eax, eax
0064B3BE   5A                     pop     edx
0064B3BF   59                     pop     ecx
0064B3C0   59                     pop     ecx
0064B3C1   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'äE˜_^[ãÂ]√'
|
0064B3C4   68EBB36400             push    $0064B3EB
0064B3C9   8D45E8                 lea     eax, [ebp-$18]
0064B3CC   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064B3D1   E8EAA0DBFF             call    004054C0
0064B3D6   8D45F8                 lea     eax, [ebp-$08]
0064B3D9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0064B3DE   E8DDA0DBFF             call    004054C0
0064B3E3   C3                     ret


* Reference to: System.@HandleFinally;
|
0064B3E4   E94F99DBFF             jmp     00404D38
0064B3E9   EBDE                   jmp     0064B3C9

****** END
|
0064B3EB   8A45F7                 mov     al, byte ptr [ebp-$09]
0064B3EE   5F                     pop     edi
0064B3EF   5E                     pop     esi
0064B3F0   5B                     pop     ebx
0064B3F1   8BE5                   mov     esp, ebp
0064B3F3   5D                     pop     ebp
0064B3F4   C3                     ret

*)
end;

procedure TQe._PROC_0064B3E4(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0064B3E4   E94F99DBFF             jmp     00404D38

|
0064B3E9   EBDE                   jmp     0064B3C9
0064B3EB   8A45F7                 mov     al, byte ptr [ebp-$09]
0064B3EE   5F                     pop     edi
0064B3EF   5E                     pop     esi
0064B3F0   5B                     pop     ebx
0064B3F1   8BE5                   mov     esp, ebp
0064B3F3   5D                     pop     ebp
0064B3F4   C3                     ret

*)
end;

procedure TQe._PROC_0064B495(Sender : TObject);
begin
(*
0064B495   8BEC                   mov     ebp, esp
0064B497   33C0                   xor     eax, eax
0064B499   55                     push    ebp

* Possible String Reference to: 'Èzò€ˇÎ¯]√ã¿É-å›}'
|
0064B49A   68B9B46400             push    $0064B4B9

***** TRY
|
0064B49F   64FF30                 push    dword ptr fs:[eax]
0064B4A2   648920                 mov     fs:[eax], esp
0064B4A5   FF058CDD7D00           inc     dword ptr [$007DDD8C]
0064B4AB   33C0                   xor     eax, eax
0064B4AD   5A                     pop     edx
0064B4AE   59                     pop     ecx
0064B4AF   59                     pop     ecx
0064B4B0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']√ã¿É-å›}'
|
0064B4B3   68C0B46400             push    $0064B4C0
0064B4B8   C3                     ret


* Reference to: System.@HandleFinally;
|
0064B4B9   E97A98DBFF             jmp     00404D38
0064B4BE   EBF8                   jmp     0064B4B8

****** END
|
0064B4C0   5D                     pop     ebp
0064B4C1   C3                     ret

*)
end;

procedure TQe._PROC_0064B4C4(Sender : TObject);
begin
(*
0064B4C4   832D8CDD7D0001         sub     dword ptr [$007DDD8C], +$01
0064B4CB   C3                     ret

*)
end;

procedure TQe._PROC_0064B4CC(Sender : TObject);
begin
(*
0064B4CC   55                     push    ebp
0064B4CD   8BEC                   mov     ebp, esp
0064B4CF   33C0                   xor     eax, eax
0064B4D1   55                     push    ebp

* Possible String Reference to: 'ÈBò€ˇÎ¯]√ã¿É-ê›}'
|
0064B4D2   68F1B46400             push    $0064B4F1

***** TRY
|
0064B4D7   64FF30                 push    dword ptr fs:[eax]
0064B4DA   648920                 mov     fs:[eax], esp
0064B4DD   FF0590DD7D00           inc     dword ptr [$007DDD90]
0064B4E3   33C0                   xor     eax, eax
0064B4E5   5A                     pop     edx
0064B4E6   59                     pop     ecx
0064B4E7   59                     pop     ecx
0064B4E8   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']√ã¿É-ê›}'
|
0064B4EB   68F8B46400             push    $0064B4F8
0064B4F0   C3                     ret


* Reference to: System.@HandleFinally;
|
0064B4F1   E94298DBFF             jmp     00404D38
0064B4F6   EBF8                   jmp     0064B4F0

****** END
|
0064B4F8   5D                     pop     ebp
0064B4F9   C3                     ret

*)
end;

procedure TQe._PROC_0064B4FC(Sender : TObject);
begin
(*
0064B4FC   832D90DD7D0001         sub     dword ptr [$007DDD90], +$01
0064B503   C3                     ret

*)
end;

procedure TQe._PROC_0064B504(Sender : TObject);
begin
(*
0064B504   55                     push    ebp
0064B505   8BEC                   mov     ebp, esp
0064B507   33C0                   xor     eax, eax
0064B509   55                     push    ebp

* Possible String Reference to: 'Èò€ˇÎ¯]√ã¿É-î›}'
|
0064B50A   6829B56400             push    $0064B529

***** TRY
|
0064B50F   64FF30                 push    dword ptr fs:[eax]
0064B512   648920                 mov     fs:[eax], esp
0064B515   FF0594DD7D00           inc     dword ptr [$007DDD94]
0064B51B   33C0                   xor     eax, eax
0064B51D   5A                     pop     edx
0064B51E   59                     pop     ecx
0064B51F   59                     pop     ecx
0064B520   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']√ã¿É-î›}'
|
0064B523   6830B56400             push    $0064B530
0064B528   C3                     ret


* Reference to: System.@HandleFinally;
|
0064B529   E90A98DBFF             jmp     00404D38
0064B52E   EBF8                   jmp     0064B528

****** END
|
0064B530   5D                     pop     ebp
0064B531   C3                     ret

*)
end;

procedure TQe._PROC_0064B534(Sender : TObject);
begin
(*
0064B534   832D94DD7D0001         sub     dword ptr [$007DDD94], +$01
0064B53B   C3                     ret

*)
end;

procedure TQe._PROC_0064B53C(Sender : TObject);
begin
(*
0064B53C   55                     push    ebp
0064B53D   8BEC                   mov     ebp, esp
0064B53F   33C0                   xor     eax, eax
0064B541   55                     push    ebp

* Possible String Reference to: 'È“ó€ˇÎ¯]√ã¿É-ò›}'
|
0064B542   6861B56400             push    $0064B561

***** TRY
|
0064B547   64FF30                 push    dword ptr fs:[eax]
0064B54A   648920                 mov     fs:[eax], esp
0064B54D   FF0598DD7D00           inc     dword ptr [$007DDD98]
0064B553   33C0                   xor     eax, eax
0064B555   5A                     pop     edx
0064B556   59                     pop     ecx
0064B557   59                     pop     ecx
0064B558   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']√ã¿É-ò›}'
|
0064B55B   6868B56400             push    $0064B568
0064B560   C3                     ret


* Reference to: System.@HandleFinally;
|
0064B561   E9D297DBFF             jmp     00404D38
0064B566   EBF8                   jmp     0064B560

****** END
|
0064B568   5D                     pop     ebp
0064B569   C3                     ret

*)
end;

procedure TQe._PROC_0064B56C(Sender : TObject);
begin
(*
0064B56C   832D98DD7D0001         sub     dword ptr [$007DDD98], +$01
0064B573   C3                     ret

*)
end;

procedure TQe._PROC_0064B574(Sender : TObject);
begin
(*
0064B574   C0B56400000000         DB  $C0, $B5, $64, $00, $00, $00, $00  //      byte ptr [ebp+$0064], $00
0064B57B   0000                   add     [eax], al

*)
end;

end.