USE premier_league;

CREATE TABLE positions (
    position_id CHAR(3) PRIMARY KEY,
    position_name VARCHAR(50) NOT NULL
);

-- Inserting Values
INSERT INTO positions (position_id, position_name) VALUES
('GK', 'Goalkeepers'),
('DF', 'Defenders'),
('MF', 'Midfielders'),
('FW', 'Forwards'),
('FB', 'Fullbacks'),
('LB', 'Left Backs'),
('RB', 'Right Backs'),
('CB', 'Center Backs'),
('DM', 'Defensive Midfielders'),
('CM', 'Central Midfielders'),
('LM', 'Left Midfielders'),
('RM', 'Right Midfielders'),
('WM', 'Wide Midfielders'),
('LW', 'Left Wingers'),
('RW', 'Right Wingers'),
('AM', 'Attacking Midfielders');