UPDATE Teams
SET CaptainID = BowlerID
WHERE CaptainID =
   (SELECT 
    *
FROM
    Teams
        INNER JOIN
    bowlers ON teams.TeamID = bowlers.TeamID
    WHERE CaptainID = BowlerID AND TeamName = 'Dolphins')