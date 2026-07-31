unit Udm4;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBCustomDataSet, IBQuery;

type
  Tdm4 = class(TDataModule)
    TbAndamento: TIBDataSet;
    TbAndamentoCHAVE: TIBStringField;
    TbAndamentoDESCRICAO: TIBStringField;
    TbAndamentoUSUARIO: TIBStringField;
    DsAndamento: TDataSource;

    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm4: Tdm4;

implementation

uses udm1;

{$R *.dfm}

procedure Tdm4.DataModuleCreate(Sender: TObject);
begin
  // Mantido sem inserções asm
end;

end.
