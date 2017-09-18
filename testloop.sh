
     cat wages.csv | cut -d "," -f 3,4 > schooling txt
     cat schooling.txt | cut -f 1 >col1.txt
     cat schooling.txt | cut -f 2 >col2.txt 

for num in col1.txt, col2.txt
do 
    echo "$num"
done


    
