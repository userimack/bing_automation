
url="https://www.bing.com/rewardsintl/dashboard"

for i in `cat profiles$1`; do
	profile="-P $i"
	echo "running user --- $i  site --- '$url'"
	firefox $profile &
	sleep 5
	firefox $profile $url
	sleep 5
done