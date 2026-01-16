SELECT
    COUNT(*) AS total_devices,
    ROUND(AVG(2024 - d.model_year), 2) AS avg_device_age,
    ROUND(AVG(i.energy_savings_yr), 2) AS avg_energy_saved_kwh,
    SUM(i.co2_saved_kg_yr) / 1000 AS total_co2_saved_tons
FROM intel.device_data d
JOIN intel.impact_data i ON d.device_id = i.device_id;
