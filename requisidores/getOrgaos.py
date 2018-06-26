import requests
import json

r = requests.get('https://dadosabertos.camara.leg.br/api/v2/orgaos?dataInicio=2017-01-01&dataFim=2017-12-30&ordem=ASC&ordenarPor=id')
dadosAbertos = r.json()
links = dadosAbertos['links']
links = {item['rel']: item['href'] for item in links}

dados = []
dados.extend(dadosAbertos['dados'])


while True:
  r = requests.get(dadosAbertos['links'][1]['href'])
  dadosAbertos = r.json()
  links = dadosAbertos['links']
  links = {item['rel']: item['href'] for item in links}
  dados.extend(dadosAbertos['dados'])

  if 'next' not in links:
    break;

with open('orgaos.json', 'w') as out:
  out.write(json.dumps(dados))
