select distinct s.CF
from scalatore s
where s.CF in
			(select s2.CF
			from (scalatore s2 join scalata on s2.CF = scalata.scalatore
											and s2.annoNascita + 18 > scalata.anno)
								join nazione on nazione.nome = scalata.nazione and nazione.nome = s2.annoNascita)
	and s.CF not in
			(select s2.CF
			from (scalatore s2 join scalata on s2.CF = scalata.scalatore
											and s2.annoNascita + 18 <= scalata.anno)
								join nazione on nazione.nome = scalata.nazione and nazione.nome = s2.annoNascita)