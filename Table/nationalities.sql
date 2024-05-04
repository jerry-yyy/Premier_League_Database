USE premier_league;

CREATE TABLE nationalities (
    nationality_id VARCHAR(3) PRIMARY KEY,
    nationality_name VARCHAR(255) UNIQUE NOT NULL
);

-- Value Inserting
INSERT INTO nationalities (nationality_id, nationality_name) VALUES
('POR', 'Portugal'),
('KOR', 'South Korea'),
('ESP', 'Spain'),
('BEL', 'Belgium'),
('ARG', 'Argentina'),
('CZE', 'Czech Republic'),
('EGY', 'Egypt'),
('ENG', 'England'),
('JPN', 'Japan'),
('SEN', 'Senegal'),
('BRA', 'Brazil'),
('SWE', 'Sweden'),
('GER', 'Germany'),
('NED', 'Netherlands'),
('ITA', 'Italy');