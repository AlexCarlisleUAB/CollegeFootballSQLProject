--DATABASE SCHEMA

CREATE TABLE team (id INTEGER, team_name TEXT, team_abbr TEXT, stadium_name TEXT, stadium_capacity INTEGER, conf_id INTEGER);
CREATE TABLE conf (id INTEGER, conf_name TEXT);
CREATE TABLE game (id INTEGER, away_id INTEGER, away_score INTEGER, home_id INTEGER, home_score INTEGER);


--INSERTING TEAMS
INSERT INTO team VALUES (1, "Alabama", "ALA", "Bryant-Denny Stadium", 100077, 1); 
INSERT INTO team VALUES (2, "Auburn", "AUB", "Jordan-Hare Stadium", 87451, 1);
INSERT INTO team VALUES (3, "Arkansas", "ARK", "Donald W. Reynolds Stadium", 76000, 1); 
INSERT INTO team VALUES (4, "LSU", "LSU", "Tiger Stadium", 102321, 1); 
INSERT INTO team VALUES (5, "Texas A&M", "TAMU", "Kyle Field", 102733, 1); 
INSERT INTO team VALUES (6, "Ole Miss", "OLMS", "Vaught Hemingway Stadium", 64038, 1);
INSERT INTO team VALUES (7, "Mississippi State", "MSST", "Davis Wade Stadium", 61337, 1);
INSERT INTO team VALUES (8, "Georgia", "UGA", "Sanford Stadium", 92746, 1);
INSERT INTO team VALUES (9, "Florida", "UF", "Ben Hill Griffin", 88548, 1);
INSERT INTO team VALUES (10, "Tennessee", "TENN", "Neyland Stadium", 102455, 1);
INSERT INTO team VALUES (11, "Kentucky", "UK", "Kroger Field", 57800, 1);
INSERT INTO team VALUES (12, "Vanderbilt", "VAN", "Vanderbilt Stadium", 40550, 1);
INSERT INTO team VALUES (13, "South Carolina", "SCAR", "Williams-Brice Stadium", 77559, 1);
INSERT INTO team VALUES (14, "Missouri", "MIZZ", "Memorial Stadium", 62621, 1);
INSERT INTO team VALUES (15, "Clemson", "CLEM", "Death Valley", 90000, 2);
INSERT INTO team VALUES (16, "Florida State", "FSU", "Doak Campbell Stadium", 79560, 2);

--INSERTING CONFERENCES
INSERT INTO conf VALUES (1, "SEC");
INSERT INTO conf VALUES (2, "ACC");

--INSERTING GAMES
INSERT INTO game VALUES (1, 1, 28, 2, 34);
INSERT INTO game VALUES (2, 8, 17, 2, 40);
INSERT INTO game VALUES (3, 6, 20, 7, 21);
INSERT INTO game VALUES (4, 5, 29, 1, 23);
INSERT INTO game VALUES (5, 3, 53, 6, 52);

SELECT a.team_name, game.away_score, b.team_name, game.home_score 
FROM team AS a JOIN team AS b JOIN game 
WHERE (game.away_id = a.id AND game.home_id = b.id)
AND (game.away_score > 30 OR game.home_score > 30);

--BASIC QUERIES TO RUN
--SELECT * FROM team; --all team entries (with all tables)

--SELECT a.team_name, game.away_score, b.team_name, game.home_score 
--FROM team AS a JOIN team AS b JOIN game 
--WHERE game.away_id = a.id AND game.home_id = b.id;

--SELECT team_name, conf_name FROM team join conf WHERE team.conf_id == conf.id; --team name and conference from team AND conf
--SELECT team_name, stadium_name, stadium_capacity FROM team WHERE stadium_capacity > 100000;

/*
    Additional Queries to consider:
    1. find the smallest stadium from the ACC
    2. find the largest stadium from the SEC
    3. find games where the point differential is less than 5
    4. find where the games were played in query #3
*/