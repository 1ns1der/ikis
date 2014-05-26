object Form1: TForm1
  Left = 224
  Top = 242
  Width = 893
  Height = 241
  Caption = '3.4.28'
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
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Database1: TDatabase
    DatabaseName = '28'
    DriverName = 'INTRBASE'
    Params.Strings = (
      'USER NAME=SYSDBA'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'SCHEMA CACHE TIME=-1'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'ENABLE BCD=FALSE'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'WAIT ON LOCKS=FALSE'
      'COMMIT RETAIN=FALSE'
      'PASSWORD=masterkey')
    SessionName = 'Default'
    Left = 824
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 824
    Top = 56
  end
  object Query1: TQuery
    AutoRefresh = True
    DatabaseName = '28'
    SQL.Strings = (
      
        'select student.id, student.fio, student.kurs, student.status, ne' +
        'w_table.grupp '
      'from student, new_table'
      'where student.idgrupp=new_table.idgrupp')
    Left = 824
    Top = 96
  end
end
