-- Active: 1682599744903@@127.0.0.1@3306

CREATE TABLE
    brands (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT UNIQUE NOT NULL
    );

CREATE TABLE
    products (
        id TEXT PRIMARY KEY UNIQUE NOT NULL,
        name TEXT NOT NULL,
        price REAL NOT NULL,
        description TEXT NOT NULL,
        brand_id TEXT NOT NULL,
        FOREIGN KEY (brand_id) REFERENCES brands(id)
    );

INSERT INTO brands (id, name)
VALUES ('b001', 'samsung'), ('b002', 'apple'), ('b003', 'xiaomi'), ('b004', 'umidigi');

INSERT INTO
    products (
        id,
        name,
        price,
        description,
        brand_id
    )
VALUES (
        'p001',
        'A03',
        999.90,
        'Celular de entrada',
        'b001'
    ), (
        'p002',
        'note20',
        5000,
        'Celular top de linha',
        'b001'
    ), (
        'p003',
        'iphone 14',
        10000,
        'Celular top de linha',
        'b002'
    ), (
        'p004',
        'poco x5',
        1999.90,
        'Celular intermediário',
        'b003'
    ), (
        'p005',
        'A11 pro max',
        999.90,
        'Celular de entrada',
        'b004'
    );

    DROP TABLE brands;

    DROP TABLE products;