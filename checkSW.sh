#check MKLML_LIB
if [ "$MKLML_PATH" = "" ]; then
   echo "MKLML not found, auto download start ..."
   mkdir MKL
   cd MKL
   cp ../prepare_mkl.sh ./
   MKLML_PATH=`bash ./prepare_mkl.sh`
   SET_LLP="export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:$MKLML_PATH/lib"
   SET_LP="export LIBRARY_PATH=\$LIBRARY_PATH:$MKLML_PATH/lib"
   SET_MKL="export MKLML_PATH=$MKLML_PATH"
   echo "$SET_LLP" >> ~/.bashrc
   echo "$SET_LP" >> ~/.bashrc
   echo "$SET_MKL" >> ~/.bashrc
   echo "set MKLML path in the ~/.bashrc, please source this file before torch/theano installation."
   cd ..
else
   echo "MKLML found"
fi
