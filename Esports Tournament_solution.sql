#1. What are the names of the players whose salary is greater than 100,000?

SELECT PLAYER_ID ,PLAYER_NAME 
FROM PLAYERS
WHERE SALARY >=100000;

#2. What is the team name of the player with player_id = 3?

SELECT T.TEAM_NAME,P.PLAYER_ID
FROM TEAMS T
JOIN PLAYERS P
ON T.TEAM_ID=P.TEAM_ID
WHERE P.PLAYER_ID=3;

#3. What is the total number of players in each team?

SELECT T.TEAM_NAME,count(P.PLAYER_ID) AS NUMBER_OF_PLAYER
FROM teams T
JOIN players P 
ON T.TEAM_ID=P.TEAM_ID
GROUP BY T.TEAM_NAME;

#4. What is the team name and captain name of the team with team_id = 2?

SELECT T.TEAM_NAME,T.TEAM_ID, P.PLAYER_NAME AS CAPTAIN_NAME
FROM TEAMS T
JOIN PLAYERS P 
ON P.TEAM_ID=T.TEAM_ID
WHERE T.TEAM_ID=2;

#5. What are the player names and their roles in the team with team_id = 1?

SELECT P.PLAYER_NAME,P.ROLE,T.TEAM_ID
FROM PLAYERS P 
JOIN TEAMS T 
ON P.TEAM_ID=T.TEAM_ID
WHERE T.TEAM_ID=1;

#6. What are the team names and the number of matches they have won?

select t.team_name, count(m.winner_id) as matches_won
from Teams t join Matches m
on t.team_id=m.winner_id
group by m.winner_id;

#7. What is the average salary of players in the teams with country 'USA'?

SELECT P.PLAYER_ID, AVG(P.SALARY) AS AVERAGE_SALARY_OF_PLAYERS 
FROM PLAYERS P 
JOIN TEAMS T 
ON P.TEAM_ID=T.TEAM_ID
WHERE COUNTRY ='USA'
GROUP BY P.PLAYER_ID;

#8. Which team won the most matches?

SELECT T.TEAM_NAME,COUNT(M.MATCH_ID) AS TEAM_WON
FROM TEAMS T
JOIN MATCHES M
ON T.TEAM_ID=M.WINNER_ID
GROUP BY T.TEAM_ID,T.TEAM_NAME
ORDER BY TEAM_WON DESC
LIMIT 1;

#9What are the team names and the number of players in each team whose salary is greater than 100,000?

SELECT T.TEAM_NAME, COUNT(P.PLAYER_ID) AS NUMBER_OF_PLAYER 
FROM TEAMS T 
JOIN PLAYERS P
ON T.TEAM_ID=P.TEAM_ID
WHERE SALARY > 100000
GROUP BY T.TEAM_NAME;

#10What is the date and the score of the match with match_id = 3?

SELECT match_date, score_team1, score_team2
FROM Matches
WHERE match_id = 3;







