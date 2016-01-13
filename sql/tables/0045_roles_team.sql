-- Table: roles_team

-- DROP TABLE roles_team;

CREATE TABLE roles_team
(
  id bigserial NOT NULL,
  name character varying NOT NULL,
  CONSTRAINT role_team_pk PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE roles_team
  OWNER TO scrumers;