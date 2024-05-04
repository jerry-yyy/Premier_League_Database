USE premier_league;

CREATE TABLE player_positions (
    player_id INT,
    position_id CHAR(3),
    PRIMARY KEY (player_id, position_id),
    FOREIGN KEY (player_id) REFERENCES players(id),
    FOREIGN KEY (position_id) REFERENCES positions(position_id)
);

-- Inserting Values
INSERT INTO player_positions (player_id, position_id) VALUES
(1, 'MF'),
(1, 'FW'),
(2, 'MF'),
(2, 'FW'),
(3, 'GK'),
(4, 'MF'),
(5, 'MF'),
(6, 'MF'),
(7, 'FW'),
(8, 'FW'),
(9, 'FW'),
(9, 'MF'),
(10, 'GK'),
(11, 'FW'),
(11, 'MF'),
(12, 'FW'),
(13, 'GK'),
(14, 'DF'),
(14, 'MF');
