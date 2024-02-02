object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 303
  ClientWidth = 478
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=compt' +
      'echnic.mdb;Mode=Share Deny None;Persist Security Info=False;Jet ' +
      'OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Da' +
      'tabase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Lo' +
      'cking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Globa' +
      'l Bulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLE' +
      'DB:Create System Database=False;Jet OLEDB:Encrypt Database=False' +
      ';Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact ' +
      'Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
    Top = 8
  end
  object Tadmin: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'admin'
    Left = 24
    Top = 80
    object TadminКод: TAutoIncField
      FieldName = #1050#1086#1076
      ReadOnly = True
      Visible = False
    end
    object TadminЛогин: TWideStringField
      FieldName = #1051#1086#1075#1080#1085
      Required = True
      Size = 25
    end
    object TadminПароль: TWideStringField
      FieldName = #1055#1072#1088#1086#1083#1100
      Required = True
      Size = 5
    end
  end
  object Tcomptechnic: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'technic'
    Left = 24
    Top = 136
    object TcomptechnicКод: TAutoIncField
      DisplayWidth = 5
      FieldName = #1050#1086#1076
      ReadOnly = True
      Visible = False
    end
    object TcomptechnicВид_Техники: TWideStringField
      DisplayWidth = 14
      FieldName = #1042#1080#1076'_'#1058#1077#1093#1085#1080#1082#1080
      Size = 40
    end
    object TcomptechnicИнвентарный_номер: TWordField
      DisplayWidth = 17
      FieldName = #1048#1085#1074#1077#1085#1090#1072#1088#1085#1099#1081'_'#1085#1086#1084#1077#1088
    end
    object TcomptechnicДолжность: TWideStringField
      DisplayWidth = 15
      FieldName = #1044#1086#1083#1078#1085#1086#1089#1090#1100
      Size = 255
    end
    object TcomptechnicФИО: TWideStringField
      DisplayWidth = 16
      FieldName = #1060#1048#1054
      Size = 30
    end
    object TcomptechnicСостояние: TWideStringField
      DisplayWidth = 12
      FieldName = #1057#1086#1089#1090#1086#1103#1085#1080#1077
      Size = 15
    end
    object TcomptechnicПаспорт: TBooleanField
      DisplayWidth = 9
      FieldName = #1055#1072#1089#1087#1086#1088#1090
      DisplayValues = #1044#1072';'#1053#1077#1090
    end
    object TcomptechnicПроцессор: TWideStringField
      DisplayWidth = 15
      FieldName = #1055#1088#1086#1094#1077#1089#1089#1086#1088
      Size = 30
    end
    object TcomptechnicОЗУ: TWideStringField
      DisplayWidth = 12
      FieldName = #1054#1047#1059
    end
    object TcomptechnicСрок_эксплуатации: TWideStringField
      DisplayWidth = 16
      FieldName = #1057#1088#1086#1082'_'#1101#1082#1089#1087#1083#1091#1072#1090#1072#1094#1080#1080
      Size = 10
    end
    object TcomptechnicДата_поставки: TDateTimeField
      DisplayWidth = 15
      FieldName = #1044#1072#1090#1072'_'#1087#1086#1089#1090#1072#1074#1082#1080
      EditMask = '!99/99/00;1;_'
    end
    object TcomptechnicОС: TWideStringField
      DisplayWidth = 19
      FieldName = #1054#1057
    end
    object TcomptechnicФирма: TWideStringField
      FieldKind = fkCalculated
      FieldName = #1060#1080#1088#1084#1072
      Calculated = True
    end
  end
  object DSAdmin: TDataSource
    DataSet = Tadmin
    Left = 128
    Top = 88
  end
  object DScomptechnic: TDataSource
    DataSet = Tcomptechnic
    Left = 120
    Top = 152
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DScomptechnic
    Parameters = <>
    SQL.Strings = (
      'select * from admin where '#1051#1086#1075#1080#1085'='#39'+#39+edit1.text+#39'#39)
    Left = 256
    Top = 48
  end
end
