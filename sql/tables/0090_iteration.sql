-- Table: iteration

--DROP TABLE iteration;

CREATE TABLE iteration
(
    id bigserial NOT NULL,
    name character varying NOT NULL,
    descr character varying NULL,
    date_start date,
    date_end date,					
    iteration_num numeric NOT NULL,     -- номер итерации в проекте 

    user_id bigint,
    added timestamp NULL,
    modified timestamp NULL,
    del boolean default false,
    done boolean default false,

    CONSTRAINT iteration_pk PRIMARY KEY (id),
	CONSTRAINT iteration_user_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
      OIDS=FALSE
);
ALTER TABLE iteration
     OWNER TO scrumers;
