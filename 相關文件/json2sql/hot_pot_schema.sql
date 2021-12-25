CREATE TABLE Store (
    Tel VARCHAR(12) PRIMARY KEY ,
    Addr VARCHAR(255) NOT NULL,
	Comment_num Int,
	Price_level Float,
	Store_name VARCHAR(255),
	Brand VARCHAR(255) Not NULL,
	City CHAR(3) Not NULL,
	District CHAR(3) Not NULL,
	Avg_rating Float,
	FOREIGN KEY (Brand) REFERENCES Hot_pot(Brand),
	FOREIGN KEY (City) REFERENCES Region(City),
	FOREIGN KEY (District) REFERENCES Region(District)
);

CREATE TABLE Region (
	City CHAR(3),
	District CHAR(3),
	PRIMARY KEY (City, District)
);

CREATE TABLE Hot_pot (
	Brand VARCHAR(255) PRIMARY KEY
);

CREATE TABLE Service (
	Url VARCHAR(255),
	Tel VARCHAR(12) PRIMARY KEY REFERENCES Store(Tel) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Commentor (
	Commentor1 VARCHAR(255), 
	Commentor2 VARCHAR(255), 
	Commentor3 VARCHAR(255), 	
	Tel VARCHAR(12) PRIMARY KEY REFERENCES Store(Tel) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Operation (
	Open_Day Int Not NULL, 
	Begin_ Int Not NULL , 
	End_ Int Not NULL,
	Tel VARCHAR(12),
	PRIMARY KEY (Tel, Open_Day, Begin_, End_),
	FOREIGN KEY(Tel) REFERENCES Store(Tel) ON DELETE CASCADE ON UPDATE CASCADE
);

