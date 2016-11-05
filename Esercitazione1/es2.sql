select Genitore, Figlio
from Genia, Persona as g, Persona as f
where Genitore = g.Nome and Figlio = f.Nome and g.CittàNascita = f.CittàNascita;