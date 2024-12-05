CREATE DATABASE IF NOT EXISTS Pokemons;

CREATE TABLE IF NOT EXISTS Generacion(\n" +
                    id INTEGER PRIMARY KEY not NULL,
                    nom VARCHAR(100) NOT NULL,
                    any_lanzamiento INTEGER NOT NULL,
                    localitzacio VARCHAR(100),
                    jocs TEXT);

CREATE TABLE IF NOT EXISTS Gimnasio(
                    id INTEGER PRIMARY KEY,
                    nom VARCHAR(100) NOT NULL,
                    lider VARCHAR(100),
                    foto_url VARCHAR(250),
                    tipus VARCHAR(100),
                    id_generacio INTEGER NOT NULL,
                    FOREIGN KEY (id_generacio) REFERENCES Generacion(id) ON DELETE CASCADE);

INSERT INTO Generacion (nom, any_lanzamiento, localitzacio, jocs) VALUES ('Generación I', 1996, 'Kanto', 'Rojo, Azul, Amarillo'), ('Generación II', 1999, 'Johto', 'Oro, Plata, Cristal'), ('Generación III', 2002, 'Hoenn', 'Rubí, Zafiro, Esmeralda');

INSERT INTO Gimnasio (nom, lider, foto_url, tipus, id_generacio) VALUES ('Gimnasio Agua', 'Misty', 'https://ejemplo_ruta/misty.png', 'Agua', 1), ('Gimnasio Eléctrico', 'Lt. Surge', 'https://ejemplo_ruta/lt_surge.png', 'Eléctrico', 1), ('Gimnasio Roca', 'Brock', 'https://ejemplo_ruta/brock.png', 'Roca', 1);

INSERT INTO Gimnasio (nom, lider, foto_url, tipus, id_generacio) VALUES ('Gimnasio Volador', 'Falkner', 'https://ejemplo_ruta/falkner.png', 'Volador', 2), ('Gimnasio Bicho', 'Bugsy', 'https://ejemplo_ruta/bugsy.png', 'Bicho', 2);

INSERT INTO Gimnasio (nom, lider, foto_url, tipus, id_generacio) VALUES ('Gimnasio Fuego', 'Flannery', 'https://ejemplo_ruta/flannery.png', 'Fuego', 3), ('Gimnasio Agua', 'Wallace', 'https://ejemplo_ruta/wallace.png', 'Agua', 3);

