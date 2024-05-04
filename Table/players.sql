USE premier_league;

CREATE TABLE players (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    birthday DATE,
    nationality_id VARCHAR(3),
    team VARCHAR(255),
    FOREIGN KEY (nationality_id) REFERENCES nationalities(nationality_id),
    FOREIGN KEY (team) REFERENCES teams(team_id)
);

-- Inserting Values
INSERT INTO players (name, birthday, nationality_id, team) VALUES
('Bruno Fernandes', '1994-09-08', 'POR', 'MUN'),
('Son Heung-min', '1992-07-08', 'KOR', 'TOT'),
('Aaron Ramsdale', '1998-05-14', 'ENG', 'ARS'),
('Kevin De Bruyne', '1991-06-28', 'BEL', 'MCI'),
('Enzo Fernández', '2001-01-17', 'ARG', 'CHE'),
('Tomáš Souček', '1995-02-27', 'CZE', 'WHU'),
('Mohamed Salah', '1992-06-15', 'EGY', 'LIV'),
('Ollie Watkins', '1995-12-30', 'ENG', 'AVA'),
('Kaoru Mitoma', '1997-05-20', 'JPN', 'BRH'),
('Jordan Pickford', '1994-03-07', 'ENG', 'EVE'),
('Hwang Hee-chan', '1996-01-26', 'KOR', 'WLV'),
('Alexander Isak', '1999-09-21', 'SWE', 'NEW'),
('Bernd Leno', '1992-03-04', 'GER', 'FUL'),
('Jaïro Riedewald', '1996-09-09', 'NED', 'CRY');
