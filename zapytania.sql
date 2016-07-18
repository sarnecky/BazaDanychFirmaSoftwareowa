use Sarnecki

--1.Poka� aktywnych developer�w z firmy "Kodzimy tutaj"
--  na stanowisku "Junior Developer" oraz  "IT Manager".
select Imie, Nazwisko, CzyAktywny, NazwaStanowiska
from Developer
	join FirmaSoftwareowa
		 on Developer.REGON = FirmaSoftwareowa.REGON
	join Stanowisko
		 on Stanowisko.IdStanowiska = Developer.IdStanowiska
where NazwaFirmy = 'Kodzimy tutaj'
 and CzyAktywny = 1
 and NazwaStanowiska in ('Junior Developer', 'IT Manager')
order by Imie

--2. Poka� sum� wszystkich wyp�at w PLN dla developer�w w firmie "Kodzimy tutaj" .
select Sum(Kwota) as SumaWyp�at
from Developer
	join FirmaSoftwareowa
		 on Developer.REGON = FirmaSoftwareowa.REGON
	join Wyplata
		 on Wyplata.PESEL = Developer.PESEL
where NazwaFirmy = 'Kodzimy tutaj' and SkrotNazwy='PLN'

--3.Poka� ilo�� produkowanego software'u
-- na poszczeg�lne systemy operacyjne, przez firmy kt�re powsta�y po 2000-01-01 roku
select Nazwa, COUNT(*)
from SystemOperacyjny
	join dzia�aNa
		on SystemOperacyjny.IdSystemu = dzia�aNa.IdSystemu
	join Software 
		on Software.IdSoftwareu = dzia�aNa.IdSoftwareu
	join FirmaSoftwareowa 
		on FirmaSoftwareowa.REGON = Software.REGON
where DataPowstania in (
	select DataPowstania
	 from FirmaSoftwareowa
	  where DataPowstania >'2000-01-01')
group by Nazwa
		 
--4.Kt�re 3 sklepy zarobi�y najwi�cej na sprzeda�y Software'u ?
select top 3 NazwaSklepu, SUM(Cena)
from Sklep
	join Transakcja T
		on Sklep.IdSklep = T.IdSklepu
	join zakupProgramu
		on zakupProgramu.NumerTransakcji = T.NumerTransakcji
	join Software
		on Software.IdSoftwareu = zakupProgramu.IdSoftwareu
group by NazwaSklepu
order by 2 desc

--5. Ile jest siedzib firm w miastach zaczynaj�cych si� na 'W' ?
select Miasto, COUNT(*)
from FirmaSoftwareowa
	join Siedziba
		on Siedziba.REGON = FirmaSoftwareowa.REGON
	join Adres 
		on Siedziba.IdLokacji = Adres.IdLokacji
where Miasto in (select Miasto from Adres where Miasto like 'W%')
group by Miasto

--6. Podaj imiona aktualnych Developer�w z Gda�ska.
select Imie
from Developer D
where D.REGON in (
	select F.REGON
	from FirmaSoftwareowa F
		join Siedziba
			on Siedziba.REGON = F.REGON
		join Adres 
			on Siedziba.IdLokacji = Adres.IdLokacji
	where Miasto = 'Gdansk') and D.CzyAktywny = 1

--7.Poka� �redni� wyp�aty na wszystkich stanowiskach w bazie, korzystaj�c z widoku "WyplatyNaStanowiskach".
select NazwaStanowiska, AVG(kwota)
from WyplatyNaStanowiskach 
group by NazwaStanowiska

--8.Kt�re sklepy sprzedaje oprogramowanie firmy Oracle Polska(korzystaj�c z widoku KtoSprzedaje)
select NazwaFirmy, NazwaSklepu
from KtoSprzedaje
where NazwaFirmy = 'Oracle Polska'

