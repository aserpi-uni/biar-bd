select distinct n.Genitore
from Genia as n, Genia as f
where n.Figlio = f.Genitore;