import requests
import json

partidoID = json.load(open('partidos.json'))

dados = []

for ID in partidoID:
  r = requests.get('https://dadosabertos.camara.leg.br/api/v2/partidos/{}'.format(ID['id']))
  dadosAbertos = r.json()

  with open('partidosInformacoes.json', 'a') as out:
    out.write(json.dumps(dadosAbertos))
