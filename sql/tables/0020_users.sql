-- Table: users

--DROP TABLE users;

CREATE TABLE users
(
    id bigserial NOT NULL,
    login character varying unique NOT NULL,
    passwd character(32) NOT NULL,
    avatar character varying,
    fname character varying,
    sname character varying,
    email character varying NULL,
    phone character varying NULL,
    actual_organization bigint NULL,
    actual_product bigint NULL,
    actual_iteration bigint NULL,
    is_first boolean default true,

    user_id bigint NOT NULL,
    added timestamp NULL,
    modified timestamp NULL,
    del boolean default false,
    CONSTRAINT users_pk PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE users
  OWNER TO scrumers;
