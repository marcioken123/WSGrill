unit UdmQ;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBQuery, IBSQL;

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

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Qe: TQe;

implementation

uses udm1;

{$R *.dfm}

end.
