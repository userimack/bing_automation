#!/usr/bin/env

count=1
url='https://www.bing.com/search?q='
p="--new-tab"
sleep 15
while IFS= read -r i; do 
	# if (( $count==1 ))
	# then
	#   p="--new-window"
	# else
	#   p="--new-tab"
	# fi
	echo "running $p '$url$i'"
	$(google-chrome-stable $p "$url$i" )
	sleep 5
	((count++ ))
done < query
