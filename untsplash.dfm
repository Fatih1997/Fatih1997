object splashfrm: Tsplashfrm
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 199
  ClientWidth = 429
  Color = 3487029
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  StyleElements = []
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 429
    Height = 199
    Align = alClient
    Alignment = taCenter
    AutoSize = False
    Caption = 'Lojistik Takip Program'#305
    Color = 3487029
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -40
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
    StyleElements = []
    ExplicitLeft = 200
    ExplicitTop = 96
    ExplicitWidth = 31
    ExplicitHeight = 13
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 104
    Top = 136
  end
end
