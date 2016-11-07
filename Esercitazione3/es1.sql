select distinct scalatore.cf, nazione.continente
from (scalatore join scalata on scalatore.CF = scalata.scalatore) join nazione on nazione.nome = scalata.nazione;