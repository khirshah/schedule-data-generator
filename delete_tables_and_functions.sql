DO $$
BEGIN
  DROP FUNCTION IF EXISTS insertData();
  DROP FUNCTION IF EXISTS exc_range();
  DROP FUNCTION IF EXISTS avail();
  DROP FUNCTION IF EXISTS t_zone();
  DROP FUNCTION IF EXISTS is_def();
  DROP FUNCTION IF EXISTS is_bl();

  DROP TABLE IF EXISTS userids;
END;
$$ LANGUAGE plpgsql;
