DROP TABLE IF EXISTS teams;

CREATE DATABASE IF NOT EXISTS nfldb;

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
    hex_color_3 VARCHAR(7)
);

INSERT INTO teams 
    (team, city, state, year_established, primary_color, secondary_color, super_bowl_championships, hex_color_1, hex_color_2, hex_color_3)
VALUES 
    ('Arizona Cardinals', 'Phoenix', 'Arizona', 1898, 'Cardinal Red', 'Black', 0, '97233f', '000000', NULL),
    ('Dallas Cowboys', 'Dallas', 'Texas', 1960, 'Navy Blue', 'Silver', 5, '002244', '869397', '00338d'),
    ('Houston Texans', 'Houston', 'Texas', 2002, 'Deep Steel Blue', 'Battle Red', 0, '03202f', 'a71930', NULL),
    ('Philadelphia Eagles', 'Philadelphia', 'Pennsylvania', 1933, 'Midnight Green', 'Silver', 4, '004953', 'a5acaf', NULL),
    ('New York Giants', 'East Rutherford', 'New Jersey', 1925, 'Royal Blue', 'Red', 4, '0b2265', 'a71930', NULL),
    ('Baltimore Ravens', 'Baltimore', 'Maryland', 1996, 'Purple', 'Black', 2, '241773', '000000', NULL),
    ('Buffalo Bills', 'Orchard Park', 'New York', 1960, 'Royal Blue', 'Red', 0, '00338d', 'c60c30', NULL),
    ('Carolina Panthers', 'Charlotte', 'North Carolina', 1995, 'Panther Blue', 'Black', 0, '0085ca', '101820', NULL),
    ('Chicago Bears', 'Chicago', 'Illinois', 1919, 'Navy Blue', 'Orange', 1, '0b162a', 'c83803', NULL),
    ('Cincinnati Bengals', 'Cincinnati', 'Ohio', 1968, 'Black', 'Orange', 0, 'fb4f14', '000000', NULL),
    ('Cleveland Browns', 'Cleveland', 'Ohio', 1946, 'Seal Brown', 'Orange', 0, '311d00', 'ff3c00', NULL),
    ('Denver Broncos', 'Denver', 'Colorado', 1960, 'Broncos Orange', 'Navy Blue', 3, '002244', 'fb4f14', NULL),
    ('Detroit Lions', 'Detroit', 'Michigan', 1930, 'Honolulu Blue', 'Silver', 4, '005a8b', 'b0b7bc', NULL),
    ('Green Bay Packers', 'Green Bay', 'Wisconsin', 1919, 'Dark Green', 'Gold', 4, '203731', 'ffb612', NULL),
    ('Indianapolis Colts', 'Indianapolis', 'Indiana', 1953, 'Royal Blue', 'White', 2, '002c5f', 'ffffff', NULL),
    ('Jacksonville Jaguars', 'Jacksonville', 'Florida', 1995, 'Teal', 'Gold', 0, '004851', 'd7a22a', NULL),
    ('Kansas City Chiefs', 'Kansas City', 'Missouri', 1960, 'Red', 'Gold', 2, 'e31837', 'ffb612', NULL),
    ('Las Vegas Raiders', 'Paradise', 'Nevada', 1960, 'Silver', 'Black', 3, 'a5acaf', '000000', NULL),
    ('Los Angeles Chargers', 'Inglewood', 'California', 1960, 'Powder Blue', 'Gold', 0, '0073cf', 'ffb612', NULL),
    ('Los Angeles Rams', 'Inglewood', 'California', 1936, 'Royal Blue', 'Yellow', 1, '002244', 'ffb612', NULL),
    ('Miami Dolphins', 'Miami Gardens', 'Florida', 1966, 'Aqua', 'Orange', 2, '008e97', 'f58220', NULL),
    ('Minnesota Vikings', 'Minneapolis', 'Minnesota', 1961, 'Purple', 'Gold', 0, '4f2683', 'ffc62f', NULL),
    ('New England Patriots', 'Foxborough', 'Massachusetts', 1960, 'Nautical Blue', 'Red', 6, '0a2342', 'c60c30', NULL),
    ('New Orleans Saints', 'New Orleans', 'Louisiana', 1967, 'Black', 'Gold', 1, '9f8958', '000000', NULL),
    ('New York Jets', 'East Rutherford', 'New Jersey', 1960, 'Hunter Green', 'White', 1, '125740', 'ffffff', NULL),
    ('Pittsburgh Steelers', 'Pittsburgh', 'Pennsylvania', 1933, 'Black', 'Gold', 6, '000000', 'ffb612', NULL),
    ('San Francisco 49ers', 'Santa Clara', 'California', 1946, 'Cardinal Red', 'Gold', 5, 'aa0000', 'ffb612', NULL),
    ('Seattle Seahawks', 'Seattle', 'Washington', 1976, 'College Navy', 'Action Green', 1, '002244', '7ac142', NULL),
    ('Tampa Bay Buccaneers', 'Tampa', 'Florida', 1976, 'Buccaneer Red', 'Pewter', 2, 'd50a0a', '34302b', NULL),
    ('Tennessee Titans', 'Nashville', 'Tennessee', 1960, 'Navy', 'Titan Blue', 0, '002244', '648fcc', NULL),
    ('Washington Football Team', 'Landover', 'Maryland', 1932, 'Burgundy', 'Gold', 3, '773141', 'ffb612', NULL);
