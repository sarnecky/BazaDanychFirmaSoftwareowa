use Sarnecki/*Siedziba, Adres,*/
DROP TABLE  dzia³aNa, zakupProgramu, Transakcja, Software, Sklep, SystemOperacyjny, Siedziba, Adres, Wyplata, Waluta, Developer, FirmaSoftwareowa, Stanowisko

CREATE TABLE FirmaSoftwareowa (
	REGON INT PRIMARY KEY NOT NULL, 
	NazwaFirmy VARCHAR(30) UNIQUE NOT NULL, 
	DataPowstania DATE NOT NULL,
	CONSTRAINT poprawny_regon CHECK (REGON LIKE 
	'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' ), --9 cyfr

);

CREATE TABLE Stanowisko (
		IdStanowiska INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		NazwaStanowiska VARCHAR(30) UNIQUE NOT NULL,
		Obowiazki VARCHAR(100) NOT NULL,
		WidelkiZarobkow VARCHAR(30) NOT NULL
);

CREATE TABLE Developer (
		PESEL CHAR(11) PRIMARY KEY NOT NULL,
		Imie VARCHAR(30) NOT NULL,
		Nazwisko VARCHAR(30) NOT NULL,
		CzyAktywny BIT NOT NULL,
		NumerKonta VARCHAR(26) UNIQUE NOT NULL,
		REGON INT REFERENCES FirmaSoftwareowa NOT NULL,
		IdStanowiska INT REFERENCES Stanowisko NOT NULL,
		CONSTRAINT poprawny_numerkonta CHECK (NumerKonta LIKE
			'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' ), --26 cyfr na konto bankowe
		CONSTRAINT poprawne_imie CHECK(Imie NOT LIKE '%[0-1]%'),
		CONSTRAINT poprawny_pesel CHECK (PESEL LIKE
			'[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]' ),
		CONSTRAINT poprawne_nazwisko CHECK(Nazwisko NOT LIKE '%[0-9]%')
);

CREATE TABLE Waluta (
	SkrotNazwy VARCHAR(3) PRIMARY KEY NOT NULL
);

CREATE TABLE Wyplata (
		NumerTransakcji INT PRIMARY KEY NOT NULL,
		Kwota INT NOT NULL,
		DataPrzelewu DATE NOT NULL,
		DataZaksiegowania DATE,
		SkrotNazwy VARCHAR(3) REFERENCES Waluta NOT NULL,
		PESEL CHAR(11) REFERENCES Developer NOT NULL

);

CREATE TABLE Adres (
		IdLokacji INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		Miasto VARCHAR(30) NOT NULL,
		Ulica VARCHAR(30) NOT NULL,
		KodPocztowy VARCHAR(30) NOT NULL,
		Kraj VARCHAR(30) NOT NULL,
		NumerUlicy INT NOT NULL,
		CONSTRAINT poprawny_kod CHECK(KodPocztowy LIKE '[0-9][0-9]-[0-9][0-9][0-9]')
);

CREATE TABLE Siedziba (
		IdSiedziby INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
		LiczbaWszystkichMiejscPracy INT,
		CzyAktualne BIT NOT NULL,
		REGON INT REFERENCES FirmaSoftwareowa NOT NULL,
		IdLokacji INT REFERENCES Adres NOT NULL
);
CREATE TABLE Sklep (
	IdSklep INT IDENTITY(1,1) PRIMARY KEY NOT NULL,	
	NazwaSklepu VARCHAR(30) UNIQUE NOT NULL,
	PowierzchniaSklepu INT,
	CzyNadalCzynny BIT NOT NULL,
	CzyInternetowy BIT NOT NULL,
	IdLokacji INT REFERENCES Adres NOT NULL
);

CREATE TABLE Software (
	IdSoftwareu INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	DataWydania DATE NOT NULL,
	NazwaSoftwareu VARCHAR(50) UNIQUE NOT NULL,
	Cena INT NOT NULL,
	REGON INT REFERENCES FirmaSoftwareowa NOT NULL,

);

CREATE TABLE Transakcja (
	NumerTransakcji INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	DataTransakcji DATE NOT NULL,
	CzyPlatnoscGotowkowa BIT,
	IdSklepu INT REFERENCES Sklep NOT NULL,
);

CREATE TABLE SystemOperacyjny (
	IdSystemu INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Nazwa VARCHAR(30) NOT NULL,
	Wersja VARCHAR(15) NOT NULL,
	RokWydania INT NOT NULL,
	DoKiedyWspierany INT NOT NULL,
);

CREATE TABLE zakupProgramu (
	NumerTransakcji INT REFERENCES Transakcja NOT NULL,
	IdSoftwareu INT REFERENCES Software NOT NULL,
	PRIMARY KEY(NumerTransakcji, IdSoftwareu)
);

CREATE TABLE dzia³aNa(
	IdSoftwareu INT REFERENCES Software NOT NULL,
	IdSystemu INT REFERENCES SystemOperacyjny NOT NULL,
	PRIMARY KEY (IdSoftwareu, IdSystemu)
);
