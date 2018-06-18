import json
import csv

proposicoes = json.load(open('test2.json'))

f = csv.writer(open("test2.csv", "w"))

f.writerow([b"uri", b"nome", b"codTipo", b"tipo", b"idProposicao"])

for proposicao in proposicoes:
  f.writerow( 
              [proposicao[0]["uri"],
              proposicao[0]["nome"],
              proposicao[0]["codTipo"],
              proposicao[0]["tipo"],
              proposicao[0]["idProposicao"]])