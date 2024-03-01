duckdb:
	./install_duckdb.sh

build: duckdb
	pip install -e .

build-plot: duckdb
	pip install -e .[plot]

extract:
	kaggle datasets download uciml/iris --unzip
	duckdb -c ".read csv_to_parquet.sql"
	rm database.sqlite

extract-rock:
	wget https://raw.githubusercontent.com/fivethirtyeight/data/master/classic-rock/classic-rock-raw-data.csv

summarize: 
	duckdb -c ".read iris_summary.sql"

plot:
	cat Iris.csv | cut -f1-4 -d, | uplot scatter -H -d, -t IRIS

run: summarize plot