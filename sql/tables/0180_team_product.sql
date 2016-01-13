-- Table: team_product

-- DROP TABLE team_product;

CREATE TABLE team_product
(
    team_id bigint NOT NULL,
    product_id bigint NOT NULL,
    CONSTRAINT tp_pk PRIMARY KEY (team_id, product_id),
    CONSTRAINT tp_team_fk FOREIGN KEY (team_id)
       REFERENCES team (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT tp_product_fk FOREIGN KEY (product_id)
        REFERENCES product (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
    OIDS=FALSE
);
ALTER TABLE team_product
    OWNER TO scrumers;
