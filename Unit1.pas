unit Unit1; //Главное меню

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    N3: TMenuItem;
    Label1: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Panel3: TPanel;
    procedure N3Click(Sender: TObject);

    procedure Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure N1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit3, Unit2, Unit4;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;

procedure TForm1.N1Click(Sender: TObject);
var h : HWND;
begin

   h := FindWindow('HH Parent','Главное меню');
  if h = 0 then
  WinExec('hh.exe Справка.chm',SW_RESTORE)
  else
  begin
  ShowWindow(h,SW_RESTORE);
  SetForegroundWindow(h);
end;

end;

procedure TForm1.N3Click(Sender: TObject);
var
  Res : Integer;
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

procedure TForm1.Panel1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
    form1.Label2.Caption:=datetostr(date);
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
  form4.show;
  form1.Visible:=false;
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
   form3.Show;
  form1.Visible:=false;
end;

end.
