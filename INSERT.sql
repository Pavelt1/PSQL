-- Задание 1 добавление в табилицы
-- не менее 4 исполнителей,
INSERT INTO performers (name)
VALUES ('Eminem'),('Lady Gaga'),('Nirvana'),('Britney Spears'),('AC/DC');

-- не менее 3 жанров,
INSERT INTO styles (id,name)
VALUES (1,'POP'),(2,'ROK'),(3,'HIP-HOP');

-- не менее 3 альбомов,
INSERT INTO albums (name,years)
VALUES ('The Eminem Show',2002),('Back in Black',1980),('Britney',2001),('Artpop',2019);

-- не менее 6 треков,
INSERT INTO tracks (name,times,album_id)
VALUES ('Superman','00:05:50',9),('Solder','00:03:46',9),('The kiss','00:01:15',9),('My Boys','00:03:26',11),('Lonely','00:03:19',11),
('Back in Black','00:04:13',10),('Aura','00:03:55',12);

-- не менее 4 сборников
INSERT INTO collection (name,years)
VALUES ('Gold collection',2019),('Super collection',2014),('Silver collection',2011),('Old collection',2007);

INSERT INTO styles_performers (style_id,performer_id)
VALUES (1,3),(1,2),(2,3),(1,4),(2,5);

INSERT INTO albums_perfomers (album_id,performer_id)
VALUES (9,1),(10,5),(11,4),(12,2);

INSERT INTO track_collection (track_id,collection_id)
VALUES (15,1),(16,1),(17,1),(18,2),(19,3),(20,4),(21,3);

