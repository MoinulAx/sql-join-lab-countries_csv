DROP TABlE continent;
DROP TABLE countries ;




CREATE TABlE continent (
    id SERIAL PRIMARY KEY,
    name TEXT,
    slug TEXT,
    key TEXT,
    place_id INT,
    alt_names TEXT,
    created_at DATE,
    updated_at DATE
);

\copy continent FROM './continents.csv' WITH (FORMAT csv, HEADER);


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
    continent_id INT ,
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
    updated_at TIMESTAMP,
    FOREIGN KEY (continent_id) REFERENCES continent(id) 
);

\copy countries FROM './countries.csv' WITH (FORMAT csv, HEADER);


-- SELECT * FROM countries;



SELECT countries.name AS countries_name, continent.name AS continent_name FROM continent 
JOIN countries ON continent.id = countries.continent_id;
