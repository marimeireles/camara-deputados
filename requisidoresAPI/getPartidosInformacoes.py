import requests
import json

partidoID = json.load(open('partidos.json'))

dados = []

for ID in partidoID:
  r = requests.get('https://dadosabertos.camara.leg.br/api/v2/partidos/{}'.format(ID['id']))
  dadosAbertos = r.json()
  links = dadosAbertos['links']
  links = {item['rel']: item['href'] for item in links}

  dados.extend(dadosAbertos['dados'])

  for dado in dados:
    dado['idPartido'] = ID['id']

  while 'next' in links:
    r = requests.get(links['next'])

    dadosAbertos = r.json()
    links = dadosAbertos['links']
    links = {item['rel']: item['href'] for item in links}
    dados.extend(dadosAbertos['dados'])
    print('++++')

    if 'next' not in links:
      print('=====')
      break

with open('partidosInformacoes.json', 'w') as out:
  out.write(json.dumps(dados))
