use cruise;

select user();

CREATE USER karin@localhost IDENTIFIED BY 'cgs2545$%';

SELECT host, user, select_priv, insert_priv, update_priv, delete_priv, create_priv, drop_priv
from mysql.user;

GRANT SELECT, INSERT, UPDATE ON cruise.* to karin@localhost;

SHOW GRANTS for karin@localhost;

system mysql -u karin -p

use cruise;

DELETE from timesheet;