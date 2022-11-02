object modulo: Tmodulo
  OldCreateOrder = False
  Height = 386
  Width = 714
  object conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=venda'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 152
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\etec\Desktop\versao_2710\SistemaVenda\libmysql.dll'
    Left = 288
    Top = 32
  end
  object qryAutoNum: TFDQuery
    Connection = conexao
    Left = 48
    Top = 136
  end
  object qryCidade: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM CIDADE')
    Left = 152
    Top = 136
    object qryCidadeIDCIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryCidadeNOMECIDADE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'NOMECIDADE'
      Origin = 'NOMECIDADE'
      Size = 50
    end
    object qryCidadeSIGLAESTADO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLAESTADO'
      Origin = 'SIGLAESTADO'
      Size = 2
    end
  end
  object qryProduto: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 240
    Top = 136
    object qryProdutoIDPRODUTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryProdutoDESCRPRODUTO: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRPRODUTO'
      Origin = 'DESCRPRODUTO'
      Size = 50
    end
    object qryProdutoVALORPRODUTO: TBCDField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Valor'
      FieldName = 'VALORPRODUTO'
      Origin = 'VALORPRODUTO'
      currency = True
      Precision = 8
      Size = 2
    end
    object qryProdutoQTDEPRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Quantidade'
      FieldName = 'QTDEPRODUTO'
      Origin = 'QTDEPRODUTO'
    end
  end
  object qryCliente: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 320
    Top = 136
    object qryClienteIDCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'IDCLIENTE'
      Origin = 'IDCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryClienteNOMECLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Nome'
      FieldName = 'NOMECLIENTE'
      Origin = 'NOMECLIENTE'
      Size = 50
    end
    object qryClienteENDERCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERCLIENTE'
      Origin = 'ENDERCLIENTE'
      Size = 50
    end
    object qryClienteCPFCLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      FieldName = 'CPFCLIENTE'
      Origin = 'CPFCLIENTE'
    end
    object qryClienteFONECLIENTE: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'FONECLIENTE'
      Origin = 'FONECLIENTE'
    end
    object qryClienteIDCIDADE: TIntegerField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cidade'
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object qryClienteNOMECIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMECIDADE'
      LookupDataSet = qryCidade
      LookupKeyFields = 'IDCIDADE'
      LookupResultField = 'NOMECIDADE'
      KeyFields = 'IDCIDADE'
      Size = 50
      Lookup = True
    end
  end
end
