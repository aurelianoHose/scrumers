-- Table: story

--DROP TABLE story;

CREATE TABLE story
(
    id bigserial NOT NULL,
    story_id bigint NOT NULL,
    name character varying,
    descr character varying,
    story_points character(4),          -- сложность(XS, S, M, L, XL)
    estimate numeric,                   -- продолжительность	
    how_to_demo character varying,      -- как продемонстрировать
    track character varying NULL,       -- категория
    status_id bigint NOT NULL default 1,
    assignee bigint NULL,

    user_id bigint,
    added timestamp NULL,
    modified timestamp NULL,
    del boolean default false,
    done boolean default false,

    CONSTRAINT story_pk PRIMARY KEY (id),
    CONSTRAINT story_user_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT story_status_fk FOREIGN KEY (status_id)
        REFERENCES status (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
     OIDS=FALSE
);
ALTER TABLE story
     OWNER TO scrumers;
