USE premier_league;

CREATE TABLE matches_participation (
    match_id INT,
    player_id INT,
    goals INT,
    assists INT,
    saves INT,
    yellow_cards INT,
    red_cards INT,
    PRIMARY KEY (match_id, player_id),
    FOREIGN KEY (match_id) REFERENCES matches(match_id),
    FOREIGN KEY (player_id) REFERENCES players(id)
);

-- Inserting Values
INSERT INTO matches_participation (match_id, player_id, goals, assists, saves, yellow_cards, red_cards) VALUES
(1, 3, 0, 0, 2, 0, 0),
(1, 14, 0, 0, 0, 0, 0),
(2, 8, 0, 2, 0, 0, 0),
(2, 10, 0, 0, 1, 0, 0),
(3, 2, 0, 0, 0, 0, 0),
(3, 11, 0, 0, 0, 0, 0),
(4, 14, 0, 0, 0, 0, 0),
(4, 4, 4, 0, 0, 0, 0),
(5, 13, 0, 0, 0, 0, 0),
(5, 9, 0, 0, 0, 0, 0),
(6, 1, 0, 1, 0, 0, 0),
(6, 3, 0, 0, 3, 0, 0),
(7, 4, 0, 2, 0, 0, 0),
(7, 11, 0, 0, 0, 0, 0),
(8, 7, 0, 1, 0, 0, 0),
(8, 9, 0, 0, 0, 0, 0),
(9, 2, 0, 1, 0, 0, 0),
(9, 9, 0, 0, 0, 0, 0),
(10, 1, 1, 0, 0, 0, 0),
(10, 2, 0, 0, 0, 0, 0);
