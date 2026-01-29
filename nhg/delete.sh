#!/bin/bash

# Define the directory to analyze
#DIRECTORY="/home/src/mage_data/nhg/pipelines"

## Get top 50 largest directories
#TOP_DIRS=$(find "$DIRECTORY" -mindepth 1 -maxdepth 1 -type d -exec du -m {} + | sort -nr | awk '{print $2}')

## Loop through each directory and delete it
#echo "Starting to delete directories..."
#for DIR in $TOP_DIRS; do
#    echo "Deleting: $DIR"
#    rm -rf "$DIR"
#done
#echo "Deletion complete."


# Define the base directory to analyze
DIRECTORY="/home/src/mage_data/nhg/pipelines"

# Find all files in the directory that are inside "output" folders and exclude those ending with "_state.json"
FILES=$(find "$DIRECTORY" -type f -path '/home/src/mage_data/nhg/pipelines/*/output/*' ! -name '*_state.json')

# Loop through each file and delete it
echo "Starting to delete files in output directories..."
for FILE in $FILES; do
    echo "Deleting: $FILE"
    rm -f "$FILE"
done
echo "File deletion complete."



# Define the base directory to analyze
DIRECTORY="/home/src/mage_data/nhg/pipelines"

# Find all files in the directory that are inside "output" folders and exclude those ending with "_state.json"
FILES=$(find "$DIRECTORY" -type f -path '/home/src/mage_data/nhg/pipelines/*/.logs/*' ! -name '*_state.json')

# Loop through each file and delete it
echo "Starting to delete files in output directories..."
for FILE in $FILES; do
    echo "Deleting: $FILE"
    rm -f "$FILE"
done
echo "File deletion complete."
