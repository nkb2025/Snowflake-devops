CREATE OR REPLACE PROCEDURE get_today_date()
RETURNS STRING
LANGUAGE JAVASCRIPT
AS
$$
  var today = new Date();
  return today;
$$;
