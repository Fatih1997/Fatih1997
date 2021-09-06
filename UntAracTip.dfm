object FrmAracTip: TFrmAracTip
  Left = 0
  Top = 0
  Caption = 'Ara'#231' Tipleri'
  ClientHeight = 449
  ClientWidth = 960
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
  object GrdAracTip: TDBGrid
    Left = 0
    Top = 0
    Width = 619
    Height = 449
    Align = alClient
    DataSource = tiplersource
    TabOrder = 0
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
        FieldName = 'AracTipi'
        Title.Caption = 'Ara'#231' Tipi'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Aciklama'
        Title.Caption = 'A'#231#305'klama'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KMUcreti'
        Title.Alignment = taRightJustify
        Title.Caption = 'KM '#220'creti'
        Width = 100
        Visible = True
      end>
  end
  object PnlAracTip: TPanel
    Left = 619
    Top = 0
    Width = 341
    Height = 449
    Align = alRight
    BevelInner = bvLowered
    TabOrder = 1
    object Label1: TLabel
      Left = 6
      Top = 199
      Width = 28
      Height = 13
      Caption = 'Tip ID'
      FocusControl = DBEdit1
      Visible = False
    end
    object Label2: TLabel
      Left = 6
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Ara'#231' Tipi'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 6
      Top = 48
      Width = 41
      Height = 13
      Caption = 'A'#231#305'klama'
      FocusControl = DBMemo1
    end
    object Label4: TLabel
      Left = 6
      Top = 160
      Width = 45
      Height = 13
      Caption = 'KM '#220'creti'
      FocusControl = DBEdit3
    end
    object DBNavigator1: TDBNavigator
      Left = 295
      Top = 2
      Width = 44
      Height = 445
      DataSource = tiplersource
      Align = alRight
      Kind = dbnVertical
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 6
      Top = 215
      Width = 134
      Height = 21
      DataField = 'ID'
      DataSource = tiplersource
      ReadOnly = True
      TabOrder = 1
      Visible = False
    end
    object DBEdit2: TDBEdit
      Left = 6
      Top = 24
      Width = 283
      Height = 21
      DataField = 'AracTipi'
      DataSource = tiplersource
      TabOrder = 2
    end
    object DBMemo1: TDBMemo
      Left = 6
      Top = 64
      Width = 283
      Height = 89
      DataField = 'Aciklama'
      DataSource = tiplersource
      TabOrder = 3
    end
    object DBEdit3: TDBEdit
      Left = 6
      Top = 176
      Width = 134
      Height = 21
      DataField = 'KMUcreti'
      DataSource = tiplersource
      TabOrder = 4
    end
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 440
    Top = 352
  end
  object tipler: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'AracTip'
    Left = 512
    Top = 352
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
      DisplayValue = dvFull
    end
    object tiplerKMUcreti: TIntegerField
      FieldName = 'KMUcreti'
    end
  end
  object tiplersource: TDataSource
    DataSet = tipler
    Left = 584
    Top = 352
  end
end
