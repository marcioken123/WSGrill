unit udm3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, IBCustomDataSet;

type
  TDm3 = class(TDataModule)
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Dm3: TDm3;

implementation

{$R *.DFM}

end.
