-- Enter the team ID and get the total wins.
USE premier_league

DELIMITER $$

CREATE FUNCTION GetTeamWins(teamId VARCHAR(255)) RETURNS INT DETERMINISTIC
BEGIN
    DECLARE wins INT;
    SELECT COUNT(*) INTO wins FROM matches WHERE home_team_id = teamId AND SUBSTRING_INDEX(result, ':', 1) > SUBSTRING_INDEX(result, ':', -1);
    RETURN wins;
END $$

DELIMITER ;
