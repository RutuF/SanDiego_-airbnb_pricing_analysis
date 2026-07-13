San Diego hosts leave money on the table by not understanding optimal 
pricing strategies. This analysis identifies overpriced and underpriced 
listings, superhost pricing patterns, and what factors drive premium 
pricing across 50+ neighbourhoods.

Key Findings
→ Analysed 13,162 San Diego listings across 50+ neighbourhoods 
  (11,400 after removing listings with no price data)
→ Superhosts earn higher review scores and charge 
  a modest price premium, suggesting quality 
  and pricing power go hand in hand
→ North City and La Jolla command the highest typical nightly rates, 
  with La Jolla also ranking #1 for estimated annual revenue,
  making it the strongest overall market for hosts

Note: All pricing comparisons use median rather than mean to avoid 
distortion from outlier listings.

## SQL Concepts Demonstrated
→ Window Functions (RANK, ROW_NUMBER, LAG, AVG OVER)
→ CTEs for multi step analysis
→ JOINs across listings and reviews tables
→ CASE WHEN for data classification
→ Aggregate functions with GROUP BY and HAVING

## Tools Used
→ PostgreSQL 18
→ pgAdmin
→ Inside Airbnb Dataset

## Dataset
Source: Inside Airbnb (insideairbnb.com)
City: San Diego, California
