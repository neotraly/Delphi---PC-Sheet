unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Data.FMTBcd,
  Data.SqlExpr;

type
  TForm2 = class(TForm)
    ADOConnection1: TADOConnection;
    Tadmin: TADOTable;
    Tcomptechnic: TADOTable;
    DSAdmin: TDataSource;
    DScomptechnic: TDataSource;
    Tadmin���: TAutoIncField;
    Tadmin�����: TWideStringField;
    Tadmin������: TWideStringField;
    Tcomptechnic���: TAutoIncField;
    Tcomptechnic���_�������: TWideStringField;
    Tcomptechnic�����������_�����: TWordField;
    Tcomptechnic���������: TWideStringField;
    Tcomptechnic���: TWideStringField;
    Tcomptechnic���������: TWideStringField;
    Tcomptechnic�������: TBooleanField;
    Tcomptechnic���������: TWideStringField;
    Tcomptechnic���: TWideStringField;
    Tcomptechnic����_������������: TWideStringField;
    Tcomptechnic����_��������: TDateTimeField;
    Tcomptechnic��: TWideStringField;
    Tcomptechnic�����: TWideStringField;
    ADOQuery1: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit4, Unit3, Unit1, Unit5, Unit7;

end.
