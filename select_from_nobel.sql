--#1. Change the query shown so that it displays Nobel prizes for 1950.
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;


--#2. Show who won the 1962 prize for Literature.
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';

--#3. Show the year and subject that won 'Albert Einstein' his prize.
SELECT yr ,subject
  FROM nobel
 WHERE winner =  'Albert Einstein';

--#4. Give the name of the 'Peace' winners since the year 2000, including 2000.
SELECT winner
  FROM nobel
 WHERE yr >= 2000
   AND subject = 'Peace'

--#5. Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive
SELECT *
  FROM nobel
 WHERE yr BETWEEN 1980 AND 1989 
   AND subject = 'Literature'


--#6. Only Presidents
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                  'Barack Obama');

--# 7. Show the winners with first name John
SELECT winner FROM nobel
 WHERE winner LIKE 'John%';


--#8. Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.--
SELECT * FROM nobel
 WHERE yr = 1980 AND subject = 'Physics'
  OR yr = 1984 AND subject = 'Chemistry';


--#9. Exclude Chemists and Medics
SELECT * FROM nobel
 WHERE yr = 1980
  AND subject NOT IN ('Chemistry' , 'Medicine');

--#10. Early Medicine, Late Literature
SELECT * FROM nobel
 WHERE subject = 'Medicine' AND yr < 1910
  OR subject = 'Literature' AND yr >= 2004;

--# 11. Find all details of the prize won by PETER GRÜNBERG
SELECT * FROM nobel
 WHERE winner = 'PETER GRÜNBERG'

--# 12. Find all details of the prize won by EUGENE O'NEILL
SELECT * FROM nobel
 WHERE winner = 'EUGENE O''NEILL';


--# 13. Knights of the realm--
SELECT winner, yr, subject FROM nobel
 WHERE winner LIKE 'sir %'
  ORDER BY yr  DESC;

--# 14. Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
