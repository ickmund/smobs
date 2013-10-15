CREATE TABLE smob (
  smobid INTEGER PRIMARY KEY,
  name TEXT UNIQUE
);
CREATE TABLE load (
  id INTEGER PRIMARY KEY,
  smobid INTEGER,
  who TEXT,
  date TEXT,
  stab INTEGER,
  channel INTEGER,
  FOREIGN KEY(smobid) REFERENCES smob(id)
);
CREATE TABLE item (
  id INTEGER PRIMARY KEY,
  name TEXT
);
CREATE TABLE load_item (
  loadid INTEGER,
  itemid INTEGER,
  quantity INTEGER,
  location TEXT,
  FOREIGN KEY(loadid) REFERENCES load(id),
  FOREIGN KEY(itemid) REFERENCES item(id)
);
