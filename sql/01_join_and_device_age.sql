SELECT
  *
FROM intel.device_data AS d
JOIN intel.impact_data AS i
  ON d.device_id = i.device_id;

SELECT
  *,
  (2024 - d.model_year) AS device_age
FROM intel.device_data AS d
JOIN intel.impact_data AS i
  ON d.device_id = i.device_id;
