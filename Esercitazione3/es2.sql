select distinct scalatore.CF, nazione.continente
from (scalatore join scalata on scalatore.CF = scalata.scalatore) join nazione on nazione.nome = scalata.nazione
where scalatore.annoNascita < 1980
order by scalatore.CF, scalata.nazione;