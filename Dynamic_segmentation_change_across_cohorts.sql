-- Step 1: Create temporary table to pivot data and calculate segment values
CREATE TEMPORARY TABLE SegmentValues AS
SELECT 
  crm_account_id,
  MAX(CASE WHEN year_quarter = '2022Q1' THEN segment_value END) AS `2022Q1`,
  MAX(CASE WHEN year_quarter = '2022Q2' THEN segment_value END) AS `2022Q2`,
  MAX(CASE WHEN year_quarter = '2022Q3' THEN segment_value END) AS `2022Q3`,
  MAX(CASE WHEN year_quarter = '2022Q4' THEN segment_value END) AS `2022Q4`,
  MAX(CASE WHEN year_quarter = '2023Q1' THEN segment_value END) AS `2023Q1`,
  MAX(CASE WHEN year_quarter = '2023Q2' THEN segment_value END) AS `2023Q2`,
  MAX(CASE WHEN year_quarter = '2023Q3' THEN segment_value END) AS `2023Q3`,
  MAX(CASE WHEN year_quarter = '2023Q4' THEN segment_value END) AS `2023Q4`,
  MAX(CASE WHEN year_quarter = '2024Q1' THEN segment_value END) AS `2024Q1`
FROM (
  SELECT 
    crm_account_id,
    year_quarter,
    CASE 
      WHEN dynamic_segmentation_engagement = 'Digital' THEN 1
      WHEN dynamic_segmentation_engagement IN ('Mid', 'Medium') THEN 2
      WHEN dynamic_segmentation_engagement = 'High' THEN 3
      WHEN dynamic_segmentation_engagement = 'Scaled' THEN 4
      ELSE NULL -- Unknown segment, or use 0 or any other value to represent this
    END as segment_value
  FROM `edw-prod-153420.edw_analyst_general.eda_dse_top100`
  WHERE SUBSTR(year_quarter, 1, 4) BETWEEN '2022' AND '2024'
) AS RawData
GROUP BY crm_account_id;

-- Step 2: Create a final temporary table to count unique combinations of segment values
CREATE TEMPORARY TABLE UniqueSegmentCombinations AS
SELECT
  `2022Q1`,
  `2022Q2`,
  `2022Q3`,
  `2022Q4`,
  `2023Q1`,
  `2023Q2`,
  `2023Q3`,
  `2023Q4`,
  `2024Q1`,
  COUNT(*) as client_count
FROM SegmentValues
GROUP BY `2022Q1`, `2022Q2`, `2022Q3`, `2022Q4`, `2023Q1`, `2023Q2`, `2023Q3`, `2023Q4`, `2024Q1`
ORDER BY client_count DESC;

-- Step 3: Select data from the temporary table to see the results.
-- Assuming the temporary tables from the previous step have been created
SELECT
  `2022Q1`,
  `2022Q2`,
  `2022Q3`,
  `2022Q4`,
  `2023Q1`,
  `2023Q2`,
  `2023Q3`,
  `2023Q4`,
  `2024Q1`,
  client_count,
  SUM(client_count) OVER (ORDER BY client_count DESC, `2022Q1`, `2022Q2`, `2022Q3`, `2022Q4`, `2023Q1`, `2023Q2`, `2023Q3`, `2023Q4`, `2024Q1`) AS cumulative_client_count
FROM UniqueSegmentCombinations;
