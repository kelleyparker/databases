CREATE DATABASE nfldb;

USE nfldb;

CREATE TABLE teams (
    id INT AUTO_INCREMENT PRIMARY KEY,
    team VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    state VARCHAR(255) NOT NULL,
    year_established INT NOT NULL,
    primary_color VARCHAR(255) NOT NULL,
    secondary_color VARCHAR(255) NOT NULL,
    super_bowl_championships INT NOT NULL,
    hex_color_1 VARCHAR(7) NOT NULL,
    hex_color_2 VARCHAR(7) NOT NULL,
    hex_color_3 VARCHAR(7) NOT NULL
);

INSERT INTO teams 
    (team, city, state, year_established, primary_color, secondary_color, super_bowl_championships, hex_color_1, hex_color_2) 
VALUES 
    ('Dallas Cowboys', 'Dallas', 'Texas', 1960, 'Navy Blue', 'Silver', 5, '002244', '869397', '00338d'),
    ('Houston Texans', 'Houston', 'Texas', 2002, 'Deep Steel Blue', 'Battle Red', 0, '03202f', 'a71930', 'NULL');
