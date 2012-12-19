IN=`/opt/vc/bin/vcgencmd measure_temp`
#IN="temp=53.0'C"
echo "$IN"

##Let's convert
IN2=${IN#temp=}
IN3=${IN2%\'C}
TEMP_IN_F=`echo "$IN3 * 1.8 + 32" | bc`
##Print it out
echo "Processor Temperature:" $TEMP_IN_F"'F," $IN3"'C"
