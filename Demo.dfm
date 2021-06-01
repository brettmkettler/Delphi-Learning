object Home: THome
  Left = 0
  Top = 0
  Caption = 'Home'
  ClientHeight = 270
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 244
    Width = 35
    Height = 13
    Caption = 'Paused'
    Color = clNone
    ParentColor = False
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 113
    Height = 49
    Caption = 'Move Files'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 221
    Width = 150
    Height = 17
    BarColor = clLime
    TabOrder = 1
  end
  object MainMenu: TMainMenu
    Left = 408
    Top = 208
    object File1: TMenuItem
      Caption = 'File'
    end
    object Help1: TMenuItem
      Caption = 'Help'
      object Support1: TMenuItem
        Caption = 'Support'
        OnClick = Support1Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 344
    Top = 208
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Left = 280
    Top = 208
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver270.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver270.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=24.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'MaxBlobSize=-1'
      'DriverName=MySQL'
      'Database=kettlers_home'
      'User_Name=kettlers_home'
      'Password=4esEsg27!!!!'
      'ServerCharSet='
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'ConnectTimeout=60'
      'HostName=useast22.myserverhosts.com:3306')
    Left = 208
    Top = 208
  end
end
