#!/bin/bash
exec >out.csv
./bin/sqlite3 ./sys/xserve_sqlite.db <<!
.headers on
.mode csv
.output out.csv
select * from eS1100_sensor_results;
!