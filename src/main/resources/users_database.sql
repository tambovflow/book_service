
CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    login VARCHAR(255) UNIQUE NOT NULL,
    pass VARCHAR(255) NOT NULL,
    username VARCHAR(255),
    email VARCHAR(255) NOT NULL UNIQUE,
    phone_number VARCHAR(255) NOT NULL UNIQUE,
    sex VARCHAR(255) NOT NULL,
    photo VARCHAR(255),
    tips INTEGER default 0,
    rating INTEGER default 0,
    reg_date date NOT NULL DEFAULT now(),
    removed boolean not null default false
);

CREATE TABLE users_add_books(
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) on update cascade on delete cascade,
    book_id INTEGER REFERENCES books(id) on update cascade on delete cascade,
    upload_date date NOT NULL default now(),
    removed boolean not null default false,
    to_change boolean not null default true
);

CREATE TABLE transfers(
    id SERIAL PRIMARY KEY,
    from_id INTEGER REFERENCES users(id) on update cascade on delete cascade,
    to_id INTEGER REFERENCES users(id) on update cascade on delete cascade,
    book_id INTEGER REFERENCES users_add_books(id) on update cascade on delete cascade,
    transfer_date date NOT NULL default now()
);