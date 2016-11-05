select distinct a.codice, p.linguaggio
from Autore as a join Programma as p on a.id = p.id
where p.linguaggio =
      any(select p.linguaggio
          from
            (select aa.codice, pp.linguaggio, count(*) as c
             from Autore aa join Programma pp on aa.id = pp.id
             where a.codice = aa.codice
             group by aa.codice, pp.linguaggio) as d
          where d.codice = a.codice
          group by d.codice, c
          having d.c = max(d.c))