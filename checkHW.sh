


TheadPerCore=$(lscpu | grep "Thread(s) per core" | awk '{print $4}')
echo "TheadPerCore = "$TheadPerCore
if [ $TheadPerCore -gt 1 ] 
then
echo "Warning: TheadPerCore > 1, the mklml performance may not reach the best performance"
fi

NumaNodes=$(lscpu | grep "NUMA node(s)" | awk '{print $3}')
echo "NumaNodes = "$NumaNodes
if [ $NumaNodes -gt 1 ] 
then
echo "Warning: NumaNodes > 1, the mklml performance may not reach the best performance"
fi
