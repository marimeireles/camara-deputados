import requests
import json

r = requests.get('https://dadosabertos.camara.leg.br/api/v2/partidos?ordem=ASC&ordenarPor=sigla')
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

with open('partidos.json', 'w') as out:
  out.write(json.dumps(dados))