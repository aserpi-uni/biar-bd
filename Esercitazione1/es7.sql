SELECT Regione, avg(c.tot)
from Città, (
  select CittàNascita, count(*) as tot
  from Persona
  group by CittàNascita
  ) as c
where Città.Nome = c.CittàNascita
GROUP BY Regione;