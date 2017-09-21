#Authors: Melissa Stephens, Janice Love
#Script to sort wages.csv by gender, save gender and years Experience to a new file, seperated by space
#Usage:bash genderYrExp.sh $@ where $@ is wages.csv or whatever file to be sorted. Save data to temp file, numeric sort temp file 


cat "$@" |cut -d ',' -f 1,2  |  sort -u | tr ',' ' '  > temp.txt
cat temp.txt | sort -k1.1d,1 -k2.2n,2 > challenge1.txt


#sorts wages.csv by highest and lowest earner and prints to stdout
#counts the number of females in the top 10 earners


for column in wages.csv; do echo "highest earner in $column:"; cat wages.csv | tr ',' ' ' | cut -d "," -f 1,2,4 | sort -k 4,4rn | head -n 1; 
echo "lowest earner in $column:"; cat wages.csv | grep 'male' | tr ',' ' ' | cut -d "," -f 1,2,4 | sort -k 4,4rn | tail -n 1;
echo "number of females in top 10 earners:" ; cat wages.csv | tr ',' ' ' | sort -k 4,4n | head -n 10 | grep 'female' | wc -l; done


#script to compare effect of graduating college (12 or 16 years) on minimum wage for earners in wages.csv dataset
 
for file in wages.csv; do cat wages.csv | tr ',' ' ' | cut -d ' ' -f 3,4 | sort -k 3n | grep '12 ' | awk '{ total += $2; count++ } END { print "average min wage, 12 years of school = " total/count }';
cat wages.csv | tr ',' ' ' | cut -d ' ' -f 3,4 | sort -k 3n | grep '16 ' | awk '{ total += $2; count++ } END { print "average min wage, 16 years of school= " total/count }'; done


