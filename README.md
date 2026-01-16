# Intel Device Repurposing — Sustainability Impact Analysis (SQL Project)

## Project Overview
This project evaluates the sustainability impact of device repurposing initiatives at Intel, focusing on energy savings, CO₂ emission reductions, and lifecycle extension of laptops and desktops.

The goal is to identify which devices, age groups, and regions deliver the greatest environmental benefit and to provide data-driven recommendations to maximize sustainability outcomes.

## Tools Used
- SQL (JOINs, CASE statements, CTEs, aggregations)
- Relational data modeling
- Sustainability & business analytics

## Data Description
Two datasets were analyzed and joined using a common `device_id`:
- **Device data:** device type and model year
- **Impact data:** energy savings, CO₂ reductions, usage purpose, and region

A derived field (`device_age`) was created to analyze lifecycle impact.

## Key Analyses
- Device age and repurposing trends
- Energy savings and CO₂ reductions by device type
- Regional sustainability impact
- Contribution analysis by device type and region

## Key Findings
- Over **600,000 devices** were repurposed in 2024
- Repurposing avoided approximately **6,768 metric tons of CO₂**
- Laptops account for ~**68%** of total sustainability impact
- Older devices deliver higher per-device energy and CO₂ savings
- Regions with higher carbon-intensity electricity show greater CO₂ benefits

## Recommendations
- Prioritize repurposing **mid-age and older laptops**
- Focus efforts in **high carbon-intensity regions**
- Balance usability with sustainability impact to maximize returns
  
## Assumptions & Scope
- Analysis is based on structured, anonymized datasets representing device repurposing activity
- Calculations reflect annualized savings estimates
- Results are intended for analytical demonstration and strategic insight, not audited reporting


## Outcome
This analysis demonstrates how SQL-driven analytics can support sustainability strategy, operational decision-making, and environmental impact optimization.
