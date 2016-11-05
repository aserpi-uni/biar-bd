select distinct d.anno, d.linguaggio
from
  (select distinct pp.anno, pp.linguaggio, count(*) as c
   from Programma as pp
   group by pp.anno, pp.linguaggio) as d
group by d.anno, d.c
having d.c = max(d.c);