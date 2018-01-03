#########################################################################
# File Name: choeMake.sh
# Author: andrew Choe
# mail: xgod@163.com
# Created Time: 三  1/ 3 16:03:50 2018
#########################################################################
#!/bin/bash
./configure    # try to figure out all implementation differences

cd lib         # build the basic library that all programs need
make           # use "gmake" everywhere on BSD/OS systems

cd ../pipe     # build and test a simple program
make pipeconf
./pipeconf /tmp

#If all that works, you're all set to start compiling individual programs.
