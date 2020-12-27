word="UNIX"

# Read all args
for i; do
	# I is for Insensitive
	# d is for delete
	# I must be written first
	sed -i "/\b$word\b/Id" $
done
