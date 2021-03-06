LOAD DATA LOCAL INFILE '~/CIS761/actor.csv' 
INTO TABLE actor
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '~/CIS761/customer.csv' 
INTO TABLE customer
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '~/CIS761/producer.csv' 
INTO TABLE producer
FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '~/CIS761/movie.csv' 
INTO TABLE movie
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '~/CIS761/actorMovie.csv'
INTO TABLE actor_movie
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '~/CIS761/rental.csv'
INTO TABLE rental
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE '~/CIS761/genre.csv'
INTO TABLE genre
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n';
