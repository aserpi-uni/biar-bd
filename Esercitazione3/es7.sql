select distinct nazione.nome, scalata.anno, count(*) as scalate
from scalata join nazione on nazione.nome = scalata.nazione
group by nazione.nome, scalata.anno
having scalate > 1
order by nazione.continente, scalata.anno;