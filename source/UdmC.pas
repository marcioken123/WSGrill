unit UdmC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet, IBTable,
  BTOdeum, ImgList, JvComputerInfoEx, JvProgressComponent, JvComponentBase,
  JvInterpreter, JvInterpreterFm, RAWPrinter, IBDatabase;
  
type
  TDmC=class(TDataModule)
    gBDados: TIBDatabase;
    tBDados: TIBTransaction;
    gCEP: TIBDatabase;
    tCEP: TIBTransaction;
    ImprDOS: TRAWPrinter;
    Compilador: TJvInterpreterFm;
    pfRelatorio: TJvProgressComponent;
    pfGeral: TJvProgressComponent;
    ciInfoMicro: TJvComputerInfoEx;
    imGeral: TImageList;
    Sonz: TBTBeeper;
    tbParams: TIBTable;
    tbParamsFILIAL: TIBStringField;
    tbParamsCGCEMPR: TIBStringField;
    tbParamsRAZAO: TIBStringField;
    tbParamsMULTI: TIBStringField;
    tbParamsUSAMOEDA: TIBStringField;
    tbParamsUSACODDIPAM: TIBStringField;
    tbParamsUSAMARCA: TIBStringField;
    tbParamsTIPOCOMIS: TIBStringField;
    tbParamsJUROSDIA: TFloatField;
    tbParamsJUROSMES: TFloatField;
    tbParamsTAMGRUPO: TSmallintField;
    tbParamsTAMPROD: TSmallintField;
    tbParamsTIPOSPROD: TIBStringField;
    tbParamsUNIDDIVER: TIBStringField;
    tbParamsTAMDESCRRESUMIDA: TSmallintField;
    tbParamsPRODPROMOCAO: TIBStringField;
    tbParamsZEROAUTO: TIBStringField;
    tbParamsUSABARRAPROD: TIBStringField;
    tbParamsUSAMONTADO: TIBStringField;
    tbParamsENTCONTACONTABIL: TIBStringField;
    tbParamsSAICONTACONTABIL: TIBStringField;
    tbParamsENTDEVOLCONTACONTABIL: TIBStringField;
    tbParamsSAIDEVOLCONTACONTABIL: TIBStringField;
    tbParamsENTNATOPER: TIBStringField;
    tbParamsSAINATOPER: TIBStringField;
    tbParamsSAINATOPERSEMESTQ: TIBStringField;
    tbParamsSAINATOPERVALES: TIBStringField;
    tbParamsSAINATOPERTRANSF: TIBStringField;
    tbParamsSAINATOPERCONSIG: TIBStringField;
    tbParamsSAINATOPERNFCF: TIBStringField;
    tbParamsENTFRETE: TIBStringField;
    tbParamsENTSEGURO: TIBStringField;
    tbParamsENTDESPACESS: TIBStringField;
    tbParamsENTTRANSPORTE: TIBStringField;
    tbParamsENTCOMPLEM: TIBStringField;
    tbParamsSAIFRETE: TIBStringField;
    tbParamsSAISEGURO: TIBStringField;
    tbParamsSAIDESPACESS: TIBStringField;
    tbParamsSAITRANSPORTE: TIBStringField;
    tbParamsSAICOMPLEM: TIBStringField;
    tbParamsPVCV: TIBStringField;
    tbParamsPRCFATOR: TIBStringField;
    tbParamsENTIMPRETIQ: TIBStringField;
    tbParamsENTETIQREPOS: TIBStringField;
    tbParamsAPROVPRECO: TIBStringField;
    tbParamsFISJUR: TIBStringField;
    tbParamsDECIQTDE: TSmallintField;
    tbParamsDECIVLR: TSmallintField;
    tbParamsUNIDPESO: TIBStringField;
    tbParamsVENCTODIAUTIL: TIBStringField;
    tbParamsOPERDIAUTIL: TIBStringField;
    tbParamsVENDAESTQZERO: TIBStringField;
    tbParamsPEDVESTQZERO: TIBStringField;
    tbParamsPADRCODBARRA: TIBStringField;
    tbParamsENTREPETEPROD: TIBStringField;
    tbParamsENTSEMCODPROD: TIBStringField;
    tbParamsSAIREPETEPROD: TIBStringField;
    tbParamsSAISEMCODPROD: TIBStringField;
    tbParamsENTRAZFANTA: TIBStringField;
    tbParamsSAIRAZFANTA: TIBStringField;
    tbParamsPEDCRAZFANTA: TIBStringField;
    tbParamsPEDVRAZFANTA: TIBStringField;
    tbParamsUSAPEDVENDA: TIBStringField;
    tbParamsUSAPEDCOMPRA: TIBStringField;
    tbParamsUSAMONTAGEM: TIBStringField;
    tbParamsTAMCONTACONTABIL: TSmallintField;
    tbParamsMASCCONTA: TIBStringField;
    tbParamsENTESPECIE: TIBStringField;
    tbParamsSAIESPECIE: TIBStringField;
    tbParamsENTSERIE: TIBStringField;
    tbParamsSAISERIE: TIBStringField;
    tbParamsENTPRODDESC: TIBStringField;
    tbParamsSAIPRODDESC: TIBStringField;
    tbParamsCONFIRMACOMIS: TIBStringField;
    tbParamsUSACAIXA: TIBStringField;
    tbParamsDTCAIXAEMISSAO: TIBStringField;
    tbParamsCUPOMCAIXA: TIBStringField;
    tbParamsCHEQUEDEVOL: TIBStringField;
    tbParamsTIPOSNF: TIBStringField;
    tbParamsENTTIPOPGTO: TIBStringField;
    tbParamsSAITIPOPGTO: TIBStringField;
    tbParamsNUMDIASBLOQUEIO: TSmallintField;
    tbParamsENTNUMSEQ: TIBStringField;
    tbParamsSAINUMSEQ: TIBStringField;
    tbParamsCLIENUMSEQ: TIBStringField;
    tbParamsPEDCNUMSEQ: TIBStringField;
    tbParamsPEDVNUMSEQ: TIBStringField;
    tbParamsDIVNUMSEQ: TIBStringField;
    tbParamsDATATRABALHO: TDateTimeField;
    tbParamsENTDTPREVLIQ: TIBStringField;
    tbParamsSAIDTPREVLIQ: TIBStringField;
    tbParamsTIPOSENHADESC: TIBStringField;
    tbParamsTIPOSENHACAIXA: TIBStringField;
    tbParamsSENHADESC: TIBStringField;
    tbParamsSENHACAIXA: TIBStringField;
    tbParamsSENHAROTESPEC: TIBStringField;
    tbParamsSENHADESCDIAS: TSmallintField;
    tbParamsSENHADESCMES: TSmallintField;
    tbParamsSENHACAIXADIAS: TSmallintField;
    tbParamsSENHACAIXAMES: TSmallintField;
    tbParamsUSATABCLIE: TIBStringField;
    tbParamsUSATABFORN: TIBStringField;
    tbParamsDEVOLCOMIS: TIBStringField;
    tbParamsREMEBANCO: TIBStringField;
    tbParamsREMECLIE: TIBStringField;
    tbParamsREMEFORN: TIBStringField;
    tbParamsVLREMAJUSTE: TIBStringField;
    tbParamsUSAFRETESETOR: TIBStringField;
    tbParamsIMPEXPDADOS: TIBStringField;
    tbParamsPRECONEGOCIAVEL: TIBStringField;
    tbParamsMARGMINVENDA: TFloatField;
    tbParamsMARGPADRAO: TFloatField;
    tbParamsSAIESPECIES: TIBStringField;
    tbParamsSAISERIES: TIBStringField;
    tbParamsUSAFACTOR: TIBStringField;
    tbParamsCODCOMPENSACAO: TIBStringField;
    tbParamsATUAPRECOMARGEM: TIBStringField;
    tbParamsUSAAGRUPACLIE: TIBStringField;
    tbParamsQTDPEDORIGINAL: TIBStringField;
    tbParamsMOEDAPADRAO: TIBStringField;
    tbParamsIMPOSTOICMS: TIBStringField;
    tbParamsIMPOSTOIPI: TIBStringField;
    tbParamsCUSTOFINANCEIRO: TFloatField;
    tbParamsIMPOSTOIRRF: TIBStringField;
    tbParamsBLOQPEDFATU: TIBStringField;
    tbParamsUSACONTABIL: TIBStringField;
    tbParamsUSAESPECTEC: TIBStringField;
    tbParamsVENDAEXPORT: TIBStringField;
    tbParamsUSAIMOBILIZADO: TIBStringField;
    tbParamsUSAPRODMODELO: TIBStringField;
    tbParamsUSAPRODLOCAL: TIBStringField;
    tbParamsUSAPPB: TIBStringField;
    tbParamsUSACECUSTO: TIBStringField;
    tbParamsUSACRESP: TIBStringField;
    tbParamsUNIDMED: TIBStringField;
    tbParamsUSAPRODSIMI: TIBStringField;
    tbParamsF11CODPROD: TIBStringField;
    tbParamsF11BARRAPROD: TIBStringField;
    tbParamsF11MODELO: TIBStringField;
    tbParamsF11MARCA: TIBStringField;
    tbParamsF11GRUPO: TIBStringField;
    tbParamsF11SETOR: TIBStringField;
    tbParamsF11TAMCODPROD: TSmallintField;
    tbParamsF11TAMMODELO: TSmallintField;
    tbParamsF11TAMDESCRICAO: TSmallintField;
    tbParamsF11TAMMARCA: TSmallintField;
    tbParamsF11TAMGRUPO: TSmallintField;
    tbParamsF11ORDCODPROD: TSmallintField;
    tbParamsF11ORDMODELO: TSmallintField;
    tbParamsF11ORDDESCRICAO: TSmallintField;
    tbParamsF11ORDMARCA: TSmallintField;
    tbParamsF11ORDGRUPO: TSmallintField;
    tbParamsF11ORDCODBARRA: TSmallintField;
    tbParamsF11ORDSETOR: TSmallintField;
    tbParamsF11FOCO: TIBStringField;
    tbParamsF11PESQNORM: TIBStringField;
    tbParamsCONDPGTOPORFILIAL: TIBStringField;
    tbParamsNATOPERPORFILIAL: TIBStringField;
    tbParamsUSAF11NOF2PROD: TIBStringField;
    tbParamsUSASEDEX: TIBStringField;
    tbParamsTIPOIDENTPROD: TIBStringField;
    tbParamsPESQCEP: TIBStringField;
    tbParamsUSAREQUISICAO: TIBStringField;
    tbParamsDIRARQREQUISICAO: TIBStringField;
    tbParamsPEDVPRAZOENTREGA: TIntegerField;
    tbParamsFILIALPADRAOREQUISICAO: TIBStringField;
    tbParamsLOCALPADRAOVENDA: TIBStringField;
    tbParamsLOCALPRADRAOTRANSF: TIBStringField;
    tbParamsREQAUTOPV: TIBStringField;
    tbParamsREQAUTOVE: TIBStringField;
    tbParamsENTNATOPERFE: TIBStringField;
    tbParamsSAIESPECIENF: TIBStringField;
    tbParamsSAISERIENF: TIBStringField;
    tbParamsSAINATOPERFE: TIBStringField;
    tbParamsULTPEDVENDA: TIntegerField;
    tbParamsULTPEDCOMPRA: TIntegerField;
    tbParamsALTCODPRODPADRAO: TIBStringField;
    tbParamsSAICOMISSAOMAXIMA: TFloatField;
    tbParamsF11PESQOBS: TIBStringField;
    tbParamsFRETENABASEICMS: TIBStringField;
    tbParamsAUDITAF11: TIBStringField;
    tbParamsCODPDV: TIBStringField;
    tbParamsF11RETORNO: TIBStringField;
    tbParamsF11TAMSETOR: TSmallintField;
    tbParamsUSUARIOIMPRIMINDONF: TIBStringField;
    tbParamsFILTRALISTAPRECO: TIBStringField;
    tbParamsENTDECIVLR: TIntegerField;
    tbParamsENTDECIQTDE: TIntegerField;
    tbParamsCOMISINCLUIFRETE: TIBStringField;
    tbParamsCOMISINCLUIDESCCCRED: TIBStringField;
    tbParamsCOMISINCLUIDESCFINANC: TIBStringField;
    tbParamsCOMISINCLUIICMS: TIBStringField;
    tbParamsCOMISINCLUIIPI: TIBStringField;
    tbParamsUSABARRAPRODUNID: TIBStringField;
    tbParamsDESCREMBALAGEM: TIBStringField;
    tbParamsDESCRCOMPLEMENTO: TIBStringField;
    tbParamsOBSNFTODASPAGINAS: TIBStringField;
    tbParamsPESQRAPEND: TIBStringField;
    tbParamsDESLIGAWINDOWS: TIBStringField;
    tbParamsUSANUMSERIE: TIBStringField;
    tbParamsCLIEOBRI: TIBStringField;
    tbParamsCLIEVISI: TIBStringField;
    tbParamsFORNOBRI: TIBStringField;
    tbParamsFORNVISI: TIBStringField;
    tbParamsTABDIVER: TIBStringField;
    tbParamsNRVEFUNC: TIBStringField;
    tbParamsUSAGRADE: TIBStringField;
    tbParamsUSADUPLS: TIBStringField;
    tbParamsUSABALANCA: TIBStringField;
    tbParamsSAINATOPERSEMESTQFE: TIBStringField;
    tbParamsSAINATOPEREX: TIBStringField;
    tbParamsSAINATOPERSEMESTQEX: TIBStringField;
    tbParamsNFTIPOQUEBRA: TIBStringField;
    tbParamsINCLPRECOCO: TIBStringField;
    tbParamsFOCAGRUPO: TIBStringField;
    tbParamsGRAVAVENDCLIEFILI: TIBStringField;
    tbParamsUSAPROGPRECO: TIBStringField;
    tbParamsALTINSPEDEFUNC: TIBStringField;
    tbParamsF11OPCDEFAULT: TIBStringField;
    tbParamsUSALEITORCHEQUE: TIBStringField;
    tbParamsF11VLRUNIT: TIBStringField;
    tbParamsF11TAMVLRUNIT: TSmallintField;
    tbParamsF11ORDVLRUNIT: TSmallintField;
    tbParamsGERASENHAVALE: TIBStringField;
    tbParamsSUPRBAIXAREC: TIBStringField;
    tbParamsULTCOTACAOVENDA: TIntegerField;
    tbParamsULTCOTACAOCOMPRA: TIntegerField;
    tbParamsREQAUTOVA: TIBStringField;
    tbParamsREQAUTOVEVA: TIBStringField;
    tbParamsENTFRETELCTO: TIBStringField;
    tbParamsDTULTPEDVEND: TDateTimeField;
    tbParamsDTULTCOTVEND: TDateTimeField;
    tbParamsDTULTPEDCOMP: TDateTimeField;
    tbParamsDTULTCOTCOMP: TDateTimeField;
    tbParamsENTNATOPEREX: TIBStringField;
    tbParamsIMPDTPEDDTSIST: TIBStringField;
    tbParamsTIPOALIQFRETE: TIBStringField;
    tbParamsALTINSTRANS: TIBStringField;
    tbParamsALTCODFUNCSAIDA: TIBStringField;
    tbParamsCAIXABERTO: TIBStringField;
    tbParamsCLIEADICIONAL: TIBStringField;
    tbParamsCLIEADICIONAL2: TIBStringField;
    tbParamsCLIEADICIONAL3: TIBStringField;
    tbParamsCLIEADICIONAL4: TIBStringField;
    tbParamsDESTINOBACKUP: TIBStringField;
    tbParamsDIRBACKUP: TIBStringField;
    tbParamsULTIMOBACKUP: TDateTimeField;
    tbParamsHORABK1: TTimeField;
    tbParamsHORABK2: TTimeField;
    tbParamsHORABK3: TTimeField;
    tbParamsHORABK4: TTimeField;
    tbParamsBLOQINCLPV: TIBStringField;
    tbParamsCADCLIE: TIBStringField;
    tbParamsCADFORN: TIBStringField;
    tbParamsCADPROD: TIBStringField;
    tbParamsBAIRAZFANTA: TIBStringField;
    tbParamsBLOQTOTLIMCRED: TIBStringField;
    tbParamsCLIEINFOVENDAS: TIBStringField;
    tbParamsCOMISINCLUIDESCFINAN: TIBStringField;
    tbParamsDESPACBASEICMS: TIBStringField;
    tbParamsDESPACBASEISS: TIBStringField;
    tbParamsENTDEVOLCONTACONTABI: TIBStringField;
    tbParamsFILIALPADRAOREQUISIC: TIBStringField;
    tbParamsFORCASENHA: TIBStringField;
    tbParamsFRETENABASEISS: TIBStringField;
    tbParamsIMPRCUPOMSAUT: TIBStringField;
    tbParamsMODELOPALM: TIBStringField;
    tbParamsMOVESTOQPV: TIBStringField;
    tbParamsNAOMOSTRAF11VENDA: TIBStringField;
    tbParamsNFCOMPLDESCR: TIBStringField;
    tbParamsOBRIGADADOSCHEQ: TIBStringField;
    tbParamsPESQCLIEADICIONAL: TIBStringField;
    tbParamsPVIMPRETIQ: TIBStringField;
    tbParamsSAIDEVOLCONTACONTABI: TIBStringField;
    tbParamsSAIIMPRETIQ: TIBStringField;
    tbParamsSEGUROBASEICMS: TIBStringField;
    tbParamsSEGUROBASEISS: TIBStringField;
    tbParamsTAMMARCA: TIntegerField;
    tbParamsUSATECIDO: TIBStringField;
    tbParamsVECUSTOITEM: TIBStringField;
    tbParamsCOMISINCLUIDUPLACRESC: TIBStringField;
    tbParamsESTQLOTE: TIBStringField;
    tbParamsNAOFILTRATP: TIBStringField;
    tbParamsESTQGRADE: TIBStringField;
    tbParamsUSADTFABR: TIBStringField;
    tbParamsUSALIMITECODCOMANDA: TIBStringField;
    tbParamsLIMITECODCOMANDA: TIntegerField;
    procedure _PROC_007BCB74(Sender : TObject);
    procedure _PROC_007BCB78(Sender : TObject);
    procedure _PROC_007BCB7C(Sender : TObject);
    procedure _PROC_007BCB80(Sender : TObject);
    procedure _PROC_007BCE59(Sender : TObject);
    procedure _PROC_007BCECA(Sender : TObject);
    procedure _PROC_007BCF09(Sender : TObject);
    procedure _PROC_007BCFDD(Sender : TObject);
    procedure _PROC_007BCFE8(Sender : TObject);
    procedure _PROC_007BCFF4(Sender : TObject);
    procedure _PROC_007BD0C9(Sender : TObject);
    procedure _PROC_007BD245(Sender : TObject);
    procedure _PROC_007BD3C1(Sender : TObject);
    procedure _PROC_007BD591(Sender : TObject);
    procedure _PROC_007BDDCD(Sender : TObject);
    procedure _PROC_007BE3AB(Sender : TObject);
    procedure _PROC_007BE3C8(Sender : TObject);
    procedure _PROC_007BE44A(Sender : TObject);
    procedure _PROC_007BE4C5(Sender : TObject);
    procedure _PROC_007BE53D(Sender : TObject);
    procedure _PROC_007BE932(Sender : TObject);
    procedure _PROC_007BE9F6(Sender : TObject);
    procedure _PROC_007BEA35(Sender : TObject);
    procedure _PROC_007BEA90(Sender : TObject);
    procedure _PROC_007BEA98(Sender : TObject);
    procedure _PROC_007BEEF5(Sender : TObject);
    procedure _PROC_007BEF8F(Sender : TObject);
    procedure _PROC_007BEFDD(Sender : TObject);
    procedure _PROC_007BEFF6(Sender : TObject);
    procedure _PROC_007BF018(Sender : TObject);
    procedure _PROC_007BF029(Sender : TObject);
    procedure _PROC_007BF039(Sender : TObject);
    procedure _PROC_007BF0AB(Sender : TObject);
    procedure _PROC_007BF0EA(Sender : TObject);
    procedure _PROC_007BF17A(Sender : TObject);
    procedure _PROC_007BF1F5(Sender : TObject);
    procedure _PROC_007BF207(Sender : TObject);
    procedure _PROC_007BF229(Sender : TObject);
    procedure _PROC_007BF29F(Sender : TObject);
    procedure _PROC_007BF321(Sender : TObject);
    procedure _PROC_007BF4BC(Sender : TObject);
    procedure _PROC_007BF51D(Sender : TObject);
    procedure _PROC_007BF729(Sender : TObject);
    procedure _PROC_007BF8F1(Sender : TObject);
    procedure _PROC_007BF945(Sender : TObject);
    procedure _PROC_007BF952(Sender : TObject);
    procedure _PROC_007BF993(Sender : TObject);
    procedure _PROC_007BF9AB(Sender : TObject);
    procedure _PROC_007BF9C0(Sender : TObject);
    procedure _PROC_007BF9F8(Sender : TObject);
    procedure _PROC_007BFA09(Sender : TObject);
    procedure _PROC_007BFA51(Sender : TObject);
    procedure _PROC_007BFBA9(Sender : TObject);
    procedure _PROC_007BFBCA(Sender : TObject);
    procedure _PROC_007BFBED(Sender : TObject);
    procedure _PROC_007BFC4A(Sender : TObject);
    procedure _PROC_007BFC95(Sender : TObject);
    procedure _PROC_007BFE69(Sender : TObject);
    procedure _PROC_007BFEAA(Sender : TObject);
    procedure _PROC_007BFEED(Sender : TObject);
    procedure _PROC_007BFEFA(Sender : TObject);
    procedure _PROC_007BFF25(Sender : TObject);
    procedure _PROC_007BFF42(Sender : TObject);
    procedure _PROC_007BFF7F(Sender : TObject);
    procedure _PROC_007BFFCD(Sender : TObject);
    procedure _PROC_007C01C1(Sender : TObject);
    procedure _PROC_007C0202(Sender : TObject);
    procedure _PROC_007C0245(Sender : TObject);
    procedure _PROC_007C0259(Sender : TObject);
    procedure _PROC_007C0280(Sender : TObject);
    procedure _PROC_007C02A5(Sender : TObject);
    procedure _PROC_007C02B5(Sender : TObject);
    procedure _PROC_007C02FB(Sender : TObject);
    procedure _PROC_007C034D(Sender : TObject);
    procedure _PROC_007C0498(Sender : TObject);
    procedure _PROC_007C055D(Sender : TObject);
    procedure _PROC_007C0681(Sender : TObject);
    procedure _PROC_007C0739(Sender : TObject);
    procedure _PROC_007C0768(Sender : TObject);
    procedure _PROC_007C0770(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  DmC: TDmC;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TDmC._PROC_007BCB74(Sender : TObject);
begin
(*
007BCB74   C3                     ret

*)
end;

procedure TDmC._PROC_007BCB78(Sender : TObject);
begin
(*
007BCB78   C3                     ret

*)
end;

procedure TDmC._PROC_007BCB7C(Sender : TObject);
begin
(*
007BCB7C   C3                     ret

*)
end;

procedure TDmC._PROC_007BCB80(Sender : TObject);
begin
(*
007BCB80   FFFF                   DB  $FF, $FF  //      
007BCB82   FFFF                   DB  $FF, $FF  //      
007BCB84   0500000046             add     eax, +$46000000
007BCB89   61                     popa
007BCB8A   6C                     insb
007BCB8B   7365                   jnb     007BCBF2
007BCB8D   0000                   add     [eax], al

007BCB8F   00FF                   add     bh, bh
007BCB91   FFFF                   DB  $FF, $FF  //      
007BCB93   FF0400                 inc     dword ptr [eax+eax]
007BCB96   0000                   add     [eax], al

007BCB98   54                     push    esp
007BCB99   7275                   jb      007BCC10
007BCB9B   650000                 add     gs:[eax], al
007BCB9E   0000                   add     [eax], al

007BCBA0   55                     push    ebp
007BCBA1   8BEC                   mov     ebp, esp
007BCBA3   81C4DCFEFFFF           add     esp, $FFFFFEDC
007BCBA9   53                     push    ebx
007BCBAA   56                     push    esi
007BCBAB   57                     push    edi
007BCBAC   33DB                   xor     ebx, ebx
007BCBAE   899DE4FEFFFF           mov     [ebp+$FFFFFEE4], ebx
007BCBB4   899DE0FEFFFF           mov     [ebp+$FFFFFEE0], ebx
007BCBBA   899DDCFEFFFF           mov     [ebp+$FFFFFEDC], ebx
007BCBC0   899DECFEFFFF           mov     [ebp+$FFFFFEEC], ebx
007BCBC6   899DE8FEFFFF           mov     [ebp+$FFFFFEE8], ebx
007BCBCC   895DF4                 mov     [ebp-$0C], ebx
007BCBCF   895DF0                 mov     [ebp-$10], ebx
007BCBD2   895DF8                 mov     [ebp-$08], ebx
007BCBD5   894DFC                 mov     [ebp-$04], ecx
007BCBD8   8BDA                   mov     ebx, edx
007BCBDA   8BF8                   mov     edi, eax
007BCBDC   33C0                   xor     eax, eax
007BCBDE   55                     push    ebp

* Possible String Reference to: 'éÚ~ÄÿëÛ_^[‹å]Ã'
|
007BCBDF   6859CE7B00             push    $007BCE59

***** TRY
|
007BCBE4   64FF30                 push    dword ptr fs:[eax]
007BCBE7   648920                 mov     fs:[eax], esp
007BCBEA   8D55F8                 lea     edx, [ebp-$08]
007BCBED   8BC3                   mov     eax, ebx
007BCBEF   8B08                   mov     ecx, [eax]
007BCBF1   FF511C                 call    dword ptr [ecx+$1C]
007BCBF4   8B55F8                 mov     edx, [ebp-$08]
007BCBF7   8B476C                 mov     eax, [edi+$6C]

|
007BCBFA   E8119FDBFF             call    00576B10
007BCBFF   33C0                   xor     eax, eax
007BCC01   55                     push    ebp
007BCC02   6827CE7B00             push    $007BCE27

***** TRY
|
007BCC07   64FF30                 push    dword ptr fs:[eax]
007BCC0A   648920                 mov     fs:[eax], esp
007BCC0D   33C0                   xor     eax, eax
007BCC0F   55                     push    ebp
007BCC10   688BCD7B00             push    $007BCD8B

***** TRY
|
007BCC15   64FF30                 push    dword ptr fs:[eax]
007BCC18   648920                 mov     fs:[eax], esp
007BCC1B   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BCC20   8B406C                 mov     eax, [eax+$6C]
007BCC23   66BEECFF               mov     si, $FFEC

* Reference to: System.@CallDynaInst;
|
007BCC27   E8747BC4FF             call    004047A0
007BCC2C   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BCC31   8B406C                 mov     eax, [eax+$6C]
007BCC34   83C038                 add     eax, +$38

|
007BCC37   E86CE6C5FF             call    0041B2A8
007BCC3C   8BD8                   mov     ebx, eax
007BCC3E   6683FB0B               cmp     bx, +$0B
007BCC42   7527                   jnz     007BCC6B
007BCC44   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BCC49   8B406C                 mov     eax, [eax+$6C]
007BCC4C   83C038                 add     eax, +$38

* Reference to: Variants.@VarToBool(TVarData;TVarData):LongBool;
|
007BCC4F   E84C9AC5FF             call    004166A0
007BCC54   83E07F                 and     eax, +$7F
007BCC57   8B1485049D7D00         mov     edx, [$7D9D04+eax*4]
007BCC5E   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BCC61   E85EC0C5FF             call    00418CC4
007BCC66   E913010000             jmp     007BCD7E
007BCC6B   6681FB0001             cmp     bx, $0100
007BCC70   740C                   jz      007BCC7E
007BCC72   6683FB03               cmp     bx, +$03
007BCC76   7406                   jz      007BCC7E
007BCC78   6683FB05               cmp     bx, +$05
007BCC7C   7519                   jnz     007BCC97
007BCC7E   8B45FC                 mov     eax, [ebp-$04]
007BCC81   8B158CF57D00           mov     edx, [$007DF58C]
007BCC87   8B526C                 mov     edx, [edx+$6C]
007BCC8A   83C238                 add     edx, +$38

* Reference to: Variants.@VarCopy(TVarData;TVarData;TVarData;TVarData);
|
007BCC8D   E8FE7CC5FF             call    00414990
007BCC92   E9E7000000             jmp     007BCD7E
007BCC97   6685DB                 test    bx, bx
007BCC9A   7512                   jnz     007BCCAE
007BCC9C   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'Empty'
|
007BCC9F   BA70CE7B00             mov     edx, $007BCE70

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BCCA4   E81BC0C5FF             call    00418CC4
007BCCA9   E9D0000000             jmp     007BCD7E
007BCCAE   6683FB01               cmp     bx, +$01
007BCCB2   7512                   jnz     007BCCC6
007BCCB4   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'Null'
|
007BCCB7   BA80CE7B00             mov     edx, $007BCE80

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BCCBC   E803C0C5FF             call    00418CC4
007BCCC1   E9B8000000             jmp     007BCD7E

|
007BCCC6   E8152DDBFF             call    0056F9E0
007BCCCB   663BD8                 cmp     bx, ax
007BCCCE   755B                   jnz     007BCD2B
007BCCD0   8B476C                 mov     eax, [edi+$6C]
007BCCD3   83C038                 add     eax, +$38

|
007BCCD6   E8912FDBFF             call    0056FC6C
007BCCDB   8BD8                   mov     ebx, eax
007BCCDD   85DB                   test    ebx, ebx
007BCCDF   7512                   jnz     007BCCF3
007BCCE1   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'Object: nil'
|
007BCCE4   BA90CE7B00             mov     edx, $007BCE90

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BCCE9   E8D6BFC5FF             call    00418CC4
007BCCEE   E98B000000             jmp     007BCD7E
007BCCF3   8D95F0FEFFFF           lea     edx, [ebp+$FFFFFEF0]
007BCCF9   8B03                   mov     eax, [ebx]

* Reference to: System.TObject.ClassName(classofTObject):ShortString;
|
007BCCFB   E8EC77C4FF             call    004044EC
007BCD00   8D95F0FEFFFF           lea     edx, [ebp+$FFFFFEF0]
007BCD06   8D45F0                 lea     eax, [ebp-$10]

* Reference to: System.@LStrFromString(String;String;ShortString;ShortString);
|
007BCD09   E8F289C4FF             call    00405700
007BCD0E   8B4DF0                 mov     ecx, [ebp-$10]
007BCD11   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'Object: '
|
007BCD14   BAA4CE7B00             mov     edx, $007BCEA4

* Reference to: System.@LStrCat3;
|
007BCD19   E88A8AC4FF             call    004057A8
007BCD1E   8B55F4                 mov     edx, [ebp-$0C]
007BCD21   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BCD24   E89BBFC5FF             call    00418CC4
007BCD29   EB53                   jmp     007BCD7E

|
007BCD2B   E8D42CDBFF             call    0056FA04
007BCD30   663BD8                 cmp     bx, ax
007BCD33   753C                   jnz     007BCD71
007BCD35   8B476C                 mov     eax, [edi+$6C]
007BCD38   83C038                 add     eax, +$38

|
007BCD3B   E81830DBFF             call    0056FD58
007BCD40   8D95E8FEFFFF           lea     edx, [ebp+$FFFFFEE8]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007BCD46   E819E0C4FF             call    0040AD64
007BCD4B   8B8DE8FEFFFF           mov     ecx, [ebp+$FFFFFEE8]
007BCD51   8D85ECFEFFFF           lea     eax, [ebp+$FFFFFEEC]

* Possible String Reference to: 'Set: '
|
007BCD57   BAB8CE7B00             mov     edx, $007BCEB8

* Reference to: System.@LStrCat3;
|
007BCD5C   E8478AC4FF             call    004057A8
007BCD61   8B95ECFEFFFF           mov     edx, [ebp+$FFFFFEEC]
007BCD67   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BCD6A   E855BFC5FF             call    00418CC4
007BCD6F   EB0D                   jmp     007BCD7E
007BCD71   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: '!Unknown!'
|
007BCD74   BAC8CE7B00             mov     edx, $007BCEC8

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BCD79   E846BFC5FF             call    00418CC4
007BCD7E   33C0                   xor     eax, eax
007BCD80   5A                     pop     edx
007BCD81   59                     pop     ecx
007BCD82   59                     pop     ecx
007BCD83   648910                 mov     fs:[eax], edx
007BCD86   E98E000000             jmp     007BCE19

* Reference to: System.@HandleOnException;
|
007BCD8B   E9207EC4FF             jmp     00404BB0
007BCD90   0200                   add     al, byte ptr [eax]
007BCD92   0000                   add     [eax], al
007BCD94   48                     dec     eax
007BCD95   F8                     clc
007BCD96   56                     push    esi
007BCD97   00A4CD7B000000         add     [ebp+ecx*8+$007B], ah
007BCD9E   0000                   add     [eax], al
007BCDA0   02CE                   add     cl, dh
007BCDA2   7B00                   jnp     007BCDA4
007BCDA4   89C3                   mov     ebx, eax
007BCDA6   8D95E0FEFFFF           lea     edx, [ebp+$FFFFFEE0]
007BCDAC   8B4310                 mov     eax, [ebx+$10]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007BCDAF   E8B0DFC4FF             call    0040AD64
007BCDB4   FFB5E0FEFFFF           push    dword ptr [ebp+$FFFFFEE0]

* Possible String Reference to: ': '
|
007BCDBA   68DCCE7B00             push    $007BCEDC
007BCDBF   8D85DCFEFFFF           lea     eax, [ebp+$FFFFFEDC]
007BCDC5   50                     push    eax
007BCDC6   8B4304                 mov     eax, [ebx+$04]
007BCDC9   B9E8CE7B00             mov     ecx, $007BCEE8
007BCDCE   BAF4CE7B00             mov     edx, $007BCEF4

* Reference to : THiddenPopupObject._PROC_005268C4()
|
007BCDD3   E8EC9AD6FF             call    005268C4
007BCDD8   FFB5DCFEFFFF           push    dword ptr [ebp+$FFFFFEDC]
007BCDDE   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]
007BCDE4   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007BCDE9   E82E8AC4FF             call    0040581C
007BCDEE   8B95E4FEFFFF           mov     edx, [ebp+$FFFFFEE4]
007BCDF4   8B45FC                 mov     eax, [ebp-$04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BCDF7   E8C8BEC5FF             call    00418CC4
007BCDFC   837B14FF               cmp     dword ptr [ebx+$14], -$01
007BCE00   EB12                   jmp     007BCE14
007BCE02   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: 'error'
|
007BCE05   BA00CF7B00             mov     edx, $007BCF00

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BCE0A   E8B5BEC5FF             call    00418CC4

* Reference to: System.@RaiseAgain;
|
007BCE0F   E84880C4FF             call    00404E5C

* Reference to: System.@DoneExcept;
|
007BCE14   E89780C4FF             call    00404EB0
007BCE19   33C0                   xor     eax, eax
007BCE1B   5A                     pop     edx
007BCE1C   59                     pop     ecx
007BCE1D   59                     pop     ecx
007BCE1E   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BCE21   682ECE7B00             push    $007BCE2E
007BCE26   C3                     ret


* Reference to: System.@HandleFinally;
|
007BCE27   E90C7FC4FF             jmp     00404D38
007BCE2C   EBF8                   jmp     007BCE26

****** END
|
007BCE2E   33C0                   xor     eax, eax
007BCE30   5A                     pop     edx
007BCE31   59                     pop     ecx
007BCE32   59                     pop     ecx
007BCE33   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
007BCE36   6860CE7B00             push    $007BCE60
007BCE3B   8D85DCFEFFFF           lea     eax, [ebp+$FFFFFEDC]
007BCE41   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BCE46   E87586C4FF             call    004054C0
007BCE4B   8D45F0                 lea     eax, [ebp-$10]
007BCE4E   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BCE53   E86886C4FF             call    004054C0
007BCE58   C3                     ret

*)
end;

procedure TDmC._PROC_007BCE59(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007BCE59   E9DA7EC4FF             jmp     00404D38

|
007BCE5E   EBDB                   jmp     007BCE3B
007BCE60   5F                     pop     edi
007BCE61   5E                     pop     esi
007BCE62   5B                     pop     ebx
007BCE63   8BE5                   mov     esp, ebp
007BCE65   5D                     pop     ebp
007BCE66   C3                     ret

*)
end;

procedure TDmC._PROC_007BCECA(Sender : TObject);
begin
(*
007BCECA   6E                     outsb
007BCECB   6B6E6F77               imul    ebp, [esi+$6F], $77
007BCECF   6E                     outsb
007BCED0   2100                   and     [eax], eax
007BCED2   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BCF09(Sender : TObject);
begin
(*
007BCF09   8BEC                   mov     ebp, esp
007BCF0B   6A00                   push    $00
007BCF0D   6A00                   push    $00
007BCF0F   53                     push    ebx
007BCF10   56                     push    esi
007BCF11   8BDA                   mov     ebx, edx
007BCF13   8BF0                   mov     esi, eax
007BCF15   33C0                   xor     eax, eax
007BCF17   55                     push    ebp

* Possible String Reference to: 'ér}Äÿëë^[YY]Ã'
|
007BCF18   68C1CF7B00             push    $007BCFC1

***** TRY
|
007BCF1D   64FF30                 push    dword ptr fs:[eax]
007BCF20   648920                 mov     fs:[eax], esp
007BCF23   A168AB7D00             mov     eax, dword ptr [$007DAB68]
007BCF28   803800                 cmp     byte ptr [eax], $00
007BCF2B   743A                   jz      007BCF67
007BCF2D   6A00                   push    $00
007BCF2F   8D45FC                 lea     eax, [ebp-$04]
007BCF32   50                     push    eax
007BCF33   33C9                   xor     ecx, ecx
007BCF35   8B530C                 mov     edx, [ebx+$0C]
007BCF38   33C0                   xor     eax, eax

|
007BCF3A   E85128FFFF             call    007AF790
007BCF3F   8D45F8                 lea     eax, [ebp-$08]
007BCF42   50                     push    eax
007BCF43   B901000000             mov     ecx, $00000001
007BCF48   BA04000000             mov     edx, $00000004
007BCF4D   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrCopy;
|
007BCF50   E8678AC4FF             call    004059BC
007BCF55   8B45F8                 mov     eax, [ebp-$08]
007BCF58   BAD8CF7B00             mov     edx, $007BCFD8

* Reference to: System.@LStrCmp;
|
007BCF5D   E84689C4FF             call    004058A8
007BCF62   0F94C0                 setz    al
007BCF65   EB02                   jmp     007BCF69
007BCF67   B001                   mov     al, $01
007BCF69   84C0                   test    al, al
007BCF6B   7439                   jz      007BCFA6
007BCF6D   8BC3                   mov     eax, ebx

* Reference to class TIBDataSet
|
007BCF6F   8B15B4A55500           mov     edx, [$0055A5B4]

* Reference to: System.@IsClass(TObject;TClass):Boolean;
|
007BCF75   E8B677C4FF             call    00404730
007BCF7A   84C0                   test    al, al
007BCF7C   7428                   jz      007BCFA6
007BCF7E   8BC3                   mov     eax, ebx

* Reference to class TIBDataSet
|
007BCF80   8B15B4A55500           mov     edx, [$0055A5B4]

* Reference to: System.@AsClass(TObject;TClass):TObject;
|
007BCF86   E8C977C4FF             call    00404754

* Reference to: ArrowCha.TArrowSeries.GetArrowWidth(TArrowSeries):Integer;
|
007BCF8B   E8ACFBD9FF             call    0055CB3C
007BCF90   8BD0                   mov     edx, eax
007BCF92   8BC3                   mov     eax, ebx

|
007BCF94   E873BCFEFF             call    007A8C0C
007BCF99   84C0                   test    al, al
007BCF9B   7409                   jz      007BCFA6
007BCF9D   8BD3                   mov     edx, ebx
007BCF9F   8BC6                   mov     eax, esi

|
007BCFA1   E8C6FBFFFF             call    007BCB6C
007BCFA6   33C0                   xor     eax, eax
007BCFA8   5A                     pop     edx
007BCFA9   59                     pop     ecx
007BCFAA   59                     pop     ecx
007BCFAB   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[YY]Ã'
|
007BCFAE   68C8CF7B00             push    $007BCFC8
007BCFB3   8D45F8                 lea     eax, [ebp-$08]
007BCFB6   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BCFBB   E80085C4FF             call    004054C0
007BCFC0   C3                     ret


* Reference to: System.@HandleFinally;
|
007BCFC1   E9727DC4FF             jmp     00404D38
007BCFC6   EBEB                   jmp     007BCFB3

****** END
|
007BCFC8   5E                     pop     esi
007BCFC9   5B                     pop     ebx
007BCFCA   59                     pop     ecx
007BCFCB   59                     pop     ecx
007BCFCC   5D                     pop     ebp
007BCFCD   C3                     ret

*)
end;

procedure TDmC._PROC_007BCFDD(Sender : TObject);
begin
(*
007BCFDD   8BEC                   mov     ebp, esp

|
007BCFDF   E88CFBFFFF             call    007BCB70
007BCFE4   5D                     pop     ebp
007BCFE5   C3                     ret

*)
end;

procedure TDmC._PROC_007BCFE8(Sender : TObject);
begin
(*
007BCFE8   55                     push    ebp
007BCFE9   8BEC                   mov     ebp, esp
007BCFEB   8BC2                   mov     eax, edx

|
007BCFED   E8E6B2FEFF             call    007A82D8
007BCFF2   5D                     pop     ebp
007BCFF3   C3                     ret

*)
end;

procedure TDmC._PROC_007BCFF4(Sender : TObject);
begin
(*
007BCFF4   55                     push    ebp
007BCFF5   8BEC                   mov     ebp, esp
007BCFF7   6A00                   push    $00
007BCFF9   6A00                   push    $00
007BCFFB   53                     push    ebx
007BCFFC   56                     push    esi
007BCFFD   8BDA                   mov     ebx, edx
007BCFFF   8BF0                   mov     esi, eax
007BD001   33C0                   xor     eax, eax
007BD003   55                     push    ebp

* Possible String Reference to: 'é†|Äÿëë^[YY]Ã'
|
007BD004   68ADD07B00             push    $007BD0AD

***** TRY
|
007BD009   64FF30                 push    dword ptr fs:[eax]
007BD00C   648920                 mov     fs:[eax], esp
007BD00F   A168AB7D00             mov     eax, dword ptr [$007DAB68]
007BD014   803800                 cmp     byte ptr [eax], $00
007BD017   743A                   jz      007BD053
007BD019   6A00                   push    $00
007BD01B   8D45FC                 lea     eax, [ebp-$04]
007BD01E   50                     push    eax
007BD01F   33C9                   xor     ecx, ecx
007BD021   8B530C                 mov     edx, [ebx+$0C]
007BD024   33C0                   xor     eax, eax

|
007BD026   E86527FFFF             call    007AF790
007BD02B   8D45F8                 lea     eax, [ebp-$08]
007BD02E   50                     push    eax
007BD02F   B901000000             mov     ecx, $00000001
007BD034   BA03000000             mov     edx, $00000003
007BD039   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrCopy;
|
007BD03C   E87B89C4FF             call    004059BC
007BD041   8B45F8                 mov     eax, [ebp-$08]
007BD044   BAC4D07B00             mov     edx, $007BD0C4

* Reference to: System.@LStrCmp;
|
007BD049   E85A88C4FF             call    004058A8
007BD04E   0F94C0                 setz    al
007BD051   EB02                   jmp     007BD055
007BD053   B001                   mov     al, $01
007BD055   84C0                   test    al, al
007BD057   7439                   jz      007BD092
007BD059   8BC3                   mov     eax, ebx

* Reference to class TIBDataSet
|
007BD05B   8B15B4A55500           mov     edx, [$0055A5B4]

* Reference to: System.@IsClass(TObject;TClass):Boolean;
|
007BD061   E8CA76C4FF             call    00404730
007BD066   84C0                   test    al, al
007BD068   7428                   jz      007BD092
007BD06A   8BC3                   mov     eax, ebx

* Reference to class TIBDataSet
|
007BD06C   8B15B4A55500           mov     edx, [$0055A5B4]

* Reference to: System.@AsClass(TObject;TClass):TObject;
|
007BD072   E8DD76C4FF             call    00404754

* Reference to: ArrowCha.TArrowSeries.GetArrowWidth(TArrowSeries):Integer;
|
007BD077   E8C0FAD9FF             call    0055CB3C
007BD07C   8BD0                   mov     edx, eax
007BD07E   8BC3                   mov     eax, ebx

|
007BD080   E887BBFEFF             call    007A8C0C
007BD085   84C0                   test    al, al
007BD087   7409                   jz      007BD092
007BD089   8BD3                   mov     edx, ebx
007BD08B   8BC6                   mov     eax, esi

* Reference to : TDmC._PROC_007BCB74()
|
007BD08D   E8E2FAFFFF             call    007BCB74
007BD092   33C0                   xor     eax, eax
007BD094   5A                     pop     edx
007BD095   59                     pop     ecx
007BD096   59                     pop     ecx
007BD097   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[YY]Ã'
|
007BD09A   68B4D07B00             push    $007BD0B4
007BD09F   8D45F8                 lea     eax, [ebp-$08]
007BD0A2   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BD0A7   E81484C4FF             call    004054C0
007BD0AC   C3                     ret


* Reference to: System.@HandleFinally;
|
007BD0AD   E9867CC4FF             jmp     00404D38
007BD0B2   EBEB                   jmp     007BD09F

****** END
|
007BD0B4   5E                     pop     esi
007BD0B5   5B                     pop     ebx
007BD0B6   59                     pop     ecx
007BD0B7   59                     pop     ecx
007BD0B8   5D                     pop     ebp
007BD0B9   C3                     ret

*)
end;

procedure TDmC._PROC_007BD0C9(Sender : TObject);
begin
(*
007BD0C9   8BEC                   mov     ebp, esp
007BD0CB   33C9                   xor     ecx, ecx
007BD0CD   51                     push    ecx
007BD0CE   51                     push    ecx
007BD0CF   51                     push    ecx
007BD0D0   51                     push    ecx
007BD0D1   53                     push    ebx
007BD0D2   56                     push    esi
007BD0D3   8BF2                   mov     esi, edx
007BD0D5   33C0                   xor     eax, eax
007BD0D7   55                     push    ebp

* Possible String Reference to: 'éŸ{Äÿëë^[‹å]Ã'
|
007BD0D8   6894D17B00             push    $007BD194

***** TRY
|
007BD0DD   64FF30                 push    dword ptr fs:[eax]
007BD0E0   648920                 mov     fs:[eax], esp
007BD0E3   A168AB7D00             mov     eax, dword ptr [$007DAB68]
007BD0E8   803800                 cmp     byte ptr [eax], $00
007BD0EB   743A                   jz      007BD127
007BD0ED   6A00                   push    $00
007BD0EF   8D45FC                 lea     eax, [ebp-$04]
007BD0F2   50                     push    eax
007BD0F3   33C9                   xor     ecx, ecx
007BD0F5   8B560C                 mov     edx, [esi+$0C]
007BD0F8   33C0                   xor     eax, eax

|
007BD0FA   E89126FFFF             call    007AF790
007BD0FF   8D45F4                 lea     eax, [ebp-$0C]
007BD102   50                     push    eax
007BD103   B901000000             mov     ecx, $00000001
007BD108   BA03000000             mov     edx, $00000003
007BD10D   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrCopy;
|
007BD110   E8A788C4FF             call    004059BC
007BD115   8B45F4                 mov     eax, [ebp-$0C]
007BD118   BAACD17B00             mov     edx, $007BD1AC

* Reference to: System.@LStrCmp;
|
007BD11D   E88687C4FF             call    004058A8
007BD122   0F94C3                 setz    bl
007BD125   EB02                   jmp     007BD129
007BD127   B301                   mov     bl, $01
007BD129   8D55F8                 lea     edx, [ebp-$08]
007BD12C   8B4608                 mov     eax, [esi+$08]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
007BD12F   E830D4C4FF             call    0040A564
007BD134   84DB                   test    bl, bl
007BD136   7541                   jnz     007BD179
007BD138   6A00                   push    $00

* Possible String Reference to: 'Sem permissão para alterar! ('
|
007BD13A   68B8D17B00             push    $007BD1B8
007BD13F   FF7608                 push    dword ptr [esi+$08]
007BD142   68E0D17B00             push    $007BD1E0
007BD147   68ECD17B00             push    $007BD1EC
007BD14C   68ECD17B00             push    $007BD1EC

* Possible String Reference to: 'Converse com o administrador do sis
|                                tema para obter maiores informações
|                                !'
|
007BD151   68F8D17B00             push    $007BD1F8
007BD156   8D45F0                 lea     eax, [ebp-$10]
007BD159   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrCatN;
|
007BD15E   E8B986C4FF             call    0040581C
007BD163   8B45F0                 mov     eax, [ebp-$10]
007BD166   668B0D40D27B00         mov     cx, word ptr [$007BD240]
007BD16D   33D2                   xor     edx, edx

|
007BD16F   E8B869C8FF             call    00443B2C

* Reference to: SysUtils.Abort;
|
007BD174   E80B2DC5FF             call    0040FE84
007BD179   33C0                   xor     eax, eax
007BD17B   5A                     pop     edx
007BD17C   59                     pop     ecx
007BD17D   59                     pop     ecx
007BD17E   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[‹å]Ã'
|
007BD181   689BD17B00             push    $007BD19B
007BD186   8D45F0                 lea     eax, [ebp-$10]
007BD189   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BD18E   E82D83C4FF             call    004054C0
007BD193   C3                     ret


* Reference to: System.@HandleFinally;
|
007BD194   E99F7BC4FF             jmp     00404D38
007BD199   EBEB                   jmp     007BD186

****** END
|
007BD19B   5E                     pop     esi
007BD19C   5B                     pop     ebx
007BD19D   8BE5                   mov     esp, ebp
007BD19F   5D                     pop     ebp
007BD1A0   C3                     ret

*)
end;

procedure TDmC._PROC_007BD245(Sender : TObject);
begin
(*
007BD245   8BEC                   mov     ebp, esp
007BD247   6A00                   push    $00
007BD249   6A00                   push    $00
007BD24B   6A00                   push    $00
007BD24D   53                     push    ebx
007BD24E   56                     push    esi
007BD24F   8BDA                   mov     ebx, edx
007BD251   8BF0                   mov     esi, eax
007BD253   33C0                   xor     eax, eax
007BD255   55                     push    ebp

* Possible String Reference to: 'é!zÄÿëë^[‹å]Ã'
|
007BD256   6812D37B00             push    $007BD312

***** TRY
|
007BD25B   64FF30                 push    dword ptr fs:[eax]
007BD25E   648920                 mov     fs:[eax], esp
007BD261   A168AB7D00             mov     eax, dword ptr [$007DAB68]
007BD266   803800                 cmp     byte ptr [eax], $00
007BD269   743A                   jz      007BD2A5
007BD26B   6A00                   push    $00
007BD26D   8D45FC                 lea     eax, [ebp-$04]
007BD270   50                     push    eax
007BD271   33C9                   xor     ecx, ecx
007BD273   8B530C                 mov     edx, [ebx+$0C]
007BD276   33C0                   xor     eax, eax

|
007BD278   E81325FFFF             call    007AF790
007BD27D   8D45F8                 lea     eax, [ebp-$08]
007BD280   50                     push    eax
007BD281   B901000000             mov     ecx, $00000001
007BD286   BA02000000             mov     edx, $00000002
007BD28B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrCopy;
|
007BD28E   E82987C4FF             call    004059BC
007BD293   8B45F8                 mov     eax, [ebp-$08]
007BD296   BA28D37B00             mov     edx, $007BD328

* Reference to: System.@LStrCmp;
|
007BD29B   E80886C4FF             call    004058A8
007BD2A0   0F94C0                 setz    al
007BD2A3   EB02                   jmp     007BD2A7
007BD2A5   B001                   mov     al, $01
007BD2A7   84C0                   test    al, al
007BD2A9   7543                   jnz     007BD2EE
007BD2AB   6A00                   push    $00

* Possible String Reference to: 'Sem permissão para adicionar! ('
|
007BD2AD   6834D37B00             push    $007BD334
007BD2B2   FF7308                 push    dword ptr [ebx+$08]
007BD2B5   685CD37B00             push    $007BD35C
007BD2BA   6868D37B00             push    $007BD368
007BD2BF   6868D37B00             push    $007BD368

* Possible String Reference to: 'Converse com o administrador do sis
|                                tema para obter maiores informações
|                                !'
|
007BD2C4   6874D37B00             push    $007BD374
007BD2C9   8D45F4                 lea     eax, [ebp-$0C]
007BD2CC   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrCatN;
|
007BD2D1   E84685C4FF             call    0040581C
007BD2D6   8B45F4                 mov     eax, [ebp-$0C]
007BD2D9   668B0DBCD37B00         mov     cx, word ptr [$007BD3BC]
007BD2E0   33D2                   xor     edx, edx

|
007BD2E2   E84568C8FF             call    00443B2C

* Reference to: SysUtils.Abort;
|
007BD2E7   E8982BC5FF             call    0040FE84
007BD2EC   EB09                   jmp     007BD2F7
007BD2EE   8BD3                   mov     edx, ebx
007BD2F0   8BC6                   mov     eax, esi

* Reference to : TDmC._PROC_007BCB78()
|
007BD2F2   E881F8FFFF             call    007BCB78
007BD2F7   33C0                   xor     eax, eax
007BD2F9   5A                     pop     edx
007BD2FA   59                     pop     ecx
007BD2FB   59                     pop     ecx
007BD2FC   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '^[‹å]Ã'
|
007BD2FF   6819D37B00             push    $007BD319
007BD304   8D45F4                 lea     eax, [ebp-$0C]
007BD307   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BD30C   E8AF81C4FF             call    004054C0
007BD311   C3                     ret


* Reference to: System.@HandleFinally;
|
007BD312   E9217AC4FF             jmp     00404D38
007BD317   EBEB                   jmp     007BD304

****** END
|
007BD319   5E                     pop     esi
007BD31A   5B                     pop     ebx
007BD31B   8BE5                   mov     esp, ebp
007BD31D   5D                     pop     ebp
007BD31E   C3                     ret

*)
end;

procedure TDmC._PROC_007BD3C1(Sender : TObject);
begin
(*
007BD3C1   8BEC                   mov     ebp, esp
007BD3C3   33C9                   xor     ecx, ecx
007BD3C5   51                     push    ecx
007BD3C6   51                     push    ecx
007BD3C7   51                     push    ecx
007BD3C8   51                     push    ecx
007BD3C9   53                     push    ebx
007BD3CA   56                     push    esi
007BD3CB   57                     push    edi
007BD3CC   8BF2                   mov     esi, edx
007BD3CE   8BF8                   mov     edi, eax
007BD3D0   33C0                   xor     eax, eax
007BD3D2   55                     push    ebp

* Possible String Reference to: 'éTxÄÿëë_^[‹å]Ã'
|
007BD3D3   68DFD47B00             push    $007BD4DF

***** TRY
|
007BD3D8   64FF30                 push    dword ptr fs:[eax]
007BD3DB   648920                 mov     fs:[eax], esp
007BD3DE   33C0                   xor     eax, eax
007BD3E0   55                     push    ebp
007BD3E1   68BDD47B00             push    $007BD4BD

***** TRY
|
007BD3E6   64FF30                 push    dword ptr fs:[eax]
007BD3E9   648920                 mov     fs:[eax], esp
007BD3EC   33C0                   xor     eax, eax
007BD3EE   55                     push    ebp
007BD3EF   68A5D47B00             push    $007BD4A5

***** TRY
|
007BD3F4   64FF30                 push    dword ptr fs:[eax]
007BD3F7   648920                 mov     fs:[eax], esp
007BD3FA   A168AB7D00             mov     eax, dword ptr [$007DAB68]
007BD3FF   803800                 cmp     byte ptr [eax], $00
007BD402   743A                   jz      007BD43E
007BD404   6A00                   push    $00
007BD406   8D45FC                 lea     eax, [ebp-$04]
007BD409   50                     push    eax
007BD40A   8B560C                 mov     edx, [esi+$0C]
007BD40D   33C9                   xor     ecx, ecx
007BD40F   33C0                   xor     eax, eax

|
007BD411   E87A23FFFF             call    007AF790
007BD416   8D45F4                 lea     eax, [ebp-$0C]
007BD419   50                     push    eax
007BD41A   B901000000             mov     ecx, $00000001
007BD41F   BA03000000             mov     edx, $00000003
007BD424   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrCopy;
|
007BD427   E89085C4FF             call    004059BC
007BD42C   8B45F4                 mov     eax, [ebp-$0C]
007BD42F   BAF8D47B00             mov     edx, $007BD4F8

* Reference to: System.@LStrCmp;
|
007BD434   E86F84C4FF             call    004058A8
007BD439   0F94C3                 setz    bl
007BD43C   EB02                   jmp     007BD440
007BD43E   B301                   mov     bl, $01
007BD440   8D55F8                 lea     edx, [ebp-$08]
007BD443   8B4608                 mov     eax, [esi+$08]

* Reference to: SysUtils.LowerCase(AnsiString):AnsiString;
|
007BD446   E819D1C4FF             call    0040A564
007BD44B   84DB                   test    bl, bl
007BD44D   740B                   jz      007BD45A
007BD44F   8BD6                   mov     edx, esi
007BD451   8BC7                   mov     eax, edi

* Reference to : TDmC._PROC_007BCB7C()
|
007BD453   E824F7FFFF             call    007BCB7C
007BD458   EB41                   jmp     007BD49B
007BD45A   6A00                   push    $00

* Possible String Reference to: 'Sem permissão para gravar! ('
|
007BD45C   6804D57B00             push    $007BD504
007BD461   FF7608                 push    dword ptr [esi+$08]
007BD464   682CD57B00             push    $007BD52C
007BD469   6838D57B00             push    $007BD538
007BD46E   6838D57B00             push    $007BD538

* Possible String Reference to: 'Converse com o administrador do sis
|                                tema para obter maiores informações
|                                !'
|
007BD473   6844D57B00             push    $007BD544
007BD478   8D45F0                 lea     eax, [ebp-$10]
007BD47B   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrCatN;
|
007BD480   E89783C4FF             call    0040581C
007BD485   8B45F0                 mov     eax, [ebp-$10]
007BD488   668B0D8CD57B00         mov     cx, word ptr [$007BD58C]
007BD48F   33D2                   xor     edx, edx

|
007BD491   E89666C8FF             call    00443B2C

* Reference to: SysUtils.Abort;
|
007BD496   E8E929C5FF             call    0040FE84
007BD49B   33C0                   xor     eax, eax
007BD49D   5A                     pop     edx
007BD49E   59                     pop     ecx
007BD49F   59                     pop     ecx
007BD4A0   648910                 mov     fs:[eax], edx
007BD4A3   EB0A                   jmp     007BD4AF

* Reference to: System.@HandleAnyException;
|
007BD4A5   E9DA75C4FF             jmp     00404A84

* Reference to: System.@DoneExcept;
|
007BD4AA   E8017AC4FF             call    00404EB0

****** END
|
007BD4AF   33C0                   xor     eax, eax
007BD4B1   5A                     pop     edx
007BD4B2   59                     pop     ecx
007BD4B3   59                     pop     ecx
007BD4B4   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BD4B7   68C4D47B00             push    $007BD4C4
007BD4BC   C3                     ret


* Reference to: System.@HandleFinally;
|
007BD4BD   E97678C4FF             jmp     00404D38
007BD4C2   EBF8                   jmp     007BD4BC

****** END
|
007BD4C4   33C0                   xor     eax, eax
007BD4C6   5A                     pop     edx
007BD4C7   59                     pop     ecx
007BD4C8   59                     pop     ecx
007BD4C9   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[‹å]Ã'
|
007BD4CC   68E6D47B00             push    $007BD4E6
007BD4D1   8D45F0                 lea     eax, [ebp-$10]
007BD4D4   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BD4D9   E8E27FC4FF             call    004054C0
007BD4DE   C3                     ret


* Reference to: System.@HandleFinally;
|
007BD4DF   E95478C4FF             jmp     00404D38
007BD4E4   EBEB                   jmp     007BD4D1

****** END
|
007BD4E6   5F                     pop     edi
007BD4E7   5E                     pop     esi
007BD4E8   5B                     pop     ebx
007BD4E9   8BE5                   mov     esp, ebp
007BD4EB   5D                     pop     ebp
007BD4EC   C3                     ret

*)
end;

procedure TDmC._PROC_007BD591(Sender : TObject);
begin
(*
007BD591   8BEC                   mov     ebp, esp
007BD593   B938000000             mov     ecx, $00000038
007BD598   6A00                   push    $00
007BD59A   6A00                   push    $00
007BD59C   49                     dec     ecx
007BD59D   75F9                   jnz     007BD598
007BD59F   53                     push    ebx
007BD5A0   8B1DE4AF7D00           mov     ebx, [$007DAFE4]
007BD5A6   33C0                   xor     eax, eax
007BD5A8   55                     push    ebp

* Possible String Reference to: 'é¨pÄÿéÔþÿÿ[‹å]Ã'
|
007BD5A9   688BDC7B00             push    $007BDC8B

***** TRY
|
007BD5AE   64FF30                 push    dword ptr fs:[eax]
007BD5B1   648920                 mov     fs:[eax], esp
007BD5B4   8D4DF0                 lea     ecx, [ebp-$10]
007BD5B7   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkFisJur'
|
007BD5B9   BAA4DC7B00             mov     edx, $007BDCA4

|
007BD5BE   E87DA8FFFF             call    007B7E40
007BD5C3   8D45F0                 lea     eax, [ebp-$10]
007BD5C6   50                     push    eax
007BD5C7   B046                   mov     al, $46
007BD5C9   8845DD                 mov     [ebp-$23], al
007BD5CC   C645DC01               mov     byte ptr [ebp-$24], $01
007BD5D0   8D45E0                 lea     eax, [ebp-$20]
007BD5D3   8D55DC                 lea     edx, [ebp-$24]

* Reference to: DB.TWideStringField.SetAsString(TWideStringField;AnsiString);
|
007BD5D6   E815B7C5FF             call    00418CF0
007BD5DB   8D55E0                 lea     edx, [ebp-$20]
007BD5DE   58                     pop     eax

* Reference to: Variants.@VarCmpEQ(TVarData;TVarData;TVarData;TVarData);
|
007BD5DF   E820FBC5FF             call    0041D104
007BD5E4   0F8522020000           jnz     007BD80C
007BD5EA   8D4DD8                 lea     ecx, [ebp-$28]
007BD5ED   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BD5EF   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BD5F4   E897ABFFFF             call    007B8190
007BD5F9   8B45D8                 mov     eax, [ebp-$28]

* Reference to: System.@LStrLen(String):Integer;
|
007BD5FC   E85B81C4FF             call    0040575C
007BD601   83F80B                 cmp     eax, +$0B
007BD604   0F85F7000000           jnz     007BD701
007BD60A   8D4DBC                 lea     ecx, [ebp-$44]
007BD60D   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BD60F   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BD614   E877ABFFFF             call    007B8190
007BD619   8B55BC                 mov     edx, [ebp-$44]
007BD61C   8D4DC0                 lea     ecx, [ebp-$40]

* Possible String Reference to: '###\.###\.###\-##;0;'
|
007BD61F   B8C8DC7B00             mov     eax, $007BDCC8

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
007BD624   E88B0FD1FF             call    004CE5B4
007BD629   FF75C0                 push    dword ptr [ebp-$40]

* Possible String Reference to: ' - '
|
007BD62C   68E8DC7B00             push    $007BDCE8
007BD631   8D4DB8                 lea     ecx, [ebp-$48]
007BD634   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkRazao'
|
007BD636   BAF4DC7B00             mov     edx, $007BDCF4

* Reference to : tArrayTable._PROC_007B8190()
|
007BD63B   E850ABFFFF             call    007B8190
007BD640   FF75B8                 push    dword ptr [ebp-$48]

* Possible String Reference to: ' - '
|
007BD643   68E8DC7B00             push    $007BDCE8
007BD648   8D4DB4                 lea     ecx, [ebp-$4C]
007BD64B   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkEndClie'
|
007BD64D   BA04DD7B00             mov     edx, $007BDD04

* Reference to : tArrayTable._PROC_007B8190()
|
007BD652   E839ABFFFF             call    007B8190
007BD657   FF75B4                 push    dword ptr [ebp-$4C]

* Possible String Reference to: ', '
|
007BD65A   6818DD7B00             push    $007BDD18
007BD65F   8D4DB0                 lea     ecx, [ebp-$50]
007BD662   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkNumEndClie'
|
007BD664   BA24DD7B00             mov     edx, $007BDD24

* Reference to : tArrayTable._PROC_007B8190()
|
007BD669   E822ABFFFF             call    007B8190
007BD66E   FF75B0                 push    dword ptr [ebp-$50]

* Possible String Reference to: ' - '
|
007BD671   68E8DC7B00             push    $007BDCE8
007BD676   8D4DA8                 lea     ecx, [ebp-$58]
007BD679   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkCEPClie'
|
007BD67B   BA3CDD7B00             mov     edx, $007BDD3C

* Reference to : tArrayTable._PROC_007B8190()
|
007BD680   E80BABFFFF             call    007B8190
007BD685   8B55A8                 mov     edx, [ebp-$58]
007BD688   8D4DAC                 lea     ecx, [ebp-$54]

* Possible String Reference to: '99999\-999;0;'
|
007BD68B   B850DD7B00             mov     eax, $007BDD50

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
007BD690   E81F0FD1FF             call    004CE5B4
007BD695   FF75AC                 push    dword ptr [ebp-$54]
007BD698   8D45C4                 lea     eax, [ebp-$3C]
007BD69B   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrCatN;
|
007BD6A0   E87781C4FF             call    0040581C
007BD6A5   8B55C4                 mov     edx, [ebp-$3C]
007BD6A8   8D45C8                 lea     eax, [ebp-$38]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BD6AB   E814B6C5FF             call    00418CC4
007BD6B0   8D4DC8                 lea     ecx, [ebp-$38]
007BD6B3   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccInfoClie'
|
007BD6B5   BA68DD7B00             mov     edx, $007BDD68

* Reference to : tArrayTable._PROC_007B767C()
|
007BD6BA   E8BD9FFFFF             call    007B767C
007BD6BF   8D4D90                 lea     ecx, [ebp-$70]
007BD6C2   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BD6C4   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BD6C9   E8C2AAFFFF             call    007B8190
007BD6CE   8B4590                 mov     eax, [ebp-$70]
007BD6D1   50                     push    eax
007BD6D2   8D4594                 lea     eax, [ebp-$6C]
007BD6D5   50                     push    eax

* Possible String Reference to: '###\.###\.###\-##;0;'
|
007BD6D6   B8C8DC7B00             mov     eax, $007BDCC8
007BD6DB   59                     pop     ecx
007BD6DC   5A                     pop     edx

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
007BD6DD   E8D20ED1FF             call    004CE5B4
007BD6E2   8B5594                 mov     edx, [ebp-$6C]
007BD6E5   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BD6E8   E8D7B5C5FF             call    00418CC4
007BD6ED   8D4D98                 lea     ecx, [ebp-$68]
007BD6F0   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccCgcClie'
|
007BD6F2   BA7CDD7B00             mov     edx, $007BDD7C

* Reference to : tArrayTable._PROC_007B767C()
|
007BD6F7   E8809FFFFF             call    007B767C
007BD6FC   E921040000             jmp     007BDB22
007BD701   8D8D78FFFFFF           lea     ecx, [ebp+$FFFFFF78]
007BD707   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BD709   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BD70E   E87DAAFFFF             call    007B8190
007BD713   FFB578FFFFFF           push    dword ptr [ebp+$FFFFFF78]

* Possible String Reference to: ' - '
|
007BD719   68E8DC7B00             push    $007BDCE8
007BD71E   8D8D74FFFFFF           lea     ecx, [ebp+$FFFFFF74]
007BD724   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkRazao'
|
007BD726   BAF4DC7B00             mov     edx, $007BDCF4

* Reference to : tArrayTable._PROC_007B8190()
|
007BD72B   E860AAFFFF             call    007B8190
007BD730   FFB574FFFFFF           push    dword ptr [ebp+$FFFFFF74]

* Possible String Reference to: ' - '
|
007BD736   68E8DC7B00             push    $007BDCE8
007BD73B   8D8D70FFFFFF           lea     ecx, [ebp+$FFFFFF70]
007BD741   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkEndClie'
|
007BD743   BA04DD7B00             mov     edx, $007BDD04

* Reference to : tArrayTable._PROC_007B8190()
|
007BD748   E843AAFFFF             call    007B8190
007BD74D   FFB570FFFFFF           push    dword ptr [ebp+$FFFFFF70]

* Possible String Reference to: ', '
|
007BD753   6818DD7B00             push    $007BDD18
007BD758   8D8D6CFFFFFF           lea     ecx, [ebp+$FFFFFF6C]
007BD75E   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkNumEndClie'
|
007BD760   BA24DD7B00             mov     edx, $007BDD24

* Reference to : tArrayTable._PROC_007B8190()
|
007BD765   E826AAFFFF             call    007B8190
007BD76A   FFB56CFFFFFF           push    dword ptr [ebp+$FFFFFF6C]

* Possible String Reference to: ' - '
|
007BD770   68E8DC7B00             push    $007BDCE8
007BD775   8D8D64FFFFFF           lea     ecx, [ebp+$FFFFFF64]
007BD77B   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkCEPClie'
|
007BD77D   BA3CDD7B00             mov     edx, $007BDD3C

* Reference to : tArrayTable._PROC_007B8190()
|
007BD782   E809AAFFFF             call    007B8190
007BD787   8B8564FFFFFF           mov     eax, [ebp+$FFFFFF64]
007BD78D   50                     push    eax

* Possible String Reference to: '99999\-999;0;'
|
007BD78E   B850DD7B00             mov     eax, $007BDD50
007BD793   8D8D68FFFFFF           lea     ecx, [ebp+$FFFFFF68]
007BD799   5A                     pop     edx

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
007BD79A   E8150ED1FF             call    004CE5B4
007BD79F   FFB568FFFFFF           push    dword ptr [ebp+$FFFFFF68]
007BD7A5   8D857CFFFFFF           lea     eax, [ebp+$FFFFFF7C]
007BD7AB   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrCatN;
|
007BD7B0   E86780C4FF             call    0040581C
007BD7B5   8B957CFFFFFF           mov     edx, [ebp+$FFFFFF7C]
007BD7BB   8D4580                 lea     eax, [ebp-$80]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BD7BE   E801B5C5FF             call    00418CC4
007BD7C3   8D4D80                 lea     ecx, [ebp-$80]
007BD7C6   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccInfoClie'
|
007BD7C8   BA68DD7B00             mov     edx, $007BDD68

* Reference to : tArrayTable._PROC_007B767C()
|
007BD7CD   E8AA9EFFFF             call    007B767C
007BD7D2   8D8D50FFFFFF           lea     ecx, [ebp+$FFFFFF50]
007BD7D8   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BD7DA   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BD7DF   E8ACA9FFFF             call    007B8190
007BD7E4   8B9550FFFFFF           mov     edx, [ebp+$FFFFFF50]
007BD7EA   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BD7F0   E8CFB4C5FF             call    00418CC4
007BD7F5   8D8D54FFFFFF           lea     ecx, [ebp+$FFFFFF54]
007BD7FB   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccCgcClie'
|
007BD7FD   BA7CDD7B00             mov     edx, $007BDD7C

* Reference to : tArrayTable._PROC_007B767C()
|
007BD802   E8759EFFFF             call    007B767C
007BD807   E916030000             jmp     007BDB22
007BD80C   8D8D4CFFFFFF           lea     ecx, [ebp+$FFFFFF4C]
007BD812   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BD814   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BD819   E872A9FFFF             call    007B8190
007BD81E   8B854CFFFFFF           mov     eax, [ebp+$FFFFFF4C]

* Reference to: System.@LStrLen(String):Integer;
|
007BD824   E8337FC4FF             call    0040575C
007BD829   83F80E                 cmp     eax, +$0E
007BD82C   0F853F010000           jnz     007BD971
007BD832   8D8D30FFFFFF           lea     ecx, [ebp+$FFFFFF30]
007BD838   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BD83A   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BD83F   E84CA9FFFF             call    007B8190
007BD844   8B9530FFFFFF           mov     edx, [ebp+$FFFFFF30]
007BD84A   8D8D34FFFFFF           lea     ecx, [ebp+$FFFFFF34]

* Possible String Reference to: '##\.###\.###\/####\-##;0;'
|
007BD850   B890DD7B00             mov     eax, $007BDD90

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
007BD855   E85A0DD1FF             call    004CE5B4
007BD85A   FFB534FFFFFF           push    dword ptr [ebp+$FFFFFF34]

* Possible String Reference to: ' - '
|
007BD860   68E8DC7B00             push    $007BDCE8
007BD865   8D8D2CFFFFFF           lea     ecx, [ebp+$FFFFFF2C]
007BD86B   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkRazao'
|
007BD86D   BAF4DC7B00             mov     edx, $007BDCF4

* Reference to : tArrayTable._PROC_007B8190()
|
007BD872   E819A9FFFF             call    007B8190
007BD877   FFB52CFFFFFF           push    dword ptr [ebp+$FFFFFF2C]

* Possible String Reference to: ' - '
|
007BD87D   68E8DC7B00             push    $007BDCE8
007BD882   8D8D28FFFFFF           lea     ecx, [ebp+$FFFFFF28]
007BD888   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkEndClie'
|
007BD88A   BA04DD7B00             mov     edx, $007BDD04

* Reference to : tArrayTable._PROC_007B8190()
|
007BD88F   E8FCA8FFFF             call    007B8190
007BD894   FFB528FFFFFF           push    dword ptr [ebp+$FFFFFF28]

* Possible String Reference to: ', '
|
007BD89A   6818DD7B00             push    $007BDD18
007BD89F   8D8D24FFFFFF           lea     ecx, [ebp+$FFFFFF24]
007BD8A5   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkNumEndClie'
|
007BD8A7   BA24DD7B00             mov     edx, $007BDD24

* Reference to : tArrayTable._PROC_007B8190()
|
007BD8AC   E8DFA8FFFF             call    007B8190
007BD8B1   FFB524FFFFFF           push    dword ptr [ebp+$FFFFFF24]

* Possible String Reference to: ' - '
|
007BD8B7   68E8DC7B00             push    $007BDCE8
007BD8BC   8D8D1CFFFFFF           lea     ecx, [ebp+$FFFFFF1C]
007BD8C2   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkCEPClie'
|
007BD8C4   BA3CDD7B00             mov     edx, $007BDD3C

* Reference to : tArrayTable._PROC_007B8190()
|
007BD8C9   E8C2A8FFFF             call    007B8190
007BD8CE   8B851CFFFFFF           mov     eax, [ebp+$FFFFFF1C]
007BD8D4   50                     push    eax

* Possible String Reference to: '99999\-999;0;'
|
007BD8D5   B850DD7B00             mov     eax, $007BDD50
007BD8DA   8D8D20FFFFFF           lea     ecx, [ebp+$FFFFFF20]
007BD8E0   5A                     pop     edx

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
007BD8E1   E8CE0CD1FF             call    004CE5B4
007BD8E6   FFB520FFFFFF           push    dword ptr [ebp+$FFFFFF20]
007BD8EC   8D8538FFFFFF           lea     eax, [ebp+$FFFFFF38]
007BD8F2   BA09000000             mov     edx, $00000009

* Reference to: System.@LStrCatN;
|
007BD8F7   E8207FC4FF             call    0040581C
007BD8FC   8B9538FFFFFF           mov     edx, [ebp+$FFFFFF38]
007BD902   8D853CFFFFFF           lea     eax, [ebp+$FFFFFF3C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BD908   E8B7B3C5FF             call    00418CC4
007BD90D   8D8D3CFFFFFF           lea     ecx, [ebp+$FFFFFF3C]
007BD913   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccInfoClie'
|
007BD915   BA68DD7B00             mov     edx, $007BDD68

* Reference to : tArrayTable._PROC_007B767C()
|
007BD91A   E85D9DFFFF             call    007B767C
007BD91F   8D8D04FFFFFF           lea     ecx, [ebp+$FFFFFF04]
007BD925   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BD927   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BD92C   E85FA8FFFF             call    007B8190
007BD931   8B8504FFFFFF           mov     eax, [ebp+$FFFFFF04]
007BD937   50                     push    eax

* Possible String Reference to: '##\.###\.###\/####\-##;0;'
|
007BD938   B890DD7B00             mov     eax, $007BDD90
007BD93D   8D8D08FFFFFF           lea     ecx, [ebp+$FFFFFF08]
007BD943   5A                     pop     edx

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
007BD944   E86B0CD1FF             call    004CE5B4
007BD949   8B9508FFFFFF           mov     edx, [ebp+$FFFFFF08]
007BD94F   8D850CFFFFFF           lea     eax, [ebp+$FFFFFF0C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BD955   E86AB3C5FF             call    00418CC4
007BD95A   8D8D0CFFFFFF           lea     ecx, [ebp+$FFFFFF0C]
007BD960   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccCgcClie'
|
007BD962   BA7CDD7B00             mov     edx, $007BDD7C

* Reference to : tArrayTable._PROC_007B767C()
|
007BD967   E8109DFFFF             call    007B767C
007BD96C   E9B1010000             jmp     007BDB22
007BD971   8D8DF0FEFFFF           lea     ecx, [ebp+$FFFFFEF0]
007BD977   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BD979   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BD97E   E80DA8FFFF             call    007B8190
007BD983   8D85F0FEFFFF           lea     eax, [ebp+$FFFFFEF0]

* Possible String Reference to: ' - '
|
007BD989   BAE8DC7B00             mov     edx, $007BDCE8

* Reference to: System.@LStrCat;
|
007BD98E   E8D17DC4FF             call    00405764
007BD993   8B95F0FEFFFF           mov     edx, [ebp+$FFFFFEF0]
007BD999   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BD99F   E820B3C5FF             call    00418CC4
007BD9A4   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
007BD9AA   50                     push    eax
007BD9AB   8D8DE0FEFFFF           lea     ecx, [ebp+$FFFFFEE0]
007BD9B1   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkRazao'
|
007BD9B3   BAF4DC7B00             mov     edx, $007BDCF4

|
007BD9B8   E883A4FFFF             call    007B7E40
007BD9BD   8D95E0FEFFFF           lea     edx, [ebp+$FFFFFEE0]
007BD9C3   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007BD9C4   E8DBF6C5FF             call    0041D0A4
007BD9C9   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
007BD9CF   50                     push    eax
007BD9D0   8D85D0FEFFFF           lea     eax, [ebp+$FFFFFED0]

* Possible String Reference to: ' - '
|
007BD9D6   BAE8DC7B00             mov     edx, $007BDCE8

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BD9DB   E8E4B2C5FF             call    00418CC4
007BD9E0   8D95D0FEFFFF           lea     edx, [ebp+$FFFFFED0]
007BD9E6   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007BD9E7   E8B8F6C5FF             call    0041D0A4
007BD9EC   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
007BD9F2   50                     push    eax
007BD9F3   8D8DC0FEFFFF           lea     ecx, [ebp+$FFFFFEC0]
007BD9F9   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkEndClie'
|
007BD9FB   BA04DD7B00             mov     edx, $007BDD04

|
007BDA00   E83BA4FFFF             call    007B7E40
007BDA05   8D95C0FEFFFF           lea     edx, [ebp+$FFFFFEC0]
007BDA0B   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007BDA0C   E893F6C5FF             call    0041D0A4
007BDA11   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
007BDA17   50                     push    eax
007BDA18   8D85B0FEFFFF           lea     eax, [ebp+$FFFFFEB0]

* Possible String Reference to: ', '
|
007BDA1E   BA18DD7B00             mov     edx, $007BDD18

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BDA23   E89CB2C5FF             call    00418CC4
007BDA28   8D95B0FEFFFF           lea     edx, [ebp+$FFFFFEB0]
007BDA2E   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007BDA2F   E870F6C5FF             call    0041D0A4
007BDA34   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
007BDA3A   50                     push    eax
007BDA3B   8D8DA0FEFFFF           lea     ecx, [ebp+$FFFFFEA0]
007BDA41   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkNumEndClie'
|
007BDA43   BA24DD7B00             mov     edx, $007BDD24

|
007BDA48   E8F3A3FFFF             call    007B7E40
007BDA4D   8D95A0FEFFFF           lea     edx, [ebp+$FFFFFEA0]
007BDA53   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007BDA54   E84BF6C5FF             call    0041D0A4
007BDA59   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
007BDA5F   50                     push    eax
007BDA60   8D8590FEFFFF           lea     eax, [ebp+$FFFFFE90]

* Possible String Reference to: ' - '
|
007BDA66   BAE8DC7B00             mov     edx, $007BDCE8

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BDA6B   E854B2C5FF             call    00418CC4
007BDA70   8D9590FEFFFF           lea     edx, [ebp+$FFFFFE90]
007BDA76   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007BDA77   E828F6C5FF             call    0041D0A4
007BDA7C   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
007BDA82   50                     push    eax
007BDA83   8D8D68FEFFFF           lea     ecx, [ebp+$FFFFFE68]
007BDA89   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkCEPClie'
|
007BDA8B   BA3CDD7B00             mov     edx, $007BDD3C

|
007BDA90   E8ABA3FFFF             call    007B7E40
007BDA95   8D9568FEFFFF           lea     edx, [ebp+$FFFFFE68]
007BDA9B   8D8578FEFFFF           lea     eax, [ebp+$FFFFFE78]

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
007BDAA1   E852A1C5FF             call    00417BF8
007BDAA6   8B8578FEFFFF           mov     eax, [ebp+$FFFFFE78]
007BDAAC   50                     push    eax

* Possible String Reference to: '99999\-999;0;'
|
007BDAAD   B850DD7B00             mov     eax, $007BDD50
007BDAB2   8D8D7CFEFFFF           lea     ecx, [ebp+$FFFFFE7C]
007BDAB8   5A                     pop     edx

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
007BDAB9   E8F60AD1FF             call    004CE5B4
007BDABE   8B957CFEFFFF           mov     edx, [ebp+$FFFFFE7C]
007BDAC4   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BDACA   E8F5B1C5FF             call    00418CC4
007BDACF   8D9580FEFFFF           lea     edx, [ebp+$FFFFFE80]
007BDAD5   58                     pop     eax

* Reference to: System.@Initialize(Pointer;Pointer);
|
007BDAD6   E8C9F5C5FF             call    0041D0A4
007BDADB   8D8DF4FEFFFF           lea     ecx, [ebp+$FFFFFEF4]
007BDAE1   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccInfoClie'
|
007BDAE3   BA68DD7B00             mov     edx, $007BDD68

* Reference to : tArrayTable._PROC_007B767C()
|
007BDAE8   E88F9BFFFF             call    007B767C
007BDAED   8D8D54FEFFFF           lea     ecx, [ebp+$FFFFFE54]
007BDAF3   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CgcClie'
|
007BDAF5   BAB8DC7B00             mov     edx, $007BDCB8

* Reference to : tArrayTable._PROC_007B8190()
|
007BDAFA   E891A6FFFF             call    007B8190
007BDAFF   8B9554FEFFFF           mov     edx, [ebp+$FFFFFE54]
007BDB05   8D8558FEFFFF           lea     eax, [ebp+$FFFFFE58]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BDB0B   E8B4B1C5FF             call    00418CC4
007BDB10   8D8D58FEFFFF           lea     ecx, [ebp+$FFFFFE58]
007BDB16   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccCgcClie'
|
007BDB18   BA7CDD7B00             mov     edx, $007BDD7C

* Reference to : tArrayTable._PROC_007B767C()
|
007BDB1D   E85A9BFFFF             call    007B767C
007BDB22   8D8D40FEFFFF           lea     ecx, [ebp+$FFFFFE40]
007BDB28   A1B8AE7D00             mov     eax, dword ptr [$007DAEB8]
007BDB2D   8B00                   mov     eax, [eax]

* Possible String Reference to: 'CodPdv'
|
007BDB2F   BAB4DD7B00             mov     edx, $007BDDB4

* Reference to : tArrayTable._PROC_007B8190()
|
007BDB34   E857A6FFFF             call    007B8190
007BDB39   8B9540FEFFFF           mov     edx, [ebp+$FFFFFE40]
007BDB3F   8D8544FEFFFF           lea     eax, [ebp+$FFFFFE44]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BDB45   E87AB1C5FF             call    00418CC4
007BDB4A   8D8D44FEFFFF           lea     ecx, [ebp+$FFFFFE44]
007BDB50   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccPDV'
|
007BDB52   BAC4DD7B00             mov     edx, $007BDDC4

* Reference to : tArrayTable._PROC_007B767C()
|
007BDB57   E8209BFFFF             call    007B767C
007BDB5C   33C0                   xor     eax, eax
007BDB5E   5A                     pop     edx
007BDB5F   59                     pop     ecx
007BDB60   59                     pop     ecx
007BDB61   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '[‹å]Ã'
|
007BDB64   6895DC7B00             push    $007BDC95
007BDB69   8D8540FEFFFF           lea     eax, [ebp+$FFFFFE40]

* Reference to: System.@LStrClr(void;void);
|
007BDB6F   E82879C4FF             call    0040549C
007BDB74   8D8544FEFFFF           lea     eax, [ebp+$FFFFFE44]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BDB7A   E8F969C5FF             call    00414578
007BDB7F   8D8554FEFFFF           lea     eax, [ebp+$FFFFFE54]

* Reference to: System.@LStrClr(void;void);
|
007BDB85   E81279C4FF             call    0040549C
007BDB8A   8D8558FEFFFF           lea     eax, [ebp+$FFFFFE58]

* Reference to object Variant
|
007BDB90   8B1524114000           mov     edx, [$00401124]
007BDB96   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007BDB9B   E8FC84C4FF             call    0040609C
007BDBA0   8D8578FEFFFF           lea     eax, [ebp+$FFFFFE78]
007BDBA6   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BDBAB   E81079C4FF             call    004054C0
007BDBB0   8D8580FEFFFF           lea     eax, [ebp+$FFFFFE80]

* Reference to object Variant
|
007BDBB6   8B1524114000           mov     edx, [$00401124]
007BDBBC   B907000000             mov     ecx, $00000007

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007BDBC1   E8D684C4FF             call    0040609C
007BDBC6   8D85F0FEFFFF           lea     eax, [ebp+$FFFFFEF0]

* Reference to: System.@LStrClr(void;void);
|
007BDBCC   E8CB78C4FF             call    0040549C
007BDBD1   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BDBD7   E89C69C5FF             call    00414578
007BDBDC   8D8504FFFFFF           lea     eax, [ebp+$FFFFFF04]
007BDBE2   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BDBE7   E8D478C4FF             call    004054C0
007BDBEC   8D850CFFFFFF           lea     eax, [ebp+$FFFFFF0C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BDBF2   E88169C5FF             call    00414578
007BDBF7   8D851CFFFFFF           lea     eax, [ebp+$FFFFFF1C]
007BDBFD   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BDC02   E8B978C4FF             call    004054C0
007BDC07   8D853CFFFFFF           lea     eax, [ebp+$FFFFFF3C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BDC0D   E86669C5FF             call    00414578
007BDC12   8D854CFFFFFF           lea     eax, [ebp+$FFFFFF4C]
007BDC18   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BDC1D   E89E78C4FF             call    004054C0
007BDC22   8D8554FFFFFF           lea     eax, [ebp+$FFFFFF54]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BDC28   E84B69C5FF             call    00414578
007BDC2D   8D8564FFFFFF           lea     eax, [ebp+$FFFFFF64]
007BDC33   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BDC38   E88378C4FF             call    004054C0
007BDC3D   8D4580                 lea     eax, [ebp-$80]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BDC40   E83369C5FF             call    00414578
007BDC45   8D4590                 lea     eax, [ebp-$70]
007BDC48   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BDC4D   E86E78C4FF             call    004054C0
007BDC52   8D4598                 lea     eax, [ebp-$68]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BDC55   E81E69C5FF             call    00414578
007BDC5A   8D45A8                 lea     eax, [ebp-$58]
007BDC5D   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BDC62   E85978C4FF             call    004054C0
007BDC67   8D45C8                 lea     eax, [ebp-$38]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BDC6A   E80969C5FF             call    00414578
007BDC6F   8D45D8                 lea     eax, [ebp-$28]

* Reference to: System.@LStrClr(void;void);
|
007BDC72   E82578C4FF             call    0040549C
007BDC77   8D45E0                 lea     eax, [ebp-$20]

* Reference to object Variant
|
007BDC7A   8B1524114000           mov     edx, [$00401124]
007BDC80   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007BDC85   E81284C4FF             call    0040609C
007BDC8A   C3                     ret


* Reference to: System.@HandleFinally;
|
007BDC8B   E9A870C4FF             jmp     00404D38
007BDC90   E9D4FEFFFF             jmp     007BDB69

****** END
|
007BDC95   5B                     pop     ebx
007BDC96   8BE5                   mov     esp, ebp
007BDC98   5D                     pop     ebp
007BDC99   C3                     ret

*)
end;

procedure TDmC._PROC_007BDDCD(Sender : TObject);
begin
(*
007BDDCD   8BEC                   mov     ebp, esp
007BDDCF   B926000000             mov     ecx, $00000026
007BDDD4   6A00                   push    $00
007BDDD6   6A00                   push    $00
007BDDD8   49                     dec     ecx
007BDDD9   75F9                   jnz     007BDDD4
007BDDDB   53                     push    ebx
007BDDDC   56                     push    esi
007BDDDD   57                     push    edi
007BDDDE   8B1D48A87D00           mov     ebx, [$007DA848]
007BDDE4   33C0                   xor     eax, eax
007BDDE6   55                     push    ebp
007BDDE7   68ABE37B00             push    $007BE3AB

***** TRY
|
007BDDEC   64FF30                 push    dword ptr fs:[eax]
007BDDEF   648920                 mov     fs:[eax], esp
007BDDF2   33C0                   xor     eax, eax
007BDDF4   55                     push    ebp
007BDDF5   685FE27B00             push    $007BE25F

***** TRY
|
007BDDFA   64FF30                 push    dword ptr fs:[eax]
007BDDFD   648920                 mov     fs:[eax], esp
007BDE00   8D4DEC                 lea     ecx, [ebp-$14]
007BDE03   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrUnit'
|
007BDE05   BAC4E37B00             mov     edx, $007BE3C4

* Reference to : tArrayTable._PROC_007B8190()
|
007BDE0A   E881A3FFFF             call    007B8190
007BDE0F   8B45EC                 mov     eax, [ebp-$14]

|
007BDE12   E8213FFEFF             call    007A1D38
007BDE17   DD5DE4                 fstp    qword ptr [ebp-$1C]
007BDE1A   9B                     wait
007BDE1B   8D4DE0                 lea     ecx, [ebp-$20]
007BDE1E   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrDesc'
|
007BDE20   BAD4E37B00             mov     edx, $007BE3D4

* Reference to : tArrayTable._PROC_007B8190()
|
007BDE25   E866A3FFFF             call    007B8190
007BDE2A   8B45E0                 mov     eax, [ebp-$20]

|
007BDE2D   E8063FFEFF             call    007A1D38
007BDE32   DC6DE4                 fsubr   qword ptr [ebp-$1C]
007BDE35   83C4F8                 add     esp, -$08
007BDE38   DD1C24                 fstp    qword ptr [esp]
007BDE3B   9B                     wait
007BDE3C   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007BDE41   8B00                   mov     eax, [eax]
007BDE43   8B806C020000           mov     eax, [eax+$026C]
007BDE49   8B10                   mov     edx, [eax]
007BDE4B   FF5258                 call    dword ptr [edx+$58]

|
007BDE4E   E8B134FEFF             call    007A1304
007BDE53   DB7DF0                 fstp    tbyte ptr [ebp-$10]
007BDE56   9B                     wait
007BDE57   8D4DDC                 lea     ecx, [ebp-$24]
007BDE5A   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'QtdLcto'
|
007BDE5C   BAE4E37B00             mov     edx, $007BE3E4

* Reference to : tArrayTable._PROC_007B8190()
|
007BDE61   E82AA3FFFF             call    007B8190
007BDE66   8B45DC                 mov     eax, [ebp-$24]

|
007BDE69   E8CA3EFEFF             call    007A1D38
007BDE6E   D81DECE37B00           fcomp   dword ptr [$007BE3EC]
007BDE74   DFE0                   fstsw   ax
007BDE76   9E                     sahf
007BDE77   7468                   jz      007BDEE1
007BDE79   8D4DD8                 lea     ecx, [ebp-$28]
007BDE7C   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrUnit'
|
007BDE7E   BAC4E37B00             mov     edx, $007BE3C4

* Reference to : tArrayTable._PROC_007B8190()
|
007BDE83   E808A3FFFF             call    007B8190
007BDE88   8B45D8                 mov     eax, [ebp-$28]

|
007BDE8B   E8A83EFEFF             call    007A1D38
007BDE90   D81DECE37B00           fcomp   dword ptr [$007BE3EC]
007BDE96   DFE0                   fstsw   ax
007BDE98   9E                     sahf
007BDE99   7646                   jbe     007BDEE1
007BDE9B   8D4DC4                 lea     ecx, [ebp-$3C]
007BDE9E   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'QtdLcto'
|
007BDEA0   BAE4E37B00             mov     edx, $007BE3E4

* Reference to : tArrayTable._PROC_007B8190()
|
007BDEA5   E8E6A2FFFF             call    007B8190
007BDEAA   8B45C4                 mov     eax, [ebp-$3C]

|
007BDEAD   E8863EFEFF             call    007A1D38
007BDEB2   DB6DF0                 fld     tbyte ptr [ebp-$10]
007BDEB5   DEC9                   fmulp   st(1), st(0)
007BDEB7   83C4F8                 add     esp, -$08
007BDEBA   DD1C24                 fstp    qword ptr [esp]
007BDEBD   9B                     wait
007BDEBE   B802000000             mov     eax, $00000002

|
007BDEC3   E83C34FEFF             call    007A1304
007BDEC8   8D45C8                 lea     eax, [ebp-$38]

* Reference to: Variants.@VarFromReal;
|
007BDECB   E8B8ADC5FF             call    00418C88
007BDED0   8D4DC8                 lea     ecx, [ebp-$38]
007BDED3   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccTotal'
|
007BDED5   BAF8E37B00             mov     edx, $007BE3F8

* Reference to : tArrayTable._PROC_007B767C()
|
007BDEDA   E89D97FFFF             call    007B767C
007BDEDF   EB1B                   jmp     007BDEFC
007BDEE1   8D45B4                 lea     eax, [ebp-$4C]
007BDEE4   33D2                   xor     edx, edx
007BDEE6   B101                   mov     cl, $01

|
007BDEE8   E883ABC5FF             call    00418A70
007BDEED   8D4DB4                 lea     ecx, [ebp-$4C]
007BDEF0   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccTotal'
|
007BDEF2   BAF8E37B00             mov     edx, $007BE3F8

* Reference to : tArrayTable._PROC_007B767C()
|
007BDEF7   E88097FFFF             call    007B767C
007BDEFC   8D4DB0                 lea     ecx, [ebp-$50]
007BDEFF   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Frete'
|
007BDF01   BA08E47B00             mov     edx, $007BE408

* Reference to : tArrayTable._PROC_007B8190()
|
007BDF06   E885A2FFFF             call    007B8190
007BDF0B   8B45B0                 mov     eax, [ebp-$50]

|
007BDF0E   E8253EFEFF             call    007A1D38
007BDF13   D81DECE37B00           fcomp   dword ptr [$007BE3EC]
007BDF19   DFE0                   fstsw   ax
007BDF1B   9E                     sahf
007BDF1C   7670                   jbe     007BDF8E
007BDF1E   8D4DAC                 lea     ecx, [ebp-$54]
007BDF21   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'VlrUnit'
|
007BDF23   BAC4E37B00             mov     edx, $007BE3C4

* Reference to : tArrayTable._PROC_007B8190()
|
007BDF28   E863A2FFFF             call    007B8190
007BDF2D   8B45AC                 mov     eax, [ebp-$54]

|
007BDF30   E8033EFEFF             call    007A1D38
007BDF35   D81DECE37B00           fcomp   dword ptr [$007BE3EC]
007BDF3B   DFE0                   fstsw   ax
007BDF3D   9E                     sahf
007BDF3E   764E                   jbe     007BDF8E
007BDF40   8D4D98                 lea     ecx, [ebp-$68]
007BDF43   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Frete'
|
007BDF45   BA08E47B00             mov     edx, $007BE408

* Reference to : tArrayTable._PROC_007B8190()
|
007BDF4A   E841A2FFFF             call    007B8190
007BDF4F   8B4598                 mov     eax, [ebp-$68]

|
007BDF52   E8E13DFEFF             call    007A1D38
007BDF57   DD5DE4                 fstp    qword ptr [ebp-$1C]
007BDF5A   9B                     wait
007BDF5B   8D4D94                 lea     ecx, [ebp-$6C]
007BDF5E   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'QtdLcto'
|
007BDF60   BAE4E37B00             mov     edx, $007BE3E4

* Reference to : tArrayTable._PROC_007B8190()
|
007BDF65   E826A2FFFF             call    007B8190
007BDF6A   8B4594                 mov     eax, [ebp-$6C]

|
007BDF6D   E8C63DFEFF             call    007A1D38
007BDF72   DC4DE4                 fmul    qword ptr [ebp-$1C]
007BDF75   8D459C                 lea     eax, [ebp-$64]

* Reference to: Variants.@VarFromReal;
|
007BDF78   E80BADC5FF             call    00418C88
007BDF7D   8D4D9C                 lea     ecx, [ebp-$64]
007BDF80   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccFreteTotal'
|
007BDF82   BA18E47B00             mov     edx, $007BE418

* Reference to : tArrayTable._PROC_007B767C()
|
007BDF87   E8F096FFFF             call    007B767C
007BDF8C   EB1B                   jmp     007BDFA9
007BDF8E   8D4584                 lea     eax, [ebp-$7C]
007BDF91   33D2                   xor     edx, edx
007BDF93   B101                   mov     cl, $01

|
007BDF95   E8D6AAC5FF             call    00418A70
007BDF9A   8D4D84                 lea     ecx, [ebp-$7C]
007BDF9D   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccFreteTotal'
|
007BDF9F   BA18E47B00             mov     edx, $007BE418

* Reference to : tArrayTable._PROC_007B767C()
|
007BDFA4   E8D396FFFF             call    007B767C
007BDFA9   8D8D70FFFFFF           lea     ecx, [ebp+$FFFFFF70]
007BDFAF   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccTotal'
|
007BDFB1   BAF8E37B00             mov     edx, $007BE3F8

* Reference to : tArrayTable._PROC_007B8190()
|
007BDFB6   E8D5A1FFFF             call    007B8190
007BDFBB   8B8570FFFFFF           mov     eax, [ebp+$FFFFFF70]

|
007BDFC1   E8723DFEFF             call    007A1D38
007BDFC6   83C4F8                 add     esp, -$08
007BDFC9   DD1C24                 fstp    qword ptr [esp]
007BDFCC   9B                     wait
007BDFCD   B802000000             mov     eax, $00000002

|
007BDFD2   E82D33FEFF             call    007A1304
007BDFD7   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]

* Reference to: Variants.@VarFromReal;
|
007BDFDD   E8A6ACC5FF             call    00418C88
007BDFE2   8D8D74FFFFFF           lea     ecx, [ebp+$FFFFFF74]
007BDFE8   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccTotalItem'
|
007BDFEA   BA30E47B00             mov     edx, $007BE430

* Reference to : tArrayTable._PROC_007B767C()
|
007BDFEF   E88896FFFF             call    007B767C
007BDFF4   DB6DF0                 fld     tbyte ptr [ebp-$10]
007BDFF7   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Reference to: Variants.@VarFromReal;
|
007BDFFD   E886ACC5FF             call    00418C88
007BE002   8D8D60FFFFFF           lea     ecx, [ebp+$FFFFFF60]
007BE008   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccVlrUnitDesc'
|
007BE00A   BA44E47B00             mov     edx, $007BE444

* Reference to : tArrayTable._PROC_007B767C()
|
007BE00F   E86896FFFF             call    007B767C
007BE014   8D8D5CFFFFFF           lea     ecx, [ebp+$FFFFFF5C]
007BE01A   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Descricao'
|
007BE01C   BA5CE47B00             mov     edx, $007BE45C

* Reference to : tArrayTable._PROC_007B8190()
|
007BE021   E86AA1FFFF             call    007B8190
007BE026   83BD5CFFFFFF00         cmp     dword ptr [ebp+$FFFFFF5C], +$00
007BE02D   7466                   jz      007BE095
007BE02F   8D9558FFFFFF           lea     edx, [ebp+$FFFFFF58]
007BE035   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007BE03A   8B00                   mov     eax, [eax]
007BE03C   8B8020040000           mov     eax, [eax+$0420]
007BE042   8B08                   mov     ecx, [eax]
007BE044   FF5160                 call    dword ptr [ecx+$60]
007BE047   8B8558FFFFFF           mov     eax, [ebp+$FFFFFF58]

* Possible String Reference to: 'DA'
|
007BE04D   BA70E47B00             mov     edx, $007BE470

* Reference to: System.@LStrPos;
|
007BE052   E8497AC4FF             call    00405AA0
007BE057   85C0                   test    eax, eax
007BE059   7E3A                   jle     007BE095
007BE05B   8D8D44FFFFFF           lea     ecx, [ebp+$FFFFFF44]
007BE061   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Descricao'
|
007BE063   BA5CE47B00             mov     edx, $007BE45C

* Reference to : tArrayTable._PROC_007B8190()
|
007BE068   E823A1FFFF             call    007B8190
007BE06D   8B9544FFFFFF           mov     edx, [ebp+$FFFFFF44]
007BE073   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BE079   E846ACC5FF             call    00418CC4
007BE07E   8D8D48FFFFFF           lea     ecx, [ebp+$FFFFFF48]
007BE084   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccDescrProd'
|
007BE086   BA7CE47B00             mov     edx, $007BE47C

* Reference to : tArrayTable._PROC_007B767C()
|
007BE08B   E8EC95FFFF             call    007B767C
007BE090   E9A2000000             jmp     007BE137
007BE095   8D8D40FFFFFF           lea     ecx, [ebp+$FFFFFF40]
007BE09B   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Descricao'
|
007BE09D   BA5CE47B00             mov     edx, $007BE45C

* Reference to : tArrayTable._PROC_007B8190()
|
007BE0A2   E8E9A0FFFF             call    007B8190
007BE0A7   83BD40FFFFFF00         cmp     dword ptr [ebp+$FFFFFF40], +$00
007BE0AE   7452                   jz      007BE102
007BE0B0   8D8D3CFFFFFF           lea     ecx, [ebp+$FFFFFF3C]
007BE0B6   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'CodProd'
|
007BE0B8   BA90E47B00             mov     edx, $007BE490

* Reference to : tArrayTable._PROC_007B8190()
|
007BE0BD   E8CEA0FFFF             call    007B8190
007BE0C2   83BD3CFFFFFF00         cmp     dword ptr [ebp+$FFFFFF3C], +$00
007BE0C9   7537                   jnz     007BE102
007BE0CB   8D8D28FFFFFF           lea     ecx, [ebp+$FFFFFF28]
007BE0D1   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'Descricao'
|
007BE0D3   BA5CE47B00             mov     edx, $007BE45C

* Reference to : tArrayTable._PROC_007B8190()
|
007BE0D8   E8B3A0FFFF             call    007B8190
007BE0DD   8B9528FFFFFF           mov     edx, [ebp+$FFFFFF28]
007BE0E3   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BE0E9   E8D6ABC5FF             call    00418CC4
007BE0EE   8D8D2CFFFFFF           lea     ecx, [ebp+$FFFFFF2C]
007BE0F4   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccDescrProd'
|
007BE0F6   BA7CE47B00             mov     edx, $007BE47C

* Reference to : tArrayTable._PROC_007B767C()
|
007BE0FB   E87C95FFFF             call    007B767C
007BE100   EB35                   jmp     007BE137
007BE102   8D8D14FFFFFF           lea     ecx, [ebp+$FFFFFF14]
007BE108   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'LkDescrProd'
|
007BE10A   BAA0E47B00             mov     edx, $007BE4A0

* Reference to : tArrayTable._PROC_007B8190()
|
007BE10F   E87CA0FFFF             call    007B8190
007BE114   8B9514FFFFFF           mov     edx, [ebp+$FFFFFF14]
007BE11A   8D8518FFFFFF           lea     eax, [ebp+$FFFFFF18]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BE120   E89FABC5FF             call    00418CC4
007BE125   8D8D18FFFFFF           lea     ecx, [ebp+$FFFFFF18]
007BE12B   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccDescrProd'
|
007BE12D   BA7CE47B00             mov     edx, $007BE47C

* Reference to : tArrayTable._PROC_007B767C()
|
007BE132   E84595FFFF             call    007B767C
007BE137   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007BE13C   8B00                   mov     eax, [eax]
007BE13E   8B80A8040000           mov     eax, [eax+$04A8]
007BE144   8B10                   mov     edx, [eax]
007BE146   FF5244                 call    dword ptr [edx+$44]
007BE149   84C0                   test    al, al
007BE14B   7479                   jz      007BE1C6
007BE14D   8D8DFCFEFFFF           lea     ecx, [ebp+$FFFFFEFC]
007BE153   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccDescrProd'
|
007BE155   BA7CE47B00             mov     edx, $007BE47C

* Reference to : tArrayTable._PROC_007B8190()
|
007BE15A   E831A0FFFF             call    007B8190
007BE15F   FFB5FCFEFFFF           push    dword ptr [ebp+$FFFFFEFC]
007BE165   68B4E47B00             push    $007BE4B4
007BE16A   8D8DF4FEFFFF           lea     ecx, [ebp+$FFFFFEF4]
007BE170   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'QtdeUnidMed'
|
007BE172   BAC0E47B00             mov     edx, $007BE4C0

* Reference to : tArrayTable._PROC_007B8190()
|
007BE177   E814A0FFFF             call    007B8190
007BE17C   8B85F4FEFFFF           mov     eax, [ebp+$FFFFFEF4]
007BE182   8D95F8FEFFFF           lea     edx, [ebp+$FFFFFEF8]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
007BE188   E86B22FEFF             call    007A03F8
007BE18D   FFB5F8FEFFFF           push    dword ptr [ebp+$FFFFFEF8]
007BE193   8D8500FFFFFF           lea     eax, [ebp+$FFFFFF00]
007BE199   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007BE19E   E87976C4FF             call    0040581C
007BE1A3   8B9500FFFFFF           mov     edx, [ebp+$FFFFFF00]
007BE1A9   8D8504FFFFFF           lea     eax, [ebp+$FFFFFF04]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BE1AF   E810ABC5FF             call    00418CC4
007BE1B4   8D8D04FFFFFF           lea     ecx, [ebp+$FFFFFF04]
007BE1BA   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccDescrProd'
|
007BE1BC   BA7CE47B00             mov     edx, $007BE47C

* Reference to : tArrayTable._PROC_007B767C()
|
007BE1C1   E8B694FFFF             call    007B767C
007BE1C6   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
007BE1CB   8B00                   mov     eax, [eax]
007BE1CD   8B80AC040000           mov     eax, [eax+$04AC]
007BE1D3   8B10                   mov     edx, [eax]
007BE1D5   FF5244                 call    dword ptr [edx+$44]
007BE1D8   84C0                   test    al, al
007BE1DA   7479                   jz      007BE255
007BE1DC   8D8DDCFEFFFF           lea     ecx, [ebp+$FFFFFEDC]
007BE1E2   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccDescrProd'
|
007BE1E4   BA7CE47B00             mov     edx, $007BE47C

* Reference to : tArrayTable._PROC_007B8190()
|
007BE1E9   E8A29FFFFF             call    007B8190
007BE1EE   FFB5DCFEFFFF           push    dword ptr [ebp+$FFFFFEDC]
007BE1F4   68B4E47B00             push    $007BE4B4
007BE1F9   8D8DD4FEFFFF           lea     ecx, [ebp+$FFFFFED4]
007BE1FF   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ComplEmbal'
|
007BE201   BAD4E47B00             mov     edx, $007BE4D4

* Reference to : tArrayTable._PROC_007B8190()
|
007BE206   E8859FFFFF             call    007B8190
007BE20B   8B85D4FEFFFF           mov     eax, [ebp+$FFFFFED4]
007BE211   8D95D8FEFFFF           lea     edx, [ebp+$FFFFFED8]

* Reference to : TFrmInfoAtu._PROC_007A03F8()
|
007BE217   E8DC21FEFF             call    007A03F8
007BE21C   FFB5D8FEFFFF           push    dword ptr [ebp+$FFFFFED8]
007BE222   8D85E0FEFFFF           lea     eax, [ebp+$FFFFFEE0]
007BE228   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007BE22D   E8EA75C4FF             call    0040581C
007BE232   8B95E0FEFFFF           mov     edx, [ebp+$FFFFFEE0]
007BE238   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]

* Reference to: Variants.@VarFromLStr(TVarData;TVarData;AnsiString);
|
007BE23E   E881AAC5FF             call    00418CC4
007BE243   8D8DE4FEFFFF           lea     ecx, [ebp+$FFFFFEE4]
007BE249   8B03                   mov     eax, [ebx]

* Possible String Reference to: 'ccDescrProd'
|
007BE24B   BA7CE47B00             mov     edx, $007BE47C

* Reference to : tArrayTable._PROC_007B767C()
|
007BE250   E82794FFFF             call    007B767C
007BE255   33C0                   xor     eax, eax
007BE257   5A                     pop     edx
007BE258   59                     pop     ecx
007BE259   59                     pop     ecx
007BE25A   648910                 mov     fs:[eax], edx
007BE25D   EB36                   jmp     007BE295

* Reference to: System.@HandleOnException;
|
007BE25F   E94C69C4FF             jmp     00404BB0
007BE264   0100                   add     [eax], eax
007BE266   0000                   add     [eax], al
007BE268   40                     inc     eax
007BE269   95                     xchg    eax, ebp
007BE26A   40                     inc     eax
007BE26B   0070E2                 add     [eax-$1E], dh
007BE26E   7B00                   jnp     007BE270
007BE270   89C3                   mov     ebx, eax
007BE272   8B4B04                 mov     ecx, [ebx+$04]
007BE275   8D85D0FEFFFF           lea     eax, [ebp+$FFFFFED0]

* Possible String Reference to: 'Erro no evento OnCalcFields da tabe
|                                la mSaidItem!'
|
007BE27B   BAE8E47B00             mov     edx, $007BE4E8

* Reference to: System.@LStrCat3;
|
007BE280   E82375C4FF             call    004057A8
007BE285   8B85D0FEFFFF           mov     eax, [ebp+$FFFFFED0]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
007BE28B   E89459C8FF             call    00443C24

* Reference to: System.@DoneExcept;
|
007BE290   E81B6CC4FF             call    00404EB0

****** END
|
007BE295   33C0                   xor     eax, eax
007BE297   5A                     pop     edx
007BE298   59                     pop     ecx
007BE299   59                     pop     ecx
007BE29A   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BE29D   68B5E37B00             push    $007BE3B5
007BE2A2   8D85D0FEFFFF           lea     eax, [ebp+$FFFFFED0]
007BE2A8   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE2AD   E80E72C4FF             call    004054C0
007BE2B2   8D85E4FEFFFF           lea     eax, [ebp+$FFFFFEE4]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BE2B8   E8BB62C5FF             call    00414578
007BE2BD   8D85F4FEFFFF           lea     eax, [ebp+$FFFFFEF4]
007BE2C3   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE2C8   E8F371C4FF             call    004054C0
007BE2CD   8D8504FFFFFF           lea     eax, [ebp+$FFFFFF04]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BE2D3   E8A062C5FF             call    00414578
007BE2D8   8D8514FFFFFF           lea     eax, [ebp+$FFFFFF14]

* Reference to: System.@LStrClr(void;void);
|
007BE2DE   E8B971C4FF             call    0040549C
007BE2E3   8D8518FFFFFF           lea     eax, [ebp+$FFFFFF18]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BE2E9   E88A62C5FF             call    00414578
007BE2EE   8D8528FFFFFF           lea     eax, [ebp+$FFFFFF28]

* Reference to: System.@LStrClr(void;void);
|
007BE2F4   E8A371C4FF             call    0040549C
007BE2F9   8D852CFFFFFF           lea     eax, [ebp+$FFFFFF2C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BE2FF   E87462C5FF             call    00414578
007BE304   8D853CFFFFFF           lea     eax, [ebp+$FFFFFF3C]
007BE30A   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE30F   E8AC71C4FF             call    004054C0
007BE314   8D8548FFFFFF           lea     eax, [ebp+$FFFFFF48]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BE31A   E85962C5FF             call    00414578
007BE31F   8D8558FFFFFF           lea     eax, [ebp+$FFFFFF58]
007BE325   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE32A   E89171C4FF             call    004054C0
007BE32F   8D8560FFFFFF           lea     eax, [ebp+$FFFFFF60]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BE335   E83E62C5FF             call    00414578
007BE33A   8D8570FFFFFF           lea     eax, [ebp+$FFFFFF70]

* Reference to: System.@LStrClr(void;void);
|
007BE340   E85771C4FF             call    0040549C
007BE345   8D8574FFFFFF           lea     eax, [ebp+$FFFFFF74]

* Reference to object Variant
|
007BE34B   8B1524114000           mov     edx, [$00401124]
007BE351   B902000000             mov     ecx, $00000002

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007BE356   E8417DC4FF             call    0040609C
007BE35B   8D4594                 lea     eax, [ebp-$6C]
007BE35E   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE363   E85871C4FF             call    004054C0
007BE368   8D459C                 lea     eax, [ebp-$64]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BE36B   E80862C5FF             call    00414578
007BE370   8D45AC                 lea     eax, [ebp-$54]
007BE373   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE378   E84371C4FF             call    004054C0
007BE37D   8D45B4                 lea     eax, [ebp-$4C]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BE380   E8F361C5FF             call    00414578
007BE385   8D45C4                 lea     eax, [ebp-$3C]

* Reference to: System.@LStrClr(void;void);
|
007BE388   E80F71C4FF             call    0040549C
007BE38D   8D45C8                 lea     eax, [ebp-$38]

* Reference to: Variants.@VarClr(TVarData;TVarData);
|
007BE390   E8E361C5FF             call    00414578
007BE395   8D45D8                 lea     eax, [ebp-$28]
007BE398   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE39D   E81E71C4FF             call    004054C0
007BE3A2   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
007BE3A5   E8F270C4FF             call    0040549C
007BE3AA   C3                     ret


* Reference to: System.@HandleFinally;
|
007BE3AB   E98869C4FF             jmp     00404D38
007BE3B0   E9EDFEFFFF             jmp     007BE2A2

****** END
|
007BE3B5   5F                     pop     edi
007BE3B6   5E                     pop     esi
007BE3B7   5B                     pop     ebx
007BE3B8   8BE5                   mov     esp, ebp
007BE3BA   5D                     pop     ebp
007BE3BB   C3                     ret

*)
end;

procedure TDmC._PROC_007BE3AB(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007BE3AB   E98869C4FF             jmp     00404D38

|
007BE3B0   E9EDFEFFFF             jmp     007BE2A2
007BE3B5   5F                     pop     edi
007BE3B6   5E                     pop     esi
007BE3B7   5B                     pop     ebx
007BE3B8   8BE5                   mov     esp, ebp
007BE3BA   5D                     pop     ebp
007BE3BB   C3                     ret

*)
end;

procedure TDmC._PROC_007BE3C8(Sender : TObject);
begin
(*
007BE3C8   6E                     outsb
007BE3C9   697400FFFFFFFF07       imul    esi, [eax+eax-$01], $07FFFFFF
007BE3D1   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BE44A(Sender : TObject);
begin
(*
007BE44A   6E                     outsb
007BE44B   6974446573630000       imul    esi, [esp+eax*2+$65], $00006373
007BE453   00FF                   add     bh, bh
007BE455   FFFF                   DB  $FF, $FF  //      
007BE457   FF09                   dec     dword ptr [ecx]
007BE459   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BE4C5(Sender : TObject);
begin
(*
007BE4C5   6E                     outsb
007BE4C6   69644D656400FFFF       imul    esp, [ebp+ecx*2+$65], $FFFF0064
007BE4CE   FFFF                   DB  $FF, $FF  //      
007BE4D0   0A00                   or      al, byte ptr [eax]
007BE4D2   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BE53D(Sender : TObject);
begin
(*
007BE53D   8BEC                   mov     ebp, esp
007BE53F   51                     push    ecx
007BE540   B927000000             mov     ecx, $00000027
007BE545   6A00                   push    $00
007BE547   6A00                   push    $00
007BE549   49                     dec     ecx
007BE54A   75F9                   jnz     007BE545
007BE54C   51                     push    ecx
007BE54D   874DFC                 xchg    [ebp-$04], ecx
007BE550   53                     push    ebx
007BE551   56                     push    esi
007BE552   57                     push    edi
007BE553   894DF8                 mov     [ebp-$08], ecx
007BE556   8955FC                 mov     [ebp-$04], edx
007BE559   8BD8                   mov     ebx, eax
007BE55B   33C0                   xor     eax, eax
007BE55D   55                     push    ebp
007BE55E   6864E97B00             push    $007BE964

***** TRY
|
007BE563   64FF30                 push    dword ptr fs:[eax]
007BE566   648920                 mov     fs:[eax], esp
007BE569   8B45FC                 mov     eax, [ebp-$04]
007BE56C   8B00                   mov     eax, [eax]

* Reference to: ADODB.TADOQuery.GetSQL(TADOQuery):TStrings;
|
007BE56E   E891C6D7FF             call    0053AC04
007BE573   8D55F4                 lea     edx, [ebp-$0C]
007BE576   8B08                   mov     ecx, [eax]
007BE578   FF511C                 call    dword ptr [ecx+$1C]
007BE57B   8B55F4                 mov     edx, [ebp-$0C]

* Reference to control TDmC.Compilador : TJvInterpreterFm
|
007BE57E   8B436C                 mov     eax, [ebx+$6C]

|
007BE581   E88A85DBFF             call    00576B10
007BE586   8B45F8                 mov     eax, [ebp-$08]
007BE589   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Working'
|
007BE58B   BA7CE97B00             mov     edx, $007BE97C

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE590   E86751CDFF             call    004936FC
007BE595   8B45F8                 mov     eax, [ebp-$08]
007BE598   8B00                   mov     eax, [eax]
007BE59A   BAFF000000             mov     edx, $000000FF

* Reference to: Controls.TControl.SetColor(TControl;TColor);
|
007BE59F   E8E052CDFF             call    00493884
007BE5A4   8B45F8                 mov     eax, [ebp-$08]
007BE5A7   8B00                   mov     eax, [eax]
007BE5A9   8B10                   mov     edx, [eax]
007BE5AB   FF9288000000           call    dword ptr [edx+$0088]

* Reference to: kernel32.GetTickCount()
|
007BE5B1   E83E9BC4FF             call    004080F4
007BE5B6   8BD8                   mov     ebx, eax
007BE5B8   33D2                   xor     edx, edx
007BE5BA   55                     push    ebp
007BE5BB   6832E97B00             push    $007BE932

***** TRY
|
007BE5C0   64FF32                 push    dword ptr fs:[edx]
007BE5C3   648922                 mov     fs:[edx], esp
007BE5C6   33D2                   xor     edx, edx
007BE5C8   55                     push    ebp
007BE5C9   6899E77B00             push    $007BE799

***** TRY
|
007BE5CE   64FF32                 push    dword ptr fs:[edx]
007BE5D1   648922                 mov     fs:[edx], esp
007BE5D4   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BE5D9   8B406C                 mov     eax, [eax+$6C]
007BE5DC   66BEECFF               mov     si, $FFEC

* Reference to: System.@CallDynaInst;
|
007BE5E0   E8BB61C4FF             call    004047A0

* Reference to: kernel32.GetTickCount()
|
007BE5E5   E80A9BC4FF             call    004080F4
007BE5EA   2BC3                   sub     eax, ebx
007BE5EC   33D2                   xor     edx, edx
007BE5EE   52                     push    edx
007BE5EF   50                     push    eax
007BE5F0   8D45EC                 lea     eax, [ebp-$14]

|
007BE5F3   E858C8C4FF             call    0040AE50
007BE5F8   8B4DEC                 mov     ecx, [ebp-$14]
007BE5FB   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'ms: '
|
007BE5FE   BA8CE97B00             mov     edx, $007BE98C

* Reference to: System.@LStrCat3;
|
007BE603   E8A071C4FF             call    004057A8
007BE608   8B55F0                 mov     edx, [ebp-$10]
007BE60B   8B4508                 mov     eax, [ebp+$08]
007BE60E   8B00                   mov     eax, [eax]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE610   E8E750CDFF             call    004936FC
007BE615   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BE61A   8B406C                 mov     eax, [eax+$6C]
007BE61D   83C038                 add     eax, +$38

|
007BE620   E883CCC5FF             call    0041B2A8
007BE625   8BD8                   mov     ebx, eax
007BE627   6683FB0B               cmp     bx, +$0B
007BE62B   7529                   jnz     007BE656
007BE62D   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BE632   8B406C                 mov     eax, [eax+$6C]
007BE635   83C038                 add     eax, +$38

* Reference to: Variants.@VarToBool(TVarData;TVarData):LongBool;
|
007BE638   E86380C5FF             call    004166A0
007BE63D   83E07F                 and     eax, +$7F
007BE640   8B14850C9D7D00         mov     edx, [$7D9D0C+eax*4]
007BE647   8B45F8                 mov     eax, [ebp-$08]
007BE64A   8B00                   mov     eax, [eax]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE64C   E8AB50CDFF             call    004936FC
007BE651   E936010000             jmp     007BE78C
007BE656   6681FB0001             cmp     bx, $0100
007BE65B   740C                   jz      007BE669
007BE65D   6683FB03               cmp     bx, +$03
007BE661   7406                   jz      007BE669
007BE663   6683FB05               cmp     bx, +$05
007BE667   7526                   jnz     007BE68F
007BE669   8D45E8                 lea     eax, [ebp-$18]
007BE66C   8B158CF57D00           mov     edx, [$007DF58C]
007BE672   8B526C                 mov     edx, [edx+$6C]
007BE675   83C238                 add     edx, +$38

* Reference to: Variants.@VarToLStr(AnsiString;AnsiString;TVarData;TVarData);
|
007BE678   E87B95C5FF             call    00417BF8
007BE67D   8B55E8                 mov     edx, [ebp-$18]
007BE680   8B45F8                 mov     eax, [ebp-$08]
007BE683   8B00                   mov     eax, [eax]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE685   E87250CDFF             call    004936FC
007BE68A   E9FD000000             jmp     007BE78C
007BE68F   6685DB                 test    bx, bx
007BE692   7514                   jnz     007BE6A8
007BE694   8B45F8                 mov     eax, [ebp-$08]
007BE697   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Empty'
|
007BE699   BA9CE97B00             mov     edx, $007BE99C

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE69E   E85950CDFF             call    004936FC
007BE6A3   E9E4000000             jmp     007BE78C
007BE6A8   6683FB01               cmp     bx, +$01
007BE6AC   7514                   jnz     007BE6C2
007BE6AE   8B45F8                 mov     eax, [ebp-$08]
007BE6B1   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Null'
|
007BE6B3   BAACE97B00             mov     edx, $007BE9AC

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE6B8   E83F50CDFF             call    004936FC
007BE6BD   E9CA000000             jmp     007BE78C

|
007BE6C2   E81913DBFF             call    0056F9E0
007BE6C7   663BD8                 cmp     bx, ax
007BE6CA   7564                   jnz     007BE730
007BE6CC   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BE6D1   8B406C                 mov     eax, [eax+$6C]
007BE6D4   83C038                 add     eax, +$38

|
007BE6D7   E89015DBFF             call    0056FC6C
007BE6DC   8BD8                   mov     ebx, eax
007BE6DE   85DB                   test    ebx, ebx
007BE6E0   7414                   jz      007BE6F6
007BE6E2   8B45F8                 mov     eax, [ebp-$08]
007BE6E5   8B00                   mov     eax, [eax]

* Possible String Reference to: 'Object: nil'
|
007BE6E7   BABCE97B00             mov     edx, $007BE9BC

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE6EC   E80B50CDFF             call    004936FC
007BE6F1   E996000000             jmp     007BE78C
007BE6F6   8D95E0FEFFFF           lea     edx, [ebp+$FFFFFEE0]
007BE6FC   8B03                   mov     eax, [ebx]

* Reference to: System.TObject.ClassName(classofTObject):ShortString;
|
007BE6FE   E8E95DC4FF             call    004044EC
007BE703   8D95E0FEFFFF           lea     edx, [ebp+$FFFFFEE0]
007BE709   8D45E0                 lea     eax, [ebp-$20]

* Reference to: System.@LStrFromString(String;String;ShortString;ShortString);
|
007BE70C   E8EF6FC4FF             call    00405700
007BE711   8B4DE0                 mov     ecx, [ebp-$20]
007BE714   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'Object: '
|
007BE717   BAD0E97B00             mov     edx, $007BE9D0

* Reference to: System.@LStrCat3;
|
007BE71C   E88770C4FF             call    004057A8
007BE721   8B55E4                 mov     edx, [ebp-$1C]
007BE724   8B45F8                 mov     eax, [ebp-$08]
007BE727   8B00                   mov     eax, [eax]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE729   E8CE4FCDFF             call    004936FC
007BE72E   EB5C                   jmp     007BE78C

|
007BE730   E8CF12DBFF             call    0056FA04
007BE735   663BD8                 cmp     bx, ax
007BE738   7543                   jnz     007BE77D
007BE73A   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BE73F   8B406C                 mov     eax, [eax+$6C]
007BE742   83C038                 add     eax, +$38

|
007BE745   E80E16DBFF             call    0056FD58
007BE74A   8D95D8FEFFFF           lea     edx, [ebp+$FFFFFED8]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007BE750   E80FC6C4FF             call    0040AD64
007BE755   8B8DD8FEFFFF           mov     ecx, [ebp+$FFFFFED8]
007BE75B   8D85DCFEFFFF           lea     eax, [ebp+$FFFFFEDC]

* Possible String Reference to: 'Set: '
|
007BE761   BAE4E97B00             mov     edx, $007BE9E4

* Reference to: System.@LStrCat3;
|
007BE766   E83D70C4FF             call    004057A8
007BE76B   8B95DCFEFFFF           mov     edx, [ebp+$FFFFFEDC]
007BE771   8B45F8                 mov     eax, [ebp-$08]
007BE774   8B00                   mov     eax, [eax]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE776   E8814FCDFF             call    004936FC
007BE77B   EB0F                   jmp     007BE78C
007BE77D   8B45F8                 mov     eax, [ebp-$08]
007BE780   8B00                   mov     eax, [eax]

* Possible String Reference to: '!Unknown!'
|
007BE782   BAF4E97B00             mov     edx, $007BE9F4

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE787   E8704FCDFF             call    004936FC
007BE78C   33C0                   xor     eax, eax
007BE78E   5A                     pop     edx
007BE78F   59                     pop     ecx
007BE790   59                     pop     ecx
007BE791   648910                 mov     fs:[eax], edx
007BE794   E97C010000             jmp     007BE915

* Reference to: System.@HandleOnException;
|
007BE799   E91264C4FF             jmp     00404BB0
007BE79E   0300                   add     eax, [eax]
007BE7A0   0000                   add     [eax], al
007BE7A2   48                     dec     eax
007BE7A3   F8                     clc
007BE7A4   56                     push    esi
007BE7A5   00BAE77B0040           add     [edx+$40007BE7], bh
007BE7AB   95                     xchg    eax, ebp
007BE7AC   40                     inc     eax
007BE7AD   0046E8                 add     [esi-$18], al
007BE7B0   7B00                   jnp     007BE7B2
007BE7B2   0000                   add     [eax], al
007BE7B4   0000                   add     [eax], al
007BE7B6   FC                     cld
007BE7B7   E87B0089C3             call    C404E837
007BE7BC   8D95D0FEFFFF           lea     edx, [ebp+$FFFFFED0]
007BE7C2   8B4310                 mov     eax, [ebx+$10]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007BE7C5   E89AC5C4FF             call    0040AD64
007BE7CA   FFB5D0FEFFFF           push    dword ptr [ebp+$FFFFFED0]

* Possible String Reference to: ': '
|
007BE7D0   6808EA7B00             push    $007BEA08
007BE7D5   8D85CCFEFFFF           lea     eax, [ebp+$FFFFFECC]
007BE7DB   50                     push    eax
007BE7DC   8B4304                 mov     eax, [ebx+$04]
007BE7DF   B914EA7B00             mov     ecx, $007BEA14
007BE7E4   BA20EA7B00             mov     edx, $007BEA20

* Reference to : THiddenPopupObject._PROC_005268C4()
|
007BE7E9   E8D680D6FF             call    005268C4
007BE7EE   FFB5CCFEFFFF           push    dword ptr [ebp+$FFFFFECC]
007BE7F4   8D85D4FEFFFF           lea     eax, [ebp+$FFFFFED4]
007BE7FA   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007BE7FF   E81870C4FF             call    0040581C
007BE804   8B95D4FEFFFF           mov     edx, [ebp+$FFFFFED4]
007BE80A   8B45F8                 mov     eax, [ebp-$08]
007BE80D   8B00                   mov     eax, [eax]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE80F   E8E84ECDFF             call    004936FC
007BE814   8B4314                 mov     eax, [ebx+$14]
007BE817   83F8FF                 cmp     eax, -$01
007BE81A   7E18                   jle     007BE834
007BE81C   8BD0                   mov     edx, eax
007BE81E   8B45FC                 mov     eax, [ebp-$04]
007BE821   8B00                   mov     eax, [eax]

* Reference to : TJvEditorCompletionList._PROC_00531B54()
|
007BE823   E82C33D7FF             call    00531B54
007BE828   8B45FC                 mov     eax, [ebp-$04]
007BE82B   8B00                   mov     eax, [eax]
007BE82D   33D2                   xor     edx, edx

* Reference to : TJvEditorCompletionList._PROC_00531B98()
|
007BE82F   E86433D7FF             call    00531B98
007BE834   8B45FC                 mov     eax, [ebp-$04]
007BE837   8B00                   mov     eax, [eax]
007BE839   8B10                   mov     edx, [eax]
007BE83B   FF92C4000000           call    dword ptr [edx+$00C4]
007BE841   E9CA000000             jmp     007BE910
007BE846   8D95C4FEFFFF           lea     edx, [ebp+$FFFFFEC4]
007BE84C   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BE851   8B406C                 mov     eax, [eax+$6C]
007BE854   8B80280D0000           mov     eax, [eax+$0D28]
007BE85A   8B4010                 mov     eax, [eax+$10]

* Reference to: SysUtils.IntToStr(Integer):AnsiString;overload;
|
007BE85D   E802C5C4FF             call    0040AD64
007BE862   FFB5C4FEFFFF           push    dword ptr [ebp+$FFFFFEC4]

* Possible String Reference to: ': '
|
007BE868   6808EA7B00             push    $007BEA08
007BE86D   8D85C0FEFFFF           lea     eax, [ebp+$FFFFFEC0]
007BE873   50                     push    eax
007BE874   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BE879   8B406C                 mov     eax, [eax+$6C]
007BE87C   8B80280D0000           mov     eax, [eax+$0D28]
007BE882   8B4004                 mov     eax, [eax+$04]
007BE885   B914EA7B00             mov     ecx, $007BEA14
007BE88A   BA20EA7B00             mov     edx, $007BEA20

* Reference to : THiddenPopupObject._PROC_005268C4()
|
007BE88F   E83080D6FF             call    005268C4
007BE894   FFB5C0FEFFFF           push    dword ptr [ebp+$FFFFFEC0]
007BE89A   8D85C8FEFFFF           lea     eax, [ebp+$FFFFFEC8]
007BE8A0   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
007BE8A5   E8726FC4FF             call    0040581C
007BE8AA   8B95C8FEFFFF           mov     edx, [ebp+$FFFFFEC8]
007BE8B0   8B45F8                 mov     eax, [ebp-$08]
007BE8B3   8B00                   mov     eax, [eax]

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE8B5   E8424ECDFF             call    004936FC
007BE8BA   A18CF57D00             mov     eax, dword ptr [$007DF58C]
007BE8BF   8B406C                 mov     eax, [eax+$6C]
007BE8C2   8B80280D0000           mov     eax, [eax+$0D28]
007BE8C8   8B4014                 mov     eax, [eax+$14]
007BE8CB   83F8FF                 cmp     eax, -$01
007BE8CE   7E18                   jle     007BE8E8
007BE8D0   8BD0                   mov     edx, eax
007BE8D2   8B45FC                 mov     eax, [ebp-$04]
007BE8D5   8B00                   mov     eax, [eax]

* Reference to : TJvEditorCompletionList._PROC_00531B54()
|
007BE8D7   E87832D7FF             call    00531B54
007BE8DC   8B45FC                 mov     eax, [ebp-$04]
007BE8DF   8B00                   mov     eax, [eax]
007BE8E1   33D2                   xor     edx, edx

* Reference to : TJvEditorCompletionList._PROC_00531B98()
|
007BE8E3   E8B032D7FF             call    00531B98
007BE8E8   8B45FC                 mov     eax, [ebp-$04]
007BE8EB   8B00                   mov     eax, [eax]
007BE8ED   8B10                   mov     edx, [eax]
007BE8EF   FF92C4000000           call    dword ptr [edx+$00C4]

* Reference to: System.@RaiseAgain;
|
007BE8F5   E86265C4FF             call    00404E5C
007BE8FA   EB14                   jmp     007BE910
007BE8FC   8B45F8                 mov     eax, [ebp-$08]
007BE8FF   8B00                   mov     eax, [eax]

* Possible String Reference to: 'error'
|
007BE901   BA2CEA7B00             mov     edx, $007BEA2C

* Reference to: Controls.TControl.SetText(TControl;TCaption);
|
007BE906   E8F14DCDFF             call    004936FC

* Reference to: System.@RaiseAgain;
|
007BE90B   E84C65C4FF             call    00404E5C

* Reference to: System.@DoneExcept;
|
007BE910   E89B65C4FF             call    00404EB0
007BE915   33C0                   xor     eax, eax
007BE917   5A                     pop     edx
007BE918   59                     pop     ecx
007BE919   59                     pop     ecx
007BE91A   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BE91D   6839E97B00             push    $007BE939
007BE922   8B45F8                 mov     eax, [ebp-$08]
007BE925   8B00                   mov     eax, [eax]
007BE927   BA0F0000FF             mov     edx, $FF00000F

* Reference to: Controls.TControl.SetColor(TControl;TColor);
|
007BE92C   E8534FCDFF             call    00493884
007BE931   C3                     ret


* Reference to: System.@HandleFinally;
|
007BE932   E90164C4FF             jmp     00404D38
007BE937   EBE9                   jmp     007BE922

****** END
|
007BE939   33C0                   xor     eax, eax
007BE93B   5A                     pop     edx
007BE93C   59                     pop     ecx
007BE93D   59                     pop     ecx
007BE93E   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BE941   686BE97B00             push    $007BE96B
007BE946   8D85C0FEFFFF           lea     eax, [ebp+$FFFFFEC0]
007BE94C   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE951   E86A6BC4FF             call    004054C0
007BE956   8D45E0                 lea     eax, [ebp-$20]
007BE959   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE95E   E85D6BC4FF             call    004054C0
007BE963   C3                     ret


* Reference to: System.@HandleFinally;
|
007BE964   E9CF63C4FF             jmp     00404D38
007BE969   EBDB                   jmp     007BE946

****** END
|
007BE96B   5F                     pop     edi
007BE96C   5E                     pop     esi
007BE96D   5B                     pop     ebx
007BE96E   8BE5                   mov     esp, ebp
007BE970   5D                     pop     ebp
007BE971   C20400                 ret     $0004

*)
end;

procedure TDmC._PROC_007BE932(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007BE932   E90164C4FF             jmp     00404D38

|
007BE937   EBE9                   jmp     007BE922
007BE939   33C0                   xor     eax, eax
007BE93B   5A                     pop     edx
007BE93C   59                     pop     ecx
007BE93D   59                     pop     ecx
007BE93E   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BE941   686BE97B00             push    $007BE96B
007BE946   8D85C0FEFFFF           lea     eax, [ebp+$FFFFFEC0]
007BE94C   BA08000000             mov     edx, $00000008

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE951   E86A6BC4FF             call    004054C0
007BE956   8D45E0                 lea     eax, [ebp-$20]
007BE959   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BE95E   E85D6BC4FF             call    004054C0
007BE963   C3                     ret


* Reference to: System.@HandleFinally;
|
007BE964   E9CF63C4FF             jmp     00404D38
007BE969   EBDB                   jmp     007BE946

****** END
|
007BE96B   5F                     pop     edi
007BE96C   5E                     pop     esi
007BE96D   5B                     pop     ebx
007BE96E   8BE5                   mov     esp, ebp
007BE970   5D                     pop     ebp
007BE971   C20400                 ret     $0004

*)
end;

procedure TDmC._PROC_007BE9F6(Sender : TObject);
begin
(*
007BE9F6   6E                     outsb
007BE9F7   6B6E6F77               imul    ebp, [esi+$6F], $77
007BE9FB   6E                     outsb
007BE9FC   2100                   and     [eax], eax
007BE9FE   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BEA35(Sender : TObject);
begin
(*
007BEA35   8BEC                   mov     ebp, esp
007BEA37   33C0                   xor     eax, eax
007BEA39   55                     push    ebp

* Possible String Reference to: 'é®bÄÿëø]Ã‹Àƒ-õ}'
|
007BEA3A   6885EA7B00             push    $007BEA85

***** TRY
|
007BEA3F   64FF30                 push    dword ptr fs:[eax]
007BEA42   648920                 mov     fs:[eax], esp
007BEA45   FF0590F57D00           inc     dword ptr [$007DF590]
007BEA4B   752A                   jnz     007BEA77
007BEA4D   B80C9D7D00             mov     eax, $007D9D0C
007BEA52   B902000000             mov     ecx, $00000002

* Reference to object String
|
007BEA57   8B1508114000           mov     edx, [$00401108]

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007BEA5D   E83A76C4FF             call    0040609C
007BEA62   B8049D7D00             mov     eax, $007D9D04
007BEA67   B902000000             mov     ecx, $00000002

* Reference to object String
|
007BEA6C   8B1508114000           mov     edx, [$00401108]

* Reference to: System.@FinalizeArray(Pointer;Pointer;Cardinal);
|
007BEA72   E82576C4FF             call    0040609C
007BEA77   33C0                   xor     eax, eax
007BEA79   5A                     pop     edx
007BEA7A   59                     pop     ecx
007BEA7B   59                     pop     ecx
007BEA7C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-õ}'
|
007BEA7F   688CEA7B00             push    $007BEA8C
007BEA84   C3                     ret


* Reference to: System.@HandleFinally;
|
007BEA85   E9AE62C4FF             jmp     00404D38
007BEA8A   EBF8                   jmp     007BEA84

****** END
|
007BEA8C   5D                     pop     ebp
007BEA8D   C3                     ret

*)
end;

procedure TDmC._PROC_007BEA90(Sender : TObject);
begin
(*
007BEA90   832D90F57D0001         sub     dword ptr [$007DF590], +$01
007BEA97   C3                     ret

*)
end;

procedure TDmC._PROC_007BEA98(Sender : TObject);
begin
(*
007BEA98   55                     push    ebp
007BEA99   8BEC                   mov     ebp, esp
007BEA9B   83C4F8                 add     esp, -$08
007BEA9E   53                     push    ebx
007BEA9F   56                     push    esi
007BEAA0   57                     push    edi
007BEAA1   33C0                   xor     eax, eax
007BEAA3   8945F8                 mov     [ebp-$08], eax
007BEAA6   33C0                   xor     eax, eax
007BEAA8   55                     push    ebp

* Possible String Reference to: 'é>^ÄÿëðŠEÿ_^[YY]Ã'
|
007BEAA9   68F5EE7B00             push    $007BEEF5

***** TRY
|
007BEAAE   64FF30                 push    dword ptr fs:[eax]
007BEAB1   648920                 mov     fs:[eax], esp
007BEAB4   C645FF00               mov     byte ptr [ebp-$01], $00
007BEAB8   33C0                   xor     eax, eax
007BEABA   55                     push    ebp
007BEABB   68D8EE7B00             push    $007BEED8

***** TRY
|
007BEAC0   64FF30                 push    dword ptr fs:[eax]
007BEAC3   648920                 mov     fs:[eax], esp
007BEAC6   33C0                   xor     eax, eax
007BEAC8   55                     push    ebp
007BEAC9   688FEE7B00             push    $007BEE8F

***** TRY
|
007BEACE   64FF30                 push    dword ptr fs:[eax]
007BEAD1   648920                 mov     fs:[eax], esp

|
007BEAD4   E84F0C0000             call    007BF728

|
007BEAD9   E8720F0000             call    007BFA50

|
007BEADE   E8B1110000             call    007BFC94

|
007BEAE3   E8E4140000             call    007BFFCC

|
007BEAE8   E85F180000             call    007C034C

|
007BEAED   E86A1A0000             call    007C055C

* Possible String Reference to: 'MESAS'
|
007BEAF2   6810EF7B00             push    $007BEF10

* Possible String Reference to: 'CODMESA'
|
007BEAF7   6820EF7B00             push    $007BEF20

* Possible String Reference to: 'no action'
|
007BEAFC   6830EF7B00             push    $007BEF30

* Possible String Reference to: 'cascade'
|
007BEB01   6844EF7B00             push    $007BEF44

* Possible String Reference to: 'FK_MESALCTO_MESAS'
|
007BEB06   6854EF7B00             push    $007BEF54

* Possible String Reference to: 'CODMESA'
|
007BEB0B   B920EF7B00             mov     ecx, $007BEF20

* Possible String Reference to: 'MESALCTO'
|
007BEB10   BA70EF7B00             mov     edx, $007BEF70
007BEB15   33C0                   xor     eax, eax

|
007BEB17   E80CCFFEFF             call    007ABA28

* Possible String Reference to: 'MESALCTO'
|
007BEB1C   6870EF7B00             push    $007BEF70

* Possible String Reference to: 'CODMESA, NUMLCTO'
|
007BEB21   6884EF7B00             push    $007BEF84

* Possible String Reference to: 'no action'
|
007BEB26   6830EF7B00             push    $007BEF30

* Possible String Reference to: 'cascade'
|
007BEB2B   6844EF7B00             push    $007BEF44

* Possible String Reference to: 'FK_MESAITEM_MESALCTO'
|
007BEB30   68A0EF7B00             push    $007BEFA0

* Possible String Reference to: 'CODMESA, NUMLCTO'
|
007BEB35   B984EF7B00             mov     ecx, $007BEF84

* Possible String Reference to: 'MESAITEM'
|
007BEB3A   BAC0EF7B00             mov     edx, $007BEFC0
007BEB3F   33C0                   xor     eax, eax

|
007BEB41   E8E2CEFEFF             call    007ABA28

* Possible String Reference to: 'MESAS'
|
007BEB46   6810EF7B00             push    $007BEF10

* Possible String Reference to: 'CODMESA'
|
007BEB4B   6820EF7B00             push    $007BEF20

* Possible String Reference to: 'no action'
|
007BEB50   6830EF7B00             push    $007BEF30

* Possible String Reference to: 'cascade'
|
007BEB55   6844EF7B00             push    $007BEF44

* Possible String Reference to: 'FK_MESAFUNC_MESAS'
|
007BEB5A   68D4EF7B00             push    $007BEFD4

* Possible String Reference to: 'CODMESA'
|
007BEB5F   B920EF7B00             mov     ecx, $007BEF20

* Possible String Reference to: 'MESAFUNC'
|
007BEB64   BAF0EF7B00             mov     edx, $007BEFF0
007BEB69   33C0                   xor     eax, eax

|
007BEB6B   E8B8CEFEFF             call    007ABA28

* Possible String Reference to: 'INTEGER'
|
007BEB70   6804F07B00             push    $007BF004
007BEB75   6A01                   push    $01

* Possible String Reference to: 'ALTURA'
|
007BEB77   B914F07B00             mov     ecx, $007BF014

* Possible String Reference to: 'MESAS'
|
007BEB7C   BA10EF7B00             mov     edx, $007BEF10
007BEB81   33C0                   xor     eax, eax

|
007BEB83   E898070000             call    007BF320

* Possible String Reference to: 'INTEGER'
|
007BEB88   6804F07B00             push    $007BF004
007BEB8D   6A01                   push    $01

* Possible String Reference to: 'LARGURA'
|
007BEB8F   B924F07B00             mov     ecx, $007BF024

* Possible String Reference to: 'MESAS'
|
007BEB94   BA10EF7B00             mov     edx, $007BEF10
007BEB99   33C0                   xor     eax, eax

|
007BEB9B   E880070000             call    007BF320
007BEBA0   6A00                   push    $00
007BEBA2   6A00                   push    $00

* Possible String Reference to: 'CODFUNC'
|
007BEBA4   B934F07B00             mov     ecx, $007BF034

* Possible String Reference to: 'MESAS'
|
007BEBA9   BA10EF7B00             mov     edx, $007BEF10
007BEBAE   33C0                   xor     eax, eax

|
007BEBB0   E86B070000             call    007BF320

* Possible String Reference to: 'INTEGER'
|
007BEBB5   6804F07B00             push    $007BF004
007BEBBA   6A01                   push    $01

* Possible String Reference to: 'OPERACAO'
|
007BEBBC   B944F07B00             mov     ecx, $007BF044

* Possible String Reference to: 'MESAS'
|
007BEBC1   BA10EF7B00             mov     edx, $007BEF10
007BEBC6   33C0                   xor     eax, eax

|
007BEBC8   E853070000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BEBCD   6858F07B00             push    $007BF058
007BEBD2   6A01                   push    $01

* Possible String Reference to: 'TIPOMESA'
|
007BEBD4   B96CF07B00             mov     ecx, $007BF06C

* Possible String Reference to: 'MESAS'
|
007BEBD9   BA10EF7B00             mov     edx, $007BEF10
007BEBDE   33C0                   xor     eax, eax

|
007BEBE0   E83B070000             call    007BF320

* Possible String Reference to: 'VARCHAR(20)'
|
007BEBE5   6880F07B00             push    $007BF080
007BEBEA   6A01                   push    $01

* Possible String Reference to: 'CODCOMANDA'
|
007BEBEC   B994F07B00             mov     ecx, $007BF094

* Possible String Reference to: 'MESAS'
|
007BEBF1   BA10EF7B00             mov     edx, $007BEF10
007BEBF6   33C0                   xor     eax, eax

|
007BEBF8   E823070000             call    007BF320

* Possible String Reference to: 'DOUBLE PRECISION'
|
007BEBFD   68A8F07B00             push    $007BF0A8
007BEC02   6A01                   push    $01

* Possible String Reference to: 'PRCCONTA'
|
007BEC04   B9C4F07B00             mov     ecx, $007BF0C4

* Possible String Reference to: 'MESAFUNC'
|
007BEC09   BAF0EF7B00             mov     edx, $007BEFF0
007BEC0E   33C0                   xor     eax, eax

|
007BEC10   E80B070000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BEC15   6858F07B00             push    $007BF058
007BEC1A   6A01                   push    $01

* Possible String Reference to: 'FECHADO'
|
007BEC1C   B9D8F07B00             mov     ecx, $007BF0D8

* Possible String Reference to: 'MESALCTO'
|
007BEC21   BA70EF7B00             mov     edx, $007BEF70
007BEC26   33C0                   xor     eax, eax

|
007BEC28   E8F3060000             call    007BF320

* Possible String Reference to: 'INTEGER'
|
007BEC2D   6804F07B00             push    $007BF004
007BEC32   6A01                   push    $01

* Possible String Reference to: 'NUMCUPOM'
|
007BEC34   B9E8F07B00             mov     ecx, $007BF0E8

* Possible String Reference to: 'MESALCTO'
|
007BEC39   BA70EF7B00             mov     edx, $007BEF70
007BEC3E   33C0                   xor     eax, eax

|
007BEC40   E8DB060000             call    007BF320

* Possible String Reference to: 'VARCHAR(5)'
|
007BEC45   68FCF07B00             push    $007BF0FC
007BEC4A   6A01                   push    $01

* Possible String Reference to: 'ESPECIE'
|
007BEC4C   B910F17B00             mov     ecx, $007BF110

* Possible String Reference to: 'MESALCTO'
|
007BEC51   BA70EF7B00             mov     edx, $007BEF70
007BEC56   33C0                   xor     eax, eax

|
007BEC58   E8C3060000             call    007BF320

* Possible String Reference to: 'VARCHAR(5)'
|
007BEC5D   68FCF07B00             push    $007BF0FC
007BEC62   6A01                   push    $01

* Possible String Reference to: 'SERIE'
|
007BEC64   B920F17B00             mov     ecx, $007BF120

* Possible String Reference to: 'MESALCTO'
|
007BEC69   BA70EF7B00             mov     edx, $007BEF70
007BEC6E   33C0                   xor     eax, eax

|
007BEC70   E8AB060000             call    007BF320

* Possible String Reference to: 'INTEGER'
|
007BEC75   6804F07B00             push    $007BF004
007BEC7A   6A00                   push    $00

* Possible String Reference to: 'OPERACAO'
|
007BEC7C   B944F07B00             mov     ecx, $007BF044

* Possible String Reference to: 'MESALCTO'
|
007BEC81   BA70EF7B00             mov     edx, $007BEF70
007BEC86   33C0                   xor     eax, eax

|
007BEC88   E893060000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BEC8D   6858F07B00             push    $007BF058
007BEC92   6A01                   push    $01

* Possible String Reference to: 'FECHADO'
|
007BEC94   B9D8F07B00             mov     ecx, $007BF0D8

* Possible String Reference to: 'MESAITEM'
|
007BEC99   BAC0EF7B00             mov     edx, $007BEFC0
007BEC9E   33C0                   xor     eax, eax

|
007BECA0   E87B060000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BECA5   6858F07B00             push    $007BF058
007BECAA   6A00                   push    $00

* Possible String Reference to: 'DESTINO'
|
007BECAC   B930F17B00             mov     ecx, $007BF130

* Possible String Reference to: 'MESAITEM'
|
007BECB1   BAC0EF7B00             mov     edx, $007BEFC0
007BECB6   33C0                   xor     eax, eax

|
007BECB8   E863060000             call    007BF320

* Possible String Reference to: 'INTEGER'
|
007BECBD   6804F07B00             push    $007BF004
007BECC2   6A01                   push    $01

* Possible String Reference to: 'CODIMPR'
|
007BECC4   B940F17B00             mov     ecx, $007BF140

* Possible String Reference to: 'MESAITEM'
|
007BECC9   BAC0EF7B00             mov     edx, $007BEFC0
007BECCE   33C0                   xor     eax, eax

|
007BECD0   E84B060000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BECD5   6858F07B00             push    $007BF058
007BECDA   6A01                   push    $01

* Possible String Reference to: 'IMPRESSO'
|
007BECDC   B950F17B00             mov     ecx, $007BF150

* Possible String Reference to: 'MESAITEM'
|
007BECE1   BAC0EF7B00             mov     edx, $007BEFC0
007BECE6   33C0                   xor     eax, eax

|
007BECE8   E833060000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BECED   6858F07B00             push    $007BF058
007BECF2   6A01                   push    $01

* Possible String Reference to: 'VIAGEM'
|
007BECF4   B964F17B00             mov     ecx, $007BF164

* Possible String Reference to: 'MESAITEM'
|
007BECF9   BAC0EF7B00             mov     edx, $007BEFC0
007BECFE   33C0                   xor     eax, eax

|
007BED00   E81B060000             call    007BF320

* Possible String Reference to: 'VARCHAR(5)'
|
007BED05   68FCF07B00             push    $007BF0FC
007BED0A   6A01                   push    $01

* Possible String Reference to: 'HRREQUIS'
|
007BED0C   B974F17B00             mov     ecx, $007BF174

* Possible String Reference to: 'MESAITEM'
|
007BED11   BAC0EF7B00             mov     edx, $007BEFC0
007BED16   33C0                   xor     eax, eax

|
007BED18   E803060000             call    007BF320

* Possible String Reference to: 'VARCHAR(5)'
|
007BED1D   68FCF07B00             push    $007BF0FC
007BED22   6A01                   push    $01

* Possible String Reference to: 'HRATEND'
|
007BED24   B988F17B00             mov     ecx, $007BF188

* Possible String Reference to: 'MESAITEM'
|
007BED29   BAC0EF7B00             mov     edx, $007BEFC0
007BED2E   33C0                   xor     eax, eax

|
007BED30   E8EB050000             call    007BF320

* Possible String Reference to: 'VARCHAR(30)'
|
007BED35   6898F17B00             push    $007BF198
007BED3A   6A01                   push    $01

* Possible String Reference to: 'HISTORICO'
|
007BED3C   B9ACF17B00             mov     ecx, $007BF1AC

* Possible String Reference to: 'MESAITEM'
|
007BED41   BAC0EF7B00             mov     edx, $007BEFC0
007BED46   33C0                   xor     eax, eax

|
007BED48   E8D3050000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BED4D   6858F07B00             push    $007BF058
007BED52   6A01                   push    $01

* Possible String Reference to: 'MONTADO'
|
007BED54   B9C0F17B00             mov     ecx, $007BF1C0

* Possible String Reference to: 'MESAITEM'
|
007BED59   BAC0EF7B00             mov     edx, $007BEFC0
007BED5E   33C0                   xor     eax, eax

|
007BED60   E8BB050000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BED65   6858F07B00             push    $007BF058
007BED6A   6A01                   push    $01

* Possible String Reference to: 'KIT'
|
007BED6C   B9D0F17B00             mov     ecx, $007BF1D0

* Possible String Reference to: 'MESAITEM'
|
007BED71   BAC0EF7B00             mov     edx, $007BEFC0
007BED76   33C0                   xor     eax, eax

|
007BED78   E8A3050000             call    007BF320

* Possible String Reference to: 'DOUBLE PRECISION'
|
007BED7D   68A8F07B00             push    $007BF0A8
007BED82   6A01                   push    $01

* Possible String Reference to: 'VLRTABELA'
|
007BED84   B9DCF17B00             mov     ecx, $007BF1DC

* Possible String Reference to: 'MESAITEM'
|
007BED89   BAC0EF7B00             mov     edx, $007BEFC0
007BED8E   33C0                   xor     eax, eax

|
007BED90   E88B050000             call    007BF320

* Possible String Reference to: 'DOUBLE PRECISION'
|
007BED95   68A8F07B00             push    $007BF0A8
007BED9A   6A01                   push    $01

* Possible String Reference to: 'VLRCUSTO'
|
007BED9C   B9F0F17B00             mov     ecx, $007BF1F0

* Possible String Reference to: 'MESAITEM'
|
007BEDA1   BAC0EF7B00             mov     edx, $007BEFC0
007BEDA6   33C0                   xor     eax, eax

|
007BEDA8   E873050000             call    007BF320

* Possible String Reference to: 'INTEGER'
|
007BEDAD   6804F07B00             push    $007BF004
007BEDB2   6A01                   push    $01

* Possible String Reference to: 'CODIMPR'
|
007BEDB4   B940F17B00             mov     ecx, $007BF140

* Possible String Reference to: 'GRUPOS'
|
007BEDB9   BA04F27B00             mov     edx, $007BF204
007BEDBE   33C0                   xor     eax, eax

|
007BEDC0   E85B050000             call    007BF320

* Possible String Reference to: 'INTEGER'
|
007BEDC5   6804F07B00             push    $007BF004
007BEDCA   6A00                   push    $00

* Possible String Reference to: 'DESTINO'
|
007BEDCC   B930F17B00             mov     ecx, $007BF130

* Possible String Reference to: 'GRUPOS'
|
007BEDD1   BA04F27B00             mov     edx, $007BF204
007BEDD6   33C0                   xor     eax, eax

|
007BEDD8   E843050000             call    007BF320

* Possible String Reference to: 'DOUBLE PRECISION'
|
007BEDDD   68A8F07B00             push    $007BF0A8
007BEDE2   6A01                   push    $01

* Possible String Reference to: 'ALIQIPI'
|
007BEDE4   B914F27B00             mov     ecx, $007BF214

* Possible String Reference to: 'PRODUTOS'
|
007BEDE9   BA24F27B00             mov     edx, $007BF224
007BEDEE   33C0                   xor     eax, eax

|
007BEDF0   E82B050000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BEDF5   6858F07B00             push    $007BF058
007BEDFA   6A01                   push    $01

* Possible String Reference to: 'CAIXABERTO'
|
007BEDFC   B938F27B00             mov     ecx, $007BF238

* Possible String Reference to: 'PARMSIST'
|
007BEE01   BA4CF27B00             mov     edx, $007BF24C
007BEE06   33C0                   xor     eax, eax

|
007BEE08   E813050000             call    007BF320

* Possible String Reference to: 'INTEGER'
|
007BEE0D   6804F07B00             push    $007BF004
007BEE12   6A01                   push    $01

* Possible String Reference to: 'CODMAPA'
|
007BEE14   B960F27B00             mov     ecx, $007BF260

* Possible String Reference to: 'IMPRGRILL'
|
007BEE19   BA70F27B00             mov     edx, $007BF270
007BEE1E   33C0                   xor     eax, eax

|
007BEE20   E8FB040000             call    007BF320

* Possible String Reference to: 'VARCHAR(1)'
|
007BEE25   6858F07B00             push    $007BF058
007BEE2A   6A01                   push    $01

* Possible String Reference to: 'NAOIMPRIME'
|
007BEE2C   B984F27B00             mov     ecx, $007BF284

* Possible String Reference to: 'IMPRGRILL'
|
007BEE31   BA70F27B00             mov     edx, $007BF270
007BEE36   33C0                   xor     eax, eax

|
007BEE38   E8E3040000             call    007BF320

* Possible String Reference to: 'DOUBLE PRECISION'
|
007BEE3D   68A8F07B00             push    $007BF0A8
007BEE42   6A01                   push    $01

* Possible String Reference to: 'VLRDEDUC'
|
007BEE44   B998F27B00             mov     ecx, $007BF298

* Possible String Reference to: 'ARECITEM'
|
007BEE49   BAACF27B00             mov     edx, $007BF2AC
007BEE4E   33C0                   xor     eax, eax

|
007BEE50   E8CB040000             call    007BF320

* Possible String Reference to: 'DOUBLE PRECISION'
|
007BEE55   68A8F07B00             push    $007BF0A8
007BEE5A   6A01                   push    $01

* Possible String Reference to: 'VLRACRESC'
|
007BEE5C   B9C0F27B00             mov     ecx, $007BF2C0

* Possible String Reference to: 'ARECITEM'
|
007BEE61   BAACF27B00             mov     edx, $007BF2AC
007BEE66   33C0                   xor     eax, eax

|
007BEE68   E8B3040000             call    007BF320

* Possible String Reference to: 'VARCHAR(5)'
|
007BEE6D   68FCF07B00             push    $007BF0FC
007BEE72   6A01                   push    $01

* Possible String Reference to: 'ORIGEMLCTO'
|
007BEE74   B9D4F27B00             mov     ecx, $007BF2D4

* Possible String Reference to: 'SAIDAS'
|
007BEE79   BAE8F27B00             mov     edx, $007BF2E8
007BEE7E   33C0                   xor     eax, eax

|
007BEE80   E89B040000             call    007BF320
007BEE85   33C0                   xor     eax, eax
007BEE87   5A                     pop     edx
007BEE88   59                     pop     ecx
007BEE89   59                     pop     ecx
007BEE8A   648910                 mov     fs:[eax], edx
007BEE8D   EB3B                   jmp     007BEECA

* Reference to: System.@HandleOnException;
|
007BEE8F   E91C5DC4FF             jmp     00404BB0
007BEE94   0100                   add     [eax], eax
007BEE96   0000                   add     [eax], al
007BEE98   40                     inc     eax
007BEE99   95                     xchg    eax, ebp
007BEE9A   40                     inc     eax
007BEE9B   00A0EE7B0089           add     [eax+$89007BEE], ah
007BEEA1   C3                     ret

007BEEA2   6A00                   push    $00
007BEEA4   8B4B04                 mov     ecx, [ebx+$04]
007BEEA7   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Erro ao verificar a estrutura!'
|
007BEEAA   BAF8F27B00             mov     edx, $007BF2F8

* Reference to: System.@LStrCat3;
|
007BEEAF   E8F468C4FF             call    004057A8
007BEEB4   8B45F8                 mov     eax, [ebp-$08]
007BEEB7   668B0D1CF37B00         mov     cx, word ptr [$007BF31C]
007BEEBE   B201                   mov     dl, $01

|
007BEEC0   E8674CC8FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007BEEC5   E8E65FC4FF             call    00404EB0

****** END
|
007BEECA   33C0                   xor     eax, eax
007BEECC   5A                     pop     edx
007BEECD   59                     pop     ecx
007BEECE   59                     pop     ecx
007BEECF   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BEED2   68DFEE7B00             push    $007BEEDF
007BEED7   C3                     ret


* Reference to: System.@HandleFinally;
|
007BEED8   E95B5EC4FF             jmp     00404D38
007BEEDD   EBF8                   jmp     007BEED7

****** END
|
007BEEDF   33C0                   xor     eax, eax
007BEEE1   5A                     pop     edx
007BEEE2   59                     pop     ecx
007BEEE3   59                     pop     ecx
007BEEE4   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
007BEEE7   68FCEE7B00             push    $007BEEFC
007BEEEC   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007BEEEF   E8A865C4FF             call    0040549C
007BEEF4   C3                     ret

*)
end;

procedure TDmC._PROC_007BEEF5(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007BEEF5   E93E5EC4FF             jmp     00404D38

|
007BEEFA   EBF0                   jmp     007BEEEC
007BEEFC   8A45FF                 mov     al, byte ptr [ebp-$01]
007BEEFF   5F                     pop     edi
007BEF00   5E                     pop     esi
007BEF01   5B                     pop     ebx
007BEF02   59                     pop     ecx
007BEF03   59                     pop     ecx
007BEF04   5D                     pop     ebp
007BEF05   C3                     ret

*)
end;

procedure TDmC._PROC_007BEF8F(Sender : TObject);
begin
(*
007BEF8F   4D                     dec     ebp
007BEF90   4C                     dec     esp
007BEF91   43                     inc     ebx
007BEF92   54                     push    esp
007BEF93   4F                     dec     edi
007BEF94   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BEFDD(Sender : TObject);
begin
(*
007BEFDD   4E                     dec     esi
007BEFDE   43                     inc     ebx
007BEFDF   5F                     pop     edi
007BEFE0   4D                     dec     ebp
007BEFE1   45                     inc     ebp
007BEFE2   53                     push    ebx
007BEFE3   41                     inc     ecx
007BEFE4   53                     push    ebx
007BEFE5   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BEFF6(Sender : TObject);
begin
(*
007BEFF6   4E                     dec     esi
007BEFF7   43                     inc     ebx
007BEFF8   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF018(Sender : TObject);
begin
(*
007BF018   52                     push    edx
007BF019   41                     inc     ecx
007BF01A   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF029(Sender : TObject);
begin
(*
007BF029   52                     push    edx
007BF02A   41                     inc     ecx
007BF02B   00FF                   add     bh, bh
007BF02D   FFFF                   DB  $FF, $FF  //      
007BF02F   FF07                   inc     dword ptr [edi]
007BF031   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF039(Sender : TObject);
begin
(*
007BF039   4E                     dec     esi
007BF03A   43                     inc     ebx
007BF03B   00FF                   add     bh, bh
007BF03D   FFFF                   DB  $FF, $FF  //      
007BF03F   FF08                   dec     dword ptr [eax]
007BF041   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF0AB(Sender : TObject);
begin
(*
007BF0AB   42                     inc     edx
007BF0AC   4C                     dec     esp
007BF0AD   45                     inc     ebp
007BF0AE   205052                 and     [eax+$52], dl
007BF0B1   45                     inc     ebp
007BF0B2   43                     inc     ebx
007BF0B3   49                     dec     ecx
007BF0B4   53                     push    ebx
007BF0B5   49                     dec     ecx
007BF0B6   4F                     dec     edi
007BF0B7   4E                     dec     esi
007BF0B8   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF0EA(Sender : TObject);
begin
(*
007BF0EA   4D                     dec     ebp
007BF0EB   43                     inc     ebx
007BF0EC   55                     push    ebp
007BF0ED   50                     push    eax
007BF0EE   4F                     dec     edi
007BF0EF   4D                     dec     ebp
007BF0F0   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF17A(Sender : TObject);
begin
(*
007BF17A   49                     dec     ecx
007BF17B   53                     push    ebx
007BF17C   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF1F5(Sender : TObject);
begin
(*
007BF1F5   53                     push    ebx
007BF1F6   54                     push    esp
007BF1F7   4F                     dec     edi
007BF1F8   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF207(Sender : TObject);
begin
(*
007BF207   50                     push    eax
007BF208   4F                     dec     edi
007BF209   53                     push    ebx
007BF20A   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF229(Sender : TObject);
begin
(*
007BF229   54                     push    esp
007BF22A   4F                     dec     edi
007BF22B   53                     push    ebx
007BF22C   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF29F(Sender : TObject);
begin
(*
007BF29F   43                     inc     ebx
007BF2A0   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF321(Sender : TObject);
begin
(*
007BF321   8BEC                   mov     ebp, esp
007BF323   83C4EC                 add     esp, -$14
007BF326   53                     push    ebx
007BF327   56                     push    esi
007BF328   57                     push    edi
007BF329   33DB                   xor     ebx, ebx
007BF32B   895DEC                 mov     [ebp-$14], ebx
007BF32E   894DF8                 mov     [ebp-$08], ecx
007BF331   8955FC                 mov     [ebp-$04], edx
007BF334   8BF0                   mov     esi, eax
007BF336   8B5D08                 mov     ebx, [ebp+$08]
007BF339   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007BF33C   E80B66C4FF             call    0040594C
007BF341   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007BF344   E80366C4FF             call    0040594C
007BF349   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007BF34C   E8FB65C4FF             call    0040594C
007BF351   33C0                   xor     eax, eax
007BF353   55                     push    ebp
007BF354   68BCF47B00             push    $007BF4BC

***** TRY
|
007BF359   64FF30                 push    dword ptr fs:[eax]
007BF35C   648920                 mov     fs:[eax], esp
007BF35F   C645F701               mov     byte ptr [ebp-$09], $01
007BF363   B201                   mov     dl, $01

* Reference to class TStringList
|
007BF365   A1D4044200             mov     eax, dword ptr [$004204D4]

* Reference to: System.TObject.Create(TObject;Boolean);
|
007BF36A   E8FD51C4FF             call    0040456C
007BF36F   8945F0                 mov     [ebp-$10], eax
007BF372   33C0                   xor     eax, eax
007BF374   55                     push    ebp
007BF375   688AF47B00             push    $007BF48A

***** TRY
|
007BF37A   64FF30                 push    dword ptr fs:[eax]
007BF37D   648920                 mov     fs:[eax], esp
007BF380   33C0                   xor     eax, eax
007BF382   55                     push    ebp
007BF383   6822F47B00             push    $007BF422

***** TRY
|
007BF388   64FF30                 push    dword ptr fs:[eax]
007BF38B   648920                 mov     fs:[eax], esp
007BF38E   8BC6                   mov     eax, esi
007BF390   83E801                 sub     eax, +$01
007BF393   7205                   jb      007BF39A
007BF395   48                     dec     eax
007BF396   7419                   jz      007BF3B1
007BF398   EB2C                   jmp     007BF3C6
007BF39A   A178B47D00             mov     eax, dword ptr [$007DB478]
007BF39F   8B00                   mov     eax, [eax]
007BF3A1   8B4058                 mov     eax, [eax+$58]
007BF3A4   8B4DF0                 mov     ecx, [ebp-$10]
007BF3A7   8B55FC                 mov     edx, [ebp-$04]

* Reference to: IBDatabase.TIBDatabase.GetFieldNames(TIBDatabase;AnsiString;TStrings);
|
007BF3AA   E875BADAFF             call    0056AE24
007BF3AF   EB15                   jmp     007BF3C6
007BF3B1   A178B47D00             mov     eax, dword ptr [$007DB478]
007BF3B6   8B00                   mov     eax, [eax]
007BF3B8   8B4060                 mov     eax, [eax+$60]
007BF3BB   8B4DF0                 mov     ecx, [ebp-$10]
007BF3BE   8B55FC                 mov     edx, [ebp-$04]

* Reference to: IBDatabase.TIBDatabase.GetFieldNames(TIBDatabase;AnsiString;TStrings);
|
007BF3C1   E85EBADAFF             call    0056AE24
007BF3C6   83FB01                 cmp     ebx, +$01
007BF3C9   7523                   jnz     007BF3EE
007BF3CB   8B55F8                 mov     edx, [ebp-$08]
007BF3CE   8B45F0                 mov     eax, [ebp-$10]
007BF3D1   8B08                   mov     ecx, [eax]

* Reference to method TStringList.IndexOf(string)
|
007BF3D3   FF5154                 call    dword ptr [ecx+$54]
007BF3D6   40                     inc     eax
007BF3D7   753F                   jnz     007BF418
007BF3D9   8B450C                 mov     eax, [ebp+$0C]
007BF3DC   50                     push    eax
007BF3DD   6A01                   push    $01
007BF3DF   8B4DF8                 mov     ecx, [ebp-$08]
007BF3E2   8B55FC                 mov     edx, [ebp-$04]
007BF3E5   8BC6                   mov     eax, esi

|
007BF3E7   E830010000             call    007BF51C
007BF3EC   EB2A                   jmp     007BF418
007BF3EE   85DB                   test    ebx, ebx
007BF3F0   7523                   jnz     007BF415
007BF3F2   8B55F8                 mov     edx, [ebp-$08]
007BF3F5   8B45F0                 mov     eax, [ebp-$10]
007BF3F8   8B08                   mov     ecx, [eax]

* Reference to method TStringList.IndexOf(string)
|
007BF3FA   FF5154                 call    dword ptr [ecx+$54]
007BF3FD   40                     inc     eax
007BF3FE   7418                   jz      007BF418
007BF400   8B450C                 mov     eax, [ebp+$0C]
007BF403   50                     push    eax
007BF404   6A00                   push    $00
007BF406   8B4DF8                 mov     ecx, [ebp-$08]
007BF409   8B55FC                 mov     edx, [ebp-$04]
007BF40C   8BC6                   mov     eax, esi

|
007BF40E   E809010000             call    007BF51C
007BF413   EB03                   jmp     007BF418
007BF415   83FB02                 cmp     ebx, +$02
007BF418   33C0                   xor     eax, eax
007BF41A   5A                     pop     edx
007BF41B   59                     pop     ecx
007BF41C   59                     pop     ecx
007BF41D   648910                 mov     fs:[eax], edx
007BF420   EB52                   jmp     007BF474

* Reference to: System.@HandleOnException;
|
007BF422   E98957C4FF             jmp     00404BB0
007BF427   0100                   add     [eax], eax
007BF429   0000                   add     [eax], al
007BF42B   40                     inc     eax
007BF42C   95                     xchg    eax, ebp
007BF42D   40                     inc     eax
007BF42E   0033                   add     [ebx], dh
007BF430   F4                     hlt
007BF431   7B00                   jnp     007BF433
007BF433   89C3                   mov     ebx, eax
007BF435   6A00                   push    $00

* Possible String Reference to: 'Erro ao verificar a estrura da tabe
|                                la '
|
007BF437   68D8F47B00             push    $007BF4D8
007BF43C   FF75FC                 push    dword ptr [ebp-$04]
007BF43F   6808F57B00             push    $007BF508
007BF444   6814F57B00             push    $007BF514
007BF449   6814F57B00             push    $007BF514
007BF44E   FF7304                 push    dword ptr [ebx+$04]
007BF451   8D45EC                 lea     eax, [ebp-$14]
007BF454   BA06000000             mov     edx, $00000006

* Reference to: System.@LStrCatN;
|
007BF459   E8BE63C4FF             call    0040581C
007BF45E   8B45EC                 mov     eax, [ebp-$14]
007BF461   668B0D18F57B00         mov     cx, word ptr [$007BF518]
007BF468   B201                   mov     dl, $01

|
007BF46A   E8BD46C8FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007BF46F   E83C5AC4FF             call    00404EB0

****** END
|
007BF474   33C0                   xor     eax, eax
007BF476   5A                     pop     edx
007BF477   59                     pop     ecx
007BF478   59                     pop     ecx
007BF479   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BF47C   6891F47B00             push    $007BF491
007BF481   8B45F0                 mov     eax, [ebp-$10]

* Reference to: System.TObject.Free(TObject);
|
007BF484   E81351C4FF             call    0040459C
007BF489   C3                     ret


* Reference to: System.@HandleFinally;
|
007BF48A   E9A958C4FF             jmp     00404D38
007BF48F   EBF0                   jmp     007BF481

****** END
|
007BF491   33C0                   xor     eax, eax
007BF493   5A                     pop     edx
007BF494   59                     pop     ecx
007BF495   59                     pop     ecx
007BF496   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BF499   68C3F47B00             push    $007BF4C3
007BF49E   8D45EC                 lea     eax, [ebp-$14]

* Reference to: System.@LStrClr(void;void);
|
007BF4A1   E8F65FC4FF             call    0040549C
007BF4A6   8D45F8                 lea     eax, [ebp-$08]
007BF4A9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BF4AE   E80D60C4FF             call    004054C0
007BF4B3   8D450C                 lea     eax, [ebp+$0C]

* Reference to: System.@LStrClr(void;void);
|
007BF4B6   E8E15FC4FF             call    0040549C
007BF4BB   C3                     ret


* Reference to: System.@HandleFinally;
|
007BF4BC   E97758C4FF             jmp     00404D38
007BF4C1   EBDB                   jmp     007BF49E

****** END
|
007BF4C3   8A45F7                 mov     al, byte ptr [ebp-$09]
007BF4C6   5F                     pop     edi
007BF4C7   5E                     pop     esi
007BF4C8   5B                     pop     ebx
007BF4C9   8BE5                   mov     esp, ebp
007BF4CB   5D                     pop     ebp
007BF4CC   C20800                 ret     $0008

*)
end;

procedure TDmC._PROC_007BF4BC(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007BF4BC   E97758C4FF             jmp     00404D38

|
007BF4C1   EBDB                   jmp     007BF49E
007BF4C3   8A45F7                 mov     al, byte ptr [ebp-$09]
007BF4C6   5F                     pop     edi
007BF4C7   5E                     pop     esi
007BF4C8   5B                     pop     ebx
007BF4C9   8BE5                   mov     esp, ebp
007BF4CB   5D                     pop     ebp
007BF4CC   C20800                 ret     $0008

*)
end;

procedure TDmC._PROC_007BF51D(Sender : TObject);
begin
(*
007BF51D   8BEC                   mov     ebp, esp
007BF51F   83C4E0                 add     esp, -$20
007BF522   53                     push    ebx
007BF523   56                     push    esi
007BF524   57                     push    edi
007BF525   33DB                   xor     ebx, ebx
007BF527   895DE0                 mov     [ebp-$20], ebx
007BF52A   895DE4                 mov     [ebp-$1C], ebx
007BF52D   895DE8                 mov     [ebp-$18], ebx
007BF530   895DEC                 mov     [ebp-$14], ebx
007BF533   894DF8                 mov     [ebp-$08], ecx
007BF536   8955FC                 mov     [ebp-$04], edx
007BF539   8BD8                   mov     ebx, eax
007BF53B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007BF53E   E80964C4FF             call    0040594C
007BF543   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007BF546   E80164C4FF             call    0040594C
007BF54B   8B450C                 mov     eax, [ebp+$0C]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007BF54E   E8F963C4FF             call    0040594C
007BF553   33C0                   xor     eax, eax
007BF555   55                     push    ebp
007BF556   68B0F67B00             push    $007BF6B0

***** TRY
|
007BF55B   64FF30                 push    dword ptr fs:[eax]
007BF55E   648920                 mov     fs:[eax], esp
007BF561   33C9                   xor     ecx, ecx
007BF563   B201                   mov     dl, $01

* Reference to class TIBSQL
|
007BF565   A138205600             mov     eax, dword ptr [$00562038]

* Reference to: IBSQL.TIBSQL.Create(TIBSQL;boolean;TComponent);
|
007BF56A   E8395ADAFF             call    00564FA8
007BF56F   8945F0                 mov     [ebp-$10], eax
007BF572   33C0                   xor     eax, eax
007BF574   55                     push    ebp
007BF575   6879F67B00             push    $007BF679

***** TRY
|
007BF57A   64FF30                 push    dword ptr fs:[eax]
007BF57D   648920                 mov     fs:[eax], esp
007BF580   8B55F0                 mov     edx, [ebp-$10]
007BF583   8BC3                   mov     eax, ebx

* Reference to : TFrmInfoAtu._PROC_007A8D7C()
|
007BF585   E8F297FEFF             call    007A8D7C
007BF58A   8B45F0                 mov     eax, [ebp-$10]

* Reference to field TIBSQL.OFFS_0058
|
007BF58D   8B5858                 mov     ebx, [eax+$58]
007BF590   8BC3                   mov     eax, ebx
007BF592   8B10                   mov     edx, [eax]
007BF594   FF5244                 call    dword ptr [edx+$44]
007BF597   8D45EC                 lea     eax, [ebp-$14]
007BF59A   8B4DFC                 mov     ecx, [ebp-$04]

* Possible String Reference to: 'ALTER TABLE '
|
007BF59D   BACCF67B00             mov     edx, $007BF6CC

* Reference to: System.@LStrCat3;
|
007BF5A2   E80162C4FF             call    004057A8
007BF5A7   8B55EC                 mov     edx, [ebp-$14]
007BF5AA   8BC3                   mov     eax, ebx
007BF5AC   8B08                   mov     ecx, [eax]
007BF5AE   FF5138                 call    dword ptr [ecx+$38]
007BF5B1   8B4508                 mov     eax, [ebp+$08]
007BF5B4   83E801                 sub     eax, +$01
007BF5B7   7204                   jb      007BF5BD
007BF5B9   741E                   jz      007BF5D9
007BF5BB   EB45                   jmp     007BF602
007BF5BD   8D45E8                 lea     eax, [ebp-$18]
007BF5C0   8B4DF8                 mov     ecx, [ebp-$08]

* Possible String Reference to: ' DROP '
|
007BF5C3   BAE4F67B00             mov     edx, $007BF6E4

* Reference to: System.@LStrCat3;
|
007BF5C8   E8DB61C4FF             call    004057A8
007BF5CD   8B55E8                 mov     edx, [ebp-$18]
007BF5D0   8BC3                   mov     eax, ebx
007BF5D2   8B08                   mov     ecx, [eax]
007BF5D4   FF5138                 call    dword ptr [ecx+$38]
007BF5D7   EB50                   jmp     007BF629

* Possible String Reference to: ' ADD  '
|
007BF5D9   68F4F67B00             push    $007BF6F4
007BF5DE   FF75F8                 push    dword ptr [ebp-$08]
007BF5E1   6804F77B00             push    $007BF704
007BF5E6   FF750C                 push    dword ptr [ebp+$0C]
007BF5E9   8D45E4                 lea     eax, [ebp-$1C]
007BF5EC   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
007BF5F1   E82662C4FF             call    0040581C
007BF5F6   8B55E4                 mov     edx, [ebp-$1C]
007BF5F9   8BC3                   mov     eax, ebx
007BF5FB   8B08                   mov     ecx, [eax]
007BF5FD   FF5138                 call    dword ptr [ecx+$38]
007BF600   EB27                   jmp     007BF629

* Possible String Reference to: ' ALTER '
|
007BF602   6810F77B00             push    $007BF710
007BF607   FF75F8                 push    dword ptr [ebp-$08]

* Possible String Reference to: ' TYPE '
|
007BF60A   6820F77B00             push    $007BF720
007BF60F   FF750C                 push    dword ptr [ebp+$0C]
007BF612   8D45E0                 lea     eax, [ebp-$20]
007BF615   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrCatN;
|
007BF61A   E8FD61C4FF             call    0040581C
007BF61F   8B55E0                 mov     edx, [ebp-$20]
007BF622   8BC3                   mov     eax, ebx
007BF624   8B08                   mov     ecx, [eax]
007BF626   FF5138                 call    dword ptr [ecx+$38]
007BF629   33C0                   xor     eax, eax
007BF62B   55                     push    ebp

* Possible String Reference to: 'é*TÄÿÆE÷'
|
007BF62C   6855F67B00             push    $007BF655

***** TRY
|
007BF631   64FF30                 push    dword ptr fs:[eax]
007BF634   648920                 mov     fs:[eax], esp
007BF637   8B45F0                 mov     eax, [ebp-$10]

* Reference to: IBSQL.TIBSQL.ExecQuery(TIBSQL);
|
007BF63A   E8CD5DDAFF             call    0056540C
007BF63F   8B45F0                 mov     eax, [ebp-$10]

|
007BF642   E8E5B4FEFF             call    007AAB2C
007BF647   C645F701               mov     byte ptr [ebp-$09], $01
007BF64B   33C0                   xor     eax, eax
007BF64D   5A                     pop     edx
007BF64E   59                     pop     ecx
007BF64F   59                     pop     ecx
007BF650   648910                 mov     fs:[eax], edx
007BF653   EB0E                   jmp     007BF663

* Reference to: System.@HandleAnyException;
|
007BF655   E92A54C4FF             jmp     00404A84
007BF65A   C645F700               mov     byte ptr [ebp-$09], $00

* Reference to: System.@DoneExcept;
|
007BF65E   E84D58C4FF             call    00404EB0

****** END
|
007BF663   33C0                   xor     eax, eax
007BF665   5A                     pop     edx
007BF666   59                     pop     ecx
007BF667   59                     pop     ecx
007BF668   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BF66B   6880F67B00             push    $007BF680
007BF670   8B45F0                 mov     eax, [ebp-$10]

* Reference to: System.TObject.Free(TObject);
|
007BF673   E8244FC4FF             call    0040459C
007BF678   C3                     ret


* Reference to: System.@HandleFinally;
|
007BF679   E9BA56C4FF             jmp     00404D38
007BF67E   EBF0                   jmp     007BF670

****** END
|
007BF680   33C0                   xor     eax, eax
007BF682   5A                     pop     edx
007BF683   59                     pop     ecx
007BF684   59                     pop     ecx
007BF685   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BF688   68B7F67B00             push    $007BF6B7
007BF68D   8D45E0                 lea     eax, [ebp-$20]
007BF690   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BF695   E8265EC4FF             call    004054C0
007BF69A   8D45F8                 lea     eax, [ebp-$08]
007BF69D   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007BF6A2   E8195EC4FF             call    004054C0
007BF6A7   8D450C                 lea     eax, [ebp+$0C]

* Reference to: System.@LStrClr(void;void);
|
007BF6AA   E8ED5DC4FF             call    0040549C
007BF6AF   C3                     ret


* Reference to: System.@HandleFinally;
|
007BF6B0   E98356C4FF             jmp     00404D38
007BF6B5   EBD6                   jmp     007BF68D

****** END
|
007BF6B7   8A45F7                 mov     al, byte ptr [ebp-$09]
007BF6BA   5F                     pop     edi
007BF6BB   5E                     pop     esi
007BF6BC   5B                     pop     ebx
007BF6BD   8BE5                   mov     esp, ebp
007BF6BF   5D                     pop     ebp
007BF6C0   C20800                 ret     $0008

*)
end;

procedure TDmC._PROC_007BF729(Sender : TObject);
begin
(*
007BF729   8BEC                   mov     ebp, esp
007BF72B   83C4F8                 add     esp, -$08
007BF72E   53                     push    ebx
007BF72F   56                     push    esi
007BF730   57                     push    edi
007BF731   33C0                   xor     eax, eax
007BF733   8945F8                 mov     [ebp-$08], eax
007BF736   33C0                   xor     eax, eax
007BF738   55                     push    ebp

* Possible String Reference to: 'éBTÄÿëðŠEÿ_^[YY]Ã'
|
007BF739   68F1F87B00             push    $007BF8F1

***** TRY
|
007BF73E   64FF30                 push    dword ptr fs:[eax]
007BF741   648920                 mov     fs:[eax], esp
007BF744   C645FF00               mov     byte ptr [ebp-$01], $00
007BF748   33C0                   xor     eax, eax
007BF74A   55                     push    ebp
007BF74B   68D4F87B00             push    $007BF8D4

***** TRY
|
007BF750   64FF30                 push    dword ptr fs:[eax]
007BF753   648920                 mov     fs:[eax], esp
007BF756   33C0                   xor     eax, eax
007BF758   55                     push    ebp
007BF759   688BF87B00             push    $007BF88B

***** TRY
|
007BF75E   64FF30                 push    dword ptr fs:[eax]
007BF761   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'MESAS'
|
007BF764   BA0CF97B00             mov     edx, $007BF90C
007BF769   33C0                   xor     eax, eax

|
007BF76B   E8ECB4FEFF             call    007AAC5C
007BF770   84C0                   test    al, al
007BF772   0F8509010000           jnz     007BF881
007BF778   6A00                   push    $00
007BF77A   A1ACA07D00             mov     eax, dword ptr [$007DA0AC]
007BF77F   B901000000             mov     ecx, $00000001

* Reference to object .4
|
007BF784   8B15A8515D00           mov     edx, [$005D51A8]

* Reference to: System.@DynArraySetLength;
|
007BF78A   E82174C4FF             call    00406BB0
007BF78F   83C404                 add     esp, +$04
007BF792   6A01                   push    $01
007BF794   33C9                   xor     ecx, ecx
007BF796   B203                   mov     dl, $03

* Possible String Reference to: 'CODMESA'
|
007BF798   B81CF97B00             mov     eax, $007BF91C

|
007BF79D   E816B8FEFF             call    007AAFB8
007BF7A2   6A00                   push    $00
007BF7A4   B919000000             mov     ecx, $00000019
007BF7A9   B201                   mov     dl, $01

* Possible String Reference to: 'DESCRICAO'
|
007BF7AB   B82CF97B00             mov     eax, $007BF92C

|
007BF7B0   E803B8FEFF             call    007AAFB8
007BF7B5   6A00                   push    $00
007BF7B7   B901000000             mov     ecx, $00000001
007BF7BC   B201                   mov     dl, $01

* Possible String Reference to: 'STATUS'
|
007BF7BE   B840F97B00             mov     eax, $007BF940

|
007BF7C3   E8F0B7FEFF             call    007AAFB8
007BF7C8   6A00                   push    $00
007BF7CA   33C9                   xor     ecx, ecx
007BF7CC   B203                   mov     dl, $03

* Possible String Reference to: 'NUMPESSOAS'
|
007BF7CE   B850F97B00             mov     eax, $007BF950

|
007BF7D3   E8E0B7FEFF             call    007AAFB8
007BF7D8   6A00                   push    $00
007BF7DA   33C9                   xor     ecx, ecx
007BF7DC   B203                   mov     dl, $03

* Possible String Reference to: 'ATEND_DIA'
|
007BF7DE   B864F97B00             mov     eax, $007BF964

|
007BF7E3   E8D0B7FEFF             call    007AAFB8
007BF7E8   6A00                   push    $00
007BF7EA   33C9                   xor     ecx, ecx
007BF7EC   B203                   mov     dl, $03

* Possible String Reference to: 'ATEND_MES'
|
007BF7EE   B878F97B00             mov     eax, $007BF978

|
007BF7F3   E8C0B7FEFF             call    007AAFB8
007BF7F8   6A00                   push    $00
007BF7FA   33C9                   xor     ecx, ecx
007BF7FC   B206                   mov     dl, $06

* Possible String Reference to: 'VLR_ACUM_DIA'
|
007BF7FE   B88CF97B00             mov     eax, $007BF98C

|
007BF803   E8B0B7FEFF             call    007AAFB8
007BF808   6A00                   push    $00
007BF80A   33C9                   xor     ecx, ecx
007BF80C   B206                   mov     dl, $06

* Possible String Reference to: 'VLR_ACUM_MES'
|
007BF80E   B8A4F97B00             mov     eax, $007BF9A4

|
007BF813   E8A0B7FEFF             call    007AAFB8
007BF818   6A00                   push    $00
007BF81A   33C9                   xor     ecx, ecx
007BF81C   B20B                   mov     dl, $0B

* Possible String Reference to: 'HR_ULT_ATEND'
|
007BF81E   B8BCF97B00             mov     eax, $007BF9BC

|
007BF823   E890B7FEFF             call    007AAFB8
007BF828   6A00                   push    $00
007BF82A   33C9                   xor     ecx, ecx
007BF82C   B203                   mov     dl, $03

* Possible String Reference to: 'POS_X'
|
007BF82E   B8D4F97B00             mov     eax, $007BF9D4

|
007BF833   E880B7FEFF             call    007AAFB8
007BF838   6A00                   push    $00
007BF83A   33C9                   xor     ecx, ecx
007BF83C   B203                   mov     dl, $03

* Possible String Reference to: 'POS_Y'
|
007BF83E   B8E4F97B00             mov     eax, $007BF9E4

|
007BF843   E870B7FEFF             call    007AAFB8
007BF848   6A00                   push    $00
007BF84A   33C9                   xor     ecx, ecx
007BF84C   B203                   mov     dl, $03

* Possible String Reference to: 'ALTURA'
|
007BF84E   B8F4F97B00             mov     eax, $007BF9F4

|
007BF853   E860B7FEFF             call    007AAFB8
007BF858   6A00                   push    $00
007BF85A   33C9                   xor     ecx, ecx
007BF85C   B203                   mov     dl, $03

* Possible String Reference to: 'LARGURA'
|
007BF85E   B804FA7B00             mov     eax, $007BFA04

|
007BF863   E850B7FEFF             call    007AAFB8

* Possible String Reference to: 'CODMESA'
|
007BF868   B81CF97B00             mov     eax, $007BF91C

|
007BF86D   E8A6BAFEFF             call    007AB318

* Possible String Reference to: 'MESAS'
|
007BF872   BA0CF97B00             mov     edx, $007BF90C
007BF877   33C0                   xor     eax, eax

|
007BF879   E842BDFEFF             call    007AB5C0
007BF87E   8845FF                 mov     [ebp-$01], al
007BF881   33C0                   xor     eax, eax
007BF883   5A                     pop     edx
007BF884   59                     pop     ecx
007BF885   59                     pop     ecx
007BF886   648910                 mov     fs:[eax], edx
007BF889   EB3B                   jmp     007BF8C6

* Reference to: System.@HandleOnException;
|
007BF88B   E92053C4FF             jmp     00404BB0
007BF890   0100                   add     [eax], eax
007BF892   0000                   add     [eax], al
007BF894   40                     inc     eax
007BF895   95                     xchg    eax, ebp
007BF896   40                     inc     eax
007BF897   009CF87B0089C3         add     [eax+edi*8+$C389007B], bl
007BF89E   6A00                   push    $00
007BF8A0   8B4B04                 mov     ecx, [ebx+$04]
007BF8A3   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Ocorreu um erro ao executar a funçã
|                                o CriaTabMesas.'
|
007BF8A6   BA14FA7B00             mov     edx, $007BFA14

* Reference to: System.@LStrCat3;
|
007BF8AB   E8F85EC4FF             call    004057A8
007BF8B0   8B45F8                 mov     eax, [ebp-$08]
007BF8B3   668B0D4CFA7B00         mov     cx, word ptr [$007BFA4C]
007BF8BA   B201                   mov     dl, $01

|
007BF8BC   E86B42C8FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007BF8C1   E8EA55C4FF             call    00404EB0

****** END
|
007BF8C6   33C0                   xor     eax, eax
007BF8C8   5A                     pop     edx
007BF8C9   59                     pop     ecx
007BF8CA   59                     pop     ecx
007BF8CB   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BF8CE   68DBF87B00             push    $007BF8DB
007BF8D3   C3                     ret


* Reference to: System.@HandleFinally;
|
007BF8D4   E95F54C4FF             jmp     00404D38
007BF8D9   EBF8                   jmp     007BF8D3

****** END
|
007BF8DB   33C0                   xor     eax, eax
007BF8DD   5A                     pop     edx
007BF8DE   59                     pop     ecx
007BF8DF   59                     pop     ecx
007BF8E0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
007BF8E3   68F8F87B00             push    $007BF8F8
007BF8E8   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007BF8EB   E8AC5BC4FF             call    0040549C
007BF8F0   C3                     ret


* Reference to: System.@HandleFinally;
|
007BF8F1   E94254C4FF             jmp     00404D38
007BF8F6   EBF0                   jmp     007BF8E8

****** END
|
007BF8F8   8A45FF                 mov     al, byte ptr [ebp-$01]
007BF8FB   5F                     pop     edi
007BF8FC   5E                     pop     esi
007BF8FD   5B                     pop     ebx
007BF8FE   59                     pop     ecx
007BF8FF   59                     pop     ecx
007BF900   5D                     pop     ebp
007BF901   C3                     ret

*)
end;

procedure TDmC._PROC_007BF8F1(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007BF8F1   E94254C4FF             jmp     00404D38

|
007BF8F6   EBF0                   jmp     007BF8E8
007BF8F8   8A45FF                 mov     al, byte ptr [ebp-$01]
007BF8FB   5F                     pop     edi
007BF8FC   5E                     pop     esi
007BF8FD   5B                     pop     ebx
007BF8FE   59                     pop     ecx
007BF8FF   59                     pop     ecx
007BF900   5D                     pop     ebp
007BF901   C3                     ret

*)
end;

procedure TDmC._PROC_007BF945(Sender : TObject);
begin
(*
007BF945   53                     push    ebx
007BF946   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF952(Sender : TObject);
begin
(*
007BF952   4D                     dec     ebp
007BF953   50                     push    eax
007BF954   45                     inc     ebp
007BF955   53                     push    ebx
007BF956   53                     push    ebx
007BF957   4F                     dec     edi
007BF958   41                     inc     ecx
007BF959   53                     push    ebx
007BF95A   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF993(Sender : TObject);
begin
(*
007BF993   4D                     dec     ebp
007BF994   5F                     pop     edi
007BF995   44                     inc     esp
007BF996   49                     dec     ecx
007BF997   41                     inc     ecx
007BF998   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF9AB(Sender : TObject);
begin
(*
007BF9AB   4D                     dec     ebp
007BF9AC   5F                     pop     edi
007BF9AD   4D                     dec     ebp
007BF9AE   45                     inc     ebp
007BF9AF   53                     push    ebx
007BF9B0   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF9C0(Sender : TObject);
begin
(*
007BF9C0   4C                     dec     esp
007BF9C1   54                     push    esp
007BF9C2   5F                     pop     edi
007BF9C3   41                     inc     ecx
007BF9C4   54                     push    esp
007BF9C5   45                     inc     ebp
007BF9C6   4E                     dec     esi
007BF9C7   44                     inc     esp
007BF9C8   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BF9F8(Sender : TObject);
begin
(*
007BF9F8   52                     push    edx
007BF9F9   41                     inc     ecx
007BF9FA   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFA09(Sender : TObject);
begin
(*
007BFA09   52                     push    edx
007BFA0A   41                     inc     ecx
007BFA0B   00FF                   add     bh, bh
007BFA0D   FFFF                   DB  $FF, $FF  //      
007BFA0F   FF3400                 push    dword ptr [eax+eax]
007BFA12   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFA51(Sender : TObject);
begin
(*
007BFA51   8BEC                   mov     ebp, esp
007BFA53   83C4F8                 add     esp, -$08
007BFA56   53                     push    ebx
007BFA57   56                     push    esi
007BFA58   57                     push    edi
007BFA59   33C0                   xor     eax, eax
007BFA5B   8945F8                 mov     [ebp-$08], eax
007BFA5E   33C0                   xor     eax, eax
007BFA60   55                     push    ebp

* Possible String Reference to: 'éŠQÄÿëðŠEÿ_^[YY]Ã'
|
007BFA61   68A9FB7B00             push    $007BFBA9

***** TRY
|
007BFA66   64FF30                 push    dword ptr fs:[eax]
007BFA69   648920                 mov     fs:[eax], esp
007BFA6C   C645FF00               mov     byte ptr [ebp-$01], $00
007BFA70   33C0                   xor     eax, eax
007BFA72   55                     push    ebp
007BFA73   688CFB7B00             push    $007BFB8C

***** TRY
|
007BFA78   64FF30                 push    dword ptr fs:[eax]
007BFA7B   648920                 mov     fs:[eax], esp
007BFA7E   33C0                   xor     eax, eax
007BFA80   55                     push    ebp
007BFA81   6843FB7B00             push    $007BFB43

***** TRY
|
007BFA86   64FF30                 push    dword ptr fs:[eax]
007BFA89   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'MESAFUNC'
|
007BFA8C   BAC4FB7B00             mov     edx, $007BFBC4
007BFA91   33C0                   xor     eax, eax

|
007BFA93   E8C4B1FEFF             call    007AAC5C
007BFA98   84C0                   test    al, al
007BFA9A   0F8599000000           jnz     007BFB39
007BFAA0   6A00                   push    $00
007BFAA2   A1ACA07D00             mov     eax, dword ptr [$007DA0AC]
007BFAA7   B901000000             mov     ecx, $00000001

* Reference to object .4
|
007BFAAC   8B15A8515D00           mov     edx, [$005D51A8]

* Reference to: System.@DynArraySetLength;
|
007BFAB2   E8F970C4FF             call    00406BB0
007BFAB7   83C404                 add     esp, +$04
007BFABA   6A01                   push    $01
007BFABC   33C9                   xor     ecx, ecx
007BFABE   B203                   mov     dl, $03

* Possible String Reference to: 'CODMESA'
|
007BFAC0   B8D8FB7B00             mov     eax, $007BFBD8

|
007BFAC5   E8EEB4FEFF             call    007AAFB8
007BFACA   6A01                   push    $01
007BFACC   B905000000             mov     ecx, $00000005
007BFAD1   B201                   mov     dl, $01

* Possible String Reference to: 'CODFUNC'
|
007BFAD3   B8E8FB7B00             mov     eax, $007BFBE8

|
007BFAD8   E8DBB4FEFF             call    007AAFB8
007BFADD   6A00                   push    $00
007BFADF   33C9                   xor     ecx, ecx
007BFAE1   B20A                   mov     dl, $0A

* Possible String Reference to: 'HORAINI'
|
007BFAE3   B8F8FB7B00             mov     eax, $007BFBF8

|
007BFAE8   E8CBB4FEFF             call    007AAFB8
007BFAED   6A00                   push    $00
007BFAEF   33C9                   xor     ecx, ecx
007BFAF1   B20A                   mov     dl, $0A

* Possible String Reference to: 'HORAFIM'
|
007BFAF3   B808FC7B00             mov     eax, $007BFC08

|
007BFAF8   E8BBB4FEFF             call    007AAFB8
007BFAFD   6A00                   push    $00
007BFAFF   B907000000             mov     ecx, $00000007
007BFB04   B201                   mov     dl, $01

* Possible String Reference to: 'FOLGA'
|
007BFB06   B818FC7B00             mov     eax, $007BFC18

|
007BFB0B   E8A8B4FEFF             call    007AAFB8
007BFB10   6A00                   push    $00
007BFB12   33C9                   xor     ecx, ecx
007BFB14   B206                   mov     dl, $06

* Possible String Reference to: 'PRCCONTA'
|
007BFB16   B828FC7B00             mov     eax, $007BFC28

|
007BFB1B   E898B4FEFF             call    007AAFB8

* Possible String Reference to: 'CODMESA, CODFUNC'
|
007BFB20   B83CFC7B00             mov     eax, $007BFC3C

|
007BFB25   E8EEB7FEFF             call    007AB318

* Possible String Reference to: 'MESAFUNC'
|
007BFB2A   BAC4FB7B00             mov     edx, $007BFBC4
007BFB2F   33C0                   xor     eax, eax

|
007BFB31   E88ABAFEFF             call    007AB5C0
007BFB36   8845FF                 mov     [ebp-$01], al
007BFB39   33C0                   xor     eax, eax
007BFB3B   5A                     pop     edx
007BFB3C   59                     pop     ecx
007BFB3D   59                     pop     ecx
007BFB3E   648910                 mov     fs:[eax], edx
007BFB41   EB3B                   jmp     007BFB7E

* Reference to: System.@HandleOnException;
|
007BFB43   E96850C4FF             jmp     00404BB0
007BFB48   0100                   add     [eax], eax
007BFB4A   0000                   add     [eax], al
007BFB4C   40                     inc     eax
007BFB4D   95                     xchg    eax, ebp
007BFB4E   40                     inc     eax
007BFB4F   0054FB7B               add     [ebx+edi*8+$7B], dl
007BFB53   0089C36A008B           add     [ecx+$8B006AC3], cl
007BFB59   4B                     dec     ebx
007BFB5A   048D                   add     al, -$73
007BFB5C   45                     inc     ebp
007BFB5D   F8                     clc

* Possible String Reference to: 'Ocorreu um erro ao executar a funçã
|                                o CriaTabMesaFunc.'
|
007BFB5E   BA58FC7B00             mov     edx, $007BFC58

* Reference to: System.@LStrCat3;
|
007BFB63   E8405CC4FF             call    004057A8
007BFB68   8B45F8                 mov     eax, [ebp-$08]
007BFB6B   668B0D90FC7B00         mov     cx, word ptr [$007BFC90]
007BFB72   B201                   mov     dl, $01

|
007BFB74   E8B33FC8FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007BFB79   E83253C4FF             call    00404EB0

****** END
|
007BFB7E   33C0                   xor     eax, eax
007BFB80   5A                     pop     edx
007BFB81   59                     pop     ecx
007BFB82   59                     pop     ecx
007BFB83   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BFB86   6893FB7B00             push    $007BFB93
007BFB8B   C3                     ret


* Reference to: System.@HandleFinally;
|
007BFB8C   E9A751C4FF             jmp     00404D38
007BFB91   EBF8                   jmp     007BFB8B

****** END
|
007BFB93   33C0                   xor     eax, eax
007BFB95   5A                     pop     edx
007BFB96   59                     pop     ecx
007BFB97   59                     pop     ecx
007BFB98   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
007BFB9B   68B0FB7B00             push    $007BFBB0
007BFBA0   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007BFBA3   E8F458C4FF             call    0040549C
007BFBA8   C3                     ret


* Reference to: System.@HandleFinally;
|
007BFBA9   E98A51C4FF             jmp     00404D38
007BFBAE   EBF0                   jmp     007BFBA0

****** END
|
007BFBB0   8A45FF                 mov     al, byte ptr [ebp-$01]
007BFBB3   5F                     pop     edi
007BFBB4   5E                     pop     esi
007BFBB5   5B                     pop     ebx
007BFBB6   59                     pop     ecx
007BFBB7   59                     pop     ecx
007BFBB8   5D                     pop     ebp
007BFBB9   C3                     ret

*)
end;

procedure TDmC._PROC_007BFBA9(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007BFBA9   E98A51C4FF             jmp     00404D38

|
007BFBAE   EBF0                   jmp     007BFBA0
007BFBB0   8A45FF                 mov     al, byte ptr [ebp-$01]
007BFBB3   5F                     pop     edi
007BFBB4   5E                     pop     esi
007BFBB5   5B                     pop     ebx
007BFBB6   59                     pop     ecx
007BFBB7   59                     pop     ecx
007BFBB8   5D                     pop     ebp
007BFBB9   C3                     ret

*)
end;

procedure TDmC._PROC_007BFBCA(Sender : TObject);
begin
(*
007BFBCA   4E                     dec     esi
007BFBCB   43                     inc     ebx
007BFBCC   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFBED(Sender : TObject);
begin
(*
007BFBED   4E                     dec     esi
007BFBEE   43                     inc     ebx
007BFBEF   00FF                   add     bh, bh
007BFBF1   FFFF                   DB  $FF, $FF  //      
007BFBF3   FF07                   inc     dword ptr [edi]
007BFBF5   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFC4A(Sender : TObject);
begin
(*
007BFC4A   4E                     dec     esi
007BFC4B   43                     inc     ebx
007BFC4C   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFC95(Sender : TObject);
begin
(*
007BFC95   8BEC                   mov     ebp, esp
007BFC97   83C4F8                 add     esp, -$08
007BFC9A   53                     push    ebx
007BFC9B   56                     push    esi
007BFC9C   57                     push    edi
007BFC9D   33C0                   xor     eax, eax
007BFC9F   8945F8                 mov     [ebp-$08], eax
007BFCA2   33C0                   xor     eax, eax
007BFCA4   55                     push    ebp

* Possible String Reference to: 'éÊNÄÿëðŠEÿ_^[YY]Ã'
|
007BFCA5   6869FE7B00             push    $007BFE69

***** TRY
|
007BFCAA   64FF30                 push    dword ptr fs:[eax]
007BFCAD   648920                 mov     fs:[eax], esp
007BFCB0   C645FF00               mov     byte ptr [ebp-$01], $00
007BFCB4   33C0                   xor     eax, eax
007BFCB6   55                     push    ebp
007BFCB7   684CFE7B00             push    $007BFE4C

***** TRY
|
007BFCBC   64FF30                 push    dword ptr fs:[eax]
007BFCBF   648920                 mov     fs:[eax], esp
007BFCC2   33C0                   xor     eax, eax
007BFCC4   55                     push    ebp
007BFCC5   6803FE7B00             push    $007BFE03

***** TRY
|
007BFCCA   64FF30                 push    dword ptr fs:[eax]
007BFCCD   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'MESALCTO'
|
007BFCD0   BA84FE7B00             mov     edx, $007BFE84
007BFCD5   33C0                   xor     eax, eax

|
007BFCD7   E880AFFEFF             call    007AAC5C
007BFCDC   84C0                   test    al, al
007BFCDE   0F8515010000           jnz     007BFDF9
007BFCE4   6A00                   push    $00
007BFCE6   A1ACA07D00             mov     eax, dword ptr [$007DA0AC]
007BFCEB   B901000000             mov     ecx, $00000001

* Reference to object .4
|
007BFCF0   8B15A8515D00           mov     edx, [$005D51A8]

* Reference to: System.@DynArraySetLength;
|
007BFCF6   E8B56EC4FF             call    00406BB0
007BFCFB   83C404                 add     esp, +$04
007BFCFE   6A01                   push    $01
007BFD00   33C9                   xor     ecx, ecx
007BFD02   B203                   mov     dl, $03

* Possible String Reference to: 'CODMESA'
|
007BFD04   B898FE7B00             mov     eax, $007BFE98

|
007BFD09   E8AAB2FEFF             call    007AAFB8
007BFD0E   6A01                   push    $01
007BFD10   33C9                   xor     ecx, ecx
007BFD12   B203                   mov     dl, $03

* Possible String Reference to: 'NUMLCTO'
|
007BFD14   B8A8FE7B00             mov     eax, $007BFEA8

|
007BFD19   E89AB2FEFF             call    007AAFB8
007BFD1E   6A00                   push    $00
007BFD20   33C9                   xor     ecx, ecx
007BFD22   B20B                   mov     dl, $0B

* Possible String Reference to: 'DATAINI'
|
007BFD24   B8B8FE7B00             mov     eax, $007BFEB8

|
007BFD29   E88AB2FEFF             call    007AAFB8
007BFD2E   6A00                   push    $00
007BFD30   33C9                   xor     ecx, ecx
007BFD32   B20B                   mov     dl, $0B

* Possible String Reference to: 'DATAFIM'
|
007BFD34   B8C8FE7B00             mov     eax, $007BFEC8

|
007BFD39   E87AB2FEFF             call    007AAFB8
007BFD3E   6A00                   push    $00
007BFD40   B90E000000             mov     ecx, $0000000E
007BFD45   B201                   mov     dl, $01

* Possible String Reference to: 'CGCCLIE'
|
007BFD47   B8D8FE7B00             mov     eax, $007BFED8

|
007BFD4C   E867B2FEFF             call    007AAFB8
007BFD51   6A00                   push    $00
007BFD53   B905000000             mov     ecx, $00000005
007BFD58   B201                   mov     dl, $01

* Possible String Reference to: 'CODFUNC'
|
007BFD5A   B8E8FE7B00             mov     eax, $007BFEE8

|
007BFD5F   E854B2FEFF             call    007AAFB8
007BFD64   6A00                   push    $00
007BFD66   33C9                   xor     ecx, ecx
007BFD68   B203                   mov     dl, $03

* Possible String Reference to: 'NUMPESSOAS'
|
007BFD6A   B8F8FE7B00             mov     eax, $007BFEF8

|
007BFD6F   E844B2FEFF             call    007AAFB8
007BFD74   6A00                   push    $00
007BFD76   33C9                   xor     ecx, ecx
007BFD78   B206                   mov     dl, $06

* Possible String Reference to: 'VLRTOTAL'
|
007BFD7A   B80CFF7B00             mov     eax, $007BFF0C

|
007BFD7F   E834B2FEFF             call    007AAFB8
007BFD84   6A00                   push    $00
007BFD86   B901000000             mov     ecx, $00000001
007BFD8B   B217                   mov     dl, $17

* Possible String Reference to: 'STATUS'
|
007BFD8D   B820FF7B00             mov     eax, $007BFF20

|
007BFD92   E821B2FEFF             call    007AAFB8
007BFD97   6A00                   push    $00
007BFD99   B901000000             mov     ecx, $00000001
007BFD9E   B201                   mov     dl, $01

* Possible String Reference to: 'FECHADO'
|
007BFDA0   B830FF7B00             mov     eax, $007BFF30

|
007BFDA5   E80EB2FEFF             call    007AAFB8
007BFDAA   6A00                   push    $00
007BFDAC   33C9                   xor     ecx, ecx
007BFDAE   B203                   mov     dl, $03

* Possible String Reference to: 'NUMCUPOM'
|
007BFDB0   B840FF7B00             mov     eax, $007BFF40

|
007BFDB5   E8FEB1FEFF             call    007AAFB8
007BFDBA   6A00                   push    $00
007BFDBC   B905000000             mov     ecx, $00000005
007BFDC1   B201                   mov     dl, $01

* Possible String Reference to: 'ESPECIE'
|
007BFDC3   B854FF7B00             mov     eax, $007BFF54

|
007BFDC8   E8EBB1FEFF             call    007AAFB8
007BFDCD   6A00                   push    $00
007BFDCF   B905000000             mov     ecx, $00000005
007BFDD4   B201                   mov     dl, $01

* Possible String Reference to: 'SERIE'
|
007BFDD6   B864FF7B00             mov     eax, $007BFF64

|
007BFDDB   E8D8B1FEFF             call    007AAFB8

* Possible String Reference to: 'CODMESA, NUMLCTO'
|
007BFDE0   B874FF7B00             mov     eax, $007BFF74

|
007BFDE5   E82EB5FEFF             call    007AB318

* Possible String Reference to: 'MESALCTO'
|
007BFDEA   BA84FE7B00             mov     edx, $007BFE84
007BFDEF   33C0                   xor     eax, eax

|
007BFDF1   E8CAB7FEFF             call    007AB5C0
007BFDF6   8845FF                 mov     [ebp-$01], al
007BFDF9   33C0                   xor     eax, eax
007BFDFB   5A                     pop     edx
007BFDFC   59                     pop     ecx
007BFDFD   59                     pop     ecx
007BFDFE   648910                 mov     fs:[eax], edx
007BFE01   EB3B                   jmp     007BFE3E

* Reference to: System.@HandleOnException;
|
007BFE03   E9A84DC4FF             jmp     00404BB0
007BFE08   0100                   add     [eax], eax
007BFE0A   0000                   add     [eax], al
007BFE0C   40                     inc     eax
007BFE0D   95                     xchg    eax, ebp
007BFE0E   40                     inc     eax
007BFE0F   0014FE                 add     [esi+edi*8], dl
007BFE12   7B00                   jnp     007BFE14
007BFE14   89C3                   mov     ebx, eax
007BFE16   6A00                   push    $00
007BFE18   8B4B04                 mov     ecx, [ebx+$04]
007BFE1B   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Ocorreu um erro ao executar a funçã
|                                o CriaTabMesaLcto.'
|
007BFE1E   BA90FF7B00             mov     edx, $007BFF90

* Reference to: System.@LStrCat3;
|
007BFE23   E88059C4FF             call    004057A8
007BFE28   8B45F8                 mov     eax, [ebp-$08]
007BFE2B   668B0DC8FF7B00         mov     cx, word ptr [$007BFFC8]
007BFE32   B201                   mov     dl, $01

|
007BFE34   E8F33CC8FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007BFE39   E87250C4FF             call    00404EB0

****** END
|
007BFE3E   33C0                   xor     eax, eax
007BFE40   5A                     pop     edx
007BFE41   59                     pop     ecx
007BFE42   59                     pop     ecx
007BFE43   648910                 mov     fs:[eax], edx

****** FINALLY
|
007BFE46   6853FE7B00             push    $007BFE53
007BFE4B   C3                     ret


* Reference to: System.@HandleFinally;
|
007BFE4C   E9E74EC4FF             jmp     00404D38
007BFE51   EBF8                   jmp     007BFE4B

****** END
|
007BFE53   33C0                   xor     eax, eax
007BFE55   5A                     pop     edx
007BFE56   59                     pop     ecx
007BFE57   59                     pop     ecx
007BFE58   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
007BFE5B   6870FE7B00             push    $007BFE70
007BFE60   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007BFE63   E83456C4FF             call    0040549C
007BFE68   C3                     ret


* Reference to: System.@HandleFinally;
|
007BFE69   E9CA4EC4FF             jmp     00404D38
007BFE6E   EBF0                   jmp     007BFE60

****** END
|
007BFE70   8A45FF                 mov     al, byte ptr [ebp-$01]
007BFE73   5F                     pop     edi
007BFE74   5E                     pop     esi
007BFE75   5B                     pop     ebx
007BFE76   59                     pop     ecx
007BFE77   59                     pop     ecx
007BFE78   5D                     pop     ebp
007BFE79   C3                     ret

*)
end;

procedure TDmC._PROC_007BFE69(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007BFE69   E9CA4EC4FF             jmp     00404D38

|
007BFE6E   EBF0                   jmp     007BFE60
007BFE70   8A45FF                 mov     al, byte ptr [ebp-$01]
007BFE73   5F                     pop     edi
007BFE74   5E                     pop     esi
007BFE75   5B                     pop     ebx
007BFE76   59                     pop     ecx
007BFE77   59                     pop     ecx
007BFE78   5D                     pop     ebp
007BFE79   C3                     ret

*)
end;

procedure TDmC._PROC_007BFEAA(Sender : TObject);
begin
(*
007BFEAA   4D                     dec     ebp
007BFEAB   4C                     dec     esp
007BFEAC   43                     inc     ebx
007BFEAD   54                     push    esp
007BFEAE   4F                     dec     edi
007BFEAF   00FF                   add     bh, bh
007BFEB1   FFFF                   DB  $FF, $FF  //      
007BFEB3   FF07                   inc     dword ptr [edi]
007BFEB5   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFEED(Sender : TObject);
begin
(*
007BFEED   4E                     dec     esi
007BFEEE   43                     inc     ebx
007BFEEF   00FF                   add     bh, bh
007BFEF1   FFFF                   DB  $FF, $FF  //      
007BFEF3   FF0A                   dec     dword ptr [edx]
007BFEF5   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFEFA(Sender : TObject);
begin
(*
007BFEFA   4D                     dec     ebp
007BFEFB   50                     push    eax
007BFEFC   45                     inc     ebp
007BFEFD   53                     push    ebx
007BFEFE   53                     push    ebx
007BFEFF   4F                     dec     edi
007BFF00   41                     inc     ecx
007BFF01   53                     push    ebx
007BFF02   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFF25(Sender : TObject);
begin
(*
007BFF25   53                     push    ebx
007BFF26   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFF42(Sender : TObject);
begin
(*
007BFF42   4D                     dec     ebp
007BFF43   43                     inc     ebx
007BFF44   55                     push    ebp
007BFF45   50                     push    eax
007BFF46   4F                     dec     edi
007BFF47   4D                     dec     ebp
007BFF48   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFF7F(Sender : TObject);
begin
(*
007BFF7F   4D                     dec     ebp
007BFF80   4C                     dec     esp
007BFF81   43                     inc     ebx
007BFF82   54                     push    esp
007BFF83   4F                     dec     edi
007BFF84   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007BFFCD(Sender : TObject);
begin
(*
007BFFCD   8BEC                   mov     ebp, esp
007BFFCF   83C4F8                 add     esp, -$08
007BFFD2   53                     push    ebx
007BFFD3   56                     push    esi
007BFFD4   57                     push    edi
007BFFD5   33C0                   xor     eax, eax
007BFFD7   8945F8                 mov     [ebp-$08], eax
007BFFDA   33C0                   xor     eax, eax
007BFFDC   55                     push    ebp

* Possible String Reference to: 'érKÄÿëðŠEÿ_^[YY]Ã'
|
007BFFDD   68C1017C00             push    $007C01C1

***** TRY
|
007BFFE2   64FF30                 push    dword ptr fs:[eax]
007BFFE5   648920                 mov     fs:[eax], esp
007BFFE8   C645FF00               mov     byte ptr [ebp-$01], $00
007BFFEC   33C0                   xor     eax, eax
007BFFEE   55                     push    ebp
007BFFEF   68A4017C00             push    $007C01A4

***** TRY
|
007BFFF4   64FF30                 push    dword ptr fs:[eax]
007BFFF7   648920                 mov     fs:[eax], esp
007BFFFA   33C0                   xor     eax, eax
007BFFFC   55                     push    ebp
007BFFFD   685B017C00             push    $007C015B

***** TRY
|
007C0002   64FF30                 push    dword ptr fs:[eax]
007C0005   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'MESAITEM'
|
007C0008   BADC017C00             mov     edx, $007C01DC
007C000D   33C0                   xor     eax, eax

|
007C000F   E848ACFEFF             call    007AAC5C
007C0014   84C0                   test    al, al
007C0016   0F8535010000           jnz     007C0151
007C001C   6A00                   push    $00
007C001E   A1ACA07D00             mov     eax, dword ptr [$007DA0AC]
007C0023   B901000000             mov     ecx, $00000001

* Reference to object .4
|
007C0028   8B15A8515D00           mov     edx, [$005D51A8]

* Reference to: System.@DynArraySetLength;
|
007C002E   E87D6BC4FF             call    00406BB0
007C0033   83C404                 add     esp, +$04
007C0036   6A01                   push    $01
007C0038   33C9                   xor     ecx, ecx
007C003A   B203                   mov     dl, $03

* Possible String Reference to: 'CODMESA'
|
007C003C   B8F0017C00             mov     eax, $007C01F0

|
007C0041   E872AFFEFF             call    007AAFB8
007C0046   6A01                   push    $01
007C0048   33C9                   xor     ecx, ecx
007C004A   B203                   mov     dl, $03

* Possible String Reference to: 'NUMLCTO'
|
007C004C   B800027C00             mov     eax, $007C0200

|
007C0051   E862AFFEFF             call    007AAFB8
007C0056   6A01                   push    $01
007C0058   33C9                   xor     ecx, ecx
007C005A   B203                   mov     dl, $03

* Possible String Reference to: 'ITEM'
|
007C005C   B810027C00             mov     eax, $007C0210

|
007C0061   E852AFFEFF             call    007AAFB8
007C0066   6A00                   push    $00
007C0068   B90F000000             mov     ecx, $0000000F
007C006D   B201                   mov     dl, $01

* Possible String Reference to: 'CODPROD'
|
007C006F   B820027C00             mov     eax, $007C0220

|
007C0074   E83FAFFEFF             call    007AAFB8
007C0079   6A00                   push    $00
007C007B   B932000000             mov     ecx, $00000032
007C0080   B201                   mov     dl, $01

* Possible String Reference to: 'DESCRPROD'
|
007C0082   B830027C00             mov     eax, $007C0230

|
007C0087   E82CAFFEFF             call    007AAFB8
007C008C   6A00                   push    $00
007C008E   B902000000             mov     ecx, $00000002
007C0093   B201                   mov     dl, $01

* Possible String Reference to: 'UNIDMED'
|
007C0095   B844027C00             mov     eax, $007C0244

|
007C009A   E819AFFEFF             call    007AAFB8
007C009F   6A00                   push    $00
007C00A1   33C9                   xor     ecx, ecx
007C00A3   B206                   mov     dl, $06

* Possible String Reference to: 'QTDEUNIDMED'
|
007C00A5   B854027C00             mov     eax, $007C0254

|
007C00AA   E809AFFEFF             call    007AAFB8
007C00AF   6A00                   push    $00
007C00B1   33C9                   xor     ecx, ecx
007C00B3   B206                   mov     dl, $06

* Possible String Reference to: 'QTDELCTO'
|
007C00B5   B868027C00             mov     eax, $007C0268

|
007C00BA   E8F9AEFEFF             call    007AAFB8
007C00BF   6A00                   push    $00
007C00C1   33C9                   xor     ecx, ecx
007C00C3   B206                   mov     dl, $06

* Possible String Reference to: 'VLRUNIT'
|
007C00C5   B87C027C00             mov     eax, $007C027C

|
007C00CA   E8E9AEFEFF             call    007AAFB8
007C00CF   6A00                   push    $00
007C00D1   33C9                   xor     ecx, ecx
007C00D3   B206                   mov     dl, $06

* Possible String Reference to: 'VLRTOTAL'
|
007C00D5   B88C027C00             mov     eax, $007C028C

|
007C00DA   E8D9AEFEFF             call    007AAFB8
007C00DF   6A00                   push    $00
007C00E1   B905000000             mov     ecx, $00000005
007C00E6   B201                   mov     dl, $01

* Possible String Reference to: 'CODFUNC'
|
007C00E8   B8A0027C00             mov     eax, $007C02A0

|
007C00ED   E8C6AEFEFF             call    007AAFB8
007C00F2   6A00                   push    $00
007C00F4   B901000000             mov     ecx, $00000001
007C00F9   B217                   mov     dl, $17

* Possible String Reference to: 'STATUS'
|
007C00FB   B8B0027C00             mov     eax, $007C02B0

|
007C0100   E8B3AEFEFF             call    007AAFB8
007C0105   6A00                   push    $00
007C0107   33C9                   xor     ecx, ecx
007C0109   B20B                   mov     dl, $0B

* Possible String Reference to: 'DATAREQ'
|
007C010B   B8C0027C00             mov     eax, $007C02C0

|
007C0110   E8A3AEFEFF             call    007AAFB8
007C0115   6A00                   push    $00
007C0117   B901000000             mov     ecx, $00000001
007C011C   B201                   mov     dl, $01

* Possible String Reference to: 'FECHADO'
|
007C011E   B8D0027C00             mov     eax, $007C02D0

|
007C0123   E890AEFEFF             call    007AAFB8
007C0128   6A00                   push    $00
007C012A   33C9                   xor     ecx, ecx
007C012C   B203                   mov     dl, $03

* Possible String Reference to: 'CODIMPR'
|
007C012E   B8E0027C00             mov     eax, $007C02E0

|
007C0133   E880AEFEFF             call    007AAFB8

* Possible String Reference to: 'CODMESA, NUMLCTO, ITEM'
|
007C0138   B8F0027C00             mov     eax, $007C02F0

|
007C013D   E8D6B1FEFF             call    007AB318

* Possible String Reference to: 'MESAITEM'
|
007C0142   BADC017C00             mov     edx, $007C01DC
007C0147   33C0                   xor     eax, eax

|
007C0149   E872B4FEFF             call    007AB5C0
007C014E   8845FF                 mov     [ebp-$01], al
007C0151   33C0                   xor     eax, eax
007C0153   5A                     pop     edx
007C0154   59                     pop     ecx
007C0155   59                     pop     ecx
007C0156   648910                 mov     fs:[eax], edx
007C0159   EB3B                   jmp     007C0196

* Reference to: System.@HandleOnException;
|
007C015B   E9504AC4FF             jmp     00404BB0
007C0160   0100                   add     [eax], eax
007C0162   0000                   add     [eax], al
007C0164   40                     inc     eax
007C0165   95                     xchg    eax, ebp
007C0166   40                     inc     eax
007C0167   006C017C               add     [ecx+eax+$7C], ch
007C016B   0089C36A008B           add     [ecx+$8B006AC3], cl
007C0171   4B                     dec     ebx
007C0172   048D                   add     al, -$73
007C0174   45                     inc     ebp
007C0175   F8                     clc

* Possible String Reference to: 'Ocorreu um erro ao executar a funçã
|                                o CriaTabMesaItem.'
|
007C0176   BA10037C00             mov     edx, $007C0310

* Reference to: System.@LStrCat3;
|
007C017B   E82856C4FF             call    004057A8
007C0180   8B45F8                 mov     eax, [ebp-$08]
007C0183   668B0D48037C00         mov     cx, word ptr [$007C0348]
007C018A   B201                   mov     dl, $01

|
007C018C   E89B39C8FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007C0191   E81A4DC4FF             call    00404EB0

****** END
|
007C0196   33C0                   xor     eax, eax
007C0198   5A                     pop     edx
007C0199   59                     pop     ecx
007C019A   59                     pop     ecx
007C019B   648910                 mov     fs:[eax], edx

****** FINALLY
|
007C019E   68AB017C00             push    $007C01AB
007C01A3   C3                     ret


* Reference to: System.@HandleFinally;
|
007C01A4   E98F4BC4FF             jmp     00404D38
007C01A9   EBF8                   jmp     007C01A3

****** END
|
007C01AB   33C0                   xor     eax, eax
007C01AD   5A                     pop     edx
007C01AE   59                     pop     ecx
007C01AF   59                     pop     ecx
007C01B0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
007C01B3   68C8017C00             push    $007C01C8
007C01B8   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007C01BB   E8DC52C4FF             call    0040549C
007C01C0   C3                     ret


* Reference to: System.@HandleFinally;
|
007C01C1   E9724BC4FF             jmp     00404D38
007C01C6   EBF0                   jmp     007C01B8

****** END
|
007C01C8   8A45FF                 mov     al, byte ptr [ebp-$01]
007C01CB   5F                     pop     edi
007C01CC   5E                     pop     esi
007C01CD   5B                     pop     ebx
007C01CE   59                     pop     ecx
007C01CF   59                     pop     ecx
007C01D0   5D                     pop     ebp
007C01D1   C3                     ret

*)
end;

procedure TDmC._PROC_007C01C1(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007C01C1   E9724BC4FF             jmp     00404D38

|
007C01C6   EBF0                   jmp     007C01B8
007C01C8   8A45FF                 mov     al, byte ptr [ebp-$01]
007C01CB   5F                     pop     edi
007C01CC   5E                     pop     esi
007C01CD   5B                     pop     ebx
007C01CE   59                     pop     ecx
007C01CF   59                     pop     ecx
007C01D0   5D                     pop     ebp
007C01D1   C3                     ret

*)
end;

procedure TDmC._PROC_007C0202(Sender : TObject);
begin
(*
007C0202   4D                     dec     ebp
007C0203   4C                     dec     esp
007C0204   43                     inc     ebx
007C0205   54                     push    esp
007C0206   4F                     dec     edi
007C0207   00FF                   add     bh, bh
007C0209   FFFF                   DB  $FF, $FF  //      
007C020B   FF0400                 inc     dword ptr [eax+eax]
007C020E   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007C0245(Sender : TObject);
begin
(*
007C0245   4E                     dec     esi
007C0246   49                     dec     ecx
007C0247   44                     inc     esp
007C0248   4D                     dec     ebp
007C0249   45                     inc     ebp
007C024A   44                     inc     esp
007C024B   00FF                   add     bh, bh
007C024D   FFFF                   DB  $FF, $FF  //      
007C024F   FF0B                   dec     dword ptr [ebx]
007C0251   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007C0259(Sender : TObject);
begin
(*
007C0259   4E                     dec     esi
007C025A   49                     dec     ecx
007C025B   44                     inc     esp
007C025C   4D                     dec     ebp
007C025D   45                     inc     ebp
007C025E   44                     inc     esp
007C025F   00FF                   add     bh, bh
007C0261   FFFF                   DB  $FF, $FF  //      
007C0263   FF08                   dec     dword ptr [eax]
007C0265   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007C0280(Sender : TObject);
begin
(*
007C0280   4E                     dec     esi
007C0281   49                     dec     ecx
007C0282   54                     push    esp
007C0283   00FF                   add     bh, bh
007C0285   FFFF                   DB  $FF, $FF  //      
007C0287   FF08                   dec     dword ptr [eax]
007C0289   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007C02A5(Sender : TObject);
begin
(*
007C02A5   4E                     dec     esi
007C02A6   43                     inc     ebx
007C02A7   00FF                   add     bh, bh
007C02A9   FFFF                   DB  $FF, $FF  //      
007C02AB   FF06                   inc     dword ptr [esi]
007C02AD   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007C02B5(Sender : TObject);
begin
(*
007C02B5   53                     push    ebx
007C02B6   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007C02FB(Sender : TObject);
begin
(*
007C02FB   4D                     dec     ebp
007C02FC   4C                     dec     esp
007C02FD   43                     inc     ebx
007C02FE   54                     push    esp
007C02FF   4F                     dec     edi
007C0300   2C20                   sub     al, $20
007C0302   49                     dec     ecx
007C0303   54                     push    esp
007C0304   45                     inc     ebp
007C0305   4D                     dec     ebp
007C0306   0000                   add     [eax], al

*)
end;

procedure TDmC._PROC_007C034D(Sender : TObject);
begin
(*
007C034D   8BEC                   mov     ebp, esp
007C034F   83C4F8                 add     esp, -$08
007C0352   53                     push    ebx
007C0353   56                     push    esi
007C0354   57                     push    edi
007C0355   33C0                   xor     eax, eax
007C0357   8945F8                 mov     [ebp-$08], eax
007C035A   33C0                   xor     eax, eax
007C035C   55                     push    ebp

* Possible String Reference to: 'é›HÄÿëðŠEÿ_^[YY]Ã'
|
007C035D   6898047C00             push    $007C0498

***** TRY
|
007C0362   64FF30                 push    dword ptr fs:[eax]
007C0365   648920                 mov     fs:[eax], esp
007C0368   C645FF00               mov     byte ptr [ebp-$01], $00
007C036C   33C0                   xor     eax, eax
007C036E   55                     push    ebp
007C036F   687B047C00             push    $007C047B

***** TRY
|
007C0374   64FF30                 push    dword ptr fs:[eax]
007C0377   648920                 mov     fs:[eax], esp
007C037A   33C0                   xor     eax, eax
007C037C   55                     push    ebp
007C037D   6832047C00             push    $007C0432

***** TRY
|
007C0382   64FF30                 push    dword ptr fs:[eax]
007C0385   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'IMPRGRILL'
|
007C0388   BAB4047C00             mov     edx, $007C04B4
007C038D   33C0                   xor     eax, eax

|
007C038F   E8C8A8FEFF             call    007AAC5C
007C0394   84C0                   test    al, al
007C0396   0F858C000000           jnz     007C0428
007C039C   6A00                   push    $00
007C039E   A1ACA07D00             mov     eax, dword ptr [$007DA0AC]
007C03A3   B901000000             mov     ecx, $00000001

* Reference to object .4
|
007C03A8   8B15A8515D00           mov     edx, [$005D51A8]

* Reference to: System.@DynArraySetLength;
|
007C03AE   E8FD67C4FF             call    00406BB0
007C03B3   83C404                 add     esp, +$04
007C03B6   6A01                   push    $01
007C03B8   33C9                   xor     ecx, ecx
007C03BA   B203                   mov     dl, $03

* Possible String Reference to: 'CODIMPR'
|
007C03BC   B8C8047C00             mov     eax, $007C04C8

|
007C03C1   E8F2ABFEFF             call    007AAFB8
007C03C6   6A00                   push    $00
007C03C8   B91E000000             mov     ecx, $0000001E
007C03CD   B201                   mov     dl, $01

* Possible String Reference to: 'DESCRICAO'
|
007C03CF   B8D8047C00             mov     eax, $007C04D8

|
007C03D4   E8DFABFEFF             call    007AAFB8
007C03D9   6A00                   push    $00
007C03DB   B950000000             mov     ecx, $00000050
007C03E0   B201                   mov     dl, $01

* Possible String Reference to: 'CAMINHO'
|
007C03E2   B8EC047C00             mov     eax, $007C04EC

|
007C03E7   E8CCABFEFF             call    007AAFB8
007C03EC   6A00                   push    $00
007C03EE   33C9                   xor     ecx, ecx
007C03F0   B203                   mov     dl, $03

* Possible String Reference to: 'CODMAPA'
|
007C03F2   B8FC047C00             mov     eax, $007C04FC

|
007C03F7   E8BCABFEFF             call    007AAFB8
007C03FC   6A00                   push    $00
007C03FE   B901000000             mov     ecx, $00000001
007C0403   B201                   mov     dl, $01

* Possible String Reference to: 'NAOIMPRIME'
|
007C0405   B80C057C00             mov     eax, $007C050C

|
007C040A   E8A9ABFEFF             call    007AAFB8

* Possible String Reference to: 'CODIMPR'
|
007C040F   B8C8047C00             mov     eax, $007C04C8

|
007C0414   E8FFAEFEFF             call    007AB318

* Possible String Reference to: 'IMPRGRILL'
|
007C0419   BAB4047C00             mov     edx, $007C04B4
007C041E   33C0                   xor     eax, eax

|
007C0420   E89BB1FEFF             call    007AB5C0
007C0425   8845FF                 mov     [ebp-$01], al
007C0428   33C0                   xor     eax, eax
007C042A   5A                     pop     edx
007C042B   59                     pop     ecx
007C042C   59                     pop     ecx
007C042D   648910                 mov     fs:[eax], edx
007C0430   EB3B                   jmp     007C046D

* Reference to: System.@HandleOnException;
|
007C0432   E97947C4FF             jmp     00404BB0
007C0437   0100                   add     [eax], eax
007C0439   0000                   add     [eax], al
007C043B   40                     inc     eax
007C043C   95                     xchg    eax, ebp
007C043D   40                     inc     eax
007C043E   004304                 add     [ebx+$04], al
007C0441   7C00                   jl      007C0443
007C0443   89C3                   mov     ebx, eax
007C0445   6A00                   push    $00
007C0447   8B4B04                 mov     ecx, [ebx+$04]
007C044A   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Ocorreu um erro ao executar a funçã
|                                o CriaTabImpress.'
|
007C044D   BA20057C00             mov     edx, $007C0520

* Reference to: System.@LStrCat3;
|
007C0452   E85153C4FF             call    004057A8
007C0457   8B45F8                 mov     eax, [ebp-$08]
007C045A   668B0D58057C00         mov     cx, word ptr [$007C0558]
007C0461   B201                   mov     dl, $01

|
007C0463   E8C436C8FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007C0468   E8434AC4FF             call    00404EB0

****** END
|
007C046D   33C0                   xor     eax, eax
007C046F   5A                     pop     edx
007C0470   59                     pop     ecx
007C0471   59                     pop     ecx
007C0472   648910                 mov     fs:[eax], edx

****** FINALLY
|
007C0475   6882047C00             push    $007C0482
007C047A   C3                     ret


* Reference to: System.@HandleFinally;
|
007C047B   E9B848C4FF             jmp     00404D38
007C0480   EBF8                   jmp     007C047A

****** END
|
007C0482   33C0                   xor     eax, eax
007C0484   5A                     pop     edx
007C0485   59                     pop     ecx
007C0486   59                     pop     ecx
007C0487   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
007C048A   689F047C00             push    $007C049F
007C048F   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007C0492   E80550C4FF             call    0040549C
007C0497   C3                     ret


* Reference to: System.@HandleFinally;
|
007C0498   E99B48C4FF             jmp     00404D38
007C049D   EBF0                   jmp     007C048F

****** END
|
007C049F   8A45FF                 mov     al, byte ptr [ebp-$01]
007C04A2   5F                     pop     edi
007C04A3   5E                     pop     esi
007C04A4   5B                     pop     ebx
007C04A5   59                     pop     ecx
007C04A6   59                     pop     ecx
007C04A7   5D                     pop     ebp
007C04A8   C3                     ret

*)
end;

procedure TDmC._PROC_007C0498(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007C0498   E99B48C4FF             jmp     00404D38

|
007C049D   EBF0                   jmp     007C048F
007C049F   8A45FF                 mov     al, byte ptr [ebp-$01]
007C04A2   5F                     pop     edi
007C04A3   5E                     pop     esi
007C04A4   5B                     pop     ebx
007C04A5   59                     pop     ecx
007C04A6   59                     pop     ecx
007C04A7   5D                     pop     ebp
007C04A8   C3                     ret

*)
end;

procedure TDmC._PROC_007C055D(Sender : TObject);
begin
(*
007C055D   8BEC                   mov     ebp, esp
007C055F   83C4F8                 add     esp, -$08
007C0562   53                     push    ebx
007C0563   56                     push    esi
007C0564   57                     push    edi
007C0565   33C0                   xor     eax, eax
007C0567   8945F8                 mov     [ebp-$08], eax
007C056A   33C0                   xor     eax, eax
007C056C   55                     push    ebp

* Possible String Reference to: 'é²FÄÿëðŠEÿ_^[YY]Ã'
|
007C056D   6881067C00             push    $007C0681

***** TRY
|
007C0572   64FF30                 push    dword ptr fs:[eax]
007C0575   648920                 mov     fs:[eax], esp
007C0578   C645FF00               mov     byte ptr [ebp-$01], $00
007C057C   33C0                   xor     eax, eax
007C057E   55                     push    ebp
007C057F   6864067C00             push    $007C0664

***** TRY
|
007C0584   64FF30                 push    dword ptr fs:[eax]
007C0587   648920                 mov     fs:[eax], esp
007C058A   33C0                   xor     eax, eax
007C058C   55                     push    ebp
007C058D   681B067C00             push    $007C061B

***** TRY
|
007C0592   64FF30                 push    dword ptr fs:[eax]
007C0595   648920                 mov     fs:[eax], esp

* Possible String Reference to: 'IMPRMICRO'
|
007C0598   BA9C067C00             mov     edx, $007C069C
007C059D   33C0                   xor     eax, eax

|
007C059F   E8B8A6FEFF             call    007AAC5C
007C05A4   84C0                   test    al, al
007C05A6   7569                   jnz     007C0611
007C05A8   6A00                   push    $00
007C05AA   A1ACA07D00             mov     eax, dword ptr [$007DA0AC]
007C05AF   B901000000             mov     ecx, $00000001

* Reference to object .4
|
007C05B4   8B15A8515D00           mov     edx, [$005D51A8]

* Reference to: System.@DynArraySetLength;
|
007C05BA   E8F165C4FF             call    00406BB0
007C05BF   83C404                 add     esp, +$04
007C05C2   6A01                   push    $01
007C05C4   33C9                   xor     ecx, ecx
007C05C6   B203                   mov     dl, $03

* Possible String Reference to: 'CODIMPR'
|
007C05C8   B8B0067C00             mov     eax, $007C06B0

|
007C05CD   E8E6A9FEFF             call    007AAFB8
007C05D2   6A01                   push    $01
007C05D4   B91E000000             mov     ecx, $0000001E
007C05D9   B201                   mov     dl, $01

* Possible String Reference to: 'MICRO'
|
007C05DB   B8C0067C00             mov     eax, $007C06C0

|
007C05E0   E8D3A9FEFF             call    007AAFB8
007C05E5   6A00                   push    $00
007C05E7   B950000000             mov     ecx, $00000050
007C05EC   B201                   mov     dl, $01

* Possible String Reference to: 'CAMINHO'
|
007C05EE   B8D0067C00             mov     eax, $007C06D0

|
007C05F3   E8C0A9FEFF             call    007AAFB8

* Possible String Reference to: 'CODIMPR, MICRO'
|
007C05F8   B8E0067C00             mov     eax, $007C06E0

|
007C05FD   E816ADFEFF             call    007AB318

* Possible String Reference to: 'IMPRMICRO'
|
007C0602   BA9C067C00             mov     edx, $007C069C
007C0607   33C0                   xor     eax, eax

|
007C0609   E8B2AFFEFF             call    007AB5C0
007C060E   8845FF                 mov     [ebp-$01], al
007C0611   33C0                   xor     eax, eax
007C0613   5A                     pop     edx
007C0614   59                     pop     ecx
007C0615   59                     pop     ecx
007C0616   648910                 mov     fs:[eax], edx
007C0619   EB3B                   jmp     007C0656

* Reference to: System.@HandleOnException;
|
007C061B   E99045C4FF             jmp     00404BB0
007C0620   0100                   add     [eax], eax
007C0622   0000                   add     [eax], al
007C0624   40                     inc     eax
007C0625   95                     xchg    eax, ebp
007C0626   40                     inc     eax
007C0627   002C06                 add     [esi+eax], ch
007C062A   7C00                   jl      007C062C
007C062C   89C3                   mov     ebx, eax
007C062E   6A00                   push    $00
007C0630   8B4B04                 mov     ecx, [ebx+$04]
007C0633   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'Ocorreu um erro ao executar a funçã
|                                o CriaTabImprMicro.'
|
007C0636   BAF8067C00             mov     edx, $007C06F8

* Reference to: System.@LStrCat3;
|
007C063B   E86851C4FF             call    004057A8
007C0640   8B45F8                 mov     eax, [ebp-$08]
007C0643   668B0D34077C00         mov     cx, word ptr [$007C0734]
007C064A   B201                   mov     dl, $01

|
007C064C   E8DB34C8FF             call    00443B2C

* Reference to: System.@DoneExcept;
|
007C0651   E85A48C4FF             call    00404EB0

****** END
|
007C0656   33C0                   xor     eax, eax
007C0658   5A                     pop     edx
007C0659   59                     pop     ecx
007C065A   59                     pop     ecx
007C065B   648910                 mov     fs:[eax], edx

****** FINALLY
|
007C065E   686B067C00             push    $007C066B
007C0663   C3                     ret


* Reference to: System.@HandleFinally;
|
007C0664   E9CF46C4FF             jmp     00404D38
007C0669   EBF8                   jmp     007C0663

****** END
|
007C066B   33C0                   xor     eax, eax
007C066D   5A                     pop     edx
007C066E   59                     pop     ecx
007C066F   59                     pop     ecx
007C0670   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[YY]Ã'
|
007C0673   6888067C00             push    $007C0688
007C0678   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
007C067B   E81C4EC4FF             call    0040549C
007C0680   C3                     ret


* Reference to: System.@HandleFinally;
|
007C0681   E9B246C4FF             jmp     00404D38
007C0686   EBF0                   jmp     007C0678

****** END
|
007C0688   8A45FF                 mov     al, byte ptr [ebp-$01]
007C068B   5F                     pop     edi
007C068C   5E                     pop     esi
007C068D   5B                     pop     ebx
007C068E   59                     pop     ecx
007C068F   59                     pop     ecx
007C0690   5D                     pop     ebp
007C0691   C3                     ret

*)
end;

procedure TDmC._PROC_007C0681(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
007C0681   E9B246C4FF             jmp     00404D38

|
007C0686   EBF0                   jmp     007C0678
007C0688   8A45FF                 mov     al, byte ptr [ebp-$01]
007C068B   5F                     pop     edi
007C068C   5E                     pop     esi
007C068D   5B                     pop     ebx
007C068E   59                     pop     ecx
007C068F   59                     pop     ecx
007C0690   5D                     pop     ebp
007C0691   C3                     ret

*)
end;

procedure TDmC._PROC_007C0739(Sender : TObject);
begin
(*
007C0739   8BEC                   mov     ebp, esp
007C073B   33C0                   xor     eax, eax
007C073D   55                     push    ebp

* Possible String Reference to: 'éÖEÄÿëø]Ã‹Àƒ-”õ}'
|
007C073E   685D077C00             push    $007C075D

***** TRY
|
007C0743   64FF30                 push    dword ptr fs:[eax]
007C0746   648920                 mov     fs:[eax], esp
007C0749   FF0594F57D00           inc     dword ptr [$007DF594]
007C074F   33C0                   xor     eax, eax
007C0751   5A                     pop     edx
007C0752   59                     pop     ecx
007C0753   59                     pop     ecx
007C0754   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-”õ}'
|
007C0757   6864077C00             push    $007C0764
007C075C   C3                     ret


* Reference to: System.@HandleFinally;
|
007C075D   E9D645C4FF             jmp     00404D38
007C0762   EBF8                   jmp     007C075C

****** END
|
007C0764   5D                     pop     ebp
007C0765   C3                     ret

*)
end;

procedure TDmC._PROC_007C0768(Sender : TObject);
begin
(*
007C0768   832D94F57D0001         sub     dword ptr [$007DF594], +$01
007C076F   C3                     ret

*)
end;

procedure TDmC._PROC_007C0770(Sender : TObject);
begin
(*
007C0770   BC077C0000             mov     esp, $00007C07
007C0775   0000                   add     [eax], al

*)
end;

end.