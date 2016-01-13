-- Table: users_team

-- DROP TABLE users_team;

CREATE TABLE users_team
(
    user_id bigint NOT NULL,
    team_id bigint NOT NULL,
    role_id bigint NOT NULL,
    CONSTRAINT ut_pk PRIMARY KEY (user_id, team_id),
    CONSTRAINT ut_team_fk FOREIGN KEY (team_id)
       REFERENCES team (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT ut_users_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT ut_team_role_fk FOREIGN KEY (role_id)
        REFERENCES roles_team (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
    OIDS=FALSE
);
ALTER TABLE users_team
    OWNER TO scrumers;
