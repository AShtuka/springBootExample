CREATE TABLE message (
  id BIGINT NOT NULL AUTO_INCREMENT,
  filename VARCHAR(255),
  tag VARCHAR(255),
  text TEXT NOT NULL ,
  user_id BIGINT,
  PRIMARY KEY (id)
);

CREATE TABLE user_role (
  user_id BIGINT NOT NULL ,
  roles VARCHAR(255)
);

CREATE TABLE usr (
  id BIGINT NOT NULL AUTO_INCREMENT,
  activation_code VARCHAR(255),
  active BIT NOT NULL ,
  email VARCHAR(255),
  password VARCHAR(255) NOT NULL ,
  username VARCHAR(255) NOT NULL ,
  PRIMARY KEY (id)
);

ALTER TABLE message ADD CONSTRAINT message_user_fk FOREIGN KEY (user_id) REFERENCES usr (id);
ALTER TABLE user_role ADD CONSTRAINT user_role_user_fk FOREIGN KEY (user_id) REFERENCES usr (id);