-- Write your migrate up statements here
CREATE TABLE IF NOT EXISTS messages (
  "id"              uuid PRIMARY KEY  NOT NULL  DEFAULT gen_random_uuid(),
  "room_id"         uuid              NOT NULL,
  "message"         VARCHAR(255)
  "reaction_count"

  FOREIGN KEY (room_id) REFERENCES rooms(id)
)
---- create above / drop below ----

-- Write your migrate down statements here. If this migration is irreversible
-- Then delete the separator line above.
DROP TABLE IF EXISTS messages;