unit Unit3;  //Форма авторизации

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    MainMenu1: TMainMenu;
    N2: TMenuItem;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    procedure N2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  res: integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit4;

procedure TForm3.N2Click(Sender: TObject);
begin
  form1.Visible:=true;
  form3.Close;
end;


procedure TForm3.SpeedButton1Click(Sender: TObject);

begin
  if (edit1.Text=dbedit1.text) and (edit2.Text=dbedit2.text) then
    begin
      form4.Show;
       form3.Close;
    end
  else
  Res := MessageBox(
    Self.Handle
    , PChar('Введен неверный логин или пароль. Повторите попытку.')
    , PChar('Внимание!')
    , MB_Yesno + MB_ICONINFORMATION
  );

  case Res of
    IDYES : begin

    end;
  end;
end;

end.
