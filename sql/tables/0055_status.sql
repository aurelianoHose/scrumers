-- Table: status

-- DROP TABLE status;

CREATE TABLE status
(
  id bigserial NOT NULL,
  name character varying NOT NULL,
  CONSTRAINT status_pk PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE status
  OWNER TO scrumers;
