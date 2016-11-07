select distinct nazione.nome, count(*)
from (scalatore join scalata on scalatore.CF = scalata.scalatore) join nazione on nazione.nome = scalata.nazione
																	and nazione.nome = scalatore.nazioneNascita
group by nazione.nome;