CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    email VARCHAR(150),
    biling_info VARCHAR(200)
);

CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    title VARCHAR(150)
);

CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    time_date VARCHAR(150),
    sub_total NUMERIC(8,2),
    cutomer_id INTEGER,
    movie_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(movie_id) REFERENCES movies(movie_id)
);

CREATE TABLE concession(
    concession_receipt SERIAL PRIMARY KEY,
    snack_total NUMERIC(8,2),
    dirnk_total NUMERIC(8,2),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

ALTER TABLE tickets
ADD FOREIGN KEY(movie_id) REFERENCES movies(movie_id);


ALTER TABLE concession
ADD FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

