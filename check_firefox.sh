
url="https://www.bing.com/rewardsintl/dashboard"

for i in `cat profiles$1`; do
	profile="-P $i"
	echo "running user --- $i  site --- '$url'"
	firefox $profile $url &
	sleep 5
	#firefox $profile $url
    ((count++))
	if [ $count -eq 5 ] 
        then
        count=0
        echo "Proceed..... : Enter any key Continue : "
        read
    fi
done