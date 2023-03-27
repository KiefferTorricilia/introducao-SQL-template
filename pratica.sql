-- Active: 1679956157571@@127.0.0.1@3306
CREATE TABLE 
    books(
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT NOT NULL,
        author TEXT NOT NULL,
        page_count INTEGER, 
        price REAL NOT NULL
    );

DROP TABLE books;

SELECT * FROM books;

SELECT id, name FROM books;

INSERT INTO books(id, name, author, page_count, price)
VALUES
    (8503012928, "O Quinze", "Rachel de Queiroz", 208, 24.95);
    

INSERT INTO books(id, name, author, price)
VALUES
    (8578887239, "Dom Casmurro", "Machado de Assis", 46.77);

UPDATE books
SET page_count = 463
where id = 8578887239;

DELETE FROM books
WHERE id = 8503012928;

CREATE TABLE 
    tarefas(
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        interno TEXT NOT NULL,
        externo TEXT NOT NULL
    );

INSERT INTO tarefas(id, interno, externo)
VALUES
    (1, "Lavar a Louça", "Pegar as folhas"),
    (2, "Aspirar", "Lavar a garagem"),
    (3, "Lustar os Móveis", "Varrer a calçada");

SELECT * FROM tarefas;

DROP TABLE tarefas;

UPDATE tarefas
SET interno = "Lavar a Louça e o chão"
WHERE id = 1;

DELETE FROM tarefas
WHERE id = 1;