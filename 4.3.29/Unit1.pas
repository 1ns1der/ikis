unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, IBCustomDataSet, IBQuery,
  IBDatabase;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    IBDatabase1: TIBDatabase;
    IBQuery1: TIBQuery;
    DataSource2: TDataSource;
    IBTransaction1: TIBTransaction;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
IBDatabase1.DatabaseName:='localhost:'+GetCurrentDir+'\28.GDB';
IBDatabase1.Open;
IBQuery1.Open;
end;

end.
