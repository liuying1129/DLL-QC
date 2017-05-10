object frmQCG2: TfrmQCG2
  Left = 169
  Top = 112
  Width = 800
  Height = 556
  Caption = #22810#20540'L-J'#36136#25511#22270
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = #23435#20307
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 236
    Top = 0
    Width = 5
    Height = 517
  end
  object Splitter2: TSplitter
    Left = 468
    Top = 0
    Width = 5
    Height = 517
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 236
    Height = 517
    Align = alLeft
    Caption = #36136#25511#39033#30446
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 305
      Width = 232
      Height = 210
      Align = alClient
      Color = 16767438
      Ctl3D = False
      DataSource = DataSource1
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
    end
    object Panel1: TPanel
      Left = 2
      Top = 15
      Width = 232
      Height = 290
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 128
        Top = 7
        Width = 24
        Height = 12
        Caption = #26376#20221
      end
      object Label4: TLabel
        Left = 3
        Top = 7
        Width = 48
        Height = 12
        Caption = #36873#25321#24180#20221
      end
      object Label2: TLabel
        Left = 5
        Top = 87
        Width = 48
        Height = 12
        Caption = #26631#26412#31867#22411
      end
      object Label1: TLabel
        Left = 2
        Top = 35
        Width = 228
        Height = 13
        Caption = #27880':'#36755#20837#39033#30446#20195#30721#12289#21517#31216#12289#25340#38899#30721#21518#22238#36710
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = #23435#20307
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 162
        Top = 259
        Width = 66
        Height = 22
        Caption = #26597#25214
        OnClick = SpeedButton1Click
      end
      object LabeledEdit1: TLabeledEdit
        Left = 155
        Top = 102
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #36136#25511#25209#21495
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 8
      end
      object LabeledEdit2: TLabeledEdit
        Left = 5
        Top = 143
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #23454#39564#26041#27861
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 9
      end
      object LabeledEdit3: TLabeledEdit
        Left = 80
        Top = 143
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #23454#39564#35774#22791
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 10
      end
      object LabeledEdit4: TLabeledEdit
        Left = 155
        Top = 143
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 24
        EditLabel.Height = 12
        EditLabel.Caption = #27874#38271
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 11
      end
      object BitBtn3: TBitBtn
        Left = 53
        Top = 239
        Width = 49
        Height = 20
        Caption = #20445#23384'F3'
        TabOrder = 18
        OnClick = BitBtn3Click
      end
      object LabeledEdit7: TLabeledEdit
        Left = 80
        Top = 180
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #24120#20540#38774#20540
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 14
      end
      object LabeledEdit8: TLabeledEdit
        Left = 80
        Top = 214
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 36
        EditLabel.Height = 12
        EditLabel.Caption = #24120#20540'SD'
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 15
      end
      object LabeledEdit14: TLabeledEdit
        Left = 5
        Top = 180
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #39640#20540#38774#20540
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 12
      end
      object LabeledEdit15: TLabeledEdit
        Left = 5
        Top = 214
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 36
        EditLabel.Height = 12
        EditLabel.Caption = #39640#20540'SD'
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 13
      end
      object LabeledEdit20: TLabeledEdit
        Left = 155
        Top = 180
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #20302#20540#38774#20540
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 16
      end
      object LabeledEdit21: TLabeledEdit
        Left = 155
        Top = 214
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 36
        EditLabel.Height = 12
        EditLabel.Caption = #20302#20540'SD'
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 17
      end
      object labelededit28: TComboBox
        Left = 53
        Top = 3
        Width = 72
        Height = 20
        BevelKind = bkFlat
        Style = csDropDownList
        Ctl3D = False
        DropDownCount = 20
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 0
        OnChange = labelededit28Change
      end
      object labelededit29: TComboBox
        Left = 155
        Top = 3
        Width = 72
        Height = 20
        BevelKind = bkFlat
        Style = csDropDownList
        Ctl3D = False
        DropDownCount = 13
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 1
        OnChange = labelededit28Change
        Items.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12')
      end
      object LabeledEdit32: TComboBox
        Left = 4
        Top = 101
        Width = 72
        Height = 20
        BevelKind = bkFlat
        Ctl3D = False
        DropDownCount = 20
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ItemHeight = 12
        ParentCtl3D = False
        TabOrder = 7
      end
      object BitBtn2: TBitBtn
        Left = 4
        Top = 239
        Width = 49
        Height = 20
        Caption = #26032#22686'F2'
        TabOrder = 2
        OnClick = BitBtn2Click
      end
      object BitBtnCopy: TBitBtn
        Left = 162
        Top = 239
        Width = 33
        Height = 20
        Caption = #22797#21046
        TabOrder = 3
        OnClick = BitBtnCopyClick
      end
      object BitBtnPaste: TBitBtn
        Left = 194
        Top = 239
        Width = 33
        Height = 20
        Caption = #31896#36148
        TabOrder = 4
        OnClick = BitBtnPasteClick
      end
      object LabeledEdit26: TLabeledEdit
        Left = 4
        Top = 66
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #39033#30446#20195#30721
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 5
      end
      object LabeledEdit31: TLabeledEdit
        Left = 155
        Top = 66
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 84
        EditLabel.Height = 12
        EditLabel.Caption = #39033#30446#21517#31216'('#22238#36710')'
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 6
        OnKeyDown = LabeledEdit31KeyDown
      end
      object BitBtn4: TBitBtn
        Left = 102
        Top = 239
        Width = 48
        Height = 20
        Caption = #21024#38500'F4'
        TabOrder = 19
        OnClick = BitBtn4Click
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 241
    Top = 0
    Width = 227
    Height = 517
    Align = alLeft
    Caption = #36136#25511#25968#25454
    TabOrder = 1
    object DBGrid2: TDBGrid
      Left = 2
      Top = 195
      Width = 223
      Height = 320
      Align = alClient
      Color = 16767438
      Ctl3D = False
      DataSource = DataSource2
      ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
      ParentCtl3D = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = #23435#20307
      TitleFont.Style = []
      OnExit = DBGrid2Exit
      OnKeyDown = DBGrid2KeyDown
      OnKeyUp = DBGrid2KeyUp
    end
    object Panel2: TPanel
      Left = 2
      Top = 15
      Width = 223
      Height = 180
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object LabeledEdit9: TLabeledEdit
        Left = 75
        Top = 53
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 72
        EditLabel.Height = 12
        EditLabel.Caption = #35745#31639#24120#20540#22343#20540
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 0
      end
      object LabeledEdit10: TLabeledEdit
        Left = 75
        Top = 18
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 54
        EditLabel.Height = 12
        EditLabel.Caption = #24120#20540'CV(%)'
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object LabeledEdit11: TLabeledEdit
        Left = 2
        Top = 158
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #39640#20540#20363#25968
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object LabeledEdit12: TLabeledEdit
        Left = 75
        Top = 88
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 60
        EditLabel.Height = 12
        EditLabel.Caption = #35745#31639#24120#20540'SD'
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object LabeledEdit13: TLabeledEdit
        Left = 75
        Top = 123
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 60
        EditLabel.Height = 12
        EditLabel.Caption = #35745#31639#24120#20540'CV'
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 4
      end
      object LabeledEdit16: TLabeledEdit
        Left = 2
        Top = 18
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 54
        EditLabel.Height = 12
        EditLabel.Caption = #39640#20540'CV(%)'
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object LabeledEdit17: TLabeledEdit
        Left = 2
        Top = 53
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 72
        EditLabel.Height = 12
        EditLabel.Caption = #35745#31639#39640#20540#22343#20540
        EditLabel.Font.Charset = ANSI_CHARSET
        EditLabel.Font.Color = clWindowText
        EditLabel.Font.Height = -12
        EditLabel.Font.Name = #23435#20307
        EditLabel.Font.Style = []
        EditLabel.ParentFont = False
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 6
      end
      object LabeledEdit18: TLabeledEdit
        Left = 2
        Top = 88
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 60
        EditLabel.Height = 12
        EditLabel.Caption = #35745#31639#39640#20540'SD'
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 7
      end
      object LabeledEdit19: TLabeledEdit
        Left = 2
        Top = 123
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 60
        EditLabel.Height = 12
        EditLabel.Caption = #35745#31639#39640#20540'CV'
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object LabeledEdit22: TLabeledEdit
        Left = 148
        Top = 18
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 54
        EditLabel.Height = 12
        EditLabel.Caption = #20302#20540'CV(%)'
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
      end
      object LabeledEdit23: TLabeledEdit
        Left = 148
        Top = 53
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 72
        EditLabel.Height = 12
        EditLabel.Caption = #35745#31639#20302#20540#22343#20540
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 10
      end
      object LabeledEdit24: TLabeledEdit
        Left = 148
        Top = 88
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 60
        EditLabel.Height = 12
        EditLabel.Caption = #35745#31639#20302#20540'SD'
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        TabOrder = 11
      end
      object LabeledEdit25: TLabeledEdit
        Left = 148
        Top = 123
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 60
        EditLabel.Height = 12
        EditLabel.Caption = #35745#31639#20302#20540'CV'
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 12
      end
      object LabeledEdit5: TLabeledEdit
        Left = 75
        Top = 158
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #24120#20540#20363#25968
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
      end
      object LabeledEdit6: TLabeledEdit
        Left = 148
        Top = 158
        Width = 72
        Height = 18
        Ctl3D = False
        EditLabel.Width = 48
        EditLabel.Height = 12
        EditLabel.Caption = #20302#20540#20363#25968
        Enabled = False
        ImeName = #24494#36719#25340#38899#36755#20837#27861' 2007'
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 473
    Top = 0
    Width = 311
    Height = 517
    Align = alClient
    Caption = #22270#35889#20998#26512
    TabOrder = 2
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 307
      Height = 29
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object BitBtn9: TBitBtn
        Left = 78
        Top = 3
        Width = 73
        Height = 21
        Caption = #25171#21360'F9'
        TabOrder = 0
        OnClick = BitBtn9Click
      end
    end
    object DBChart1: TDBChart
      Left = 2
      Top = 44
      Width = 307
      Height = 162
      AllowZoom = False
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Font.Charset = ANSI_CHARSET
      Title.Font.Color = clBlue
      Title.Font.Height = -13
      Title.Font.Name = #23435#20307
      Title.Font.Style = []
      Title.Text.Strings = (
        #39640#20540'L-J'#36136#25511#22270
        '')
      BottomAxis.Axis.Visible = False
      BottomAxis.MinorTickCount = 0
      BottomAxis.MinorTickLength = 0
      LeftAxis.Axis.Visible = False
      LeftAxis.Labels = False
      LeftAxis.MinorTickCount = 0
      LeftAxis.MinorTickLength = 0
      LeftAxis.Title.Caption = '-3SD -2SD -SD X +SD +2SD +3SD'
      Legend.Visible = False
      View3D = False
      Align = alTop
      Color = clWindow
      TabOrder = 1
      object Series2: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = '+3SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series3: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlue
        Title = '+2SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series25: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 16512
        Title = '+SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series26: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 16512
        Title = '-SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series4: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlue
        Title = '-2SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series5: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = '-3SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series6: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlack
        Title = 'X'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series1: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'Value'
        Pointer.Brush.Color = clBlue
        Pointer.HorizSize = 3
        Pointer.InflateMargins = True
        Pointer.Pen.Visible = False
        Pointer.Style = psCircle
        Pointer.VertSize = 3
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object DBChart2: TDBChart
      Left = 2
      Top = 206
      Width = 307
      Height = 163
      AllowZoom = False
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Font.Charset = ANSI_CHARSET
      Title.Font.Color = clBlue
      Title.Font.Height = -13
      Title.Font.Name = #23435#20307
      Title.Font.Style = []
      Title.Text.Strings = (
        #24120#20540'L-J'#36136#25511#22270
        '')
      BottomAxis.Axis.Visible = False
      BottomAxis.MinorTickCount = 0
      BottomAxis.MinorTickLength = 0
      LeftAxis.Axis.Visible = False
      LeftAxis.Labels = False
      LeftAxis.MinorTickCount = 0
      LeftAxis.MinorTickLength = 0
      LeftAxis.Title.Caption = '-3SD -2SD -SD X +SD +2SD +3SD'
      Legend.Visible = False
      View3D = False
      Align = alTop
      Color = clWindow
      TabOrder = 2
      object Series10: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = '+3SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series11: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlue
        Title = '+2SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series27: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 16512
        Title = '+SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series28: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 16512
        Title = '-SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series12: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlue
        Title = '-2SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series13: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = '-3SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series14: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlack
        Title = 'X'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series9: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'Value'
        Pointer.Brush.Color = clBlue
        Pointer.HorizSize = 2
        Pointer.InflateMargins = True
        Pointer.Style = psCircle
        Pointer.VertSize = 2
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
    object DBChart3: TDBChart
      Left = 2
      Top = 369
      Width = 307
      Height = 146
      AllowZoom = False
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      Title.Font.Charset = ANSI_CHARSET
      Title.Font.Color = clBlue
      Title.Font.Height = -13
      Title.Font.Name = #23435#20307
      Title.Font.Style = []
      Title.Text.Strings = (
        #20302#20540'L-J'#36136#25511#22270
        '')
      BottomAxis.Axis.Visible = False
      BottomAxis.MinorTickCount = 0
      BottomAxis.MinorTickLength = 0
      LeftAxis.Axis.Visible = False
      LeftAxis.Labels = False
      LeftAxis.MinorTickCount = 0
      LeftAxis.MinorTickLength = 0
      LeftAxis.Title.Caption = '-3SD -2SD -SD X +SD +2SD +3SD'
      Legend.Visible = False
      View3D = False
      Align = alClient
      Color = clWindow
      TabOrder = 3
      object Series18: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = '+3SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series19: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlue
        Title = '+2SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series29: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 16512
        Title = '+SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series30: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = 16512
        Title = '-SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series20: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlue
        Title = '-2SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series21: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = '-3SD'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series22: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clBlack
        Title = 'X'
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        Pointer.Visible = False
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
      object Series17: TLineSeries
        Marks.ArrowLength = 8
        Marks.Visible = False
        SeriesColor = clRed
        Title = 'Value'
        Pointer.Brush.Color = clBlue
        Pointer.HorizSize = 2
        Pointer.InflateMargins = True
        Pointer.Style = psCircle
        Pointer.VertSize = 2
        Pointer.Visible = True
        XValues.DateTime = False
        XValues.Name = 'X'
        XValues.Multiplier = 1.000000000000000000
        XValues.Order = loAscending
        YValues.DateTime = False
        YValues.Name = 'Y'
        YValues.Multiplier = 1.000000000000000000
        YValues.Order = loNone
      end
    end
  end
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    AfterOpen = ADOQuery1AfterOpen
    AfterScroll = ADOQuery1AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from qcghead')
    Left = 16
    Top = 464
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 48
    Top = 464
  end
  object ADOQuery2: TADOQuery
    CursorType = ctStatic
    AfterOpen = ADOQuery2AfterOpen
    AfterPost = ADOQuery2AfterPost
    Parameters = <>
    SQL.Strings = (
      'select gettime as '#25968#25454#26085#26399', result as '#32467#26524','
      'cast(result as float) as resultfloat '
      'from qcgdata')
    Left = 312
    Top = 280
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 344
    Top = 280
  end
  object DosMove1: TDosMove
    Active = True
    Left = 200
    Top = 480
  end
  object ActionList1: TActionList
    Left = 170
    Top = 479
    object ActAdd1: TAction
      Caption = 'ActAdd1'
      ShortCut = 113
      OnExecute = BitBtn2Click
    end
    object ActSAVE1: TAction
      Caption = 'ActSAVE1'
      ShortCut = 114
      OnExecute = BitBtn3Click
    end
    object ActDEL1: TAction
      Caption = 'ActDEL1'
      ShortCut = 115
      OnExecute = BitBtn4Click
    end
    object ActADD2: TAction
      Caption = 'ActADD2'
      ShortCut = 116
    end
    object ActSAVE2: TAction
      Caption = 'ActSAVE2'
      ShortCut = 117
    end
    object ActDEL2: TAction
      Caption = 'ActDEL2'
      ShortCut = 118
    end
    object ActQCANA: TAction
      Caption = 'ActQCANA'
      ShortCut = 119
    end
    object ActPRINTQC: TAction
      Caption = 'ActPRINTQC'
      ShortCut = 120
      OnExecute = BitBtn9Click
    end
  end
  object frReport1: TfrReport
    InitialZoom = pzDefault
    ModifyPrepared = False
    PreviewButtons = [pbZoom, pbLoad, pbSave, pbPrint, pbFind, pbHelp, pbExit]
    RebuildPrinter = False
    Left = 310
    Top = 312
    ReportForm = {19000000}
  end
  object frDBDataSet1: TfrDBDataSet
    DataSet = ADOQuery2
    Left = 342
    Top = 312
  end
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Left = 377
    Top = 280
  end
end
