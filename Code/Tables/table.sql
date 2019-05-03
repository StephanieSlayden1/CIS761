DROP TABLE IF EXISTS genre;
DROP TABLE IF EXISTS actor_movie;
DROP TABLE IF EXISTS rental;
DROP TABLE IF EXISTS movie;
DROP TABLE IF EXISTS producer;
DROP TABLE IF EXISTS actor;
DROP TABLE IF EXISTS customer;


CREATE TABLE IF NOT EXISTS customer 
(
	customer_id VARCHAR(100) NOT NULL,
	firstName VARCHAR(100) NOT NULL,
	lastName VARCHAR(100) NOT NULL,
	phoneNumber VARCHAR(100),
	birthday DATE,
	PRIMARY KEY (customer_id)
);

CREATE TABLE IF NOT EXISTS actor
(
	actor_id VARCHAR(100) NOT NULL,
	firstName VARCHAR(100),
	lastName VARCHAR(100),
	PRIMARY KEY (actor_id)
);

CREATE TABLE IF NOT EXISTS producer
(
	producer_id VARCHAR(100) NOT NULL,
	firstName VARCHAR(100),
	lastName VARCHAR(100),
	PRIMARY KEY (producer_id)
);

CREATE TABLE IF NOT EXISTS movie
(
	movie_id VARCHAR(100) NOT NULL, 
	producer_id VARCHAR(100) NOT NULL,
	title VARCHAR(200),
	year_released INTEGER(4),
	rating INT, 
	price INT,
	PRIMARY KEY (movie_id),
	FOREIGN KEY (producer_id) REFERENCES producer(producer_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS rental
(
	rental_id VARCHAR(100) NOT NULL,
	movie_id VARCHAR(100) not null,
	customer_id VARCHAR(100) not null,
	rental_date DATE null,
	PRIMARY KEY (rental_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id) ON DELETE CASCADE,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS actor_movie
(
	actor_id VARCHAR(100) NOT NULL,
	movie_id VARCHAR(100) NOT NULL,
	PRIMARY KEY (actor_id, movie_id),
	FOREIGN KEY (actor_id) REFERENCES actor(actor_id) ON DELETE CASCADE,	
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE	
);

CREATE TABLE IF NOT EXISTS genre
(
	movie_id VARCHAR(100) NOT NULL,
	genreName VARCHAR(100),
	PRIMARY KEY (movie_id, genreName),
	FOREIGN KEY (movie_id) REFERENCES movie(movie_id) ON DELETE CASCADE	
);
