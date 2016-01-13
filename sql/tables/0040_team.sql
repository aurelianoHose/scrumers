-- Table: team

--DROP TABLE team;

CREATE TABLE team
(
    id bigserial NOT NULL,
    name character varying NOT NULL,
    user_id bigint,
    added timestamp NULL,
    modified timestamp NULL,
    del boolean default false,

    CONSTRAINT team_pk PRIMARY KEY (id)
)
WITH (
    OIDS=FALSE
);
ALTER TABLE team
    OWNER TO scrumers;
