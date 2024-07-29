DROP TABLE countries ;

CREATE TABLE countries (
    Id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    slug VARCHAR(255),
    key VARCHAR(255),
    place_id INT,
    code VARCHAR(10),
    alt_names TEXT,
    pop INT,
    area FLOAT,
    continent_id INT,
    country_id INT,
    s VARCHAR(10),
    c VARCHAR(10),
    d VARCHAR(10),
    motor VARCHAR(10),
    iso2 VARCHAR(2),
    iso3 VARCHAR(3),
    fifa VARCHAR(3),
    net VARCHAR(50),
    wikipedia TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);

\copy countries FROM './countries.csv' WITH (FORMAT csv, HEADER);


-- Select data to verify the import
SELECT * FROM countries;


