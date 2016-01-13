-- Table: log_story

--DROP TABLE log_story;

CREATE TABLE log_story
(
    id bigserial NOT NULL,
    story_id bigint NOT NULL,
    user_id bigint NOT NULL,
    story_action text NOT NULL, 
    added date NOT NULL,

    CONSTRAINT log_story_pk PRIMARY KEY (id),
    CONSTRAINT ls_story_fk FOREIGN KEY (story_id)
        REFERENCES story (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT ls_user_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
     OIDS=FALSE
);
ALTER TABLE log_story
     OWNER TO scrumers;
