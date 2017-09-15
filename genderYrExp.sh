cat "$@" | sort -k 1| tr -d ' '| cut -d ',' -f 1,2| tr ',' ' '  > challenge1.txt
