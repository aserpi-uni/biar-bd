select Persona.Nome, Città.Regione
FROM Persona join Città on Persona.CittàNascita = Città.Nome
WHERE Persona.Età >= 18;

