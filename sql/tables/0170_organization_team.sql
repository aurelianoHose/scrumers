-- Table: organization_team

--DROP TABLE organization_team;

CREATE TABLE organization_team
(
    organization_id bigserial NOT NULL,
    team_id bigserial NOT NULL,

    CONSTRAINT organization_team_pk PRIMARY KEY (organization_id, team_id),
    CONSTRAINT ot_organization_fk FOREIGN KEY (organization_id)
    REFERENCES organization (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT ot_team_fk FOREIGN KEY (team_id)
    REFERENCES team (id) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
    OIDS=FALSE
);
ALTER TABLE organization_team
    OWNER TO scrumers;
