select distinct Programmatore.nome, Programmatore.categoria
from (Programma join Autore on Programma.linguaggio <> 'Python' and Programma.id = Autore.id)
  join Programmatore on Autore.codice = Programmatore.codice
order by Programmatore.nome;
  