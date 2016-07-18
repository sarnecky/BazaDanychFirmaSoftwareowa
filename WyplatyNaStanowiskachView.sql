use Sarnecki
drop view WyplatyNaStanowiskach 
PRINT 'Tworzenie widoku 1'
GO

create view WyplatyNaStanowiskach 
as select NazwaStanowiska, Kwota
from Developer
	join Wyplata
		on Wyplata.PESEL = Developer.PESEL
	join Stanowisko
		on Stanowisko.IdStanowiska = Developer.IdStanowiska;
