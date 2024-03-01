SUMMARIZE
SELECT
    SepalLengthCm,
    SepalWidthCm,
    PetalLengthCm,
    PetalWidthCm
FROM read_parquet('iris.parquet')
