-- Table: product

--DROP TABLE organization;

CREATE TABLE organization
(
    id bigserial NOT NULL,
    name character varying NOT NULL,

    user_id bigint NOT NULL,
    added timestamp NULL,
    modified timestamp NULL,
    del boolean default false,

    CONSTRAINT organization_pk PRIMARY KEY (id),
    CONSTRAINT p_user_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
     OIDS=FALSE
);
ALTER TABLE organization
     OWNER TO scrumers;
