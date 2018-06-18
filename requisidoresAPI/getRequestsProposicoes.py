import requests
import json

proposicao = json.load(open('proposicoes.json'))

dados = []

for ID in proposicao:
  r = requests.get('https://dadosabertos.camara.leg.br/api/v2/proposicoes/{}/autores'.format(ID['id']))
  dadosAbertos = r.json()

  if dadosAbertos['dados'] and dadosAbertos['dados'][0]['uri']:
    dadosAbertos['dados'][0]['idProposicao'] = ID['id']
    dados.append(dadosAbertos['dados'])

  with open('test2.json', 'w') as out:
      out.write(json.dumps(dados))

