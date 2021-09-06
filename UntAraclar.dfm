object FrmAraclar: TFrmAraclar
  Left = 0
  Top = 0
  Caption = 'Ara'#231'lar'
  ClientHeight = 520
  ClientWidth = 965
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
  object PnlArac: TPanel
    Left = 0
    Top = 0
    Width = 965
    Height = 113
    Align = alTop
    BevelInner = bvLowered
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Plaka'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 130
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Ara'#231' Tipi'
    end
    object Label3: TLabel
      Left = 281
      Top = 16
      Width = 29
      Height = 13
      Caption = 'Marka'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 487
      Top = 13
      Width = 28
      Height = 13
      Caption = 'Model'
      FocusControl = DBEdit4
    end
    object Label7: TLabel
      Left = 236
      Top = 59
      Width = 65
      Height = 13
      Caption = 'Varl'#305'k Durumu'
    end
    object Label8: TLabel
      Left = 387
      Top = 59
      Width = 84
      Height = 13
      Caption = 'Maksimum Y'#252'k KG'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 527
      Top = 59
      Width = 42
      Height = 13
      Caption = 'Yak'#305't Tipi'
    end
    object Label5: TLabel
      Left = 24
      Top = 59
      Width = 43
      Height = 13
      Caption = 'Model Y'#305'l'#305
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 130
      Top = 59
      Width = 14
      Height = 13
      Caption = 'KM'
      FocusControl = DBEdit6
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 32
      Width = 100
      Height = 21
      DataField = 'Plaka'
      DataSource = aracsource
      TabOrder = 0
    end
    object DBEdit3: TDBEdit
      Left = 281
      Top = 32
      Width = 200
      Height = 21
      DataField = 'Marka'
      DataSource = aracsource
      TabOrder = 1
    end
    object DBEdit4: TDBEdit
      Left = 487
      Top = 32
      Width = 200
      Height = 21
      DataField = 'Model'
      DataSource = aracsource
      TabOrder = 2
    end
    object DBEdit8: TDBEdit
      Left = 387
      Top = 75
      Width = 134
      Height = 21
      DataField = 'MaksYukKapasitesi'
      DataSource = aracsource
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 24
      Top = 75
      Width = 100
      Height = 21
      DataField = 'ModelYili'
      DataSource = aracsource
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 130
      Top = 75
      Width = 100
      Height = 21
      DataField = 'KM'
      DataSource = aracsource
      TabOrder = 5
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 113
    Width = 919
    Height = 407
    Align = alClient
    DataSource = aracsource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Plaka'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AracTipi'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Marka'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Model'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Durumu'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MaksYukKapasitesi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YakitTipi'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ModelYili'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KM'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 919
    Top = 113
    Width = 46
    Height = 407
    DataSource = aracsource
    Align = alRight
    Kind = dbnVertical
    TabOrder = 2
  end
  object DBComboBox1: TDBComboBox
    Left = 527
    Top = 75
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'YakitTipi'
    DataSource = aracsource
    Items.Strings = (
      'Dizel'
      'EuroDizel'
      'Benzin')
    TabOrder = 3
  end
  object DBComboBox2: TDBComboBox
    Left = 236
    Top = 75
    Width = 145
    Height = 21
    Style = csDropDownList
    DataField = 'Durumu'
    DataSource = aracsource
    Items.Strings = (
      'Kiral'#305'k'
      'Kendi Arac'#305'm'#305'z')
    TabOrder = 4
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 130
    Top = 32
    Width = 145
    Height = 21
    DataField = 'AracTipi'
    DataSource = aracsource
    KeyField = 'ID'
    ListField = 'AracTipi'
    ListSource = tiplersource
    TabOrder = 5
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 720
    Top = 24
  end
  object araclar: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Araclar'
    Left = 792
    Top = 24
    object araclarID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object araclarPlaka: TWideStringField
      FieldName = 'Plaka'
      Size = 255
    end
    object araclarAracTipi: TIntegerField
      DisplayLabel = 'Ara'#231' Tipi'
      FieldName = 'AracTipi'
    end
    object araclarMarka: TWideStringField
      FieldName = 'Marka'
      Size = 255
    end
    object araclarModel: TWideStringField
      FieldName = 'Model'
      Size = 255
    end
    object araclarDurumu: TWideStringField
      DisplayLabel = 'Varl'#305'k Durumu'
      FieldName = 'Durumu'
      Size = 255
    end
    object araclarMaksYukKapasitesi: TIntegerField
      DisplayLabel = 'Maksimum Y'#252'k KG'
      DisplayWidth = 10
      FieldName = 'MaksYukKapasitesi'
    end
    object araclarYakitTipi: TWideStringField
      DisplayLabel = 'Yak'#305't Tipi'
      FieldName = 'YakitTipi'
      Size = 255
    end
    object araclarModelYili: TIntegerField
      DisplayLabel = 'Model Y'#305'l'#305
      FieldName = 'ModelYili'
      MaxValue = 2030
      MinValue = 1980
    end
    object araclarKM: TIntegerField
      FieldName = 'KM'
    end
  end
  object aracsource: TDataSource
    DataSet = araclar
    Left = 864
    Top = 24
  end
  object tipler: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'AracTip'
    Left = 792
    Top = 80
    object tiplerID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object tiplerAracTipi: TWideStringField
      FieldName = 'AracTipi'
      Size = 255
    end
    object tiplerAciklama: TWideMemoField
      FieldName = 'Aciklama'
      BlobType = ftWideMemo
    end
    object tiplerKMUcreti: TIntegerField
      FieldName = 'KMUcreti'
    end
  end
  object tiplersource: TDataSource
    DataSet = tipler
    Left = 864
    Top = 80
  end
end
