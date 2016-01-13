-- Table: comments_task

-- DROP TABLE comments_task;

CREATE TABLE comments_task
(
  id bigserial NOT NULL,
  user_id bigint NOT NULL,
  task_id  bigint NOT NULL,
  comment text NOT NULL,
  dateComment timestamp NOT NULL,
  del boolean NOT NULL default false,
  CONSTRAINT ct_task_fk FOREIGN KEY (task_id)
      REFERENCES task (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT ct_user_fk FOREIGN KEY (user_id)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);

ALTER TABLE comments_task
  OWNER TO scrumers;