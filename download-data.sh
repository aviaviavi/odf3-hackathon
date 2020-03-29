#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

csvs=(covid19_cases_by_country)
urls=("https://covid.ourworldindata.org/data/ecdc/full_data.csv")

length=${#csvs[@]}

for i in ${!csvs[@]}; do
    csv=${csvs[$i]}
    url=${urls[$i]}

    echo $csv
    echo $url

    echo "Updating $csv"
    curl $url -o "$csv.csv"
done

echo "Done!"
