unit Unit5;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, DB, Forms, Controls, Graphics, Dialogs, StdCtrls, DBGrids,
  DBCtrls, ExtCtrls, LR_Class, LR_DBSet, ZConnection, ZDataset, LR_DSet;

type

  { TForm5 }

  TForm5 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Image1: TImage;
    Label1: TLabel;
    ZConnection1: TZConnection;
    ZConnection2: TZConnection;
    ZQuery1: TZQuery;
    ZQuery2: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
    procedure Image1Click(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation

{$R *.lfm}

{ TForm5 }

procedure TForm5.Button1Click(Sender: TObject);
  var
    s:string;
  begin
    s:=extractfilepath(application.ExeName)+'lap1.lrf';
    frDBDataset1.DataSet:=ZQuery1;
    frReport1.Dataset:=frDBDataset1;
    frReport1.LoadFromFile(s);
    frReport1.ShowReport;
  end;

procedure TForm5.DataSource1DataChange(Sender: TObject; Field: TField);
begin

end;

procedure TForm5.FormCreate(Sender: TObject);
begin

end;

procedure TForm5.frDBDataSet1CheckEOF(Sender: TObject; var Eof: Boolean);
begin

end;

procedure TForm5.Image1Click(Sender: TObject);
begin

end;

end.

