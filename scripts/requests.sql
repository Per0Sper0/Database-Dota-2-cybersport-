-- Вывести всех керри игроков(первой позиции) каждой команды
SELECT nickname as Carry_name, team_name as team
FROM player, team
WHERE first_pos_id = player_id;

--Вывести команды, в которых есть русские игроки, и их количество
SELECT t.team_name, 
       COUNT(*) AS russian_players
FROM player p
JOIN team t ON p.team_id = t.team_id
WHERE p.country_id = (SELECT country_id FROM country WHERE country_name = 'Россия')
GROUP BY t.team_id, t.team_name
HAVING COUNT(*) > 0
ORDER BY russian_players DESC;

--Вывести всех игроков с их командами(а также их роли и страны)
SELECT p.nickname, t.team_name, c.country_name, r.role_name
FROM player p
JOIN team t ON p.team_id = t.team_id
JOIN country c ON p.country_id = c.country_id
JOIN role r ON p.role_id = r.role_id
ORDER BY t.team_name, r.role_id;

--Вывести количество игроков из каждой страны
SELECT c.country_name, COUNT(p.player_id) AS player_count
FROM country c
LEFT JOIN player p ON c.country_id = p.country_id
GROUP BY c.country_id, c.country_name
HAVING COUNT(p.player_id) > 0
ORDER BY player_count DESC;

--Вывести турниры с кол-вом проведенных матчей
SELECT t.tournament_name, COUNT(g.game_id) AS games_count
FROM tournament t
LEFT JOIN game g ON t.tournament_id = g.tournament_id
GROUP BY t.tournament_id, t.tournament_name
ORDER BY games_count DESC;

--Вывести игроков которые никогда не меняли команду
SELECT p.nickname, t.team_name
FROM player p
JOIN team t ON p.team_id = t.team_id
WHERE NOT EXISTS (
    SELECT player_id FROM player_team_transfer pt 
    WHERE pt.player_id = p.player_id AND pt.old_team_id IS NOT NULL
);
--Последние изменения в списках команд
SELECT 
    p.nickname,
    old_t.team_name AS from_team,
    new_t.team_name AS to_team,
    pt.contract_start_date
FROM player_team_transfer pt
JOIN player p ON pt.player_id = p.player_id
LEFT JOIN team old_t ON pt.old_team_id = old_t.team_id
JOIN team new_t ON pt.new_team_id = new_t.team_id
ORDER BY pt.contract_start_date DESC
LIMIT 5;

--Команды и их текущие состав 
SELECT t.team_name,
       p1.nickname AS carry,
       p2.nickname AS midlaner,
       p3.nickname AS offlaner,
       p4.nickname AS support4,
       p5.nickname AS support5
FROM team t
LEFT JOIN player p1 ON t.first_pos_id = p1.player_id
LEFT JOIN player p2 ON t.second_pos_id = p2.player_id
LEFT JOIN player p3 ON t.third_pos_id = p3.player_id
LEFT JOIN player p4 ON t.fourth_pos_id = p4.player_id
LEFT JOIN player p5 ON t.fifth_pos_id = p5.player_id
WHERE t.team_id IN (1, 2, 3, 4, 5, 6, 7);

--Ранжирование по возрасту в каждой команде
SELECT 
    p.nickname,
    t.team_name,
    p.birth,
    RANK() OVER(PARTITION BY t.team_id ORDER BY p.birth) AS age_rank
FROM player p
JOIN team t ON p.team_id = t.team_id
ORDER BY t.team_name, age_rank;

--5 самых молодых игроков с указанием их команд
SELECT nickname, birth, team_name
FROM player p
JOIN team t ON p.team_id = t.team_id
ORDER BY birth DESC
LIMIT 5;