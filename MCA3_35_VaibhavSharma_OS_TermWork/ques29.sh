# 29. The word "unix" is present in only some of the files syupplied as arguments to the shell  
# script. You script should search each of       these files in turn and stop at the first file         
# that it encounters containing the word unix. The filename should be displayed on the screen.

for i in *; do
    echo "Searching file: $i ..."

    if grep -q "JOKER" "$i"; then
        echo "Found in $i"
        break;
    fi
    echo "Done."
done

# Output:

# Searching file: 16.sh..3056 ...
# Done.
# Searching file: 26.sh.3056 ...
# Done.
# Searching file: 27.sh ...
# Done.
# Searching file: cut..3056 ...
# Done.
# Searching file: dummy.txt ...
# Found in dummy.txt