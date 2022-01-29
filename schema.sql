CREATE TABLE owners(
  id INT AUTO_INCREMENT,
  full_name VARCHAR(20),
  age INT,
  PRIMARY KEY(id)
);
CREATE TABLE species(
  id INT AUTO_INCREMENT,
  name VARCHAR(20),
  PRIMARY KEY(id)
);
CREATE TABLE animals(
  id INT AUTO_INCREMENT,
  name VARCHAR(20),
  date_of_birth DATE,
  escape_attempts INT,
  neutered BOOLEAN,
  weight_kg DECIMAL,
  species_id INT REFERENCES species(id),
  owner_id INT REFERENCES owners(id),
  PRIMARY KEY(id)
);
CREATE TABLE vets(
  id INT AUTO_INCREMENT,
  name VARCHAR(20),
  age INT,
  date_of_graduation DATE,
  PRIMARY KEY(id)
);
CREATE TABLE specializations(
  id INT AUTO_INCREMENT,
  species_id INT REFERENCES species(id),
  vet_id INT REFERENCES vets(id),
  PRIMARY KEY(id)
);
CREATE TABLE visits(
  id INT AUTO_INCREMENT,
  animal_id INT REFERENCES animals(id),
  vet_id INT REFERENCES vets(id),
  date_of_visit DATE,
  PRIMARY KEY(id)
);