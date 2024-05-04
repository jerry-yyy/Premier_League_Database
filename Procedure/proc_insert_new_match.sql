-- This procedure is used to create a new match record that accepts the date of the match, home team ID, away team ID, referee ID, stadium ID, and match result.
USE premier_league

DELIMITER $$

CREATE PROCEDURE InsertNewMatch(IN matchDate DATE, IN homeTeam VARCHAR(255), IN awayTeam VARCHAR(255), IN matchReferee INT, IN matchStadium INT, IN matchResult VARCHAR(5))
BEGIN
    INSERT INTO matches(date, home_team_id, away_team_id, referee_id, stadium_id, result)
    VALUES (matchDate, homeTeam, awayTeam, matchReferee, matchStadium, matchResult);
END $$

DELIMITER ;
