select distinct s.CF, n1.continente, n2.continente
from scalatore s, nazione n1, nazione n2
where n1.continente > n2.continente
	and (select distinct count(*)
		from nazione nn
		where nn.continente = n1.continente)
		=
		(select distinct count(distinct nn.nome)
		from nazione nn, scalata ss
		where nn.continente = n1.continente
			and ss.nazione = nn.nome
			and ss.scalatore = s.CF)
	and (select distinct count(*)
		from nazione nn
		where nn.continente = n2.continente)
		=
		(select distinct count(distinct nn.nome)
		from nazione nn, scalata ss
		where nn.continente = n2.continente
			and ss.nazione = nn.nome
			and ss.scalatore = s.CF)