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
  object StringGrid1: TStringGrid
    Left = 16
    Top = 56
    Width = 320
    Height = 120
    FixedCols = 0
    RowCount = 4
    FixedRows = 0
    TabOrder = 0
  end
  object ButtonFillMatrix: TButton
    Left = 32
    Top = 200
    Width = 129
    Height = 33
    Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1084#1072#1090#1088#1080#1094#1091
    TabOrder = 1
    OnClick = ButtonFillMatrixClick
  end
  object ButtonSwapRows: TButton
    Left = 184
    Top = 200
    Width = 129
    Height = 33
    Caption = #1055#1086#1084#1077#1085#1103#1090#1100' '#1089#1090#1088#1086#1082#1080
    TabOrder = 2
    OnClick = ButtonSwapRowsClick
  end
end
