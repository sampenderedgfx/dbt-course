WITH raw_reviews AS (
    SELECT
        *
    FROM
        {{ source('airbnb','reviews') }}
)
SELECT
    listing_id,
    DATE as review_date,
    reviewer_name,
    COMMENTS as review_text,
    SENTIMENT as review_sentiment
FROM
    raw_reviews