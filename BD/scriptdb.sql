CREATE database citra;

CREATE TABLE IF NOT EXISTS Andes(
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(32) not null,
	UNIQUE(nombre)
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Indice(
	nombre varchar(32) not null PRIMARY KEY,
	formula varchar(256) not null,
	longitudOndaInferior INTEGER not null,
	longitudOndaSuperior INTEGER not null
);

CREATE TABLE IF NOT EXISTS Tratamiento(
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,	
	nombre varchar(32) not null,
	fecha DATE not null,
    idAndes INTEGER NOT NULL,
    idReflectancia INTEGER NOT NULL,
	FOREIGN KEY (idAndes) References Andes(id),
	UNIQUE(idReflectancia)
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS InstanciaIndice(
	nombre varchar(32) not null PRIMARY KEY,
	valor DECIMAL not null,
    idTratamiento INTEGER NOT NULL,
	FOREIGN KEY (idTratamiento) References Tratamiento(id), 
	FOREIGN KEY (nombre) References Indice(nombre)
);

CREATE TABLE IF NOT EXISTS Reflectancia(
	longitud INTEGER NOT NULL,
	valor DOUBLE(7,7) NOT NULL,
    idReflectancia INTEGER NOT NULL,
    FOREIGN KEY (idReflectancia) References Tratamiento(idReflectancia)
);