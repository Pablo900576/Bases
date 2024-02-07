Create table MUNICIPIOS(  

IdMunicipio int primary key auto_increment,  

Nombre varchar(50),  

Provincia varchar(50)  

);  

  

Create table VIVIENDAS(   

IdVivienda int primary key auto_increment,  

Direccion varchar(250),  

CodPostal int,  

M2 int,   

Municipio int,  

FOREIGN KEY (Municipio) references MUNICIPIOS (idMunicipio)  

);  

 

Create table PERSONAS (  

 DNI varchar(9) primary key,  

 Nombre varchar(50) not null,  

 Telefono int not null,  

 Hogar int,  

 Foreign key (Hogar) references VIVIENDAS (idVivienda) 

);  

  

Create table PERSONAS_VIVIENDAS( 

Dueño varchar (9),  

Vivienda int,  

PRIMARY KEY (Dueño, Vivienda),  

FOREIGN KEY (Dueño) references PERSONAS (DNI),  

FOREIGN KEY (Vivienda) references VIVIENDAS (idVivienda)  

); 

--Y el insert into de las tablas pero no lo copie--