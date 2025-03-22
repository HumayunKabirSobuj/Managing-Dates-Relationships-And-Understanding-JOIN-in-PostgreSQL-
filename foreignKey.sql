-- Active: 1742229780318@@127.0.0.1@5432@ph@public

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user" (id)
)

ALTER TABLE post ALTER COLUMN user_id SET NOT NULL;

INSERT INTO
    "user" (username)
VALUES ('Akash'),
    ('Batash'),
    ('Sagor'),
    ('Nodi');

SELECT * FROM "user";

INSERT INTO
    post (title, user_id)
VALUES ('First Post by Akash', 1),
    (
        'Batash Thoughts on Web Development',
        2
    ),
    (
        'Sagor Guide to JavaScript',
        3
    ),
    (
        'Nodi Experience with React.js',
        4
    );

SELECT * FROM post;

DROP TABLE post;

DROP TABLE "user";

--

DELETE FROM "user" WHERE id = 4;

SELECT * FROM "user";
SELECT * FROM post;


SELECT title, username FROM post
    JOIN "user" ON post.user_id = "user".id;


SELECT post.id FROM post
    JOIN "user" ON post.user_id = "user".id;




SELECT * FROM post as p
  INNER  JOIN "user" as u ON p.user_id = u.id;