SELECT
  *,
  (2024 - d.model_year) AS device_age,
  CASE
    WHEN (2024 - d.model_year) <= 3 THEN 'newer'
    WHEN (2024 - d.model_year) <= 6 THEN 'mid-age'
    ELSE 'older'
  END AS device_age_bucket
FROM intel.device_data AS d
JOIN intel.impact_data AS i
  ON d.device_id = i.device_id;
