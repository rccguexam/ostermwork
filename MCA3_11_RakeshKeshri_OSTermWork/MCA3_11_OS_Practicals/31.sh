# 31. The script displays a list of all files in the current directory to which you have read,    
# write and execute permissions.

for line in *
do
if [ -r $line -a -w $line -a -x $line ]
then
echo "$line has all permissions"
else
echo "files not having all permissions"
fi
done

# Output:

# 16.sh..3056 has all permissions
# files not having all permissions
# 26.sh.3056 has all permissions
# 27.sh has all permissions
# files not having all permissions
# 30.sh has all permissions
# files not having all permissions
# files not having all permissions
# files not having all permissions
# files not having all permissions
# seven.sh..3056 has all permissions
# files not having all permissions
# files not having all permissions
# files not having all permissions
# files not having all permissions