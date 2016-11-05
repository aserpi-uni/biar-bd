select CittàNascita, count(*)
from Persona join Genia on Nome = Genitore
WHERE Sesso = "F"
GROUP BY CittàNascita
