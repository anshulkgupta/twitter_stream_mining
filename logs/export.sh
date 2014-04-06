#!/bin/bash
exec > out.csv
sqlite3 d1.db <<!
.headers on
.mode csv
.output out.csv
select * from aap_OR_kejriwal;
!
