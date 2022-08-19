object frmCliente: TfrmCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 466
  ClientWidth = 450
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 324
    Top = 10
    Width = 35
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 88
    Width = 45
    Height = 13
    Caption = 'Endere'#231'o'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 24
    Top = 128
    Width = 19
    Height = 13
    Caption = 'CFP'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 24
    Top = 168
    Width = 42
    Height = 13
    Caption = 'Telefone'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 324
    Top = 29
    Width = 100
    Height = 21
    DataField = 'C'#243'digo'
    DataSource = dts
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 64
    Width = 400
    Height = 21
    DataField = 'Nome'
    DataSource = dts
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 104
    Width = 400
    Height = 21
    DataField = 'Endere'#231'o'
    DataSource = dts
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 24
    Top = 144
    Width = 400
    Height = 21
    DataField = 'CFP'
    DataSource = dts
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 24
    Top = 184
    Width = 400
    Height = 21
    DataField = 'Telefone'
    DataSource = dts
    TabOrder = 4
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 232
    Width = 240
    Height = 25
    DataSource = dts
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 280
    Width = 320
    Height = 120
    DataSource = dts
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\etec\Deskt' +
      'op\cliente\cliente.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 408
  end
  object Cliente: TADODataSet
    Active = True
    Connection = conexao
    CursorType = ctStatic
    CommandText = 'select * from cliente'
    Parameters = <>
    Left = 96
    Top = 408
    object ClienteCódigo: TAutoIncField
      FieldName = 'C'#243'digo'
      ReadOnly = True
    end
    object ClienteNome: TWideStringField
      FieldName = 'Nome'
      Size = 100
    end
    object ClienteEndereço: TWideStringField
      FieldName = 'Endere'#231'o'
      Size = 100
    end
    object ClienteCFP: TWideStringField
      FieldName = 'CFP'
      Size = 18
    end
    object ClienteTelefone: TWideStringField
      FieldName = 'Telefone'
    end
  end
  object dts: TDataSource
    DataSet = Cliente
    Left = 160
    Top = 408
  end
end
