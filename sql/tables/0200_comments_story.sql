-- Table: storys_users_comments

-- DROP TABLE storys_users_comments;

CREATE TABLE storys_users_comments
(
  id bigserial NOT NULL,
  user_id bigint NOT NULL,
  story_id  bigint NOT NULL,
  comment text NOT NULL,
  dateComment timestamp NOT NULL,
  del boolean NOT NULL default false,
  CONSTRAINT storys_users_comments_story_fk FOREIGN KEY (story_id)
      REFERENCES story (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT storys_users_comments_user_fk FOREIGN KEY (user_id)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);

ALTER TABLE storys_users_comments
  OWNER TO scrumers;