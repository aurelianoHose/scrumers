-- Table: roles

-- DROP TABLE roles;

CREATE TABLE roles
(
  id bigserial NOT NULL,
  name character varying NOT NULL,
  CONSTRAINT role_pk PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE roles
  OWNER TO scrumers;
