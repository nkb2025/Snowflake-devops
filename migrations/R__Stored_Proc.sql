CREATE OR REPLACE PROCEDURE get_today_date()
RETURNS STRING
LANGUAGE JAVASCRIPT
AS
$$
  var today = new Date();
  var yyyy = today.getFullYear();
  return todayStr;
$$;
