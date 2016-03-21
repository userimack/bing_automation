#!/usr/bin/env bash

count=0
url='https://www.bing.com/search?q='
for i in `cat profiles`; do
	profile="-P $i"
	firefox $profile &
	sleep 5

	while IFS= read -r i; do 
		if (( $count==0 ))
		then
		  p="$profile --new-window"
		 
		else
		  p="$profile  --new-tab"
		fi
		echo "running $p '$url$i'"
		$(firefox $p "$url$i" )
		sleep 3
		((count++ ))

	done < query
done
