-- Table: story_tasks

--DROP TABLE story_tasks;

CREATE TABLE story_tasks
(
    story_id bigserial NOT NULL,
    task_id bigserial NOT NULL,
    priority numeric NULL,

    CONSTRAINT story_tasks_pk PRIMARY KEY (story_id, task_id),
    CONSTRAINT st_story_fk FOREIGN KEY (story_id)
        REFERENCES story (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT st_task_fk2 FOREIGN KEY (task_id)
        REFERENCES task (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
    OIDS=FALSE
);
ALTER TABLE story_tasks
    OWNER TO scrumers;
