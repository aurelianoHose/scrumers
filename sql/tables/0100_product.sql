-- Table: product

--DROP TABLE product;

CREATE TABLE product
(
    id bigserial NOT NULL,
    name character varying NOT NULL,
    descr character varying,
    owner bigint NULL,

    user_id bigint NOT NULL,
    added timestamp NULL,
    modified timestamp NULL,
    del boolean default false,
    done boolean default false,

    CONSTRAINT product_pk PRIMARY KEY (id),
    CONSTRAINT p_user_fk FOREIGN KEY (user_id)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT p_owner_fk FOREIGN KEY (owner)
        REFERENCES users (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
     OIDS=FALSE
);
ALTER TABLE product
     OWNER TO scrumers;
