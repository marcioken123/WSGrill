unit udm1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet, IBQuery;
  
type
  TDm1=class(TDataModule)
    qePesq: TIBQuery;
    tbGeral: TIBDataSet;
    dsPesq: TDataSource;
    dsTbGeral: TDataSource;
    TbMesas: TIBDataSet;
    DsMesas: TDataSource;
    TbMesaLcto: TIBDataSet;
    TbMesaItem: TIBDataSet;
    DsMesaLcto: TDataSource;
    DsMesaItem: TDataSource;
    TbGrupos: TIBDataSet;
    DsGrupos: TDataSource;
    TbGruposCODGRUPO: TIBStringField;
    TbGruposDESCRICAO: TIBStringField;
    TbGruposUNIDMED: TIBStringField;
    TbGruposSITTRIB: TIBStringField;
    TbGruposCLASSFISC: TIBStringField;
    TbGruposCODGRADE: TIntegerField;
    TbGruposMARGEM: TFloatField;
    TbGruposSUGDESCRPROD: TIBStringField;
    TbGruposATUALIZACAO: TIBStringField;
    TbSaidas: TIBDataSet;
    TbSaidItem: TIBDataSet;
    DsSaidas: TDataSource;
    DsSaidItem: TDataSource;
    TbSaidasFILIAL: TIBStringField;
    TbSaidasTIPOLCTO: TIBStringField;
    TbSaidasDTLCTO: TDateTimeField;
    TbSaidasESPECIE: TIBStringField;
    TbSaidasSERIE: TIBStringField;
    TbSaidasNUMLCTO: TIntegerField;
    TbSaidasANO: TIBStringField;
    TbSaidasDTRETORNO: TDateTimeField;
    TbSaidasCODMOEDA: TIBStringField;
    TbSaidasNUMPEDIDO: TIntegerField;
    TbSaidasNUMNOTAS: TIntegerField;
    TbSaidasDTPEDIDO: TDateTimeField;
    TbSaidasCGCCLIE: TIBStringField;
    TbSaidasCODFUNC: TIBStringField;
    TbSaidasNATOPER: TIBStringField;
    TbSaidasCODDIPAM: TIBStringField;
    TbSaidasCONTACONTABIL: TIBStringField;
    TbSaidasRESPAUTO: TIBStringField;
    TbSaidasCONDPAGTO: TIBStringField;
    TbSaidasCODBANCO: TIBStringField;
    TbSaidasVLRMERC: TFloatField;
    TbSaidasVLRTOTAL: TFloatField;
    TbSaidasVLRACRESC: TFloatField;
    TbSaidasVLRDESC: TFloatField;
    TbSaidasVLRFRETE: TFloatField;
    TbSaidasVLRSEGURO: TFloatField;
    TbSaidasVLRDESPACESS: TFloatField;
    TbSaidasBASECALCULO: TFloatField;
    TbSaidasSTATUS: TIBStringField;
    TbSaidasCONTABILIZA: TIBStringField;
    TbSaidasDTCONTAB: TDateTimeField;
    TbSaidasAUTOPGTO: TIntegerField;
    TbSaidasEMITIDA: TIBStringField;
    TbSaidasATUALIZACAO: TIBStringField;
    TbSaidasNUMCUPOM: TIntegerField;
    TbSaidasCLIESENHACAIXA: TIBStringField;
    TbSaidasDTCAIXA: TDateTimeField;
    TbSaidasNUMFORMUL: TIntegerField;
    TbSaidasPNLCTO: TIntegerField;
    TbSaidasPNESPEC: TIBStringField;
    TbSaidasPNSERIE: TIBStringField;
    TbSaidasFATVALE: TIBStringField;
    TbSaidasDVLCTO: TIntegerField;
    TbSaidasDVESPECIE: TIBStringField;
    TbSaidasDVSERIE: TIBStringField;
    TbSaidasCODPDV: TIBStringField;
    TbSaidItemFILIAL: TIBStringField;
    TbSaidItemTIPOLCTO: TIBStringField;
    TbSaidItemDTLCTO: TDateTimeField;
    TbSaidItemESPECIE: TIBStringField;
    TbSaidItemSERIE: TIBStringField;
    TbSaidItemNUMLCTO: TIntegerField;
    TbSaidItemITEM: TIntegerField;
    TbSaidItemCODPROD: TIBStringField;
    TbSaidItemDESCRICAO: TIBStringField;
    TbSaidItemSITTRIB: TIBStringField;
    TbSaidItemCLASSFISC: TIBStringField;
    TbSaidItemUNIDMED: TIBStringField;
    TbSaidItemQTDEUNIDMED: TFloatField;
    TbSaidItemCOMPLEMBAL: TIBStringField;
    TbSaidItemVLRUNIT: TFloatField;
    TbSaidItemVLRDESC: TFloatField;
    TbSaidItemQTDLCTO: TFloatField;
    TbSaidItemQTDDEVOL: TFloatField;
    TbSaidItemQTDINVEN: TFloatField;
    TbSaidItemVLRCUSTO: TFloatField;
    TbSaidItemVLRTABELA: TFloatField;
    TbSaidItemFRETE: TFloatField;
    TbSaidItemVLRSEGURO: TFloatField;
    TbSaidItemDESPACESS: TFloatField;
    TbSaidItemHISTORICO: TIBStringField;
    TbSaidItemFILIALDESTINO: TIBStringField;
    TbSaidItemCODPRODDESTINO: TIBStringField;
    TbSaidItemCODSUBLOCAL: TIBStringField;
    TbSaidItemFLAG: TIBStringField;
    TbSaidItemNFORIGEM: TIntegerField;
    TbSaidItemCGCFORN: TIBStringField;
    TbSaidItemDTVOLTA: TDateTimeField;
    TbSaidItemATUALIZACAO: TIBStringField;
    TbSaidItemMOVESTOQUE: TIBStringField;
    TbSaidItemNUMPEDIDO: TIntegerField;
    TbSaidItemDTPEDIDO: TDateTimeField;
    TbMesasCODMESA: TIntegerField;
    TbMesasDESCRICAO: TIBStringField;
    TbMesasSTATUS: TIBStringField;
    TbMesasNUMPESSOAS: TIntegerField;
    TbMesasATEND_DIA: TIntegerField;
    TbMesasATEND_MES: TIntegerField;
    TbMesasVLR_ACUM_DIA: TFloatField;
    TbMesasVLR_ACUM_MES: TFloatField;
    TbMesasHR_ULT_ATEND: TDateTimeField;
    TbMesasPOS_X: TIntegerField;
    TbMesasPOS_Y: TIntegerField;
    TbBancos: TIBDataSet;
    TbBancosCODBANCO: TIBStringField;
    TbBancosCAIXAINTERNO: TIBStringField;
    TbBancosDESCRICAO: TIBStringField;
    TbBancosCONTACONTABIL: TIBStringField;
    TbBancosNUMBANCO: TIBStringField;
    TbBancosCODAGENCIA: TIBStringField;
    TbBancosAGENCIA: TIBStringField;
    TbBancosCONTATO: TIBStringField;
    TbBancosFONE: TIBStringField;
    TbBancosFAX: TIBStringField;
    TbBancosDIASCREDITO: TIntegerField;
    TbBancosCUSTOCOBRANCA: TFloatField;
    TbBancosUSAFORMCOBRANCA: TIBStringField;
    TbBancosCODOBS: TIBStringField;
    TbBancosUSANOSSONUM: TIBStringField;
    TbBancosUSAREMESSA: TIBStringField;
    TbBancosLIMCREDITO: TFloatField;
    TbBancosATUALIZACAO: TIBStringField;
    DsBancos: TDataSource;
    TbFunc: TIBDataSet;
    TbFuncFILIAL: TIBStringField;
    TbFuncCODFUNC: TIBStringField;
    TbFuncNOME: TIBStringField;
    TbFuncFANTASIA: TIBStringField;
    TbFuncFISJUR: TIBStringField;
    TbFuncFUNCREPRES: TIBStringField;
    TbFuncVENDEDOR: TIBStringField;
    TbFuncATIVO: TIBStringField;
    TbFuncSUBCOMIS: TIBStringField;
    TbFuncCARGO: TIBStringField;
    TbFuncDTADMISSAO: TDateTimeField;
    TbFuncDTDESLIGAMENTO: TDateTimeField;
    TbFuncTIPOCOMIS: TIBStringField;
    TbFuncPRCCOMISSAO: TFloatField;
    TbFuncPRCCOMISSAO2: TFloatField;
    TbFuncDESCCOMISDEVOL: TIBStringField;
    TbFuncAUTORIZADESC: TIBStringField;
    TbFuncLIMITEDESC: TFloatField;
    TbFuncULTIMANF: TIntegerField;
    TbFuncULTIMOCONTR: TIntegerField;
    TbFuncTEMDSR: TIBStringField;
    TbFuncPRCDSR: TFloatField;
    TbFuncCGCFUNC: TIBStringField;
    TbFuncINSCRICAO: TIBStringField;
    TbFuncENDERECO: TIBStringField;
    TbFuncNUMENDERECO: TIntegerField;
    TbFuncCOMPLENDERECO: TIBStringField;
    TbFuncBAIRRO: TIBStringField;
    TbFuncCIDADE: TIBStringField;
    TbFuncESTADO: TIBStringField;
    TbFuncCEP: TIBStringField;
    TbFuncFONE: TIBStringField;
    TbFuncFAX: TIBStringField;
    TbFuncEMAIL: TIBStringField;
    TbFuncENDERECORES: TIBStringField;
    TbFuncNUMENDERECORES: TIntegerField;
    TbFuncCOMPLENDERECORES: TIBStringField;
    TbFuncBAIRRORES: TIBStringField;
    TbFuncCIDADERES: TIBStringField;
    TbFuncESTADORES: TIBStringField;
    TbFuncCEPRES: TIBStringField;
    TbFuncFONERES: TIBStringField;
    TbFuncFAXRES: TIBStringField;
    TbFuncCGCTRANS: TIBStringField;
    TbFuncBANCO: TIBStringField;
    TbFuncOUTRODOC: TIBStringField;
    TbFuncSENHADESC: TIBStringField;
    TbFuncLIMITEMAXIMO: TFloatField;
    TbFuncPERMDESC: TIBStringField;
    TbFuncANOTACAO: TMemoField;
    TbFuncWWW: TIBStringField;
    TbFuncCUSTOHORA: TFloatField;
    TbFuncPCESTCAS: TIBStringField;
    TbFuncATUALIZACAO: TIBStringField;
    TbFuncccCgcFunc: TStringField;
    TbFuncNAUTOAPROV: TIBStringField;
    DsFunc: TDataSource;
    TbFiliais: TIBDataSet;
    TbFiliaisFILIAL: TIBStringField;
    TbFiliaisDESCRICAO: TIBStringField;
    TbFiliaisMULTIPLA: TIBStringField;
    TbFiliaisNUMPDVS: TIntegerField;
    TbFiliaisRAZAO: TIBStringField;
    TbFiliaisFANTASIA: TIBStringField;
    TbFiliaisCGCFILIAL: TIBStringField;
    TbFiliaisTIPOEMPRESA: TIBStringField;
    TbFiliaisFONE: TIBStringField;
    TbFiliaisFAX: TIBStringField;
    TbFiliaisINSCRICAO: TIBStringField;
    TbFiliaisENDERECO: TIBStringField;
    TbFiliaisNUMENDERECO: TIntegerField;
    TbFiliaisCOMPLENDERECO: TIBStringField;
    TbFiliaisBAIRROENDERECO: TIBStringField;
    TbFiliaisCEPENDERECO: TIBStringField;
    TbFiliaisCIDADEENDERECO: TIBStringField;
    TbFiliaisESTADOENDERECO: TIBStringField;
    TbFiliaisCGCCLIECONSU: TIBStringField;
    TbFiliaisFATMINIMO: TFloatField;
    TbFiliaisLIMITEPGTODIA: TFloatField;
    TbFiliaisCOMISEMISPGTO: TIBStringField;
    TbFiliaisCOMISVENDAATUAL: TIBStringField;
    TbFiliaisDTINICOMIS: TDateTimeField;
    TbFiliaisCOMISITEMPROD: TIBStringField;
    TbFiliaisMRGMONTAPADRAO: TFloatField;
    TbFiliaisTIPOSENHADESC: TIBStringField;
    TbFiliaisTIPOSENHACAIXA: TIBStringField;
    TbFiliaisSENHADESC: TIBStringField;
    TbFiliaisSENHACAIXA: TIBStringField;
    TbFiliaisSENHADESCDIAS: TSmallintField;
    TbFiliaisSENHADESCMES: TSmallintField;
    TbFiliaisSENHACAIXADIAS: TSmallintField;
    TbFiliaisSENHACAIXAMES: TSmallintField;
    TbFiliaisSENHAFINAN: TSmallintField;
    TbFiliaisPARMGIADIPI: TIBStringField;
    TbFiliaisDTULTEXPO: TDateTimeField;
    TbFiliaisCTAJUROSRECEBIDOS: TIBStringField;
    TbFiliaisCTADESCCONCEDIDOS: TIBStringField;
    TbFiliaisCTAJUROSPAGOS: TIBStringField;
    TbFiliaisCTADESCRECEBIDOS: TIBStringField;
    TbFiliaisCODHISTDEBVENDA: TIBStringField;
    TbFiliaisCODHISTCREDVENDA: TIBStringField;
    TbFiliaisUSAAMARRADO: TIBStringField;
    TbFiliaisUSAAUTOEXPE: TIBStringField;
    TbFiliaisUSAFORMBAIXA: TIBStringField;
    TbFiliaisOBSGERALNEXTNF: TMemoField;
    TbFiliaisUSACODPRODLAUDO: TIBStringField;
    TbFiliaisATUALIZACAO: TIBStringField;
    TbFiliaisTRAZOBSPEDIDO: TIBStringField;
    TbFiliaisIMPRLIMITELAUDO: TIBStringField;
    TbFiliaisESPECIE: TIBStringField;
    TbFiliaisSERIE: TIBStringField;
    TbFiliaisSELECIONAIMPRNOTA: TIBStringField;
    TbFiliaisETIQC_ALTU: TIntegerField;
    TbFiliaisETIQC_LARG: TIntegerField;
    TbFiliaisETIQC_VDIST: TIntegerField;
    TbFiliaisETIQC_HDIST: TIntegerField;
    TbFiliaisETIQC_COL: TIntegerField;
    TbFiliaisETIQC_6_8: TIBStringField;
    TbFiliaisETIQC_TIPO: TIBStringField;
    TbFiliaisENDENTREGA: TIBStringField;
    TbFiliaisNUMENTREGA: TIntegerField;
    TbFiliaisCOMPLENTREGA: TIBStringField;
    TbFiliaisBAIRROENTREGA: TIBStringField;
    TbFiliaisCEPENTREGA: TIBStringField;
    TbFiliaisCIDADEENTREGA: TIBStringField;
    TbFiliaisESTADOENTREGA: TIBStringField;
    TbFiliaisENDCOBRANCA: TIBStringField;
    TbFiliaisNUMCOBRANCA: TIntegerField;
    TbFiliaisCOMPLCOBRANCA: TIBStringField;
    TbFiliaisBAIRROCOBRANCA: TIBStringField;
    TbFiliaisCEPCOBRANCA: TIBStringField;
    TbFiliaisCIDADECOBRANCA: TIBStringField;
    TbFiliaisESTADOCOBRANCA: TIBStringField;
    TbFiliaisCTADEBFRETE: TIBStringField;
    TbFiliaisCNAE: TIBStringField;
    TbFiliaisCODCRESP: TIBStringField;
    TbFiliaisCODCECUSTO: TIBStringField;
    TbFiliaisCODGERENTE: TIBStringField;
    TbFiliaisNOMEGERENTE: TIBStringField;
    TbFiliaisSITTRIB: TIBStringField;
    TbFiliaisCODBANCO: TIBStringField;
    TbFiliaisTABPRECO: TIBStringField;
    TbFiliaisUSAECF: TIBStringField;
    TbFiliaisCLIESENHACAIXA: TIBStringField;
    TbFiliaisBLOQUEIAAUTDESC: TIBStringField;
    TbFiliaisCOMISORDEMEXIB: TIBStringField;
    TbFiliaisTIPO: TIBStringField;
    TbFiliaisISENCOES: TIBStringField;
    TbFiliaisTIPOASSIST: TIBStringField;
    TbFiliaisPERMDESC: TIBStringField;
    TbFiliaisEMAIL: TIBStringField;
    TbFiliaisWWW: TIBStringField;
    TbFiliaisDIASOBSGERAL: TIntegerField;
    TbFiliaisMAIUMINU: TIBStringField;
    TbFiliaisLKRAZAOCLIECONS: TStringField;
    TbFiliComp: TIBDataSet;
    TbFiliCompFILIAL: TIBStringField;
    TbFiliCompFILICOMP: TIBStringField;
    TbFiliEsp: TIBDataSet;
    TbFiliEspFILIAL: TIBStringField;
    TbFiliEspESPECIE: TIBStringField;
    TbFiliEspSERIE: TIBStringField;
    TbFiliEspUSO: TIBStringField;
    TbFiliEspULTIMAVENDA: TIntegerField;
    TbFiliEspDTULTVENDA: TDateTimeField;
    TbFiliEspVLRCAIXA: TFloatField;
    TbFiliEspTIPO: TIBStringField;
    TbFiliEspDESCRICAO: TIBStringField;
    TbFiliEspFORMULARIO: TIntegerField;
    TbFiliEspLIMITEITENS: TIntegerField;
    TbFiliEspLIMITENOTAS: TIntegerField;
    TbFiliEspBLOQCONSUMIDOR: TIBStringField;
    TbFiliEspDADOSTRANSPORT: TIBStringField;
    TbPDV: TIBDataSet;
    TbPDVFILIAL: TIBStringField;
    TbPDVCODPDV: TIBStringField;
    TbPDVDESCRICAO: TIBStringField;
    TbPDVSALDO: TFloatField;
    TbPDVDTCAIXAATUAL: TDateTimeField;
    TbPDVSTATUS: TIBStringField;
    TbPDVGERENTE: TIBStringField;
    TbPDVPRCCOMISSAO: TFloatField;
    TbPDVGRUPO: TIntegerField;
    TbPDVCAMINHO: TIBStringField;
    TbPDVATUALIZACAO: TIBStringField;
    TbPDVLKGERENTE: TStringField;
    DsFiliais: TDataSource;
    DsFiliComp: TDataSource;
    DsFiliEsp: TDataSource;
    DsPDV: TDataSource;
    TbGruposLkUnidMed: TStringField;
    TbGruposLkClassFisc: TStringField;
    TbGruposLkSitTrib: TStringField;
    TbMesasALTURA: TIntegerField;
    TbMesasLARGURA: TIntegerField;
    TbMesaFunc: TIBDataSet;
    DsMesaFunc: TDataSource;
    TbMesaFuncCODMESA: TIntegerField;
    TbMesaFuncCODFUNC: TIBStringField;
    TbMesaFuncFOLGA: TIBStringField;
    TbMesaFuncLkNomeFunc: TStringField;
    TbMesaFuncLkFantFunc: TStringField;
    TbMesaFuncHORAINI: TTimeField;
    TbMesaFuncHORAFIM: TTimeField;
    TbMesaItemCODMESA: TIntegerField;
    TbMesaItemNUMLCTO: TIntegerField;
    TbMesaItemITEM: TIntegerField;
    TbMesaItemCODPROD: TIBStringField;
    TbMesaItemDESCRPROD: TIBStringField;
    TbMesaItemUNIDMED: TIBStringField;
    TbMesaItemQTDEUNIDMED: TFloatField;
    TbMesaItemQTDELCTO: TFloatField;
    TbMesaItemVLRUNIT: TFloatField;
    TbMesaItemVLRTOTAL: TFloatField;
    TbMesaItemCODFUNC: TIBStringField;
    TbMesaItemSTATUS: TIBStringField;
    TbMesaItemDATAREQ: TDateTimeField;
    DsProdutos: TDataSource;
    DsProdFili: TDataSource;
    DsProdImpo: TDataSource;
    DsProdUnid: TDataSource;
    DsProdSald: TDataSource;
    DsProdLocal: TDataSource;
    DsProdItem: TDataSource;
    DsProdGrad: TDataSource;
    TbProdutos: TIBDataSet;
    TbProdutosCODPROD: TIBStringField;
    TbProdutosCODGRUPO: TIBStringField;
    TbProdutosDESCRICAO: TIBStringField;
    TbProdutosDESCRRESUMIDA: TIBStringField;
    TbProdutosCODBARRA: TIBStringField;
    TbProdutosTIPO: TIBStringField;
    TbProdutosMONTADO: TIBStringField;
    TbProdutosUNIDPESO: TIBStringField;
    TbProdutosSITTRIB: TIBStringField;
    TbProdutosSITTRIBFE: TIBStringField;
    TbProdutosSITTRIBEX: TIBStringField;
    TbProdutosCLASSFISC: TIBStringField;
    TbProdutosDECIQTDE: TSmallintField;
    TbProdutosDECIVLR: TSmallintField;
    TbProdutosMARGEM: TFloatField;
    TbProdutosATUALIZACAO: TIBStringField;
    TbProdutosMODELO: TIBStringField;
    TbProdutosMODELO2: TIBStringField;
    TbProdutosCODSETOR: TIBStringField;
    TbProdutosCODMARCA: TIBStringField;
    TbProdutosGARANTIA: TIntegerField;
    TbProdutosMARCA: TIBStringField;
    TbProdutosGRUPO: TIBStringField;
    TbProdutosCODMOEDA: TIBStringField;
    TbProdutosNAOSAINATABELA: TIBStringField;
    TbProdutosPPB: TIBStringField;
    TbProdutosNUMSERIE: TIBStringField;
    TbProdutosCODGRADE: TIntegerField;
    TbProdutosGLINHA: TSmallintField;
    TbProdutosGCOLUNA: TSmallintField;
    TbProdutosVLRUNIT: TFloatField;
    TbProdutosUSAUNPADRAO: TIBStringField;
    TbProdutosCGCFORN: TIBStringField;
    TbProdutosccCodDescrMod: TStringField;
    TbProdutosccModelo: TStringField;
    TbProdutosccDescrProd: TStringField;
    TbProdutosccVlrTabela: TFloatField;
    TbProdutosDECICUSTO: TIntegerField;
    TbProdutosLKFornFantasia: TStringField;
    TbProdutosLkDescrSetor: TStringField;
    TbProdutosLkDescrClass: TStringField;
    TbProdutosLkDescrSitTrib: TStringField;
    TbProdutosLkDescrSitTribFE: TStringField;
    TbProdutosLkDescrSitTribEx: TStringField;
    TbProdFili: TIBDataSet;
    TbProdFiliCODPROD: TIBStringField;
    TbProdFiliFILIAL: TIBStringField;
    TbProdFiliESTMINIMO: TFloatField;
    TbProdFiliESTMAXIMO: TFloatField;
    TbProdFiliCODVENDA: TSmallintField;
    TbProdFiliDESCPROMOCAO: TFloatField;
    TbProdFiliDTINIPROMOCAO: TDateTimeField;
    TbProdFiliDTFIMPROMOCAO: TDateTimeField;
    TbProdFiliABC: TIBStringField;
    TbProdFiliESTOQUEATUAL: TFloatField;
    TbProdFiliESTOQCORR: TFloatField;
    TbProdFiliEMPENHO: TFloatField;
    TbProdFiliAENTREGAR: TFloatField;
    TbProdFiliARECEBER: TFloatField;
    TbProdFiliREMESSA: TFloatField;
    TbProdFiliSAINATABELA: TIBStringField;
    TbProdFiliDTULTCOMPRA: TDateTimeField;
    TbProdFiliVLRULTCOMPRA: TFloatField;
    TbProdFiliCGCFORNULTCOMPRA: TIBStringField;
    TbProdFiliCONTACONTABIL: TIBStringField;
    TbProdFiliTRIB: TIBStringField;
    TbProdFiliATUALIZACAO: TIBStringField;
    TbProdFiliLOCALREF: TIBStringField;
    TbProdImpo: TIBDataSet;
    TbProdImpoCODPROD: TIBStringField;
    TbProdImpoFILIAL: TIBStringField;
    TbProdImpoIMPOSTO: TIBStringField;
    TbProdImpoALIQUOTA: TFloatField;
    TbProdImpoPRCREDUC: TFloatField;
    TbProdImpoATUALIZACAO: TIBStringField;
    TbProdImpoPRCREDUC7: TFloatField;
    TbProdImpoPRCREDUC12: TFloatField;
    TbProdImpoREDUCTIPOEMPR: TIBStringField;
    TbProdUnid: TIBDataSet;
    TbProdUnidCODPROD: TIBStringField;
    TbProdUnidFILIAL: TIBStringField;
    TbProdUnidUNIDMED: TIBStringField;
    TbProdUnidQTDEUNIDMED: TFloatField;
    TbProdUnidTABPRECO: TIBStringField;
    TbProdUnidCODBARRA: TIBStringField;
    TbProdUnidCOMPLEMBAL: TIBStringField;
    TbProdUnidFATORCONVERSAO: TFloatField;
    TbProdUnidVLRUNIT: TFloatField;
    TbProdUnidVLRCUSTO: TFloatField;
    TbProdUnidDOLUNIT: TFloatField;
    TbProdUnidDOLCUSTO: TFloatField;
    TbProdUnidDOLBASECOMPRA: TFloatField;
    TbProdUnidPESOBRUTO: TFloatField;
    TbProdUnidPESOLIQUIDO: TFloatField;
    TbProdUnidMARGEM: TFloatField;
    TbProdUnidPADRAO: TIBStringField;
    TbProdUnidALIQUOTAIPI: TFloatField;
    TbProdUnidATUALIZACAO: TIBStringField;
    TbProdUnidTMPVLRUNIT: TFloatField;
    TbProdUnidTMPVLRCUSTO: TFloatField;
    TbProdUnidTMPMARGEM: TFloatField;
    TbProdUnidVLRCUSTOANT: TFloatField;
    TbProdUnidVLRUNITANT: TFloatField;
    TbProdUnidDTALTVLR: TDateTimeField;
    TbProdUnidALTUNIT: TIBStringField;
    TbProdUnidDESCPROMOCAO: TFloatField;
    TbProdUnidccVlrUnitComIPI: TFloatField;
    TbProdUnidccVlrUnit: TFloatField;
    TbProdUnidccVlrMil: TFloatField;
    TbProdUnidccVlrTabela: TFloatField;
    TbProdUnidccVlrComIPI: TFloatField;
    TbProdSald: TIBDataSet;
    TbProdSaldCODPROD: TIBStringField;
    TbProdSaldFILIAL: TIBStringField;
    TbProdSaldANOMES: TIntegerField;
    TbProdSaldMODIFY: TIBStringField;
    TbProdSaldESTOQUE: TFloatField;
    TbProdSaldESTOQCORR: TFloatField;
    TbProdSaldVENDAS: TFloatField;
    TbProdSaldCOMPRAS: TFloatField;
    TbProdSaldPRODUCAOENTR: TFloatField;
    TbProdSaldPRODUCAOSAI: TFloatField;
    TbProdSaldTRANSFENTR: TFloatField;
    TbProdSaldTRANSFSAI: TFloatField;
    TbProdSaldOUTRASENTR: TFloatField;
    TbProdSaldOUTRASSAI: TFloatField;
    TbProdSaldCUSTOMEDIO: TFloatField;
    TbProdSaldPRECOMEDIO: TFloatField;
    TbProdSaldGIROMEDIO: TFloatField;
    TbProdSaldVLRORCADO: TFloatField;
    TbProdSaldQTDORCADA: TFloatField;
    TbProdSaldCOTACAO: TFloatField;
    TbProdSaldNUMCOTACOES: TIntegerField;
    TbProdSaldccMesAno: TStringField;
    TbProdSaldccSequenciaGrafico: TIntegerField;
    TbProdLocal: TIBDataSet;
    TbProdLocalCODPROD: TIBStringField;
    TbProdLocalFILIAL: TIBStringField;
    TbProdLocalCODSUBLOCAL: TIBStringField;
    TbProdLocalSALDOESTOQUE: TFloatField;
    TbProdLocalPADRAO: TIBStringField;
    TbProdLocalATUALIZACAO: TIBStringField;
    TbProdLocalLKCODLOCAL: TIBStringField;
    TbProdLocalLKSUBLOCAL: TIBStringField;
    TbProdLocalLKLOCAL: TIBStringField;
    TbProdItem: TIBDataSet;
    TbProdItemCODPROD: TIBStringField;
    TbProdItemCODMATPRIMA: TIBStringField;
    TbProdItemUNIDMED: TIBStringField;
    TbProdItemQTDEUNIDMED: TFloatField;
    TbProdItemQTDE: TFloatField;
    TbProdItemVLRCUSTO: TFloatField;
    TbProdItemATUALIZACAO: TIBStringField;
    TbProdGrad: TIBDataSet;
    TbProdGradCODPROD: TIBStringField;
    TbProdGradFILIAL: TIBStringField;
    TbProdGradLINHA: TSmallintField;
    TbProdGradCOLUNA: TSmallintField;
    TbProdGradORDCOLUNA: TSmallintField;
    TbProdGradDESCRLIN: TIBStringField;
    TbProdGradDESCRCOL: TIBStringField;
    TbProdGradSALDOESTOQUE: TFloatField;
    TbProdGradATUALIZACAO: TIBStringField;
    TbProdCmpl: TIBDataSet;
    TbProdCmplCODPROD: TIBStringField;
    TbProdCmplOBSERV: TMemoField;
    TbProdCmplFOTO: TBlobField;
    TbProdCmplCOMPLEMENTO: TMemoField;
    TbProdCmplDIRFOTO: TIBStringField;
    TbProdCmplDIRMP3: TIBStringField;
    TbProdCmplCODCECUSTO: TIBStringField;
    TbProdCmplUSABALANCA: TIBStringField;
    TbProdCmplNOMIMPRESSORA: TIBStringField;
    TbProdCmplCODIMPRESSORA: TIntegerField;
    TbProdCmplATUALIZACAO: TIBStringField;
    TbProdCmplLkDescrCeCusto: TStringField;
    DsProdCmpl: TDataSource;
    DsProdObs: TDataSource;
    DsProdComi: TDataSource;
    DsProdSimi: TDataSource;
    TbProdObs: TIBDataSet;
    TbProdObsCODPROD: TIBStringField;
    TbProdObsFILIAL: TIBStringField;
    TbProdObsCODOBS: TIBStringField;
    TbProdObsATUALIZACAO: TIBStringField;
    TbProdObsLKDescricao: TStringField;
    TbProdComi: TIBDataSet;
    TbProdComiCODPROD: TIBStringField;
    TbProdComiFILIAL: TIBStringField;
    TbProdComiDESCATE: TFloatField;
    TbProdComiPRCCOMISSAO: TFloatField;
    TbProdSimi: TIBDataSet;
    TbProdSimiCODPROD: TIBStringField;
    TbProdSimiCODSIMI: TIBStringField;
    TbProdSimiATUALIZACAO: TIBStringField;
    TbProdSimiLKMODELO: TIBStringField;
    TbProdSimiLKDESCRPRODUTO: TIBStringField;
    TbMesaFuncPRCCONTA: TFloatField;
    TbMesaLctoCODMESA: TIntegerField;
    TbMesaLctoNUMLCTO: TIntegerField;
    TbMesaLctoDATAINI: TDateTimeField;
    TbMesaLctoDATAFIM: TDateTimeField;
    TbMesaLctoCGCCLIE: TIBStringField;
    TbMesaLctoCODFUNC: TIBStringField;
    TbMesaLctoNUMPESSOAS: TIntegerField;
    TbMesaLctoVLRTOTAL: TFloatField;
    TbMesaLctoSTATUS: TIBStringField;
    TbNatOper: TIBDataSet;
    TbNatOperFILIAL: TIBStringField;
    TbNatOperNATOPER: TIBStringField;
    TbNatOperNATOPER2: TIBStringField;
    TbNatOperDESCRICAO: TIBStringField;
    TbNatOperCODDIPAM: TIBStringField;
    TbNatOperMERCANTIL: TIBStringField;
    TbNatOperENTSAI: TIBStringField;
    TbNatOperDESTACAICMS: TIBStringField;
    TbNatOperMOVESTOQUE: TIBStringField;
    TbNatOperVLCUSTOKARDEX: TIBStringField;
    TbNatOperIPINAOTRIB: TIBStringField;
    TbNatOperICMSNAOTRIB: TIBStringField;
    TbNatOperTIPONATOPER: TIBStringField;
    TbNatOperOBSERV: TMemoField;
    TbNatOperCONTABILIDADE: TIBStringField;
    TbNatOperDUPLICATA: TIBStringField;
    TbNatOperLIVROFISCAL: TIBStringField;
    TbNatOperCONTABPARCIAL: TIBStringField;
    TbNatOperATUALIZACAO: TIBStringField;
    TbNatOperINFORMACLASFISC: TIBStringField;
    TbNatOperNAOAGRUPA: TIBStringField;
    TbNatOperCOMPLIMPOSTO: TIBStringField;
    TbNatOperTRANSFIMPOSTO: TIBStringField;
    TbNatOperDIFALIQUOTA: TIBStringField;
    TbNatOperSEMVALORES: TIBStringField;
    TbNatOperNAOIMPRCODIGO: TIBStringField;
    TbNatOperDESCONSIDERADIPJ: TIBStringField;
    TbNatOperDESATIVADO: TIBStringField;
    DsNatOper: TDataSource;
    TbMesaLctoFECHADO: TIBStringField;
    TbMesaItemFECHADO: TIBStringField;
    TbMesaLctoNUMCUPOM: TIntegerField;
    TbMesaLctoESPECIE: TIBStringField;
    TbMesaLctoSERIE: TIBStringField;
    TbClientes: TIBDataSet;
    TbClientesCGCCLIE: TIBStringField;
    TbClientesCODCLIE: TIBStringField;
    TbClientesRAZAO: TIBStringField;
    TbClientesFANTASIA: TIBStringField;
    TbClientesINSCRICAO: TIBStringField;
    TbClientesFISJUR: TIBStringField;
    TbClientesCONTRIBUINTE: TIBStringField;
    TbClientesATIVO: TIBStringField;
    TbClientesCGCGRUPO: TIBStringField;
    TbClientesENDERECO: TIBStringField;
    TbClientesNUMENDERECO: TIntegerField;
    TbClientesCOMPLENDERECO: TIBStringField;
    TbClientesBAIRRO: TIBStringField;
    TbClientesCEP: TIBStringField;
    TbClientesCIDADE: TIBStringField;
    TbClientesESTADO: TIBStringField;
    TbClientesTELEFONE: TIBStringField;
    TbClientesFAX: TIBStringField;
    TbClientesCODSETOR: TIBStringField;
    TbClientesCONTATO: TIBStringField;
    TbClientesCARGO: TIBStringField;
    TbClientesFONERESIDENCIA: TIBStringField;
    TbClientesDATACADASTRO: TDateTimeField;
    TbClientesSUFRAMA: TIBStringField;
    TbClientesCOORDGUIA: TIBStringField;
    TbClientesATUALIZACAO: TIBStringField;
    TbClientesccCgcGrupo: TStringField;
    TbClientesccCgcClie: TStringField;
    TbClientesTIPOEMPRESA: TIBStringField;
    TbClientesISENCOES: TIBStringField;
    TbClientesSIMPLES: TIBStringField;
    TbClieCmpl: TIBDataSet;
    TbClieCmplCGCCLIE: TIBStringField;
    TbClieCmplANIVERSARIO: TIBStringField;
    TbClieCmplENDERECOPAGTO: TIBStringField;
    TbClieCmplBAIRROPAGTO: TIBStringField;
    TbClieCmplNUMENDPAGTO: TIntegerField;
    TbClieCmplCOMPLENDPAGTO: TIBStringField;
    TbClieCmplCIDADEENDPAGTO: TIBStringField;
    TbClieCmplESTADOENDPAGTO: TIBStringField;
    TbClieCmplCEPENDPAGTO: TIBStringField;
    TbClieCmplFONEENDPAGTO: TIBStringField;
    TbClieCmplFAXENDPAGTO: TIBStringField;
    TbClieCmplCONTATOENDPAGTO: TIBStringField;
    TbClieCmplCGCENTREGA: TIBStringField;
    TbClieCmplINSCRENTREGA: TIBStringField;
    TbClieCmplENDERECOENTREGA: TIBStringField;
    TbClieCmplBAIRROENDENTREGA: TIBStringField;
    TbClieCmplNUMENDENTREGA: TIntegerField;
    TbClieCmplCOMPLENDENTREGA: TIBStringField;
    TbClieCmplCIDADEENDENTREGA: TIBStringField;
    TbClieCmplESTADOENDENTREGA: TIBStringField;
    TbClieCmplCEPENDENTREGA: TIBStringField;
    TbClieCmplFONEENDENTREGA: TIBStringField;
    TbClieCmplFAXENDENTREGA: TIBStringField;
    TbClieCmplCONTATOENDENTREGA: TIBStringField;
    TbClieCmplWWW: TIBStringField;
    TbClieCmplCOORDGUIA: TIBStringField;
    TbClieCmplEXPORTANET: TIBStringField;
    TbClieCmplPRCPN: TFloatField;
    TbClieCmplDTNASC: TDateTimeField;
    TbClieCmplORIGEM: TIBStringField;
    TbClieCmplATUALIZACAO: TIBStringField;
    TbClieCmplccCgcEntrega: TStringField;
    TbClieFili: TIBDataSet;
    TbClieFiliCGCCLIE: TIBStringField;
    TbClieFiliFILIAL: TIBStringField;
    TbClieFiliNATOPER: TIBStringField;
    TbClieFiliCONDPAGTO: TIBStringField;
    TbClieFiliCGCTRANS: TIBStringField;
    TbClieFiliPGFRETE: TIBStringField;
    TbClieFiliAVALIACAO: TIBStringField;
    TbClieFiliOBS: TMemoField;
    TbClieFiliCARTBANC: TIBStringField;
    TbClieFiliCODFUNC: TIBStringField;
    TbClieFiliCODBANCO: TIBStringField;
    TbClieFiliCODDIPAM: TIBStringField;
    TbClieFiliDIAVENCTO: TSmallintField;
    TbClieFiliDIASEMANA: TIBStringField;
    TbClieFiliNUMTABPROPRIA: TSmallintField;
    TbClieFiliLIMITECREDITO: TFloatField;
    TbClieFiliDTPRIMVENDA: TDateTimeField;
    TbClieFiliDTULTVENDA: TDateTimeField;
    TbClieFiliDTMAIORVENDA: TDateTimeField;
    TbClieFiliVLRULTVENDA: TFloatField;
    TbClieFiliVLRMAIORVENDA: TFloatField;
    TbClieFiliVLRACUMVENDA: TFloatField;
    TbClieFiliNOTAMAIORVENDA: TIntegerField;
    TbClieFiliNUMATRASOS: TSmallintField;
    TbClieFiliMAIORATRASO: TSmallintField;
    TbClieFiliDTULTATRASO: TDateTimeField;
    TbClieFiliNUMDIASBLOQUEIO: TSmallintField;
    TbClieFiliREMESSA: TIBStringField;
    TbClieFiliOBSPEDIDO: TIBStringField;
    TbClieFiliPRCCOMISSAO: TFloatField;
    TbClieFiliOBSNEXTNF: TMemoField;
    TbClieFiliccCgcTrans: TStringField;
    TbClieMail: TIBDataSet;
    TbClieMailCGCCLIE: TIBStringField;
    TbClieMailCONTATO: TIBStringField;
    TbClieMailEMAIL: TIBStringField;
    TbClieMailTELEFONE: TIBStringField;
    TbClieMailOBSERVACAO: TIBStringField;
    TbClieDesc: TIBDataSet;
    TbClieDescFILIAL: TIBStringField;
    TbClieDescCGCCLIE: TIBStringField;
    TbClieDescINCRCLIEDESC: TIntegerField;
    TbClieDescPRCDESC: TFloatField;
    TbClieImpo: TIBDataSet;
    TbClieImpoFILIAL: TIBStringField;
    TbClieImpoCGCCLIE: TIBStringField;
    TbClieImpoIMPOSTO: TIBStringField;
    TbClieImpoALIQUOTA: TFloatField;
    TbClieImpoPRCREDUC: TFloatField;
    TbClieImpoDIFERIDO: TIBStringField;
    TbClieImpoCODOBS: TIBStringField;
    TbClieProd: TIBDataSet;
    TbClieProdCGCCLIE: TIBStringField;
    TbClieProdCODPROD: TIBStringField;
    TbClieProdCODPRODCLIE: TIBStringField;
    TbClieProdLkDescrProd: TStringField;
    TbClieProdUNIDMED: TIBStringField;
    TbClieProdQTDEUNIDMED: TFloatField;
    TbClieProdVLRUNIT: TFloatField;
    TbClieProdLkVlrTabela: TFloatField;
    DsClientes: TDataSource;
    DsClieCmpl: TDataSource;
    DsClieFili: TDataSource;
    DsClieMail: TDataSource;
    DsClieDesc: TDataSource;
    DsClieImpo: TDataSource;
    DsClieProd: TDataSource;
    TbMesaItemccDestino: TStringField;
    TbImpGrill: TIBDataSet;
    DsImpGrill: TDataSource;
    TbImpGrillCODIMPR: TIntegerField;
    TbImpGrillDESCRICAO: TIBStringField;
    TbImpGrillCAMINHO: TIBStringField;
    TbGruposCODIMPR: TIntegerField;
    TbGruposLkImpressora: TStringField;
    TbImpGrillCODMAPA: TIntegerField;
    TbImpGrillLkMapa: TStringField;
    TbMesaItemCODIMPR: TIntegerField;
    TbMesaItemIMPRESSO: TIBStringField;
    TbImpGrillNAOIMPRIME: TIBStringField;
    TbMesaItemVIAGEM: TIBStringField;
    TbImprMicro: TIBDataSet;
    DsImprMicro: TDataSource;
    TbImprMicroCODIMPR: TIntegerField;
    TbImprMicroMICRO: TIBStringField;
    TbImprMicroCAMINHO: TIBStringField;
    TbMesaItemHRREQUIS: TIBStringField;
    TbMesaItemHISTORICO: TIBStringField;
    TbPDVHORAINI: TTimeField;
    TbPDVHORAFIM: TTimeField;
    DsSdxPreco: TDataSource;
    TbSdxPreco: TIBDataSet;
    TbSdxPrecoGRUPO: TIBStringField;
    TbSdxPrecoPESO: TIntegerField;
    TbSdxPrecoVALOR: TFloatField;
    TbSdxFaixa: TIBDataSet;
    TbSdxFaixaINICIAL: TIBStringField;
    TbSdxFaixaFINAL: TIBStringField;
    TbSdxFaixaGRUPO: TIBStringField;
    TbSdxFaixaDESCRICAO: TIBStringField;
    DsSdxFaixa: TDataSource;
    TbMesasOPERACAO: TIntegerField;
    TbMesaItemHRATEND: TIBStringField;
    TbMesaItemMONTADO: TIBStringField;
    TbProdutosESTQPRODITEM: TIBStringField;
    TbProdutosALIQIPI: TFloatField;
    TbProdutosSUBSTPRODITEM: TIBStringField;
    TbProdItemccVlrTotal: TFloatField;
    TbProdItemLkDescrMateria: TStringField;
    TbMesaItemKIT: TIBStringField;
    TbMesasTIPOMESA: TIBStringField;
    TbMesasCODCOMANDA: TIBStringField;
    TbProdItemF11PRECOTAB: TIBStringField;
    TbProdItemOBSERV: TIBStringField;
    TbMesaItemVLRTABELA: TFloatField;
    TbMesaItemVLRCUSTO: TFloatField;
    TbProdFiliCGCFORNULTCOMPRA2: TIBStringField;
    TbProdFiliDTULTCOMPRA2: TDateTimeField;
    TbProdFiliSITTRIB: TIBStringField;
    TbProdFiliSITTRIBEX: TIBStringField;
    TbProdFiliSITTRIBFE: TIBStringField;
    TbProdFiliVLRULTCOMPRA2: TFloatField;
    TbProdFiliACOMPRAR: TFloatField;
    TbProdFiliVENDACASADA: TIBStringField;
    TbProdCmplESTMAXIMO: TFloatField;
    TbProdCmplESTMINIMO: TFloatField;
    TbProdCmplPORPESSOA: TFloatField;
    TbProdCmplQTDMINIMA: TFloatField;
    TbProdCmplINCR: TIntegerField;
    TbProdCmplOBSERVRESTR: TBlobField;
    TbProdCmplDIRMANUAL: TIBStringField;
    TbProdutosPRODEVENTO: TIBStringField;
    TbProdutosTIPOOPER: TIBStringField;
    TbProdUnidDTINIPROMOCAO: TDateTimeField;
    TbProdUnidDTFIMPROMOCAO: TDateTimeField;
    TbProdUnidBLOQQTDEUN: TIBStringField;
    TbProdUnidICMSNINCLUSONOPRECO: TIBStringField;
    TbProdUnidDTALTCUSTO: TDateTimeField;
    TbProdUnidDTCOTACAO: TDateTimeField;
    TbProdUnidLIMITEDESC: TFloatField;
    TbProdUnidSUBSTUNIT: TFloatField;
    TbProdGradCODBARRA: TIBStringField;
    TbProdGradESTMAX: TFloatField;
    TbProdGradESTMIN: TFloatField;
    TbProdGradNUMETIQ: TFloatField;
    TbFiliaisULTDTFECH: TDateTimeField;
    TbFiliaisULTPDVFECH: TIBStringField;
    TbFiliaisPRCDESCFILI: TFloatField;
    TbFiliaisSIMPLES: TIBStringField;
    TbFiliaisPISCOFINS: TIBStringField;
    TbFiliaisPRCPIS: TFloatField;
    TbFiliaisPRCCOFINS: TFloatField;
    TbFiliaisPRCCSLL: TFloatField;
    TbFiliaisDTULTARQMORTO: TDateTimeField;
    TbFiliaisDESCIMPOSTONINCLUSO: TIBStringField;
    TbFiliaisICMSNINCLUSONOPRECO: TIBStringField;
    TbFiliaisDTULTAPAGAREG: TDateTimeField;
    TbFiliaisLISTASETORES: TIBStringField;
    TbFiliaisPREMIOVALOR: TFloatField;
    TbFiliaisPREMIOVLRMINVENDA: TFloatField;
    TbFiliaisRELCUPOMV: TIntegerField;
    TbFiliaisSENHACANC: TIBStringField;
    TbFiliaisVLRUNITTRANSF: TIBStringField;
    TbFiliaisSENHAVALE: TIBStringField;
    TbFiliaisSENHABLOQCLIE: TIBStringField;
    TbFiliaisDIRLOGO: TIBStringField;
    TbFiliaisCODFUNCDIRE: TIBStringField;
    TbFiliaisCODFUNCCRED: TIBStringField;
    TbFiliaisULTORDSERV: TIntegerField;
    TbFiliaisDTULTORDSERV: TDateTimeField;
    TbFiliaisUSACONHECIMENTO: TIBStringField;
    TbFiliaisCLASSFISC: TIBStringField;
    TbProdObsREDUCTIPOEMPR: TIBStringField;
    TbFiliEspCXNUMLCTOS: TIntegerField;
    TbFiliEspCXNUMREGIS: TIntegerField;
    TbFiliEspCXCANCELAD: TIntegerField;
    TbFiliEspCXNFINICIO: TIntegerField;
    TbFiliEspCXNFFINAL: TIntegerField;
    TbFiliEspBLOQLIMITE: TIBStringField;
    TbFiliEspDESATIVADO: TIBStringField;
    TbFiliEspCOLUNAOBS: TIntegerField;
    TbFiliEspPGFRETE: TIBStringField;
    TbFiliEspCOLUNASOBS: TIntegerField;
    TbPDVDESATIVADO: TIBStringField;
    TbPDVEMUSO: TIBStringField;
    procedure DataModuleCreate(Sender : TObject);
    procedure TbFuncCalcFields(Sender : TObject);
    procedure TbFuncNewRecord(Sender : TObject);
    procedure TbFiliaisCalcFields(Sender : TObject);
    procedure TbPDVCalcFields(Sender : TObject);
    procedure TbPDVNewRecord(Sender : TObject);
    procedure TbGruposCalcFields(Sender : TObject);
    procedure TbMesaFuncCalcFields(Sender : TObject);
    procedure TbMesaFuncNewRecord(Sender : TObject);
    procedure TbProdutosCalcFields(Sender : TObject);
    procedure TbProdCmplCalcFields(Sender : TObject);
    procedure TbProdUnidCalcFields(Sender : TObject);
    procedure TbProdSaldCalcFields(Sender : TObject);
    procedure TbProdLocalNewRecord(Sender : TObject);
    procedure TbProdObsCalcFields(Sender : TObject);
    procedure TbClientesCalcFields(Sender : TObject);
    procedure TbMesaItemCalcFields(Sender : TObject);
    procedure TbImpGrillCalcFields(Sender : TObject);
    procedure TbProdItemCalcFields(Sender : TObject);
    procedure _PROC_0079E30C(Sender : TObject);
    procedure _PROC_0079E58D(Sender : TObject);
    procedure _PROC_0079E8FD(Sender : TObject);
    procedure _PROC_0079E90E(Sender : TObject);
    procedure _PROC_0079EB7D(Sender : TObject);
    procedure _PROC_0079EB91(Sender : TObject);
    procedure _PROC_0079ED55(Sender : TObject);
    procedure _PROC_0079ED66(Sender : TObject);
    procedure _PROC_0079F1A3(Sender : TObject);
    procedure _PROC_0079F1B8(Sender : TObject);
    procedure _PROC_0079F4BA(Sender : TObject);
    procedure _PROC_0079F524(Sender : TObject);
    procedure _PROC_0079F561(Sender : TObject);
    procedure _PROC_0079F68C(Sender : TObject);
    procedure _PROC_0079FAEB(Sender : TObject);
    procedure _PROC_0079FCAC(Sender : TObject);
    procedure _PROC_0079FF75(Sender : TObject);
    procedure _PROC_0079FF7D(Sender : TObject);
    procedure _PROC_0079FFAC(Sender : TObject);
    procedure _PROC_007A0145(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end ;

var
  Dm1: TDm1;

{This file is generated by DeDe Ver 3.50.02 Copyright (c) 1999-2002 DaFixer}

implementation

{$R *.DFM}

procedure TDm1.DataModuleCreate(Sender : TObject);
begin
(*
0079E300   55                     push    ebp
0079E301   8BEC                   mov     ebp, esp

* Reference to : TDm1._PROC_0079E30C()
|
0079E303   E804000000             call    0079E30C
0079E308   5D                     pop     ebp
0079E309   C3                     ret

*)
end;

procedure TDm1.TbFuncCalcFields(Sender : TObject);
begin
(*
0079E42C   55                     push    ebp
0079E42D   8BEC                   mov     ebp, esp
0079E42F   B905000000             mov     ecx, $00000005
0079E434   6A00                   push    $00
0079E436   6A00                   push    $00
0079E438   49                     dec     ecx
0079E439   75F9                   jnz     0079E434
0079E43B   53                     push    ebx
0079E43C   56                     push    esi
0079E43D   57                     push    edi
0079E43E   BB70F57D00             mov     ebx, $007DF570
0079E443   33C0                   xor     eax, eax
0079E445   55                     push    ebp

* Possible String Reference to: 'È¶g∆ˇÎÎ_^[ãÂ]√'
|
0079E446   688DE57900             push    $0079E58D

***** TRY
|
0079E44B   64FF30                 push    dword ptr fs:[eax]
0079E44E   648920                 mov     fs:[eax], esp
0079E451   33C0                   xor     eax, eax
0079E453   55                     push    ebp
0079E454   6842E57900             push    $0079E542

***** TRY
|
0079E459   64FF30                 push    dword ptr fs:[eax]
0079E45C   648920                 mov     fs:[eax], esp
0079E45F   8D55FC                 lea     edx, [ebp-$04]
0079E462   8B03                   mov     eax, [ebx]

* Reference to control TDm1.TbFuncCGCFUNC : TIBStringField
|
0079E464   8B80DC020000           mov     eax, [eax+$02DC]
0079E46A   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TIBStringField.OFFS_60
|
0079E46C   FF5160                 call    dword ptr [ecx+$60]
0079E46F   8B55FC                 mov     edx, [ebp-$04]
0079E472   8B03                   mov     eax, [ebx]

* Reference to field TIBStringField.OFFS_035C
|
0079E474   8B805C030000           mov     eax, [eax+$035C]
0079E47A   8B08                   mov     ecx, [eax]
0079E47C   FF91B0000000           call    dword ptr [ecx+$00B0]
0079E482   8D55F4                 lea     edx, [ebp-$0C]
0079E485   8B03                   mov     eax, [ebx]
0079E487   8B80DC020000           mov     eax, [eax+$02DC]
0079E48D   8B08                   mov     ecx, [eax]
0079E48F   FF5160                 call    dword ptr [ecx+$60]
0079E492   8B45F4                 mov     eax, [ebp-$0C]
0079E495   8D55F8                 lea     edx, [ebp-$08]

* Reference to : TFrmInfoAtu._PROC_007A0480()
|
0079E498   E8E31F0000             call    007A0480
0079E49D   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrLen(String):Integer;
|
0079E4A0   E8B772C6FF             call    0040575C
0079E4A5   83F80B                 cmp     eax, +$0B
0079E4A8   7533                   jnz     0079E4DD
0079E4AA   8D55EC                 lea     edx, [ebp-$14]
0079E4AD   8B03                   mov     eax, [ebx]
0079E4AF   8B80DC020000           mov     eax, [eax+$02DC]
0079E4B5   8B08                   mov     ecx, [eax]
0079E4B7   FF5160                 call    dword ptr [ecx+$60]
0079E4BA   8B55EC                 mov     edx, [ebp-$14]
0079E4BD   8D4DF0                 lea     ecx, [ebp-$10]

* Possible String Reference to: '###\.###\.###\-##;0;'
|
0079E4C0   B8A4E57900             mov     eax, $0079E5A4

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
0079E4C5   E8EA00D3FF             call    004CE5B4
0079E4CA   8B55F0                 mov     edx, [ebp-$10]
0079E4CD   8B03                   mov     eax, [ebx]
0079E4CF   8B805C030000           mov     eax, [eax+$035C]
0079E4D5   8B08                   mov     ecx, [eax]
0079E4D7   FF91B0000000           call    dword ptr [ecx+$00B0]
0079E4DD   8D55E4                 lea     edx, [ebp-$1C]
0079E4E0   8B03                   mov     eax, [ebx]
0079E4E2   8B80DC020000           mov     eax, [eax+$02DC]
0079E4E8   8B08                   mov     ecx, [eax]
0079E4EA   FF5160                 call    dword ptr [ecx+$60]
0079E4ED   8B45E4                 mov     eax, [ebp-$1C]
0079E4F0   8D55E8                 lea     edx, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A0480()
|
0079E4F3   E8881F0000             call    007A0480
0079E4F8   8B45E8                 mov     eax, [ebp-$18]

* Reference to: System.@LStrLen(String):Integer;
|
0079E4FB   E85C72C6FF             call    0040575C
0079E500   83F80E                 cmp     eax, +$0E
0079E503   7533                   jnz     0079E538
0079E505   8D55DC                 lea     edx, [ebp-$24]
0079E508   8B03                   mov     eax, [ebx]
0079E50A   8B80DC020000           mov     eax, [eax+$02DC]
0079E510   8B08                   mov     ecx, [eax]
0079E512   FF5160                 call    dword ptr [ecx+$60]
0079E515   8B55DC                 mov     edx, [ebp-$24]
0079E518   8D4DE0                 lea     ecx, [ebp-$20]

* Possible String Reference to: '##\.###\.###\/####\-##;0;'
|
0079E51B   B8C4E57900             mov     eax, $0079E5C4

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
0079E520   E88F00D3FF             call    004CE5B4
0079E525   8B55E0                 mov     edx, [ebp-$20]
0079E528   8B03                   mov     eax, [ebx]
0079E52A   8B805C030000           mov     eax, [eax+$035C]
0079E530   8B08                   mov     ecx, [eax]
0079E532   FF91B0000000           call    dword ptr [ecx+$00B0]
0079E538   33C0                   xor     eax, eax
0079E53A   5A                     pop     edx
0079E53B   59                     pop     ecx
0079E53C   59                     pop     ecx
0079E53D   648910                 mov     fs:[eax], edx
0079E540   EB30                   jmp     0079E572

* Reference to: System.@HandleOnException;
|
0079E542   E96966C6FF             jmp     00404BB0
0079E547   0100                   add     [eax], eax
0079E549   0000                   add     [eax], al
0079E54B   40                     inc     eax
0079E54C   95                     xchg    eax, ebp
0079E54D   40                     inc     eax
0079E54E   0053E5                 add     [ebx-$1B], dl
0079E551   7900                   jns     0079E553
0079E553   89C3                   mov     ebx, eax
0079E555   8B4B04                 mov     ecx, [ebx+$04]
0079E558   8D45D8                 lea     eax, [ebp-$28]

* Possible String Reference to: 'Erro no evento OnCalcFields da tabe
|                                la TbFuncio! '
|
0079E55B   BAE8E57900             mov     edx, $0079E5E8

* Reference to: System.@LStrCat3;
|
0079E560   E84372C6FF             call    004057A8
0079E565   8B45D8                 mov     eax, [ebp-$28]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0079E568   E8B756CAFF             call    00443C24

* Reference to: System.@DoneExcept;
|
0079E56D   E83E69C6FF             call    00404EB0

****** END
|
0079E572   33C0                   xor     eax, eax
0079E574   5A                     pop     edx
0079E575   59                     pop     ecx
0079E576   59                     pop     ecx
0079E577   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0079E57A   6894E57900             push    $0079E594
0079E57F   8D45D8                 lea     eax, [ebp-$28]
0079E582   BA0A000000             mov     edx, $0000000A

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079E587   E8346FC6FF             call    004054C0
0079E58C   C3                     ret


* Reference to: System.@HandleFinally;
|
0079E58D   E9A667C6FF             jmp     00404D38
0079E592   EBEB                   jmp     0079E57F

****** END
|
0079E594   5F                     pop     edi
0079E595   5E                     pop     esi
0079E596   5B                     pop     ebx
0079E597   8BE5                   mov     esp, ebp
0079E599   5D                     pop     ebp
0079E59A   C3                     ret

*)
end;

procedure TDm1.TbFuncNewRecord(Sender : TObject);
begin
(*
0079E61C   55                     push    ebp
0079E61D   8BEC                   mov     ebp, esp
0079E61F   33C9                   xor     ecx, ecx
0079E621   51                     push    ecx
0079E622   51                     push    ecx
0079E623   51                     push    ecx
0079E624   51                     push    ecx
0079E625   33C0                   xor     eax, eax
0079E627   55                     push    ebp

* Possible String Reference to: 'È;f∆ˇÎÎãÂ]√'
|
0079E628   68F8E67900             push    $0079E6F8

***** TRY
|
0079E62D   64FF30                 push    dword ptr fs:[eax]
0079E630   648920                 mov     fs:[eax], esp
0079E633   8B15DCAD7D00           mov     edx, [$007DADDC]
0079E639   8B12                   mov     edx, [edx]
0079E63B   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E640   8B8084020000           mov     eax, [eax+$0284]
0079E646   8B08                   mov     ecx, [eax]
0079E648   FF91B0000000           call    dword ptr [ecx+$00B0]
0079E64E   8D55FC                 lea     edx, [ebp-$04]
0079E651   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E656   8B80D8040000           mov     eax, [eax+$04D8]
0079E65C   8B08                   mov     ecx, [eax]
0079E65E   FF5160                 call    dword ptr [ecx+$60]
0079E661   8B45FC                 mov     eax, [ebp-$04]
0079E664   BA0CE77900             mov     edx, $0079E70C

* Reference to: System.@LStrCmp;
|
0079E669   E83A72C6FF             call    004058A8
0079E66E   7444                   jz      0079E6B4
0079E670   8D55F8                 lea     edx, [ebp-$08]
0079E673   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E678   8B80D8040000           mov     eax, [eax+$04D8]
0079E67E   8B08                   mov     ecx, [eax]
0079E680   FF5160                 call    dword ptr [ecx+$60]
0079E683   8B45F8                 mov     eax, [ebp-$08]
0079E686   BA18E77900             mov     edx, $0079E718

* Reference to: System.@LStrCmp;
|
0079E68B   E81872C6FF             call    004058A8
0079E690   7422                   jz      0079E6B4
0079E692   8D55F4                 lea     edx, [ebp-$0C]
0079E695   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E69A   8B80D8040000           mov     eax, [eax+$04D8]
0079E6A0   8B08                   mov     ecx, [eax]
0079E6A2   FF5160                 call    dword ptr [ecx+$60]
0079E6A5   8B45F4                 mov     eax, [ebp-$0C]
0079E6A8   BA24E77900             mov     edx, $0079E724

* Reference to: System.@LStrCmp;
|
0079E6AD   E8F671C6FF             call    004058A8
0079E6B2   7529                   jnz     0079E6DD
0079E6B4   8D55F0                 lea     edx, [ebp-$10]
0079E6B7   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E6BC   8B80D8040000           mov     eax, [eax+$04D8]
0079E6C2   8B08                   mov     ecx, [eax]
0079E6C4   FF5160                 call    dword ptr [ecx+$60]
0079E6C7   8B55F0                 mov     edx, [ebp-$10]
0079E6CA   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E6CF   8B8044030000           mov     eax, [eax+$0344]
0079E6D5   8B08                   mov     ecx, [eax]
0079E6D7   FF91B0000000           call    dword ptr [ecx+$00B0]
0079E6DD   33C0                   xor     eax, eax
0079E6DF   5A                     pop     edx
0079E6E0   59                     pop     ecx
0079E6E1   59                     pop     ecx
0079E6E2   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãÂ]√'
|
0079E6E5   68FFE67900             push    $0079E6FF
0079E6EA   8D45F0                 lea     eax, [ebp-$10]
0079E6ED   BA04000000             mov     edx, $00000004

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079E6F2   E8C96DC6FF             call    004054C0
0079E6F7   C3                     ret


* Reference to: System.@HandleFinally;
|
0079E6F8   E93B66C6FF             jmp     00404D38
0079E6FD   EBEB                   jmp     0079E6EA

****** END
|
0079E6FF   8BE5                   mov     esp, ebp
0079E701   5D                     pop     ebp
0079E702   C3                     ret

*)
end;

procedure TDm1.TbFiliaisCalcFields(Sender : TObject);
begin
(*
0079E728   55                     push    ebp
0079E729   8BEC                   mov     ebp, esp
0079E72B   33C9                   xor     ecx, ecx
0079E72D   51                     push    ecx
0079E72E   51                     push    ecx
0079E72F   51                     push    ecx
0079E730   51                     push    ecx
0079E731   51                     push    ecx
0079E732   33C0                   xor     eax, eax
0079E734   55                     push    ebp

* Possible String Reference to: 'ÈYe∆ˇÎÎãÂ]√'
|
0079E735   68DAE77900             push    $0079E7DA

***** TRY
|
0079E73A   64FF30                 push    dword ptr fs:[eax]
0079E73D   648920                 mov     fs:[eax], esp
0079E740   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
0079E745   803800                 cmp     byte ptr [eax], $00
0079E748   7475                   jz      0079E7BF
0079E74A   8D55FC                 lea     edx, [ebp-$04]
0079E74D   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E752   8B80B4030000           mov     eax, [eax+$03B4]
0079E758   8B08                   mov     ecx, [eax]
0079E75A   FF5160                 call    dword ptr [ecx+$60]
0079E75D   837DFC00               cmp     dword ptr [ebp-$04], +$00
0079E761   745C                   jz      0079E7BF

* Possible String Reference to: 'RAZAO'
|
0079E763   68F0E77900             push    $0079E7F0
0079E768   8D45F8                 lea     eax, [ebp-$08]
0079E76B   50                     push    eax
0079E76C   8D55EC                 lea     edx, [ebp-$14]
0079E76F   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E774   8B80B4030000           mov     eax, [eax+$03B4]
0079E77A   8B08                   mov     ecx, [eax]
0079E77C   FF5160                 call    dword ptr [ecx+$60]
0079E77F   8B45EC                 mov     eax, [ebp-$14]
0079E782   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079E785   E896530000             call    007A3B20
0079E78A   8B4DF0                 mov     ecx, [ebp-$10]
0079E78D   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CGCCLIE = '
|
0079E790   BA00E87900             mov     edx, $0079E800

* Reference to: System.@LStrCat3;
|
0079E795   E80E70C6FF             call    004057A8
0079E79A   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'CLIENTES'
|
0079E79D   BA14E87900             mov     edx, $0079E814
0079E7A2   33C0                   xor     eax, eax

|
0079E7A4   E867AB0000             call    007A9310
0079E7A9   8B55F8                 mov     edx, [ebp-$08]
0079E7AC   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E7B1   8B80EC040000           mov     eax, [eax+$04EC]
0079E7B7   8B08                   mov     ecx, [eax]
0079E7B9   FF91B0000000           call    dword ptr [ecx+$00B0]
0079E7BF   33C0                   xor     eax, eax
0079E7C1   5A                     pop     edx
0079E7C2   59                     pop     ecx
0079E7C3   59                     pop     ecx
0079E7C4   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãÂ]√'
|
0079E7C7   68E1E77900             push    $0079E7E1
0079E7CC   8D45EC                 lea     eax, [ebp-$14]
0079E7CF   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079E7D4   E8E76CC6FF             call    004054C0
0079E7D9   C3                     ret


* Reference to: System.@HandleFinally;
|
0079E7DA   E95965C6FF             jmp     00404D38
0079E7DF   EBEB                   jmp     0079E7CC

****** END
|
0079E7E1   8BE5                   mov     esp, ebp
0079E7E3   5D                     pop     ebp
0079E7E4   C3                     ret

*)
end;

procedure TDm1.TbPDVCalcFields(Sender : TObject);
begin
(*
0079E820   55                     push    ebp
0079E821   8BEC                   mov     ebp, esp
0079E823   33C9                   xor     ecx, ecx
0079E825   51                     push    ecx
0079E826   51                     push    ecx
0079E827   51                     push    ecx
0079E828   51                     push    ecx
0079E829   51                     push    ecx
0079E82A   33C0                   xor     eax, eax
0079E82C   55                     push    ebp

* Possible String Reference to: 'Èad∆ˇÎÎãÂ]√'
|
0079E82D   68D2E87900             push    $0079E8D2

***** TRY
|
0079E832   64FF30                 push    dword ptr fs:[eax]
0079E835   648920                 mov     fs:[eax], esp
0079E838   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
0079E83D   803800                 cmp     byte ptr [eax], $00
0079E840   7475                   jz      0079E8B7
0079E842   8D55FC                 lea     edx, [ebp-$04]
0079E845   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E84A   8B8054050000           mov     eax, [eax+$0554]
0079E850   8B08                   mov     ecx, [eax]
0079E852   FF5160                 call    dword ptr [ecx+$60]
0079E855   837DFC00               cmp     dword ptr [ebp-$04], +$00
0079E859   745C                   jz      0079E8B7

* Possible String Reference to: 'NOME'
|
0079E85B   68E8E87900             push    $0079E8E8
0079E860   8D45F8                 lea     eax, [ebp-$08]
0079E863   50                     push    eax
0079E864   8D55EC                 lea     edx, [ebp-$14]
0079E867   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E86C   8B8054050000           mov     eax, [eax+$0554]
0079E872   8B08                   mov     ecx, [eax]
0079E874   FF5160                 call    dword ptr [ecx+$60]
0079E877   8B45EC                 mov     eax, [ebp-$14]
0079E87A   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079E87D   E89E520000             call    007A3B20
0079E882   8B4DF0                 mov     ecx, [ebp-$10]
0079E885   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODFUNC = '
|
0079E888   BAF8E87900             mov     edx, $0079E8F8

* Reference to: System.@LStrCat3;
|
0079E88D   E8166FC6FF             call    004057A8
0079E892   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'FUNCREPR'
|
0079E895   BA0CE97900             mov     edx, $0079E90C
0079E89A   33C0                   xor     eax, eax

|
0079E89C   E86FAA0000             call    007A9310
0079E8A1   8B55F8                 mov     edx, [ebp-$08]
0079E8A4   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E8A9   8B8068050000           mov     eax, [eax+$0568]
0079E8AF   8B08                   mov     ecx, [eax]
0079E8B1   FF91B0000000           call    dword ptr [ecx+$00B0]
0079E8B7   33C0                   xor     eax, eax
0079E8B9   5A                     pop     edx
0079E8BA   59                     pop     ecx
0079E8BB   59                     pop     ecx
0079E8BC   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãÂ]√'
|
0079E8BF   68D9E87900             push    $0079E8D9
0079E8C4   8D45EC                 lea     eax, [ebp-$14]
0079E8C7   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079E8CC   E8EF6BC6FF             call    004054C0
0079E8D1   C3                     ret


* Reference to: System.@HandleFinally;
|
0079E8D2   E96164C6FF             jmp     00404D38
0079E8D7   EBEB                   jmp     0079E8C4

****** END
|
0079E8D9   8BE5                   mov     esp, ebp
0079E8DB   5D                     pop     ebp
0079E8DC   C3                     ret

*)
end;

procedure TDm1.TbPDVNewRecord(Sender : TObject);
begin
(*
0079E918   55                     push    ebp
0079E919   8BEC                   mov     ebp, esp
0079E91B   8B15DCAD7D00           mov     edx, [$007DADDC]
0079E921   8B12                   mov     edx, [edx]
0079E923   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E928   8B803C050000           mov     eax, [eax+$053C]
0079E92E   8B08                   mov     ecx, [eax]
0079E930   FF91B0000000           call    dword ptr [ecx+$00B0]
0079E936   5D                     pop     ebp
0079E937   C3                     ret

*)
end;

procedure TDm1.TbGruposCalcFields(Sender : TObject);
begin
(*
0079E938   55                     push    ebp
0079E939   8BEC                   mov     ebp, esp
0079E93B   B90A000000             mov     ecx, $0000000A
0079E940   6A00                   push    $00
0079E942   6A00                   push    $00
0079E944   49                     dec     ecx
0079E945   75F9                   jnz     0079E940
0079E947   33C0                   xor     eax, eax
0079E949   55                     push    ebp

* Possible String Reference to: 'È·a∆ˇÎÎãÂ]√'
|
0079E94A   6852EB7900             push    $0079EB52

***** TRY
|
0079E94F   64FF30                 push    dword ptr fs:[eax]
0079E952   648920                 mov     fs:[eax], esp
0079E955   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
0079E95A   803800                 cmp     byte ptr [eax], $00
0079E95D   0F84D4010000           jz      0079EB37
0079E963   8D55FC                 lea     edx, [ebp-$04]
0079E966   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E96B   8B8090000000           mov     eax, [eax+$0090]
0079E971   8B08                   mov     ecx, [eax]
0079E973   FF5160                 call    dword ptr [ecx+$60]
0079E976   837DFC00               cmp     dword ptr [ebp-$04], +$00
0079E97A   745C                   jz      0079E9D8

* Possible String Reference to: 'DESCRICAO'
|
0079E97C   6868EB7900             push    $0079EB68
0079E981   8D45F8                 lea     eax, [ebp-$08]
0079E984   50                     push    eax
0079E985   8D55EC                 lea     edx, [ebp-$14]
0079E988   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E98D   8B8090000000           mov     eax, [eax+$0090]
0079E993   8B08                   mov     ecx, [eax]
0079E995   FF5160                 call    dword ptr [ecx+$60]
0079E998   8B45EC                 mov     eax, [ebp-$14]
0079E99B   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079E99E   E87D510000             call    007A3B20
0079E9A3   8B4DF0                 mov     ecx, [ebp-$10]
0079E9A6   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'UNIDMED = '
|
0079E9A9   BA7CEB7900             mov     edx, $0079EB7C

* Reference to: System.@LStrCat3;
|
0079E9AE   E8F56DC6FF             call    004057A8
0079E9B3   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'UNIDMED'
|
0079E9B6   BA90EB7900             mov     edx, $0079EB90
0079E9BB   33C0                   xor     eax, eax

|
0079E9BD   E84EA90000             call    007A9310
0079E9C2   8B55F8                 mov     edx, [ebp-$08]
0079E9C5   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E9CA   8B807C050000           mov     eax, [eax+$057C]
0079E9D0   8B08                   mov     ecx, [eax]
0079E9D2   FF91B0000000           call    dword ptr [ecx+$00B0]
0079E9D8   8D55E8                 lea     edx, [ebp-$18]
0079E9DB   A170F57D00             mov     eax, dword ptr [$007DF570]
0079E9E0   8B8098000000           mov     eax, [eax+$0098]
0079E9E6   8B08                   mov     ecx, [eax]
0079E9E8   FF5160                 call    dword ptr [ecx+$60]
0079E9EB   837DE800               cmp     dword ptr [ebp-$18], +$00
0079E9EF   745C                   jz      0079EA4D

* Possible String Reference to: 'DESCRICAO'
|
0079E9F1   6868EB7900             push    $0079EB68
0079E9F6   8D45E4                 lea     eax, [ebp-$1C]
0079E9F9   50                     push    eax
0079E9FA   8D55D8                 lea     edx, [ebp-$28]
0079E9FD   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EA02   8B8098000000           mov     eax, [eax+$0098]
0079EA08   8B08                   mov     ecx, [eax]
0079EA0A   FF5160                 call    dword ptr [ecx+$60]
0079EA0D   8B45D8                 mov     eax, [ebp-$28]
0079EA10   8D55DC                 lea     edx, [ebp-$24]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079EA13   E808510000             call    007A3B20
0079EA18   8B4DDC                 mov     ecx, [ebp-$24]
0079EA1B   8D45E0                 lea     eax, [ebp-$20]

* Possible String Reference to: 'CLASSFISC = '
|
0079EA1E   BAA0EB7900             mov     edx, $0079EBA0

* Reference to: System.@LStrCat3;
|
0079EA23   E8806DC6FF             call    004057A8
0079EA28   8B4DE0                 mov     ecx, [ebp-$20]

* Possible String Reference to: 'CLASFISC'
|
0079EA2B   BAB8EB7900             mov     edx, $0079EBB8
0079EA30   33C0                   xor     eax, eax

|
0079EA32   E8D9A80000             call    007A9310
0079EA37   8B55E4                 mov     edx, [ebp-$1C]
0079EA3A   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EA3F   8B8080050000           mov     eax, [eax+$0580]
0079EA45   8B08                   mov     ecx, [eax]
0079EA47   FF91B0000000           call    dword ptr [ecx+$00B0]
0079EA4D   8D55D4                 lea     edx, [ebp-$2C]
0079EA50   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EA55   8B8094000000           mov     eax, [eax+$0094]
0079EA5B   8B08                   mov     ecx, [eax]
0079EA5D   FF5160                 call    dword ptr [ecx+$60]
0079EA60   837DD400               cmp     dword ptr [ebp-$2C], +$00
0079EA64   745C                   jz      0079EAC2

* Possible String Reference to: 'DESCRICAO'
|
0079EA66   6868EB7900             push    $0079EB68
0079EA6B   8D45D0                 lea     eax, [ebp-$30]
0079EA6E   50                     push    eax
0079EA6F   8D55C4                 lea     edx, [ebp-$3C]
0079EA72   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EA77   8B8094000000           mov     eax, [eax+$0094]
0079EA7D   8B08                   mov     ecx, [eax]
0079EA7F   FF5160                 call    dword ptr [ecx+$60]
0079EA82   8B45C4                 mov     eax, [ebp-$3C]
0079EA85   8D55C8                 lea     edx, [ebp-$38]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079EA88   E893500000             call    007A3B20
0079EA8D   8B4DC8                 mov     ecx, [ebp-$38]
0079EA90   8D45CC                 lea     eax, [ebp-$34]

* Possible String Reference to: 'SITTRIB = '
|
0079EA93   BACCEB7900             mov     edx, $0079EBCC

* Reference to: System.@LStrCat3;
|
0079EA98   E80B6DC6FF             call    004057A8
0079EA9D   8B4DCC                 mov     ecx, [ebp-$34]

* Possible String Reference to: 'SITTRIB'
|
0079EAA0   BAE0EB7900             mov     edx, $0079EBE0
0079EAA5   33C0                   xor     eax, eax

|
0079EAA7   E864A80000             call    007A9310
0079EAAC   8B55D0                 mov     edx, [ebp-$30]
0079EAAF   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EAB4   8B8084050000           mov     eax, [eax+$0584]
0079EABA   8B08                   mov     ecx, [eax]
0079EABC   FF91B0000000           call    dword ptr [ecx+$00B0]
0079EAC2   8D55C0                 lea     edx, [ebp-$40]
0079EAC5   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EACA   8B80000C0000           mov     eax, [eax+$0C00]
0079EAD0   8B08                   mov     ecx, [eax]
0079EAD2   FF5160                 call    dword ptr [ecx+$60]
0079EAD5   837DC000               cmp     dword ptr [ebp-$40], +$00
0079EAD9   745C                   jz      0079EB37

* Possible String Reference to: 'DESCRICAO'
|
0079EADB   6868EB7900             push    $0079EB68
0079EAE0   8D45BC                 lea     eax, [ebp-$44]
0079EAE3   50                     push    eax
0079EAE4   8D55B0                 lea     edx, [ebp-$50]
0079EAE7   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EAEC   8B80000C0000           mov     eax, [eax+$0C00]
0079EAF2   8B08                   mov     ecx, [eax]
0079EAF4   FF5160                 call    dword ptr [ecx+$60]
0079EAF7   8B45B0                 mov     eax, [ebp-$50]
0079EAFA   8D55B4                 lea     edx, [ebp-$4C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079EAFD   E81E500000             call    007A3B20
0079EB02   8B4DB4                 mov     ecx, [ebp-$4C]
0079EB05   8D45B8                 lea     eax, [ebp-$48]

* Possible String Reference to: 'CODIMPR = '
|
0079EB08   BAF0EB7900             mov     edx, $0079EBF0

* Reference to: System.@LStrCat3;
|
0079EB0D   E8966CC6FF             call    004057A8
0079EB12   8B4DB8                 mov     ecx, [ebp-$48]

* Possible String Reference to: 'IMPRGRILL'
|
0079EB15   BA04EC7900             mov     edx, $0079EC04
0079EB1A   33C0                   xor     eax, eax

|
0079EB1C   E8EFA70000             call    007A9310
0079EB21   8B55BC                 mov     edx, [ebp-$44]
0079EB24   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EB29   8B80040C0000           mov     eax, [eax+$0C04]
0079EB2F   8B08                   mov     ecx, [eax]
0079EB31   FF91B0000000           call    dword ptr [ecx+$00B0]
0079EB37   33C0                   xor     eax, eax
0079EB39   5A                     pop     edx
0079EB3A   59                     pop     ecx
0079EB3B   59                     pop     ecx
0079EB3C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãÂ]√'
|
0079EB3F   6859EB7900             push    $0079EB59
0079EB44   8D45B0                 lea     eax, [ebp-$50]
0079EB47   BA14000000             mov     edx, $00000014

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079EB4C   E86F69C6FF             call    004054C0
0079EB51   C3                     ret


* Reference to: System.@HandleFinally;
|
0079EB52   E9E161C6FF             jmp     00404D38
0079EB57   EBEB                   jmp     0079EB44

****** END
|
0079EB59   8BE5                   mov     esp, ebp
0079EB5B   5D                     pop     ebp
0079EB5C   C3                     ret

*)
end;

procedure TDm1.TbMesaFuncCalcFields(Sender : TObject);
begin
(*
0079EC10   55                     push    ebp
0079EC11   8BEC                   mov     ebp, esp
0079EC13   33C9                   xor     ecx, ecx
0079EC15   51                     push    ecx
0079EC16   51                     push    ecx
0079EC17   51                     push    ecx
0079EC18   51                     push    ecx
0079EC19   51                     push    ecx
0079EC1A   51                     push    ecx
0079EC1B   51                     push    ecx
0079EC1C   33C0                   xor     eax, eax
0079EC1E   55                     push    ebp
0079EC1F   6818ED7900             push    $0079ED18

***** TRY
|
0079EC24   64FF30                 push    dword ptr fs:[eax]
0079EC27   648920                 mov     fs:[eax], esp
0079EC2A   8D55F8                 lea     edx, [ebp-$08]
0079EC2D   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EC32   8B809C050000           mov     eax, [eax+$059C]
0079EC38   8B08                   mov     ecx, [eax]
0079EC3A   FF5160                 call    dword ptr [ecx+$60]
0079EC3D   837DF800               cmp     dword ptr [ebp-$08], +$00
0079EC41   0F84A0000000           jz      0079ECE7
0079EC47   6A00                   push    $00
0079EC49   8D45FC                 lea     eax, [ebp-$04]
0079EC4C   B901000000             mov     ecx, $00000001

* Reference to object tLookup
|
0079EC51   8B1514515D00           mov     edx, [$005D5114]

* Reference to: System.@DynArraySetLength;
|
0079EC57   E8547FC6FF             call    00406BB0
0079EC5C   83C404                 add     esp, +$04

* Possible String Reference to: 'Nome'
|
0079EC5F   B82CED7900             mov     eax, $0079ED2C
0079EC64   8945F0                 mov     [ebp-$10], eax

* Possible String Reference to: 'Fantasia'
|
0079EC67   B83CED7900             mov     eax, $0079ED3C
0079EC6C   8945F4                 mov     [ebp-$0C], eax
0079EC6F   8D45F0                 lea     eax, [ebp-$10]
0079EC72   50                     push    eax
0079EC73   6A01                   push    $01
0079EC75   8D45FC                 lea     eax, [ebp-$04]
0079EC78   50                     push    eax
0079EC79   8D55E4                 lea     edx, [ebp-$1C]
0079EC7C   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EC81   8B809C050000           mov     eax, [eax+$059C]
0079EC87   8B08                   mov     ecx, [eax]
0079EC89   FF5160                 call    dword ptr [ecx+$60]
0079EC8C   8B45E4                 mov     eax, [ebp-$1C]
0079EC8F   8D55E8                 lea     edx, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079EC92   E8894E0000             call    007A3B20
0079EC97   8B4DE8                 mov     ecx, [ebp-$18]
0079EC9A   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'CODFUNC = '
|
0079EC9D   BA50ED7900             mov     edx, $0079ED50

* Reference to: System.@LStrCat3;
|
0079ECA2   E8016BC6FF             call    004057A8
0079ECA7   8B4DEC                 mov     ecx, [ebp-$14]

* Possible String Reference to: 'FUNCREPR'
|
0079ECAA   BA64ED7900             mov     edx, $0079ED64
0079ECAF   33C0                   xor     eax, eax

* Reference to: IBSecurityEditor.TfrmIBSecurityEditor.AddParam(TfrmIBSecurityEditor;AnsiString;AnsiString);
|
0079ECB1   E84AA80000             call    007A9500
0079ECB6   8B45FC                 mov     eax, [ebp-$04]
0079ECB9   8B10                   mov     edx, [eax]
0079ECBB   A170F57D00             mov     eax, dword ptr [$007DF570]
0079ECC0   8B80A4050000           mov     eax, [eax+$05A4]
0079ECC6   8B08                   mov     ecx, [eax]
0079ECC8   FF91B0000000           call    dword ptr [ecx+$00B0]
0079ECCE   8B45FC                 mov     eax, [ebp-$04]
0079ECD1   8B5004                 mov     edx, [eax+$04]
0079ECD4   A170F57D00             mov     eax, dword ptr [$007DF570]
0079ECD9   8B80A8050000           mov     eax, [eax+$05A8]
0079ECDF   8B08                   mov     ecx, [eax]
0079ECE1   FF91B0000000           call    dword ptr [ecx+$00B0]
0079ECE7   33C0                   xor     eax, eax
0079ECE9   5A                     pop     edx
0079ECEA   59                     pop     ecx
0079ECEB   59                     pop     ecx
0079ECEC   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãÂ]√'
|
0079ECEF   681FED7900             push    $0079ED1F
0079ECF4   8D45E4                 lea     eax, [ebp-$1C]
0079ECF7   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079ECFC   E8BF67C6FF             call    004054C0
0079ED01   8D45F8                 lea     eax, [ebp-$08]

* Reference to: System.@LStrClr(void;void);
|
0079ED04   E89367C6FF             call    0040549C
0079ED09   8D45FC                 lea     eax, [ebp-$04]

* Reference to object tLookup
|
0079ED0C   8B1514515D00           mov     edx, [$005D5114]

* Reference to: System.@DynArrayClear(Pointer;Pointer;Pointer);
|
0079ED12   E8B97FC6FF             call    00406CD0
0079ED17   C3                     ret


* Reference to: System.@HandleFinally;
|
0079ED18   E91B60C6FF             jmp     00404D38
0079ED1D   EBD5                   jmp     0079ECF4

****** END
|
0079ED1F   8BE5                   mov     esp, ebp
0079ED21   5D                     pop     ebp
0079ED22   C3                     ret

*)
end;

procedure TDm1.TbMesaFuncNewRecord(Sender : TObject);
begin
(*
0079ED70   55                     push    ebp
0079ED71   8BEC                   mov     ebp, esp
0079ED73   A170F57D00             mov     eax, dword ptr [$007DF570]
0079ED78   8B8004020000           mov     eax, [eax+$0204]
0079ED7E   8B10                   mov     edx, [eax]
0079ED80   FF5258                 call    dword ptr [edx+$58]
0079ED83   8BD0                   mov     edx, eax
0079ED85   A170F57D00             mov     eax, dword ptr [$007DF570]
0079ED8A   8B8098050000           mov     eax, [eax+$0598]
0079ED90   8B08                   mov     ecx, [eax]
0079ED92   FF91A8000000           call    dword ptr [ecx+$00A8]
0079ED98   5D                     pop     ebp
0079ED99   C3                     ret

*)
end;

procedure TDm1.TbProdutosCalcFields(Sender : TObject);
begin
(*
0079ED9C   55                     push    ebp
0079ED9D   8BEC                   mov     ebp, esp
0079ED9F   B90C000000             mov     ecx, $0000000C
0079EDA4   6A00                   push    $00
0079EDA6   6A00                   push    $00
0079EDA8   49                     dec     ecx
0079EDA9   75F9                   jnz     0079EDA4
0079EDAB   51                     push    ecx
0079EDAC   33C0                   xor     eax, eax
0079EDAE   55                     push    ebp
0079EDAF   682CF07900             push    $0079F02C

***** TRY
|
0079EDB4   64FF30                 push    dword ptr fs:[eax]
0079EDB7   648920                 mov     fs:[eax], esp
0079EDBA   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
0079EDBF   803800                 cmp     byte ptr [eax], $00
0079EDC2   0F8449020000           jz      0079F011
0079EDC8   8D55FC                 lea     edx, [ebp-$04]
0079EDCB   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EDD0   8B8054060000           mov     eax, [eax+$0654]
0079EDD6   8B08                   mov     ecx, [eax]
0079EDD8   FF5160                 call    dword ptr [ecx+$60]
0079EDDB   837DFC00               cmp     dword ptr [ebp-$04], +$00
0079EDDF   745C                   jz      0079EE3D

* Possible String Reference to: 'DESCRICAO'
|
0079EDE1   6840F07900             push    $0079F040
0079EDE6   8D45F8                 lea     eax, [ebp-$08]
0079EDE9   50                     push    eax
0079EDEA   8D55EC                 lea     edx, [ebp-$14]
0079EDED   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EDF2   8B8054060000           mov     eax, [eax+$0654]
0079EDF8   8B08                   mov     ecx, [eax]
0079EDFA   FF5160                 call    dword ptr [ecx+$60]
0079EDFD   8B45EC                 mov     eax, [ebp-$14]
0079EE00   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079EE03   E8184D0000             call    007A3B20
0079EE08   8B4DF0                 mov     ecx, [ebp-$10]
0079EE0B   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODSETOR = '
|
0079EE0E   BA54F07900             mov     edx, $0079F054

* Reference to: System.@LStrCat3;
|
0079EE13   E89069C6FF             call    004057A8
0079EE18   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'SETORES'
|
0079EE1B   BA68F07900             mov     edx, $0079F068
0079EE20   33C0                   xor     eax, eax

|
0079EE22   E8E9A40000             call    007A9310
0079EE27   8B55F8                 mov     edx, [ebp-$08]
0079EE2A   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EE2F   8B80A8060000           mov     eax, [eax+$06A8]
0079EE35   8B08                   mov     ecx, [eax]
0079EE37   FF91B0000000           call    dword ptr [ecx+$00B0]
0079EE3D   8D55E8                 lea     edx, [ebp-$18]
0079EE40   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EE45   8B8038060000           mov     eax, [eax+$0638]
0079EE4B   8B08                   mov     ecx, [eax]
0079EE4D   FF5160                 call    dword ptr [ecx+$60]
0079EE50   837DE800               cmp     dword ptr [ebp-$18], +$00
0079EE54   745C                   jz      0079EEB2

* Possible String Reference to: 'DESCRICAO'
|
0079EE56   6840F07900             push    $0079F040
0079EE5B   8D45E4                 lea     eax, [ebp-$1C]
0079EE5E   50                     push    eax
0079EE5F   8D55D8                 lea     edx, [ebp-$28]
0079EE62   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EE67   8B8038060000           mov     eax, [eax+$0638]
0079EE6D   8B08                   mov     ecx, [eax]
0079EE6F   FF5160                 call    dword ptr [ecx+$60]
0079EE72   8B45D8                 mov     eax, [ebp-$28]
0079EE75   8D55DC                 lea     edx, [ebp-$24]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079EE78   E8A34C0000             call    007A3B20
0079EE7D   8B4DDC                 mov     ecx, [ebp-$24]
0079EE80   8D45E0                 lea     eax, [ebp-$20]

* Possible String Reference to: 'CLASSFISC = '
|
0079EE83   BA78F07900             mov     edx, $0079F078

* Reference to: System.@LStrCat3;
|
0079EE88   E81B69C6FF             call    004057A8
0079EE8D   8B4DE0                 mov     ecx, [ebp-$20]

* Possible String Reference to: 'CLASFISC'
|
0079EE90   BA90F07900             mov     edx, $0079F090
0079EE95   33C0                   xor     eax, eax

|
0079EE97   E874A40000             call    007A9310
0079EE9C   8B55E4                 mov     edx, [ebp-$1C]
0079EE9F   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EEA4   8B80AC060000           mov     eax, [eax+$06AC]
0079EEAA   8B08                   mov     ecx, [eax]
0079EEAC   FF91B0000000           call    dword ptr [ecx+$00B0]
0079EEB2   8D55D4                 lea     edx, [ebp-$2C]
0079EEB5   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EEBA   8B802C060000           mov     eax, [eax+$062C]
0079EEC0   8B08                   mov     ecx, [eax]
0079EEC2   FF5160                 call    dword ptr [ecx+$60]
0079EEC5   837DD400               cmp     dword ptr [ebp-$2C], +$00
0079EEC9   745C                   jz      0079EF27

* Possible String Reference to: 'DESCRICAO'
|
0079EECB   6840F07900             push    $0079F040
0079EED0   8D45D0                 lea     eax, [ebp-$30]
0079EED3   50                     push    eax
0079EED4   8D55C4                 lea     edx, [ebp-$3C]
0079EED7   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EEDC   8B802C060000           mov     eax, [eax+$062C]
0079EEE2   8B08                   mov     ecx, [eax]
0079EEE4   FF5160                 call    dword ptr [ecx+$60]
0079EEE7   8B45C4                 mov     eax, [ebp-$3C]
0079EEEA   8D55C8                 lea     edx, [ebp-$38]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079EEED   E82E4C0000             call    007A3B20
0079EEF2   8B4DC8                 mov     ecx, [ebp-$38]
0079EEF5   8D45CC                 lea     eax, [ebp-$34]

* Possible String Reference to: 'SITTRIB = '
|
0079EEF8   BAA4F07900             mov     edx, $0079F0A4

* Reference to: System.@LStrCat3;
|
0079EEFD   E8A668C6FF             call    004057A8
0079EF02   8B4DCC                 mov     ecx, [ebp-$34]

* Possible String Reference to: 'SITTRIB'
|
0079EF05   BAB8F07900             mov     edx, $0079F0B8
0079EF0A   33C0                   xor     eax, eax

|
0079EF0C   E8FFA30000             call    007A9310
0079EF11   8B55D0                 mov     edx, [ebp-$30]
0079EF14   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EF19   8B80B0060000           mov     eax, [eax+$06B0]
0079EF1F   8B08                   mov     ecx, [eax]
0079EF21   FF91B0000000           call    dword ptr [ecx+$00B0]
0079EF27   8D55C0                 lea     edx, [ebp-$40]
0079EF2A   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EF2F   8B8030060000           mov     eax, [eax+$0630]
0079EF35   8B08                   mov     ecx, [eax]
0079EF37   FF5160                 call    dword ptr [ecx+$60]
0079EF3A   837DC000               cmp     dword ptr [ebp-$40], +$00
0079EF3E   745C                   jz      0079EF9C

* Possible String Reference to: 'DESCRICAO'
|
0079EF40   6840F07900             push    $0079F040
0079EF45   8D45BC                 lea     eax, [ebp-$44]
0079EF48   50                     push    eax
0079EF49   8D55B0                 lea     edx, [ebp-$50]
0079EF4C   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EF51   8B8030060000           mov     eax, [eax+$0630]
0079EF57   8B08                   mov     ecx, [eax]
0079EF59   FF5160                 call    dword ptr [ecx+$60]
0079EF5C   8B45B0                 mov     eax, [ebp-$50]
0079EF5F   8D55B4                 lea     edx, [ebp-$4C]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079EF62   E8B94B0000             call    007A3B20
0079EF67   8B4DB4                 mov     ecx, [ebp-$4C]
0079EF6A   8D45B8                 lea     eax, [ebp-$48]

* Possible String Reference to: 'SITTRIB = '
|
0079EF6D   BAA4F07900             mov     edx, $0079F0A4

* Reference to: System.@LStrCat3;
|
0079EF72   E83168C6FF             call    004057A8
0079EF77   8B4DB8                 mov     ecx, [ebp-$48]

* Possible String Reference to: 'SITTRIB'
|
0079EF7A   BAB8F07900             mov     edx, $0079F0B8
0079EF7F   33C0                   xor     eax, eax

|
0079EF81   E88AA30000             call    007A9310
0079EF86   8B55BC                 mov     edx, [ebp-$44]
0079EF89   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EF8E   8B80B4060000           mov     eax, [eax+$06B4]
0079EF94   8B08                   mov     ecx, [eax]
0079EF96   FF91B0000000           call    dword ptr [ecx+$00B0]
0079EF9C   8D55AC                 lea     edx, [ebp-$54]
0079EF9F   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EFA4   8B8034060000           mov     eax, [eax+$0634]
0079EFAA   8B08                   mov     ecx, [eax]
0079EFAC   FF5160                 call    dword ptr [ecx+$60]
0079EFAF   837DAC00               cmp     dword ptr [ebp-$54], +$00
0079EFB3   745C                   jz      0079F011

* Possible String Reference to: 'DESCRICAO'
|
0079EFB5   6840F07900             push    $0079F040
0079EFBA   8D45A8                 lea     eax, [ebp-$58]
0079EFBD   50                     push    eax
0079EFBE   8D559C                 lea     edx, [ebp-$64]
0079EFC1   A170F57D00             mov     eax, dword ptr [$007DF570]
0079EFC6   8B8034060000           mov     eax, [eax+$0634]
0079EFCC   8B08                   mov     ecx, [eax]
0079EFCE   FF5160                 call    dword ptr [ecx+$60]
0079EFD1   8B459C                 mov     eax, [ebp-$64]
0079EFD4   8D55A0                 lea     edx, [ebp-$60]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079EFD7   E8444B0000             call    007A3B20
0079EFDC   8B4DA0                 mov     ecx, [ebp-$60]
0079EFDF   8D45A4                 lea     eax, [ebp-$5C]

* Possible String Reference to: 'SITTRIB = '
|
0079EFE2   BAA4F07900             mov     edx, $0079F0A4

* Reference to: System.@LStrCat3;
|
0079EFE7   E8BC67C6FF             call    004057A8
0079EFEC   8B4DA4                 mov     ecx, [ebp-$5C]

* Possible String Reference to: 'SITTRIB'
|
0079EFEF   BAB8F07900             mov     edx, $0079F0B8
0079EFF4   33C0                   xor     eax, eax

|
0079EFF6   E815A30000             call    007A9310
0079EFFB   8B55A8                 mov     edx, [ebp-$58]
0079EFFE   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F003   8B80B8060000           mov     eax, [eax+$06B8]
0079F009   8B08                   mov     ecx, [eax]
0079F00B   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F011   33C0                   xor     eax, eax
0079F013   5A                     pop     edx
0079F014   59                     pop     ecx
0079F015   59                     pop     ecx
0079F016   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãÂ]√'
|
0079F019   6833F07900             push    $0079F033
0079F01E   8D459C                 lea     eax, [ebp-$64]
0079F021   BA19000000             mov     edx, $00000019

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079F026   E89564C6FF             call    004054C0
0079F02B   C3                     ret


* Reference to: System.@HandleFinally;
|
0079F02C   E9075DC6FF             jmp     00404D38
0079F031   EBEB                   jmp     0079F01E

****** END
|
0079F033   8BE5                   mov     esp, ebp
0079F035   5D                     pop     ebp
0079F036   C3                     ret

*)
end;

procedure TDm1.TbProdCmplCalcFields(Sender : TObject);
begin
(*
0079F0C0   55                     push    ebp
0079F0C1   8BEC                   mov     ebp, esp
0079F0C3   33C9                   xor     ecx, ecx
0079F0C5   51                     push    ecx
0079F0C6   51                     push    ecx
0079F0C7   51                     push    ecx
0079F0C8   51                     push    ecx
0079F0C9   51                     push    ecx
0079F0CA   33C0                   xor     eax, eax
0079F0CC   55                     push    ebp

* Possible String Reference to: 'È¡[∆ˇÎÎãÂ]√'
|
0079F0CD   6872F17900             push    $0079F172

***** TRY
|
0079F0D2   64FF30                 push    dword ptr fs:[eax]
0079F0D5   648920                 mov     fs:[eax], esp
0079F0D8   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
0079F0DD   803800                 cmp     byte ptr [eax], $00
0079F0E0   7475                   jz      0079F157
0079F0E2   8D55FC                 lea     edx, [ebp-$04]
0079F0E5   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F0EA   8B80B4080000           mov     eax, [eax+$08B4]
0079F0F0   8B08                   mov     ecx, [eax]
0079F0F2   FF5160                 call    dword ptr [ecx+$60]
0079F0F5   837DFC00               cmp     dword ptr [ebp-$04], +$00
0079F0F9   745C                   jz      0079F157

* Possible String Reference to: 'DESCRICAO'
|
0079F0FB   6888F17900             push    $0079F188
0079F100   8D45F8                 lea     eax, [ebp-$08]
0079F103   50                     push    eax
0079F104   8D55EC                 lea     edx, [ebp-$14]
0079F107   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F10C   8B80B4080000           mov     eax, [eax+$08B4]
0079F112   8B08                   mov     ecx, [eax]
0079F114   FF5160                 call    dword ptr [ecx+$60]
0079F117   8B45EC                 mov     eax, [ebp-$14]
0079F11A   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079F11D   E8FE490000             call    007A3B20
0079F122   8B4DF0                 mov     ecx, [ebp-$10]
0079F125   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODCECUSTO = '
|
0079F128   BA9CF17900             mov     edx, $0079F19C

* Reference to: System.@LStrCat3;
|
0079F12D   E87666C6FF             call    004057A8
0079F132   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'CECUSTO'
|
0079F135   BAB4F17900             mov     edx, $0079F1B4
0079F13A   33C0                   xor     eax, eax

|
0079F13C   E8CFA10000             call    007A9310
0079F141   8B55F8                 mov     edx, [ebp-$08]
0079F144   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F149   8B80C8080000           mov     eax, [eax+$08C8]
0079F14F   8B08                   mov     ecx, [eax]
0079F151   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F157   33C0                   xor     eax, eax
0079F159   5A                     pop     edx
0079F15A   59                     pop     ecx
0079F15B   59                     pop     ecx
0079F15C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãÂ]√'
|
0079F15F   6879F17900             push    $0079F179
0079F164   8D45EC                 lea     eax, [ebp-$14]
0079F167   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079F16C   E84F63C6FF             call    004054C0
0079F171   C3                     ret


* Reference to: System.@HandleFinally;
|
0079F172   E9C15BC6FF             jmp     00404D38
0079F177   EBEB                   jmp     0079F164

****** END
|
0079F179   8BE5                   mov     esp, ebp
0079F17B   5D                     pop     ebp
0079F17C   C3                     ret

*)
end;

procedure TDm1.TbProdUnidCalcFields(Sender : TObject);
begin
(*
0079F1BC   55                     push    ebp
0079F1BD   8BEC                   mov     ebp, esp
0079F1BF   B905000000             mov     ecx, $00000005
0079F1C4   6A00                   push    $00
0079F1C6   6A00                   push    $00
0079F1C8   49                     dec     ecx
0079F1C9   75F9                   jnz     0079F1C4
0079F1CB   51                     push    ecx
0079F1CC   53                     push    ebx
0079F1CD   56                     push    esi
0079F1CE   57                     push    edi
0079F1CF   BE70F57D00             mov     esi, $007DF570
0079F1D4   33C0                   xor     eax, eax
0079F1D6   55                     push    ebp

* Possible String Reference to: 'ÈyX∆ˇÎ„_^[ãÂ]√'
|
0079F1D7   68BAF47900             push    $0079F4BA

***** TRY
|
0079F1DC   64FF30                 push    dword ptr fs:[eax]
0079F1DF   648920                 mov     fs:[eax], esp
0079F1E2   33C0                   xor     eax, eax
0079F1E4   55                     push    ebp
0079F1E5   6867F47900             push    $0079F467

***** TRY
|
0079F1EA   64FF30                 push    dword ptr fs:[eax]
0079F1ED   648920                 mov     fs:[eax], esp
0079F1F0   8B06                   mov     eax, [esi]
0079F1F2   8B8064070000           mov     eax, [eax+$0764]
0079F1F8   8B10                   mov     edx, [eax]
0079F1FA   FF5254                 call    dword ptr [edx+$54]
0079F1FD   D81DC8F47900           fcomp   dword ptr [$0079F4C8]
0079F203   DFE0                   fstsw   ax
0079F205   9E                     sahf
0079F206   0F8691000000           jbe     0079F29D
0079F20C   8B06                   mov     eax, [esi]
0079F20E   8B8068070000           mov     eax, [eax+$0768]
0079F214   8B10                   mov     edx, [eax]
0079F216   FF5254                 call    dword ptr [edx+$54]
0079F219   DD5DF8                 fstp    qword ptr [ebp-$08]
0079F21C   9B                     wait
0079F21D   8B06                   mov     eax, [esi]
0079F21F   8B8064070000           mov     eax, [eax+$0764]
0079F225   8B10                   mov     edx, [eax]
0079F227   FF5254                 call    dword ptr [edx+$54]
0079F22A   DD45F8                 fld     qword ptr [ebp-$08]

* Reference to: System.@FSafeDivideR;
|
0079F22D   E8C642C6FF             call    004034F8
0079F232   83C4F8                 add     esp, -$08
0079F235   DD1C24                 fstp    qword ptr [esp]
0079F238   9B                     wait
0079F239   8B06                   mov     eax, [esi]
0079F23B   8B80B8070000           mov     eax, [eax+$07B8]
0079F241   8B10                   mov     edx, [eax]
0079F243   FF92A4000000           call    dword ptr [edx+$00A4]
0079F249   8B06                   mov     eax, [esi]
0079F24B   8B8088070000           mov     eax, [eax+$0788]
0079F251   8B10                   mov     edx, [eax]
0079F253   FF5244                 call    dword ptr [edx+$44]
0079F256   84C0                   test    al, al
0079F258   7543                   jnz     0079F29D
0079F25A   8B06                   mov     eax, [esi]
0079F25C   8B8068070000           mov     eax, [eax+$0768]
0079F262   8B10                   mov     edx, [eax]
0079F264   FF5254                 call    dword ptr [edx+$54]
0079F267   DD5DF8                 fstp    qword ptr [ebp-$08]
0079F26A   9B                     wait
0079F26B   8B06                   mov     eax, [esi]
0079F26D   8B8064070000           mov     eax, [eax+$0764]
0079F273   8B10                   mov     edx, [eax]
0079F275   FF5254                 call    dword ptr [edx+$54]
0079F278   DD45F8                 fld     qword ptr [ebp-$08]

* Reference to: System.@FSafeDivideR;
|
0079F27B   E87842C6FF             call    004034F8
0079F280   D80DCCF47900           fmul    dword ptr [$0079F4CC]
0079F286   83C4F8                 add     esp, -$08
0079F289   DD1C24                 fstp    qword ptr [esp]
0079F28C   9B                     wait
0079F28D   8B06                   mov     eax, [esi]
0079F28F   8B80BC070000           mov     eax, [eax+$07BC]
0079F295   8B10                   mov     edx, [eax]
0079F297   FF92A4000000           call    dword ptr [edx+$00A4]
0079F29D   8D55F4                 lea     edx, [ebp-$0C]
0079F2A0   8B06                   mov     eax, [esi]
0079F2A2   8B8088030000           mov     eax, [eax+$0388]
0079F2A8   8B08                   mov     ecx, [eax]
0079F2AA   FF5160                 call    dword ptr [ecx+$60]
0079F2AD   8B55F4                 mov     edx, [ebp-$0C]
0079F2B0   B8D8F47900             mov     eax, $0079F4D8

* Reference to: System.@LStrPos;
|
0079F2B5   E8E667C6FF             call    00405AA0
0079F2BA   85C0                   test    eax, eax
0079F2BC   0F8EC8000000           jle     0079F38A
0079F2C2   8B06                   mov     eax, [esi]
0079F2C4   8B808C070000           mov     eax, [eax+$078C]
0079F2CA   8B10                   mov     edx, [eax]
0079F2CC   FF5254                 call    dword ptr [edx+$54]
0079F2CF   D81DC8F47900           fcomp   dword ptr [$0079F4C8]
0079F2D5   DFE0                   fstsw   ax
0079F2D7   9E                     sahf
0079F2D8   0F86AC000000           jbe     0079F38A
0079F2DE   8B06                   mov     eax, [esi]
0079F2E0   8B8068070000           mov     eax, [eax+$0768]
0079F2E6   8B10                   mov     edx, [eax]
0079F2E8   FF5254                 call    dword ptr [edx+$54]
0079F2EB   DD5DF8                 fstp    qword ptr [ebp-$08]
0079F2EE   9B                     wait
0079F2EF   8B06                   mov     eax, [esi]
0079F2F1   8B808C070000           mov     eax, [eax+$078C]
0079F2F7   8B10                   mov     edx, [eax]
0079F2F9   FF5254                 call    dword ptr [edx+$54]
0079F2FC   DC4DF8                 fmul    qword ptr [ebp-$08]
0079F2FF   DB2DDCF47900           fld     tbyte ptr [$0079F4DC]
0079F305   DEC9                   fmulp   st(1), st(0)
0079F307   DB7DE8                 fstp    tbyte ptr [ebp-$18]
0079F30A   9B                     wait
0079F30B   8B06                   mov     eax, [esi]
0079F30D   8B8068070000           mov     eax, [eax+$0768]
0079F313   8B10                   mov     edx, [eax]
0079F315   FF5254                 call    dword ptr [edx+$54]
0079F318   DB6DE8                 fld     tbyte ptr [ebp-$18]
0079F31B   DEC1                   faddp   st(1), st(0)
0079F31D   83C4F8                 add     esp, -$08
0079F320   DD1C24                 fstp    qword ptr [esp]
0079F323   9B                     wait
0079F324   8B06                   mov     eax, [esi]
0079F326   8B80C4070000           mov     eax, [eax+$07C4]
0079F32C   8B10                   mov     edx, [eax]
0079F32E   FF92A4000000           call    dword ptr [edx+$00A4]
0079F334   8B06                   mov     eax, [esi]
0079F336   8B80B8070000           mov     eax, [eax+$07B8]
0079F33C   8B10                   mov     edx, [eax]
0079F33E   FF5254                 call    dword ptr [edx+$54]
0079F341   DD5DF8                 fstp    qword ptr [ebp-$08]
0079F344   9B                     wait
0079F345   8B06                   mov     eax, [esi]
0079F347   8B808C070000           mov     eax, [eax+$078C]
0079F34D   8B10                   mov     edx, [eax]
0079F34F   FF5254                 call    dword ptr [edx+$54]
0079F352   DC4DF8                 fmul    qword ptr [ebp-$08]
0079F355   DB2DDCF47900           fld     tbyte ptr [$0079F4DC]
0079F35B   DEC9                   fmulp   st(1), st(0)
0079F35D   DB7DE8                 fstp    tbyte ptr [ebp-$18]
0079F360   9B                     wait
0079F361   8B06                   mov     eax, [esi]
0079F363   8B80B8070000           mov     eax, [eax+$07B8]
0079F369   8B10                   mov     edx, [eax]
0079F36B   FF5254                 call    dword ptr [edx+$54]
0079F36E   DB6DE8                 fld     tbyte ptr [ebp-$18]
0079F371   DEC1                   faddp   st(1), st(0)
0079F373   83C4F8                 add     esp, -$08
0079F376   DD1C24                 fstp    qword ptr [esp]
0079F379   9B                     wait
0079F37A   8B06                   mov     eax, [esi]
0079F37C   8B80B4070000           mov     eax, [eax+$07B4]
0079F382   8B10                   mov     edx, [eax]
0079F384   FF92A4000000           call    dword ptr [edx+$00A4]
0079F38A   33C0                   xor     eax, eax
0079F38C   55                     push    ebp

* Possible String Reference to: 'È6V∆ˇ∏Ùy'
|
0079F38D   6849F47900             push    $0079F449

***** TRY
|
0079F392   64FF30                 push    dword ptr fs:[eax]
0079F395   648920                 mov     fs:[eax], esp
0079F398   8D55E4                 lea     edx, [ebp-$1C]
0079F39B   8B06                   mov     eax, [esi]
0079F39D   8B8068070000           mov     eax, [eax+$0768]
0079F3A3   8B08                   mov     ecx, [eax]
0079F3A5   FF5160                 call    dword ptr [ecx+$60]
0079F3A8   8B45E4                 mov     eax, [ebp-$1C]

|
0079F3AB   E888290000             call    007A1D38
0079F3B0   D81DC8F47900           fcomp   dword ptr [$0079F4C8]
0079F3B6   DFE0                   fstsw   ax
0079F3B8   9E                     sahf
0079F3B9   7670                   jbe     0079F42B
0079F3BB   8D55E0                 lea     edx, [ebp-$20]
0079F3BE   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0079F3C3   8B00                   mov     eax, [eax]
0079F3C5   8B8038060000           mov     eax, [eax+$0638]
0079F3CB   8B08                   mov     ecx, [eax]
0079F3CD   FF5160                 call    dword ptr [ecx+$60]
0079F3D0   837DE000               cmp     dword ptr [ebp-$20], +$00
0079F3D4   7455                   jz      0079F42B
0079F3D6   8D55DC                 lea     edx, [ebp-$24]
0079F3D9   8B06                   mov     eax, [esi]
0079F3DB   8B8068070000           mov     eax, [eax+$0768]
0079F3E1   8B08                   mov     ecx, [eax]
0079F3E3   FF5160                 call    dword ptr [ecx+$60]
0079F3E6   8B45DC                 mov     eax, [ebp-$24]

|
0079F3E9   E84A290000             call    007A1D38
0079F3EE   83C4F4                 add     esp, -$0C
0079F3F1   DB3C24                 fstp    tbyte ptr [esp]
0079F3F4   9B                     wait
0079F3F5   8D55D8                 lea     edx, [ebp-$28]
0079F3F8   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0079F3FD   8B00                   mov     eax, [eax]
0079F3FF   8B8038060000           mov     eax, [eax+$0638]
0079F405   8B08                   mov     ecx, [eax]
0079F407   FF5160                 call    dword ptr [ecx+$60]
0079F40A   8B45D8                 mov     eax, [ebp-$28]

|
0079F40D   E8960B0100             call    007AFFA8
0079F412   83C4F8                 add     esp, -$08
0079F415   DD1C24                 fstp    qword ptr [esp]
0079F418   9B                     wait
0079F419   8B06                   mov     eax, [esi]
0079F41B   8B80C0070000           mov     eax, [eax+$07C0]
0079F421   8B10                   mov     edx, [eax]
0079F423   FF92A4000000           call    dword ptr [edx+$00A4]
0079F429   EB14                   jmp     0079F43F
0079F42B   6A00                   push    $00
0079F42D   6A00                   push    $00
0079F42F   8B06                   mov     eax, [esi]
0079F431   8B80C0070000           mov     eax, [eax+$07C0]
0079F437   8B10                   mov     edx, [eax]
0079F439   FF92A4000000           call    dword ptr [edx+$00A4]
0079F43F   33C0                   xor     eax, eax
0079F441   5A                     pop     edx
0079F442   59                     pop     ecx
0079F443   59                     pop     ecx
0079F444   648910                 mov     fs:[eax], edx
0079F447   EB14                   jmp     0079F45D

* Reference to: System.@HandleAnyException;
|
0079F449   E93656C6FF             jmp     00404A84

* Possible String Reference to: 'ExceÁ„o ao calcular o valor de tabe
|                                la (DM1 - tbProdUnid)'
|
0079F44E   B8F0F47900             mov     eax, $0079F4F0

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0079F453   E8CC47CAFF             call    00443C24

* Reference to: System.@DoneExcept;
|
0079F458   E8535AC6FF             call    00404EB0

****** END
|
0079F45D   33C0                   xor     eax, eax
0079F45F   5A                     pop     edx
0079F460   59                     pop     ecx
0079F461   59                     pop     ecx
0079F462   648910                 mov     fs:[eax], edx
0079F465   EB30                   jmp     0079F497

* Reference to: System.@HandleOnException;
|
0079F467   E94457C6FF             jmp     00404BB0
0079F46C   0100                   add     [eax], eax
0079F46E   0000                   add     [eax], al
0079F470   40                     inc     eax
0079F471   95                     xchg    eax, ebp
0079F472   40                     inc     eax
0079F473   0078F4                 add     [eax-$0C], bh
0079F476   7900                   jns     0079F478
0079F478   89C3                   mov     ebx, eax
0079F47A   8B4B04                 mov     ecx, [ebx+$04]
0079F47D   8D45D4                 lea     eax, [ebp-$2C]

* Possible String Reference to: 'Erro no evento OnCalcFields da tabe
|                                la tbProdUnid!'
|
0079F480   BA34F57900             mov     edx, $0079F534

* Reference to: System.@LStrCat3;
|
0079F485   E81E63C6FF             call    004057A8
0079F48A   8B45D4                 mov     eax, [ebp-$2C]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0079F48D   E89247CAFF             call    00443C24

* Reference to: System.@DoneExcept;
|
0079F492   E8195AC6FF             call    00404EB0

****** END
|
0079F497   33C0                   xor     eax, eax
0079F499   5A                     pop     edx
0079F49A   59                     pop     ecx
0079F49B   59                     pop     ecx
0079F49C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0079F49F   68C1F47900             push    $0079F4C1
0079F4A4   8D45D4                 lea     eax, [ebp-$2C]
0079F4A7   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079F4AC   E80F60C6FF             call    004054C0
0079F4B1   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0079F4B4   E8E35FC6FF             call    0040549C
0079F4B9   C3                     ret


* Reference to: System.@HandleFinally;
|
0079F4BA   E97958C6FF             jmp     00404D38
0079F4BF   EBE3                   jmp     0079F4A4

****** END
|
0079F4C1   5F                     pop     edi
0079F4C2   5E                     pop     esi
0079F4C3   5B                     pop     ebx
0079F4C4   8BE5                   mov     esp, ebp
0079F4C6   5D                     pop     ebp
0079F4C7   C3                     ret

*)
end;

procedure TDm1.TbProdSaldCalcFields(Sender : TObject);
begin
(*
0079F568   55                     push    ebp
0079F569   8BEC                   mov     ebp, esp
0079F56B   33C9                   xor     ecx, ecx
0079F56D   51                     push    ecx
0079F56E   51                     push    ecx
0079F56F   51                     push    ecx
0079F570   51                     push    ecx
0079F571   51                     push    ecx
0079F572   51                     push    ecx
0079F573   51                     push    ecx
0079F574   53                     push    ebx
0079F575   56                     push    esi
0079F576   57                     push    edi
0079F577   33C0                   xor     eax, eax
0079F579   55                     push    ebp

* Possible String Reference to: 'ÈßV∆ˇÎÎ_^[ãÂ]√'
|
0079F57A   688CF67900             push    $0079F68C

***** TRY
|
0079F57F   64FF30                 push    dword ptr fs:[eax]
0079F582   648920                 mov     fs:[eax], esp
0079F585   33C0                   xor     eax, eax
0079F587   55                     push    ebp
0079F588   6841F67900             push    $0079F641

***** TRY
|
0079F58D   64FF30                 push    dword ptr fs:[eax]
0079F590   648920                 mov     fs:[eax], esp
0079F593   8D55FC                 lea     edx, [ebp-$04]
0079F596   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F59B   8B80D4070000           mov     eax, [eax+$07D4]
0079F5A1   8B08                   mov     ecx, [eax]
0079F5A3   FF5160                 call    dword ptr [ecx+$60]
0079F5A6   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0079F5A9   E8AE61C6FF             call    0040575C
0079F5AE   83F806                 cmp     eax, +$06
0079F5B1   0F8580000000           jnz     0079F637
0079F5B7   8D45F4                 lea     eax, [ebp-$0C]
0079F5BA   50                     push    eax
0079F5BB   8D55F0                 lea     edx, [ebp-$10]
0079F5BE   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F5C3   8B80D4070000           mov     eax, [eax+$07D4]
0079F5C9   8B08                   mov     ecx, [eax]
0079F5CB   FF5160                 call    dword ptr [ecx+$60]
0079F5CE   8B45F0                 mov     eax, [ebp-$10]
0079F5D1   B902000000             mov     ecx, $00000002
0079F5D6   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCopy;
|
0079F5DB   E8DC63C6FF             call    004059BC
0079F5E0   FF75F4                 push    dword ptr [ebp-$0C]
0079F5E3   68A4F67900             push    $0079F6A4
0079F5E8   8D45EC                 lea     eax, [ebp-$14]
0079F5EB   50                     push    eax
0079F5EC   8D55E8                 lea     edx, [ebp-$18]
0079F5EF   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F5F4   8B80D4070000           mov     eax, [eax+$07D4]
0079F5FA   8B08                   mov     ecx, [eax]
0079F5FC   FF5160                 call    dword ptr [ecx+$60]
0079F5FF   8B45E8                 mov     eax, [ebp-$18]
0079F602   B904000000             mov     ecx, $00000004
0079F607   BA01000000             mov     edx, $00000001

* Reference to: System.@LStrCopy;
|
0079F60C   E8AB63C6FF             call    004059BC
0079F611   FF75EC                 push    dword ptr [ebp-$14]
0079F614   8D45F8                 lea     eax, [ebp-$08]
0079F617   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0079F61C   E8FB61C6FF             call    0040581C
0079F621   8B55F8                 mov     edx, [ebp-$08]
0079F624   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F629   8B8020080000           mov     eax, [eax+$0820]
0079F62F   8B08                   mov     ecx, [eax]
0079F631   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F637   33C0                   xor     eax, eax
0079F639   5A                     pop     edx
0079F63A   59                     pop     ecx
0079F63B   59                     pop     ecx
0079F63C   648910                 mov     fs:[eax], edx
0079F63F   EB30                   jmp     0079F671

* Reference to: System.@HandleOnException;
|
0079F641   E96A55C6FF             jmp     00404BB0
0079F646   0100                   add     [eax], eax
0079F648   0000                   add     [eax], al
0079F64A   40                     inc     eax
0079F64B   95                     xchg    eax, ebp
0079F64C   40                     inc     eax
0079F64D   0052F6                 add     [edx-$0A], dl
0079F650   7900                   jns     0079F652
0079F652   89C3                   mov     ebx, eax
0079F654   8B4B04                 mov     ecx, [ebx+$04]
0079F657   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'Erro no evento OnCalcFields da tabe
|                                la ProdSald!'
|
0079F65A   BAB0F67900             mov     edx, $0079F6B0

* Reference to: System.@LStrCat3;
|
0079F65F   E84461C6FF             call    004057A8
0079F664   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0079F667   E8B845CAFF             call    00443C24

* Reference to: System.@DoneExcept;
|
0079F66C   E83F58C6FF             call    00404EB0

****** END
|
0079F671   33C0                   xor     eax, eax
0079F673   5A                     pop     edx
0079F674   59                     pop     ecx
0079F675   59                     pop     ecx
0079F676   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0079F679   6893F67900             push    $0079F693
0079F67E   8D45E4                 lea     eax, [ebp-$1C]
0079F681   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079F686   E8355EC6FF             call    004054C0
0079F68B   C3                     ret


* Reference to: System.@HandleFinally;
|
0079F68C   E9A756C6FF             jmp     00404D38
0079F691   EBEB                   jmp     0079F67E

****** END
|
0079F693   5F                     pop     edi
0079F694   5E                     pop     esi
0079F695   5B                     pop     ebx
0079F696   8BE5                   mov     esp, ebp
0079F698   5D                     pop     ebp
0079F699   C3                     ret

*)
end;

procedure TDm1.TbProdLocalNewRecord(Sender : TObject);
begin
(*
0079F6E4   55                     push    ebp
0079F6E5   8BEC                   mov     ebp, esp
0079F6E7   6A00                   push    $00
0079F6E9   6A00                   push    $00
0079F6EB   33C0                   xor     eax, eax
0079F6ED   55                     push    ebp

* Possible String Reference to: 'ÈÕU∆ˇÎÎYY]√ç@'
|
0079F6EE   6866F77900             push    $0079F766

***** TRY
|
0079F6F3   64FF30                 push    dword ptr fs:[eax]
0079F6F6   648920                 mov     fs:[eax], esp
0079F6F9   8D55FC                 lea     edx, [ebp-$04]
0079F6FC   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F701   8B80C0060000           mov     eax, [eax+$06C0]
0079F707   8B08                   mov     ecx, [eax]
0079F709   FF5160                 call    dword ptr [ecx+$60]
0079F70C   8B55FC                 mov     edx, [ebp-$04]
0079F70F   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F714   8B802C080000           mov     eax, [eax+$082C]
0079F71A   8B08                   mov     ecx, [eax]
0079F71C   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F722   8D55F8                 lea     edx, [ebp-$08]
0079F725   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F72A   8B80C4060000           mov     eax, [eax+$06C4]
0079F730   8B08                   mov     ecx, [eax]
0079F732   FF5160                 call    dword ptr [ecx+$60]
0079F735   8B55F8                 mov     edx, [ebp-$08]
0079F738   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F73D   8B8030080000           mov     eax, [eax+$0830]
0079F743   8B08                   mov     ecx, [eax]
0079F745   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F74B   33C0                   xor     eax, eax
0079F74D   5A                     pop     edx
0079F74E   59                     pop     ecx
0079F74F   59                     pop     ecx
0079F750   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'YY]√ç@'
|
0079F753   686DF77900             push    $0079F76D
0079F758   8D45F8                 lea     eax, [ebp-$08]
0079F75B   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079F760   E85B5DC6FF             call    004054C0
0079F765   C3                     ret


* Reference to: System.@HandleFinally;
|
0079F766   E9CD55C6FF             jmp     00404D38
0079F76B   EBEB                   jmp     0079F758

****** END
|
0079F76D   59                     pop     ecx
0079F76E   59                     pop     ecx
0079F76F   5D                     pop     ebp
0079F770   C3                     ret

*)
end;

procedure TDm1.TbProdObsCalcFields(Sender : TObject);
begin
(*
0079F774   55                     push    ebp
0079F775   8BEC                   mov     ebp, esp
0079F777   33C9                   xor     ecx, ecx
0079F779   51                     push    ecx
0079F77A   51                     push    ecx
0079F77B   51                     push    ecx
0079F77C   51                     push    ecx
0079F77D   51                     push    ecx
0079F77E   33C0                   xor     eax, eax
0079F780   55                     push    ebp

* Possible String Reference to: 'ÈU∆ˇÎÎãÂ]√'
|
0079F781   6826F87900             push    $0079F826

***** TRY
|
0079F786   64FF30                 push    dword ptr fs:[eax]
0079F789   648920                 mov     fs:[eax], esp
0079F78C   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
0079F791   803800                 cmp     byte ptr [eax], $00
0079F794   7475                   jz      0079F80B
0079F796   8D55FC                 lea     edx, [ebp-$04]
0079F799   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F79E   8B80E8080000           mov     eax, [eax+$08E8]
0079F7A4   8B08                   mov     ecx, [eax]
0079F7A6   FF5160                 call    dword ptr [ecx+$60]
0079F7A9   837DFC00               cmp     dword ptr [ebp-$04], +$00
0079F7AD   745C                   jz      0079F80B

* Possible String Reference to: 'DESCRICAO'
|
0079F7AF   683CF87900             push    $0079F83C
0079F7B4   8D45F8                 lea     eax, [ebp-$08]
0079F7B7   50                     push    eax
0079F7B8   8D55EC                 lea     edx, [ebp-$14]
0079F7BB   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F7C0   8B80E8080000           mov     eax, [eax+$08E8]
0079F7C6   8B08                   mov     ecx, [eax]
0079F7C8   FF5160                 call    dword ptr [ecx+$60]
0079F7CB   8B45EC                 mov     eax, [ebp-$14]
0079F7CE   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079F7D1   E84A430000             call    007A3B20
0079F7D6   8B4DF0                 mov     ecx, [ebp-$10]
0079F7D9   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODOBS = '
|
0079F7DC   BA50F87900             mov     edx, $0079F850

* Reference to: System.@LStrCat3;
|
0079F7E1   E8C25FC6FF             call    004057A8
0079F7E6   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'OBSERV'
|
0079F7E9   BA64F87900             mov     edx, $0079F864
0079F7EE   33C0                   xor     eax, eax

|
0079F7F0   E81B9B0000             call    007A9310
0079F7F5   8B55F8                 mov     edx, [ebp-$08]
0079F7F8   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F7FD   8B80F0080000           mov     eax, [eax+$08F0]
0079F803   8B08                   mov     ecx, [eax]
0079F805   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F80B   33C0                   xor     eax, eax
0079F80D   5A                     pop     edx
0079F80E   59                     pop     ecx
0079F80F   59                     pop     ecx
0079F810   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãÂ]√'
|
0079F813   682DF87900             push    $0079F82D
0079F818   8D45EC                 lea     eax, [ebp-$14]
0079F81B   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079F820   E89B5CC6FF             call    004054C0
0079F825   C3                     ret


* Reference to: System.@HandleFinally;
|
0079F826   E90D55C6FF             jmp     00404D38
0079F82B   EBEB                   jmp     0079F818

****** END
|
0079F82D   8BE5                   mov     esp, ebp
0079F82F   5D                     pop     ebp
0079F830   C3                     ret

*)
end;

procedure TDm1.TbClientesCalcFields(Sender : TObject);
begin
(*
0079F86C   55                     push    ebp
0079F86D   8BEC                   mov     ebp, esp
0079F86F   B90A000000             mov     ecx, $0000000A
0079F874   6A00                   push    $00
0079F876   6A00                   push    $00
0079F878   49                     dec     ecx
0079F879   75F9                   jnz     0079F874
0079F87B   51                     push    ecx
0079F87C   53                     push    ebx
0079F87D   56                     push    esi
0079F87E   57                     push    edi
0079F87F   BB70F57D00             mov     ebx, $007DF570
0079F884   33C0                   xor     eax, eax
0079F886   55                     push    ebp

* Possible String Reference to: 'ÈHR∆ˇÎÎ_^[ãÂ]√'
|
0079F887   68EBFA7900             push    $0079FAEB

***** TRY
|
0079F88C   64FF30                 push    dword ptr fs:[eax]
0079F88F   648920                 mov     fs:[eax], esp
0079F892   33C0                   xor     eax, eax
0079F894   55                     push    ebp
0079F895   68A0FA7900             push    $0079FAA0

***** TRY
|
0079F89A   64FF30                 push    dword ptr fs:[eax]
0079F89D   648920                 mov     fs:[eax], esp
0079F8A0   8D55FC                 lea     edx, [ebp-$04]
0079F8A3   8B03                   mov     eax, [ebx]

* Reference to control TDm1.TbClientesCGCCLIE : TIBStringField
|
0079F8A5   8B80D8090000           mov     eax, [eax+$09D8]
0079F8AB   8B08                   mov     ecx, [eax]

* Possible reference to virtual method TIBStringField.OFFS_60
|
0079F8AD   FF5160                 call    dword ptr [ecx+$60]
0079F8B0   8B55FC                 mov     edx, [ebp-$04]
0079F8B3   8B03                   mov     eax, [ebx]

* Reference to field TIBStringField.OFFS_0A44
|
0079F8B5   8B80440A0000           mov     eax, [eax+$0A44]
0079F8BB   8B08                   mov     ecx, [eax]
0079F8BD   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F8C3   8D55F8                 lea     edx, [ebp-$08]
0079F8C6   8B03                   mov     eax, [ebx]
0079F8C8   8B80EC090000           mov     eax, [eax+$09EC]
0079F8CE   8B08                   mov     ecx, [eax]
0079F8D0   FF5160                 call    dword ptr [ecx+$60]
0079F8D3   8B45F8                 mov     eax, [ebp-$08]
0079F8D6   BA04FB7900             mov     edx, $0079FB04

* Reference to: System.@LStrCmp;
|
0079F8DB   E8C85FC6FF             call    004058A8
0079F8E0   7561                   jnz     0079F943
0079F8E2   8D55F0                 lea     edx, [ebp-$10]
0079F8E5   8B03                   mov     eax, [ebx]
0079F8E7   8B80D8090000           mov     eax, [eax+$09D8]
0079F8ED   8B08                   mov     ecx, [eax]
0079F8EF   FF5160                 call    dword ptr [ecx+$60]
0079F8F2   8B45F0                 mov     eax, [ebp-$10]
0079F8F5   8D55F4                 lea     edx, [ebp-$0C]

* Reference to : TFrmInfoAtu._PROC_007A0480()
|
0079F8F8   E8830B0000             call    007A0480
0079F8FD   8B45F4                 mov     eax, [ebp-$0C]

* Reference to: System.@LStrLen(String):Integer;
|
0079F900   E8575EC6FF             call    0040575C
0079F905   83F80B                 cmp     eax, +$0B
0079F908   0F85AB000000           jnz     0079F9B9
0079F90E   8D55E8                 lea     edx, [ebp-$18]
0079F911   8B03                   mov     eax, [ebx]
0079F913   8B80D8090000           mov     eax, [eax+$09D8]
0079F919   8B08                   mov     ecx, [eax]
0079F91B   FF5160                 call    dword ptr [ecx+$60]
0079F91E   8B55E8                 mov     edx, [ebp-$18]
0079F921   8D4DEC                 lea     ecx, [ebp-$14]

* Possible String Reference to: '###\.###\.###\-##;0;'
|
0079F924   B810FB7900             mov     eax, $0079FB10

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
0079F929   E886ECD2FF             call    004CE5B4
0079F92E   8B55EC                 mov     edx, [ebp-$14]
0079F931   8B03                   mov     eax, [ebx]
0079F933   8B80440A0000           mov     eax, [eax+$0A44]
0079F939   8B08                   mov     ecx, [eax]
0079F93B   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F941   EB76                   jmp     0079F9B9
0079F943   8D55E4                 lea     edx, [ebp-$1C]
0079F946   8B03                   mov     eax, [ebx]
0079F948   8B80EC090000           mov     eax, [eax+$09EC]
0079F94E   8B08                   mov     ecx, [eax]
0079F950   FF5160                 call    dword ptr [ecx+$60]
0079F953   8B45E4                 mov     eax, [ebp-$1C]
0079F956   BA30FB7900             mov     edx, $0079FB30

* Reference to: System.@LStrCmp;
|
0079F95B   E8485FC6FF             call    004058A8
0079F960   7557                   jnz     0079F9B9
0079F962   8D55DC                 lea     edx, [ebp-$24]
0079F965   8B03                   mov     eax, [ebx]
0079F967   8B80D8090000           mov     eax, [eax+$09D8]
0079F96D   8B08                   mov     ecx, [eax]
0079F96F   FF5160                 call    dword ptr [ecx+$60]
0079F972   8B45DC                 mov     eax, [ebp-$24]
0079F975   8D55E0                 lea     edx, [ebp-$20]

* Reference to : TFrmInfoAtu._PROC_007A0480()
|
0079F978   E8030B0000             call    007A0480
0079F97D   8B45E0                 mov     eax, [ebp-$20]

* Reference to: System.@LStrLen(String):Integer;
|
0079F980   E8D75DC6FF             call    0040575C
0079F985   83F80E                 cmp     eax, +$0E
0079F988   752F                   jnz     0079F9B9
0079F98A   8D55D4                 lea     edx, [ebp-$2C]
0079F98D   8B03                   mov     eax, [ebx]
0079F98F   8BB0440A0000           mov     esi, [eax+$0A44]
0079F995   8BC6                   mov     eax, esi
0079F997   8B08                   mov     ecx, [eax]
0079F999   FF5160                 call    dword ptr [ecx+$60]
0079F99C   8B55D4                 mov     edx, [ebp-$2C]
0079F99F   8D4DD8                 lea     ecx, [ebp-$28]

* Possible String Reference to: '##\.###\.###\/####\-##;0;'
|
0079F9A2   B83CFB7900             mov     eax, $0079FB3C

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
0079F9A7   E808ECD2FF             call    004CE5B4
0079F9AC   8B55D8                 mov     edx, [ebp-$28]
0079F9AF   8BC6                   mov     eax, esi
0079F9B1   8B08                   mov     ecx, [eax]
0079F9B3   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F9B9   8D55D0                 lea     edx, [ebp-$30]
0079F9BC   8B03                   mov     eax, [ebx]
0079F9BE   8B80F8090000           mov     eax, [eax+$09F8]
0079F9C4   8B08                   mov     ecx, [eax]
0079F9C6   FF5160                 call    dword ptr [ecx+$60]
0079F9C9   8B55D0                 mov     edx, [ebp-$30]
0079F9CC   8B03                   mov     eax, [ebx]
0079F9CE   8B80400A0000           mov     eax, [eax+$0A40]
0079F9D4   8B08                   mov     ecx, [eax]
0079F9D6   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F9DC   8D55C8                 lea     edx, [ebp-$38]
0079F9DF   8B03                   mov     eax, [ebx]
0079F9E1   8B80F8090000           mov     eax, [eax+$09F8]
0079F9E7   8B08                   mov     ecx, [eax]
0079F9E9   FF5160                 call    dword ptr [ecx+$60]
0079F9EC   8B45C8                 mov     eax, [ebp-$38]
0079F9EF   8D55CC                 lea     edx, [ebp-$34]

* Reference to : TFrmInfoAtu._PROC_007A0480()
|
0079F9F2   E8890A0000             call    007A0480
0079F9F7   8B45CC                 mov     eax, [ebp-$34]

* Reference to: System.@LStrLen(String):Integer;
|
0079F9FA   E85D5DC6FF             call    0040575C
0079F9FF   83F80B                 cmp     eax, +$0B
0079FA02   7537                   jnz     0079FA3B
0079FA04   8D55C0                 lea     edx, [ebp-$40]
0079FA07   8B03                   mov     eax, [ebx]
0079FA09   8B80F8090000           mov     eax, [eax+$09F8]
0079FA0F   8B08                   mov     ecx, [eax]
0079FA11   FF5160                 call    dword ptr [ecx+$60]
0079FA14   8B55C0                 mov     edx, [ebp-$40]
0079FA17   8D45C4                 lea     eax, [ebp-$3C]
0079FA1A   50                     push    eax

* Possible String Reference to: '###\.###\.###\-##;0;'
|
0079FA1B   B810FB7900             mov     eax, $0079FB10
0079FA20   59                     pop     ecx

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
0079FA21   E88EEBD2FF             call    004CE5B4
0079FA26   8B55C4                 mov     edx, [ebp-$3C]
0079FA29   8B03                   mov     eax, [ebx]
0079FA2B   8B80400A0000           mov     eax, [eax+$0A40]
0079FA31   8B08                   mov     ecx, [eax]
0079FA33   FF91B0000000           call    dword ptr [ecx+$00B0]
0079FA39   EB5B                   jmp     0079FA96
0079FA3B   8D55B8                 lea     edx, [ebp-$48]
0079FA3E   8B03                   mov     eax, [ebx]
0079FA40   8B80F8090000           mov     eax, [eax+$09F8]
0079FA46   8B08                   mov     ecx, [eax]
0079FA48   FF5160                 call    dword ptr [ecx+$60]
0079FA4B   8B45B8                 mov     eax, [ebp-$48]
0079FA4E   8D55BC                 lea     edx, [ebp-$44]

* Reference to : TFrmInfoAtu._PROC_007A0480()
|
0079FA51   E82A0A0000             call    007A0480
0079FA56   8B45BC                 mov     eax, [ebp-$44]

* Reference to: System.@LStrLen(String):Integer;
|
0079FA59   E8FE5CC6FF             call    0040575C
0079FA5E   83F80E                 cmp     eax, +$0E
0079FA61   7533                   jnz     0079FA96
0079FA63   8D55B0                 lea     edx, [ebp-$50]
0079FA66   8B03                   mov     eax, [ebx]
0079FA68   8B80F8090000           mov     eax, [eax+$09F8]
0079FA6E   8B08                   mov     ecx, [eax]
0079FA70   FF5160                 call    dword ptr [ecx+$60]
0079FA73   8B55B0                 mov     edx, [ebp-$50]
0079FA76   8D4DB4                 lea     ecx, [ebp-$4C]

* Possible String Reference to: '##\.###\.###\/####\-##;0;'
|
0079FA79   B83CFB7900             mov     eax, $0079FB3C

* Reference to: MaskUtils.FormatMaskText(AnsiString;AnsiString):AnsiString;
|
0079FA7E   E831EBD2FF             call    004CE5B4
0079FA83   8B55B4                 mov     edx, [ebp-$4C]
0079FA86   8B03                   mov     eax, [ebx]
0079FA88   8B80400A0000           mov     eax, [eax+$0A40]
0079FA8E   8B08                   mov     ecx, [eax]
0079FA90   FF91B0000000           call    dword ptr [ecx+$00B0]
0079FA96   33C0                   xor     eax, eax
0079FA98   5A                     pop     edx
0079FA99   59                     pop     ecx
0079FA9A   59                     pop     ecx
0079FA9B   648910                 mov     fs:[eax], edx
0079FA9E   EB30                   jmp     0079FAD0

* Reference to: System.@HandleOnException;
|
0079FAA0   E90B51C6FF             jmp     00404BB0
0079FAA5   0100                   add     [eax], eax
0079FAA7   0000                   add     [eax], al
0079FAA9   40                     inc     eax
0079FAAA   95                     xchg    eax, ebp
0079FAAB   40                     inc     eax
0079FAAC   00B1FA790089           add     [ecx+$890079FA], dh
0079FAB2   C3                     ret

0079FAB3   8B4B04                 mov     ecx, [ebx+$04]
0079FAB6   8D45AC                 lea     eax, [ebp-$54]

* Possible String Reference to: 'Erro no evento OnCalcFields de Clie
|                                ntes!'
|
0079FAB9   BA60FB7900             mov     edx, $0079FB60

* Reference to: System.@LStrCat3;
|
0079FABE   E8E55CC6FF             call    004057A8
0079FAC3   8B45AC                 mov     eax, [ebp-$54]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0079FAC6   E85941CAFF             call    00443C24

* Reference to: System.@DoneExcept;
|
0079FACB   E8E053C6FF             call    00404EB0

****** END
|
0079FAD0   33C0                   xor     eax, eax
0079FAD2   5A                     pop     edx
0079FAD3   59                     pop     ecx
0079FAD4   59                     pop     ecx
0079FAD5   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0079FAD8   68F2FA7900             push    $0079FAF2
0079FADD   8D45AC                 lea     eax, [ebp-$54]
0079FAE0   BA15000000             mov     edx, $00000015

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079FAE5   E8D659C6FF             call    004054C0
0079FAEA   C3                     ret

*)
end;

procedure TDm1.TbMesaItemCalcFields(Sender : TObject);
begin
(*
0079FB8C   55                     push    ebp
0079FB8D   8BEC                   mov     ebp, esp
0079FB8F   33C9                   xor     ecx, ecx
0079FB91   51                     push    ecx
0079FB92   51                     push    ecx
0079FB93   51                     push    ecx
0079FB94   51                     push    ecx
0079FB95   51                     push    ecx
0079FB96   53                     push    ebx
0079FB97   56                     push    esi
0079FB98   57                     push    edi
0079FB99   33C0                   xor     eax, eax
0079FB9B   55                     push    ebp

* Possible String Reference to: 'ÈáP∆ˇÎÎ_^[ãÂ]√'
|
0079FB9C   68ACFC7900             push    $0079FCAC

***** TRY
|
0079FBA1   64FF30                 push    dword ptr fs:[eax]
0079FBA4   648920                 mov     fs:[eax], esp
0079FBA7   33C0                   xor     eax, eax
0079FBA9   55                     push    ebp
0079FBAA   688AFC7900             push    $0079FC8A

***** TRY
|
0079FBAF   64FF30                 push    dword ptr fs:[eax]
0079FBB2   648920                 mov     fs:[eax], esp
0079FBB5   33C0                   xor     eax, eax
0079FBB7   55                     push    ebp
0079FBB8   6841FC7900             push    $0079FC41

***** TRY
|
0079FBBD   64FF30                 push    dword ptr fs:[eax]
0079FBC0   648920                 mov     fs:[eax], esp
0079FBC3   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
0079FBC8   803800                 cmp     byte ptr [eax], $00
0079FBCB   746A                   jz      0079FC37
0079FBCD   8D55FC                 lea     edx, [ebp-$04]
0079FBD0   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FBD5   8B80100C0000           mov     eax, [eax+$0C10]
0079FBDB   8B08                   mov     ecx, [eax]
0079FBDD   FF5160                 call    dword ptr [ecx+$60]
0079FBE0   837DFC00               cmp     dword ptr [ebp-$04], +$00
0079FBE4   7451                   jz      0079FC37

* Possible String Reference to: 'DESCRICAO'
|
0079FBE6   68C4FC7900             push    $0079FCC4
0079FBEB   8D45F8                 lea     eax, [ebp-$08]
0079FBEE   50                     push    eax
0079FBEF   8D55F0                 lea     edx, [ebp-$10]
0079FBF2   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FBF7   8B80100C0000           mov     eax, [eax+$0C10]
0079FBFD   8B08                   mov     ecx, [eax]
0079FBFF   FF5160                 call    dword ptr [ecx+$60]
0079FC02   8B4DF0                 mov     ecx, [ebp-$10]
0079FC05   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODIMPR = '
|
0079FC08   BAD8FC7900             mov     edx, $0079FCD8

* Reference to: System.@LStrCat3;
|
0079FC0D   E8965BC6FF             call    004057A8
0079FC12   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'IMPRGRILL'
|
0079FC15   BAECFC7900             mov     edx, $0079FCEC
0079FC1A   33C0                   xor     eax, eax

|
0079FC1C   E8EF960000             call    007A9310
0079FC21   8B55F8                 mov     edx, [ebp-$08]
0079FC24   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FC29   8B80E80B0000           mov     eax, [eax+$0BE8]
0079FC2F   8B08                   mov     ecx, [eax]
0079FC31   FF91B0000000           call    dword ptr [ecx+$00B0]
0079FC37   33C0                   xor     eax, eax
0079FC39   5A                     pop     edx
0079FC3A   59                     pop     ecx
0079FC3B   59                     pop     ecx
0079FC3C   648910                 mov     fs:[eax], edx
0079FC3F   EB3B                   jmp     0079FC7C

* Reference to: System.@HandleOnException;
|
0079FC41   E96A4FC6FF             jmp     00404BB0
0079FC46   0100                   add     [eax], eax
0079FC48   0000                   add     [eax], al
0079FC4A   40                     inc     eax
0079FC4B   95                     xchg    eax, ebp
0079FC4C   40                     inc     eax
0079FC4D   0052FC                 add     [edx-$04], dl
0079FC50   7900                   jns     0079FC52
0079FC52   89C3                   mov     ebx, eax
0079FC54   6A00                   push    $00
0079FC56   8B4B04                 mov     ecx, [ebx+$04]
0079FC59   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'Erro ao executar a rotina!'
|
0079FC5C   BA00FD7900             mov     edx, $0079FD00

* Reference to: System.@LStrCat3;
|
0079FC61   E8425BC6FF             call    004057A8
0079FC66   8B45EC                 mov     eax, [ebp-$14]
0079FC69   668B0D20FD7900         mov     cx, word ptr [$0079FD20]
0079FC70   B201                   mov     dl, $01

|
0079FC72   E8B53ECAFF             call    00443B2C

* Reference to: System.@DoneExcept;
|
0079FC77   E83452C6FF             call    00404EB0

****** END
|
0079FC7C   33C0                   xor     eax, eax
0079FC7E   5A                     pop     edx
0079FC7F   59                     pop     ecx
0079FC80   59                     pop     ecx
0079FC81   648910                 mov     fs:[eax], edx

****** FINALLY
|
0079FC84   6891FC7900             push    $0079FC91
0079FC89   C3                     ret


* Reference to: System.@HandleFinally;
|
0079FC8A   E9A950C6FF             jmp     00404D38
0079FC8F   EBF8                   jmp     0079FC89

****** END
|
0079FC91   33C0                   xor     eax, eax
0079FC93   5A                     pop     edx
0079FC94   59                     pop     ecx
0079FC95   59                     pop     ecx
0079FC96   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0079FC99   68B3FC7900             push    $0079FCB3
0079FC9E   8D45EC                 lea     eax, [ebp-$14]
0079FCA1   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079FCA6   E81558C6FF             call    004054C0
0079FCAB   C3                     ret


* Reference to: System.@HandleFinally;
|
0079FCAC   E98750C6FF             jmp     00404D38
0079FCB1   EBEB                   jmp     0079FC9E

****** END
|
0079FCB3   5F                     pop     edi
0079FCB4   5E                     pop     esi
0079FCB5   5B                     pop     ebx
0079FCB6   8BE5                   mov     esp, ebp
0079FCB8   5D                     pop     ebp
0079FCB9   C3                     ret

*)
end;

procedure TDm1.TbImpGrillCalcFields(Sender : TObject);
begin
(*
0079FD24   55                     push    ebp
0079FD25   8BEC                   mov     ebp, esp
0079FD27   33C9                   xor     ecx, ecx
0079FD29   51                     push    ecx
0079FD2A   51                     push    ecx
0079FD2B   51                     push    ecx
0079FD2C   51                     push    ecx
0079FD2D   51                     push    ecx
0079FD2E   33C0                   xor     eax, eax
0079FD30   55                     push    ebp

* Possible String Reference to: 'È]O∆ˇÎÎãÂ]√'
|
0079FD31   68D6FD7900             push    $0079FDD6

***** TRY
|
0079FD36   64FF30                 push    dword ptr fs:[eax]
0079FD39   648920                 mov     fs:[eax], esp
0079FD3C   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
0079FD41   803800                 cmp     byte ptr [eax], $00
0079FD44   7475                   jz      0079FDBB
0079FD46   8D55FC                 lea     edx, [ebp-$04]
0079FD49   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FD4E   8B80080C0000           mov     eax, [eax+$0C08]
0079FD54   8B08                   mov     ecx, [eax]
0079FD56   FF5160                 call    dword ptr [ecx+$60]
0079FD59   837DFC00               cmp     dword ptr [ebp-$04], +$00
0079FD5D   745C                   jz      0079FDBB

* Possible String Reference to: 'IMPRESSORA'
|
0079FD5F   68ECFD7900             push    $0079FDEC
0079FD64   8D45F8                 lea     eax, [ebp-$08]
0079FD67   50                     push    eax
0079FD68   8D55EC                 lea     edx, [ebp-$14]
0079FD6B   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FD70   8B80080C0000           mov     eax, [eax+$0C08]
0079FD76   8B08                   mov     ecx, [eax]
0079FD78   FF5160                 call    dword ptr [ecx+$60]
0079FD7B   8B45EC                 mov     eax, [ebp-$14]
0079FD7E   8D55F0                 lea     edx, [ebp-$10]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079FD81   E89A3D0000             call    007A3B20
0079FD86   8B4DF0                 mov     ecx, [ebp-$10]
0079FD89   8D45F4                 lea     eax, [ebp-$0C]

* Possible String Reference to: 'CODIMPRESSORA = '
|
0079FD8C   BA00FE7900             mov     edx, $0079FE00

* Reference to: System.@LStrCat3;
|
0079FD91   E8125AC6FF             call    004057A8
0079FD96   8B4DF4                 mov     ecx, [ebp-$0C]

* Possible String Reference to: 'IMPRESS'
|
0079FD99   BA1CFE7900             mov     edx, $0079FE1C
0079FD9E   33C0                   xor     eax, eax

|
0079FDA0   E86B950000             call    007A9310
0079FDA5   8B55F8                 mov     edx, [ebp-$08]
0079FDA8   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FDAD   8B800C0C0000           mov     eax, [eax+$0C0C]
0079FDB3   8B08                   mov     ecx, [eax]
0079FDB5   FF91B0000000           call    dword ptr [ecx+$00B0]
0079FDBB   33C0                   xor     eax, eax
0079FDBD   5A                     pop     edx
0079FDBE   59                     pop     ecx
0079FDBF   59                     pop     ecx
0079FDC0   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ãÂ]√'
|
0079FDC3   68DDFD7900             push    $0079FDDD
0079FDC8   8D45EC                 lea     eax, [ebp-$14]
0079FDCB   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079FDD0   E8EB56C6FF             call    004054C0
0079FDD5   C3                     ret


* Reference to: System.@HandleFinally;
|
0079FDD6   E95D4FC6FF             jmp     00404D38
0079FDDB   EBEB                   jmp     0079FDC8

****** END
|
0079FDDD   8BE5                   mov     esp, ebp
0079FDDF   5D                     pop     ebp
0079FDE0   C3                     ret

*)
end;

procedure TDm1.TbProdItemCalcFields(Sender : TObject);
begin
(*
0079FE24   55                     push    ebp
0079FE25   8BEC                   mov     ebp, esp
0079FE27   33C9                   xor     ecx, ecx
0079FE29   51                     push    ecx
0079FE2A   51                     push    ecx
0079FE2B   51                     push    ecx
0079FE2C   51                     push    ecx
0079FE2D   51                     push    ecx
0079FE2E   51                     push    ecx
0079FE2F   51                     push    ecx
0079FE30   33C0                   xor     eax, eax
0079FE32   55                     push    ebp
0079FE33   6835FF7900             push    $0079FF35

***** TRY
|
0079FE38   64FF30                 push    dword ptr fs:[eax]
0079FE3B   648920                 mov     fs:[eax], esp
0079FE3E   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FE43   8B8064080000           mov     eax, [eax+$0864]
0079FE49   8B10                   mov     edx, [eax]
0079FE4B   FF5254                 call    dword ptr [edx+$54]
0079FE4E   DD5DF8                 fstp    qword ptr [ebp-$08]
0079FE51   9B                     wait
0079FE52   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FE57   8B8068080000           mov     eax, [eax+$0868]
0079FE5D   8B10                   mov     edx, [eax]
0079FE5F   FF5254                 call    dword ptr [edx+$54]
0079FE62   DC4DF8                 fmul    qword ptr [ebp-$08]
0079FE65   83C4F8                 add     esp, -$08
0079FE68   DD1C24                 fstp    qword ptr [esp]
0079FE6B   9B                     wait
0079FE6C   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FE71   8B8040060000           mov     eax, [eax+$0640]
0079FE77   8B10                   mov     edx, [eax]
0079FE79   FF5258                 call    dword ptr [edx+$58]

|
0079FE7C   E883140000             call    007A1304
0079FE81   83C4F8                 add     esp, -$08
0079FE84   DD1C24                 fstp    qword ptr [esp]
0079FE87   9B                     wait
0079FE88   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FE8D   8B80880C0000           mov     eax, [eax+$0C88]
0079FE93   8B10                   mov     edx, [eax]
0079FE95   FF92A4000000           call    dword ptr [edx+$00A4]
0079FE9B   A1DCB17D00             mov     eax, dword ptr [$007DB1DC]
0079FEA0   803800                 cmp     byte ptr [eax], $00
0079FEA3   7475                   jz      0079FF1A
0079FEA5   8D55F4                 lea     edx, [ebp-$0C]
0079FEA8   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FEAD   8B8058080000           mov     eax, [eax+$0858]
0079FEB3   8B08                   mov     ecx, [eax]
0079FEB5   FF5160                 call    dword ptr [ecx+$60]
0079FEB8   837DF400               cmp     dword ptr [ebp-$0C], +$00
0079FEBC   745C                   jz      0079FF1A

* Possible String Reference to: 'DESCRICAO'
|
0079FEBE   6848FF7900             push    $0079FF48
0079FEC3   8D45F0                 lea     eax, [ebp-$10]
0079FEC6   50                     push    eax
0079FEC7   8D55E4                 lea     edx, [ebp-$1C]
0079FECA   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FECF   8B8058080000           mov     eax, [eax+$0858]
0079FED5   8B08                   mov     ecx, [eax]
0079FED7   FF5160                 call    dword ptr [ecx+$60]
0079FEDA   8B45E4                 mov     eax, [ebp-$1C]
0079FEDD   8D55E8                 lea     edx, [ebp-$18]

* Reference to : TFrmInfoAtu._PROC_007A3B20()
|
0079FEE0   E83B3C0000             call    007A3B20
0079FEE5   8B4DE8                 mov     ecx, [ebp-$18]
0079FEE8   8D45EC                 lea     eax, [ebp-$14]

* Possible String Reference to: 'CODPROD = '
|
0079FEEB   BA5CFF7900             mov     edx, $0079FF5C

* Reference to: System.@LStrCat3;
|
0079FEF0   E8B358C6FF             call    004057A8
0079FEF5   8B4DEC                 mov     ecx, [ebp-$14]

* Possible String Reference to: 'PRODUTOS'
|
0079FEF8   BA70FF7900             mov     edx, $0079FF70
0079FEFD   33C0                   xor     eax, eax

|
0079FEFF   E80C940000             call    007A9310
0079FF04   8B55F0                 mov     edx, [ebp-$10]
0079FF07   A170F57D00             mov     eax, dword ptr [$007DF570]
0079FF0C   8B808C0C0000           mov     eax, [eax+$0C8C]
0079FF12   8B08                   mov     ecx, [eax]
0079FF14   FF91B0000000           call    dword ptr [ecx+$00B0]
0079FF1A   33C0                   xor     eax, eax
0079FF1C   5A                     pop     edx
0079FF1D   59                     pop     ecx
0079FF1E   59                     pop     ecx
0079FF1F   648910                 mov     fs:[eax], edx

****** FINALLY
|
0079FF22   683CFF7900             push    $0079FF3C
0079FF27   8D45E4                 lea     eax, [ebp-$1C]
0079FF2A   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079FF2F   E88C55C6FF             call    004054C0
0079FF34   C3                     ret


* Reference to: System.@HandleFinally;
|
0079FF35   E9FE4DC6FF             jmp     00404D38
0079FF3A   EBEB                   jmp     0079FF27

****** END
|
0079FF3C   8BE5                   mov     esp, ebp
0079FF3E   5D                     pop     ebp
0079FF3F   C3                     ret

*)
end;

procedure TDm1._PROC_0079E30C(Sender : TObject);
begin
(*
0079E30C   55                     push    ebp
0079E30D   8BEC                   mov     ebp, esp
0079E30F   53                     push    ebx
0079E310   56                     push    esi
0079E311   57                     push    edi
0079E312   BE70F57D00             mov     esi, $007DF570
0079E317   8B3D78B47D00           mov     edi, [$007DB478]
0079E31D   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponentCount(TComponent):Integer;
|
0079E31F   E8DCFFC8FF             call    0042E300
0079E324   8BD8                   mov     ebx, eax
0079E326   4B                     dec     ebx
0079E327   83FB00                 cmp     ebx, +$00
0079E32A   0F8CF6000000           jl      0079E426
0079E330   8BD3                   mov     edx, ebx
0079E332   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
0079E334   E89BFFC8FF             call    0042E2D4

* Reference to class TIBDataSet
|
0079E339   8B15B4A55500           mov     edx, [$0055A5B4]

* Reference to: System.@IsClass(TObject;TClass):Boolean;
|
0079E33F   E8EC63C6FF             call    00404730
0079E344   84C0                   test    al, al
0079E346   0F84D0000000           jz      0079E41C
0079E34C   8BD3                   mov     edx, ebx
0079E34E   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
0079E350   E87FFFC8FF             call    0042E2D4
0079E355   8B17                   mov     edx, [edi]
0079E357   8990BC000000           mov     [eax+$00BC], edx

* Possible String Reference to: 'UãÏã¬ËÊ≤˛ˇ]√UãÏj'
|
0079E35D   C780B8000000E8CF7B00   mov     dword ptr [eax+$00B8], $007BCFE8
0079E367   8BD3                   mov     edx, ebx
0079E369   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
0079E36B   E864FFC8FF             call    0042E2D4
0079E370   83780C00               cmp     dword ptr [eax+$0C], +$00
0079E374   0F8EA2000000           jle     0079E41C
0079E37A   8BD3                   mov     edx, ebx
0079E37C   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
0079E37E   E851FFC8FF             call    0042E2D4
0079E383   8B17                   mov     edx, [edi]
0079E385   8990D4000000           mov     [eax+$00D4], edx

* Possible String Reference to: 'UãÏj'
|
0079E38B   C780D000000044D27B00   mov     dword ptr [eax+$00D0], $007BD244
0079E395   8BD3                   mov     edx, ebx
0079E397   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
0079E399   E836FFC8FF             call    0042E2D4
0079E39E   8B17                   mov     edx, [edi]
0079E3A0   8990E4000000           mov     [eax+$00E4], edx

* Possible String Reference to: 'UãÏ3…QQQQSVãÚ3¿Uhî—{'
|
0079E3A6   C780E0000000C8D07B00   mov     dword ptr [eax+$00E0], $007BD0C8
0079E3B0   8BD3                   mov     edx, ebx
0079E3B2   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
0079E3B4   E81BFFC8FF             call    0042E2D4
0079E3B9   8B17                   mov     edx, [edi]
0079E3BB   8990F4000000           mov     [eax+$00F4], edx

* Possible String Reference to: 'UãÏ3…QQQQSVWãÚã¯3¿Uhﬂ‘{'
|
0079E3C1   C780F0000000C0D37B00   mov     dword ptr [eax+$00F0], $007BD3C0
0079E3CB   8BD3                   mov     edx, ebx
0079E3CD   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
0079E3CF   E800FFC8FF             call    0042E2D4
0079E3D4   8B17                   mov     edx, [edi]
0079E3D6   8990DC000000           mov     [eax+$00DC], edx

* Possible String Reference to: 'UãÏËå˚ˇˇ]√ã¿UãÏã¬ËÊ≤˛ˇ]√UãÏj'
|
0079E3DC   C780D8000000DCCF7B00   mov     dword ptr [eax+$00D8], $007BCFDC
0079E3E6   8BD3                   mov     edx, ebx
0079E3E8   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
0079E3EA   E8E5FEC8FF             call    0042E2D4
0079E3EF   8B17                   mov     edx, [edi]
0079E3F1   8990FC000000           mov     [eax+$00FC], edx

* Possible String Reference to: 'UãÏj'
|
0079E3F7   C780F8000000F4CF7B00   mov     dword ptr [eax+$00F8], $007BCFF4
0079E401   8BD3                   mov     edx, ebx
0079E403   8B06                   mov     eax, [esi]

* Reference to: Classes.TComponent.GetComponent(TComponent;Integer):TComponent;
|
0079E405   E8CAFEC8FF             call    0042E2D4
0079E40A   8B17                   mov     edx, [edi]
0079E40C   89901C010000           mov     [eax+$011C], edx

* Possible String Reference to: 'UãÏj'
|
0079E412   C7801801000008CF7B00   mov     dword ptr [eax+$0118], $007BCF08
0079E41C   4B                     dec     ebx
0079E41D   83FBFF                 cmp     ebx, -$01
0079E420   0F850AFFFFFF           jnz     0079E330
0079E426   5F                     pop     edi
0079E427   5E                     pop     esi
0079E428   5B                     pop     ebx
0079E429   5D                     pop     ebp
0079E42A   C3                     ret

*)
end;

procedure TDm1._PROC_0079E58D(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0079E58D   E9A667C6FF             jmp     00404D38

|
0079E592   EBEB                   jmp     0079E57F
0079E594   5F                     pop     edi
0079E595   5E                     pop     esi
0079E596   5B                     pop     ebx
0079E597   8BE5                   mov     esp, ebp
0079E599   5D                     pop     ebp
0079E59A   C3                     ret

*)
end;

procedure TDm1._PROC_0079E8FD(Sender : TObject);
begin
(*
0079E8FD   4E                     dec     esi
0079E8FE   43                     inc     ebx
0079E8FF   203D200000FF           and     [$FF000020], bh
0079E905   FFFF                   DB  $FF, $FF  //      
0079E907   FF08                   dec     dword ptr [eax]
0079E909   0000                   add     [eax], al

*)
end;

procedure TDm1._PROC_0079E90E(Sender : TObject);
begin
(*
0079E90E   4E                     dec     esi
0079E90F   43                     inc     ebx
0079E910   52                     push    edx
0079E911   45                     inc     ebp
0079E912   50                     push    eax
0079E913   52                     push    edx
0079E914   0000                   add     [eax], al

*)
end;

procedure TDm1._PROC_0079EB7D(Sender : TObject);
begin
(*
0079EB7D   4E                     dec     esi
0079EB7E   49                     dec     ecx
0079EB7F   44                     inc     esp
0079EB80   4D                     dec     ebp
0079EB81   45                     inc     ebp
0079EB82   44                     inc     esp
0079EB83   203D200000FF           and     [$FF000020], bh
0079EB89   FFFF                   DB  $FF, $FF  //      
0079EB8B   FF07                   inc     dword ptr [edi]
0079EB8D   0000                   add     [eax], al

*)
end;

procedure TDm1._PROC_0079EB91(Sender : TObject);
begin
(*
0079EB91   4E                     dec     esi
0079EB92   49                     dec     ecx
0079EB93   44                     inc     esp
0079EB94   4D                     dec     ebp
0079EB95   45                     inc     ebp
0079EB96   44                     inc     esp
0079EB97   00FF                   add     bh, bh
0079EB99   FFFF                   DB  $FF, $FF  //      
0079EB9B   FF0C00                 dec     dword ptr [eax+eax]
0079EB9E   0000                   add     [eax], al

*)
end;

procedure TDm1._PROC_0079ED55(Sender : TObject);
begin
(*
0079ED55   4E                     dec     esi
0079ED56   43                     inc     ebx
0079ED57   203D200000FF           and     [$FF000020], bh
0079ED5D   FFFF                   DB  $FF, $FF  //      
0079ED5F   FF08                   dec     dword ptr [eax]
0079ED61   0000                   add     [eax], al

*)
end;

procedure TDm1._PROC_0079ED66(Sender : TObject);
begin
(*
0079ED66   4E                     dec     esi
0079ED67   43                     inc     ebx
0079ED68   52                     push    edx
0079ED69   45                     inc     ebp
0079ED6A   50                     push    eax
0079ED6B   52                     push    edx
0079ED6C   0000                   add     [eax], al

*)
end;

procedure TDm1._PROC_0079F1A3(Sender : TObject);
begin
(*
0079F1A3   53                     push    ebx
0079F1A4   54                     push    esp
0079F1A5   4F                     dec     edi
0079F1A6   203D20000000           and     [$00000020], bh
0079F1AC   FFFF                   DB  $FF, $FF  //      
0079F1AE   FFFF                   DB  $FF, $FF  //      
0079F1B0   07                     pop     es
0079F1B1   0000                   add     [eax], al

*)
end;

procedure TDm1._PROC_0079F1B8(Sender : TObject);
begin
(*
0079F1B8   53                     push    ebx
0079F1B9   54                     push    esp
0079F1BA   4F                     dec     edi
0079F1BB   00558B                 add     [ebp-$75], dl
0079F1BE   EC                     in      al, dx
0079F1BF   B905000000             mov     ecx, $00000005
0079F1C4   6A00                   push    $00
0079F1C6   6A00                   push    $00
0079F1C8   49                     dec     ecx
0079F1C9   75F9                   jnz     0079F1C4
0079F1CB   51                     push    ecx
0079F1CC   53                     push    ebx
0079F1CD   56                     push    esi
0079F1CE   57                     push    edi
0079F1CF   BE70F57D00             mov     esi, $007DF570
0079F1D4   33C0                   xor     eax, eax
0079F1D6   55                     push    ebp

* Possible String Reference to: 'ÈyX∆ˇÎ„_^[ãÂ]√'
|
0079F1D7   68BAF47900             push    $0079F4BA

***** TRY
|
0079F1DC   64FF30                 push    dword ptr fs:[eax]
0079F1DF   648920                 mov     fs:[eax], esp
0079F1E2   33C0                   xor     eax, eax
0079F1E4   55                     push    ebp
0079F1E5   6867F47900             push    $0079F467

***** TRY
|
0079F1EA   64FF30                 push    dword ptr fs:[eax]
0079F1ED   648920                 mov     fs:[eax], esp
0079F1F0   8B06                   mov     eax, [esi]
0079F1F2   8B8064070000           mov     eax, [eax+$0764]
0079F1F8   8B10                   mov     edx, [eax]
0079F1FA   FF5254                 call    dword ptr [edx+$54]
0079F1FD   D81DC8F47900           fcomp   dword ptr [$0079F4C8]
0079F203   DFE0                   fstsw   ax
0079F205   9E                     sahf
0079F206   0F8691000000           jbe     0079F29D
0079F20C   8B06                   mov     eax, [esi]
0079F20E   8B8068070000           mov     eax, [eax+$0768]
0079F214   8B10                   mov     edx, [eax]
0079F216   FF5254                 call    dword ptr [edx+$54]
0079F219   DD5DF8                 fstp    qword ptr [ebp-$08]
0079F21C   9B                     wait
0079F21D   8B06                   mov     eax, [esi]
0079F21F   8B8064070000           mov     eax, [eax+$0764]
0079F225   8B10                   mov     edx, [eax]
0079F227   FF5254                 call    dword ptr [edx+$54]
0079F22A   DD45F8                 fld     qword ptr [ebp-$08]

* Reference to: System.@FSafeDivideR;
|
0079F22D   E8C642C6FF             call    004034F8
0079F232   83C4F8                 add     esp, -$08
0079F235   DD1C24                 fstp    qword ptr [esp]
0079F238   9B                     wait
0079F239   8B06                   mov     eax, [esi]
0079F23B   8B80B8070000           mov     eax, [eax+$07B8]
0079F241   8B10                   mov     edx, [eax]
0079F243   FF92A4000000           call    dword ptr [edx+$00A4]
0079F249   8B06                   mov     eax, [esi]
0079F24B   8B8088070000           mov     eax, [eax+$0788]
0079F251   8B10                   mov     edx, [eax]
0079F253   FF5244                 call    dword ptr [edx+$44]
0079F256   84C0                   test    al, al
0079F258   7543                   jnz     0079F29D
0079F25A   8B06                   mov     eax, [esi]
0079F25C   8B8068070000           mov     eax, [eax+$0768]
0079F262   8B10                   mov     edx, [eax]
0079F264   FF5254                 call    dword ptr [edx+$54]
0079F267   DD5DF8                 fstp    qword ptr [ebp-$08]
0079F26A   9B                     wait
0079F26B   8B06                   mov     eax, [esi]
0079F26D   8B8064070000           mov     eax, [eax+$0764]
0079F273   8B10                   mov     edx, [eax]
0079F275   FF5254                 call    dword ptr [edx+$54]
0079F278   DD45F8                 fld     qword ptr [ebp-$08]

* Reference to: System.@FSafeDivideR;
|
0079F27B   E87842C6FF             call    004034F8
0079F280   D80DCCF47900           fmul    dword ptr [$0079F4CC]
0079F286   83C4F8                 add     esp, -$08
0079F289   DD1C24                 fstp    qword ptr [esp]
0079F28C   9B                     wait
0079F28D   8B06                   mov     eax, [esi]
0079F28F   8B80BC070000           mov     eax, [eax+$07BC]
0079F295   8B10                   mov     edx, [eax]
0079F297   FF92A4000000           call    dword ptr [edx+$00A4]
0079F29D   8D55F4                 lea     edx, [ebp-$0C]
0079F2A0   8B06                   mov     eax, [esi]
0079F2A2   8B8088030000           mov     eax, [eax+$0388]
0079F2A8   8B08                   mov     ecx, [eax]
0079F2AA   FF5160                 call    dword ptr [ecx+$60]
0079F2AD   8B55F4                 mov     edx, [ebp-$0C]
0079F2B0   B8D8F47900             mov     eax, $0079F4D8

* Reference to: System.@LStrPos;
|
0079F2B5   E8E667C6FF             call    00405AA0
0079F2BA   85C0                   test    eax, eax
0079F2BC   0F8EC8000000           jle     0079F38A
0079F2C2   8B06                   mov     eax, [esi]
0079F2C4   8B808C070000           mov     eax, [eax+$078C]
0079F2CA   8B10                   mov     edx, [eax]
0079F2CC   FF5254                 call    dword ptr [edx+$54]
0079F2CF   D81DC8F47900           fcomp   dword ptr [$0079F4C8]
0079F2D5   DFE0                   fstsw   ax
0079F2D7   9E                     sahf
0079F2D8   0F86AC000000           jbe     0079F38A
0079F2DE   8B06                   mov     eax, [esi]
0079F2E0   8B8068070000           mov     eax, [eax+$0768]
0079F2E6   8B10                   mov     edx, [eax]
0079F2E8   FF5254                 call    dword ptr [edx+$54]
0079F2EB   DD5DF8                 fstp    qword ptr [ebp-$08]
0079F2EE   9B                     wait
0079F2EF   8B06                   mov     eax, [esi]
0079F2F1   8B808C070000           mov     eax, [eax+$078C]
0079F2F7   8B10                   mov     edx, [eax]
0079F2F9   FF5254                 call    dword ptr [edx+$54]
0079F2FC   DC4DF8                 fmul    qword ptr [ebp-$08]
0079F2FF   DB2DDCF47900           fld     tbyte ptr [$0079F4DC]
0079F305   DEC9                   fmulp   st(1), st(0)
0079F307   DB7DE8                 fstp    tbyte ptr [ebp-$18]
0079F30A   9B                     wait
0079F30B   8B06                   mov     eax, [esi]
0079F30D   8B8068070000           mov     eax, [eax+$0768]
0079F313   8B10                   mov     edx, [eax]
0079F315   FF5254                 call    dword ptr [edx+$54]
0079F318   DB6DE8                 fld     tbyte ptr [ebp-$18]
0079F31B   DEC1                   faddp   st(1), st(0)
0079F31D   83C4F8                 add     esp, -$08
0079F320   DD1C24                 fstp    qword ptr [esp]
0079F323   9B                     wait
0079F324   8B06                   mov     eax, [esi]
0079F326   8B80C4070000           mov     eax, [eax+$07C4]
0079F32C   8B10                   mov     edx, [eax]
0079F32E   FF92A4000000           call    dword ptr [edx+$00A4]
0079F334   8B06                   mov     eax, [esi]
0079F336   8B80B8070000           mov     eax, [eax+$07B8]
0079F33C   8B10                   mov     edx, [eax]
0079F33E   FF5254                 call    dword ptr [edx+$54]
0079F341   DD5DF8                 fstp    qword ptr [ebp-$08]
0079F344   9B                     wait
0079F345   8B06                   mov     eax, [esi]
0079F347   8B808C070000           mov     eax, [eax+$078C]
0079F34D   8B10                   mov     edx, [eax]
0079F34F   FF5254                 call    dword ptr [edx+$54]
0079F352   DC4DF8                 fmul    qword ptr [ebp-$08]
0079F355   DB2DDCF47900           fld     tbyte ptr [$0079F4DC]
0079F35B   DEC9                   fmulp   st(1), st(0)
0079F35D   DB7DE8                 fstp    tbyte ptr [ebp-$18]
0079F360   9B                     wait
0079F361   8B06                   mov     eax, [esi]
0079F363   8B80B8070000           mov     eax, [eax+$07B8]
0079F369   8B10                   mov     edx, [eax]
0079F36B   FF5254                 call    dword ptr [edx+$54]
0079F36E   DB6DE8                 fld     tbyte ptr [ebp-$18]
0079F371   DEC1                   faddp   st(1), st(0)
0079F373   83C4F8                 add     esp, -$08
0079F376   DD1C24                 fstp    qword ptr [esp]
0079F379   9B                     wait
0079F37A   8B06                   mov     eax, [esi]
0079F37C   8B80B4070000           mov     eax, [eax+$07B4]
0079F382   8B10                   mov     edx, [eax]
0079F384   FF92A4000000           call    dword ptr [edx+$00A4]
0079F38A   33C0                   xor     eax, eax
0079F38C   55                     push    ebp

* Possible String Reference to: 'È6V∆ˇ∏Ùy'
|
0079F38D   6849F47900             push    $0079F449

***** TRY
|
0079F392   64FF30                 push    dword ptr fs:[eax]
0079F395   648920                 mov     fs:[eax], esp
0079F398   8D55E4                 lea     edx, [ebp-$1C]
0079F39B   8B06                   mov     eax, [esi]
0079F39D   8B8068070000           mov     eax, [eax+$0768]
0079F3A3   8B08                   mov     ecx, [eax]
0079F3A5   FF5160                 call    dword ptr [ecx+$60]
0079F3A8   8B45E4                 mov     eax, [ebp-$1C]

|
0079F3AB   E888290000             call    007A1D38
0079F3B0   D81DC8F47900           fcomp   dword ptr [$0079F4C8]
0079F3B6   DFE0                   fstsw   ax
0079F3B8   9E                     sahf
0079F3B9   7670                   jbe     0079F42B
0079F3BB   8D55E0                 lea     edx, [ebp-$20]
0079F3BE   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0079F3C3   8B00                   mov     eax, [eax]
0079F3C5   8B8038060000           mov     eax, [eax+$0638]
0079F3CB   8B08                   mov     ecx, [eax]
0079F3CD   FF5160                 call    dword ptr [ecx+$60]
0079F3D0   837DE000               cmp     dword ptr [ebp-$20], +$00
0079F3D4   7455                   jz      0079F42B
0079F3D6   8D55DC                 lea     edx, [ebp-$24]
0079F3D9   8B06                   mov     eax, [esi]
0079F3DB   8B8068070000           mov     eax, [eax+$0768]
0079F3E1   8B08                   mov     ecx, [eax]
0079F3E3   FF5160                 call    dword ptr [ecx+$60]
0079F3E6   8B45DC                 mov     eax, [ebp-$24]

|
0079F3E9   E84A290000             call    007A1D38
0079F3EE   83C4F4                 add     esp, -$0C
0079F3F1   DB3C24                 fstp    tbyte ptr [esp]
0079F3F4   9B                     wait
0079F3F5   8D55D8                 lea     edx, [ebp-$28]
0079F3F8   A1B0AA7D00             mov     eax, dword ptr [$007DAAB0]
0079F3FD   8B00                   mov     eax, [eax]
0079F3FF   8B8038060000           mov     eax, [eax+$0638]
0079F405   8B08                   mov     ecx, [eax]
0079F407   FF5160                 call    dword ptr [ecx+$60]
0079F40A   8B45D8                 mov     eax, [ebp-$28]

|
0079F40D   E8960B0100             call    007AFFA8
0079F412   83C4F8                 add     esp, -$08
0079F415   DD1C24                 fstp    qword ptr [esp]
0079F418   9B                     wait
0079F419   8B06                   mov     eax, [esi]
0079F41B   8B80C0070000           mov     eax, [eax+$07C0]
0079F421   8B10                   mov     edx, [eax]
0079F423   FF92A4000000           call    dword ptr [edx+$00A4]
0079F429   EB14                   jmp     0079F43F
0079F42B   6A00                   push    $00
0079F42D   6A00                   push    $00
0079F42F   8B06                   mov     eax, [esi]
0079F431   8B80C0070000           mov     eax, [eax+$07C0]
0079F437   8B10                   mov     edx, [eax]
0079F439   FF92A4000000           call    dword ptr [edx+$00A4]
0079F43F   33C0                   xor     eax, eax
0079F441   5A                     pop     edx
0079F442   59                     pop     ecx
0079F443   59                     pop     ecx
0079F444   648910                 mov     fs:[eax], edx
0079F447   EB14                   jmp     0079F45D

* Reference to: System.@HandleAnyException;
|
0079F449   E93656C6FF             jmp     00404A84

* Possible String Reference to: 'ExceÁ„o ao calcular o valor de tabe
|                                la (DM1 - tbProdUnid)'
|
0079F44E   B8F0F47900             mov     eax, $0079F4F0

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0079F453   E8CC47CAFF             call    00443C24

* Reference to: System.@DoneExcept;
|
0079F458   E8535AC6FF             call    00404EB0

****** END
|
0079F45D   33C0                   xor     eax, eax
0079F45F   5A                     pop     edx
0079F460   59                     pop     ecx
0079F461   59                     pop     ecx
0079F462   648910                 mov     fs:[eax], edx
0079F465   EB30                   jmp     0079F497

* Reference to: System.@HandleOnException;
|
0079F467   E94457C6FF             jmp     00404BB0
0079F46C   0100                   add     [eax], eax
0079F46E   0000                   add     [eax], al
0079F470   40                     inc     eax
0079F471   95                     xchg    eax, ebp
0079F472   40                     inc     eax
0079F473   0078F4                 add     [eax-$0C], bh
0079F476   7900                   jns     0079F478
0079F478   89C3                   mov     ebx, eax
0079F47A   8B4B04                 mov     ecx, [ebx+$04]
0079F47D   8D45D4                 lea     eax, [ebp-$2C]

* Possible String Reference to: 'Erro no evento OnCalcFields da tabe
|                                la tbProdUnid!'
|
0079F480   BA34F57900             mov     edx, $0079F534

* Reference to: System.@LStrCat3;
|
0079F485   E81E63C6FF             call    004057A8
0079F48A   8B45D4                 mov     eax, [ebp-$2C]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0079F48D   E89247CAFF             call    00443C24

* Reference to: System.@DoneExcept;
|
0079F492   E8195AC6FF             call    00404EB0

****** END
|
0079F497   33C0                   xor     eax, eax
0079F499   5A                     pop     edx
0079F49A   59                     pop     ecx
0079F49B   59                     pop     ecx
0079F49C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0079F49F   68C1F47900             push    $0079F4C1
0079F4A4   8D45D4                 lea     eax, [ebp-$2C]
0079F4A7   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079F4AC   E80F60C6FF             call    004054C0
0079F4B1   8D45F4                 lea     eax, [ebp-$0C]

* Reference to: System.@LStrClr(void;void);
|
0079F4B4   E8E35FC6FF             call    0040549C
0079F4B9   C3                     ret


* Reference to: System.@HandleFinally;
|
0079F4BA   E97958C6FF             jmp     00404D38
0079F4BF   EBE3                   jmp     0079F4A4

****** END
|
0079F4C1   5F                     pop     edi
0079F4C2   5E                     pop     esi
0079F4C3   5B                     pop     ebx
0079F4C4   8BE5                   mov     esp, ebp
0079F4C6   5D                     pop     ebp
0079F4C7   C3                     ret

*)
end;

procedure TDm1._PROC_0079F4BA(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0079F4BA   E97958C6FF             jmp     00404D38

|
0079F4BF   EBE3                   jmp     0079F4A4
0079F4C1   5F                     pop     edi
0079F4C2   5E                     pop     esi
0079F4C3   5B                     pop     ebx
0079F4C4   8BE5                   mov     esp, ebp
0079F4C6   5D                     pop     ebp
0079F4C7   C3                     ret

*)
end;

procedure TDm1._PROC_0079F524(Sender : TObject);
begin
(*
0079F524   6E                     outsb
0079F525   69642900000000FF       imul    esp, [ecx+ebp+$00], $FF000000
0079F52D   FFFF                   DB  $FF, $FF  //      
0079F52F   FF33                   push    dword ptr [ebx]
0079F531   0000                   add     [eax], al

*)
end;

procedure TDm1._PROC_0079F561(Sender : TObject);
begin
(*
0079F561   6E                     outsb
0079F562   6964210D0D00558B       imul    esp, [ecx+$0D], $8B55000D
0079F56A   EC                     in      al, dx
0079F56B   33C9                   xor     ecx, ecx
0079F56D   51                     push    ecx
0079F56E   51                     push    ecx
0079F56F   51                     push    ecx
0079F570   51                     push    ecx
0079F571   51                     push    ecx
0079F572   51                     push    ecx
0079F573   51                     push    ecx
0079F574   53                     push    ebx
0079F575   56                     push    esi
0079F576   57                     push    edi
0079F577   33C0                   xor     eax, eax
0079F579   55                     push    ebp

* Possible String Reference to: 'ÈßV∆ˇÎÎ_^[ãÂ]√'
|
0079F57A   688CF67900             push    $0079F68C

***** TRY
|
0079F57F   64FF30                 push    dword ptr fs:[eax]
0079F582   648920                 mov     fs:[eax], esp
0079F585   33C0                   xor     eax, eax
0079F587   55                     push    ebp
0079F588   6841F67900             push    $0079F641

***** TRY
|
0079F58D   64FF30                 push    dword ptr fs:[eax]
0079F590   648920                 mov     fs:[eax], esp
0079F593   8D55FC                 lea     edx, [ebp-$04]
0079F596   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F59B   8B80D4070000           mov     eax, [eax+$07D4]
0079F5A1   8B08                   mov     ecx, [eax]
0079F5A3   FF5160                 call    dword ptr [ecx+$60]
0079F5A6   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrLen(String):Integer;
|
0079F5A9   E8AE61C6FF             call    0040575C
0079F5AE   83F806                 cmp     eax, +$06
0079F5B1   0F8580000000           jnz     0079F637
0079F5B7   8D45F4                 lea     eax, [ebp-$0C]
0079F5BA   50                     push    eax
0079F5BB   8D55F0                 lea     edx, [ebp-$10]
0079F5BE   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F5C3   8B80D4070000           mov     eax, [eax+$07D4]
0079F5C9   8B08                   mov     ecx, [eax]
0079F5CB   FF5160                 call    dword ptr [ecx+$60]
0079F5CE   8B45F0                 mov     eax, [ebp-$10]
0079F5D1   B902000000             mov     ecx, $00000002
0079F5D6   BA05000000             mov     edx, $00000005

* Reference to: System.@LStrCopy;
|
0079F5DB   E8DC63C6FF             call    004059BC
0079F5E0   FF75F4                 push    dword ptr [ebp-$0C]
0079F5E3   68A4F67900             push    $0079F6A4
0079F5E8   8D45EC                 lea     eax, [ebp-$14]
0079F5EB   50                     push    eax
0079F5EC   8D55E8                 lea     edx, [ebp-$18]
0079F5EF   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F5F4   8B80D4070000           mov     eax, [eax+$07D4]
0079F5FA   8B08                   mov     ecx, [eax]
0079F5FC   FF5160                 call    dword ptr [ecx+$60]
0079F5FF   8B45E8                 mov     eax, [ebp-$18]
0079F602   B904000000             mov     ecx, $00000004
0079F607   BA01000000             mov     edx, $00000001

* Reference to: System.@LStrCopy;
|
0079F60C   E8AB63C6FF             call    004059BC
0079F611   FF75EC                 push    dword ptr [ebp-$14]
0079F614   8D45F8                 lea     eax, [ebp-$08]
0079F617   BA03000000             mov     edx, $00000003

* Reference to: System.@LStrCatN;
|
0079F61C   E8FB61C6FF             call    0040581C
0079F621   8B55F8                 mov     edx, [ebp-$08]
0079F624   A170F57D00             mov     eax, dword ptr [$007DF570]
0079F629   8B8020080000           mov     eax, [eax+$0820]
0079F62F   8B08                   mov     ecx, [eax]
0079F631   FF91B0000000           call    dword ptr [ecx+$00B0]
0079F637   33C0                   xor     eax, eax
0079F639   5A                     pop     edx
0079F63A   59                     pop     ecx
0079F63B   59                     pop     ecx
0079F63C   648910                 mov     fs:[eax], edx
0079F63F   EB30                   jmp     0079F671

* Reference to: System.@HandleOnException;
|
0079F641   E96A55C6FF             jmp     00404BB0
0079F646   0100                   add     [eax], eax
0079F648   0000                   add     [eax], al
0079F64A   40                     inc     eax
0079F64B   95                     xchg    eax, ebp
0079F64C   40                     inc     eax
0079F64D   0052F6                 add     [edx-$0A], dl
0079F650   7900                   jns     0079F652
0079F652   89C3                   mov     ebx, eax
0079F654   8B4B04                 mov     ecx, [ebx+$04]
0079F657   8D45E4                 lea     eax, [ebp-$1C]

* Possible String Reference to: 'Erro no evento OnCalcFields da tabe
|                                la ProdSald!'
|
0079F65A   BAB0F67900             mov     edx, $0079F6B0

* Reference to: System.@LStrCat3;
|
0079F65F   E84461C6FF             call    004057A8
0079F664   8B45E4                 mov     eax, [ebp-$1C]

* Reference to: Dialogs.ShowMessage(AnsiString);
|
0079F667   E8B845CAFF             call    00443C24

* Reference to: System.@DoneExcept;
|
0079F66C   E83F58C6FF             call    00404EB0

****** END
|
0079F671   33C0                   xor     eax, eax
0079F673   5A                     pop     edx
0079F674   59                     pop     ecx
0079F675   59                     pop     ecx
0079F676   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: '_^[ãÂ]√'
|
0079F679   6893F67900             push    $0079F693
0079F67E   8D45E4                 lea     eax, [ebp-$1C]
0079F681   BA07000000             mov     edx, $00000007

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
0079F686   E8355EC6FF             call    004054C0
0079F68B   C3                     ret


* Reference to: System.@HandleFinally;
|
0079F68C   E9A756C6FF             jmp     00404D38
0079F691   EBEB                   jmp     0079F67E

****** END
|
0079F693   5F                     pop     edi
0079F694   5E                     pop     esi
0079F695   5B                     pop     ebx
0079F696   8BE5                   mov     esp, ebp
0079F698   5D                     pop     ebp
0079F699   C3                     ret

*)
end;

procedure TDm1._PROC_0079F68C(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0079F68C   E9A756C6FF             jmp     00404D38

|
0079F691   EBEB                   jmp     0079F67E
0079F693   5F                     pop     edi
0079F694   5E                     pop     esi
0079F695   5B                     pop     ebx
0079F696   8BE5                   mov     esp, ebp
0079F698   5D                     pop     ebp
0079F699   C3                     ret

*)
end;

procedure TDm1._PROC_0079FAEB(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0079FAEB   E94852C6FF             jmp     00404D38

|
0079FAF0   EBEB                   jmp     0079FADD
0079FAF2   5F                     pop     edi
0079FAF3   5E                     pop     esi
0079FAF4   5B                     pop     ebx
0079FAF5   8BE5                   mov     esp, ebp
0079FAF7   5D                     pop     ebp
0079FAF8   C3                     ret

*)
end;

procedure TDm1._PROC_0079FCAC(Sender : TObject);
begin
(*

* Reference to: System.@HandleFinally;
|
0079FCAC   E98750C6FF             jmp     00404D38

|
0079FCB1   EBEB                   jmp     0079FC9E
0079FCB3   5F                     pop     edi
0079FCB4   5E                     pop     esi
0079FCB5   5B                     pop     ebx
0079FCB6   8BE5                   mov     esp, ebp
0079FCB8   5D                     pop     ebp
0079FCB9   C3                     ret

*)
end;

procedure TDm1._PROC_0079FF75(Sender : TObject);
begin
(*
0079FF75   54                     push    esp
0079FF76   4F                     dec     edi
0079FF77   53                     push    ebx
0079FF78   0000                   add     [eax], al

*)
end;

procedure TDm1._PROC_0079FF7D(Sender : TObject);
begin
(*
0079FF7D   8BEC                   mov     ebp, esp
0079FF7F   33C0                   xor     eax, eax
0079FF81   55                     push    ebp

* Possible String Reference to: 'ÈíM∆ˇÎ¯]√ã¿É-tı}'
|
0079FF82   68A1FF7900             push    $0079FFA1

***** TRY
|
0079FF87   64FF30                 push    dword ptr fs:[eax]
0079FF8A   648920                 mov     fs:[eax], esp
0079FF8D   FF0574F57D00           inc     dword ptr [$007DF574]
0079FF93   33C0                   xor     eax, eax
0079FF95   5A                     pop     edx
0079FF96   59                     pop     ecx
0079FF97   59                     pop     ecx
0079FF98   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']√ã¿É-tı}'
|
0079FF9B   68A8FF7900             push    $0079FFA8
0079FFA0   C3                     ret


* Reference to: System.@HandleFinally;
|
0079FFA1   E9924DC6FF             jmp     00404D38
0079FFA6   EBF8                   jmp     0079FFA0

****** END
|
0079FFA8   5D                     pop     ebp
0079FFA9   C3                     ret

*)
end;

procedure TDm1._PROC_0079FFAC(Sender : TObject);
begin
(*
0079FFAC   832D74F57D0001         sub     dword ptr [$007DF574], +$01
0079FFB3   C3                     ret

*)
end;

procedure TDm1._PROC_007A0145(Sender : TObject);
begin
(*
007A0145   7375                   jnb     007A01BC
007A0147   61                     popa
007A0148   7269                   jb      007A01B3
007A014A   6F                     outsd
007A014B   49                     dec     ecx
007A014C   6E                     outsb
007A014D   636C750C               arpl    [ebp+esi*2+$0C], bp
007A0151   0300                   add     eax, [eax]
007A0153   0001                   add     [ecx], al
007A0155   0009                   add     [ecx], cl
007A0157   47                     inc     edi
007A0158   726F                   jb      007A01C9
007A015A   7570                   jnz     007A01CC
007A015C   42                     inc     edx
007A015D   6F                     outsd
007A015E   7832                   js      007A0192
007A0160   1003                   adc     [ebx], al
007A0162   0000                   add     [eax], al

007A0164   0200                   add     al, byte ptr [eax]
007A0166   094564                 or      [ebp+$64], eax
007A0169   44                     inc     esp
007A016A   61                     popa
007A016B   7461                   jz      007A01CE
007A016D   41                     inc     ecx
007A016E   7475                   jz      007A01E5
007A0170   1403                   adc     al, $03
007A0172   0000                   add     [eax], al

007A0174   0200                   add     al, byte ptr [eax]
007A0176   094564                 or      [ebp+$64], eax
007A0179   48                     dec     eax
007A017A   6F                     outsd
007A017B   7261                   jb      007A01DE
007A017D   41                     inc     ecx
007A017E   7475                   jz      007A01F5
007A0180   1803                   sbb     [ebx], al
007A0182   0000                   add     [eax], al

007A0184   0200                   add     al, byte ptr [eax]
007A0186   0C45                   or      al, $45
007A0188   6455                   push    ebp
007A018A   7375                   jnb     007A0201
007A018C   61                     popa
007A018D   7269                   jb      007A01F8
007A018F   6F                     outsd
007A0190   41                     inc     ecx
007A0191   7475                   jz      007A0208
007A0193   1C03                   sbb     al, $03
007A0195   0000                   add     [eax], al

007A0197   0000                   add     [eax], al

007A0199   06                     push    es
007A019A   4C                     dec     esp
007A019B   61                     popa
007A019C   62656C                 bound   esp, qword ptr [ebp+$6C]
007A019F   3220                   xor     ah, byte ptr [eax]
007A01A1   0300                   add     eax, [eax]
007A01A3   0000                   add     [eax], al

007A01A5   0006                   add     [esi], al
007A01A7   4C                     dec     esp
007A01A8   61                     popa
007A01A9   62656C                 bound   esp, qword ptr [ebp+$6C]
007A01AC   332403                 xor     esp, [ebx+eax]
007A01AF   0000                   add     [eax], al

007A01B1   0000                   add     [eax], al

007A01B3   06                     push    es
007A01B4   4C                     dec     esp
007A01B5   61                     popa
007A01B6   62656C                 bound   esp, qword ptr [ebp+$6C]
007A01B9   3428                   xor     al, $28
007A01BB   0300                   add     eax, [eax]
007A01BD   0000                   add     [eax], al

007A01BF   0006                   add     [esi], al
007A01C1   4C                     dec     esp
007A01C2   61                     popa
007A01C3   62656C                 bound   esp, qword ptr [ebp+$6C]
007A01C6   352C030000             xor     eax, $0000032C
007A01CB   0000                   add     [eax], al

007A01CD   06                     push    es
007A01CE   4C                     dec     esp
007A01CF   61                     popa
007A01D0   62656C                 bound   esp, qword ptr [ebp+$6C]
007A01D3   363003                 xor     ss:[ebx], al
007A01D6   0000                   add     [eax], al

007A01D8   0000                   add     [eax], al

007A01DA   06                     push    es
007A01DB   4C                     dec     esp
007A01DC   61                     popa
007A01DD   62656C                 bound   esp, qword ptr [ebp+$6C]
007A01E0   37                     aaa
007A01E1   3403                   xor     al, $03
007A01E3   0000                   add     [eax], al

007A01E5   0300                   add     eax, [eax]
007A01E7   0462                   add     al, +$62
007A01E9   744F                   jz      007A023A
007A01EB   4B                     dec     ebx
007A01EC   0B544672               or      edx, [esi+eax*2+$72]
007A01F0   6D                     insd
007A01F1   49                     dec     ecx
007A01F2   6E                     outsb
007A01F3   666F                   outsw
007A01F5   41                     inc     ecx
007A01F6   7475                   jz      007A026D
007A01F8   0400                   add     al, +$00
007A01FA   04F4                   add     al, -$0C
007A01FC   47                     inc     edi
007A01FD   0048EB                 add     [eax-$15], cl
007A0200   47                     inc     edi
007A0201   00A0FC470070           add     [eax+$700047FC], ah
007A0207   CF                     iret
007A0208   44                     inc     esp
007A0209   008BC010027A           add     [ebx+$7A0210C0], cl
007A020F   0007                   add     [edi], al
007A0211   0B544672               or      edx, [esi+eax*2+$72]
007A0215   6D                     insd
007A0216   49                     dec     ecx
007A0217   6E                     outsb
007A0218   666F                   outsw
007A021A   41                     inc     ecx
007A021B   7475                   jz      007A0292
007A021D   0000                   add     [eax], al

007A021F   7A00                   jp      007A0221
007A0221   38B44A005E0007         cmp     [edx+ecx*2+$7005E00], dh
007A0228   696E666F617475         imul    ebp, [esi+$66], $7574616F
007A022F   0000                   add     [eax], al

007A0231   8D4000                 lea     eax, [eax+$00]
007A0234   55                     push    ebp
007A0235   8BEC                   mov     ebp, esp
007A0237   33C0                   xor     eax, eax
007A0239   55                     push    ebp

* Possible String Reference to: 'È⁄J∆ˇÎ¯]√ã¿É-|ı}'
|
007A023A   6859027A00             push    $007A0259

***** TRY
|
007A023F   64FF30                 push    dword ptr fs:[eax]
007A0242   648920                 mov     fs:[eax], esp
007A0245   FF057CF57D00           inc     dword ptr [$007DF57C]
007A024B   33C0                   xor     eax, eax
007A024D   5A                     pop     edx
007A024E   59                     pop     ecx
007A024F   59                     pop     ecx
007A0250   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: ']√ã¿É-|ı}'
|
007A0253   6860027A00             push    $007A0260
007A0258   C3                     ret


* Reference to: System.@HandleFinally;
|
007A0259   E9DA4AC6FF             jmp     00404D38
007A025E   EBF8                   jmp     007A0258

****** END
|
007A0260   5D                     pop     ebp
007A0261   C3                     ret

007A0262   8BC0                   mov     eax, eax
007A0264   832D7CF57D0001         sub     dword ptr [$007DF57C], +$01
007A026B   C3                     ret

007A026C   55                     push    ebp
007A026D   8BEC                   mov     ebp, esp
007A026F   83C4F0                 add     esp, -$10
007A0272   53                     push    ebx
007A0273   56                     push    esi
007A0274   57                     push    edi
007A0275   8955F8                 mov     [ebp-$08], edx
007A0278   8945FC                 mov     [ebp-$04], eax
007A027B   8B45FC                 mov     eax, [ebp-$04]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007A027E   E8C956C6FF             call    0040594C
007A0283   8B45F8                 mov     eax, [ebp-$08]

* Reference to: System.@LStrAddRef(void;void):Pointer;
|
007A0286   E8C156C6FF             call    0040594C
007A028B   33C0                   xor     eax, eax
007A028D   55                     push    ebp
007A028E   6832037A00             push    $007A0332

***** TRY
|
007A0293   64FF30                 push    dword ptr fs:[eax]
007A0296   648920                 mov     fs:[eax], esp
007A0299   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: '  /  /  '
|
007A029C   BA4C037A00             mov     edx, $007A034C

* Reference to: System.@LStrCmp;
|
007A02A1   E80256C6FF             call    004058A8
007A02A6   740F                   jz      007A02B7
007A02A8   8B45FC                 mov     eax, [ebp-$04]

* Possible String Reference to: '  /  /    '
|
007A02AB   BA60037A00             mov     edx, $007A0360

* Reference to: System.@LStrCmp;
|
007A02B0   E8F355C6FF             call    004058A8
007A02B5   7504                   jnz     007A02BB
007A02B7   B301                   mov     bl, $01
007A02B9   EB5C                   jmp     007A0317
007A02BB   33C0                   xor     eax, eax
007A02BD   55                     push    ebp
007A02BE   68FF027A00             push    $007A02FF

***** TRY
|
007A02C3   64FF30                 push    dword ptr fs:[eax]
007A02C6   648920                 mov     fs:[eax], esp
007A02C9   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
007A02CC   E8ABF1C6FF             call    0040F47C
007A02D1   DDD8                   fstp    st(0)
007A02D3   8B45FC                 mov     eax, [ebp-$04]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
007A02D6   E8A1F1C6FF             call    0040F47C
007A02DB   DD5DF0                 fstp    qword ptr [ebp-$10]
007A02DE   9B                     wait
007A02DF   8B45F8                 mov     eax, [ebp-$08]

* Reference to: SysUtils.StrToDate(AnsiString):TDateTime;overload;
|
007A02E2   E895F1C6FF             call    0040F47C
007A02E7   DC5DF0                 fcomp   qword ptr [ebp-$10]
007A02EA   DFE0                   fstsw   ax
007A02EC   9E                     sahf
007A02ED   7604                   jbe     007A02F3
007A02EF   33DB                   xor     ebx, ebx
007A02F1   EB02                   jmp     007A02F5
007A02F3   B301                   mov     bl, $01
007A02F5   33C0                   xor     eax, eax
007A02F7   5A                     pop     edx
007A02F8   59                     pop     ecx
007A02F9   59                     pop     ecx
007A02FA   648910                 mov     fs:[eax], edx
007A02FD   EB18                   jmp     007A0317

* Reference to: System.@HandleOnException;
|
007A02FF   E9AC48C6FF             jmp     00404BB0
007A0304   0100                   add     [eax], eax
007A0306   0000                   add     [eax], al
007A0308   BC9B400010             mov     esp, $1000409B
007A030D   037A00                 add     edi, [edx+$00]
007A0310   33DB                   xor     ebx, ebx

* Reference to: System.@DoneExcept;
|
007A0312   E8994BC6FF             call    00404EB0

****** END
|
007A0317   33C0                   xor     eax, eax
007A0319   5A                     pop     edx
007A031A   59                     pop     ecx
007A031B   59                     pop     ecx
007A031C   648910                 mov     fs:[eax], edx

****** FINALLY
|

* Possible String Reference to: 'ã√_^[ãÂ]√'
|
007A031F   6839037A00             push    $007A0339
007A0324   8D45F8                 lea     eax, [ebp-$08]
007A0327   BA02000000             mov     edx, $00000002

* Reference to: System.@LStrArrayClr(void;void;Integer);
|
007A032C   E88F51C6FF             call    004054C0
007A0331   C3                     ret

*)
end;

end.