veiculo = str(input('Informe qual veículo a ser contado a quantidade de rodas: ')).lower()

if veiculo == 'carro':
    print('Um carro possui 4 rodas') 
elif veiculo == 'moto':
    print('Uma moto possui 2 rodas')
else:
    print('Apenas fui programado para informar a quantidade de rodas de um *carro* ou uma *moto*')