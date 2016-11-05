select distinct Autore.codice
from Autore join Programma on Autore.id = Programma.id
where Programma.anno > 2000 and  Programma.linguaggio = 'Java';