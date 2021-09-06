object frmtasima: Tfrmtasima
  Left = 0
  Top = 0
  Caption = 'Ta'#351#305'ma '
  ClientHeight = 529
  ClientWidth = 1041
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1041
    Height = 233
    Align = alTop
    Caption = 'tasimasource'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 49
      Height = 13
      Caption = 'Ta'#351#305'ma No'
      FocusControl = DBEdit1
    end
    object Label4: TLabel
      Left = 8
      Top = 136
      Width = 24
      Height = 13
      Caption = 'Tarih'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 168
      Top = 16
      Width = 35
      Height = 13
      Caption = 'M'#252#351'teri'
      FocusControl = DBEdit5
    end
    object Label6: TLabel
      Left = 168
      Top = 56
      Width = 64
      Height = 13
      Caption = 'Kalk'#305#351' Noktas'#305
      FocusControl = DBEdit6
    end
    object Label7: TLabel
      Left = 168
      Top = 96
      Width = 61
      Height = 13
      Caption = 'Var'#305#351' Noktas'#305
      FocusControl = DBEdit7
    end
    object Label8: TLabel
      Left = 168
      Top = 136
      Width = 46
      Height = 13
      Caption = 'G'#252'zergah'
      FocusControl = DBEdit8
    end
    object Label9: TLabel
      Left = 8
      Top = 184
      Width = 51
      Height = 13
      Caption = 'Toplam KM'
      FocusControl = DBEdit9
    end
    object Label10: TLabel
      Left = 134
      Top = 184
      Width = 62
      Height = 13
      Caption = 'Tahmini Yak'#305't'
      FocusControl = DBEdit10
    end
    object Label11: TLabel
      Left = 260
      Top = 184
      Width = 65
      Height = 13
      Caption = 'Tahmini '#220'cret'
      FocusControl = DBEdit11
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 26
      Height = 13
      Caption = #350'of'#246'r'
    end
    object Label3: TLabel
      Left = 8
      Top = 96
      Width = 57
      Height = 13
      Caption = 'Ara'#231' Plakas'#305
    end
    object DBNavigator1: TDBNavigator
      Left = 1000
      Top = 1
      Width = 40
      Height = 231
      DataSource = tasimasource
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      Align = alRight
      Kind = dbnVertical
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 8
      Top = 32
      Width = 120
      Height = 21
      DataField = 'BelgeNo'
      DataSource = tasimasource
      TabOrder = 0
    end
    object DBEdit4: TDBEdit
      Left = 8
      Top = 152
      Width = 120
      Height = 21
      DataField = 'Tarih'
      DataSource = tasimasource
      TabOrder = 2
    end
    object DBEdit5: TDBEdit
      Left = 168
      Top = 32
      Width = 400
      Height = 21
      DataField = 'MusteriAdi'
      DataSource = tasimasource
      TabOrder = 3
    end
    object DBEdit6: TDBEdit
      Left = 168
      Top = 72
      Width = 400
      Height = 21
      DataField = 'KalkisNoktasi'
      DataSource = tasimasource
      TabOrder = 4
    end
    object DBEdit7: TDBEdit
      Left = 168
      Top = 112
      Width = 400
      Height = 21
      DataField = 'VarisNoktasi'
      DataSource = tasimasource
      TabOrder = 5
    end
    object DBEdit8: TDBEdit
      Left = 168
      Top = 152
      Width = 400
      Height = 21
      DataField = 'Guzergah'
      DataSource = tasimasource
      TabOrder = 6
    end
    object DBEdit9: TDBEdit
      Left = 8
      Top = 200
      Width = 120
      Height = 21
      DataField = 'KM'
      DataSource = tasimasource
      TabOrder = 7
      OnExit = DBEdit9Exit
    end
    object DBEdit10: TDBEdit
      Left = 134
      Top = 200
      Width = 120
      Height = 21
      DataField = 'TahminiYakit'
      DataSource = tasimasource
      TabOrder = 8
    end
    object DBEdit11: TDBEdit
      Left = 260
      Top = 200
      Width = 120
      Height = 21
      DataField = 'Ucret'
      DataSource = tasimasource
      TabOrder = 9
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 72
      Width = 145
      Height = 21
      DataField = 'Sofor'
      DataSource = tasimasource
      KeyField = 'ID'
      ListField = 'AdiSoyadi'
      ListSource = soforsource
      TabOrder = 10
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 8
      Top = 113
      Width = 145
      Height = 21
      DataField = 'AracPlaka'
      DataSource = tasimasource
      KeyField = 'Plaka'
      ListField = 'Plaka'
      ListSource = aracsource
      TabOrder = 11
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 233
    Width = 1041
    Height = 296
    Align = alClient
    DataSource = tasimasource
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 824
    Top = 8
  end
  object tasima: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'lojistik'
    Left = 896
    Top = 8
    object tasimaID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
    object tasimaBelgeNo: TWideStringField
      DisplayLabel = 'Ta'#351#305'ma No'
      DisplayWidth = 16
      FieldName = 'BelgeNo'
      Size = 16
    end
    object tasimaSofor: TIntegerField
      DisplayLabel = #350'of'#246'r'
      DisplayWidth = 10
      FieldName = 'Sofor'
    end
    object tasimaAracPlaka: TWideStringField
      DisplayLabel = 'Ara'#231' Plakas'#305
      DisplayWidth = 21
      FieldName = 'AracPlaka'
      Size = 255
    end
    object tasimaTarih: TDateTimeField
      DisplayWidth = 18
      FieldName = 'Tarih'
      EditMask = '!90/00/0000'
    end
    object tasimaMusteriAdi: TWideStringField
      DisplayLabel = 'M'#252#351'teri'
      DisplayWidth = 30
      FieldName = 'MusteriAdi'
      Size = 100
    end
    object tasimaKalkisNoktasi: TWideStringField
      DisplayLabel = 'Kalk'#305#351' Noktas'#305
      DisplayWidth = 34
      FieldName = 'KalkisNoktasi'
      Size = 255
    end
    object tasimaVarisNoktasi: TWideStringField
      DisplayLabel = 'Var'#305#351' Noktas'#305
      DisplayWidth = 25
      FieldName = 'VarisNoktasi'
      Size = 255
    end
    object tasimaGuzergah: TWideStringField
      DisplayLabel = 'G'#252'zergah'
      DisplayWidth = 255
      FieldName = 'Guzergah'
      Size = 255
    end
    object tasimaKM: TIntegerField
      DisplayLabel = 'Toplam KM'
      DisplayWidth = 10
      FieldName = 'KM'
    end
    object tasimaTahminiYakit: TIntegerField
      DisplayLabel = 'Tahmini Yak'#305't'
      DisplayWidth = 10
      FieldName = 'TahminiYakit'
    end
    object tasimaUcret: TIntegerField
      DisplayLabel = 'Tahmini '#220'cret'
      DisplayWidth = 10
      FieldName = 'Ucret'
    end
  end
  object tasimasource: TDataSource
    DataSet = tasima
    Left = 968
    Top = 8
  end
  object soforler: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Soforler'
    Left = 896
    Top = 56
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
    Left = 968
    Top = 56
  end
  object aracsource: TDataSource
    DataSet = araclar
    Left = 968
    Top = 104
  end
  object araclar: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Araclar'
    Left = 896
    Top = 104
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
      MaxValue = 1980
      MinValue = 2030
    end
    object araclarKM: TIntegerField
      FieldName = 'KM'
    end
  end
  object tipler: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'ID'
    MasterFields = 'AracTipi'
    MasterSource = aracsource
    TableName = 'AracTip'
    Left = 896
    Top = 160
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
    Left = 968
    Top = 160
  end
end
