select Programmatore.codice, min(Programma.anno)
from (Programmatore join Autore on Programmatore.categoria = 10 and Programmatore.codice = Autore.codice)
  join Programma on Programma.id = Autore.id and Programma.linguaggio <> 'Java'
group by Programmatore.codice;