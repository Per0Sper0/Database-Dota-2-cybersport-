
INSERT INTO country (country_name) VALUES
('Россия'), ('Украина'), ('Китай'), ('Швеция'), ('Дания'),
('Филиппины'), ('Канада'), ('США'), ('Германия'), ('Сербия'),
('Финляндия'), ('Иордания'), ('Малайзия'), ('Перу'), ('Бразилия'),
('Эстония'), ('Польша'), ('Болгария'), ('Норвегия'), ('Австралия'),
('Сингапур'), ('Израиль'), ('Аргентина'), ('Чили'), ('Великобритания'),
('Франция'), ('Испания'), ('Италия'), ('Нидерланды'), ('Турция'),
('Япония'), ('Южная Корея'), ('Таиланд'), ('Вьетнам'), ('ЮАР');

INSERT INTO role (role_name, line_name) VALUES
('Carry', 'Safe Lane'), ('Mider', 'Mid Lane'),
('Offlaner', 'Off Lane'), ('Semi-Support', 'Off Lane'),
('Full-Support', 'Safe Lane');

INSERT INTO team (team_id, team_name, first_pos_id, second_pos_id, third_pos_id, fourth_pos_id, fifth_pos_id) VALUES
(1, 'Team Spirit', 1, 2, 3, 4, 5),
(2, 'Gaimin Gladiators', 6, 7, 8, 9, 10),
(3, 'LGD Gaming', 11, 12, 13, 14, 15),
(4, 'Tundra Esports', 16, 17, 18, 19, 20),
(5, 'OG', 21, 22, 23, 24, 25),
(6, 'Team Liquid', 26, 27, 28, 29, 30),
(7, 'BetBoom Team', 31, 32, 33, 34, 35);


-- Team Spirit (team_id = 1)
INSERT INTO player (role_id, country_id, team_id, first_name, last_name, birth, gender, nickname) VALUES
(1, 1, 1, 'Илья', 'Мулярчук', '2002-10-01', 'M', 'Yatoro'),
(2, 1, 1, 'Денис', 'Сигатулин', '2000-03-16', 'M', 'Larl'),
(3, 1, 1, 'Магомед', 'Халилов', '2001-06-01', 'M', 'Collapse'),
(4, 1, 1, 'Мирослав', 'Колпаков', '1999-04-01', 'M', 'Mira'),
(5, 1, 1, 'Ярослав', 'Найденов', '2001-06-09', 'M', 'Miposhka');

-- Gaimin Gladiators (team_id = 2)
INSERT INTO player (role_id, country_id, team_id, first_name, last_name, birth, gender, nickname) VALUES
(1, 5, 2, 'Антон', 'Шкред', '2000-05-06', 'M', 'dyrachyo'),
(2, 5, 2, 'Куинн', 'Каллахан', '2000-01-20', 'M', 'Quinn'),
(3, 5, 2, 'Маркус', 'Хоэльгаард', '1998-03-28', 'M', 'Ace'),
(4, 5, 2, 'Эрик', 'Энг', '1997-05-19', 'M', 'tOfu'),
(5, 5, 2, 'Мелин', 'Хансен', '1996-09-06', 'M', 'Seleri');

-- LGD Gaming (team_id = 3)
INSERT INTO player (role_id, country_id, team_id, first_name, last_name, birth, gender, nickname) VALUES
(1, 3, 3, 'Ван', 'Чуньюй', '2000-10-12', 'M', 'Ame'),
(2, 3, 3, 'Чэн', 'Цзинь', '1997-11-15', 'M', 'NothingToSay'),
(3, 3, 3, 'Чжан', 'Юйчэн', '1998-05-28', 'M', 'Faith_bian'),
(4, 3, 3, 'Чжао', 'Цзыцзин', '1995-03-22', 'M', 'XinQ'),
(5, 3, 3, 'Чжан', 'Чэнцзе', '1994-01-11', 'M', 'y''');

-- Tundra Esports (team_id = 4)
INSERT INTO player (role_id, country_id, team_id, first_name, last_name, birth, gender, nickname) VALUES
(1, 5, 4, 'Оливер', 'Лепко', '1998-01-18', 'M', 'skiter'),
(2, 5, 4, 'Леонид', 'Крицюк', '1999-10-20', 'M', 'Nine'),
(3, 5, 4, 'Нета', 'Шапира', '1997-04-20', 'M', '33'),
(4, 5, 4, 'Мартин', 'Сажимон', '1996-03-30', 'M', 'Saksa'),
(5, 5, 4, 'Яндер', 'Росано', '1994-05-26', 'M', 'Sneyking');

-- OG (team_id = 5)
INSERT INTO player (role_id, country_id, team_id, first_name, last_name, birth, gender, nickname) VALUES
(1, 5, 5, 'Артём', 'Голубев', '2001-06-01', 'M', 'Yuragi'),
(2, 5, 5, 'Бозан', 'Миленкович', '2004-04-15', 'M', 'bzm'),
(3, 5, 5, 'Аммар', 'Аль-Ассаф', '2003-07-05', 'M', 'ATF'),
(4, 5, 5, 'Томми', 'Ли', '1998-11-20', 'M', 'Taiga'),
(5, 5, 5, 'Михаил', 'Кантар', '1997-12-23', 'M', 'Misha');

-- Team Liquid (team_id = 6)
INSERT INTO player (role_id, country_id, team_id, first_name, last_name, birth, gender, nickname) VALUES
(1, 7, 6, 'Майкл', 'Ву', '1999-01-11', 'M', 'miCKe'),
(2, 5, 6, 'Михаил', 'Иванов', '2001-02-12', 'M', 'Nisha'),
(3, 5, 6, 'Людвиг', 'Вальберг', '1999-04-05', 'M', 'zai'),
(4, 5, 6, 'Самуэль', 'Сван', '1997-02-02', 'M', 'Boxi'),
(5, 5, 6, 'Айден', 'Саркои', '1998-04-27', 'M', 'iNSaNiA');

-- BetBoom Team (team_id = 7)
INSERT INTO player (role_id, country_id, team_id, first_name, last_name, birth, gender, nickname) VALUES
(1, 1, 7, 'Эгон', 'Стенгор', '1998-08-20', 'M', 'Nightfall'),
(2, 1, 7, 'Данил', 'Скутин', '2000-05-20', 'M', 'gpk'),
(3, 1, 7, 'Иван', 'Москаленко', '2003-04-15', 'M', 'Pure'),
(4, 1, 7, 'Виталий', 'Мельник', '2000-10-01', 'M', 'Save'),
(5, 1, 7, 'Александр', 'Хертек', '1999-03-12', 'M', 'TORONTOTOKYO');


INSERT INTO tournament (tournament_name) VALUES
('The International 2023'),
('Bali Major 2023'),
('Berlin Major 2023'),
('DreamLeague Season 20'),
('Riyadh Masters 2023'),
('The International 2022'),
('Animajor 2021'),
('ESL One Katowice 2023'),
('WePlay AniMajor'),
('PGL Arlington Major'),
('ONE Esports Singapore Major'),
('DreamLeague Season 19'),
('OGA Dota PIT 2023'),
('The International 2021'),
('The International 2019');

INSERT INTO game (tournament_id, date) VALUES
(1, '2023-10-15 12:00:00'), -- Team Spirit vs Gaimin Gladiators
(1, '2023-10-16 14:00:00'), -- LGD Gaming vs Tundra Esports
(2, '2023-07-05 10:00:00'), -- OG vs Team Liquid
(2, '2023-07-06 11:00:00'), -- BetBoom Team vs Team Spirit
(3, '2023-05-12 16:00:00'), -- Gaimin Gladiators vs LGD Gaming
(3, '2023-05-13 17:00:00'), -- Tundra Esports vs OG
(4, '2023-06-18 13:00:00'), -- Team Liquid vs BetBoom Team
(4, '2023-06-19 14:00:00'), -- Team Spirit vs LGD Gaming
(5, '2023-10-17 11:30:00'), -- Gaimin Gladiators vs Tundra Esports
(5, '2023-10-18 12:30:00'), -- OG vs Team Liquid
(6, '2022-10-20 09:00:00'), -- BetBoom Team vs Team Spirit
(6, '2022-10-21 10:00:00'), -- LGD Gaming vs Gaimin Gladiators
(7, '2021-06-05 11:00:00'), -- Tundra Esports vs OG
(7, '2021-06-06 12:00:00'), -- Team Liquid vs BetBoom Team
(8, '2023-02-18 15:00:00'), -- Team Spirit vs Gaimin Gladiators
(8, '2023-02-19 16:00:00'), -- LGD Gaming vs Tundra Esports
(9, '2021-06-12 10:30:00'), -- OG vs Team Liquid
(9, '2021-06-13 11:30:00'), -- BetBoom Team vs Team Spirit
(10, '2022-08-10 13:45:00'), -- Gaimin Gladiators vs LGD Gaming
(10, '2022-08-11 14:45:00'); -- Tundra Esports vs OG

INSERT INTO team_composition_in_game VALUES
-- Team Spirit
(1, 1, 1, 2, 3, 4, 5), (1, 4, 1, 2, 3, 4, 5), (1, 6, 1, 2, 3, 4, 5), (1, 8, 1, 2, 3, 4, 5), (1, 11, 1, 2, 3, 4, 5),
-- Gaimin Gladiators
(2, 1, 6, 7, 8, 9, 10), (2, 3, 6, 7, 8, 9, 10), (2, 5, 6, 7, 8, 9, 10), (2, 9, 6, 7, 8, 9, 10), (2, 12, 6, 7, 8, 9, 10),
-- LGD Gaming
(3, 2, 11, 12, 13, 14, 15), (3, 4, 11, 12, 13, 14, 15), (3, 5, 11, 12, 13, 14, 15), (3, 8, 11, 12, 13, 14, 15), (3, 10, 11, 12, 13, 14, 15),
-- Tundra Esports
(4, 2, 16, 17, 18, 19, 20), (4, 3, 16, 17, 18, 19, 20), (4, 5, 16, 17, 18, 19, 20), (4, 7, 16, 17, 18, 19, 20), (4, 10, 16, 17, 18, 19, 20),
-- OG
(5, 3, 21, 22, 23, 24, 25), (5, 6, 21, 22, 23, 24, 25), (5, 7, 21, 22, 23, 24, 25), (5, 9, 21, 22, 23, 24, 25), (5, 10, 21, 22, 23, 24, 25),
-- Team Liquid
(6, 3, 26, 27, 28, 29, 30), (6, 4, 26, 27, 28, 29, 30), (6, 7, 26, 27, 28, 29, 30), (6, 9, 26, 27, 28, 29, 30), (6, 10, 26, 27, 28, 29, 30),
-- BetBoom Team
(7, 4, 31, 32, 33, 34, 35), (7, 6, 31, 32, 33, 34, 35), (7, 7, 31, 32, 33, 34, 35), (7, 8, 31, 32, 33, 34, 35), (7, 11, 31, 32, 33, 34, 35);

INSERT INTO player_team_transfer (player_id, old_team_id, new_team_id, contract_start_date, contract_end_date) VALUES
-- Team Spirit
(1, NULL, 1, '2021-01-01', '2024-12-31'),
(2, 7, 1, '2022-11-01', '2024-12-31'),
(3, NULL, 1, '2020-09-01', '2024-12-31'),
(4, NULL, 1, '2021-01-01', '2024-12-31'),
(5, 6, 1, '2020-12-01', '2024-12-31'),
-- Gaimin Gladiators
(6, 1, 2, '2022-01-15', '2024-06-30'),
(7, NULL, 2, '2022-09-10', '2024-12-31'),
(8, 2, 2, '2021-11-20', '2023-12-31'),
(9, NULL, 2, '2022-03-05', '2024-12-31'),
(10, NULL, 2, '2022-01-10', '2025-06-30'),
-- LGD Gaming
(11, NULL, 3, '2020-05-01', '2023-12-31'),
(12, 3, 3, '2021-02-15', '2024-06-30'),
(13, NULL, 3, '2019-11-20', '2023-12-31'),
(14, NULL, 3, '2020-08-05', '2024-12-31'),
(15, NULL, 3, '2019-06-10', '2025-06-30'),
-- Tundra Esports
(16, NULL, 4, '2021-01-10', '2023-12-31'),
(17, 2, 4, '2021-03-05', '2024-12-31'),
(18, NULL, 4, '2020-11-15', '2023-12-31'),
(19, NULL, 4, '2021-02-20', '2023-12-31'),
(20, NULL, 4, '2021-01-30', '2024-12-31'),
-- OG
(21, NULL, 5, '2021-06-01', '2023-12-31'),
(22, 3, 5, '2022-02-15', '2024-06-30'),
(23, NULL, 5, '2021-09-20', '2023-12-31'),
(24, NULL, 5, '2021-08-05', '2024-12-31'),
(25, NULL, 5, '2022-01-10', '2025-06-30'),
-- Team Liquid
(26, NULL, 6, '2019-01-15', '2023-12-31'),
(27, 2, 6, '2022-11-20', '2024-12-31'),
(28, NULL, 6, '2021-09-01', '2023-12-31'),
(29, NULL, 6, '2018-05-10', '2023-12-31'),
(30, NULL, 6, '2019-07-22', '2024-06-30'),
-- BetBoom Team
(31, NULL, 7, '2022-03-01', '2023-12-31'),
(32, 5, 7, '2021-11-15', '2024-06-30'),
(33, NULL, 7, '2022-01-20', '2023-12-31'),
(34, 4, 7, '2021-10-05', '2024-12-31'),
(35, NULL, 7, '2022-02-10', '2025-06-30');

