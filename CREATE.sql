CREATE TABLE IF NOT EXISTS styles(
 id INT PRIMARY KEY,
 name VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS performers(
id INT PRIMARY KEY,
name VARCHAR(60) NOT NULL
);
CREATE TABLE IF NOT EXISTS styles_performers (
style_id INT REFERENCES styles(id),
performer_id INT REFERENCES performers(id),
PRIMARY KEY (style_id,performer_id)
);
CREATE TABLE IF NOT EXISTS Albums(
 id SERIAL PRIMARY KEY,
 name VARCHAR(60) NOT NULL,
 years INT NOT NULL,
);
CREATE TABLE IF NOT EXISTS Albums_perfomers(
album_id INT REFERENCES Albums(id),
performer_id INT REFERENCES performers(id),
PRIMARY KEY (album_id,performer_id)
);
CREATE TABLE IF NOT EXISTS Tracks( 
id SERIAL PRIMARY KEY,
name VARCHAR(60) NOT NULL,
times INT NOT NULL,
Album_id INT REFERENCES Albums(id)
);
CREATE TABLE IF NOT EXISTS track_collection(
track_id INT REFERENCES Tracks(id),
collection_id INT REFERENCES collection(id),
PRIMARY KEY (track_id,collection_id)
);
CREATE TABLE IF NOT EXISTS collection(
 id SERIAL PRIMARY KEY,
 name VARCHAR(60) NOT NULL,
 years INT CHECK years >= 2015
);
