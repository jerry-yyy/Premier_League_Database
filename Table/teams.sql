USE premier_league;

CREATE TABLE teams (
    team_id VARCHAR(255) PRIMARY KEY,
    team_name VARCHAR(255) NOT NULL,
    `rank` INT,
    stadium_id INT,
    FOREIGN KEY (stadium_id) REFERENCES stadiums(stadium_id)
);

-- Inserting Values
INSERT INTO teams (team_id, team_name, `rank`, stadium_id) VALUES
('MUN', 'Manchester United', 3, 1),
('TOT', 'Tottenham Hotspur', 8, 2),
('ARS', 'Arsenal', 2, 5),
('MCI', 'Manchester City', 1, 6),
('CHE', 'Chelsea', 12, 9),
('WHU', 'West Ham United', 14, 3),
('LIV', 'Liverpool', 5, 4),
('AVA', 'Aston Villa', 7, 8),
('BRH', 'Brighton & Hove Albion', 6, 12),
('EVE', 'Everton', 17, 10),
('WLV', 'Wolverhampton Wanderers', 13, 11),
('NEW', 'Newcastle United', 4, 7),
('FUL', 'Fulham', 10, 14),
('CRY', 'Crystal Palace', 11, 13);
