-- Table: plot_iteration

--DROP TABLE plot_iteration;

CREATE TABLE plot_iteration
(
    id bigserial NOT NULL,
    iteration_id bigint NOT NULL,
    story_id bigint NOT NULL,
    added date NOT NULL,
    del boolean default false,

    CONSTRAINT plot_iter_pk PRIMARY KEY (id),
    CONSTRAINT pi_iteration_fk FOREIGN KEY (iteration_id)
        REFERENCES iteration (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT pi_story_fk FOREIGN KEY (story_id)
        REFERENCES story (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
     OIDS=FALSE
);
ALTER TABLE plot_iteration
     OWNER TO scrumers;
