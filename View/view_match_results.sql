-- This view provides detailed information about each match, including the date of the match, the teams involved, and the final result.
USE premier_league;

CREATE VIEW v_match_results AS
SELECT 
    m.match_id,
    m.date AS match_date,
    ht.team_name AS home_team,
    at.team_name AS away_team,
    m.result
FROM matches m
JOIN teams ht ON m.home_team_id = ht.team_id
JOIN teams at ON m.away_team_id = at.team_id;
