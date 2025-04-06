CREATE TABLE IF NOT EXISTS country (
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS role (
    role_id SERIAL PRIMARY KEY,
    role_name VARCHAR(200) NOT NULL,
    line_name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS tournament (
    tournament_id SERIAL PRIMARY KEY,
    tournament_name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS team (
    team_id SERIAL PRIMARY KEY,
    first_pos_id INTEGER,
    second_pos_id INTEGER,
    third_pos_id INTEGER,
    fourth_pos_id INTEGER,
    fifth_pos_id INTEGER,
    team_name VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS player (
    player_id SERIAL PRIMARY KEY,
    role_id INTEGER NOT NULL,
    country_id INTEGER NOT NULL,
    team_id INTEGER NOT NULL,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    nickname VARCHAR(200) NOT NULL,
    birth TIMESTAMP,
    gender VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS game (
    game_id SERIAL PRIMARY KEY,
    tournament_id INTEGER NOT NULL,
    date TIMESTAMP
);

CREATE TABLE IF NOT EXISTS team_composition_in_game (
    team_id INTEGER NOT NULL,
    game_id INTEGER NOT NULL,
    first_pose_in_game_id INTEGER NOT NULL,
    second_pose_in_game_id INTEGER NOT NULL,
    third_pose_in_game_id INTEGER NOT NULL,
    fourth_pose_in_game_id INTEGER NOT NULL,
    fifth_pose_in_game_id INTEGER NOT NULL,
    PRIMARY KEY (team_id, game_id)
);

CREATE TABLE IF NOT EXISTS player_team_transfer (
    transfer_id SERIAL PRIMARY KEY,
    player_id INTEGER NOT NULL,
    old_team_id INTEGER,
    new_team_id INTEGER,
    contract_start_date DATE NOT NULL,
    contract_end_date DATE
);


ALTER TABLE player ADD CONSTRAINT fk_role 
    FOREIGN KEY (role_id) REFERENCES role(role_id);
ALTER TABLE player ADD CONSTRAINT  fk_country 
    FOREIGN KEY (country_id) REFERENCES country(country_id);
ALTER TABLE player ADD CONSTRAINT  fk_team 
    FOREIGN KEY (team_id) REFERENCES team(team_id);

ALTER TABLE game ADD CONSTRAINT  fk_tournament 
    FOREIGN KEY (tournament_id) REFERENCES tournament(tournament_id);

ALTER TABLE player_team_transfer ADD CONSTRAINT  fk_player 
    FOREIGN KEY (player_id) REFERENCES player(player_id); 
ALTER TABLE player_team_transfer ADD CONSTRAINT  fk_old_team 
    FOREIGN KEY (old_team_id) REFERENCES team(team_id); 
ALTER TABLE player_team_transfer ADD CONSTRAINT  fk_new_team 
    FOREIGN KEY (new_team_id) REFERENCES team(team_id);


