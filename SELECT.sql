-- Задание 2 Селект запросы

SELECT name,times FROM tracks
ORDER BY times DESC
LIMIT 1;

SELECT name,times FROM tracks
WHERE times >= '00:03:50';

SELECT name,years FROM collection 
WHERE years >= 2018 AND years <= 2020;

SELECT name FROM performers
WHERE name NOT LIKE '% %' ;

SELECT name,times FROM tracks 
WHERE name LIKE '%My%';

-- Задание 3 Селкт запрос

SELECT name,COUNT(style_id) as ccount FROM styles s
LEFT JOIN styles_performers a ON s.id = a.style_id 
GROUP BY name,style_id;

SELECT name,COUNT(*) as mee FROM albums
WHERE years = 2019 OR years = 2020
GROUP BY name;

SELECT albums.name, AVG(times) as timess FROM albums 
LEFT JOIN tracks a ON albums.id = a.album_id 
GROUP BY albums.name;


SELECT performers.name,years FROM performers 
JOIN albums_perfomers a ON performers.id=a.performer_id
JOIN albums b ON a.album_id=b.id 
WHERE years < 2020;

SELECT collection.name FROM collection 
JOIN track_collection a ON collection.id=a.collection_id
JOIN tracks b ON a.track_id=b.id 
JOIN albums c ON b.album_id=c.id
JOIN albums_perfomers d ON c.id=d.album_id
JOIN performers q ON d.performer_id=q.id 
WHERE q.name = 'Eminem' 
GROUP BY collection.name
;
