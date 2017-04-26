#check MKLML_LIB
if [ "$MKLML_PATH" = "" ]; then
   echo "MKLML not found, auto download start ..."
   mkdir MKL
   cd MKL
   cp ../prepare_mkl.sh ./
   MKL_ROOT=`bash ./prepare_mkl.sh`
   SET_LLP="export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:$MKL_ROOT/lib"
   SET_LP="export LIBRARY_PATH=\$LIBRARY_PATH:$MKL_ROOT/lib"
   echo "$SET_LLP" >> ~/.bashrc
   echo "$SET_LP" >> ~/.bashrc
   cd ..
else
   echo "MKLML found"
fi
