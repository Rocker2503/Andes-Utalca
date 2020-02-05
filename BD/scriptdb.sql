

CREATE TABLE IF NOT EXISTS Andes(
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(32) not null
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Indice(
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(32) not null,
	formula varchar(256) not null,
	longitudOndaInferior INTEGER not null,
	longitudOndaSuperior INTEGER not null
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Tratamiento(
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,	
	nombre varchar(32) not null,
	fecha DATE not null,
    idAndes INTEGER NOT NULL,
	FOREIGN KEY (idAndes) References Andes(id)
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS InstanciaIndice(
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nombre varchar(32) not null,
	valor DECIMAL not null,
    idTratamiento INTEGER NOT NULL,
    idIndice INTEGER NOT NULL,
	FOREIGN KEY (idTratamiento) References Tratamiento(id), 
	FOREIGN KEY (idIndice) References Indice(id)
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS Reflectancia(
	id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idTratamiento INTEGER NOT NULL,
	FOREIGN KEY (idTratamiento) References Tratamiento(id)
)AUTO_INCREMENT = 1;

CREATE TABLE IF NOT EXISTS InstanciaReflectancia(
	longitud INTEGER NOT NULL,
	valor DECIMAL NOT NULL,
    idReflectancia INTEGER NOT NULL,
	FOREIGN KEY (idReflectancia) References Reflectancia(id)
);

