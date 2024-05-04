USE premier_league;

CREATE TABLE referees (
    referee_id INT PRIMARY KEY AUTO_INCREMENT,
    referee_name VARCHAR(255) NOT NULL,
    nationality_id VARCHAR(3),
    FOREIGN KEY (nationality_id) REFERENCES nationalities(nationality_id)
);

-- Inserting Values
INSERT INTO referees (referee_name, nationality_id) VALUES
('Anthony Taylor', 'ENG'),
('Michael Oliver', 'ENG'),
('Simon Hooper', 'ENG'),
('Darren England', 'ENG'),
('Thomas Bramall', 'ENG'),
('Paul Tierney', 'ENG'),
('Andy Madley', 'ENG'),
('Tony Harrington', 'ENG'),
('John Brooks', 'ENG'),
('Darren Bond', 'ENG');
