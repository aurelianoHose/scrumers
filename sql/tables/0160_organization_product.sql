-- Table: organization_product

-- DROP TABLE organization_product;

CREATE TABLE organization_product
(
    organization_id bigint NOT NULL,
    product_id bigint NOT NULL,

    CONSTRAINT op_pk PRIMARY KEY (organization_id, product_id),
    CONSTRAINT op_organization_fk FOREIGN KEY (organization_id)
       REFERENCES organization (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT op_product_fk FOREIGN KEY (product_id)
        REFERENCES product (id) MATCH SIMPLE
        ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE organization_product
  OWNER TO scrumers;