-- This procedure can be used to add a new record to the matches_participation table.
USE premier_league

DELIMITER $$

CREATE PROCEDURE AddMatchParticipation(IN match_id INT, IN player_id INT, IN goals_scored INT, IN assists_made INT, IN saves_done INT, IN yellow_cards_given INT, IN red_cards_given INT)
BEGIN
    INSERT INTO matches_participation (match_id, player_id, goals, assists, saves, yellow_cards, red_cards) 
    VALUES (match_id, player_id, goals_scored, assists_made, saves_done, yellow_cards_given, red_cards_given);
END $$

DELIMITER ;
