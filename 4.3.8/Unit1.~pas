unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    s: array [0..2,0..2] of integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var i,j: integer;
begin
randomize();
for i:=0 to 2 do
  for j:=0 to 2 do
    begin
    s[i,j]:=random(10)-1;
    StringGrid1.Cells[i,j]:=IntToStr(s[i,j]);
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var i,j,m,n,k: integer;
begin
  for i:=0 to 1 do
  for j:=0 to 0 do
       begin
   if s[i,j]<s[i+1,j] then
      begin
      m:=s[i,j];
      s[i,j]:=s[i+1,j];
      s[i+1,j]:=m;
      end;
   end;
   for i:=0 to 1 do
   for j:=1 to 1 do
      begin
   if s[i,j]<s[i+1,j] then
      begin
      n:=s[i,j];
      s[i,j]:=s[i+1,j];
      s[i+1,j]:=n;
      end;
   end;
   for i:=0 to 1 do
   for j:=2 to 2 do
      begin
   if s[i,j]<s[i+1,j] then
      begin
      k:=s[i,j];
      s[i,j]:=s[i+1,j];
      s[i+1,j]:=k;
      end;
   end;
for i:=0 to 2 do
  for j:=0 to 2 do
    StringGrid1.Cells[i,j]:=IntToStr(s[i,j]);
end;

end.
