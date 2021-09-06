object frmgiris: Tfrmgiris
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'Giri'#351
  ClientHeight = 91
  ClientWidth = 395
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 21
  object Label1: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 15
    Width = 85
    Height = 21
    Margins.Top = 15
    Alignment = taCenter
    Caption = 'Kullan'#305'c'#305' Ad'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 53
    Width = 32
    Height = 21
    Alignment = taCenter
    Caption = #350'ifre'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 255
    Top = 12
    Width = 119
    Height = 29
    Caption = 'Giri'#351
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 255
    Top = 47
    Width = 119
    Height = 29
    Caption = 'Kapat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Edit1: TEdit
    AlignWithMargins = True
    Left = 98
    Top = 12
    Width = 150
    Height = 29
    Margins.Left = 50
    Margins.Right = 50
    Alignment = taCenter
    TabOrder = 0
  end
  object Edit2: TEdit
    AlignWithMargins = True
    Left = 98
    Top = 47
    Width = 150
    Height = 29
    Margins.Left = 50
    Margins.Right = 50
    Alignment = taCenter
    PasswordChar = '*'
    TabOrder = 1
  end
end
