object frmlojistik: Tfrmlojistik
  Left = 0
  Top = 0
  Caption = 'Lojistik Y'#246'netimi'
  ClientHeight = 583
  ClientWidth = 1092
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 544
    Top = 296
    object anmlamalar1: TMenuItem
      Caption = 'Tan'#305'mlamalar'
      object AraTipleri1: TMenuItem
        Caption = 'Ara'#231' Tipleri'
        OnClick = AraTipleri1Click
      end
      object Aralar1: TMenuItem
        Caption = 'Ara'#231'lar'
        OnClick = Aralar1Click
      end
      object ofrler1: TMenuItem
        Caption = #350'of'#246'rler'
        OnClick = ofrler1Click
      end
    end
    object Hareketler1: TMenuItem
      Caption = 'Hareketler'
      object amalemleri1: TMenuItem
        Caption = 'Ta'#351#305'ma '#304#351'lemleri'
        OnClick = amalemleri1Click
      end
    end
    object Kullanclar1: TMenuItem
      Caption = 'Kullan'#305'c'#305'lar'
      object Kullanclar2: TMenuItem
        Caption = 'Kullan'#305'c'#305'lar'
        OnClick = Kullanclar2Click
      end
    end
    object Yardm1: TMenuItem
      Caption = 'Yard'#305'm'
      object Hazrlayan1: TMenuItem
        Caption = 'Haz'#305'rlayan'
        OnClick = Hazrlayan1Click
      end
    end
  end
end
