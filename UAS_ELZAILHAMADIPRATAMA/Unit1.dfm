object Form1: TForm1
  Left = 248
  Top = 183
  Width = 563
  Height = 540
  Caption = 'KUSTOMER'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 80
    Top = 32
    Width = 17
    Height = 13
    Caption = 'NIK'
  end
  object Label2: TLabel
    Left = 80
    Top = 64
    Width = 28
    Height = 13
    Caption = 'NAME'
  end
  object Label3: TLabel
    Left = 80
    Top = 96
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object Label4: TLabel
    Left = 80
    Top = 128
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label5: TLabel
    Left = 80
    Top = 160
    Width = 40
    Height = 13
    Caption = 'ALAMAT'
  end
  object Label6: TLabel
    Left = 80
    Top = 192
    Width = 41
    Height = 13
    Caption = 'MEMBER'
  end
  object Label7: TLabel
    Left = 232
    Top = 184
    Width = 52
    Height = 13
    Caption = 'DISCOUNT'
  end
  object Label9: TLabel
    Left = 72
    Top = 456
    Width = 79
    Height = 13
    Caption = 'MASUKAN NAME'
  end
  object Label8: TLabel
    Left = 304
    Top = 184
    Width = 3
    Height = 13
  end
  object edt1: TEdit
    Left = 136
    Top = 24
    Width = 241
    Height = 21
    TabOrder = 0
  end
  object edt2: TEdit
    Left = 136
    Top = 56
    Width = 241
    Height = 21
    TabOrder = 1
  end
  object edt3: TEdit
    Left = 136
    Top = 88
    Width = 241
    Height = 21
    TabOrder = 2
  end
  object edt4: TEdit
    Left = 136
    Top = 120
    Width = 241
    Height = 21
    TabOrder = 3
  end
  object edt5: TEdit
    Left = 136
    Top = 152
    Width = 241
    Height = 21
    TabOrder = 4
  end
  object cbb1: TComboBox
    Left = 136
    Top = 184
    Width = 81
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    OnChange = cbb1Change
  end
  object btn1: TButton
    Left = 80
    Top = 232
    Width = 75
    Height = 25
    Caption = 'BARU'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 176
    Top = 232
    Width = 75
    Height = 25
    Caption = 'SIMPAN'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 272
    Top = 232
    Width = 75
    Height = 25
    Caption = 'EDIT'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 376
    Top = 232
    Width = 75
    Height = 25
    Caption = 'HAPUS'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 176
    Top = 272
    Width = 75
    Height = 25
    Caption = 'BATAL'
    TabOrder = 10
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 280
    Top = 272
    Width = 75
    Height = 25
    Caption = 'CETAK'
    TabOrder = 11
    OnClick = btn6Click
  end
  object dbgrd1: TDBGrid
    Left = 72
    Top = 312
    Width = 385
    Height = 120
    DataSource = DataModule2.ds1
    TabOrder = 12
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt6: TEdit
    Left = 176
    Top = 448
    Width = 121
    Height = 21
    TabOrder = 13
  end
end
