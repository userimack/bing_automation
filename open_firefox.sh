url="https://www.bing.com/"

for i in `cat profiles$1`; do
    profile="-P $i"
    echo "running user --- $i  site --- '$url'"
    #firefox $profile &
    #sleep 15
    firefox $profile $url
    #sleep 15
    echo "Proceed..... : Enter any key Continue : "
    read 
done