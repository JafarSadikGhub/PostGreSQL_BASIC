SELECT geo_name,
    state_us_abbreviation as "st",
    p0010003 as "White alone",
    p0010004 as "Black alone",
    p0010003 + p0010004 as "Total White and Black"
FROM us_countries_2010;