COPY (
    SELECT *
    FROM read_csv('Iris.csv')
) TO 'iris.parquet' (FORMAT 'parquet');