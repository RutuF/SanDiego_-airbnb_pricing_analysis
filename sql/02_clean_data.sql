-- =============================================
-- Data Cleaning Script
-- Remove $ sign from price column
-- Convert TEXT columns to correct data types
-- =============================================

-- Step 1: Clean price column
UPDATE listings
SET price = REPLACE(REPLACE(price, '$', ''), ',', '');

-- Step 2: Convert column types
ALTER TABLE listings
    ALTER COLUMN id SET DATA TYPE BIGINT
        USING NULLIF(id, '')::BIGINT,
    ALTER COLUMN host_id SET DATA TYPE BIGINT
        USING NULLIF(host_id, '')::BIGINT,
    ALTER COLUMN price SET DATA TYPE DECIMAL
        USING NULLIF(price, '')::DECIMAL,
    ALTER COLUMN bedrooms SET DATA TYPE INT
        USING NULLIF(bedrooms, '')::INT,
    ALTER COLUMN bathrooms SET DATA TYPE DECIMAL
        USING NULLIF(bathrooms, '')::DECIMAL,
    ALTER COLUMN beds SET DATA TYPE INT
        USING NULLIF(beds, '')::INT,
    ALTER COLUMN accommodates SET DATA TYPE INT
        USING NULLIF(accommodates, '')::INT,
    ALTER COLUMN minimum_nights SET DATA TYPE INT
        USING NULLIF(minimum_nights, '')::INT,
    ALTER COLUMN maximum_nights SET DATA TYPE INT
        USING NULLIF(maximum_nights, '')::INT,
    ALTER COLUMN availability_365 SET DATA TYPE INT
        USING NULLIF(availability_365, '')::INT,
    ALTER COLUMN number_of_reviews SET DATA TYPE INT
        USING NULLIF(number_of_reviews, '')::INT,
    ALTER COLUMN number_of_reviews_ltm SET DATA TYPE INT
        USING NULLIF(number_of_reviews_ltm, '')::INT,
    ALTER COLUMN estimated_occupancy_l365d SET DATA TYPE DECIMAL
        USING NULLIF(estimated_occupancy_l365d, '')::DECIMAL,
    ALTER COLUMN estimated_revenue_l365d SET DATA TYPE DECIMAL
        USING NULLIF(estimated_revenue_l365d, '')::DECIMAL,
    ALTER COLUMN review_scores_rating SET DATA TYPE DECIMAL
        USING NULLIF(review_scores_rating, '')::DECIMAL,
    ALTER COLUMN review_scores_cleanliness SET DATA TYPE DECIMAL
        USING NULLIF(review_scores_cleanliness, '')::DECIMAL,
    ALTER COLUMN review_scores_location SET DATA TYPE DECIMAL
        USING NULLIF(review_scores_location, '')::DECIMAL,
    ALTER COLUMN review_scores_value SET DATA TYPE DECIMAL
        USING NULLIF(review_scores_value, '')::DECIMAL,
    ALTER COLUMN calculated_host_listings_count SET DATA TYPE INT
        USING NULLIF(calculated_host_listings_count, '')::INT,
    ALTER COLUMN host_listings_count SET DATA TYPE INT
        USING NULLIF(host_listings_count, '')::INT,
    ALTER COLUMN host_since SET DATA TYPE DATE
        USING NULLIF(host_since, '')::DATE,
    ALTER COLUMN first_review SET DATA TYPE DATE
        USING NULLIF(first_review, '')::DATE,
    ALTER COLUMN last_review SET DATA TYPE DATE
        USING NULLIF(last_review, '')::DATE;
