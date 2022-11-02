inherited frmCadCidade: TfrmCadCidade
  Caption = 'Cadastro de Cidades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCampos: TPanel
    object Label1: TLabel
      Left = 48
      Top = 8
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = dbeCod
    end
    object Label2: TLabel
      Left = 48
      Top = 48
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = dbeNome
    end
    object Label3: TLabel
      Left = 48
      Top = 88
      Width = 22
      Height = 13
      Caption = 'Sigla'
      FocusControl = dbeSigla
    end
    object dbeCod: TDBEdit
      Left = 48
      Top = 24
      Width = 73
      Height = 21
      DataField = 'IDCIDADE'
      DataSource = dts
      ReadOnly = True
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 48
      Top = 64
      Width = 265
      Height = 21
      DataField = 'NOMECIDADE'
      DataSource = dts
      TabOrder = 1
    end
    object dbeSigla: TDBEdit
      Left = 48
      Top = 104
      Width = 30
      Height = 21
      DataField = 'SIGLAESTADO'
      DataSource = dts
      TabOrder = 2
    end
  end
  inherited dts: TDataSource
    DataSet = modulo.qryCidade
  end
end
