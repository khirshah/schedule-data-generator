DO $$
BEGIN
CREATE TABLE userids (userId varchar(40));
COPY userids(userId) FROM './usrids.csv' With CSV HEADER DELIMITER '|';
END;
$$ LANGUAGE plpgsql;
