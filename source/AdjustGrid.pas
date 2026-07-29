{ This unit was developed by Philippe Randour (philippe_randour@hotmail.com)
  in August 2000. It can be freely used in your own development.
  Thank you for your interest. }

unit AdjustGrid;

interface

uses Windows, Forms, Grids, DBGrids, Graphics, Classes, SysUtils, Controls,
  Messages, Dialogs, ComCtrls, ExtCtrls, Db;

type
  TDBGridAux = class(TDBGrid)
  public
    procedure grClientesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
      
    procedure TbDatasetAfterScroll(DataSet: TDataSet);
  end;

var
  DBGridAux: TDBGridAux;
  intRowIndex: Integer;

procedure AdjustColumnWidths(DBGrid: TDBGrid);

implementation

procedure TDBGridAux.TbDatasetAfterScroll(DataSet: TDataSet);
begin
  intRowIndex := Dataset.RecNo;
  Dataset.Refresh;
end;

procedure TDBGridAux.grClientesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  (Sender as TDBGrid).Canvas.Font.Style := [];
  (Sender as TDBGrid).Canvas.Font.Size := 8;
  (Sender as TDBGrid).Canvas.Font.Color := clBlack;

  //if ((Sender as TDBGrid).SelectedRows.CurrentRowSelected) then
  if intRowIndex = (Sender as TDBGrid).DataSource.DataSet.RecNo then
  begin
    (Sender as TDBGrid).Canvas.Brush.Color := clAqua;
    (Sender as TDBGrid).Canvas.Font.Style := [fsBold];
    (Sender as TDBGrid).Canvas.Font.Size := 9;
    (Sender as TDBGrid).Canvas.Font.Color := clBlack;
  end
  else if (Sender as TDBGrid).DataSource.DataSet.RecNo mod 2 = 0 then
    (Sender as TDBGrid).Canvas.Brush.Color := clWhite
  else
    (Sender as TDBGrid).Canvas.Brush.Color := $00D3D3D3;

  (Sender as TDBGrid).DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure AdjustColumnWidths(DBGrid: TDBGrid);
var
  TotalColumnWidth, ColumnCount, GridClientWidth, Filler, i: Integer;
begin
  //DBGrid.DataSource.DataSet.AfterScroll := DBGridAux.TbDatasetAfterScroll;
  //DBGrid.OnDrawColumnCell := DBGridAux.grClientesDrawColumnCell;

  ColumnCount := DBGrid.Columns.Count;
  if ColumnCount = 0 then
    Exit;

  // compute total width used by grid columns and vertical lines if any
  TotalColumnWidth := 0;
  for i := 0 to ColumnCount-1 do
    TotalColumnWidth := TotalColumnWidth + DBGrid.Columns[i].Width;
  if dgColLines in DBGrid.Options then
    // include vertical lines in total (one per column)
    TotalColumnWidth := TotalColumnWidth + ColumnCount;

  // compute grid client width by excluding vertical scroll bar, grid indicator,
  // and grid border
  GridClientWidth := DBGrid.Width - GetSystemMetrics(SM_CXVSCROLL);
  if dgIndicator in DBGrid.Options then begin
    GridClientWidth := GridClientWidth - IndicatorWidth;
    if dgColLines in DBGrid.Options then
      Dec(GridClientWidth);
  end;
  if DBGrid.BorderStyle = bsSingle then begin
    if DBGrid.Ctl3D then // border is sunken (vertical border is 2 pixels wide)
      GridClientWidth := GridClientWidth - 4
    else // border is one-dimensional (vertical border is one pixel wide)
      GridClientWidth := GridClientWidth - 2;
  end;

  // adjust column widths
  if TotalColumnWidth < GridClientWidth then begin
    Filler := (GridClientWidth - TotalColumnWidth) div ColumnCount;
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width + Filler;
  end
  else if TotalColumnWidth > GridClientWidth then begin
    Filler := (TotalColumnWidth - GridClientWidth) div ColumnCount;
    if (TotalColumnWidth - GridClientWidth) mod ColumnCount <> 0 then
      Inc(Filler);
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width - Filler;
  end;
end;

end.
