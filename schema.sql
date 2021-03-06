DROP DATABASE IF EXISTS hogwarts;
CREATE DATABASE hogwarts;
\c hogwarts

CREATE TABLE houses (
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  animal TEXT NOT NULL,
  points INTEGER,
  student_list INTEGER[]
);

CREATE INDEX on houses (name);

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  gender TEXT NOT NULL,
  year TEXT NOT NULL,
  birth_date TEXT NOT NULL,
  admission_date TIMESTAMP ,
  alumni_status BOOLEAN DEFAULT false,
  house_id INTEGER REFERENCES houses
);

CREATE INDEX on students (house_id);
CREATE INDEX on students (name);

CREATE TABLE spells (
  id SERIAL PRIMARY KEY,
  name TEXT UNIQUE NOT NULL,
  incantation TEXT,
  category TEXT,
  level TEXT
);

CREATE TABLE known_spells (
  id SERIAL PRIMARY KEY,
  proficiency NUMERIC(3) NOT NULL,
  level INTEGER NOT NULL,
  spell_id INTEGER REFERENCES spells,
  student_id INTEGER REFERENCES students
);

CREATE INDEX on known_spells (spell_id);
CREATE INDEX on known_spells (student_id);
