-- psql -U postgres

CREATE USER scias WITH PASSWORD 'scias';

-- malaria analysis database
CREATE DATABASE scias_malaria WITH OWNER scias;
GRANT ALL PRIVILEGES ON DATABASE scias_malaria to scias;
