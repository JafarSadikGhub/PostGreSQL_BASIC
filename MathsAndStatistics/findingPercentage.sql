SELECT geo_name,
    state_us_abbreviation as "st",
    (CAST(p0010006 as numeric(8, 1)) / p0010001) * 100 as "pct_asian"
FROM us_countries_2010
ORDER BY "pct_asian" DESC;