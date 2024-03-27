SELECT 
  SUBSTR(year_quarter, 1, 4) AS year, 
  SUBSTR(year_quarter, 6, 2) AS quarter,
  COUNT(1) as total_count,
  COUNT(DISTINCT crm_account_id) as unique_account_count,
  COUNT(CASE WHEN dynamic_segmentation_engagement = 'Mid' THEN 1 END) AS mid_count,
  COUNT(CASE WHEN dynamic_segmentation_engagement = 'High' THEN 1 END) AS high_count,
  COUNT(CASE WHEN dynamic_segmentation_engagement = 'Medium' THEN 1 END) AS medium_count,
  COUNT(CASE WHEN dynamic_segmentation_engagement = 'Scaled' THEN 1 END) AS scaled_count,
  COUNT(CASE WHEN dynamic_segmentation_engagement = 'Digital' THEN 1 END) AS digital_count
FROM `edw-prod-153420.edw_analyst_general.eda_dse_top100`
GROUP BY year, quarter
ORDER BY year, quarter
