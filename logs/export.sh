#!/bin/bash
exec >out.csv
sqlite3 data.db <<!
.headers on
.mode csv
.output out.csv
select * from yolo;
!
