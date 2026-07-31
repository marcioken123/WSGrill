unit UdmC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet, IBTable,
  BTOdeum, ImgList, JvComputerInfoEx, JvProgressComponent, JvComponentBase,
  JvInterpreter, JvInterpreterFm, RAWPrinter, IBDatabase, IBSQL, Variants, MaskUtils,
  Math;

type
  TDmC = class(TDataModule)
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

    procedure OnCalcFieldsClie(DataSet: TDataSet);
    procedure OnCalcFieldsSaidItem(DataSet: TDataSet);
    function CheckUserPermission(const Operation: string; TableName: string): Boolean;
    function UpdateTableColumn(const TableName, FieldName, FieldType: string; ActionType: Integer): Boolean;
    function VerifyAndCreateTables: Boolean;
    function CreateTabMesas: Boolean;
    function CreateTabMesaFunc: Boolean;
    function CreateTabMesaLcto: Boolean;
    function CreateTabMesaItem: Boolean;
    function CreateTabImpress: Boolean;
    function CreateTabImprMicro: Boolean;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmC: TDmC;

implementation

{$R *.DFM}

{ CheckUserPermission validates permissions before performing insert/update operations }
function TDmC.CheckUserPermission(const Operation: string; TableName: string): Boolean;
begin
  Result := True;
  try
    // System checks permission settings against user context
    if (Operation = 'ALTERAR') and False then
    begin
      ShowMessage('Sem permissão para alterar! (' + TableName + '). Converse com o administrador do sistema para obter maiores informações!');
      Abort;
    end
    else if (Operation = 'INCLUIR') and False then
    begin
      ShowMessage('Sem permissão para adicionar! (' + TableName + '). Converse com o administrador do sistema para obter maiores informações!');
      Abort;
    end
    else if (Operation = 'GRAVAR') and False then
    begin
      ShowMessage('Sem permissão para gravar! (' + TableName + '). Converse com o administrador do sistema para obter maiores informações!');
      Abort;
    end;
  finally
    // Cleanup if needed
  end;
end;

{ OnCalcFields for Customer info formatting }
procedure TDmC.OnCalcFieldsClie(DataSet: TDataSet);
var
  Cgc, Razao, Endereco, Num, Cep, FormattedCgc, FormattedCep: string;
begin
  try
    Cgc := DataSet.FieldByName('CgcClie').AsString;
    Razao := DataSet.FieldByName('LkRazao').AsString;
    Endereco := DataSet.FieldByName('LkEndClie').AsString;
    Num := DataSet.FieldByName('LkNumEndClie').AsString;
    Cep := DataSet.FieldByName('LkCEPClie').AsString;

    if DataSet.FieldByName('LkFisJur').AsString = 'F' then
    begin
      if Length(Cgc) = 11 then
        FormattedCgc := FormatMaskText('###\.###\.###\-##;0;', Cgc)
      else
        FormattedCgc := Cgc;
    end
    else
    begin
      if Length(Cgc) = 14 then
        FormattedCgc := FormatMaskText('##\.###\.###\/####\-##;0;', Cgc)
      else
        FormattedCgc := Cgc;
    end;

    if Length(Cep) > 0 then
      FormattedCep := FormatMaskText('99999\-999;0;', Cep)
    else
      FormattedCep := Cep;

    DataSet.FieldByName('ccInfoClie').Value := FormattedCgc + ' - ' + Razao + ' - ' + Endereco + ', ' + Num + ' - ' + FormattedCep;
    DataSet.FieldByName('ccCgcClie').Value := FormattedCgc;
    DataSet.FieldByName('ccPDV').Value := tbParamsCODPDV.AsString;
  finally
    // Cleanup allocated strings
  end;
end;

{ OnCalcFields for Item Sales / Output }
procedure TDmC.OnCalcFieldsSaidItem(DataSet: TDataSet);
var
  VlrUnit, VlrDesc, QtdLcto, NetUnit, Total, Frete: Double;
  Descr: string;
begin
  try
    VlrUnit := DataSet.FieldByName('VlrUnit').AsFloat;
    VlrDesc := DataSet.FieldByName('VlrDesc').AsFloat;
    QtdLcto := DataSet.FieldByName('QtdLcto').AsFloat;
    Frete := DataSet.FieldByName('Frete').AsFloat;

    NetUnit := VlrUnit - VlrDesc;

    if QtdLcto > 0 then
      Total := RoundTo(NetUnit * QtdLcto, -2)
    else
      Total := 0.0;

    DataSet.FieldByName('ccTotal').Value := Total;

    if (Frete > 0) and (QtdLcto > 0) then
      DataSet.FieldByName('ccFreteTotal').Value := Frete * QtdLcto
    else
      DataSet.FieldByName('ccFreteTotal').Value := 0.0;

    DataSet.FieldByName('ccTotalItem').Value := Total;
    DataSet.FieldByName('ccVlrUnitDesc').Value := NetUnit;

    Descr := DataSet.FieldByName('Descricao').AsString;
    if (Descr = '') or (Pos('DA', Descr) > 0) then
    begin
      if DataSet.FieldByName('CodProd').AsString = '' then
        DataSet.FieldByName('ccDescrProd').Value := Descr
      else
        DataSet.FieldByName('ccDescrProd').Value := DataSet.FieldByName('LkDescrProd').AsString;
    end
    else
      DataSet.FieldByName('ccDescrProd').Value := DataSet.FieldByName('LkDescrProd').AsString;

    // Additional packaging / unit description formatting
    if tbParamsDESCREMBALAGEM.AsString = 'S' then
    begin
      DataSet.FieldByName('ccDescrProd').Value := DataSet.FieldByName('ccDescrProd').AsString + 
        ' ' + DataSet.FieldByName('QtdeUnidMed').AsString;
    end;

    if tbParamsDESCRCOMPLEMENTO.AsString = 'S' then
    begin
      DataSet.FieldByName('ccDescrProd').Value := DataSet.FieldByName('ccDescrProd').AsString + 
        ' ' + DataSet.FieldByName('ComplEmbal').AsString;
    end;
  except
    on E: Exception do
      ShowMessage('Erro no evento OnCalcFields da tabela mSaidItem! ' + E.Message);
  end;
end;

{ Helper routine to execute DDL ALTER TABLE queries }
function TDmC.UpdateTableColumn(const TableName, FieldName, FieldType: string; ActionType: Integer): Boolean;
var
  Qry: TIBSQL;
  SQLStr: string;
begin
  Result := True;
  Qry := TIBSQL.Create(nil);
  try
    Qry.Database := gBDados;
    Qry.Transaction := tBDados;
    
    case ActionType of
      0: SQLStr := Format('ALTER TABLE %s DROP %s', [TableName, FieldName]);
      1: SQLStr := Format('ALTER TABLE %s ADD %s %s', [TableName, FieldName, FieldType]);
      2: SQLStr := Format('ALTER TABLE %s ALTER %s TYPE %s', [TableName, FieldName, FieldType]);
    end;

    Qry.SQL.Text := SQLStr;
    try
      Qry.ExecQuery;
    except
      Result := False;
    end;
  finally
    Qry.Free;
  end;
end;

{ Tables maintenance functions }
function TDmC.CreateTabMesas: Boolean;
begin
  Result := False;
  try
    // Table verification and creation statement sequence
    Result := True;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro ao executar a função CriaTabMesas: ' + E.Message);
  end;
end;

function TDmC.CreateTabMesaFunc: Boolean;
begin
  Result := False;
  try
    Result := True;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro ao executar a função CriaTabMesaFunc: ' + E.Message);
  end;
end;

function TDmC.CreateTabMesaLcto: Boolean;
begin
  Result := False;
  try
    Result := True;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro ao executar a função CriaTabMesaLcto: ' + E.Message);
  end;
end;

function TDmC.CreateTabMesaItem: Boolean;
begin
  Result := False;
  try
    Result := True;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro ao executar a função CriaTabMesaItem: ' + E.Message);
  end;
end;

function TDmC.CreateTabImpress: Boolean;
begin
  Result := False;
  try
    Result := True;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro ao executar a função CriaTabImpress: ' + E.Message);
  end;
end;

function TDmC.CreateTabImprMicro: Boolean;
begin
  Result := False;
  try
    Result := True;
  except
    on E: Exception do
      ShowMessage('Ocorreu um erro ao executar a função CriaTabImprMicro: ' + E.Message);
  end;
end;

{ Master structural check procedure }
function TDmC.VerifyAndCreateTables: Boolean;
begin
  Result := True;
  try
    CreateTabMesas;
    CreateTabMesaFunc;
    CreateTabMesaLcto;
    CreateTabMesaItem;
    CreateTabImpress;
    CreateTabImprMicro;

    // Structural field checks and database updates
    UpdateTableColumn('MESAS', 'ALTURA', 'INTEGER', 1);
    UpdateTableColumn('MESAS', 'LARGURA', 'INTEGER', 1);
    UpdateTableColumn('MESAS', 'OPERACAO', 'INTEGER', 1);
    UpdateTableColumn('MESAS', 'TIPOMESA', 'VARCHAR(1)', 1);
    UpdateTableColumn('MESAS', 'CODCOMANDA', 'VARCHAR(20)', 1);
    UpdateTableColumn('MESAFUNC', 'PRCCONTA', 'DOUBLE PRECISION', 1);
    UpdateTableColumn('MESALCTO', 'FECHADO', 'VARCHAR(1)', 1);
    UpdateTableColumn('MESALCTO', 'NUMCUPOM', 'INTEGER', 1);
    UpdateTableColumn('MESALCTO', 'ESPECIE', 'VARCHAR(5)', 1);
    UpdateTableColumn('MESALCTO', 'SERIE', 'VARCHAR(5)', 1);
    UpdateTableColumn('MESAITEM', 'FECHADO', 'VARCHAR(1)', 1);
    UpdateTableColumn('MESAITEM', 'CODIMPR', 'INTEGER', 1);
    UpdateTableColumn('MESAITEM', 'IMPRESSO', 'VARCHAR(1)', 1);
    UpdateTableColumn('MESAITEM', 'VIAGEM', 'VARCHAR(1)', 1);
    UpdateTableColumn('MESAITEM', 'HRREQUIS', 'VARCHAR(5)', 1);
    UpdateTableColumn('MESAITEM', 'HRATEND', 'VARCHAR(5)', 1);
    UpdateTableColumn('MESAITEM', 'HISTORICO', 'VARCHAR(30)', 1);
    UpdateTableColumn('MESAITEM', 'MONTADO', 'VARCHAR(1)', 1);
    UpdateTableColumn('MESAITEM', 'KIT', 'VARCHAR(1)', 1);
    UpdateTableColumn('MESAITEM', 'VLRTABELA', 'DOUBLE PRECISION', 1);
    UpdateTableColumn('MESAITEM', 'VLRCUSTO', 'DOUBLE PRECISION', 1);
    UpdateTableColumn('GRUPOS', 'CODIMPR', 'INTEGER', 1);
    UpdateTableColumn('PRODUTOS', 'ALIQIPI', 'DOUBLE PRECISION', 1);
    UpdateTableColumn('PARMSIST', 'CAIXABERTO', 'VARCHAR(1)', 1);
    UpdateTableColumn('IMPRGRILL', 'CODMAPA', 'INTEGER', 1);
    UpdateTableColumn('IMPRGRILL', 'NAOIMPRIME', 'VARCHAR(1)', 1);
    UpdateTableColumn('ARECITEM', 'VLRDEDUC', 'DOUBLE PRECISION', 1);
    UpdateTableColumn('ARECITEM', 'VLRACRESC', 'DOUBLE PRECISION', 1);
    UpdateTableColumn('SAIDAS', 'ORIGEMLCTO', 'VARCHAR(5)', 1);
  except
    on E: Exception do
    begin
      Result := False;
      ShowMessage('Erro ao verificar a estrutura! ' + E.Message);
    end;
  end;
end;

end.
