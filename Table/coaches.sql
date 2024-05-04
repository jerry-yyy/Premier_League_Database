USE premier_league;

CREATE TABLE coaches (
    coach_id INT PRIMARY KEY AUTO_INCREMENT,
    coach_name VARCHAR(255) NOT NULL,
    team VARCHAR(255),
    nationality_id VARCHAR(3),
    FOREIGN KEY (team) REFERENCES teams(team_id),
    FOREIGN KEY (nationality_id) REFERENCES nationalities(nationality_id)
);

-- Inserting Values
INSERT INTO coaches (coach_name, team, nationality_id) VALUES
('Erik ten Hag', 'MUN', 'NED'),
('Ryan Mason', 'TOT', 'ENG'),
('Mikel Arteta', 'ARS', 'ESP'),
('Pep Guardiola', 'MCI', 'ESP'),
('Mauricio Pochettino', 'CHE', 'ARG'),
('David Moyes', 'WHU', 'ENG'),
('Jürgen Klopp', 'LIV', 'GER'),
('Unai Emery', 'AVA', 'ESP'),
('Roberto De Zerbi', 'BRH', 'ITA'),
('Sean Dyche', 'EVE', 'ENG'),
('Julen Lopetegui', 'WLV', 'ESP'),
('Eddie Howe', 'NEW', 'ENG'),
('Marco Alexandre Saraiva da Silva', 'FUL', 'POR'),
('Roy Hodgson', 'CRY', 'ENG');
