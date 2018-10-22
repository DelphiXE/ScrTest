object FmMain: TFmMain
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1075#1086' '#1087#1089#1080#1093#1086#1083#1086#1075#1072
  ClientHeight = 638
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GBoxInfo: TGroupBox
    Left = 8
    Top = 8
    Width = 561
    Height = 137
    TabOrder = 0
    object LblZak: TLabel
      Left = 3
      Top = 18
      Width = 272
      Height = 19
      Caption = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1077' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1075#1086' '#1087#1089#1080#1093#1086#1083#1086#1075#1072' '#8470
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LblFam: TLabel
      Left = 3
      Top = 75
      Width = 63
      Height = 19
      Caption = #1060#1072#1084#1080#1083#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LblName: TLabel
      Left = 168
      Top = 75
      Width = 28
      Height = 19
      Caption = #1048#1084#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LblOtch: TLabel
      Left = 295
      Top = 75
      Width = 64
      Height = 19
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object LblYear: TLabel
      Left = 460
      Top = 75
      Width = 95
      Height = 19
      Caption = #1043#1086#1076' '#1088#1086#1078#1076#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
    end
    object EdtFam: TEdit
      Left = 3
      Top = 96
      Width = 159
      Height = 27
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object EdtName: TEdit
      Left = 168
      Top = 96
      Width = 121
      Height = 27
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object EdtOtch: TEdit
      Left = 295
      Top = 96
      Width = 159
      Height = 27
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object EdtZakl: TEdit
      Left = 281
      Top = 15
      Width = 100
      Height = 27
      Hint = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1084#1077#1076#1080#1094#1080#1085#1089#1082#1086#1075#1086' '#1079#1072#1082#1083#1102#1095#1077#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object CmbYear: TComboBox
      Left = 460
      Top = 96
      Width = 95
      Height = 27
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Times New Roman'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        '1935'
        '1936'
        '1937'
        '1938'
        '1939'
        '1940'
        '1941'
        '1942'
        '1943'
        '1944'
        '1945'
        '1946'
        '1947'
        '1948'
        '1949'
        '1950'
        '1951'
        '1952'
        '1953'
        '1954'
        '1955'
        '1956'
        '1957'
        '1958'
        '1959'
        '1960'
        '1961'
        '1962'
        '1963'
        '1964'
        '1965'
        '1966'
        '1967'
        '1968'
        '1969'
        '1970'
        '1971'
        '1972'
        '1973'
        '1974'
        '1975'
        '1976'
        '1977'
        '1978'
        '1979'
        '1980'
        '1981'
        '1982'
        '1983'
        '1984'
        '1985'
        '1986'
        '1987'
        '1988'
        '1989'
        '1990'
        '1991'
        '1992'
        '1993'
        '1994'
        '1995'
        '1996'
        '1997'
        '1998'
        '1999'
        '2000'
        '2001'
        '2002'
        '2003'
        '2004'
        '2005'
        '2006'
        '2007'
        '2008'
        '2009'
        '2010'
        '2011'
        '2012')
    end
  end
  object GBoxResult: TGroupBox
    Left = 8
    Top = 157
    Width = 561
    Height = 478
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1089#1082#1088#1080#1085#1080#1085#1075' - '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1103
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object LblTest1: TLabel
      Left = 10
      Top = 27
      Width = 64
      Height = 20
      Hint = 
        #1052#1077#1090#1086#1076#1080#1082#1072' '#1076#1080#1092#1092#1077#1088#1077#1085#1094#1080#1072#1083#1100#1085#1086#1081' '#1076#1080#1072#1075#1085#1086#1089#1090#1080#1082#1080' '#1076#1077#1087#1088#1077#1089#1089#1080#1074#1085#1099#1093' '#1089#1086#1089#1090#1086#1103#1085#1080#1081' '#1062#1091#1085 +
        #1075#1072
      Caption = #1058#1077#1089#1090' '#8470'1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object LblUD: TLabel
      Left = 86
      Top = 30
      Width = 198
      Height = 17
      Caption = #1059#1088#1086#1074#1077#1085#1100' '#1076#1077#1087#1088#1077#1089#1089#1080#1080' ('#1059#1044')'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ShowAccelChar = False
    end
    object LblNPA: TLabel
      Left = 84
      Top = 76
      Width = 252
      Height = 17
      Caption = #1053#1077#1088#1074#1085#1086'-'#1087#1089#1080#1093#1080#1095#1077#1089#1082#1072#1103' '#1072#1076#1072#1087#1090#1072#1094#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object LblTest2: TLabel
      Left = 8
      Top = 73
      Width = 64
      Height = 20
      Caption = #1058#1077#1089#1090' '#8470'2'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century'
      Font.Style = []
      ParentFont = False
    end
    object LblRT: TLabel
      Left = 82
      Top = 127
      Width = 324
      Height = 17
      Caption = #1056#1077#1072#1082#1090#1080#1074#1085#1072#1103' ('#1089#1080#1090#1091#1072#1090#1080#1074#1085#1072#1103') '#1090#1088#1077#1074#1086#1078#1085#1086#1089#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object LblTest3: TLabel
      Left = 8
      Top = 124
      Width = 64
      Height = 20
      Hint = #1058#1077#1089#1090' '#1057#1087#1080#1083#1073#1077#1088#1075#1077#1088'-'#1061#1072#1085#1080#1085
      Caption = #1058#1077#1089#1090' '#8470'3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object LblLt: TLabel
      Left = 86
      Top = 173
      Width = 198
      Height = 17
      Caption = #1051#1080#1095#1085#1086#1089#1090#1085#1072#1103' '#1090#1088#1077#1074#1086#1078#1085#1086#1089#1090#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object LblTest4: TLabel
      Left = 10
      Top = 222
      Width = 64
      Height = 20
      Hint = #1058#1077#1089#1090' '#1041#1072#1089#1089#1072'-'#1044#1072#1088#1082#1080
      Caption = #1058#1077#1089#1090' '#8470'4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
    end
    object LblIVR: TLabel
      Left = 86
      Top = 225
      Width = 225
      Height = 17
      Caption = #1048#1085#1076#1077#1082#1089' '#1074#1088#1072#1078#1076#1077#1073#1085#1099#1093' '#1088#1077#1072#1082#1094#1080#1081
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object LblIAR: TLabel
      Left = 86
      Top = 271
      Width = 234
      Height = 17
      Caption = #1048#1085#1076#1077#1082#1089' '#1072#1075#1088#1077#1089#1089#1080#1074#1085#1099#1093' '#1088#1077#1072#1082#1094#1080#1081
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object LblTest5: TLabel
      Left = 10
      Top = 314
      Width = 64
      Height = 20
      Caption = #1058#1077#1089#1090' '#8470'5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
    end
    object LblAlco: TLabel
      Left = 86
      Top = 317
      Width = 162
      Height = 17
      Caption = #1058#1077#1089#1090' '#1085#1072' '#1072#1083#1082#1086#1075#1086#1083#1080#1079#1084
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
    end
    object LblVivod: TLabel
      Left = 10
      Top = 360
      Width = 54
      Height = 20
      Caption = #1042#1099#1074#1086#1076':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Century'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
    end
    object EdtUD: TEdit
      Left = 24
      Top = 49
      Width = 67
      Height = 26
      Alignment = taCenter
      TabOrder = 0
      OnChange = EdtUDChange
      OnKeyPress = EdtUDKeyPress
    end
    object EdtNPA: TEdit
      Left = 24
      Top = 97
      Width = 67
      Height = 26
      Alignment = taCenter
      TabOrder = 2
      OnChange = EdtNPAChange
      OnKeyPress = EdtNPAKeyPress
    end
    object EdtUD2: TEdit
      Left = 112
      Top = 49
      Width = 145
      Height = 26
      Enabled = False
      TabOrder = 1
    end
    object EdtNPA2: TEdit
      Left = 112
      Top = 97
      Width = 145
      Height = 26
      Enabled = False
      TabOrder = 3
    end
    object EdtRT2: TEdit
      Tag = 1
      Left = 112
      Top = 146
      Width = 145
      Height = 26
      Alignment = taCenter
      Enabled = False
      TabOrder = 5
    end
    object EdtRT: TEdit
      Left = 24
      Top = 146
      Width = 67
      Height = 26
      Alignment = taCenter
      TabOrder = 4
      OnChange = EdtRTChange
      OnKeyPress = EdtRTKeyPress
    end
    object EdtLt: TEdit
      Tag = 2
      Left = 24
      Top = 196
      Width = 67
      Height = 26
      Alignment = taCenter
      TabOrder = 6
      OnChange = EdtLtChange
      OnKeyPress = EdtRTKeyPress
    end
    object EdtLt2: TEdit
      Tag = 3
      Left = 112
      Top = 196
      Width = 145
      Height = 26
      Alignment = taCenter
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 7
    end
    object EdtIVR: TEdit
      Tag = 3
      Left = 112
      Top = 244
      Width = 145
      Height = 26
      Alignment = taCenter
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 8
    end
    object EdtIAR: TEdit
      Tag = 3
      Left = 110
      Top = 288
      Width = 145
      Height = 26
      Alignment = taCenter
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 9
    end
    object EdtAlco2: TEdit
      Tag = 3
      Left = 112
      Top = 334
      Width = 145
      Height = 26
      Alignment = taCenter
      Ctl3D = True
      Enabled = False
      ParentCtl3D = False
      TabOrder = 10
    end
    object EdtAlco: TEdit
      Tag = 2
      Left = 24
      Top = 334
      Width = 67
      Height = 26
      Alignment = taCenter
      TabOrder = 11
      OnChange = EdtAlcoChange
      OnKeyPress = EdtAlcoKeyPress
    end
    object MemoVivod: TMemo
      Left = 24
      Top = 386
      Width = 461
      Height = 89
      Hint = #1047#1072#1082#1083#1102#1095#1077#1085#1080#1077' '#1076#1086#1082#1090#1086#1088#1072
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
    end
    object BtnReport: TBitBtn
      Left = 491
      Top = 385
      Width = 64
      Height = 90
      Caption = #1054#1090#1095#1077#1090
      TabOrder = 13
    end
  end
end
