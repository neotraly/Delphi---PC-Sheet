unit Unit7;  //��������� � ���������

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  ComObj, Excel2000, OleServer, DB,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,  Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB,
  Vcl.Menus;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Image1: TImage;
    Label1: TLabel;
    Edit1: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery1���_�������: TWideStringField;
    ADOQuery1�����������_�����: TIntegerField;
    ADOQuery1���������: TWideStringField;
    ADOQuery1���: TWideStringField;
    ADOQuery1���������: TWideStringField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox5: TCheckBox;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    SaveDialog1: TSaveDialog;
    N3: TMenuItem;
    CheckBox4: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);

    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
  var name, kab, num, vid, sosto:string;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5;

procedure TForm7.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked=true then
    begin
        checkbox2.Checked:=false;
        checkbox3.Checked:=false;
        checkbox4.Checked:=false;
        checkbox5.Checked:=false;

    end;
    
     
    
    
end;

procedure TForm7.CheckBox2Click(Sender: TObject);
begin
   if checkbox2.Checked=true then
    begin
        checkbox1.Checked:=false;
        checkbox3.Checked:=false;
        checkbox4.Checked:=false;
        checkbox5.Checked:=false;

    end;
end;

procedure TForm7.CheckBox3Click(Sender: TObject);
begin
   if checkbox3.Checked=true then
    begin
        checkbox2.Checked:=false;
        checkbox1.Checked:=false;
        checkbox4.Checked:=false;
        checkbox5.Checked:=false;

    end;
end;

procedure TForm7.CheckBox4Click(Sender: TObject);
begin
     if checkbox4.Checked=true then
    begin
        checkbox2.Checked:=false;
        checkbox3.Checked:=false;
        checkbox1.Checked:=false;
        checkbox5.Checked:=false;

    end;
end;

procedure TForm7.CheckBox5Click(Sender: TObject);
begin
     if checkbox5.Checked=true then
    begin
        checkbox2.Checked:=false;
        checkbox3.Checked:=false;
        checkbox4.Checked:=false;
        checkbox1.Checked:=false;

    end;
end;

procedure TForm7.Edit1Change(Sender: TObject);
begin
if checkbox1.Checked=true then
begin
       name:=Edit1.Text;
  if name<>'' then
  begin
    with ADOQuery1 do
    begin
      close;
      SQL.Text:='SELECT * FROM technic WHERE ��� like ' + #39 +'%'+ Edit1.Text +'%'+ #39 + ' ORDER BY ���';
      open
    end;
  end
  else begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM technic ORDER BY ���');
      Open;
    end;
end;
end;
if  checkbox2.Checked=true then
begin
       vid:=Edit1.Text;
  if vid<>'' then begin
    with ADOQuery1 do begin
      close;
      SQL.Text:='SELECT * FROM technic WHERE ���_������� like ' + #39 +'%'+ Edit1.Text +'%'+ #39 + ' ORDER BY ���_�������';
      open
    end;
  end
  else begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM technic ORDER BY ���_�������');
      Open;
    end;
end;
end;
if checkbox3.Checked=true then
begin
       num:=Edit1.Text;
  if num<>'' then
  begin
    with ADOQuery1 do
    begin
      close;
      SQL.Text:='SELECT * FROM technic WHERE �����������_����� like ' + #39 +'%'+ Edit1.Text +'%'+ #39 + ' ORDER BY �����������_�����';
      open
    end;
  end
  else
  begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM technic ORDER BY �����������_�����');
      Open;
    end;
end;
end;
if checkbox4.Checked=true then
begin
       kab:=Edit1.Text;
  if kab<>'' then begin
    with ADOQuery1 do begin
      close;
      SQL.Text:='SELECT * FROM technic WHERE �����_����������_��������� like ' + #39 +'%'+ Edit1.Text +'%'+ #39 + ' ORDER BY �����_����������_���������';
      open
    end;
  end
  else begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM technic ORDER BY �����_����������_���������');
      Open;
    end;
end;
end;
if checkbox5.Checked=true then
begin
       sosto:=Edit1.Text;
  if sosto<>'' then begin
    with ADOQuery1 do begin
      close;
      SQL.Text:='SELECT * FROM technic WHERE ��������� like ' + #39 +'%'+ Edit1.Text +'%'+ #39 + ' ORDER BY ���������';
      open
    end;
  end
  else begin
    with ADOQuery1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM technic ORDER BY ���������');
      Open;
    end;
end;
end;

end;


procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  application.Terminate;
end;

procedure TForm7.N2Click(Sender: TObject);
  const
wdAlignParagraphCenter = 1;
wdAlignParagraphLeft = 0;
wdAlignParagraphRight = 2;

wdLineStyleSingle = 1;
var
wdApp, wdDoc, wdRng, wdTable : Variant;
i, j, Res : Integer;
D : TDateTime;
Bm : TBookMark;
Sd : TSaveDialog;
begin
Sd := SaveDialog1;
if Sd.InitialDir = '' then Sd.InitialDir := ExtractFilePath( ParamStr(0) );
if not Sd.Execute then Exit;
if FileExists(Sd.FileName) then begin
Res := MessageBox(0, '���� � �������� ������ ��� ����������. ������������?'
,'��������!', MB_YESNO + MB_ICONQUESTION + MB_APPLMODAL);
if Res <> IDYES then Exit;
end;
try
wdApp := CreateOleObject('Word.Application');

except
MessageBox(0, '�� ������� ��������� MS Word. �������� ��������.'
,'��������!', MB_OK + MB_ICONERROR + MB_APPLMODAL);
Exit;
end;
wdApp.Visible := True;
wdDoc := wdApp.Documents.Add;
wdApp.ScreenUpdating := False;
try
wdRng := wdDoc.Content;
wdRng.InsertAfter('�����'#13#10);
wdRng.ParagraphFormat.Alignment := wdAlignParagraphCenter;
wdRng.Font.Name := 'Times New Roman';
wdRng.Font.Bold := True;
wdRng.Font.Size := 14;
wdRng.Start := wdRng.End;

wdRng.InsertAfter(#13#10);
D := Now;
wdRng.InsertAfter('����: ' + FormatDateTime('dd.mm.yyyy', D) + #13#10);
wdRng.InsertAfter('�����: ' + FormatDateTime('hh:nn:ss', D) + #13#10);
wdRng.ParagraphFormat.Reset;
wdRng.ParagraphFormat.Alignment := wdAlignParagraphLeft;
wdRng.Font.Reset;
wdRng.Font.Size := 12;
wdRng.Font.Bold := True;
wdRng.Start := wdRng.End;

wdRng.InsertAfter(#13#10);
wdRng.InsertAfter('���� �������'+#13#10);
wdRng.ParagraphFormat.Reset;
wdRng.Font.Reset;
wdRng.Font.Size := 12;
wdRng.Font.Bold := False;
if not ADOQuery1.Active then ADOQuery1.Open;
wdRng.Start := wdRng.End;
wdTable := wdDoc.Tables.Add(wdRng.Characters.Last, 2, ADOQuery1.Fields.Count);
wdTable.Borders.InsideLineStyle := wdLineStyleSingle;
wdTable.Borders.OutsideLineStyle := wdLineStyleSingle;
wdRng.ParagraphFormat.Reset;
wdRng.ParagraphFormat.Alignment := wdAlignParagraphLeft;
wdRng := wdTable.Rows.Item(1).Range;
wdRng.ParagraphFormat.Alignment := wdAlignParagraphCenter;
wdRng.Font.Size := 10;
wdRng.Font.Bold := True;
wdRng := wdTable.Rows.Item(2).Range;
wdRng.ParagraphFormat.Alignment := wdAlignParagraphLeft;
wdRng.Font.Size := 10;
wdRng.Font.Bold := False;
for i := 0 to ADOQuery1.Fields.Count - 1 do
wdTable.Cell(1, i + 1).Range.Text := ADOQuery1.Fields[i].DisplayName;
ADOQuery1.DisableControls;
Bm := ADOQuery1.GetBookMark;
ADOQuery1.First;
i := 1;
while not ADOQuery1.Eof do begin
Inc(i);
if i > 2 then wdTable.Rows.Add;
for j := 0 to ADOQuery1.Fields.Count - 1 do
wdTable.Cell(i, j + 1).Range.Text := ADOQuery1.Fields[j].AsString;
ADOQuery1.Next;
end;
ADOQuery1.GotoBookMark(Bm);
ADOQuery1.EnableControls;
finally
wdApp.ScreenUpdating := True;
end;
wdApp.DisplayAlerts := False;
try
wdDoc.SaveAs(SaveDialog1.FileName);
finally
wdApp.DisplayAlerts := False;
end;
end;



procedure TForm7.N3Click(Sender: TObject);
begin
 form7.close;
 form4.show;
end;

end.
