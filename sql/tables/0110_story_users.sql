-- Table: story_users

-- DROP TABLE story_users;

CREATE TABLE story_users
(
    story_id bigint NOT NULL,
    user_id bigint NOT NULL,

    CONSTRAINT su_pk PRIMARY KEY (story_id, user_id),
    CONSTRAINT su_story_fk FOREIGN KEY (story_id)
       REFERENCES story (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT su_users_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
    OIDS=FALSE
);
ALTER TABLE story_users
    OWNER TO scrumers;
