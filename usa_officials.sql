CREATE DATABASE usgofficials;

USE usgofficials;

CREATE TABLE presidents {
  id int PRIMARY KEY AUTO_INCREMENT,
  full_name VARCHAR(255),
  start_date DATE,
  end_date DATE,
  birth_year int,
  political_party, VARCHAR(255),
};

CREATE TABLE presidents {
  id int PRIMARY KEY AUTO_INCREMENT,
  president_id INT,
  full_name VARCHAR(255),
  start_date DATE,
  end_date DATE,
  birth_year int,
  political_party, VARCHAR(255),
  FOREIGN KEY (president_id) REFERENCES presidents(id)
};

-- Create a table for chiefs of staff
CREATE TABLE chiefs_of_staff (
    id INT PRIMARY KEY AUTO_INCREMENT,
    president_id INT,
    full_name VARCHAR(255),
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (president_id) REFERENCES presidents(id)
);

-- Create a table for congress officials
CREATE TABLE congress_officials (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(255),
    position VARCHAR(255),
    start_date DATE,
    end_date DATE
);

-- Presidents Values below
INSERT INTO presidents (full_name, start_date, end_date, birth_year, political_party)
VALUES 
  ('George Washington', '1789-04-30', '1797-03-04', 1732, 'None'),
  ('John Adams', '1797-03-04', '1801-03-04', 1735, 'Federalist'),
  ('Thomas Jefferson', '1801-03-04', '1809-03-04', 1743, 'Democratic-Republican'),
  ('James Madison', '1809-03-04', '1817-03-04', 1751, 'Democratic-Republican'),
  ('James Monroe', '1817-03-04', '1825-03-04', 1758, 'Democratic-Republican'),
  ('John Quincy Adams', '1825-03-04', '1829-03-04', 1767, 'Democratic-Republican'),
  ('Andrew Jackson', '1829-03-04', '1837-03-04', 1767, 'Democratic'),
  ('Martin Van Buren', '1837-03-04', '1841-03-04', 1782, 'Democratic'),
  ('William Henry Harrison', '1841-03-04', '1841-04-04', 1773, 'Whig'),
  ('John Tyler', '1841-04-04', '1845-03-04', 1790, 'Whig');



-- DATABASES:
-- 1) Presidents
-- 2) House of Representatives
-- 3) Senate

-- TABLES: 
-- 1) Secretary of State
-- 2) Secretary of the interior
-- 3) Secretary of Defense
