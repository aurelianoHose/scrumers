-- Table: product_story

--DROP TABLE product_story;

CREATE TABLE product_story
(
    product_id bigserial NOT NULL,
    story_id bigserial NOT NULL,
    priority numeric NULL,

    CONSTRAINT product_story_pk PRIMARY KEY (product_id, story_id),
    CONSTRAINT ps_product_fk FOREIGN KEY (product_id)
        REFERENCES product (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT ps_story_fk FOREIGN KEY (story_id)
        REFERENCES story (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
    OIDS=FALSE
);
ALTER TABLE product_story
    OWNER TO scrumers;
