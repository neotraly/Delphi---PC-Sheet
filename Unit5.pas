unit Unit5;   // добавление новой записи

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Button1: TButton;
    Button2: TButton;
    DBComboBox1: TDBComboBox;
    Label13: TLabel;
    DBEdit6: TDBEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  Res : Integer;
implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4;

procedure TForm5.Button1Click(Sender: TObject);
begin
    if form2.TComptechnic.modified then
    begin
      form2.Tcomptechnic.Post ;
      form4.Visible:=true;
      form5.Close;
    end;
    end;
procedure TForm5.Button2Click(Sender: TObject);
begin
  if form2.Tcomptechnic.Modified=false then
     begin
        Res := MessageBox(
    Self.Handle
    , PChar('Вы действительно хотите вернуться?')
    , PChar('Внимание!')
    , MB_YESNO + MB_ICONINFORMATION
  );
      case Res of
      IDYES : begin
        form4.Show;
        form5.hide;
      end;
      IDNO : begin

      end;
     end;
     end;
    form4.Show;
    form5.Visible:=false;
end;

end.
