-- Table: iteration_story

--DROP TABLE iteration_story;

CREATE TABLE iteration_story
(
    iteration_id bigserial NOT NULL,
    story_id bigserial NOT NULL,
    priority numeric NULL,

    CONSTRAINT iteration_story_pk PRIMARY KEY (iteration_id, story_id),
    CONSTRAINT is_iteration_fk FOREIGN KEY (iteration_id)
        REFERENCES iteration (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT is_story_fk FOREIGN KEY (story_id)
        REFERENCES story (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
    OIDS=FALSE
);
ALTER TABLE iteration_story
    OWNER TO scrumers;
