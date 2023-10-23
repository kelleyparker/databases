CREATE DATABASE IF NOT EXISTS nfldb;
USE nfldb;

DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS rosters2019;

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
    hex_color_3 VARCHAR(7),
    conference VARCHAR(255) NOT NULL,
    division VARCHAR(255) NOT NULL
);

CREATE TABLE rosters2019 (
    player_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    college VARCHAR(100) NOT NULL,
    position VARCHAR(50) NOT NULL,
    nfl_experience INT NOT NULL,
    annual_salary DECIMAL(10, 2) NOT NULL,
    team VARCHAR(255) NOT NULL,
    season_year INT NOT NULL
);


INSERT INTO teams 
    (team, city, state, year_established, primary_color, secondary_color, super_bowl_championships, hex_color_1, hex_color_2, hex_color_3, conference, division)
VALUES 
    ('Arizona Cardinals', 'Phoenix', 'Arizona', 1898, 'Cardinal Red', 'Black', 0, '97233f', '000000', NULL, 'NFC', 'NFC West'),
    ('Dallas Cowboys', 'Dallas', 'Texas', 1960, 'Navy Blue', 'Silver', 5, '002244', '869397', '00338d', 'NFC', 'NFC East'),
    ('Houston Texans', 'Houston', 'Texas', 2002, 'Deep Steel Blue', 'Battle Red', 0, '03202f', 'a71930', NULL, 'AFC', 'AFC South'),
    ('Philadelphia Eagles', 'Philadelphia', 'Pennsylvania', 1933, 'Midnight Green', 'Silver', 4, '004953', 'a5acaf', NULL, 'NFC', 'NFC East'),
    ('New York Giants', 'East Rutherford', 'New Jersey', 1925, 'Royal Blue', 'Red', 4, '0b2265', 'a71930', NULL, 'NFC', 'NFC East'),
    ('Baltimore Ravens', 'Baltimore', 'Maryland', 1996, 'Purple', 'Black', 2, '241773', '000000', NULL, 'AFC', 'AFC North'),
    ('Buffalo Bills', 'Orchard Park', 'New York', 1960, 'Royal Blue', 'Red', 0, '00338d', 'c60c30', NULL, 'AFC', 'AFC East'),
    ('Carolina Panthers', 'Charlotte', 'North Carolina', 1995, 'Panther Blue', 'Black', 0, '0085ca', '101820', NULL, 'NFC', 'NFC South'),
    ('Chicago Bears', 'Chicago', 'Illinois', 1919, 'Navy Blue', 'Orange', 1, '0b162a', 'c83803', NULL, 'NFC', 'NFC North'),
    ('Cincinnati Bengals', 'Cincinnati', 'Ohio', 1968, 'Black', 'Orange', 0, 'fb4f14', '000000', NULL, 'AFC', 'AFC North'),
    ('Cleveland Browns', 'Cleveland', 'Ohio', 1946, 'Seal Brown', 'Orange', 0, '311d00', 'ff3c00', NULL, 'AFC', 'AFC North'),
    ('Denver Broncos', 'Denver', 'Colorado', 1960, 'Broncos Orange', 'Navy Blue', 3, '002244', 'fb4f14', NULL, 'AFC', 'AFC West'),
    ('Detroit Lions', 'Detroit', 'Michigan', 1930, 'Honolulu Blue', 'Silver', 4, '005a8b', 'b0b7bc', NULL, 'NFC', 'NFC North'),
    ('Green Bay Packers', 'Green Bay', 'Wisconsin', 1919, 'Dark Green', 'Gold', 4, '203731', 'ffb612', NULL, 'NFC', 'NFC North'),
    ('Indianapolis Colts', 'Indianapolis', 'Indiana', 1953, 'Royal Blue', 'White', 2, '002c5f', 'ffffff', NULL, 'AFC', 'AFC South'),
    ('Jacksonville Jaguars', 'Jacksonville', 'Florida', 1995, 'Teal', 'Gold', 0, '004851', 'd7a22a', NULL, 'AFC', 'AFC South'),
    ('Kansas City Chiefs', 'Kansas City', 'Missouri', 1960, 'Red', 'Gold', 2, 'e31837', 'ffb612', NULL, 'AFC', 'AFC West'),
    ('Las Vegas Raiders', 'Paradise', 'Nevada', 1960, 'Silver', 'Black', 3, 'a5acaf', '000000', NULL, 'AFC', 'AFC West'),
    ('Los Angeles Chargers', 'Inglewood', 'California', 1960, 'Powder Blue', 'Gold', 0, '0073cf', 'ffb612', NULL, 'AFC', 'AFC West'),
    ('Los Angeles Rams', 'Inglewood', 'California', 1936, 'Royal Blue', 'Yellow', 1, '002244', 'ffb612', NULL, 'NFC', 'NFC West'),
    ('Miami Dolphins', 'Miami Gardens', 'Florida', 1966, 'Aqua', 'Orange', 2, '008e97', 'f58220', NULL, 'AFC', 'AFC East'),
    ('Minnesota Vikings', 'Minneapolis', 'Minnesota', 1961, 'Purple', 'Gold', 0, '4f2683', 'ffc62f', NULL, 'NFC', 'NFC North'),
    ('New England Patriots', 'Foxborough', 'Massachusetts', 1960, 'Nautical Blue', 'Red', 6, '0a2342', 'c60c30', NULL, 'AFC', 'AFC East'),
    ('New Orleans Saints', 'New Orleans', 'Louisiana', 1967, 'Black', 'Gold', 1, '9f8958', '000000', NULL, 'NFC', 'NFC South'),
    ('New York Jets', 'East Rutherford', 'New Jersey', 1960, 'Hunter Green', 'White', 1, '125740', 'ffffff', NULL, 'AFC', 'AFC East'),
    ('Pittsburgh Steelers', 'Pittsburgh', 'Pennsylvania', 1933, 'Black', 'Gold', 6, '000000', 'ffb612', NULL, 'AFC', 'AFC North'),
    ('San Francisco 49ers', 'Santa Clara', 'California', 1946, 'Cardinal Red', 'Gold', 5, 'aa0000', 'ffb612', NULL, 'NFC', 'NFC West'),
    ('Seattle Seahawks', 'Seattle', 'Washington', 1976, 'College Navy', 'Action Green', 1, '002244', '7ac142', NULL, 'NFC', 'NFC West'),
    ('Tampa Bay Buccaneers', 'Tampa', 'Florida', 1976, 'Buccaneer Red', 'Pewter', 2, 'd50a0a', '34302b', NULL, 'NFC', 'NFC South'),
    ('Tennessee Titans', 'Nashville', 'Tennessee', 1960, 'Navy', 'Titan Blue', 0, '002244', '648fcc', NULL, 'AFC', 'AFC South'),
    ('Washington Football Team', 'Landover', 'Maryland', 1932, 'Burgundy', 'Gold', 3, '773141', 'ffb612', NULL, 'NFC', 'NFC East');

    
INSERT INTO rosters2019 
    (first_name, last_name, age, college, position, nfl_experience, annual_salary, team, season_year)
VALUES
    -- 2019 Arizona Cardinals -------------------------------------------------------------------------
    ('Zach', 'Allen', 22, 'Boston Col.', 'DE', 1, 495000.00, 'Arizona Cardinals', 2019),
    ('Dan', 'Arnold', 24, 'Wisconsin–Platteville', 'WR', 1, 240000.00, 'Arizona Cardinals', 2019),
    ('Budda', 'Baker', 23, 'Washington', 'FS', 2, 1085910.00, 'Arizona Cardinals', 2019),
    ('Chris', 'Banjo', 29, 'SMU', 'DB', 6, 1000000.00, 'Arizona Cardinals', 2019),
    ('Keishawn', 'Bierria', 24, 'Washington', 'LB', 1, 0.00, 'Arizona Cardinals', 2019),
    ('Aaron', 'Brewer', 29, 'San Diego St.', 'LS', 7, 930000.00, 'Arizona Cardinals', 2019),
    ('Tramaine', 'Brock', 31, 'Mississippi Gulf Coast CC,Minnesota,Belhaven', 'RCB', 9, 1000000.00, 'Arizona Cardinals', 2019),
    ('Miles', 'Brown', 22, 'Wofford', 'DT', 0, 495000.00, 'Arizona Cardinals', 2019),
    ('Jonathan', 'Bullard', 26, 'Florida', 'LDE', 3, 0.00, 'Arizona Cardinals', 2019),
    ('Damiere', 'Byrd', 26, 'South Carolina', 'WR', 3, 720000.00, 'Arizona Cardinals', 2019),
    ('Charles', 'Clay', 30, 'Tulsa', 'TE', 8, 1150000.00, 'Arizona Cardinals', 2019),
    ('Mason', 'Cole', 23, 'Michigan', 'C', 1, 570000.00, 'Arizona Cardinals', 2019),
    ('Pharoh', 'Cooper', 24, 'South Carolina', 'WR', 3, 720000.00, 'Arizona Cardinals', 2019),
    ('Michael', 'Crabtree', 32, 'Texas Tech', 'WR', 10, 0.00, 'Arizona Cardinals', 2019),
    ('Darrell', 'Daniels', 25, 'Washington', 'TE', 2, 645000.00, 'Arizona Cardinals', 2019),
    ('Jalen', 'Davis', 23, 'Utah St.', 'DB', 1, 0.00, 'Arizona Cardinals', 2019),
    ('Michael', 'Dogbe', 23, 'Temple', 'DE', 0, 495000.00, 'Arizona Cardinals', 2019),
    ('Kenyan', 'Drake', 25, 'Alabama', 'RB', 3, 0.00, 'Arizona Cardinals', 2019),
    ('Chase', 'Edmonds', 23, 'Fordham', 'RB', 1, 570000.00, 'Arizona Cardinals', 2019),
    ('Kylie', 'Fitts', 25, 'UCLA,Utah', 'LB', 1, 0.00, 'Arizona Cardinals', 2019),
    ('Larry', 'Fitzgerald', 36, 'Pittsburgh', 'WR', 15, 11000000.00, 'Arizona Cardinals', 2019),
    ('D.J.', 'Foster', 26, 'Arizona St.', 'WR', 3, 645000.00, 'Arizona Cardinals', 2019),
    ('Max', 'Garcia', 28, 'Florida', 'C', 4, 1100000.00, 'Arizona Cardinals', 2019),
    ('Dennis', 'Gardeck', 25, 'Sioux Falls', 'LB', 1, 570000.00, 'Arizona Cardinals', 2019),
    ('Zane', 'Gonzalez', 24, 'Arizona St.', 'K', 2, 645000.00, 'Arizona Cardinals', 2019),
    ('Rodney', 'Gunter', 27, 'Delaware St.', 'RDE', 5, 1000000.00, 'Arizona Cardinals', 2019),
    ('Jordan', 'Hicks', 27, 'Texas', 'RILB', 7, 2000000.00, 'Arizona Cardinals', 2019),
    ('D.J.', 'Humphries', 26, 'Florida', 'LT', 8, 9625000.00, 'Arizona Cardinals', 2019),
    ('Brett', 'Hundley', 26, 'UCLA', 'QB', 3, 1125000.00, 'Arizona Cardinals', 2019),
    ('Andy', 'Isabella', 23, 'Massachusetts', 'WR', 2, 495000.00, 'Arizona Cardinals', 2019),
    ('David', 'Johnson', 28, 'Northern Iowa', 'RB', 5, 5700000.00, 'Arizona Cardinals', 2019),
    ('KeeSean', 'Johnson', 23, 'Fresno St.', 'WR', 2, 495000.00, 'Arizona Cardinals', 2019),
    ('Chandler', 'Jones', 29, 'Syracuse', 'LOLB', 12, 16500000.00, 'Arizona Cardinals', 2019),
    ('Chris', 'Jones', 24, 'Nebraska', 'DB', 1, 570000.00, 'Arizona Cardinals', 2019),
    ('Zach', 'Kerr', 29, 'Delaware', 'DT', 2, 0.00, 'Arizona Cardinals', 2019),
    ('Christian', 'Kirk', 23, 'Texas A&M', 'WR', 1, 747948.00, 'Arizona Cardinals', 2019),
    ('Andy', 'Lee', 37, 'Pittsburgh', 'P', 15, 2000000.00, 'Arizona Cardinals', 2019),
    ('Cassius', 'Marsh', 27, 'UCLA', 'DE', 5, 0.00, 'Arizona Cardinals', 2019),
    ('Clinton', 'McDonald', 32, 'Memphis', 'DT', 9, 1000000.00, 'Arizona Cardinals', 2019),
    ('Joshua', 'Miles', 23, 'Morgan St.', 'T', 1, 495000.00, 'Arizona Cardinals', 2019),
    ('Jordan', 'Mills', 29, 'Louisiana Tech', 'T', 1, 0.00, 'Arizona Cardinals', 2019),
    ('Alfred', 'Morris', 31, 'Florida Atlantic', 'RB', 7, 0.00, 'Arizona Cardinals', 2019),
    ('Byron', 'Murphy', 21, 'Washington', 'LCB', 5, 495000.00, 'Arizona Cardinals', 2019),
    ('Justin', 'Murray', 26, 'Cincinnati', 'RT', 6, 0.00, 'Arizona Cardinals', 2019),
    ('Kyler', 'Murray', 22, 'Texas A&M,Oklahoma', 'QB', 14, 495000.00, 'Arizona Cardinals', 2019),
    ('Corey', 'Peters', 31, 'Kentucky', 'NT', 6, 3250000.00, 'Arizona Cardinals', 2019),
    ('Kevin', 'Peterson', 25, 'Oklahoma St.', 'DB', 1, 0.00, 'Arizona Cardinals', 2019),
    ('Patrick', 'Peterson', 29, 'LSU', 'RCB', 3, 11000000.00, 'Arizona Cardinals', 2019),
    ('Justin', 'Pugh', 29, 'Syracuse', 'LG', 8, 5000000.00, 'Arizona Cardinals', 2019),
    ('Haason', 'Reddick', 25, 'Temple', 'LILB', 3, 1690270.00, 'Arizona Cardinals', 2019),
    ('Brooks', 'Reed', 32, 'Arizona', 'LB', 1, 1125000.00, 'Arizona Cardinals', 2019),
    ('Caraun', 'Reid', 28, 'Princeton', 'DT', 1, 0.00, 'Arizona Cardinals', 2019),
    ('Pete', 'Robertson', 27, 'Texas Tech', 'LB', 0, 570000.00, 'Arizona Cardinals', 2019),
    ('Trent', 'Sherfield', 23, 'Vanderbilt', 'WR', 1, 570000.00, 'Arizona Cardinals', 2019),
    ('A.Q.', 'Shipley', 33, 'Penn St.', 'C', 8, 805000.00, 'Arizona Cardinals', 2019),
    ('Terrell', 'Suggs', 37, 'Arizona St.', 'ROLB', 5, 3000000.00, 'Arizona Cardinals', 2019),
    ('D.J.', 'Swearinger', 28, 'South Carolina', 'DB', 1, 4250000.00, 'Arizona Cardinals', 2019),
    ('J.R.', 'Sweezy', 30, 'North Carolina St.', 'RG', 8, 1500000.00, 'Arizona Cardinals', 2019),
    ('Deionte', 'Thompson', 22, 'Alabama', 'DB', 1, 495000.00, 'Arizona Cardinals', 2019),
    ('Jalen', 'Thompson', 21, 'Washington St.', 'SS', 3, 495000.00, 'Arizona Cardinals', 2019),
    ('Zeke', 'Turner', 23, 'Washington', 'DB', 1, 570000.00, 'Arizona Cardinals', 2019),
    ('Tanner', 'Vallejo', 25, 'Boise St.', 'LB', 2, 645000.00, 'Arizona Cardinals', 2019),
    ('Joe', 'Walker', 27, 'Oregon', 'LILB', 4, 645000.00, 'Arizona Cardinals', 2019),
    ('Charles', 'Washington', 26, 'Fresno St.', 'DB', 1, 100000.00, 'Arizona Cardinals', 2019),
    ('Maxx', 'Williams', 25, 'Minnesota', 'TE', 2, 805000.00, 'Arizona Cardinals', 2019),
    ('Trevor', 'Williams', 26, 'Penn St.', 'DB', 3, 100000.00, 'Arizona Cardinals', 2019),
    ('Ramik', 'Wilson', 27, 'Georgia', 'LB', 4, 1125000.00, 'Arizona Cardinals', 2019),
    ('Ryan', 'Winslow', 25, 'Pittsburgh', 'P', 0, 0.00, 'Arizona Cardinals', 2019),
    ('Zach', 'Zenner', 28, 'South Dakota St.', 'RB', 4, 0.00, 'Arizona Cardinals', 2019),
    -- 2019 New York Giants -------------------------------------------------------------------------
    ('Javorius', 'Allen', 28, 'USC', 'RB', 10, 0.00, 'New York Giants', 2019),
    ('Deandre', 'Baker', 22, 'Georgia', 'LCB', 16, 495000.00, 'New York Giants', 2019),
    ('Corey', 'Ballentine', 23, 'Washburn', 'DB', 13, 495000.00, 'New York Giants', 2019),
    ('Saquon', 'Barkley', 22, 'Penn St.', 'RB', 13, 1897943.00, 'New York Giants', 2019),
    ('Sam', 'Beal', 23, 'Western Michigan', 'DB', 6, 665559.00, 'New York Giants', 2019),
    ('Antoine', 'Bethea', 35, 'Howard', 'FS', 16, 1725000.00, 'New York Giants', 2019),
    ('Evan', 'Brown', 23, 'SMU', 'C', 1, 570000.00, 'New York Giants', 2019),
    ('Deone', 'Bucannon', 27, 'Washington St.', 'LB', 9, 0.00, 'New York Giants', 2019),
    ('Lorenzo', 'Carter', 24, 'Georgia', 'ROLB', 15, 665613.00, 'New York Giants', 2019),
    ('Sean', 'Chandler', 23, 'Temple', 'DB', 13, 570000.00, 'New York Giants', 2019),
    ('Ryan', 'Connelly', 24, 'Wisconsin', 'LB', 4, 495000.00, 'New York Giants', 2019),
    ('Cody', 'Core', 25, 'Mississippi', 'WR', 16, 0.00, 'New York Giants', 2019),
    ('Tae', 'Davis', 23, 'Chattanooga', 'LB', 4, 570000.00, 'New York Giants', 2019),
    ('Zak', 'DeOssie', 35, 'Brown', 'LS', 11, 1030000.00, 'New York Giants', 2019),
    ('Garrett', 'Dickerson', 24, 'Northwestern', 'TE', 4, 570000.00, 'New York Giants', 2019),
    ('Riley', 'Dixon', 26, 'Syracuse', 'P', 16, 720000.00, 'New York Giants', 2019),
    ('Devante', 'Downs', 24, 'California', 'LB', 7, 0.00, 'New York Giants', 2019),
    ('Rhett', 'Ellison', 31, 'USC', 'FB', 10, 4475000.00, 'New York Giants', 2019),
    ('Evan', 'Engram', 25, 'Mississippi', 'TE', 8, 1439391.00, 'New York Giants', 2019),
    ('Bennie', 'Fowler', 28, 'Michigan St.', 'WR', 8, 805000.00, 'New York Giants', 2019),
    ('Wayne', 'Gallman', 25, 'Clemson', 'RB', 10, 645000.00, 'New York Giants', 2019),
    ('Nick', 'Gates', 24, 'Nebraska', 'G', 16, 495000.00, 'New York Giants', 2019),
    ('Rashaan', 'Gaulden', 24, 'Tennessee', 'DB', 1, 0.00, 'New York Giants', 2019),
    ('Markus', 'Golden', 28, 'Missouri', 'LOLB', 16, 975000.00, 'New York Giants', 2019),
    ('Jon', 'Halapio', 28, 'Florida', 'C', 15, 645000.00, 'New York Giants', 2019),
    ('Grant', 'Haley', 23, 'Penn St.', 'DB', 15, 570000.00, 'New York Giants', 2019),
    ('Antonio', 'Hamilton', 26, 'South Carolina St.', 'DB', 16, 0.00, 'New York Giants', 2019),
    ('Will', 'Hernandez', 24, 'Texas-El Paso', 'LG', 16, 818670.00, 'New York Giants', 2019),
    ('B.J.', 'Hill', 24, 'North Carolina St.', 'LDE', 16, 664345.00, 'New York Giants', 2019),
    ('Jon', 'Hilliman', 24, 'Rutgers', 'RB', 3, 0.00, 'New York Giants', 2019),
    ('Colin', 'Holba', 25, 'Louisville', 'LS', 5, 0.00, 'New York Giants', 2019),
    ('Jackrabbit', 'Jenkins', 31, 'North Alabama,Florida', 'RCB', 13, 10150000.00, 'New York Giants', 2019),
    ('Daniel', 'Jones', 22, 'Duke', 'QB', 13, 495000.00, 'New York Giants', 2019),
    ('T.J.', 'Jones', 27, 'Notre Dame', 'WR', 3, 805000.00, 'New York Giants', 2019),
    ('Cody', 'Latimer', 27, 'Indiana', 'WR', 15, 925000.00, 'New York Giants', 2019),
    ('Dexter', 'Lawrence', 22, 'Clemson', 'RDE', 16, 495000.00, 'New York Giants', 2019),
    ('Julian', 'Love', 21, 'Notre Dame', 'SS', 15, 495000.00, 'New York Giants', 2019),
    ('Eli', 'Manning', 38, 'Mississippi', 'QB', 4, 11500000.00, 'New York Giants', 2019),
    ('Kareem', 'Martin', 27, 'North Carolina', 'DE', 5, 3250000.00, 'New York Giants', 2019),
    ('David', 'Mayo', 26, 'Texas St.', 'RILB', 16, 0.00, 'New York Giants', 2019),
    ('R.J.', 'McIntosh', 23, 'Miami (FL)', 'DT', 12, 570000.00, 'New York Giants', 2019),
    ('Alec', 'Ogletree', 28, 'Georgia', 'LILB', 13, 4000000.00, 'New York Giants', 2019),
    ('Chris', 'Peace', 23, 'Virginia', 'LB', 4, 0.00, 'New York Giants', 2019),
    ('Elijhaa', 'Penny', 26, 'Cerritos (CA),Idaho', 'RB', 16, 645000.00, 'New York Giants', 2019),
    ('Jabrill', 'Peppers', 24, 'Michigan', 'SS', 11, 1405181.00, 'New York Giants', 2019),
    ('Olsen', 'Pierre', 28, 'Miami (FL)', 'DE', 9, 825000.00, 'New York Giants', 2019),
    ('Spencer', 'Pulley', 26, 'Vanderbilt', 'C', 4, 975000.00, 'New York Giants', 2019),
    ('Mike', 'Remmers', 30, 'Oregon St.', 'RT', 14, 1125000.00, 'New York Giants', 2019),
    ('Aldrick', 'Rosas', 25, 'Southern Oregon', 'K', 16, 645000.00, 'New York Giants', 2019),
    ('DaMari', 'Scott', 24, 'Fresno St.', 'WR', 5, 570000.00, 'New York Giants', 2019),
    ('Russell', 'Shepard', 29, 'LSU', 'WR', 3, 975000.00, 'New York Giants', 2019),
    ('Sterling', 'Shepard', 26, 'Oklahoma', 'WR', 10, 1260623.00, 'New York Giants', 2019),
    ('Scott', 'Simonson', 27, 'Assumption', 'TE', 5, 805000.00, 'New York Giants', 2019),
    ('Tuzar', 'Skipper', 24, 'Toledo', 'LB', 6, 0.00, 'New York Giants', 2019),
    ('Darius', 'Slayton', 22, 'Auburn', 'WR', 14, 495000.00, 'New York Giants', 2019),
    ('Eric', 'Smith', 24, 'Virginia', 'T', 2, 0.00, 'New York Giants', 2019),
    ('Kaden', 'Smith', 22, 'Stanford', 'TE', 9, 0.00, 'New York Giants', 2019),
    ('Nate', 'Solder', 31, 'Colorado', 'LT', 16, 12900000.00, 'New York Giants', 2019),
    ('Nathan', 'Stupar', 31, 'Penn St.', 'LB', 3, 805000.00, 'New York Giants', 2019),
    ('Alex', 'Tanney', 32, 'Monmouth (IL)', 'QB', 1, 775000.00, 'New York Giants', 2019),
    ('Golden', 'Tate', 31, 'Notre Dame', 'WR', 11, 1975000.00, 'New York Giants', 2019),
    ('Josiah', 'Tauaefa', 22, 'Texas-San Antonio', 'LB', 12, 0.00, 'New York Giants', 2019),
    ('Michael', 'Thomas', 29, 'Stanford', 'DB', 16, 1900000.00, 'New York Giants', 2019),
    ('Dalvin', 'Tomlinson', 25, 'Alabama', 'NT', 16, 880646.00, 'New York Giants', 2019),
    ('Eric', 'Tomlinson', 27, 'Texas-El Paso', 'TE', 3, 0.00, 'New York Giants', 2019),
    ('Austin', 'Walter', 23, 'Rice', 'RB', 1, 0.00, 'New York Giants', 2019),
    ('Leonard', 'Williams', 25, 'USC', 'LDE', 8, 0.00, 'New York Giants', 2019),
    ('Oshane', 'Ximines', 23, 'Old Dominion', 'DE', 16, 495000.00, 'New York Giants', 2019),
    ('Kevin', 'Zeitler', 29, 'Wisconsin', 'RG', 15, 10000000.00, 'New York Giants', 2019),
    -- 2019 Dallas Cowboys -------------------------------------------------------------------------
    ('Dorance', 'Armstrong Jr.', 22, 'Kansas', 'DE', 1, 570000.00, 'Dallas Cowboys', 2019),
    ('Ray-Ray', 'Armstrong', 28, 'Miami (FL)', 'DB', 6, 0.00, 'Dallas Cowboys', 2019),
    ('Tavon', 'Austin', 29, 'West Virginia', 'WR', 6, 1000000.00, 'Dallas Cowboys', 2019),
    ('Chidobe', 'Awuzie', 24, 'Colorado', 'LCB', 2, 854417.00, 'Dallas Cowboys', 2019),
    ('Michael', 'Bennett', 34, 'Texas A&M', 'DE', 2, 0.00, 'Dallas Cowboys', 2019),
    ('Anthony', 'Brown', 26, 'Purdue', 'DB', 3, 2025000.00, 'Dallas Cowboys', 2019),
    ('Ventell', 'Bryant', 23, 'Temple', 'WR', 1, 495000.00, 'Dallas Cowboys', 2019),
    ('Deante', 'Burton', 25, 'Kansas St.', 'WR', 1, 570000.00, 'Dallas Cowboys', 2019),
    ('Jordan', 'Chunn', 24, 'Troy', 'RB', 0, 0.00, 'Dallas Cowboys', 2019),
    ('Randall', 'Cobb', 29, 'Kentucky', 'WR', 8, 0.00, 'Dallas Cowboys', 2019),
    ('La''el', 'Collins', 26, 'LSU', 'RT', 4, 6516750.00, 'Dallas Cowboys', 2019),
    ('Maliek', 'Collins', 24, 'Nebraska', 'LDT', 3, 2025000.00, 'Dallas Cowboys', 2019),
    ('Amari', 'Cooper', 25, 'Alabama', 'WR', 4, 13924000.00, 'Dallas Cowboys', 2019),
    ('Chris', 'Covington', 23, 'Indiana', 'LB', 1, 570000.00, 'Dallas Cowboys', 2019),
    ('Christian', 'Covington', 26, 'Rice', 'RDT', 4, 1000000.00, 'Dallas Cowboys', 2019),
    ('Tyrone', 'Crawford', 30, 'Boise St.', 'DE', 7, 7000000.00, 'Dallas Cowboys', 2019),
    ('Ezekiel', 'Elliott', 24, 'Ohio St.', 'RB', 3, 3853137.00, 'Dallas Cowboys', 2019),
    ('Cameron', 'Fleming', 27, 'Stanford', 'T', 3, 1000000.00, 'Dallas Cowboys', 2019),
    ('Kai', 'Forbath', 32, 'UCLA', 'K', 2, 0.00, 'Dallas Cowboys', 2019),
    ('Kavon', 'Frazier', 25, 'Central Michigan', 'DB', 3, 720000.00, 'Dallas Cowboys', 2019),
    ('Travis', 'Frederick', 28, 'Wisconsin', 'C', 6, 6000000.00, 'Dallas Cowboys', 2019),
    ('Michael', 'Gallup', 23, 'Colorado St.', 'WR', 2, 629000.00, 'Dallas Cowboys', 2019),
    ('Luke', 'Gifford', 24, 'Nebraska', 'LB', 0, 0.00, 'Dallas Cowboys', 2019),
    ('C.J.', 'Goodwin', 29, 'California (PA)', 'DB', 1, 720000.00, 'Dallas Cowboys', 2019),
    ('Jeff', 'Heath', 28, 'Saginaw Valley St.', 'SS', 5, 2000000.00, 'Dallas Cowboys', 2019),
    ('Trysten', 'Hill', 21, 'Central Florida', 'DT', 1, 495000.00, 'Dallas Cowboys', 2019),
    ('Kerry', 'Hyder', 28, 'Texas Tech', 'DE', 2, 700000.00, 'Dallas Cowboys', 2019),
    ('Joe', 'Jackson', 23, 'Miami (FL)', 'DE', 0, 0.00, 'Dallas Cowboys', 2019),
    ('Blake', 'Jarwin', 25, 'Oklahoma St.', 'TE', 2, 645000.00, 'Dallas Cowboys', 2019),
    ('Byron', 'Jones', 27, 'Connecticut', 'RCB', 5, 6266000.00, 'Dallas Cowboys', 2019),
    ('Chris', 'Jones', 30, 'Carson-Newman', 'P', 1, 1800000.00, 'Dallas Cowboys', 2019),
    ('Josh', 'Jones', 25, 'North Carolina St.', 'DB', 2, 0.00, 'Dallas Cowboys', 2019),
    ('Brandon', 'Knight', 22, 'Indiana', 'T', 1, 495000.00, 'Dallas Cowboys', 2019),
    ('L.P.', 'Ladouceur', 38, 'California', 'LS', 14, 1030000.00, 'Dallas Cowboys', 2019),
    ('DeMarcus', 'Lawrence', 27, 'Butler (KS), Boise St.', 'LDE', 9, 1500000.00, 'Dallas Cowboys', 2019),
    ('Sean', 'Lee', 33, 'Penn St.', 'LLB', 7, 2000000.00, 'Dallas Cowboys', 2019),
    ('Jourdan', 'Lewis', 24, 'Michigan', 'DB', 4, 675000.00, 'Dallas Cowboys', 2019),
    ('Joe', 'Looney', 29, 'Wake Forest', 'G', 2, 1000000.00, 'Dallas Cowboys', 2019),
    ('Brett', 'Maher', 30, 'Nebraska', 'K', 1, 570000.00, 'Dallas Cowboys', 2019),
    ('Justin', 'March', 26, 'Akron', 'LB', 1, 720000.00, 'Dallas Cowboys', 2019),
    ('Zack', 'Martin', 29, 'Notre Dame', 'RG', 5, 10000000.00, 'Dallas Cowboys', 2019),
    ('Jamize', 'Olawale', 30, 'North Texas', 'FB', 0, 0.00, 'Dallas Cowboys', 2019),
    ('Donovan', 'Olumba', 24, 'Portland St.', 'RB', 0, 0.00, 'Dallas Cowboys', 2019),
    ('Tony', 'Pollard', 22, 'Memphis', 'RB', 3, 495000.00, 'Dallas Cowboys', 2019),
    ('Dak', 'Prescott', 26, 'Mississippi St.', 'QB', 3, 2025000.00, 'Dallas Cowboys', 2019),
    ('Robert', 'Quinn', 29, 'North Carolina', 'RDE', 8, 6000000.00, 'Dallas Cowboys', 2019),
    ('Cooper', 'Rush', 26, 'Central Michigan', 'QB', 2, 645000.00, 'Dallas Cowboys', 2019),
    ('Dalton', 'Schultz', 23, 'Stanford', 'TE', 1, 570000.00, 'Dallas Cowboys', 2019),
    ('Devin', 'Smith', 27, 'Ohio St.', 'WR', 1, 645000.00, 'Dallas Cowboys', 2019),
    ('Jaylon', 'Smith', 24, 'Notre Dame', 'MLB', 2, 1335678.00, 'Dallas Cowboys', 2019),
    ('Malcolm', 'Smith', 30, 'USC', 'LB', 1, 0.00, 'Dallas Cowboys', 2019),
    ('Tyron', 'Smith', 29, 'USC', 'LT', 9, 10000000.00, 'Dallas Cowboys', 2019),
    ('Xavier', 'Su''a-Filo', 28, 'UCLA', 'G', 3, 805000.00, 'Dallas Cowboys', 2019),
    ('Joe', 'Thomas', 28, 'South Carolina St.', 'LB', 2, 1750000.00, 'Dallas Cowboys', 2019),
    ('Darian', 'Thompson', 26, 'Boise St.', 'DB', 2, 720000.00, 'Dallas Cowboys', 2019),
    ('Leighton', 'Vander Esch', 23, 'Boise St.', 'RLB', 1, 1018535.00, 'Dallas Cowboys', 2019),
    ('Connor', 'Williams', 22, 'Texas', 'LG', 1, 729500.00, 'Dallas Cowboys', 2019),
    ('Cedrick', 'Wilson Jr.', 24, 'Boise St.', 'WR', 0, 495000.00, 'Dallas Cowboys', 2019),
    ('Donovan', 'Wilson', 24, 'Texas A&M', 'DB', 1, 495000.00, 'Dallas Cowboys', 2019),
    ('Jason', 'Witten', 37, 'Tennessee', 'TE', 16, 2000000.00, 'Dallas Cowboys', 2019),
    ('Antwaun', 'Woods', 26, 'USC', 'RDT', 5, 570000.00, 'Dallas Cowboys', 2019),
    ('Xavier', 'Woods', 24, 'Louisiana Tech', 'FS', 6, 645000.00, 'Dallas Cowboys', 2019),
    -- 2019 Houston Texans -------------------------------------------------------------------------
    ('Jerell', 'Adams', 27, 'South Carolina', 'TE', 1, 645000.00, 'Houston Texans', 2019),
    ('Mike', 'Adams', 38, 'Delaware', 'DB', 15, 2050000.00, 'Houston Texans', 2019),
    ('Tyrell', 'Adams', 27, 'West Georgia', 'LB', 3, 720000.00, 'Houston Texans', 2019),
    ('Jahleel', 'Addae', 29, 'Central Michigan', 'DB', 6, 805000.00, 'Houston Texans', 2019),
    ('Jordan', 'Akins', 27, 'Central Florida', 'TE', 4, 600000.00, 'Houston Texans', 2019),
    ('Bryan', 'Anger', 31, 'California', 'P', 7, 930000.00, 'Houston Texans', 2019),
    ('Cornell', 'Armstrong', 24, 'Southern Miss', 'DB', 1, 570000.00, 'Houston Texans', 2019),
    ('Angelo', 'Blackson', 27, 'Auburn', 'RDE', 6, 2000000.00, 'Houston Texans', 2019),
    ('Briean', 'Boddy-Calhoun', 26, 'Minnesota', 'DB', 3, 720000.00, 'Houston Texans', 2019),
    ('DeAndre', 'Carter', 26, 'Sacramento St.', 'WR', 2, 570000.00, 'Houston Texans', 2019),
    ('Chris', 'Clark', 34, 'Southern Miss', 'RT', 4, 3050000.00, 'Houston Texans', 2019),
    ('Dylan', 'Cole', 25, 'Missouri State', 'LB', 1, 645000.00, 'Houston Texans', 2019),
    ('Aaron', 'Colvin', 28, 'Oklahoma', 'DB', 5, 7500000.00, 'Houston Texans', 2019),
    ('Gareon', 'Conley', 24, 'Ohio St.', 'RCB', 2, 2000000.00, 'Houston Texans', 2019),
    ('Keke', 'Coutee', 22, 'Texas Tech', 'WR', 2, 570000.00, 'Houston Texans', 2019),
    ('Xavier', 'Crawford', 24, 'Central Michigan', 'DB', 0, 495000.00, 'Houston Texans', 2019),
    ('Keion', 'Crossen', 23, 'Western Carolina', 'DB', 1, 570000.00, 'Houston Texans', 2019),
    ('Zach', 'Cunningham', 25, 'Vanderbilt', 'RILB', 8, 871522.00, 'Houston Texans', 2019),
    ('Trevor', 'Daniel', 25, 'Tennessee', 'P', 0, 570000.00, 'Houston Texans', 2019),
    ('Brandon', 'Dunn', 27, 'Louisville', 'LDE', 3, 2025000.00, 'Houston Texans', 2019),
    ('Ka''imi', 'Fairbairn', 25, 'UCLA', 'K', 3, 3095000.00, 'Houston Texans', 2019),
    ('Darren', 'Fells', 33, 'UC Irvine', 'TE', 3, 900000.00, 'Houston Texans', 2019),
    ('Will', 'Fuller', 25, 'Notre Dame', 'WR', 6, 1836043.00, 'Houston Texans', 2019),
    ('Zach', 'Fulton', 28, 'Tennessee', 'RG', 8, 6500000.00, 'Houston Texans', 2019),
    ('Phillip', 'Gaines', 28, 'Rice', 'DB', 1, 570000.00, 'Houston Texans', 2019),
    ('Cullen', 'Gillaspia', 24, 'Texas A&M', 'RB', 0, 495000.00, 'Houston Texans', 2019),
    ('Tashaun', 'Gipson', 29, 'Wyoming', 'SS', 5, 2500000.00, 'Houston Texans', 2019),
    ('Vernon', 'Hargreaves III', 24, 'Florida', 'DB', 1, 2000000.00, 'Houston Texans', 2019),
    ('Joel', 'Heath', 26, 'Michigan St.', 'DT', 0, 720000.00, 'Houston Texans', 2019),
    ('Seantrel', 'Henderson', 27, 'Miami (FL)', 'T', 1, 1500000.00, 'Houston Texans', 2019),
    ('DeAndre', 'Hopkins', 27, 'Clemson', 'WR', 6, 12500000.00, 'Houston Texans', 2019),
    ('Tytus', 'Howard', 23, 'Alabama St.', 'RT', 4, 495000.00, 'Houston Texans', 2019),
    ('Buddy', 'Howell', 23, 'Florida Atlantic', 'RB', 0, 570000.00, 'Houston Texans', 2019),
    ('Carlos', 'Hyde', 29, 'Ohio St.', 'RB', 8, 870000.00, 'Houston Texans', 2019),
    ('Duke', 'Johnson', 26, 'Miami (FL)', 'RB', 4, 1800000.00, 'Houston Texans', 2019),
    ('Lonnie', 'Johnson Jr.', 24, 'Garden City (KS),Kentucky', 'DB', 3, 495000.00, 'Houston Texans', 2019),
    ('Roderick', 'Johnson', 24, 'Florida St.', 'T', 3, 570000.00, 'Houston Texans', 2019),
    ('Taiwan', 'Jones', 31, 'East. Washington', 'RB', 8, 930000.00, 'Houston Texans', 2019),
    ('Johnathan', 'Joseph', 35, 'South Carolina', 'LCB', 13, 2900000.00, 'Houston Texans', 2019),
    ('Peter', 'Kalambayi', 24, 'Stanford', 'LB', 1, 570000.00, 'Houston Texans', 2019),
    ('Senio', 'Kelemete', 29, 'Washington', 'G', 1, 2750000.00, 'Houston Texans', 2019),
    ('Greg', 'Mancz', 27, 'Toledo', 'C', 1, 1500000.00, 'Houston Texans', 2019),
    ('Jacob', 'Martin', 24, 'Temple', 'DE', 1, 570000.00, 'Houston Texans', 2019),
    ('Nick', 'Martin', 26, 'Notre Dame', 'C', 9, 1101133.00, 'Houston Texans', 2019),
    ('A.J.', 'McCarron', 29, 'Alabama', 'QB', 1, 1500000.00, 'Houston Texans', 2019),
    ('Benardrick', 'McKinney', 27, 'Mississippi St.', 'LILB', 6, 6000000.00, 'Houston Texans', 2019),
    ('Whitney', 'Mercilus', 29, 'Illinois', 'LOLB', 7, 5750000.00, 'Houston Texans', 2019),
    ('Barkevious', 'Mingo', 29, 'LSU', 'LB', 1, 1500000.00, 'Houston Texans', 2019),
    ('Steven', 'Mitchell', 25, 'USC', 'WR', 0, 495000.00, 'Houston Texans', 2019),
    ('A.J.', 'Moore', 24, 'Mississippi', 'DB', 1, 570000.00, 'Houston Texans', 2019),
    ('Charles', 'Omenihu', 22, 'Texas', 'DE', 1, 495000.00, 'Houston Texans', 2019),
    ('Jonathan', 'Owens', 24, 'Missouri Western St.', 'DB', 0, 495000.00, 'Houston Texans', 2019),
    ('D.J.', 'Reader', 25, 'Clemson', 'NT', 6, 2025000.00, 'Houston Texans', 2019),
    ('Justin', 'Reid', 22, 'Stanford', 'FS', 5, 664979.00, 'Houston Texans', 2019),
    ('Bradley', 'Roby', 27, 'Ohio St.', 'RCB', 4, 5000000.00, 'Houston Texans', 2019),
    ('Brennan', 'Scarlett', 26, 'California,Stanford', 'ROLB', 5, 2025000.00, 'Houston Texans', 2019),
    ('Max', 'Scharping', 23, 'Northern Illinois', 'LG', 8, 495000.00, 'Houston Texans', 2019),
    ('Dan', 'Skipper', 25, 'Arkansas', 'T', 0, 495000.00, 'Houston Texans', 2019),
    ('Kenny', 'Stills', 27, 'Oklahoma', 'WR', 5, 7975000.00, 'Houston Texans', 2019),
    ('Jordan', 'Thomas', 23, 'Mississippi St.', 'TE', 0, 570000.00, 'Houston Texans', 2019),
    ('Laremy', 'Tunsil', 25, 'Mississippi', 'LT', 3, 2148770.00, 'Houston Texans', 2019),
    ('Eddie', 'Vanderdoes', 25, 'UCLA', 'DT', 0, 3150000.00, 'Houston Texans', 2019),
    ('Carlos', 'Watkins', 26, 'Clemson', 'DT', 2, 645000.00, 'Houston Texans', 2019),
    ('Deshaun', 'Watson', 24, 'Clemson', 'QB', 2, 1724480.00, 'Houston Texans', 2019),
    ('J.J.', 'Watt', 30, 'Central Michigan,Wisconsin', 'LDE', 4, 13000000.00, 'Houston Texans', 2019),
    ('Jon', 'Weeks', 33, 'Baylor', 'LS', 1, 930000.00, 'Houston Texans', 2019);


-- Establishing Foreign Key Relationship
ALTER TABLE teams
ADD INDEX idx_team (team);

ALTER TABLE rosters2019
ADD FOREIGN KEY (team) REFERENCES teams(team);
