#!/bin/bash 

psql --dbname=testdb --username='ubuntu' -f '/home/ubuntu/agi/psql/smashcut/test_data_gen/get_userids.sql'

psql --dbname=testdb --username='ubuntu' -f '/home/ubuntu/agi/psql/smashcut/test_data_gen/populate_columns.sql'

psql --dbname=testdb --username='ubuntu' -f '/home/ubuntu/agi/psql/smashcut/test_data_gen/delete_tables_and_functions.sql'


