#!/bin/bash

# Deleting the title of the file from the data
sed 's/"movies.csv"/""/' movies.csv

# Deleting unnecessary whitespace: tabs, newlines
nl=$'\n'
sed 's/"	"/""/' movies.csv
sed 's/"${nl}"/""/' movies.csv

# Deleting random characters: commas, pipes
sed 's/",,"/","/' movies.csv
sed 's/",,,"/","/' movies.csv
sed 's/"|"/""/' movies.csv

# Finally, turning ^M into proper newline
nl=$'\n'
sed 's/"^M"/"${nl}"/' movies.csv
