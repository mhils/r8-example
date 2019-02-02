BEGIN;
-- This SQL file is the authoritative source for challenges, user and teams.
-- To keep challenges in version control, we add them here and then run `r8 sql file mics.sql`.
-- Please note that you generally don't want to delete challenges over the lifetime of a r8 installation.
-- If users however interacted with the challenge before, you will run into foreign key constraint issues.

DELETE FROM challenges;
INSERT INTO challenges (t_start, t_stop, cid, team) VALUES
  (datetime('2000-01-01 00:00:00'), datetime('9999-01-01 00:00:00'), 'HelloWorld', 0)
;

DELETE FROM users;
INSERT INTO users (uid, password) VALUES
  -- demo:insecure
  ('demo',  '$argon2i$v=19$m=512,t=2,p=2$EjwbEgEeV5VU1+K+qlS/9g$D/xOkUnpQZc2V9EvcH0UXg'),
  ('demo2', '$argon2i$v=19$m=512,t=2,p=2$EjwbEgEeV5VU1+K+qlS/9g$D/xOkUnpQZc2V9EvcH0UXg')
;

DELETE FROM teams;
INSERT INTO teams (tid, uid) VALUES
  ('1', 'demo'), ('1', 'demo2')
;

COMMIT;
