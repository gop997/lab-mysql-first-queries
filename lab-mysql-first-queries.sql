/* QUESTION 1:  Which are the different genres?*/
USE lab_mysql;
SELECT distinct prime_genre
FROM applestore2;

/* QUESTION 2: Which is the genre with more apps rated?*/
 SELECT track_name, prime_genre, rating_count_tot 
 FROM applestore2
 ORDER BY rating_count_tot DESC;

/* QUESTION 3: Which is the genre with more apps?*/
SELECT COUNT(prime_genre) AS DUPLICATECOUNT, track_name
FROM applestore2
GROUP BY prime_genre, track_name
HAVING COUNT(prime_genre) > 1;

/* QUESTION 4:Which is the one with less?*/
SELECT COUNT(prime_genre) AS DUPLICATECOUNT
FROM applestore2
GROUP BY prime_genre 
HAVING COUNT(prime_genre) > 1
ORDER BY DUPLICATECOUNT ASC;

/* QUESTION 5:Take the 10 apps most rated.*/
SELECT track_name, rating_count_tot
FROM applestore2
ORDER BY rating_count_tot DESC
LIMIT 10;

/* QUESTION 6: Take the 10 apps best rated by users.*/
SELECT track_name, user_rating
FROM applestore2
ORDER BY user_rating DESC
LIMIT 10;

/* QUESTION 7: Take a look on the data you retrieved in the question 5. Give some insights.*/
/* ANSWER QUERY: The top 10 apps that were rated by most users were retrived, this contains the apps with the highest number of users, the top two are very popular social media apps used by people of all ages across many countries. The only other social media on top 10 is at number 6 which has less than less half the rating count. 4 out the top 10 apps are games, 2 out 10 are music listening apps and religion based app bible is al number 7. so the most popular catogory are social media, games, music and religion */

/* QUESTION 8: Take a look on the data you retrieved in the question 6. Give some insights.*/
/* ANSWER QUERY: The top 10 hightest rated apps doesnt mean most rated. a small number of people giving an app 5 star rating can put hat app on our list of top rated.*/

/* QUESTION 9: Now compare the data from questions 5 and 6. What do you see?*/
/* ANSWER QUERY: the most popular apps are queried in question 5 and highes rated app is queried in question 6.*/

/* QUESTION 10: How could you take the top 3 regarding the user ratings but also the number of votes?*/
SELECT track_name, rating_count_tot, user_rating
FROM applestore2
ORDER BY rating_count_tot DESC, user_rating DESC
LIMIT 3;

/* QUESTION 11: Does people care about the price? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion??*/
SELECT track_name, price, currency, rating_count_tot, user_rating
FROM applestore2
ORDER BY PRICE DESC 
LIMIT 100;
/* ANSWER QUERY: As long as an app is useful, educational to the end user the price may play a lower factor is decision making, the proloquo is an education based app that is rated by 773 people, so neccesity is factored in more than price. but in most cases apps it looks like price  plays a major role in the user's decision to purchase.*/
