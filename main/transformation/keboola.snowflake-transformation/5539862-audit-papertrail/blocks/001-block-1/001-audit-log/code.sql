-- add comment 2
create table "AUDITLOG" as --test
select current_timestamp() as TIMESTAMP,
       count(*) as num_rows,
       'data_science_sandbox' as "TABLE"
from "ds_log";

insert into "AUDITLOG"
select current_timestamp() as TIMESTAMP,
       count(*) as num_rows,
       'telemetry' as "TABLE"
from "telemetry";
