inherited frmCadProduto: TfrmCadProduto
  Caption = 'Cadastro de Produto'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlCampos: TPanel
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 24
      Top = 56
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit2
    end
    object Label3: TLabel
      Left = 24
      Top = 96
      Width = 24
      Height = 13
      Caption = 'Valor'
      FocusControl = DBEdit3
    end
    object Label4: TLabel
      Left = 24
      Top = 136
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit4
    end
    object DBEdit1: TDBEdit
      Left = 24
      Top = 32
      Width = 89
      Height = 21
      DataField = 'IDPRODUTO'
      DataSource = dts
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 24
      Top = 72
      Width = 305
      Height = 21
      DataField = 'DESCRPRODUTO'
      DataSource = dts
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 24
      Top = 112
      Width = 89
      Height = 21
      DataField = 'VALORPRODUTO'
      DataSource = dts
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 24
      Top = 152
      Width = 113
      Height = 21
      DataField = 'QTDEPRODUTO'
      DataSource = dts
      TabOrder = 3
    end
  end
  inherited dts: TDataSource
    DataSet = modulo.qryProduto
  end
end
