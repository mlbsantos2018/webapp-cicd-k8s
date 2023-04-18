CREATE DATABASE meubanco;
USE meubanco;

CREATE TABLE mensagens (
    id INT,
    nome VARCHAR(50),
    email VARCHAR(50),
    comentario VARCHAR(255)
);

INSERT INTO mensagens(id,nome,email,comentario) VALUES(
    1, 
    "dev1",
    "dev1@webapp.com",
    "Dev1 comentário teste"
);
