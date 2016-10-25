DROP TABLE IF EXISTS entries;
CREATE TABLE entries (
  id     INTEGER PRIMARY KEY AUTOINCREMENT,
  title  TEXT NOT NULL,
  'text' TEXT NOT NULL
);

DROP TABLE IF EXISTS blogs;
CREATE TABLE blogs (
  id            INTEGER PRIMARY KEY AUTOINCREMENT,
  title         VARCHAR NOT NULL,
  content       TEXT    NOT NULL,
  hit           INTEGER             DEFAULT 0,
  comment_count INTEGER             DEFAULT 0,
  create_date   DATE    NOT NULL,
  status        INTEGER DEFAULT 0, -- 0:正常, 1:草稿, 2:删除, 3:关系(私密)
  c_id          INTEGER
);

DROP TABLE IF EXISTS catagories;
CREATE TABLE catagories (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  title       VARCHAR NOT NULL,
  describe    VARCHAR,
  create_date DATE    NOT NULL
);

INSERT INTO catagories (title, describe, create_date) VALUES ('IT', '', '2016-10-24 16:53:50');
INSERT INTO catagories (title, describe, create_date) VALUES ('职业生涯', '', '2016-10-23 12:00:00');

INSERT INTO blogs (title, content, create_date, c_id) VALUES ('博客建设', '搭建博客血泪史', '2016-10-24 16:55:10', 1);