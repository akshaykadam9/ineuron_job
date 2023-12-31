SELECT
    activity_date,
    ROUND(
        COUNT(DISTINCT CASE WHEN activity_type IS NOT NULL THEN user_id END) * 100.0 /
        COUNT(DISTINCT user_id),
        2
    ) AS daily_engagement_rate
FROM
    user_activity
GROUP BY
    activity_date
ORDER BY
    activity_date;
