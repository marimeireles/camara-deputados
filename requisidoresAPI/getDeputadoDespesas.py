import requests
import json

deputadoID = json.load(open('deputadoID.json'))

dados = []

for ID in deputadoID:
  r = requests.get('https://dadosabertos.camara.leg.br/api/v2/deputados/{}/despesas?ano=2017&ordem=ASC&ordenarPor=nomeFornecedor'.format(ID['id']))
  dadosAbertos = r.json()
  links = dadosAbertos['links']
  links = {item['rel']: item['href'] for item in links}

  dados.extend(dadosAbertos['dados'])

  for dado in dados:
    dado['idDeputado'] = ID['id']
    print('criei um trem')

  while True:
    r = requests.get(links['next'])

    dadosAbertos = r.json()
    links = dadosAbertos['links']
    links = {item['rel']: item['href'] for item in links}
    dados.extend(dadosAbertos['dados'])

    if 'next' not in links:
      print('=====')
      break

with open('deputadoDespesas.json', 'a') as out:
  out.write(json.dumps(dados))
