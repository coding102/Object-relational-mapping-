CREATE TABLE users (
    id serial PRIMARY KEY,
    fname varchar(50),
    lname varchar(50),
    email varchar(50),
  dateCreated timestamp DEFAULT current_timestamp
);