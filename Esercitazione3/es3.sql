select distinct nazione.nome, nazione.continente
from (scalatore join scalata on scalatore.CF = scalata.scalatore) join nazione on nazione.nome = scalata.nazione
where scalatore.annoNascita + 18 > scalata.anno;