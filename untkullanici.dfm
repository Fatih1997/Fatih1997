object frmkullanici: Tfrmkullanici
  Left = 0
  Top = 0
  Caption = 'Kullan'#305'c'#305
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid3: TDBGrid
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    Align = alClient
    DataSource = kullanicisource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'adi'
        Title.Caption = 'Ad'#305
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sifre'
        Title.Caption = #350'ifre'
        Width = 150
        Visible = True
      end>
  end
  object kullanicisource: TDataSource
    DataSet = kullanici
    Left = 543
    Top = 136
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 543
    Top = 72
  end
  object kullanici: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'kullanicilar'
    Left = 544
    Top = 200
    object kullaniciadi: TWideStringField
      FieldName = 'adi'
      Size = 255
    end
    object kullanicisifre: TWideStringField
      FieldName = 'sifre'
      Size = 255
    end
  end
end
