-- Table: product_iteration

--DROP TABLE product_iteration;

CREATE TABLE product_iteration
(
    product_id bigserial NOT NULL,
    iteration_id bigserial NOT NULL,

    CONSTRAINT product_iteration_pk PRIMARY KEY (product_id, iteration_id),
    CONSTRAINT pi_product_fk FOREIGN KEY (product_id)
        REFERENCES product (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT pi_iteration_fk FOREIGN KEY (iteration_id)
        REFERENCES iteration (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
    OIDS=FALSE
);
ALTER TABLE product_iteration
    OWNER TO scrumers;