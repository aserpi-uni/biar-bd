SELECT DISTINCT
  a1.codice,
  a2.codice

FROM
  Programma,
  Autore AS a1,
  Autore AS a2

WHERE Programma.linguaggio = 'Python'
      AND a1.id = Programma.id
      AND a2.id = Programma.id
      AND a1.codice > a2.codice;