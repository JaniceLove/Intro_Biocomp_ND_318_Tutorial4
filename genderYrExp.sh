#Script to sort wages.csv by gender, save gender and years Experience to a new file, seperated by space
#Usage:bash genderYrExp.sh $@ where $@ is wages.csv or whatever file to be sorted 


cat "$@" | sort -k 1| tr -d ' '| cut -d ',' -f 1,2| tr ',' ' '  > challenge1.txt
