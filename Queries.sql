USE CAPSTONE;

/*
1)  Display all the details of movies created by directors Christopher and Matt Reeves.
*/
SELECT * FROM DIRECTORS
WHERE (DIRECTOR1= 'Matt Reeves' OR DIRECTOR1 LIKE 'Christopher%');

SELECT * FROM DIRECTORS
WHERE (DIRECTOR2= 'Matt Reeves' AND DIRECTOR1 LIKE 'Christopher%');

/*
2) Display all the details of movies with a duration of 140 minutes to 190 minutes.
*/
select * FROM DIRECTORS
WHERE DURATION BETWEEN 140 AND 190;


/*
Display all details of movies with ratings above 7 in ascending order
*/
select * FROM DIRECTORS
WHERE Ratings>7 ORDER BY Ratings;


/*
4) Display all movie names in descending order.
*/
SELECT MOVIENAME FROM DIRECTORS ORDER BY MOVIENAME DESC;


/*
5) Display movie name starts with ‘P’ and their rating is greater than 7.
*/
SELECT MOVIENAME FROM DIRECTORS
WHERE (MOVIENAME LIKE 'P%' AND Ratings>7);


/*
b */


/*
1) Display all movie names with star Arnold Schwarzenegger in ascending order.
*/
SELECT MOVIENAME FROM MOVIES
WHERE (STAR1= 'Arnold Schwarzenegger')
ORDER BY MOVIENAME;


/*
2) Display all details of the movie with the highest number of votes.
*/
SELECT * FROM MOVIES
ORDER BY VOTES DESC
limit 1;


/*
3) Display movie names with gross collections in descending order.
*/
SELECT * FROM MOVIES
ORDER BY GROSSCOLLECTION DESC;


/*
4) Display the gross collection of movies with the star Arnold.
*/
SELECT GROSSCOLLECTION FROM MOVIES
WHERE STAR1 LIKE 'ARNOLD%';

/*
5) Display all details of movies with comedy and action genres.
*/
SELECT * FROM MOVIES
WHERE (GENRE1 = 'ACTION' AND GENRE2= 'COMEDY');



/*
C)
*/

/*
1) Display all details from both tables where movie names are the same.
*/
SELECT * FROM MOVIES 
JOIN DIRECTORS ON MOVIES.MOVIENAME= DIRECTORS.MOVIENAME;


/*
2)   Display all movie names, Director, ratings, and gross collection where the genre is action.
*/
SELECT * FROM MOVIES;
SELECT MOVIES.MOVIENAME, DIRECTORS.DIRECTOR1, DIRECTORS.RATINGS, MOVIES.GROSSCOLLECTION
FROM MOVIES JOIN DIRECTORS ON MOVIES.MOVIENAME= DIRECTORS.MOVIENAME
WHERE (MOVIES.GENRE1= 'ACTION');


/*
3) Display all details from both tables with the highest gross collection.
*/
SELECT * FROM MOVIES 
JOIN DIRECTORS ON MOVIES.MOVIENAME= DIRECTORS.MOVIENAME
ORDER BY MOVIES.GROSSCOLLECTION DESC
LIMIT 1;


/*
4)      Display all details from both tables with the highest ratings
*/
SELECT * FROM MOVIES
JOIN DIRECTORS ON MOVIES.MOVIENAME= DIRECTORS.MOVIENAME
ORDER BY DIRECTORS.RATINGS DESC
LIMIT 1;


/*
5)  Display all details from both tables with the lowest gross collection and lowest ratings
*/
SELECT * FROM MOVIES
JOIN DIRECTORS ON MOVIES.MOVIENAME= DIRECTORS.MOVIENAME
ORDER BY DIRECTORS.RATINGS;

SELECT MIN(GROSSCOLLECTION) FROM MOVIES;

LIMIT 1;
