select distinct pe.codice, (pa.anno), count(*)
from (Autore as a join Programmatore as pe on a.codice = pe.codice) join Programma as pa on a.id = pa.id
group by pe.codice, pa.anno;