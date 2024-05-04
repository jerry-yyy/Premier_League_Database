-- This view displays basic information about the player, including their name, age, nationality, position and team.
USE premier_league;

CREATE VIEW v_player_overview AS
SELECT 
    p.id AS player_id,
    p.name AS player_name,
	p.birthday AS player_birthday,
	n.nationality_name,
    GROUP_CONCAT(pos.position_name ORDER BY pos.position_name SEPARATOR ', ') AS positions,
    t.team_name
FROM players p
JOIN teams t ON p.team = t.team_id
JOIN player_positions pp ON p.id = pp.player_id
JOIN positions pos ON pp.position_id = pos.position_id
JOIN nationalities n ON p.nationality_id = n.nationality_id
GROUP BY p.id, p.name, t.team_name, n.nationality_name;
