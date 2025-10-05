num=$(dunstctl count history)

if [[ $num != 0 ]]; then
    for i in $( seq 0 $num ); do
        $(dunstctl history-pop)
         echo "Iteration $i"
    done
fi