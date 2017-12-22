DO $$
BEGIN
CREATE TABLE userids (userId varchar(40));
COPY userids(userId) FROM '/home/ubuntu/agi/psql/smashcut/test_data_gen/smashcut_data_usrids.csv' With CSV HEADER DELIMITER '|';
END;
$$ LANGUAGE plpgsql;
