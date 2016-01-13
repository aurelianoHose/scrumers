-- Table: task

--DROP TABLE task;

CREATE TABLE task
(
    id bigserial NOT NULL,
    task_id bigserial NOT NULL,
    summary character varying,          -- описание
    estimate_pre numeric,               -- предположительное время	
    estimate_real numeric NULL,         -- затраченное время
    assignee bigint NULL,               -- кому поручена
    status_id bigint NOT NULL default 1,

    user_id bigint,
    added timestamp NULL,
    modified timestamp NULL,
    del boolean default false,
    done boolean default false,

    CONSTRAINT task_pk PRIMARY KEY (id),
    CONSTRAINT task_user_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT task_user_fk2 FOREIGN KEY (assignee)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT task_status_fk FOREIGN KEY (status_id)
        REFERENCES status (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
    OIDS=FALSE
);
ALTER TABLE task
     OWNER TO scrumers;
