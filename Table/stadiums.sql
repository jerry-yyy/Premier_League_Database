USE premier_league;

CREATE TABLE stadiums (
    stadium_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    capacity INT,
    city VARCHAR(255)
);

-- Value Inserting
INSERT INTO stadiums (name, capacity, city) VALUES
('Old Trafford', 74879, 'Manchester'),
('Tottenham Hotspur Stadium', 62850, 'London'),
('London Stadium', 62500, 'London'),
('Anfield', 60725, 'Liverpool'),
('Emirates Stadium', 60704, 'London'),
('Etihad Stadium', 55017, 'Manchester'),
('St James'' Park', 52338, 'Newcastle upon Tyne'),
('Villa Park', 42682, 'Birmingham'),
('Stamford Bridge', 40853, 'London'),
('Goodison Park', 39571, 'Liverpool'),
('Molineux Stadium', 32050, 'Wolverhampton'),
('AMEX Stadium', 31800, 'Brighton'),
('Selhurst Park', 26047, 'London'),
('Craven Cottage', 25700, 'London');
