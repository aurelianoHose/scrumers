-- Table: users_roles

-- DROP TABLE users_roles;

CREATE TABLE users_roles
(
  user_id bigint NOT NULL,
  role_id bigint NOT NULL,
  CONSTRAINT users_roles_pk PRIMARY KEY (user_id, role_id),
  CONSTRAINT users_roles_roles_fk FOREIGN KEY (role_id)
      REFERENCES roles (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT users_roles_users_fk FOREIGN KEY (user_id)
      REFERENCES users (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE users_roles
  OWNER TO scrumers;
