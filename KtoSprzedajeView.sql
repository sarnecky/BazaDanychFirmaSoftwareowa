use Sarnecki
DROP VIEW KtoSprzedaje
PRINT 'Tworzenie widoku 2'
GO
create view KtoSprzedaje
as select NazwaFirmy, NazwaSklepu
from FirmaSoftwareowa
	join Software
		on Software.REGON = FirmaSoftwareowa.REGON
	join zakupProgramu
		on zakupProgramu.IdSoftwareu = Software.IdSoftwareu
	join Transakcja
		on Transakcja.NumerTransakcji = zakupProgramu.NumerTransakcji
	join Sklep
		on Sklep.IdSklep = Transakcja.IdSklepu
