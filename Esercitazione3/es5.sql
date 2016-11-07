select distinct n1.continente, count(*)
from (scalatore join scalata on scalatore.CF = scalata.scalatore) join nazione n1 on n1.nome = scalata.nazione
where scalata.nazione in
				(select n2.nome
				from nazione n2
				where n2.continente =
							(select n3.continente
							from nazione n3
							where scalata.nazione = n3.nome and scalatore.nazioneNascita = n3.nome));