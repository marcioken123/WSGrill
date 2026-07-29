unit Udm2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet;
  
type
  TDm2=class(TDataModule)
    TbFuncoes: TIBDataSet;
    TbFuncoesCODFUNCAO: TIntegerField;
    TbFuncoesTELA: TIBStringField;
    TbFuncoesNOME: TIBStringField;
    TbFuncoesDESCRICAO: TIBStringField;
    TbFuncoesFUNCAO: TMemoField;
    DsFuncoes: TDataSource;
    TbRelator: TIBDataSet;
    TbRelatorCODIGO: TIntegerField;
    TbRelatorTELA: TIBStringField;
    TbRelatorDESCRICAO: TIBStringField;
    TbRelatorDEFINICAO: TMemoField;
    TbRelatorLINHAS: TIntegerField;
    TbRelatorTIPORELATORIO: TIBStringField;
    TbRelatorSAIDAPADRAO: TIBStringField;
    TbRelatorDESENHO: TIBStringField;
    TbRelatorTAMPAGINADOS: TIBStringField;
    TbRelatorCOMQUEBRA: TIBStringField;
    TbRelatorETQMARGSUPERIOR: TIntegerField;
    TbRelatorETQMARGLATERAL: TIntegerField;
    TbRelatorETQDISTVERTICAL: TIntegerField;
    TbRelatorETQDISTHORIZONTAL: TIntegerField;
    TbRelatorETQALTURA: TIntegerField;
    TbRelatorETQLARGURA: TIntegerField;
    TbRelatorETQPORLINHA: TIntegerField;
    TbRelatorETQLINHASPORPAGINA: TIntegerField;
    TbRelatorETQVIAS: TIBStringField;
    DsRelator: TDataSource;
    TbCfgRel: TIBDataSet;
    TbCfgRelCODIGO: TIntegerField;
    TbCfgRelMICRO: TIBStringField;
    TbCfgRelWORKGROUP: TIBStringField;
    TbCfgRelIMPRESSORA: TIBStringField;
    TbCfgRelFONTEIMPRMATRICIAL: TIntegerField;
    TbCfgRelPAPEL: TIntegerField;
    TbCfgRelORIENTACAO: TIntegerField;
    TbCfgRelALTURA: TIntegerField;
    TbCfgRelLARGURA: TIntegerField;
    DsCfgRel: TDataSource;
    TbFontes: TIBDataSet;
    TbFontesCODFONTE: TIBStringField;
    TbFontesTELA: TIBStringField;
    TbFontesUSO: TIBStringField;
    TbFontesFONTE: TIBStringField;
    TbFontesCOR: TIBStringField;
    TbFontesTAMANHO: TIntegerField;
    TbFontesSUBLINHADO: TIBStringField;
    TbFontesBOLD: TIBStringField;
    TbFontesITALICO: TIBStringField;
    TbFontesLETRADOS: TIBStringField;
    TbFontesFONTEDOS: TIBStringField;
    TbFontesITALICODOS: TIBStringField;
    TbFontesSUBLINHADODOS: TIBStringField;
    TbFontesTAMANHODOS: TIBStringField;
    DsFontes: TDataSource;
    TbImpress: TIBDataSet;
    TbImpressCODIMPRESSORA: TIntegerField;
    TbImpressIMPRESSORA: TIBStringField;
    TbImpressDRAFT: TIBStringField;
    TbImpressROMANO: TIBStringField;
    TbImpressPARAROMANO: TIBStringField;
    TbImpressCOMPRIMIDO: TIBStringField;
    TbImpressPARACOMPRIMIDO: TIBStringField;
    TbImpressEXPANDIDO: TIBStringField;
    TbImpressPARAEXPANDIDO: TIBStringField;
    TbImpressITALICO: TIBStringField;
    TbImpressPARAITALICO: TIBStringField;
    TbImpressSUBLINHADO: TIBStringField;
    TbImpressPARASUBLINHADO: TIBStringField;
    TbImpressINDICE: TIBStringField;
    TbImpressPARAINDICE: TIBStringField;
    TbImpressEXPOENTE: TIBStringField;
    TbImpressPARAEXPOENTE: TIBStringField;
    TbImpressINICIALIZA: TIBStringField;
    TbImpressEJETA: TIBStringField;
    TbImpressFONTE10CPP: TIBStringField;
    TbImpressFONTE12CPP: TIBStringField;
    TbImpressFONTE17CPP: TIBStringField;
    DsImpress: TDataSource;
    TbFeriados: TIBDataSet;
    TbFeriadosDTFERIADO: TDateTimeField;
    TbFeriadosMOTIVO: TIBStringField;
    TbFeriadosFILIAL: TIBStringField;
    TbFeriadosATUALIZACAO: TIBStringField;
    DsFeriados: TDataSource;
    TbParams: TIBDataSet;
    TbParamsFILIAL: TIBStringField;
    TbParamsCGCEMPR: TIBStringField;
    TbParamsRAZAO: TIBStringField;
    TbParamsMULTI: TIBStringField;
    TbParamsUSAMOEDA: TIBStringField;
    TbParamsUSACODDIPAM: TIBStringField;
    TbParamsUSAMARCA: TIBStringField;
    TbParamsTIPOCOMIS: TIBStringField;
    TbParamsJUROSDIA: TFloatField;
    TbParamsJUROSMES: TFloatField;
    TbParamsTAMGRUPO: TSmallintField;
    TbParamsTAMPROD: TSmallintField;
    TbParamsTIPOSPROD: TIBStringField;
    TbParamsUNIDDIVER: TIBStringField;
    TbParamsTAMDESCRRESUMIDA: TSmallintField;
    TbParamsPRODPROMOCAO: TIBStringField;
    TbParamsZEROAUTO: TIBStringField;
    TbParamsUSABARRAPROD: TIBStringField;
    TbParamsUSAMONTADO: TIBStringField;
    TbParamsENTCONTACONTABIL: TIBStringField;
    TbParamsSAICONTACONTABIL: TIBStringField;
    TbParamsENTDEVOLCONTACONTABIL: TIBStringField;
    TbParamsSAIDEVOLCONTACONTABIL: TIBStringField;
    TbParamsENTNATOPER: TIBStringField;
    TbParamsSAINATOPER: TIBStringField;
    TbParamsSAINATOPERSEMESTQ: TIBStringField;
    TbParamsSAINATOPERVALES: TIBStringField;
    TbParamsSAINATOPERTRANSF: TIBStringField;
    TbParamsSAINATOPERCONSIG: TIBStringField;
    TbParamsSAINATOPERNFCF: TIBStringField;
    TbParamsENTFRETE: TIBStringField;
    TbParamsENTSEGURO: TIBStringField;
    TbParamsENTDESPACESS: TIBStringField;
    TbParamsENTTRANSPORTE: TIBStringField;
    TbParamsENTCOMPLEM: TIBStringField;
    TbParamsSAIFRETE: TIBStringField;
    TbParamsSAISEGURO: TIBStringField;
    TbParamsSAIDESPACESS: TIBStringField;
    TbParamsSAITRANSPORTE: TIBStringField;
    TbParamsSAICOMPLEM: TIBStringField;
    TbParamsPVCV: TIBStringField;
    TbParamsPRCFATOR: TIBStringField;
    TbParamsENTIMPRETIQ: TIBStringField;
    TbParamsENTETIQREPOS: TIBStringField;
    TbParamsAPROVPRECO: TIBStringField;
    TbParamsFISJUR: TIBStringField;
    TbParamsDECIQTDE: TSmallintField;
    TbParamsDECIVLR: TSmallintField;
    TbParamsUNIDPESO: TIBStringField;
    TbParamsVENCTODIAUTIL: TIBStringField;
    TbParamsOPERDIAUTIL: TIBStringField;
    TbParamsVENDAESTQZERO: TIBStringField;
    TbParamsPEDVESTQZERO: TIBStringField;
    TbParamsPADRCODBARRA: TIBStringField;
    TbParamsENTREPETEPROD: TIBStringField;
    TbParamsENTSEMCODPROD: TIBStringField;
    TbParamsSAIREPETEPROD: TIBStringField;
    TbParamsSAISEMCODPROD: TIBStringField;
    TbParamsUSAPEDVENDA: TIBStringField;
    TbParamsUSAPEDCOMPRA: TIBStringField;
    TbParamsUSAMONTAGEM: TIBStringField;
    TbParamsTAMCONTACONTABIL: TSmallintField;
    TbParamsMASCCONTA: TIBStringField;
    TbParamsENTESPECIE: TIBStringField;
    TbParamsSAIESPECIE: TIBStringField;
    TbParamsENTSERIE: TIBStringField;
    TbParamsSAISERIE: TIBStringField;
    TbParamsENTPRODDESC: TIBStringField;
    TbParamsSAIPRODDESC: TIBStringField;
    TbParamsCONFIRMACOMIS: TIBStringField;
    TbParamsUSACAIXA: TIBStringField;
    TbParamsDTCAIXAEMISSAO: TIBStringField;
    TbParamsCUPOMCAIXA: TIBStringField;
    TbParamsCHEQUEDEVOL: TIBStringField;
    TbParamsTIPOSNF: TIBStringField;
    TbParamsENTTIPOPGTO: TIBStringField;
    TbParamsSAITIPOPGTO: TIBStringField;
    TbParamsNUMDIASBLOQUEIO: TSmallintField;
    TbParamsENTNUMSEQ: TIBStringField;
    TbParamsSAINUMSEQ: TIBStringField;
    TbParamsCLIENUMSEQ: TIBStringField;
    TbParamsPEDCNUMSEQ: TIBStringField;
    TbParamsPEDVNUMSEQ: TIBStringField;
    TbParamsDIVNUMSEQ: TIBStringField;
    TbParamsDATATRABALHO: TDateTimeField;
    TbParamsENTDTPREVLIQ: TIBStringField;
    TbParamsSAIDTPREVLIQ: TIBStringField;
    TbParamsTIPOSENHADESC: TIBStringField;
    TbParamsTIPOSENHACAIXA: TIBStringField;
    TbParamsSENHADESC: TIBStringField;
    TbParamsSENHACAIXA: TIBStringField;
    TbParamsSENHAROTESPEC: TIBStringField;
    TbParamsSENHADESCDIAS: TSmallintField;
    TbParamsSENHADESCMES: TSmallintField;
    TbParamsSENHACAIXADIAS: TSmallintField;
    TbParamsSENHACAIXAMES: TSmallintField;
    TbParamsUSATABCLIE: TIBStringField;
    TbParamsUSATABFORN: TIBStringField;
    TbParamsDEVOLCOMIS: TIBStringField;
    TbParamsREMEBANCO: TIBStringField;
    TbParamsREMECLIE: TIBStringField;
    TbParamsREMEFORN: TIBStringField;
    TbParamsVLREMAJUSTE: TIBStringField;
    TbParamsUSAFRETESETOR: TIBStringField;
    TbParamsIMPEXPDADOS: TIBStringField;
    TbParamsPRECONEGOCIAVEL: TIBStringField;
    TbParamsMARGMINVENDA: TFloatField;
    TbParamsMARGPADRAO: TFloatField;
    TbParamsSAIESPECIES: TIBStringField;
    TbParamsSAISERIES: TIBStringField;
    TbParamsUSAFACTOR: TIBStringField;
    TbParamsCODCOMPENSACAO: TIBStringField;
    TbParamsATUAPRECOMARGEM: TIBStringField;
    TbParamsUSAAGRUPACLIE: TIBStringField;
    TbParamsQTDPEDORIGINAL: TIBStringField;
    TbParamsMOEDAPADRAO: TIBStringField;
    TbParamsIMPOSTOICMS: TIBStringField;
    TbParamsIMPOSTOIPI: TIBStringField;
    TbParamsCUSTOFINANCEIRO: TFloatField;
    TbParamsIMPOSTOIRRF: TIBStringField;
    TbParamsBLOQPEDFATU: TIBStringField;
    TbParamsUSACONTABIL: TIBStringField;
    TbParamsUSAESPECTEC: TIBStringField;
    TbParamsVENDAEXPORT: TIBStringField;
    TbParamsUSAIMOBILIZADO: TIBStringField;
    TbParamsUSAPRODMODELO: TIBStringField;
    TbParamsUSAPRODLOCAL: TIBStringField;
    TbParamsUSAPPB: TIBStringField;
    TbParamsUSACECUSTO: TIBStringField;
    TbParamsUSACRESP: TIBStringField;
    TbParamsUNIDMED: TIBStringField;
    TbParamsUSAPRODSIMI: TIBStringField;
    TbParamsF11CODPROD: TIBStringField;
    TbParamsF11BARRAPROD: TIBStringField;
    TbParamsF11MODELO: TIBStringField;
    TbParamsF11MARCA: TIBStringField;
    TbParamsF11GRUPO: TIBStringField;
    TbParamsF11SETOR: TIBStringField;
    TbParamsF11TAMCODPROD: TSmallintField;
    TbParamsF11TAMMODELO: TSmallintField;
    TbParamsF11TAMDESCRICAO: TSmallintField;
    TbParamsF11TAMMARCA: TSmallintField;
    TbParamsF11TAMGRUPO: TSmallintField;
    TbParamsF11ORDCODPROD: TSmallintField;
    TbParamsF11ORDMODELO: TSmallintField;
    TbParamsF11ORDDESCRICAO: TSmallintField;
    TbParamsF11ORDMARCA: TSmallintField;
    TbParamsF11ORDGRUPO: TSmallintField;
    TbParamsF11ORDCODBARRA: TSmallintField;
    TbParamsF11ORDSETOR: TSmallintField;
    TbParamsF11FOCO: TIBStringField;
    TbParamsF11PESQNORM: TIBStringField;
    TbParamsCONDPGTOPORFILIAL: TIBStringField;
    TbParamsNATOPERPORFILIAL: TIBStringField;
    TbParamsUSAF11NOF2PROD: TIBStringField;
    TbParamsUSASEDEX: TIBStringField;
    TbParamsTIPOIDENTPROD: TIBStringField;
    TbParamsPESQCEP: TIBStringField;
    TbParamsUSAREQUISICAO: TIBStringField;
    TbParamsDIRARQREQUISICAO: TIBStringField;
    TbParamsPEDVPRAZOENTREGA: TIntegerField;
    TbParamsFILIALPADRAOREQUISICAO: TIBStringField;
    TbParamsLOCALPADRAOVENDA: TIBStringField;
    TbParamsLOCALPRADRAOTRANSF: TIBStringField;
    TbParamsREQAUTOPV: TIBStringField;
    TbParamsREQAUTOVE: TIBStringField;
    TbParamsENTNATOPERFE: TIBStringField;
    TbParamsSAIESPECIENF: TIBStringField;
    TbParamsSAISERIENF: TIBStringField;
    TbParamsSAINATOPERFE: TIBStringField;
    TbParamsULTPEDVENDA: TIntegerField;
    TbParamsULTPEDCOMPRA: TIntegerField;
    TbParamsALTCODPRODPADRAO: TIBStringField;
    TbParamsSAICOMISSAOMAXIMA: TFloatField;
    TbParamsF11PESQOBS: TIBStringField;
    TbParamsFRETENABASEICMS: TIBStringField;
    TbParamsAUDITAF11: TIBStringField;
    TbParamsCODPDV: TIBStringField;
    TbParamsF11RETORNO: TIBStringField;
    TbParamsF11TAMSETOR: TSmallintField;
    TbParamsUSUARIOIMPRIMINDONF: TIBStringField;
    TbParamsFILTRALISTAPRECO: TIBStringField;
    TbParamsENTDECIVLR: TIntegerField;
    TbParamsENTDECIQTDE: TIntegerField;
    TbParamsCOMISINCLUIFRETE: TIBStringField;
    TbParamsCOMISINCLUIDESCCCRED: TIBStringField;
    TbParamsCOMISINCLUIDESCFINANC: TIBStringField;
    TbParamsCOMISINCLUIICMS: TIBStringField;
    TbParamsCOMISINCLUIIPI: TIBStringField;
    TbParamsUSABARRAPRODUNID: TIBStringField;
    TbParamsDESCREMBALAGEM: TIBStringField;
    TbParamsDESCRCOMPLEMENTO: TIBStringField;
    TbParamsOBSNFTODASPAGINAS: TIBStringField;
    TbParamsPESQRAPEND: TIBStringField;
    TbParamsDESLIGAWINDOWS: TIBStringField;
    TbParamsUSANUMSERIE: TIBStringField;
    TbParamsCLIEOBRI: TIBStringField;
    TbParamsCLIEVISI: TIBStringField;
    TbParamsFORNOBRI: TIBStringField;
    TbParamsFORNVISI: TIBStringField;
    TbParamsTABDIVER: TIBStringField;
    TbParamsNRVEFUNC: TIBStringField;
    TbParamsUSAGRADE: TIBStringField;
    TbParamsUSADUPLS: TIBStringField;
    TbParamsUSABALANCA: TIBStringField;
    TbParamsSAINATOPERSEMESTQFE: TIBStringField;
    TbParamsSAINATOPEREX: TIBStringField;
    TbParamsSAINATOPERSEMESTQEX: TIBStringField;
    TbParamsNFTIPOQUEBRA: TIBStringField;
    TbParamsINCLPRECOCO: TIBStringField;
    TbParamsFOCAGRUPO: TIBStringField;
    TbParamsGRAVAVENDCLIEFILI: TIBStringField;
    TbParamsUSAPROGPRECO: TIBStringField;
    TbParamsALTINSPEDEFUNC: TIBStringField;
    TbParamsF11OPCDEFAULT: TIBStringField;
    TbParamsUSALEITORCHEQUE: TIBStringField;
    TbParamsF11VLRUNIT: TIBStringField;
    TbParamsF11TAMVLRUNIT: TSmallintField;
    TbParamsF11ORDVLRUNIT: TSmallintField;
    TbParamsGERASENHAVALE: TIBStringField;
    TbParamsSUPRBAIXAREC: TIBStringField;
    TbParamsULTCOTACAOVENDA: TIntegerField;
    TbParamsULTCOTACAOCOMPRA: TIntegerField;
    TbParamsREQAUTOVA: TIBStringField;
    TbParamsREQAUTOVEVA: TIBStringField;
    TbParamsENTFRETELCTO: TIBStringField;
    TbParamsDTULTPEDVEND: TDateTimeField;
    TbParamsDTULTCOTVEND: TDateTimeField;
    TbParamsDTULTPEDCOMP: TDateTimeField;
    TbParamsDTULTCOTCOMP: TDateTimeField;
    TbParamsENTNATOPEREX: TIBStringField;
    TbParamsIMPDTPEDDTSIST: TIBStringField;
    TbParamsTIPOALIQFRETE: TIBStringField;
    TbParamsALTINSTRANS: TIBStringField;
    TbParamsALTCODFUNCSAIDA: TIBStringField;
    TbParamsLKLocalVenda: TStringField;
    DsParams: TDataSource;
    DsFormas: TDataSource;
    TbFormas: TIBDataSet;
    TbFormasTIPOPGTO: TIBStringField;
    TbFormasDESCRICAO: TIBStringField;
    TbFormasTIPO: TIBStringField;
    TbFormasCLASSIFICACAO: TIBStringField;
    TbFormasATUALIZACAO: TIBStringField;
    TbParamsENTRAZFANTA: TIBStringField;
    TbParamsSAIRAZFANTA: TIBStringField;
    TbParamsPEDCRAZFANTA: TIBStringField;
    TbParamsPEDVRAZFANTA: TIBStringField;
    TbParmFili: TIBDataSet;
    TbParmFiliFILIAL: TIBStringField;
    TbParmFiliPRECOPORFILIAL: TIBStringField;
    TbParmFiliNATOPERPORFILIAL: TIBStringField;
    TbParmFiliCONDPGTOPORFILIAL: TIBStringField;
    TbParmFiliIMPOSTOSPORFILIAL: TIBStringField;
    TbParmFiliULTREQUISICAO: TIntegerField;
    TbParmFiliUSAFILIALMULT: TIBStringField;
    TbParmFiliDTULTREQUIS: TDateTimeField;
    TbParmFiliULTDIVRECE: TIntegerField;
    TbParmFiliULTDIVDESP: TIntegerField;
    TbParmFiliCLIESENHACAIXA: TIBStringField;
    DsParmFili: TDataSource;
    TbUsuarios: TIBDataSet;
    TbUsuariosUSUARIO: TIBStringField;
    TbUsuariosCODFUNC: TIBStringField;
    TbUsuariosIDENTIFICACAO: TIBStringField;
    TbUsuariosSENHA: TIBStringField;
    TbUsuariosFILIAL: TIBStringField;
    TbUsuariosHORAINICIAL: TDateTimeField;
    TbUsuariosHORAFINAL: TDateTimeField;
    TbUsuariosFILIALOUTODAS: TIBStringField;
    TbUsuariosDIRBACKUP: TIBStringField;
    TbUsuariosATUALIZACAO: TDateTimeField;
    TbUsuariosFILTROLCTOS: TIBStringField;
    TbUsuariosACESSO: TIBStringField;
    TbUsuariosACESSO2: TIBStringField;
    TbUsuariosADMSIST: TIBStringField;
    TbUsuariosNDIASFILTRO: TIntegerField;
    TbUsuariosALERTAESTMIN: TIBStringField;
    TbUsuariosACESSOCUSTO: TIBStringField;
    TbUsuariosVERIFICAPROMO: TStringField;
    TbUsuariosCONECTADO: TIBStringField;
    TbUsuariosDECIMAISCALCU: TIntegerField;
    TbUsuariosGRIDCALCU: TIBStringField;
    TbUsuariosMEMOCALCU: TIBStringField;
    TbUsuariosF11LOGIN: TIBStringField;
    DsUsuarios: TDataSource;
    TbTabPreco: TIBDataSet;
    TbTabPrecoFILIAL: TIBStringField;
    TbTabPrecoTABPRECO: TIBStringField;
    TbTabPrecoDESCRICAO: TIBStringField;
    TbTabPrecoCONDPGTO1: TIBStringField;
    TbTabPrecoCONDPGTO2: TIBStringField;
    TbTabPrecoCONDPGTO3: TIBStringField;
    TbTabPrecoCONDPGTO4: TIBStringField;
    TbTabPrecoCONDPGTO5: TIBStringField;
    TbTabPrecoDECIMAIS: TSmallintField;
    TbTabPrecoARREDTRUNCA: TIBStringField;
    TbTabPrecoTITULO: TIBStringField;
    TbTabPrecoDECIMAIS2: TSmallintField;
    TbTabPrecoARREDTRUNCA2: TIBStringField;
    TbTabPrecoTITULO2: TIBStringField;
    TbTabPrecoDECIMAIS3: TSmallintField;
    TbTabPrecoARREDTRUNCA3: TIBStringField;
    TbTabPrecoTITULO3: TIBStringField;
    TbTabPrecoDECIMAIS4: TSmallintField;
    TbTabPrecoARREDTRUNCA4: TIBStringField;
    TbTabPrecoTITULO4: TIBStringField;
    TbTabPrecoDECIMAIS5: TSmallintField;
    TbTabPrecoARREDTRUNCA5: TIBStringField;
    TbTabPrecoTITULO5: TIBStringField;
    TbTabPrecoDECIMAISREL: TSmallintField;
    TbTabPrecoDIGITOSREL: TSmallintField;
    TbTabPrecoVRFLIMITEDESC: TIBStringField;
    DsTabPreco: TDataSource;
    DsCondPgto: TDataSource;
    TbCondPgto: TIBDataSet;
    TbCondPgtoFILIAL: TIBStringField;
    TbCondPgtoCONDPAGTO: TIBStringField;
    TbCondPgtoDESCRICAO: TIBStringField;
    TbCondPgtoNUMPARCELAS: TIntegerField;
    TbCondPgtoPARCELASIGUAIS: TIBStringField;
    TbCondPgtoCUSTOFINANC: TFloatField;
    TbCondPgtoACEITAPROMOCAO: TIBStringField;
    TbCondPgtoCOMISSAONOMES: TIBStringField;
    TbCondPgtoINICIOPRAZO: TIBStringField;
    TbCondPgtoTIPOPAGTO: TIBStringField;
    TbCondPgtoREFERENCIAS: TFloatField;
    TbCondPgtoVLRTAC: TFloatField;
    TbCondPgtoNAOINCLUICUSTO: TIBStringField;
    TbCondPgtoATUALIZACAO: TIBStringField;
    DsParcPraz: TDataSource;
    TbParcPraz: TIBDataSet;
    TbParcPrazFILIAL: TIBStringField;
    TbParcPrazCONDPAGTO: TIBStringField;
    TbParcPrazPARCELA: TSmallintField;
    TbParcPrazPRAZO: TSmallintField;
    TbParcPrazPRCPARCELA: TFloatField;
    DsCondForm: TDataSource;
    TbCondForm: TIBDataSet;
    TbCondFormFILIAL: TIBStringField;
    TbCondFormCONDPAGTO: TIBStringField;
    TbCondFormTIPOPGTO: TIBStringField;
    TbCondFormATUALIZACAO: TIBStringField;
    TbCondFormLkDescricao: TStringField;
    TbLocais: TIBDataSet;
    TbLocaisCODLOCAL: TIBStringField;
    TbLocaisDESCRICAO: TIBStringField;
    DsLocais: TDataSource;
    TbSubLocal: TIBDataSet;
    TbSubLocalCODSUBLOCAL: TIBStringField;
    TbSubLocalDESCRICAO: TIBStringField;
    TbSubLocalCODLOCAL: TIBStringField;
    DsSubLocal: TDataSource;
    DsClasFisc: TDataSource;
    TbClasFisc: TIBDataSet;
    TbClasFiscCLASSFISC: TIBStringField;
    TbClasFiscCLASSFISCAL: TIBStringField;
    TbClasFiscDESCRICAO: TIBStringField;
    TbClasFiscATUALIZACAO: TIBStringField;
    TbClasFiscIMPOSTO: TIBStringField;
    TbClasFiscALIQUOTA: TFloatField;
    DsEstados: TDataSource;
    TbEstados: TIBDataSet;
    TbEstadosFILIAL: TIBStringField;
    TbEstadosESTADO: TIBStringField;
    TbEstadosDESCRICAO: TIBStringField;
    TbEstadosCODIGO: TIBStringField;
    DsEstaImpo: TDataSource;
    TbEstaImpo: TIBDataSet;
    TbEstaImpoFILIAL: TIBStringField;
    TbEstaImpoESTADO: TIBStringField;
    TbEstaImpoIMPOSTO: TIBStringField;
    TbEstaImpoALIQUOTA: TFloatField;
    TbEstaImpoPRCREDUC: TFloatField;
    TbEstaImpoALIQEXTERNA: TFloatField;
    TbParamsCAIXABERTO: TIBStringField;
    procedure TbRelatorAfterOpen(Sender : TObject);
    procedure TbCfgRelNewRecord(Sender : TObject);
    procedure DataModuleCreate(Sender : TObject);
    procedure _PROC_005D8AEC(Sender : TObject);
    procedure _PROC_005D8BF0(Sender : TObject);
    procedure _PROC_005D8C20(Sender : TObject);
    procedure _PROC_005D8C28(Sender : TObject);
    procedure _PROC_005D8D3F(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  Dm2: TDm2;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TDm2.TbRelatorAfterOpen(Sender : TObject);
begin
(*
005D8A14   55                     push    ebp
005D8A15   8BEC                   mov     ebp, esp
005D8A17   A1A0D97D00             mov     eax, dword ptr [$007DD9A0]
005D8A1C   8B80C8000000           mov     eax, [eax+$00C8]

|
005D8A22   E8E1DA1C00             call    007A6508
005D8A27   A1A0D97D00             mov     eax, dword ptr [$007DD9A0]
005D8A2C   8B8034010000           mov     eax, [eax+$0134]

|
005D8A32   E8D1DA1C00             call    007A6508
005D8A37   A1A0D97D00             mov     eax, dword ptr [$007DD9A0]
005D8A3C   8B4058                 mov     eax, [eax+$58]

|
005D8A3F   E8C4DA1C00             call    007A6508
005D8A44   5D                     pop     ebp
005D8A45   C3                     ret

*)
end;

procedure TDm2.TbCfgRelNewRecord(Sender : TObject);
begin
(*
005D8A48   55                     push    ebp
005D8A49   8BEC                   mov     ebp, esp
005D8A4B   6A00                   push    $00
005D8A4D   6A00                   push    $00
005D8A4F   53                     push    ebx
005D8A50   8BD8                   mov     ebx, eax
005D8A52   33C0                   xor     eax, eax
005D8A54   55                     push    ebp
005D8A55   68D48A5D00             push    $005D8AD4

***** TRY
|
005D8A5A   64FF30                 push    dword ptr fs:[eax]
005D8A5D   648920                 mov     fs:[eax], esp

* Reference to control TDm2.TbRelatorCODIGO : TIntegerField
|
005D8A60   8B4378                 mov     eax, [ebx+$78]
005D8A63   8B10                   mov     edx, [eax]

* Reference to method TIntegerField.GetAsInteger()
|
005D8A65   FF5258                 call    dword ptr [edx+$58]
005D8A68   8BD0                   mov     edx, eax

* Reference to control TDm2.TbCfgRelCODIGO : TIntegerField
|
005D8A6A   8B83CC000000           mov     eax, [ebx+$00CC]
005D8A70   8B08                   mov     ecx, [eax]

* Reference to method TIntegerField.SetAsInteger(Longint)
|
005D8A72   FF91A8000000           call    dword ptr [ecx+$00A8]
005D8A78   8D45FC                 lea     eax, [ebp-$04]

* Reference to : TFrmInfoAtu._PROC_007A3864()
|
005D8A7B   E8E4AD1C00             call    007A3864
005D8A80   8B55FC                 mov     edx, [ebp-$04]

* Reference to control TDm2.TbCfgRelMICRO : TIBStringField
|
005D8A83   8B83D0000000           mov     eax, [ebx+$00D0]
005D8A89   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TIBStringField.OFFS_00B0
|
005D8A8B   FF91B0000000           call    dword ptr [ecx+$00B0]
005D8A91   A178B47D00             mov     eax, dword ptr [$007DB478]
005D8A96   8B00                   mov     eax, [eax]
005D8A98   8B4078                 mov     eax, [eax+$78]

* Reference to : TJvComputerInfoEx._PROC_005C558C()
|
005D8A9B   E8ECCAFEFF             call    005C558C
005D8AA0   8D55F8                 lea     edx, [ebp-$08]

* Reference to : TJvComputerInfoEx._PROC_005C0168()
|
005D8AA3   E8C076FEFF             call    005C0168
005D8AA8   8B55F8                 mov     edx, [ebp-$08]

* Reference to control TDm2.TbCfgRelWORKGROUP : TIBStringField
|
005D8AAB   8B83D4000000           mov     eax, [ebx+$00D4]
005D8AB1   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TIBStringField.OFFS_00B0
|
005D8AB3   FF91B0000000           call    dword ptr [ecx+$00B0]
005D8AB9   33C0                   xor     eax, eax
005D8ABB   5A                     pop     edx
005D8ABC   59                     pop     ecx
005D8ABD   59                     pop     ecx
005D8ABE   648910                 mov     fs:[eax], edx

****** FINALLY
|
005D8AC1   68DB8A5D00             push    $005D8ADB
005D8AC6   8D45F8                 lea     eax, [ebp-$08]
005D8AC9   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005D8ACE   E8EDC9E2FF             call    004054C0
005D8AD3   C3                     ret


* Reference to: System.@HandleFinally;
|
005D8AD4   E95FC2E2FF             jmp     00404D38
005D8AD9   EBEB                   jmp     005D8AC6

****** END
|
005D8ADB   5B                     pop     ebx
005D8ADC   59                     pop     ecx
005D8ADD   59                     pop     ecx
005D8ADE   5D                     pop     ebp
005D8ADF   C3                     ret

*)
end;

procedure TDm2.DataModuleCreate(Sender : TObject);
begin
(*
005D8AE0   55                     push    ebp
005D8AE1   8BEC                   mov     ebp, esp

* Reference to : TDm2._PROC_005D8AEC()
|
005D8AE3   E804000000             call    005D8AEC
005D8AE8   5D                     pop     ebp
005D8AE9   C3                     ret

*)
end;

procedure TDm2._PROC_005D8AEC(Sender : TObject);
begin
(*
005D8AEC   55                     push    ebp
005D8AED   8BEC                   mov     ebp, esp
005D8AEF   53                     push    ebx
005D8AF0   56                     push    esi
005D8AF1   57                     push    edi
005D8AF2   BEA0D97D00             mov     esi, $007DD9A0
005D8AF7   8B3D78B47D00           mov     edi, [$007DB478]
005D8AFD   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponentCount(TComponent):Integer;
|
005D8AFF   E8FC57E5FF             call    0042E300
005D8B04   8BD8                   mov     ebx, eax
005D8B06   4B                     dec     ebx
005D8B07   83FB00                 cmp     ebx, +$00
005D8B0A   0F8CDB000000           jl      005D8BEB
005D8B10   8BD3                   mov     edx, ebx
005D8B12   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005D8B14   E8BB57E5FF             call    0042E2D4

* Reference to class TIBDataSet
|
005D8B19   8B15B4A55500           mov     edx, [$0055A5B4]

* Reference to: System.@IsClass(TObject;TClass):Boolean;
|
005D8B1F   E80CBCE2FF             call    00404730
005D8B24   84C0                   test    al, al
005D8B26   0F84B5000000           jz      005D8BE1
005D8B2C   8BD3                   mov     edx, ebx
005D8B2E   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005D8B30   E89F57E5FF             call    0042E2D4
005D8B35   8B17                   mov     edx, [edi]
005D8B37   8990BC000000           mov     [eax+$00BC], edx

* Possible String Reference to: 'U‹ì‹Âèæ²þÿ]ÃU‹ìj'
|
005D8B3D   C780B8000000E8CF7B00   mov     dword ptr [eax+$00B8], $007BCFE8
005D8B47   8BD3                   mov     edx, ebx
005D8B49   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005D8B4B   E88457E5FF             call    0042E2D4
005D8B50   83780C00               cmp     dword ptr [eax+$0C], +$00
005D8B54   0F8E87000000           jle     005D8BE1
005D8B5A   8BD3                   mov     edx, ebx
005D8B5C   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005D8B5E   E87157E5FF             call    0042E2D4
005D8B63   8B17                   mov     edx, [edi]
005D8B65   8990D4000000           mov     [eax+$00D4], edx

* Possible String Reference to: 'U‹ìj'
|
005D8B6B   C780D000000044D27B00   mov     dword ptr [eax+$00D0], $007BD244
005D8B75   8BD3                   mov     edx, ebx
005D8B77   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005D8B79   E85657E5FF             call    0042E2D4
005D8B7E   8B17                   mov     edx, [edi]
005D8B80   8990E4000000           mov     [eax+$00E4], edx

* Possible String Reference to: 'U‹ì3ÉQQQQSV‹ò3ÀUh”Ñ{'
|
005D8B86   C780E0000000C8D07B00   mov     dword ptr [eax+$00E0], $007BD0C8
005D8B90   8BD3                   mov     edx, ebx
005D8B92   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005D8B94   E83B57E5FF             call    0042E2D4
005D8B99   8B17                   mov     edx, [edi]
005D8B9B   8990F4000000           mov     [eax+$00F4], edx

* Possible String Reference to: 'U‹ì3ÉQQQQSVW‹ò‹ø3ÀUhßÔ{'
|
005D8BA1   C780F0000000C0D37B00   mov     dword ptr [eax+$00F0], $007BD3C0
005D8BAB   8BD3                   mov     edx, ebx
005D8BAD   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005D8BAF   E82057E5FF             call    0042E2D4
005D8BB4   8B17                   mov     edx, [edi]
005D8BB6   8990FC000000           mov     [eax+$00FC], edx

* Possible String Reference to: 'U‹ìj'
|
005D8BBC   C780F8000000F4CF7B00   mov     dword ptr [eax+$00F8], $007BCFF4
005D8BC6   8BD3                   mov     edx, ebx
005D8BC8   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
005D8BCA   E80557E5FF             call    0042E2D4
005D8BCF   8B17                   mov     edx, [edi]
005D8BD1   89901C010000           mov     [eax+$011C], edx

* Possible String Reference to: 'U‹ìj'
|
005D8BD7   C7801801000008CF7B00   mov     dword ptr [eax+$0118], $007BCF08
005D8BE1   4B                     dec     ebx
005D8BE2   83FBFF                 cmp     ebx, -$01
005D8BE5   0F8525FFFFFF           jnz     005D8B10
005D8BEB   5F                     pop     edi
005D8BEC   5E                     pop     esi
005D8BED   5B                     pop     ebx
005D8BEE   5D                     pop     ebp
005D8BEF   C3                     ret

*)
end;

procedure TDm2._PROC_005D8BF0(Sender : TObject);
begin
(*
005D8BF0   55                     push    ebp
005D8BF1   8BEC                   mov     ebp, esp
005D8BF3   33C0                   xor     eax, eax
005D8BF5   55                     push    ebp
005D8BF6   68158C5D00             push    $005D8C15

***** TRY
|
005D8BFB   64FF30                 push    dword ptr fs:[eax]
005D8BFE   648920                 mov     fs:[eax], esp
005D8C01   FF05A4D97D00           inc     dword ptr [$007DD9A4]
005D8C07   33C0                   xor     eax, eax
005D8C09   5A                     pop     edx
005D8C0A   59                     pop     ecx
005D8C0B   59                     pop     ecx
005D8C0C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']Ã‹Àƒ-¤Ù}'
|
005D8C0F   681C8C5D00             push    $005D8C1C
005D8C14   C3                     ret


* Reference to: System.@HandleFinally;
|
005D8C15   E91EC1E2FF             jmp     00404D38
005D8C1A   EBF8                   jmp     005D8C14

****** END
|
005D8C1C   5D                     pop     ebp
005D8C1D   C3                     ret

*)
end;

procedure TDm2._PROC_005D8C20(Sender : TObject);
begin
(*
005D8C20   832DA4D97D0001         sub     dword ptr [$007DD9A4], +$01
005D8C27   C3                     ret

*)
end;

procedure TDm2._PROC_005D8C28(Sender : TObject);
begin
(*
005D8C28   748C                   jz      005D8BB6
005D8C2A   5D                     pop     ebp
005D8C2B   0000                   add     [eax], al

*)
end;

procedure TDm2._PROC_005D8D3F(Sender : TObject);
begin
(*
005D8D3F   6C                     insb
005D8D40   7443                   jz      005D8D85
005D8D42   7570                   jnz     005D8DB4
005D8D44   6F                     outsd
005D8D45   6D                     insd
005D8D46   7800                   js      005D8D48
005D8D48   0000                   add     [eax], al

005D8D4A   0400                   add     al, +$00
005D8D4C   0E                     push    cs
005D8D4D   63645061               arpl    [eax+edx*2+$61], sp
005D8D51   726D                   jb      005D8DC0
005D8D53   47                     inc     edi
005D8D54   55                     push    ebp
005D8D55   6C                     insb
005D8D56   7444                   jz      005D8D9C
005D8D58   61                     popa
005D8D59   7461                   jz      005D8DBC
005D8D5B   7C00                   jl      005D8D5D
005D8D5D   0000                   add     [eax], al

005D8D5F   0300                   add     eax, [eax]
005D8D61   0E                     push    cs
005D8D62   63645061               arpl    [eax+edx*2+$61], sp
005D8D66   726D                   jb      005D8DD5
005D8D68   47                     inc     edi
005D8D69   54                     push    esp
005D8D6A   4D                     dec     ebp
005D8D6B   61                     popa
005D8D6C   7267                   jb      005D8DD5
005D8D6E   656D                   insd
005D8D70   800000                 add     byte ptr [eax], $00
005D8D73   0003                   add     [ebx], al
005D8D75   000F                   add     [edi], cl
005D8D77   63645061               arpl    [eax+edx*2+$61], sp
005D8D7B   726D                   jb      005D8DEA
005D8D7D   47                     inc     edi
005D8D7E   54                     push    esp
005D8D7F   56                     push    esi
005D8D80   6F                     outsd
005D8D81   6C                     insb
005D8D82   756D                   jnz     005D8DF1
005D8D84   657384                 jnb     005D8D0B
005D8D87   0000                   add     [eax], al

005D8D89   0003                   add     [ebx], al
005D8D8B   000F                   add     [edi], cl
005D8D8D   63645061               arpl    [eax+edx*2+$61], sp
005D8D91   726D                   jb      005D8E00
005D8D93   47                     inc     edi
005D8D94   54                     push    esp
005D8D95   43                     inc     ebx
005D8D96   6F                     outsd
005D8D97   6450                   push    eax
005D8D99   726F                   jb      005D8E0A
005D8D9B   648800                 mov     fs:[eax], al
005D8D9E   0000                   add     [eax], al

005D8DA0   0300                   add     eax, [eax]
005D8DA2   0F63645061             packusdw MM4, [eax+edx*2+$61]
005D8DA7   726D                   jb      005D8E16
005D8DA9   47                     inc     edi
005D8DAA   54                     push    esp
005D8DAB   55                     push    ebp
005D8DAC   6E                     outsb
005D8DAD   69644D65648C0000       imul    esp, [ebp+ecx*2+$65], $00008C64
005D8DB5   0003                   add     [ebx], al
005D8DB7   0012                   add     [edx], dl
005D8DB9   63645061               arpl    [eax+edx*2+$61], sp
005D8DBD   726D                   jb      005D8E2C
005D8DBF   47                     inc     edi
005D8DC0   54                     push    esp
005D8DC1   51                     push    ecx
005D8DC2   7561                   jnz     005D8E25
005D8DC4   6E                     outsb
005D8DC5   7469                   jz      005D8E30
005D8DC7   6461                   popa
005D8DC9   646590                 nop
005D8DCC   0000                   add     [eax], al

005D8DCE   0003                   add     [ebx], al
005D8DD0   000F                   add     [edi], cl
005D8DD2   63645061               arpl    [eax+edx*2+$61], sp
005D8DD6   726D                   jb      005D8E45
005D8DD8   47                     inc     edi
005D8DD9   54                     push    esp
005D8DDA   56                     push    esi
005D8DDB   6C                     insb
005D8DDC   7255                   jb      005D8E33
005D8DDE   6E                     outsb
005D8DDF   6974940000000300       imul    esi, [esp+edx*4+$00], $00030000
005D8DE7   106364                 adc     [ebx+$64], ah
005D8DEA   50                     push    eax
005D8DEB   61                     popa
005D8DEC   726D                   jb      005D8E5B
005D8DEE   47                     inc     edi
005D8DEF   54                     push    esp
005D8DF0   56                     push    esi
005D8DF1   6C                     insb
005D8DF2   7254                   jb      005D8E48
005D8DF4   6F                     outsd
005D8DF5   7461                   jz      005D8E58
005D8DF7   6C                     insb
005D8DF8   98                     cwde 
005D8DF9   0000                   add     [eax], al

005D8DFB   0003                   add     [ebx], al
005D8DFD   0011                   add     [ecx], dl
005D8DFF   63645061               arpl    [eax+edx*2+$61], sp
005D8E03   726D                   jb      005D8E72
005D8E05   47                     inc     edi
005D8E06   54                     push    esp
005D8E07   44                     inc     esp
005D8E08   657363                 jnb     005D8E6E
005D8E0B   7269                   jb      005D8E76
005D8E0D   63616F                 arpl    [ecx+$6F], sp
005D8E10   9C                     pushf   
005D8E11   0000                   add     [eax], al

005D8E13   0003                   add     [ebx], al
005D8E15   000E                   add     [esi], cl
005D8E17   63645061               arpl    [eax+edx*2+$61], sp
005D8E1B   726D                   jb      005D8E8A
005D8E1D   47                     inc     edi
005D8E1E   54                     push    esp
005D8E1F   50                     push    eax
005D8E20   61                     popa
005D8E21   67746F                 jz      005D8E93
005D8E24   73A0                   jnb     005D8DC6
005D8E26   0000                   add     [eax], al

005D8E28   000500146364           add     [$64631400], al
005D8E2E   50                     push    eax
005D8E2F   61                     popa
005D8E30   726D                   jb      005D8E9F
005D8E32   47                     inc     edi
005D8E33   54                     push    esp
005D8E34   54                     push    esp
005D8E35   6F                     outsd
005D8E36   7461                   jz      005D8E99
005D8E38   6C                     insb
005D8E39   697A6151746465         imul    edi, [edx+$61], $65647451
005D8E40   A4                     movsb
005D8E41   0000                   add     [eax], al

005D8E43   000500176364           add     [$64631700], al
005D8E49   50                     push    eax
005D8E4A   61                     popa
005D8E4B   726D                   jb      005D8EBA
005D8E4D   47                     inc     edi
005D8E4E   54                     push    esp
005D8E4F   45                     inc     ebp
005D8E50   7363                   jnb     005D8EB5
005D8E52   6F                     outsd
005D8E53   6E                     outsb
005D8E54   646546                 inc     esi
005D8E57   6F                     outsd
005D8E58   726D                   jb      005D8EC7
005D8E5A   50                     push    eax
005D8E5B   67746F                 jz      005D8ECD
005D8E5E   A800                   test    al, $00
005D8E60   0000                   add     [eax], al

005D8E62   06                     push    es
005D8E63   0011                   add     [ecx], dl
005D8E65   63645061               arpl    [eax+edx*2+$61], sp
005D8E69   726D                   jb      005D8ED8
005D8E6B   47                     inc     edi
005D8E6C   54                     push    esp
005D8E6D   43                     inc     ebx
005D8E6E   61                     popa
005D8E6F   626563                 bound   esp, qword ptr [ebp+$63]
005D8E72   61                     popa
005D8E73   6C                     insb
005D8E74   686FAC0000             push    $0000AC6F
005D8E79   0006                   add     [esi], al
005D8E7B   000E                   add     [esi], cl
005D8E7D   63645061               arpl    [eax+edx*2+$61], sp
005D8E81   726D                   jb      005D8EF0
005D8E83   47                     inc     edi
005D8E84   54                     push    esp
005D8E85   52                     push    edx
005D8E86   6F                     outsd
005D8E87   6461                   popa
005D8E89   7065                   jo      005D8EF0
005D8E8B   B000                   mov     al, $00
005D8E8D   0000                   add     [eax], al

005D8E8F   0300                   add     eax, [eax]
005D8E91   1463                   adc     al, $63
005D8E93   6450                   push    eax
005D8E95   61                     popa
005D8E96   726D                   jb      005D8F05
005D8E98   47                     inc     edi
005D8E99   54                     push    esp
005D8E9A   656D                   insd
005D8E9C   706F                   jo      005D8F0D
005D8E9E   41                     inc     ecx
005D8E9F   7475                   jz      005D8F16
005D8EA1   61                     popa
005D8EA2   6C                     insb
005D8EA3   697A61B4000000         imul    edi, [edx+$61], $000000B4
005D8EAA   0300                   add     eax, [eax]
005D8EAC   126364                 adc     ah, byte ptr [ebx+$64]
005D8EAF   50                     push    eax
005D8EB0   61                     popa
005D8EB1   726D                   jb      005D8F20
005D8EB3   47                     inc     edi
005D8EB4   54                     push    esp
005D8EB5   656D                   insd
005D8EB7   706F                   jo      005D8F28
005D8EB9   41                     inc     ecx
005D8EBA   6C                     insb
005D8EBB   657274                 jb      005D8F32
005D8EBE   61                     popa
005D8EBF   B800000007             mov     eax, $07000000
005D8EC4   0011                   add     [ecx], dl
005D8EC6   63645061               arpl    [eax+edx*2+$61], sp
005D8ECA   726D                   jb      005D8F39
005D8ECC   47                     inc     edi
005D8ECD   49                     dec     ecx
005D8ECE   6D                     insd
005D8ECF   7072                   jo      005D8F43
005D8ED1   657373                 jnb     005D8F47
005D8ED4   6F                     outsd
005D8ED5   7261                   jb      005D8F38
005D8ED7   BC00000005             mov     esp, $05000000
005D8EDC   0013                   add     [ebx], dl
005D8EDE   63645061               arpl    [eax+edx*2+$61], sp
005D8EE2   726D                   jb      005D8F51
005D8EE4   47                     inc     edi
005D8EE5   55                     push    ebp
005D8EE6   7361                   jnb     005D8F49
005D8EE8   43                     inc     ebx
005D8EE9   6F                     outsd
005D8EEA   6442                   inc     edx
005D8EEC   61                     popa
005D8EED   7272                   jb      005D8F61
005D8EEF   61                     popa
005D8EF0   73C0                   jnb     005D8EB2
005D8EF2   0000                   add     [eax], al

005D8EF4   0002                   add     [edx], al
005D8EF6   0007                   add     [edi], al
005D8EF8   63644375               arpl    [ebx+eax*2+$75], sp
005D8EFC   706F                   jo      005D8F6D
005D8EFE   6D                     insd
005D8EFF   C400                   les     eax, [eax]
005D8F01   0000                   add     [eax], al

005D8F03   0100                   add     [eax], eax
005D8F05   07                     pop     es
005D8F06   44                     inc     esp
005D8F07   7343                   jnb     005D8F4C
005D8F09   7570                   jnz     005D8F7B
005D8F0B   6F                     outsd
005D8F0C   6D                     insd
005D8F0D   C800                   enter   , $00
005D8F0F   0000                   add     [eax], al

005D8F11   0300                   add     eax, [eax]
005D8F13   0B6364                 or      esp, [ebx+$64]
005D8F16   43                     inc     ebx
005D8F17   7570                   jnz     005D8F89
005D8F19   6F                     outsd
005D8F1A   6D                     insd
005D8F1B   49                     dec     ecx
005D8F1C   7465                   jz      005D8F83
005D8F1E   6D                     insd
005D8F1F   CC                     int     3
005D8F20   0000                   add     [eax], al

005D8F22   0007                   add     [edi], al
005D8F24   0010                   add     [eax], dl
005D8F26   63644375               arpl    [ebx+eax*2+$75], sp
005D8F2A   706F                   jo      005D8F9B
005D8F2C   6D                     insd
005D8F2D   44                     inc     esp
005D8F2E   657363                 jnb     005D8F94
005D8F31   7269                   jb      005D8F9C
005D8F33   63616F                 arpl    [ecx+$6F], sp
005D8F36   D000                   rol     byte ptr [eax], 1
005D8F38   0000                   add     [eax], al

005D8F3A   0500116364             add     eax, +$64631100
005D8F3F   50                     push    eax
005D8F40   61                     popa
005D8F41   726D                   jb      005D8FB0
005D8F43   47                     inc     edi
005D8F44   55                     push    ebp
005D8F45   7361                   jnb     005D8FA8
005D8F47   56                     push    esi
005D8F48   6F                     outsd
005D8F49   6C                     insb
005D8F4A   756D                   jnz     005D8FB9
005D8F4C   6573D4                 jnb     005D8F23
005D8F4F   0000                   add     [eax], al

005D8F51   0007                   add     [edi], al
005D8F53   000B                   add     [ebx], cl
005D8F55   63644375               arpl    [ebx+eax*2+$75], sp
005D8F59   706F                   jo      005D8FCA
005D8F5B   6D                     insd
005D8F5C   54                     push    esp
005D8F5D   69706FD8000000         imul    esi, [eax+$6F], $000000D8
005D8F64   07                     pop     es
005D8F65   000D63644375           add     [$75436463], cl
005D8F6B   706F                   jo      005D8FDC
005D8F6D   6D                     insd
005D8F6E   43                     inc     ebx
005D8F6F   61                     popa
005D8F70   7274                   jb      005D8FE6
005D8F72   61                     popa
005D8F73   6F                     outsd
005D8F74   DC00                   fadd    qword ptr [eax]
005D8F76   0000                   add     [eax], al

005D8F78   0500116364             add     eax, +$64631100
005D8F7D   50                     push    eax
005D8F7E   61                     popa
005D8F7F   726D                   jb      005D8FEE
005D8F81   47                     inc     edi
005D8F82   4D                     dec     ebp
005D8F83   6F                     outsd
005D8F84   646F                   outsd
005D8F86   52                     push    edx
005D8F87   61                     popa
005D8F88   7069                   jo      005D8FF3
005D8F8A   646F                   outsd
005D8F8C   E000                   loopn   +$00
005D8F8E   0000                   add     [eax], al

005D8F90   07                     pop     es
005D8F91   000E                   add     [esi], cl
005D8F93   63644375               arpl    [ebx+eax*2+$75], sp
005D8F97   706F                   jo      005D9008
005D8F99   6D                     insd
005D8F9A   43                     inc     ebx
005D8F9B   6763436C               arpl    [bp+di+$6C], ax
005D8F9F   6965E400000003         imul    esp, [ebp-$1C], $03000000
005D8FA6   000F                   add     [edi], cl
005D8FA8   63644375               arpl    [ebx+eax*2+$75], sp
005D8FAC   706F                   jo      005D901D
005D8FAE   6D                     insd
005D8FAF   4E                     dec     esi
005D8FB0   756D                   jnz     005D901F
005D8FB2   43                     inc     ebx
005D8FB3   7570                   jnz     005D9025
005D8FB5   6F                     outsd
005D8FB6   6D                     insd
005D8FB7   E800000007             call    075D8FBC
005D8FBC   000E                   add     [esi], cl
005D8FBE   63644375               arpl    [ebx+eax*2+$75], sp
005D8FC2   706F                   jo      005D9033
005D8FC4   6D                     insd
005D8FC5   43                     inc     ebx
005D8FC6   6F                     outsd
005D8FC7   6450                   push    eax
005D8FC9   726F                   jb      005D903A
005D8FCB   64EC                   in      al, dx
005D8FCD   0000                   add     [eax], al

005D8FCF   0007                   add     [edi], al
005D8FD1   000F                   add     [edi], cl
005D8FD3   63644375               arpl    [ebx+eax*2+$75], sp
005D8FD7   706F                   jo      005D9048
005D8FD9   6D                     insd
005D8FDA   43                     inc     ebx
005D8FDB   6F                     outsd
005D8FDC   6442                   inc     edx
005D8FDE   61                     popa
005D8FDF   7272                   jb      005D9053
005D8FE1   61                     popa
005D8FE2   F0                     lock
005D8FE3   0000                   add     [eax], al

005D8FE5   0007                   add     [edi], al
005D8FE7   0010                   add     [eax], dl
005D8FE9   63644375               arpl    [ebx+eax*2+$75], sp
005D8FED   706F                   jo      005D905E
005D8FEF   6D                     insd
005D8FF0   44                     inc     esp
005D8FF1   657363                 jnb     005D9057
005D8FF4   7252                   jb      005D9048
005D8FF6   657375                 jnb     005D906E
005D8FF9   F4                     hlt
005D8FFA   0000                   add     [eax], al

005D8FFC   0008                   add     [eax], cl
005D8FFE   000E                   add     [esi], cl
005D9000   63644375               arpl    [ebx+eax*2+$75], sp
005D9004   706F                   jo      005D9075
005D9006   6D                     insd
005D9007   51                     push    ecx
005D9008   7464                   jz      005D906E
005D900A   4C                     dec     esp
005D900B   63746FF8               arpl    [edi+ebp*2-$08], si
005D900F   0000                   add     [eax], al

005D9011   0008                   add     [eax], cl
005D9013   000E                   add     [esi], cl
005D9015   63644375               arpl    [ebx+eax*2+$75], sp
005D9019   706F                   jo      005D908A
005D901B   6D                     insd
005D901C   56                     push    esi
005D901D   6C                     insb
005D901E   7255                   jb      005D9075
005D9020   6E                     outsb
005D9021   6974FC0000000700       imul    esi, [esp+edi*8+$00], $00070000
005D9029   0F63644375             packusdw MM4, [ebx+eax*2+$75]
005D902E   706F                   jo      005D909F
005D9030   6D                     insd
005D9031   54                     push    esp
005D9032   69706F5067746F         imul    esi, [eax+$6F], $6F746750
005D9039   0001                   add     [ecx], al
005D903B   0000                   add     [eax], al

005D903D   0300                   add     eax, [eax]
005D903F   0F63644375             packusdw MM4, [ebx+eax*2+$75]
005D9044   706F                   jo      005D90B5
005D9046   6D                     insd
005D9047   4E                     dec     esi
005D9048   756D                   jnz     005D90B7
005D904A   42                     inc     edx
005D904B   61                     popa
005D904C   6E                     outsb
005D904D   636F04                 arpl    [edi+$04], bp
005D9050   0100                   add     [eax], eax
005D9052   0003                   add     [ebx], al
005D9054   0011                   add     [ecx], dl
005D9056   63644375               arpl    [ebx+eax*2+$75], sp
005D905A   706F                   jo      005D90CB
005D905C   6D                     insd
005D905D   4E                     dec     esi
005D905E   756D                   jnz     005D90CD
005D9060   41                     inc     ecx
005D9061   67656E                 outsb
005D9064   636961                 arpl    [ecx+$61], bp
005D9067   0801                   or      [ecx], al
005D9069   0000                   add     [eax], al

005D906B   0300                   add     eax, [eax]
005D906D   106364                 adc     [ebx+$64], ah
005D9070   43                     inc     ebx
005D9071   7570                   jnz     005D90E3
005D9073   6F                     outsd
005D9074   6D                     insd
005D9075   4E                     dec     esi
005D9076   756D                   jnz     005D90E5
005D9078   43                     inc     ebx
005D9079   6865717565             push    $65757165
005D907E   0C01                   or      al, $01
005D9080   0000                   add     [eax], al

005D9082   07                     pop     es
005D9083   0010                   add     [eax], dl
005D9085   63644375               arpl    [ebx+eax*2+$75], sp
005D9089   706F                   jo      005D90FA
005D908B   6D                     insd
005D908C   43                     inc     ebx
005D908D   6F                     outsd
005D908E   6E                     outsb
005D908F   7461                   jz      005D90F2
005D9091   43                     inc     ebx
005D9092   6F                     outsd
005D9093   7272                   jb      005D9107
005D9095   1001                   adc     [ecx], al
005D9097   0000                   add     [eax], al

005D9099   07                     pop     es
005D909A   000F                   add     [edi], cl
005D909C   63644375               arpl    [ebx+eax*2+$75], sp
005D90A0   706F                   jo      005D9111
005D90A2   6D                     insd
005D90A3   45                     inc     ebp
005D90A4   6D                     insd
005D90A5   6974656E74651401       imul    esi, [ebp+$6E], $01146574
005D90AD   0000                   add     [eax], al

005D90AF   07                     pop     es
005D90B0   000E                   add     [esi], cl
005D90B2   63644375               arpl    [ebx+eax*2+$75], sp
005D90B6   706F                   jo      005D9127
005D90B8   6D                     insd
005D90B9   43                     inc     ebx
005D90BA   6F                     outsd
005D90BB   6443                   inc     ebx
005D90BD   61                     popa
005D90BE   7264                   jb      005D9124
005D90C0   1801                   sbb     [ecx], al
005D90C2   0000                   add     [eax], al

005D90C4   07                     pop     es
005D90C5   001463                 add     [ebx], dl
005D90C8   6443                   inc     ebx
005D90CA   7570                   jnz     005D913C
005D90CC   6F                     outsd
005D90CD   6D                     insd
005D90CE   53                     push    ebx
005D90CF   656E                   outsb
005D90D1   6861417574             push    $74754161
005D90D6   6F                     outsd
005D90D7   7269                   jb      005D9142
005D90D9   7A61                   jp      005D913C
005D90DB   1C01                   sbb     al, $01
005D90DD   0000                   add     [eax], al

005D90DF   07                     pop     es
005D90E0   000B                   add     [ebx], cl
005D90E2   63644375               arpl    [ebx+eax*2+$75], sp
005D90E6   706F                   jo      005D9157
005D90E8   6D                     insd
005D90E9   54                     push    esp
005D90EA   7269                   jb      005D9155
005D90EC   6220                   bound   esp, qword ptr [eax]
005D90EE   0100                   add     [eax], eax
005D90F0   0007                   add     [edi], al
005D90F2   000E                   add     [esi], cl
005D90F4   63644375               arpl    [ebx+eax*2+$75], sp
005D90F8   706F                   jo      005D9169
005D90FA   6D                     insd
005D90FB   55                     push    ebp
005D90FC   6E                     outsb
005D90FD   69644D6564240100       imul    esp, [ebp+ecx*2+$65], $00012464
005D9105   0008                   add     [eax], cl
005D9107   0012                   add     [edx], dl
005D9109   63644375               arpl    [ebx+eax*2+$75], sp
005D910D   706F                   jo      005D917E
005D910F   6D                     insd
005D9110   51                     push    ecx
005D9111   7464                   jz      005D9177
005D9113   6555                   push    ebp
005D9115   6E                     outsb
005D9116   69644D6564280100       imul    esp, [ebp+ecx*2+$65], $00012864
005D911E   0007                   add     [edi], al
005D9120   0011                   add     [ecx], dl
005D9122   63644375               arpl    [ebx+eax*2+$75], sp
005D9126   706F                   jo      005D9197
005D9128   6D                     insd
005D9129   43                     inc     ebx
005D912A   6F                     outsd
005D912B   6D                     insd
005D912C   706C                   jo      005D919A
005D912E   45                     inc     ebp
005D912F   6D                     insd
005D9130   62616C                 bound   esp, qword ptr [ecx+$6C]
005D9133   2C01                   sub     al, $01
005D9135   0000                   add     [eax], al

005D9137   0800                   or      [eax], al
005D9139   0F63644375             packusdw MM4, [ebx+eax*2+$75]
005D913E   706F                   jo      005D91AF
005D9140   6D                     insd
005D9141   56                     push    esi
005D9142   6C                     insb
005D9143   7243                   jb      005D9188
005D9145   7573                   jnz     005D91BA
005D9147   746F                   jz      005D91B8
005D9149   3001                   xor     [ecx], al
005D914B   0000                   add     [eax], al

005D914D   0800                   or      [eax], al
005D914F   106364                 adc     [ebx+$64], ah
005D9152   43                     inc     ebx
005D9153   7570                   jnz     005D91C5
005D9155   6F                     outsd
005D9156   6D                     insd
005D9157   56                     push    esi
005D9158   6C                     insb
005D9159   7254                   jb      005D91AF
005D915B   61                     popa
005D915C   62656C                 bound   esp, qword ptr [ebp+$6C]
005D915F   61                     popa
005D9160   3401                   xor     al, $01
005D9162   0000                   add     [eax], al

005D9164   07                     pop     es
005D9165   000E                   add     [esi], cl
005D9167   63644375               arpl    [ebx+eax*2+$75], sp
005D916B   706F                   jo      005D91DC
005D916D   6D                     insd
005D916E   43                     inc     ebx
005D916F   6F                     outsd
005D9170   6446                   inc     esi
005D9172   756E                   jnz     005D91E2
005D9174   6338                   arpl    [eax], di
005D9176   0100                   add     [eax], eax
005D9178   0007                   add     [edi], al
005D917A   000E                   add     [esi], cl
005D917C   63644375               arpl    [ebx+eax*2+$75], sp
005D9180   706F                   jo      005D91F1
005D9182   6D                     insd
005D9183   4E                     dec     esi
005D9184   61                     popa
005D9185   744F                   jz      005D91D6
005D9187   7065                   jo      005D91EE
005D9189   723C                   jb      005D91C7
005D918B   0100                   add     [eax], eax
005D918D   0007                   add     [edi], al
005D918F   000F                   add     [edi], cl
005D9191   63644375               arpl    [ebx+eax*2+$75], sp
005D9195   706F                   jo      005D9206
005D9197   6D                     insd
005D9198   43                     inc     ebx
005D9199   6F                     outsd
005D919A   6442                   inc     edx
005D919C   61                     popa
005D919D   6E                     outsb
005D919E   636F40                 arpl    [edi+$40], bp
005D91A1   0100                   add     [eax], eax
005D91A3   0007                   add     [edi], al
005D91A5   000E                   add     [esi], cl
005D91A7   63644375               arpl    [ebx+eax*2+$75], sp
005D91AB   706F                   jo      005D921C
005D91AD   6D                     insd
005D91AE   53                     push    ebx
005D91AF   6974547269624401       imul    esi, [esp+edx*2+$72], $01446269
005D91B7   0000                   add     [eax], al

005D91B9   07                     pop     es
005D91BA   0010                   add     [eax], dl
005D91BC   63644375               arpl    [ebx+eax*2+$75], sp
005D91C0   706F                   jo      005D9231
005D91C2   6D                     insd
005D91C3   43                     inc     ebx
005D91C4   6C                     insb
005D91C5   61                     popa
005D91C6   7373                   jnb     005D923B
005D91C8   46                     inc     esi
005D91C9   69736348010000         imul    esi, [ebx+$63], $00000148
005D91D0   07                     pop     es
005D91D1   000D63644375           add     [$75436463], cl
005D91D7   706F                   jo      005D9248
005D91D9   6D                     insd
005D91DA   53                     push    ebx
005D91DB   7461                   jz      005D923E
005D91DD   7475                   jz      005D9254
005D91DF   734C                   jnb     005D922D
005D91E1   0100                   add     [eax], eax
005D91E3   0002                   add     [edx], al
005D91E5   0008                   add     [eax], cl
005D91E7   63645061               arpl    [eax+edx*2+$61], sp
005D91EB   67746F                 jz      005D925D
005D91EE   7350                   jnb     005D9240
005D91F0   0100                   add     [eax], eax
005D91F2   0003                   add     [ebx], al
005D91F4   000C63                 add     [ebx], cl
005D91F7   6450                   push    eax
005D91F9   61                     popa
005D91FA   67746F                 jz      005D926C
005D91FD   7349                   jnb     005D9248
005D91FF   7465                   jz      005D9266
005D9201   6D                     insd
005D9202   54                     push    esp
005D9203   0100                   add     [eax], eax
005D9205   0007                   add     [edi], al
005D9207   0011                   add     [ecx], dl
005D9209   63645061               arpl    [eax+edx*2+$61], sp
005D920D   67746F                 jz      005D927F
005D9210   7354                   jnb     005D9266
005D9212   69706F50616774         imul    esi, [eax+$6F], $74676150
005D9219   6F                     outsd
005D921A   58                     pop     eax
005D921B   0100                   add     [eax], eax
005D921D   0007                   add     [edi], al
005D921F   0011                   add     [ecx], dl
005D9221   63645061               arpl    [eax+edx*2+$61], sp
005D9225   67746F                 jz      005D9297
005D9228   7344                   jnb     005D926E
005D922A   657363                 jnb     005D9290
005D922D   7269                   jb      005D9298
005D922F   63616F                 arpl    [ecx+$6F], sp
005D9232   5C                     pop     esp
005D9233   0100                   add     [eax], eax
005D9235   0008                   add     [eax], cl
005D9237   000D63645061           add     [$61506463], cl
005D923D   67746F                 jz      005D92AF
005D9240   7356                   jnb     005D9298
005D9242   61                     popa
005D9243   6C                     insb
005D9244   6F                     outsd
005D9245   7260                   jb      005D92A7
005D9247   0100                   add     [eax], eax
005D9249   0001                   add     [ecx], al
005D924B   0008                   add     [eax], cl
005D924D   647350                 jnb     005D92A0
005D9250   61                     popa
005D9251   67746F                 jz      005D92C3
005D9254   7364                   jnb     005D92BA
005D9256   0100                   add     [eax], eax
005D9258   000400                 add     [eax+eax], al
005D925B   0F63644375             packusdw MM4, [ebx+eax*2+$75]
005D9260   706F                   jo      005D92D1
005D9262   6D                     insd
005D9263   44                     inc     esp
005D9264   7456                   jz      005D92BC
005D9266   656E                   outsb
005D9268   63746F68               arpl    [edi+ebp*2+$68], si
005D926C   0100                   add     [eax], eax
005D926E   0003                   add     [ebx], al
005D9270   0010                   add     [eax], dl
005D9272   63645061               arpl    [eax+edx*2+$61], sp
005D9276   67746F                 jz      005D92E8
005D9279   734E                   jnb     005D92C9
005D927B   756D                   jnz     005D92EA
005D927D   42                     inc     edx
005D927E   61                     popa
005D927F   6E                     outsb
005D9280   636F6C                 arpl    [edi+$6C], bp
005D9283   0100                   add     [eax], eax
005D9285   0003                   add     [ebx], al
005D9287   0012                   add     [edx], dl
005D9289   63645061               arpl    [eax+edx*2+$61], sp
005D928D   67746F                 jz      005D92FF
005D9290   734E                   jnb     005D92E0
005D9292   756D                   jnz     005D9301
005D9294   41                     inc     ecx
005D9295   67656E                 outsb
005D9298   636961                 arpl    [ecx+$61], bp
005D929B   7001                   jo      005D929E
005D929D   0000                   add     [eax], al

005D929F   0300                   add     eax, [eax]
005D92A1   116364                 adc     [ebx+$64], esp
005D92A4   50                     push    eax
005D92A5   61                     popa
005D92A6   67746F                 jz      005D9318
005D92A9   734E                   jnb     005D92F9
005D92AB   756D                   jnz     005D931A
005D92AD   43                     inc     ebx
005D92AE   6865717565             push    $65757165
005D92B3   7401                   jz      005D92B6
005D92B5   0000                   add     [eax], al

005D92B7   07                     pop     es
005D92B8   0011                   add     [ecx], dl
005D92BA   63645061               arpl    [eax+edx*2+$61], sp
005D92BE   67746F                 jz      005D9330
005D92C1   7343                   jnb     005D9306
005D92C3   6F                     outsd
005D92C4   6E                     outsb
005D92C5   7461                   jz      005D9328
005D92C7   43                     inc     ebx
005D92C8   6F                     outsd
005D92C9   7272                   jb      005D933D
005D92CB   7801                   js      005D92CE
005D92CD   0000                   add     [eax], al

005D92CF   0400                   add     al, +$00
005D92D1   106364                 adc     [ebx+$64], ah
005D92D4   50                     push    eax
005D92D5   61                     popa
005D92D6   67746F                 jz      005D9348
005D92D9   7344                   jnb     005D931F
005D92DB   7456                   jz      005D9333
005D92DD   656E                   outsb
005D92DF   63746F7C               arpl    [edi+ebp*2+$7C], si
005D92E3   0100                   add     [eax], eax
005D92E5   0007                   add     [edi], al
005D92E7   0010                   add     [eax], dl
005D92E9   63645061               arpl    [eax+edx*2+$61], sp
005D92ED   67746F                 jz      005D935F
005D92F0   7345                   jnb     005D9337
005D92F2   6D                     insd
005D92F3   6974656E74658001       imul    esi, [ebp+$6E], $01806574
005D92FB   0000                   add     [eax], al

005D92FD   07                     pop     es
005D92FE   000F                   add     [edi], cl
005D9300   63645061               arpl    [eax+edx*2+$61], sp
005D9304   67746F                 jz      005D9376
005D9307   7343                   jnb     005D934C
005D9309   6F                     outsd
005D930A   6443                   inc     ebx
005D930C   61                     popa
005D930D   7264                   jb      005D9373
005D930F   8401                   test    [ecx], al
005D9311   0000                   add     [eax], al

005D9313   07                     pop     es
005D9314   000E                   add     [esi], cl
005D9316   63645061               arpl    [eax+edx*2+$61], sp
005D931A   67746F                 jz      005D938C
005D931D   7343                   jnb     005D9362
005D931F   61                     popa
005D9320   7274                   jb      005D9396
005D9322   61                     popa
005D9323   6F                     outsd
005D9324   8801                   mov     [ecx], al
005D9326   0000                   add     [eax], al

005D9328   07                     pop     es
005D9329   001563645061           add     [$61506463], dl
005D932F   67746F                 jz      005D93A1
005D9332   7353                   jnb     005D9387
005D9334   656E                   outsb
005D9336   6861417574             push    $74754161
005D933B   6F                     outsd
005D933C   7269                   jb      005D93A7
005D933E   7A61                   jp      005D93A1
005D9340   8C01                   mov     word ptr [ecx], es
005D9342   0000                   add     [eax], al

005D9344   07                     pop     es
005D9345   000E                   add     [esi], cl
005D9347   63645061               arpl    [eax+edx*2+$61], sp
005D934B   726D                   jb      005D93BA
005D934D   47                     inc     edi
005D934E   49                     dec     ecx
005D934F   6D                     insd
005D9350   7072                   jo      005D93C4
005D9352   57                     push    edi
005D9353   696E9001000008         imul    ebp, [esi-$70], $08000001
005D935A   000E                   add     [esi], cl
005D935C   63645061               arpl    [eax+edx*2+$61], sp
005D9360   726D                   jb      005D93CF
005D9362   47                     inc     edi
005D9363   50                     push    eax
005D9364   7263                   jb      005D93C9
005D9366   4D                     dec     ebp
005D9367   657361                 jnb     005D93CB
005D936A   94                     xchg    eax, esp
005D936B   0100                   add     [eax], eax
005D936D   0005000F6364           add     [$64630F00], al
005D9373   50                     push    eax
005D9374   61                     popa
005D9375   726D                   jb      005D93E4
005D9377   47                     inc     edi
005D9378   41                     inc     ecx
005D9379   6469634D65736198       imul    esp, fs:[ebx+$4D], $98617365
005D9381   0100                   add     [eax], eax
005D9383   0007                   add     [edi], al
005D9385   0012                   add     [edx], dl
005D9387   63644375               arpl    [ebx+eax*2+$75], sp
005D938B   706F                   jo      005D93FC
005D938D   6D                     insd
005D938E   43                     inc     ebx
005D938F   6F                     outsd
005D9390   6453                   push    ebx
005D9392   7562                   jnz     005D93F6
005D9394   4C                     dec     esp
005D9395   6F                     outsd
005D9396   63616C                 arpl    [ecx+$6C], sp
005D9399   9C                     pushf   
005D939A   0100                   add     [eax], eax
005D939C   0003                   add     [ebx], al
005D939E   000C63                 add     [ebx], cl
005D93A1   6443                   inc     ebx
005D93A3   7570                   jnz     005D9415
005D93A5   6F                     outsd
005D93A6   6D                     insd
005D93A7   4C                     dec     esp
005D93A8   696E6861A00100         imul    ebp, [esi+$68], $0001A061
005D93AF   0003                   add     [ebx], al
005D93B1   000D63644375           add     [$75436463], cl
005D93B7   706F                   jo      005D9428
005D93B9   6D                     insd
005D93BA   43                     inc     ebx
005D93BB   6F                     outsd
005D93BC   6C                     insb
005D93BD   756E                   jnz     005D942D
005D93BF   61                     popa
005D93C0   A4                     movsb
005D93C1   0100                   add     [eax], eax
005D93C3   0007                   add     [edi], al
005D93C5   0010                   add     [eax], dl
005D93C7   63644375               arpl    [ebx+eax*2+$75], sp
005D93CB   706F                   jo      005D943C
005D93CD   6D                     insd
005D93CE   48                     dec     eax
005D93CF   6973746F726963         imul    esi, [ebx+$74], $6369726F
005D93D6   6F                     outsd
005D93D7   A801                   test    al, $01
005D93D9   0000                   add     [eax], al

005D93DB   0500116364             add     eax, +$64631100
005D93E0   50                     push    eax
005D93E1   61                     popa
005D93E2   726D                   jb      005D9451
005D93E4   47                     inc     edi
005D93E5   4D                     dec     ebp
005D93E6   6F                     outsd
005D93E7   7645                   jbe     005D942E
005D93E9   7374                   jnb     005D945F
005D93EB   6F                     outsd
005D93EC   7175                   jno     005D9463
005D93EE   65AC                   lodsb
005D93F0   0100                   add     [eax], eax
005D93F2   000500126364           add     [$64631200], al
005D93F8   50                     push    eax
005D93F9   61                     popa
005D93FA   726D                   jb      005D9469
005D93FC   47                     inc     edi
005D93FD   47                     inc     edi
005D93FE   7261                   jb      005D9461
005D9400   7661                   jbe     005D9463
005D9402   56                     push    esi
005D9403   656E                   outsb
005D9405   6461                   popa
005D9407   73B0                   jnb     005D93B9
005D9409   0100                   add     [eax], eax
005D940B   0007                   add     [edi], al
005D940D   000D63645061           add     [$61506463], cl
005D9413   726D                   jb      005D9482
005D9415   47                     inc     edi
005D9416   6D                     insd
005D9417   6F                     outsd
005D9418   64656C                 insb
005D941B   6F                     outsd
005D941C   B401                   mov     ah, $01
005D941E   0000                   add     [eax], al

005D9420   07                     pop     es
005D9421   000E                   add     [esi], cl
005D9423   63644375               arpl    [ebx+eax*2+$75], sp
005D9427   706F                   jo      005D9498
005D9429   6D                     insd
005D942A   43                     inc     ebx
005D942B   6F                     outsd
005D942C   6450                   push    eax
005D942E   67746F                 jz      005D94A0
005D9431   B801000007             mov     eax, $07000001
005D9436   000F                   add     [edi], cl
005D9438   63645061               arpl    [eax+edx*2+$61], sp
005D943C   67746F                 jz      005D94AE
005D943F   7343                   jnb     005D9484
005D9441   6F                     outsd
005D9442   6450                   push    eax
005D9444   67746F                 jz      005D94B6
005D9447   BC01000005             mov     esp, $05000001
005D944C   0011                   add     [ecx], dl
005D944E   63645061               arpl    [eax+edx*2+$61], sp
005D9452   726D                   jb      005D94C1
005D9454   47                     inc     edi
005D9455   55                     push    ebp
005D9456   7361                   jnb     005D94B9
005D9458   50                     push    eax
005D9459   7263                   jb      005D94BE
005D945B   44                     inc     esp
005D945C   657363                 jnb     005D94C2
005D945F   C00100                 rol     byte ptr [ecx], $00
005D9462   0007                   add     [edi], al
005D9464   000F                   add     [edi], cl
005D9466   63644375               arpl    [ebx+eax*2+$75], sp
005D946A   706F                   jo      005D94DB
005D946C   6D                     insd
005D946D   56                     push    esi
005D946E   6C                     insb
005D946F   7254                   jb      005D94C5
005D9471   6F                     outsd
005D9472   7461                   jz      005D94D5
005D9474   6C                     insb
005D9475   C401                   les     eax, [ecx]
005D9477   0000                   add     [eax], al

005D9479   0500116364             add     eax, +$64631100
005D947E   50                     push    eax
005D947F   61                     popa
005D9480   726D                   jb      005D94EF
005D9482   47                     inc     edi
005D9483   41                     inc     ecx
005D9484   636569                 arpl    [ebp+$69], sp
005D9487   7461                   jz      005D94EA
005D9489   5A                     pop     edx
005D948A   65726F                 jb      005D94FC
005D948D   C801                   enter   , $01
005D948F   0000                   add     [eax], al

005D9491   05000E6364             add     eax, +$64630E00
005D9496   50                     push    eax
005D9497   61                     popa
005D9498   726D                   jb      005D9507
005D949A   47                     inc     edi
005D949B   4E                     dec     esi
005D949C   46                     inc     esi
005D949D   50                     push    eax
005D949E   61                     popa
005D949F   67746F                 jz      005D9511
005D94A2   CC                     int     3
005D94A3   0100                   add     [eax], eax
005D94A5   0005000D6364           add     [$64630D00], al
005D94AB   50                     push    eax
005D94AC   61                     popa
005D94AD   726D                   jb      005D951C
005D94AF   47                     inc     edi
005D94B0   4E                     dec     esi
005D94B1   54                     push    esp
005D94B2   726F                   jb      005D9523
005D94B4   636FD0                 arpl    [edi-$30], bp
005D94B7   0100                   add     [eax], eax
005D94B9   000500136364           add     [$64631300], al
005D94BF   50                     push    eax
005D94C0   61                     popa
005D94C1   726D                   jb      005D9530
005D94C3   47                     inc     edi
005D94C4   50                     push    eax
005D94C5   65646556               push    esi
005D94C9   656E                   outsb
005D94CB   6465646F               outsd
005D94CF   72D4                   jb      005D94A5
005D94D1   0100                   add     [eax], eax
005D94D3   000400                 add     [eax+eax], al
005D94D6   0F63645061             packusdw MM4, [eax+edx*2+$61]
005D94DB   726D                   jb      005D954A
005D94DD   47                     inc     edi
005D94DE   44                     inc     esp
005D94DF   7446                   jz      005D9527
005D94E1   697363616CD801         imul    esi, [ebx+$63], $01D86C61
005D94E8   0000                   add     [eax], al

005D94EA   07                     pop     es
005D94EB   0010                   add     [eax], dl
005D94ED   63645061               arpl    [eax+edx*2+$61], sp
005D94F1   726D                   jb      005D9560
005D94F3   47                     inc     edi
005D94F4   53                     push    ebx
005D94F5   656E                   outsb
005D94F7   686143616E             push    $6E614361
005D94FC   63DC                   arpl    sp, bx
005D94FE   0100                   add     [eax], eax
005D9500   0008                   add     [eax], cl
005D9502   000E                   add     [esi], cl
005D9504   63644375               arpl    [ebx+eax*2+$75], sp
005D9508   706F                   jo      005D9579
005D950A   6D                     insd
005D950B   56                     push    esi
005D950C   6F                     outsd
005D950D   6C                     insb
005D950E   756D                   jnz     005D957D
005D9510   6573E0                 jnb     005D94F3
005D9513   0100                   add     [eax], eax
005D9515   000500106364           add     [$64631000], al
005D951B   50                     push    eax
005D951C   61                     popa
005D951D   726D                   jb      005D958C
005D951F   47                     inc     edi
005D9520   44                     inc     esp
005D9521   657363                 jnb     005D9587
005D9524   7252                   jb      005D9578
005D9526   657375                 jnb     005D959E
005D9529   E401                   in      al, $01
005D952B   0000                   add     [eax], al

005D952D   0500106364             add     eax, +$64631000
005D9532   50                     push    eax
005D9533   61                     popa
005D9534   726D                   jb      005D95A3
005D9536   47                     inc     edi
005D9537   4D                     dec     ebp
005D9538   7564                   jnz     005D959E
005D953A   61                     popa
005D953B   50                     push    eax
005D953C   7265                   jb      005D95A3
005D953E   636FE8                 arpl    [edi-$18], bp
005D9541   0100                   add     [eax], eax
005D9543   0003                   add     [ebx], al
005D9545   0012                   add     [edx], dl
005D9547   63645061               arpl    [eax+edx*2+$61], sp
005D954B   726D                   jb      005D95BA
005D954D   47                     inc     edi
005D954E   49                     dec     ecx
005D954F   6D                     insd
005D9550   7072                   jo      005D95C4
005D9552   44                     inc     esp
005D9553   656661                 popa
005D9556   756C                   jnz     005D95C4
005D9558   74EC                   jz      005D9546
005D955A   0100                   add     [eax], eax
005D955C   0007                   add     [edi], al
005D955E   0013                   add     [ebx], dl
005D9560   63645061               arpl    [eax+edx*2+$61], sp
005D9564   726D                   jb      005D95D3
005D9566   47                     inc     edi
005D9567   4C                     dec     esp
005D9568   6B496D70               imul    ecx, [ecx+$6D], $70
005D956C   44                     inc     esp
005D956D   656661                 popa
005D9570   756C                   jnz     005D95DE
005D9572   74F0                   jz      005D9564
005D9574   0100                   add     [eax], eax
005D9576   000500106364           add     [$64631000], al
005D957C   50                     push    eax
005D957D   61                     popa
005D957E   726D                   jb      005D95ED
005D9580   47                     inc     edi
005D9581   55                     push    ebp
005D9582   7361                   jnb     005D95E5
005D9584   47                     inc     edi
005D9585   61                     popa
005D9586   7665                   jbe     005D95ED
005D9588   7461                   jz      005D95EB
005D958A   F4                     hlt
005D958B   0100                   add     [eax], eax
005D958D   000500106364           add     [$64631000], al
005D9593   50                     push    eax
005D9594   61                     popa
005D9595   726D                   jb      005D9604
005D9597   47                     inc     edi
005D9598   41                     inc     ecx
005D9599   7564                   jnz     005D95FF
005D959B   697461476176F801       imul    esi, [ecx+$47], $01F87661
005D95A3   0000                   add     [eax], al

005D95A5   0300                   add     eax, [eax]
005D95A7   0E                     push    cs
005D95A8   63645061               arpl    [eax+edx*2+$61], sp
005D95AC   726D                   jb      005D961B
005D95AE   47                     inc     edi
005D95AF   6753                   push    ebx
005D95B1   657269                 jb      005D961D
005D95B4   61                     popa
005D95B5   6C                     insb
005D95B6   FC                     cld
005D95B7   0100                   add     [eax], eax
005D95B9   0007                   add     [edi], al
005D95BB   000E                   add     [esi], cl
005D95BD   63645061               arpl    [eax+edx*2+$61], sp
005D95C1   726D                   jb      005D9630
005D95C3   47                     inc     edi
005D95C4   6741                   inc     ecx
005D95C6   63696F                 arpl    [ecx+$6F], bp
005D95C9   6E                     outsb
005D95CA   61                     popa
005D95CB   0002                   add     [edx], al
005D95CD   0000                   add     [eax], al

005D95CF   0300                   add     eax, [eax]
005D95D1   0D63645061             or      eax, $61506463
005D95D6   726D                   jb      005D9645
005D95D8   47                     inc     edi
005D95D9   6754                   push    esp
005D95DB   656D                   insd
005D95DD   706F                   jo      005D964E
005D95DF   0402                   add     al, +$02
005D95E1   0000                   add     [eax], al

005D95E3   07                     pop     es
005D95E4   000F                   add     [edi], cl
005D95E6   63645061               arpl    [eax+edx*2+$61], sp
005D95EA   726D                   jb      005D9659
005D95EC   47                     inc     edi
005D95ED   6742                   inc     edx
005D95EF   61                     popa
005D95F0   745F                   jz      005D9651
005D95F2   49                     dec     ecx
005D95F3   6E                     outsb
005D95F4   690802000007           imul    ecx, [eax], $07000002
005D95FA   0010                   add     [eax], dl
005D95FC   63645061               arpl    [eax+edx*2+$61], sp
005D9600   726D                   jb      005D966F
005D9602   47                     inc     edi
005D9603   6742                   inc     edx
005D9605   61                     popa
005D9606   745F                   jz      005D9667
005D9608   41                     inc     ecx
005D9609   627265                 bound   esi, qword ptr [edx+$65]
005D960C   0C02                   or      al, $02
005D960E   0000                   add     [eax], al

005D9610   07                     pop     es
005D9611   000E                   add     [esi], cl
005D9613   63645061               arpl    [eax+edx*2+$61], sp
005D9617   726D                   jb      005D9686
005D9619   47                     inc     edi
005D961A   6744                   inc     esp
005D961C   69724261741002         imul    esi, [edx+$42], $02107461
005D9623   0000                   add     [eax], al

005D9625   07                     pop     es
005D9626   0011                   add     [ecx], dl
005D9628   63645061               arpl    [eax+edx*2+$61], sp
005D962C   726D                   jb      005D969B
005D962E   47                     inc     edi
005D962F   674D                   dec     ebp
005D9631   6F                     outsd
005D9632   6447                   inc     edi
005D9634   61                     popa
005D9635   7665                   jbe     005D969C
005D9637   7461                   jz      005D969A
005D9639   1402                   adc     al, $02
005D963B   0000                   add     [eax], al

005D963D   07                     pop     es
005D963E   0011                   add     [ecx], dl
005D9640   63645061               arpl    [eax+edx*2+$61], sp
005D9644   726D                   jb      005D96B3
005D9646   47                     inc     edi
005D9647   6749                   dec     ecx
005D9649   6D                     insd
005D964A   7047                   jo      005D9693
005D964C   61                     popa
005D964D   7665                   jbe     005D96B4
005D964F   7461                   jz      005D96B2
005D9651   1802                   sbb     [edx], al
005D9653   0000                   add     [eax], al

005D9655   0300                   add     eax, [eax]
005D9657   1463                   adc     al, $63
005D9659   6443                   inc     ebx
005D965B   7570                   jnz     005D96CD
005D965D   6F                     outsd
005D965E   6D                     insd
005D965F   43                     inc     ebx
005D9660   6F                     outsd
005D9661   6449                   dec     ecx
005D9663   6D                     insd
005D9664   7072                   jo      005D96D8
005D9666   657373                 jnb     005D96DC
005D9669   6F                     outsd
005D966A   7261                   jb      005D96CD
005D966C   1C02                   sbb     al, $02
005D966E   0000                   add     [eax], al

005D9670   0500186364             add     eax, +$64631800
005D9675   50                     push    eax
005D9676   61                     popa
005D9677   726D                   jb      005D96E6
005D9679   47                     inc     edi
005D967A   49                     dec     ecx
005D967B   6D                     insd
005D967C   7072                   jo      005D96F0
005D967E   696D654974656E         imul    ebp, [ebp+$65], $6E657449
005D9685   7346                   jnb     005D96CD
005D9687   696E616C200200         imul    ebp, [esi+$61], $0002206C
005D968E   000500116364           add     [$64631100], al
005D9694   43                     inc     ebx
005D9695   7570                   jnz     005D9707
005D9697   6F                     outsd
005D9698   6D                     insd
005D9699   4E                     dec     esi
005D969A   61                     popa
005D969B   6F                     outsd
005D969C   49                     dec     ecx
005D969D   6D                     insd
005D969E   7072                   jo      005D9712
005D96A0   696D6524020000         imul    ebp, [ebp+$65], $00000224
005D96A7   05000D6364             add     eax, +$64630D00
005D96AC   43                     inc     ebx
005D96AD   7570                   jnz     005D971F
005D96AF   6F                     outsd
005D96B0   6D                     insd
005D96B1   56                     push    esi
005D96B2   696167656D2802         imul    esp, [ecx+$67], $02286D65
005D96B9   0000                   add     [eax], al

005D96BB   0800                   or      [eax], al
005D96BD   0E                     push    cs
005D96BE   63644375               arpl    [ebx+eax*2+$75], sp
005D96C2   706F                   jo      005D9733
005D96C4   6D                     insd
005D96C5   50                     push    eax
005D96C6   7263                   jb      005D972B
005D96C8   44                     inc     esp
005D96C9   657363                 jnb     005D972F
005D96CC   2C02                   sub     al, $02
005D96CE   0000                   add     [eax], al

005D96D0   0800                   or      [eax], al
005D96D2   0E                     push    cs
005D96D3   63644375               arpl    [ebx+eax*2+$75], sp
005D96D7   706F                   jo      005D9748
005D96D9   6D                     insd
005D96DA   56                     push    esi
005D96DB   6C                     insb
005D96DC   7244                   jb      005D9722
005D96DE   657363                 jnb     005D9744
005D96E1   3002                   xor     [edx], al
005D96E3   0000                   add     [eax], al

005D96E5   0300                   add     eax, [eax]
005D96E7   126364                 adc     ah, byte ptr [ebx+$64]
005D96EA   50                     push    eax
005D96EB   61                     popa
005D96EC   726D                   jb      005D975B
005D96EE   47                     inc     edi
005D96EF   49                     dec     ecx
005D96F0   6D                     insd
005D96F1   7072                   jo      005D9765
005D96F3   43                     inc     ebx
005D96F4   6F                     outsd
005D96F5   6D                     insd
005D96F6   61                     popa
005D96F7   6E                     outsb
005D96F8   6461                   popa
005D96FA   3402                   xor     al, $02
005D96FC   0000                   add     [eax], al

005D96FE   07                     pop     es
005D96FF   0011                   add     [ecx], dl
005D9701   63645061               arpl    [eax+edx*2+$61], sp
005D9705   726D                   jb      005D9774
005D9707   47                     inc     edi
005D9708   53                     push    ebx
005D9709   656E                   outsb
005D970B   686152656D             push    $6D655261
005D9710   69733802000007         imul    esi, [ebx+$38], $07000002
005D9717   000D63644375           add     [$75436463], cl
005D971D   706F                   jo      005D978E
005D971F   6D                     insd
005D9720   46                     inc     esi
005D9721   696C69616C3C0200       imul    ebp, [ecx+ebp*2+$61], $00023C6C
005D9729   0005000F6364           add     [$64630F00], al
005D972F   50                     push    eax
005D9730   61                     popa
005D9731   726D                   jb      005D97A0
005D9733   47                     inc     edi
005D9734   55                     push    ebp
005D9735   7361                   jnb     005D9798
005D9737   4D                     dec     ebp
005D9738   6F                     outsd
005D9739   7573                   jnz     005D97AE
005D973B   6540                   inc     eax
005D973D   0200                   add     al, byte ptr [eax]
005D973F   0003                   add     [ebx], al
005D9741   0011                   add     [ecx], dl
005D9743   63645061               arpl    [eax+edx*2+$61], sp
005D9747   726D                   jb      005D97B6
005D9749   47                     inc     edi
005D974A   4E                     dec     esi
005D974B   756D                   jnz     005D97BA
005D974D   50                     push    eax
005D974E   657373                 jnb     005D97C4
005D9751   6F                     outsd
005D9752   61                     popa
005D9753   7344                   jnb     005D9799
005D9755   0200                   add     al, byte ptr [eax]
005D9757   0005000F6364           add     [$64630F00], al
005D975D   43                     inc     ebx
005D975E   7570                   jnz     005D97D0
005D9760   6F                     outsd
005D9761   6D                     insd
005D9762   44                     inc     esp
005D9763   656C                   insb
005D9765   69766572794802         imul    esi, [esi+$65], $02487972
005D976C   0000                   add     [eax], al

005D976E   0300                   add     eax, [eax]
005D9770   0C63                   or      al, $63
005D9772   6450                   push    eax
005D9774   61                     popa
005D9775   726D                   jb      005D97E4
005D9777   47                     inc     edi
005D9778   50                     push    eax
005D9779   6F                     outsd
005D977A   7274                   jb      005D97F0
005D977C   61                     popa
005D977D   4C                     dec     esp
005D977E   0200                   add     al, byte ptr [eax]
005D9780   0007                   add     [edi], al
005D9782   001A                   add     [edx], bl
005D9784   63645061               arpl    [eax+edx*2+$61], sp
005D9788   726D                   jb      005D97F7
005D978A   47                     inc     edi
005D978B   55                     push    ebp
005D978C   7361                   jnb     005D97EF
005D978E   4C                     dec     esp
005D978F   696D697465436F         imul    ebp, [ebp+$69], $6F436574
005D9796   6443                   inc     ebx
005D9798   6F                     outsd
005D9799   6D                     insd
005D979A   61                     popa
005D979B   6E                     outsb
005D979C   6461                   popa
005D979E   50                     push    eax
005D979F   0200                   add     al, byte ptr [eax]
005D97A1   0003                   add     [ebx], al
005D97A3   0017                   add     [edi], dl
005D97A5   63645061               arpl    [eax+edx*2+$61], sp
005D97A9   726D                   jb      005D9818
005D97AB   47                     inc     edi
005D97AC   4C                     dec     esp
005D97AD   696D697465436F         imul    ebp, [ebp+$69], $6F436574
005D97B4   6443                   inc     ebx
005D97B6   6F                     outsd
005D97B7   6D                     insd
005D97B8   61                     popa
005D97B9   6E                     outsb
005D97BA   6461                   popa
005D97BC   0200                   add     al, byte ptr [eax]
005D97BE   17                     pop     ss
005D97BF   0098995D0010           add     [eax+$10005D99], bl
005D97C5   44                     inc     esp
005D97C6   61                     popa
005D97C7   7461                   jz      005D982A
005D97C9   4D                     dec     ebp
005D97CA   6F                     outsd
005D97CB   64756C                 jnz     005D983A
005D97CE   6543                   inc     ebx
005D97D0   7265                   jb      005D9837
005D97D2   61                     popa
005D97D3   7465                   jz      005D983A
005D97D5   1800                   sbb     [eax], al
005D97D7   D4                     aam
005D97D8   9B                     wait
005D97D9   5D                     pop     ebp
005D97DA   0011                   add     [ecx], dl
005D97DC   63645061               arpl    [eax+edx*2+$61], sp
005D97E0   726D                   jb      005D984F
005D97E2   47                     inc     edi
005D97E3   43                     inc     ebx
005D97E4   61                     popa
005D97E5   6C                     insb
005D97E6   634669                 arpl    [esi+$69], ax
005D97E9   656C                   insb
005D97EB   647304                 jnb     005D97F2
005D97EE   54                     push    esp
005D97EF   54                     push    esp
005D97F0   4D                     dec     ebp
005D97F1   50                     push    eax
005D97F2   0900                   or      [eax], eax
005D97F4   B4A5                   mov     ah, $A5
005D97F6   55                     push    ebp
005D97F7   0064A84D               add     [eax+ebp*4+$4D], ah
005D97FB   005C2B4F               add     [ebx+ebp+$4F], bl
005D97FF   0044754D               add     [ebp+esi*2+$4D], al
005D9803   0054854D               add     [ebp+eax*4+$4D], dl
005D9807   002C80                 add     [eax+eax*4], ch
005D980A   4D                     dec     ebp
005D980B   004892                 add     [eax-$6E], cl
005D980E   4D                     dec     ebp
005D980F   0008                   add     [eax], cl
005D9811   704D                   jo      005D9860
005D9813   00A87C4D001C           add     [eax+$1C004D7C], ch
005D9819   98                     cwde 
005D981A   5D                     pop     ebp
005D981B   0007                   add     [edi], al
005D981D   0454                   add     al, +$54
005D981F   54                     push    esp
005D9820   4D                     dec     ebp
005D9821   50                     push    eax
005D9822   748C                   jz      005D97B0
005D9824   5D                     pop     ebp
005D9825   00E4                   add     ah, ah
005D9827   124200                 adc     al, byte ptr [edx+$00]
005D982A   0500045564             add     eax, +$64550400
005D982F   6D                     insd
005D9830   54                     push    esp
005D9831   0000                   add     [eax], al

005D9833   90                     nop
005D9834   55                     push    ebp
005D9835   8BEC                   mov     ebp, esp
005D9837   33C9                   xor     ecx, ecx
005D9839   51                     push    ecx
005D983A   51                     push    ecx
005D983B   51                     push    ecx
005D983C   51                     push    ecx
005D983D   51                     push    ecx
005D983E   51                     push    ecx
005D983F   53                     push    ebx
005D9840   56                     push    esi
005D9841   57                     push    edi
005D9842   8BDA                   mov     ebx, edx
005D9844   33C0                   xor     eax, eax
005D9846   55                     push    ebp

* Possible String Reference to: 'é×³âÿëëŠEÿ_^[‹å]Ã'
|
005D9847   685C995D00             push    $005D995C

***** TRY
|
005D984C   64FF30                 push    dword ptr fs:[eax]
005D984F   648920                 mov     fs:[eax], esp
005D9852   C645FF00               mov     byte ptr [ebp-$01], $00
005D9856   33C0                   xor     eax, eax
005D9858   55                     push    ebp
005D9859   683A995D00             push    $005D993A

***** TRY
|
005D985E   64FF30                 push    dword ptr fs:[eax]
005D9861   648920                 mov     fs:[eax], esp
005D9864   33C0                   xor     eax, eax
005D9866   55                     push    ebp
005D9867   68F1985D00             push    $005D98F1

***** TRY
|
005D986C   64FF30                 push    dword ptr fs:[eax]
005D986F   648920                 mov     fs:[eax], esp
005D9872   8BC3                   mov     eax, ebx

* Reference to: DB.TDataSet.Close(TDataSet);
|
005D9874   E8E7F0F0FF             call    004E8960
005D9879   8D55F4                 lea     edx, [ebp-$0C]
005D987C   33C0                   xor     eax, eax

* Reference to: System.ParamStr(Integer):String;
|
005D987E   E86994E2FF             call    00402CEC
005D9883   8B45F4                 mov     eax, [ebp-$0C]
005D9886   8D55F8                 lea     edx, [ebp-$08]

* Reference to: SysUtils.ExtractFilePath(AnsiString):AnsiString;
|
005D9889   E8AE1FE3FF             call    0040B83C
005D988E   8D45F8                 lea     eax, [ebp-$08]

* Possible String Reference to: 'params.dat'
|
005D9891   BA78995D00             mov     edx, $005D9978

* Reference to: System.@LStrCat;
|
005D9896   E8C9BEE2FF             call    00405764
005D989B   8B45F8                 mov     eax, [ebp-$08]

* Reference to: SysUtils.FileExists(AnsiString):Boolean;
|
005D989E   E82D1BE3FF             call    0040B3D0
005D98A3   84C0                   test    al, al
005D98A5   7440                   jz      005D98E7
005D98A7   8D55EC                 lea     edx, [ebp-$14]
005D98AA   33C0                   xor     eax, eax

* Reference to: System.ParamStr(Integer):String;
|
005D98AC   E83B94E2FF             call    00402CEC
005D98B1   8B45EC                 mov     eax, [ebp-$14]
005D98B4   8D55F0                 lea     edx, [ebp-$10]

* Reference to: SysUtils.ExtractFilePath(AnsiString):AnsiString;
|
005D98B7   E8801FE3FF             call    0040B83C
005D98BC   8D45F0                 lea     eax, [ebp-$10]

* Possible String Reference to: 'params.dat'
|
005D98BF   BA78995D00             mov     edx, $005D9978

* Reference to: System.@LStrCat;
|
005D98C4   E89BBEE2FF             call    00405764
005D98C9   8B55F0                 mov     edx, [ebp-$10]
005D98CC   8BC3                   mov     eax, ebx

* Reference to: DBClient.TCustomClientDataSet.SetFileName(TCustomClientDataSet;AnsiString);
|
005D98CE   E81DFAF1FF             call    004F92F0
005D98D3   33D2                   xor     edx, edx
005D98D5   8BC3                   mov     eax, ebx

* Reference to: DBClient.TCustomClientDataSet.LoadFromFile(TCustomClientDataSet;AnsiString);
|
005D98D7   E8ACD9F1FF             call    004F7288
005D98DC   8BC3                   mov     eax, ebx

* Reference to: DB.TDataSet.Open(TDataSet);
|
005D98DE   E871F0F0FF             call    004E8954
005D98E3   C645FF01               mov     byte ptr [ebp-$01], $01
005D98E7   33C0                   xor     eax, eax
005D98E9   5A                     pop     edx
005D98EA   59                     pop     ecx
005D98EB   59                     pop     ecx
005D98EC   648910                 mov     fs:[eax], edx
005D98EF   EB3B                   jmp     005D992C

* Reference to: System.@HandleOnException;
|
005D98F1   E9BAB2E2FF             jmp     00404BB0
005D98F6   0100                   add     [eax], eax
005D98F8   0000                   add     [eax], al
005D98FA   40                     inc     eax
005D98FB   95                     xchg    eax, ebp
005D98FC   40                     inc     eax
005D98FD   0002                   add     [edx], al
005D98FF   99                     cdq
005D9900   5D                     pop     ebp
005D9901   0089C36A008B           add     [ecx+$8B006AC3], cl
005D9907   4B                     dec     ebx
005D9908   048D                   add     al, -$73
005D990A   45                     inc     ebp
005D990B   E8BA8C995D             call    5DF725CA
005D9910   00E8                   add     al, ch
005D9912   92                     xchg    eax, edx
005D9913   BEE2FF8B45             mov     esi, $458BFFE2
005D9918   E8668B0D94             call    946B2483
005D991D   99                     cdq
005D991E   5D                     pop     ebp
005D991F   00B201E805A2           add     [edx+$A205E801], dh
005D9925   E6FF                   out     $FF, al

* Reference to: System.@DoneExcept;
|
005D9927   E884B5E2FF             call    00404EB0

****** END
|
005D992C   33C0                   xor     eax, eax
005D992E   5A                     pop     edx
005D992F   59                     pop     ecx
005D9930   59                     pop     ecx
005D9931   648910                 mov     fs:[eax], edx

****** FINALLY
|
005D9934   6841995D00             push    $005D9941
005D9939   C3                     ret


* Reference to: System.@HandleFinally;
|
005D993A   E9F9B3E2FF             jmp     00404D38
005D993F   EBF8                   jmp     005D9939

****** END
|
005D9941   33C0                   xor     eax, eax
005D9943   5A                     pop     edx
005D9944   59                     pop     ecx
005D9945   59                     pop     ecx
005D9946   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ŠEÿ_^[‹å]Ã'
|
005D9949   6863995D00             push    $005D9963
005D994E   8D45E8                 lea     eax, [ebp-$18]
005D9951   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
005D9956   E865BBE2FF             call    004054C0
005D995B   C3                     ret

*)
end;

end.