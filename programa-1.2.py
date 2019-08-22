class Veiculo:
    def __init__(self, tipo):
        if str(tipo).lower() == 'carro':
            self.setQtdeRodas(4)
            tipo = 'Carro'
        elif str(tipo).lower() == 'moto':
            self.setQtdeRodas(2)
            tipo = 'Moto'
        else:
            print('Apenas fui programado para informar a quantidade de rodas de um carro ou uma moto')
            return
        
        qtdeRodas = self.getQtdeRodas();
        print('%ss possuem %d rodas' % (tipo, qtdeRodas))
    
    def getQtdeRodas(self):
        return self.rodas

    def setQtdeRodas(self, qtde):
        self.rodas = qtde

Veiculo(
    str(input('Informe qual veículo a ser contado a quantidade de rodas: ')).lower()
)