WITH regional_totals AS (
  SELECT
    region,
    SUM(energy_savings_yr) AS total_energy_region,
    SUM(co2_saved_kg_yr) AS total_co2_region
  FROM
    intel.impact_data
  GROUP BY
    region
)
SELECT
  i.region,
  d.device_type,
  COUNT(*) AS total_devices,
  SUM(i.energy_savings_yr) AS total_energy_savings,
  ROUND(SUM(i.co2_saved_kg_yr) / 1000, 2) AS total_co2_saved_tons,
  ROUND(
    (
      SUM(i.energy_savings_yr) / rt.total_energy_region
    ) * 100,
    2
  ) AS pct_energy_region,
  ROUND(
    (SUM(i.co2_saved_kg_yr) / rt.total_co2_region) * 100,
    2
  ) AS pct_co2_region
FROM
  intel.device_data d
  JOIN intel.impact_data i ON d.device_id = i.device_id
  JOIN regional_totals rt ON i.region = rt.region
GROUP BY
  i.region,
  d.device_type,
  rt.total_energy_region,
  rt.total_co2_region
ORDER BY
  i.region,
  pct_energy_region DESC;
