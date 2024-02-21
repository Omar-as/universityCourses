#! /bin/bash

echo -e "Hello there! How do you feel about bash scripting?"
read REPLY
echo "You said $REPLY. Lab exercise 1 is done! Thank you!"
echo $(uname -a) >> ./doc/info/info.txt
echo ./resources/koc.txt >> ./doc/info/info.txt
cat ./resources/koc.txt
