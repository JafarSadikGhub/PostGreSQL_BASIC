SELECT SUM(p0010001) AS "County sum",
    ROUND(AVG(p0010001)) AS "County avg",
    percentile_cont(.5) WITHIN GROUP (
        ORDER BY p0010001
    ) AS "County Median"
FROM us_countries_2010;