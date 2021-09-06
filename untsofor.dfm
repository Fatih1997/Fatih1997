object frmsofor: Tfrmsofor
  Left = 0
  Top = 0
  Caption = #350'of'#246'rler'
  ClientHeight = 511
  ClientWidth = 980
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
  object DBNavigator1: TDBNavigator
    Left = 936
    Top = 0
    Width = 44
    Height = 511
    DataSource = soforsource
    Align = alRight
    Kind = dbnVertical
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 624
    Top = 0
    Width = 312
    Height = 511
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 50
      Height = 13
      Caption = 'Ad'#305' Soyad'#305
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 62
      Height = 13
      Caption = 'Do'#287'um Tarihi'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 16
      Top = 112
      Width = 41
      Height = 13
      Caption = 'Kimlik No'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 16
      Top = 152
      Width = 34
      Height = 13
      Caption = 'Ehliyeti'
    end
    object Label5: TLabel
      Left = 16
      Top = 216
      Width = 54
      Height = 13
      Caption = 'Medeni Hali'
    end
    object Label6: TLabel
      Left = 16
      Top = 256
      Width = 27
      Height = 13
      Caption = 'Maa'#351#305
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 48
      Width = 250
      Height = 21
      DataField = 'AdiSoyadi'
      DataSource = soforsource
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 16
      Top = 88
      Width = 100
      Height = 21
      DataField = 'DogumTarihi'
      DataSource = soforsource
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 16
      Top = 128
      Width = 100
      Height = 21
      DataField = 'KimlikNo'
      DataSource = soforsource
      TabOrder = 2
    end
    object DBCheckBox1: TDBCheckBox
      Left = 16
      Top = 192
      Width = 97
      Height = 17
      Caption = 'Emekli mi?'
      DataField = 'Emeklimi'
      DataSource = soforsource
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 16
      Top = 272
      Width = 134
      Height = 21
      DataField = 'Maas'
      DataSource = soforsource
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 624
    Height = 511
    Align = alClient
    DataSource = soforsource
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'AdiSoyadi'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DogumTarihi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KimlikNo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EhliyetSinifi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Emeklimi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MedeniHali'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Maas'
        Visible = True
      end>
  end
  object DBComboBox1: TDBComboBox
    Left = 640
    Top = 169
    Width = 145
    Height = 21
    DataField = 'EhliyetSinifi'
    DataSource = soforsource
    Items.Strings = (
      'B'
      'D'
      'E'
      'F')
    TabOrder = 3
  end
  object DBComboBox2: TDBComboBox
    Left = 640
    Top = 233
    Width = 145
    Height = 21
    DataField = 'MedeniHali'
    DataSource = soforsource
    Items.Strings = (
      'Evli'
      'Bekar'
      'Bo'#351'anm'#305#351)
    TabOrder = 4
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 656
    Top = 408
  end
  object soforler: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Soforler'
    Left = 728
    Top = 408
    object soforlerID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object soforlerAdiSoyadi: TWideStringField
      DisplayLabel = 'Ad'#305' Soyad'#305
      FieldName = 'AdiSoyadi'
      Size = 120
    end
    object soforlerDogumTarihi: TDateTimeField
      DisplayLabel = 'Do'#287'um Tarihi'
      FieldName = 'DogumTarihi'
      EditMask = '!90/00/0000'
    end
    object soforlerKimlikNo: TWideStringField
      DisplayLabel = 'Kimlik No'
      FieldName = 'KimlikNo'
      Size = 11
    end
    object soforlerEhliyetSinifi: TWideStringField
      DisplayLabel = 'Ehliyeti'
      FieldName = 'EhliyetSinifi'
      Size = 5
    end
    object soforlerEmeklimi: TBooleanField
      DisplayLabel = 'Emekli mi?'
      FieldName = 'Emeklimi'
    end
    object soforlerMedeniHali: TWideStringField
      DisplayLabel = 'Medeni Hali'
      FieldName = 'MedeniHali'
      Size = 10
    end
    object soforlerMaas: TIntegerField
      DisplayLabel = 'Maa'#351#305
      FieldName = 'Maas'
    end
  end
  object soforsource: TDataSource
    DataSet = soforler
    Left = 800
    Top = 408
  end
end
