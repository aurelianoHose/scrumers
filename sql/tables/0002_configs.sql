-- Table: Configs

-- DROP TABLE configs;

CREATE TABLE configs
(
  key varchar NOT NULL,
  value varchar(255),
  id_type bigint NOT NULL,
  CONSTRAINT pk_config PRIMARY KEY (key),
  CONSTRAINT types_configs_configs_fk FOREIGN KEY (id_type)
      REFERENCES types_configs (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE configs
  OWNER TO scrumers;

INSERT INTO configs (key,value, id_type) VALUES ('userNamePattern','^[Р-пр-џA-Za-z0-9_-]{3,15}$',2);
INSERT INTO configs (key,value, id_type) VALUES ('userPasswdPattern','^[Р-пр-џA-Za-z0-9_-]{3,15}$',2);
INSERT INTO configs (key,value, id_type) VALUES ('userEmail','^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',2);
INSERT INTO configs (key,value, id_type) VALUES ('crontab','10 10 * * * *',1);
INSERT INTO configs (key,value, id_type) VALUES ('poolSize','30',3);
INSERT INTO configs (key,value, id_type) VALUES ('countStreams','5',3);
INSERT INTO configs (key,value, id_type) VALUES ('s','64',3);
INSERT INTO configs (key,value, id_type) VALUES ('m','128',3);
INSERT INTO configs (key,value, id_type) VALUES ('l','256',3);
INSERT INTO configs (key,value, id_type) VALUES ('xl','512',3);
INSERT INTO configs (key,value, id_type) VALUES ('imageFormate','jpg',4);
INSERT INTO configs (key,value, id_type) VALUES ('imageSize','l',4);
