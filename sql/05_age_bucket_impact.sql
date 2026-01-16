SELECT
  CASE
    WHEN (2024 - d.model_year) <= 3 THEN 'newer'
    WHEN (2024 - d.model_year) <= 6 THEN 'mid-age'
    ELSE 'older'
  END AS device_age_bucket,
  COUNT(*) AS total_devices,
  ROUND(AVG(i.energy_savings_yr), 2) AS avg_energy_savings,
  ROUND(AVG(i.co2_saved_kg_yr) / 1000, 2) AS avg_co2_saved_tons
FROM
  intel.device_data d
  JOIN intel.impact_data i ON d.device_id = i.device_id
GROUP BY
  device_age_bucket;
