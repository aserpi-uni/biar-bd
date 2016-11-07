select distinct scalatore.CF, scalatore.nazioneNascita, nN.continente as continenteNascita, nS.nome as nazioneScalata
from ((scalatore join scalata on scalatore.CF = scalata.scalatore)
								join nazione nN on nN.nome = scalatore.nazioneNascita
												and nN.nome not in
																(select n2.nome
																from nazione n2
																where n2.continente = 'America'))
								left outer join nazione nS on nS.nome = scalata.nazione;