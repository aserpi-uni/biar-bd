select distinct pa.linguaggio,
                count(*) / (
                  select count(*)
                  from Programmatore) as numero

from (Programma as pa join Autore on pa.id = Autore.id) join Programmatore as pe on Autore.codice = pe.codice
group by pa.linguaggio;