select distinct Città.Nome
from Città, Persona, Genia
where CittàNascita = Città.Nome and Persona.Nome = Genitore and Persona.Età > 50;