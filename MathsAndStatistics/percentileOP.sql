SELECT percentile_cont(.5) WITHIN GROUP(
        ORDER BY numbers
    ),
    percentile_disc(.5) WITHIN GROUP(
        ORDER BY numbers
    )
FROM percentile_test;