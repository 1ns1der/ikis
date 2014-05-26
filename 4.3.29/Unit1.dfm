object Form1: TForm1
  Left = 224
  Top = 242
  Width = 976
  Height = 241
  Caption = '3.4.29'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 793
    Height = 169
    DataSource = DataSource2
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object IBDatabase1: TIBDatabase
    DatabaseName = '127.0.0.1:'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 832
    Top = 16
  end
  object IBQuery1: TIBQuery
    Database = IBDatabase1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select student.id, student.fio, student.kurs, student.status, ne' +
        'w_table.grupp '
      'from student, new_table'
      'where student.idgrupp=new_table.idgrupp')
    Left = 832
    Top = 96
  end
  object DataSource2: TDataSource
    DataSet = IBQuery1
    Left = 832
    Top = 56
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    Params.Strings = (
      'read_committed'
      'rec_version'
      'nowait')
    AutoStopAction = saNone
    Left = 872
    Top = 16
  end
end
