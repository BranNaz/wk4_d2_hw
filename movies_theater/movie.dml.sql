SELECT *
FROM tickets;

INSERT INTO customer(
    first_name,
    last_name,
    email,
    biling_info
)

VALUEs(
    'Brandon',
    'Nazario',
    'brandon@gmail.com',
    '0000-000-0000-0000 023 07/21'
);

INSERT INTO movies(
    title
)

VALUES(
    'MINIONS: RISE OF GRU'
),

(
    'THOR: LOVE AND THUNDER'
);

INSERT INTO tickets(
    ticket_id,
	time_date,
	sub_total,
	cutomer_id,
	movie_id
)

VALUES (
    1,
    '3:15 pm, 07/19/22',
    15.50,
    1,
    1
);

INSERT INTO concession(
	concession_receipt,
	snack_total,
	dirnk_total,
	customer_id
) 
VALUES (
	1,
	219.00,
	150.00,
	1
);