--Query all of the entries in the Genre table
--SELECT * FROM Genre;
--------------------------------------------------
--Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords
--SELECT * from Artist ORDER BY ArtistName
--------------------------------------------------
--Write a SELECT query that lists all the songs in the Song table and include the Artist name
/*SELECT s.Title, a.ArtistName FROM Song s 
LEFT JOIN Artist a on s.ArtistId = a.id;*/
---------------------------------------------------
--Write a SELECT query that lists all the Artists that have a Pop Album
/*SELECT a.ArtistName FROM Artist a
LEFT JOIN Album al on al.ArtistId = a.id
LEFT JOIN Genre g on al.GenreId = g.id
WHERE g.Name = 'Pop';
*/
------------------------------------------------------------
--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album
/*SELECT a.ArtistName FROM Artist a
LEFT JOIN Album al on al.ArtistId = a.id
LEFT JOIN Genre g on al.GenreId = g.id

WHERE g.Name = 'Rock' OR g.Name = 'Jazz';*/
---------------------------------------------------------------
--Write a SELECT statement that lists the Albums with no songs
/*select al.Title, s.AlbumId from Album al
left join Song s on s.AlbumId = al.id 
where s.AlbumId is NULL;*/
---------------------------------------------------------------------------------------
--Using the INSERT statement, add one of your favorite artists to the Artist table.
/*SELECT * FROM Artist a
INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Kanye West', '1996')*/
---------------------------------------------------------------------------------------
--Using the INSERT statement, add one, or more, albums by your artist to the Album table.
/*SELECT * FROM Album a
INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
VALUES ('The Life Of Pablo', 2/14/2016 ,3966,'Def Jam', 30,13);*/
-----------------------------------------------------------------------------------------
--Using the INSERT statement, add some songs that are on that album to the Song table.
/*SELECT * FROM Song
INSERT INTO Song (Title,SongLength,ReleaseDate,GenreId,ArtistId,AlbumId)
VALUES  ('30 Hours',325,2016,13,30,23)*/
------------------------------------------------------------------------------------------
--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. 
--Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
/*VERSION 1
SELECT 
FROM Song s 
LEFT JOIN Album a ON s.AlbumId = a.Id
LEFT JOIN Artist ar ON s.ArtistId = ar.Id
WHERE ArtistName = 'Kanye West'*/
/*VERSION 2
SELECT a.ArtistName, s.Title, al.Title  FROM Artist a 
LEFT JOIN Song s ON s.ArtistId = a.Id
LEFT JOIN Album al ON al.ArtistId = a.Id
WHERE ArtistName = 'Kanye West'
*/
-------------------------------------------------------------------------------------------
--Write a SELECT statement to display how many songs exist for each album. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.
SELECT 
a.Title,
s.Title SongTitle,
s.AlbumId
FROM Album a 
JOIN Song s ON a.Id= s.AlbumId

SELECT COUNT(AlbumId) FROM Album a
JOIN Song s ON a.Id= s.AlbumId
WHERE AlbumId repeat




--SELECT COUNT() FROM Song
---------------------------------------------------------------------------------------------
--Write a SELECT statement to display how many songs exist for each artist. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.
---------------------------------------------------------------------------------------------
--Write a SELECT statement to display how many songs exist for each genre. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.
----------------------------------------------------------------------------------------------
--Write a SELECT query that lists the Artists that have put out records on more than one record label. 
--Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword
/*
select a.ArtistName
from Artist a
JOIN Album al on al.ArtistId = a.Id
group by a.ArtistName
having COUNT(distinct al.Label) > 1;*/

----------------------------------------------------------------------------------------------
--Using MAX() function, write a select statement to find the album with the longest duration.
--The result should display the album title and the duration.

-----------------------------------------------------------------------------------------------
--Using MAX() function, write a select statement to find the song with the longest duration. 
--The result should display the song title and the duration.

-----------------------------------------------------------------------------------------------
--Modify the previous query to also display the title of the album.