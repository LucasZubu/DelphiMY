inherited frmCadCliente: TfrmCadCliente
  Caption = 'frmCadCliente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCampos: TPanel
    ExplicitTop = 126
    object Label1: TLabel
      Left = 8
      Top = 0
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbeCod
    end
    object Label2: TLabel
      Left = 148
      Top = 0
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbeNome
    end
    object Label3: TLabel
      Left = 8
      Top = 48
      Width = 45
      Height = 13
      Caption = 'Endere'#231'o'
      FocusControl = dbeEndereco
    end
    object Label4: TLabel
      Left = 518
      Top = 0
      Width = 19
      Height = 13
      Caption = 'CPF'
      FocusControl = dbeCpf
    end
    object Label5: TLabel
      Left = 431
      Top = 45
      Width = 42
      Height = 13
      Caption = 'Telefone'
      FocusControl = dbeTelefone
    end
    object Label6: TLabel
      Left = 559
      Top = 42
      Width = 33
      Height = 13
      Caption = 'Cidade'
      FocusControl = dbeCidade
    end
    object dbeCod: TDBEdit
      Left = 8
      Top = 16
      Width = 134
      Height = 21
      DataField = 'IDCLIENTE'
      DataSource = dts
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 148
      Top = 16
      Width = 364
      Height = 21
      DataField = 'NOMECLIENTE'
      DataSource = dts
      TabOrder = 1
    end
    object dbeEndereco: TDBEdit
      Left = 8
      Top = 64
      Width = 417
      Height = 21
      DataField = 'ENDERCLIENTE'
      DataSource = dts
      TabOrder = 2
    end
    object dbeCpf: TDBEdit
      Left = 518
      Top = 16
      Width = 264
      Height = 21
      DataField = 'CPFCLIENTE'
      DataSource = dts
      TabOrder = 3
    end
    object dbeTelefone: TDBEdit
      Left = 431
      Top = 61
      Width = 122
      Height = 21
      DataField = 'FONECLIENTE'
      DataSource = dts
      TabOrder = 4
    end
    object dbeCidade: TDBEdit
      Left = 559
      Top = 61
      Width = 223
      Height = 21
      DataField = 'IDCIDADE'
      DataSource = dts
      TabOrder = 5
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 104
      Width = 290
      Height = 21
      DataField = 'NOMECIDADE'
      DataSource = dts
      TabOrder = 6
    end
  end
  inherited dts: TDataSource
    DataSet = modulo.qryCliente
  end
end
