unit Mesas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, StdCtrls, DB, DBNumEdt, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, ExtCtrls, DBCtrls, JvExMask, JvToolEdit,
  JvDBControls, Mask, Buttons, JvExControls, JvComponent, JvLabel;

type
  TfrmMesas = class(TForm)
    pnRodape: TPanel;
    sbAdiciona: TSpeedButton;
    sbGrava: TSpeedButton;
    sbApaga: TSpeedButton;
    sbDesfaz: TSpeedButton;
    sbFecha: TSpeedButton;
    sbImprime: TSpeedButton;
    edDescricao: TDBEdit;
    edCodMesa: TJvDBComboEdit;
    Label1: TLabel;
    rgStatus: TDBRadioGroup;
    Label7: TLabel;
    dsMesas: TDataSource;
    edPosX: TDBEdit;
    Label8: TLabel;
    edPosY: TDBEdit;
    Label9: TLabel;
    DBNavigator1: TDBNavigator;
    sbTodos: TSpeedButton;
    DBStatusLabel1: TJvDBStatusLabel;
    DBText1: TDBText;
    Label2: TLabel;
    grFunc: TJvDBGrid;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    edAtendDia: TDBNumEdit;
    edAtendMes: TDBNumEdit;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    edVlrAcumDia: TDBNumEdit;
    edVlrAcumMes: TDBNumEdit;
    Label6: TLabel;
    DBNavigator2: TDBNavigator;
    Bevel1: TBevel;
    EdComanda: TDBEdit;
    Label10: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    procedure edCodMesaButtonClick(Sender: TObject);
    procedure sbAdicionaClick(Sender: TObject);
    procedure sbGravaClick(Sender: TObject);
    procedure sbApagaClick(Sender: TObject);
    procedure sbFechaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbTodosClick(Sender: TObject);
    procedure sbDesfazClick(Sender: TObject);
    procedure DBNavigator2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMesas: TfrmMesas;

implementation

uses
  udm1,
  funcoes;

{$R *.DFM}

procedure TfrmMesas.FormShow(Sender: TObject);
begin
  if Assigned(Dm1.dsMesas.DataSet) and not Dm1.dsMesas.DataSet.Active then
    Dm1.dsMesas.DataSet.Open;
  AbreTabela(dm1.TbMesaFunc, False);
end;

procedure TfrmMesas.sbAdicionaClick(Sender: TObject);
begin
  if Assigned(Dm1.dsMesas.DataSet) then
  begin
    Dm1.dsMesas.DataSet.Append;
    
    // Set default initial values for new records
    if Dm1.dsMesas.DataSet.FindField('STATUS') <> nil then
      Dm1.dsMesas.DataSet.FieldByName('STATUS').AsString := 'D'; // Disponível
    if Dm1.dsMesas.DataSet.FindField('ATEND_DIA') <> nil then
      Dm1.dsMesas.DataSet.FieldByName('ATEND_DIA').AsInteger := 0;
    if Dm1.dsMesas.DataSet.FindField('ATEND_MES') <> nil then
      Dm1.dsMesas.DataSet.FieldByName('ATEND_MES').AsInteger := 0;
    if Dm1.dsMesas.DataSet.FindField('VLR_ACUM_DIA') <> nil then
      Dm1.dsMesas.DataSet.FieldByName('VLR_ACUM_DIA').AsFloat := 0.0;
    if Dm1.dsMesas.DataSet.FindField('VLR_ACUM_MES') <> nil then
      Dm1.dsMesas.DataSet.FieldByName('VLR_ACUM_MES').AsFloat := 0.0;

    if edCodMesa.CanFocus then
      edCodMesa.SetFocus;
  end;
end;

procedure TfrmMesas.sbGravaClick(Sender: TObject);
begin
  if Assigned(Dm1.dsMesas.DataSet) and (Dm1.dsMesas.DataSet.State in [dsInsert, dsEdit]) then
    Dm1.dsMesas.DataSet.Post;
end;

procedure TfrmMesas.sbApagaClick(Sender: TObject);
begin
  if Assigned(Dm1.dsMesas.DataSet) and not Dm1.dsMesas.DataSet.IsEmpty then
  begin
    if MessageDlg('Deseja realmente apagar esta mesa?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      Dm1.dsMesas.DataSet.Delete;
  end;
end;

procedure TfrmMesas.sbDesfazClick(Sender: TObject);
begin
  if Assigned(Dm1.dsMesas.DataSet) and (Dm1.dsMesas.DataSet.State in [dsInsert, dsEdit]) then
    Dm1.dsMesas.DataSet.Cancel;
end;

procedure TfrmMesas.sbFechaClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMesas.edCodMesaButtonClick(Sender: TObject);
var
  CodMesa: string;
begin
  // Example lookup logic for searching tables
  CodMesa := edCodMesa.Text;
  if (CodMesa <> '') and Assigned(Dm1.dsMesas.DataSet) then
  begin
    Dm1.dsMesas.DataSet.Locate('CODMESA', CodMesa, [loCaseInsensitive]);
  end;
end;

procedure TfrmMesas.sbTodosClick(Sender: TObject);
begin
  if Assigned(Dm1.dsMesas.DataSet) then
  begin
    Dm1.dsMesas.DataSet.Filtered := False;
    Dm1.dsMesas.DataSet.First;
  end;
end;

procedure TfrmMesas.DBNavigator2Click(Sender: TObject);
begin
  // Handled automatically by TDBNavigator linked to Dm1.DsMesaFunc
end;

end.
