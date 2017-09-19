
     cat wages.csv | cut -d "," -f 3,4 | cut -f 1 > col1.txt
     echo "done with col1.txt"
     cat wages.csv |cut -d "," -f 3,4 |  cut -f 2 > col2.txt 
     echo "done with col2.txt"
     cat col1.txt | cut -d ',' -f 1 > years
     cat col2.txt | cut -d ',' -f 2 > wage
     echo "done with years  and wage"



