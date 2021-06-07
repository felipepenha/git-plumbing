hash:
	(date --utc && echo "$(filename): $(message)") 2>&1 \
	| tee -ai hash.log
	git hash-object -w $(filename) >> hash.log

restore:
	git cat-file -p "$(hash)" > "$(filename)"