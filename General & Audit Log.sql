 -- General & Audit Log 
 -- Enable general log for all queries
SET GLOBAL general_log = 'ON';

-- View general log file
SHOW VARIABLES LIKE 'general_log_file';

-- Disable log
-- SET GLOBAL general_log = 'OFF';

-- For advanced auditing

-- Install audit plugin (if supported in MySQL version)
INSTALL PLUGIN audit_log SONAME 'audit_log.so';

-- Check plugin status
SHOW PLUGINS;
