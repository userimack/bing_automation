
#!/usr/bin/env bash

count=0
url='https://www.bing.com/search?q='
for i in `cat profiles$1`; do
	profile="-P $i"
	firefox $profile https://www.bing.com/search?q=mahendra+yadav+userimack &
	sleep 10

	while IFS= read -r i; do 
		# if (( $count==0 ))
		# then
		#   p="$profile --new-window"
		 
		# else
		#   p="$profile  --new-tab"
		# fi
		p="$profile  --new-tab"
		echo "$(expr $count + 1 ) $p '$url$i'"
		$(firefox $p "$url$i" )
		sleep 5
		

	done < query
	#wmctrl -ic "$(wmctrl -lp | grep "$(pgrep firefox)" | tail -1 | awk '{ print $1 }')"
	((count++ ))
done
