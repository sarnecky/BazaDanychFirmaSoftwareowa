use Sarnecki
INSERT INTO Stanowisko (NazwaStanowiska, Obowiazki, WidelkiZarobkow)VALUES
	('Junior Developer','Wytwarzanie mniejszego softwareu', '2000-4000'),--1
	('Senior Developer', 'Wytwarzanie wiekszego softwareu', '5000-13000'),
	('Junior Tester', 'Testowanie mniejszego softwareu', '2000-4000'),
	('Senior Tester', 'Wytwarzanie wiekszego softwareu', '5000-11000'),--4
	('Database Administrator', 'Kontrola i konserwacja bazy danych', '4000-6000'),
	('IT Manager', 'Zarzadzanie zespolem', '5000-15000'),
	('Kierwnik projektu', 'Zarzadzanie projektem', '20000-25000'),--7
	('Frontend Developer', 'Projekt frotnu, strony porjetu', '4000-7000'),
	('Backend Developer', 'Projekt backednu, strony porjetu', '8000-13000'),--9
	('Projektant', 'Odpowiedzialny za projekt', '8000-13000');

INSERT INTO FirmaSoftwareowa VALUES
	(123456789, 'Kodzimy tutaj', '2014-10-10'),
	(623423788, 'HP', '1939-10-10'),
	(223456787, 'ABC Data', '1950-10-12'),
	(533756786, 'PGS Software', '2000-10-15'),
	(123426785, 'MSI Technology ', '1999-10-18'),
	(223456784, 'Asseco Poland', '2000-11-10'),
	(433456783, 'Microsoft', '1975-10-10'),
	(123426782, 'Comarch SA', '1993-09-19'),
	(223456781, 'Oracle Polska', '2000-07-04'),
	(223456999, 'Intel Polska', '1968-07-04');

INSERT INTO Developer VALUES
	(95071003272, 'Sebastian', 'Sarnecki', 1, 26105014451000002276470461, 123456789, 1),
	(95012002272, 'Arkadiusz', 'Sadowski', 1, 57105014451000002276470411, 123456789, 1),
	(93078003271, 'Mateusz', 'Nowicki', 1, 26333014451000002233370469, 123456789, 7),
	(95071001111, 'Grzegorz', 'Rubin', 1, 26144414451000002276470461, 223456781, 1),
	(95056000000, 'Micha³', 'W¹do³owski', 1, 20005014451000002276472221, 123426782, 1),
	(94077003272, 'Micha³', 'Dobreñko', 1, 33335014451000002276472221, 123456789, 6),
	(95071002272, 'Rados³aw', '¯urawski', 1, 11105014451000002222470411, 223456999, 2),
	(93034003271, 'Damian', 'Reszka', 1, 26333014451000002233370461, 623423788, 9),
	(88071001111, 'Mateusz', 'Ziomowski', 1, 26144314451000002236470463, 123426782, 3),
	(94021201211, 'Adam', 'Pietrzak', 1, 26444314441770112236470477, 223456787, 2),
	(92342514454, 'Jan', 'Kowalski', 1, 23423432426444314426470477, 223456787, 1);

INSERT INTO Waluta VALUES 
	('PLN'),
	('USD'),
	('EUR'),
	('CHF'),
	('JPY'),
	('GBP'),
	('AUD'),
	('AED');

INSERT INTO Wyplata VALUES
	(12341234, 3000,'2015-01-01', '2015-01-02', 'PLN', 95071003272),
	(23452345,10000,'2015-01-01','2015-01-01', 'PLN', 95012002272),
	(34563456,3000, '2012-04-10', '2012-04-11','PLN',95071001111),
	(45674567,9000, '2015-01-01', '2015-01-03','PLN',93034003271),
	(56785678,3000, '2014-01-01', '2014-01-01','PLN',93034003271),
	(67896789,12000, '2013-10-01', '2013-10-03','PLN',94021201211),
	(09877890,25000, '2015-11-11', '2015-11-12','USD', 92342514454),
	(12124124,1000, '2000-10-21', '2000-10-22', 'EUR', 95012002272),
	(21514514,7000, '2003-12-12', '2003-12-13','CHF', 95056000000),
	(24521524,8909, '2015-01-01', '2015-01-01','PLN', 95071002272);

INSERT INTO Adres (Miasto, Ulica, KodPocztowy, Kraj, NumerUlicy)VALUES
	('Warszawa', 'Abrahama', '09-301', 'Polska', 19),
	('Warszawa', 'Promyka', '21-234', 'Polska', 121),
	('Warszawa', 'Przasnyska', '11-222', 'Polska', 23),
	('Warszawa', 'Prusa ', '22-098', 'Polska', 234),
	('Krakow', 'Karska', '12-192', 'Polska', 77),
	('Wroc³aw', 'Przyczó³kowa', '98-202', 'Polska', 4),
	('Gdynia', 'Podolska', '98-535', 'Polska', 13),
	('Gdansk', 'Slowackiego', '80-298', 'Polska', 12),
	('£ódz', 'Akermañska', '90-001', 'Polska', 11),
	('£ódz', 'Radzymiñska', '12-082', 'Polska', 11),
	('Warszawa', 'Jerozolimaska', '98-232', 'Polska', 214),
	('Warszawa', 'Reja ', '22-098', 'Polska', 23),
	('Krakow', 'Szpitalna', '32-342', 'Polska', 72),
	('Wroc³aw', 'Smieszna', '98-202', 'Polska', 1),
	('Gdynia', 'Akacjowa', '98-535', 'Polska', 15),
	('Gdansk', 'Armii Krajowej', '80-298', 'Polska', 122),
	('£ódz', 'Grunwaldzka', '91-111', 'Polska', 11),
	('£ódz', 'Wulgarna', '11-022', 'Polska', 11);

INSERT INTO Siedziba (LiczbaWszystkichMiejscPracy, CzyAktualne, REGON, IdLokacji) VALUES 
	(1500, 1, 123456789, 1),
    (100, 1, 623423788, 2),
    (1500, 1, 223456787, 3),
    (100, 0, 533756786, 4),
    (700, 0, 123426785, 5),
    (1500, 1, 223456784, 7),
    (2570, 1, 433456783, 6),
    (1500, 1, 123426782, 9),
    (1600, 1, 223456781, 10),
    (1500, 1, 223456999, 8);

INSERT INTO SystemOperacyjny (Nazwa ,Wersja, RokWydania, DoKiedyWspierany)VALUES 
	('Windows', 'xp', 2001, 2014),
	('Windows', 'vista', 2007, 2017),
	('Windows', '7', 2009, 2019),
	('Windows', '8', 2012, 2024),
	('Windows', '10', 2015, 2030),
	('Android', 'KitKat', 2013, 2018),
	('Android', 'Lollipop', 2014, 2020),
	('Android', 'Marshmallow', 2015, 2022),
	('IOS', '9', 2015, 2020);

INSERT INTO Sklep (NazwaSklepu,PowierzchniaSklepu,CzyNadalCzynny,CzyInternetowy, IdLokacji)VALUES 
	('Media Expert', 500, 1, 1,11),
	('Media Markt', 600, 1, 1,12),
	('Komputronik', 10, 1, 1,13),
	('Meritum', 500, 1, 1,14),
	('iSpot', 50, 1, 1,15),
	('Saturn', 400, 1, 1, 16),
	('RTV AGD', 300, 1, 1, 17),
	('Infocom', 20, 1, 0, 18);
	
INSERT INTO Software (DataWydania, NazwaSoftwareu, Cena, REGON) VALUES
	('2013-09-21','Intel XDK',0,223456999),--intel
	('2013-12-21','Android Hub',10,223456999),
	('2014-04-21','Security Essential',0, 433456783),
	('2013-03-21','Visual Studio 2015',2000, 433456783),--mircosoft
	('2013-08-26','Skype',0,433456783),
	('2014-09-28','NetBeans Pro', 1000,223456781),--oracle
	('2013-02-28','UPK',500,223456781),
	('2014-09-14','Oprogramowanie 3PAR',2000,623423788),--hp
	('2013-04-10','Security Finance', 1400, 223456787), --abc
	('2013-09-15','FriendLiners',30, 533756786),--pgs
	('2013-12-17','Inteligentny kalkulator',20,123456789),--kodzimy tutaj
	('2014-01-01','Dragon Gaming Center',10,123426785),--msi
	('2014-02-11','Aplikacja dla biura maklerskiego',5000,223456784),--assceo
	('2015-01-01','Aplikacja dla banku',10000, 123426782); --comarch*/
	

INSERT INTO Transakcja (DataTransakcji, CzyPlatnoscGotowkowa, IdSklepu)VALUES
	('2015-09-11', 1,1),
	('2015-09-19',1,1),
	('2014-03-17',0,2),
	('2015-04-19',1,2),
	('2014-09-09',0,2),
	('2015-05-06',1,3),
	('2015-09-09',1,3),
	('2014-04-06',0,3),
	('2014-09-09',1,4),
	('2015-02-09',1,6),
	('2014-07-06',1,7),
	('2015-09-09',0,7);

INSERT INTO zakupProgramu VALUES 
	(1,12),
	(2,12),
	(2,11),
	(3,5),
	(4,7),
	(5,3),
	(6,3),
	(7,1),
	(8,1),
	(9,6),
	(10,6),
	(11,2),
	(12,8);

INSERT INTO dzia³aNa VALUES
	(1,5),
	(2,6),
	(2,7),
	(3,5),
	(4,5),
	(5,1),
	(5,5),
	(6,9),
	(7,8),
	(8,7),
	(9,6),
	(10,5),
	(11,4),
	(12,3),
	(13,2),
	(14,1);
