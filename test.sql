SELECT * FROM levelupapi_gametype;

SELECT * FROM auth_user;
SELECT * FROM authtoken_token;
SELECT * FROM levelupapi_gamer;



SELECT *, levelupapi_gamer.id, auth_user.first_name,auth_user.last_name
FROM  levelupapi_game
JOIN levelupapi_gamer ON levelupapi_gamer.id = levelupapi_game.gamer_id
JOIN auth_user ON auth_user.id = levelupapi_gamer.user_id

SELECT 
    g.id,
    g.title,
    g.maker,
    g.number_of_players,
    g.skill_level,
    g.game_type_id,
    u.id AS gamer_id,
    u.first_name,
    u.last_name

FROM  levelupapi_game AS g
JOIN levelupapi_gamer AS ga ON g.gamer_id = ga.id
JOIN auth_user AS u ON u.id = ga.user_id