import requests
import json

r = requests.get('https://dadosabertos.camara.leg.br/api/v2/deputados?siglaSexo=M&ordem=ASC&ordenarPor=nome')
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
    break

with open('deputadoIDM.json', 'w') as out:
  out.write(json.dumps(dados))
