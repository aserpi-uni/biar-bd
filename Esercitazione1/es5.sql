SELECT count(*) as NatiNelLazio
from (Persona join Città on Città.Nome = Persona.CittàNascita)
where Città.Regione = "Lazio" and Sesso = "M";