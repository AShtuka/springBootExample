CREATE TABLE user_subscriptions(
  channel_id BIGINT NOT NULL,
  subscriber_id BIGINT  NOT NULL,
  PRIMARY KEY (subscriber_id , channel_id),
  FOREIGN KEY (channel_id) REFERENCES usr(id),
  FOREIGN KEY ( subscriber_id) REFERENCES usr(id)
);
