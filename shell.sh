# Shell

#1. create a directory
mkdir some_directory
#2. create a file in that directory
touch some_directory/some_file.txt
#OR
cd some_directory
touch some_file.txt
#3. edi tthe file with nano.
nano some_directory/some_file.txt
#OR (if you did cd first)
nano some_file.txt
#(ctrl 0 to save)
#(ctrl X to quit)
#4. navigate back out of that directory
cd ..
#5. delete the directory
rm -r some_directory


# Exercise:
# Provide a shell command that finds the 3 files that have
#   the *least* number of lines in a directory.
#   HINT : think about what the "*" wildcard means in english
# Write the same shell command to find the 3 with the most lines...

wc -l * | sort -n | head -n 3
wc -l * | sort -n | tail -n 4 | head -n 3


# Excercise :
#   1. Find the number of lines for each .csv, .txt, and .md file in "data/"
wc -l $(find . -name '*csv') > total_lengths.txt
wc -l $(find . -name '*txt') >> total_lengths.txt
wc -l $(find . -name '*md') >> total_lengths.txt

#   2. find the .csv, .txt, or .md files with the least number of lines
sort -n total_lengths.txt | head -n 3
#   3. find the .csv, .txt, or .md files with the *most* number of lines
sort -n total_lengths.txt | tail -n 6 | head -n 4