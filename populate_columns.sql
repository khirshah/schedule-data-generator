
CREATE OR REPLACE FUNCTION exc_range() RETURNS tsrange AS $$
  BEGIN
  RETURN  '[2017-05-03 01:00:00,2017-05-04 23:00:00]';
  END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION avail() RETURNS numrange[] AS $$
  BEGIN
  RETURN  '{[2\,8]}';
  END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION t_zone() RETURNS varchar(32) AS $$
  BEGIN
  RETURN  'UTC';
  END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION is_def() RETURNS boolean AS $$
  BEGIN
  IF random() > 0.5 THEN
    RETURN 't';
  ELSE
    RETURN 'f';
  END IF;
  END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION is_bl() RETURNS boolean AS $$
  BEGIN
  IF random() < 0.5 THEN
    RETURN 't';
  ELSE
    RETURN 'f';
  END IF;
  END;
$$ LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION insertData() RETURNS void AS $$
  --SELECT exc_range() AS ER;
  DECLARE tempids CURSOR FOR SELECT userid FROM userids;
  BEGIN
    FOR i IN tempids LOOP      
      INSERT INTO test(userid, exception_range, availability, time_zone, is_default, is_blocked) 
      VALUES(i,exc_range(),avail(), t_zone(), is_def(), is_bl());
    END LOOP;
  END;
$$ LANGUAGE plpgsql;

SELECT insertData();