select distinct d1.codice, d2.codice
from (
       select distinct a1.codice, p1.linguaggio
       from Autore as a1 join Programma as p1 on a1.id = p1.id
     ) as d1,
     (
       select distinct a2.codice, p2.linguaggio
       from Autore as a2 join Programma as p2 on a2.id = p2.id
     ) as d2
where d1.codice > d2.codice
      and not exists (select ppp1.linguaggio #tutti i linguaggi usati da d1 ma non da d2
                      from Programma as ppp1 join Autore as aaa1 on aaa1.id = ppp1.id
                      where aaa1.codice = d1.codice
                            and ppp1.linguaggio in (select distinct npp2.linguaggio #tutti i linguaggi che non usa d2
                                                    from Programma as npp2
                                                    where npp2.linguaggio not in (select distinct pp2.linguaggio #tutti i linguaggi di d2
                                                                                  from Programma as pp2 join Autore as aa2 on aa2.id = pp2.id
                                                                                  where aa2.codice = d2.codice)))
      and not exists (select ppp2.linguaggio #tutti i linguaggi usati da d2 ma non da d1
                      from Programma as ppp2 join Autore as aaa2 on aaa2.id = ppp2.id
                      where aaa2.codice = d2.codice
                            and ppp2.linguaggio in (select distinct npp1.linguaggio #tutti i linguaggi che non usa d1
                                                    from Programma as npp1
                                                    where npp1.linguaggio not in (select distinct pp1.linguaggio #tutti i linguaggi di d1
                                                                                  from Programma as pp1 join Autore as aa1 on aa1.id = pp1.id
                                                                                  where aa1.codice = d1.codice)))