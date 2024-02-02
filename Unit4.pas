unit Unit4;  //Форма Управление

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Menus;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBNavigator1: TDBNavigator;
    MainMenu1: TMainMenu;
    Main: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure MainClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  res:integer;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit1, Unit5, Unit7;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 application.Terminate;
end;

procedure TForm4.MainClick(Sender: TObject);
begin
  form4.Hide;
  form7.Show;

end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
  form2.Tcomptechnic.Append;
  form5.show;
  form4.Visible:=false;
  form5.dbedit1.setfocus;
end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
  form4.hide;
  form5.show;

end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
Res := MessageBox(
    Self.Handle
    , PChar('Точно удалить запись?')
    , PChar('Внимание!')
    , MB_YESNO + MB_ICONINFORMATION
  );

  case Res of
    IDYES : begin
      form2.Tcomptechnic.Delete;
    end;
    IDNO : begin

  end;
  end;

end;

procedure TForm4.SpeedButton4Click(Sender: TObject);

begin

  Res := MessageBox(
    Self.Handle
    , PChar('Вы действительно хотите закрыть программу?')
    , PChar('Внимание!')
    , MB_YESNO + MB_ICONINFORMATION
  );

  case Res of
    IDYES : begin
      close;
    end;
    IDNO : begin

  end;
  end;
end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
begin


  form1.show;
  form4.visible:=false;
end;

end.
