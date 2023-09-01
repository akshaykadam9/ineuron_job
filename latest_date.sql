WITH LatestDate AS (
    SELECT
        product_id,
        warehouse_id,
        MAX(date) AS latest_date
    FROM
        inventory
    GROUP BY
        product_id, warehouse_id
)

SELECT
    i.product_id,
    i.warehouse_id,
    i.date,
    i.quantity
FROM
    inventory i
JOIN
    LatestDate ld
ON
    i.product_id = ld.product_id
    AND i.warehouse_id = ld.warehouse_id
    AND i.date = ld.latest_date;
