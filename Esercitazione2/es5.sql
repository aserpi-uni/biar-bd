select distinct a.codice, Programmatore.nome
from (Autore as a join Programma as p on a.id = p.id) join Programmatore on a.codice = Programmatore.codice
where p.linguaggio = 'Java'
      and a.codice not in
          (select aa.codice
           from Autore as aa join Programma as pp on aa.id = pp.id
           where pp.linguaggio <> 'Java')