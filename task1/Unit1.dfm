object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LblResult: TLabel
    Left = 216
    Top = 176
    Width = 3
    Height = 15
    OnClick = BtnMinClick
  end
  object EditX: TEdit
    Left = 48
    Top = 56
    Width = 65
    Height = 23
    TabOrder = 0
    Text = 'Edit X'
  end
  object EditY: TEdit
    Left = 136
    Top = 56
    Width = 65
    Height = 23
    TabOrder = 1
    Text = 'Edit Y'
  end
  object EditZ: TEdit
    Left = 224
    Top = 56
    Width = 65
    Height = 23
    TabOrder = 2
    Text = 'Edit Z'
  end
  object BtnSin: TButton
    Left = 32
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Sin'
    TabOrder = 3
    OnClick = BtnSinClick
  end
  object BtnCos: TButton
    Left = 32
    Top = 183
    Width = 75
    Height = 25
    Caption = 'Cos'
    TabOrder = 4
    OnClick = BtnCosClick
  end
  object BtnTg: TButton
    Left = 32
    Top = 214
    Width = 75
    Height = 25
    Caption = 'Tg'
    TabOrder = 5
    OnClick = BtnTgClick
  end
  object BtnMax: TButton
    Left = 136
    Top = 176
    Width = 41
    Height = 17
    Caption = 'max'
    TabOrder = 6
    OnClick = BtnMaxClick
  end
  object BtnMin: TButton
    Left = 136
    Top = 199
    Width = 41
    Height = 17
    Caption = 'min'
    TabOrder = 7
    OnClick = BtnMinClick
  end
end
