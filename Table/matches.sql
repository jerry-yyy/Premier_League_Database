USE premier_league;

CREATE TABLE matches (
    match_id INT PRIMARY KEY AUTO_INCREMENT,
    date DATE,
    home_team_id VARCHAR(255),
    away_team_id VARCHAR(255),
    referee_id INT,
    stadium_id INT,
    result VARCHAR(5),
    FOREIGN KEY (home_team_id) REFERENCES teams(team_id),
    FOREIGN KEY (away_team_id) REFERENCES teams(team_id),
    FOREIGN KEY (referee_id) REFERENCES referees(referee_id),
    FOREIGN KEY (stadium_id) REFERENCES stadiums(stadium_id)
);

-- Inserting Values
INSERT INTO matches (date, home_team_id, away_team_id, referee_id, stadium_id, result) VALUES
('2022-08-05', 'CRY', 'ARS', 1, 13, '0:2'),
('2022-08-13', 'AVA', 'EVE', 2, 8, '2:1'),
('2022-08-20', 'TOT', 'WLV', 3, 2, '1:0'),
('2022-08-27', 'MCI', 'CRY', 4, 6, '4:2'),
('2022-08-30', 'FUL', 'BRH', 5, 14, '2:1'),
('2022-09-04', 'MUN', 'ARS', 6, 1, '3:1'),
('2022-09-17', 'WLV', 'MCI', 1, 11, '0:3'),
('2022-10-01', 'LIV', 'BRH', 7, 4, '3:3'),
('2022-10-08', 'BRH', 'TOT', 8, 12, '0:1'),
('2022-10-19', 'MUN', 'TOT', 3, 1, '2:0');
