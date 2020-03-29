#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

input="$DIR/sources.csv"
while IFS= read -r line
do
    csv=$(echo $line | cut -d ',' -f 1)
    url=$(echo $line | cut -d ',' -f 2)

    echo $csv
    echo $url

    echo "Updating $csv"
    curl $url -o "$csv.csv"
done < "$input"

echo "Done!"
