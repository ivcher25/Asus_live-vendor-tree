#!/system/bin/sh
#
# Add suuport for writing SSN to iSerial
# ASUS-BSP Note: move up before any adbd being called
#
ls_ssn=`ls /factory/SSN`
case "$ls_ssn" in
		*SSN*)
			ssn_value=`cat /factory/SSN`
			echo "$ssn_value" > /sys/class/android_usb/android0/iSerial
		;;
		* )
			echo "C4ATAS000000" > /sys/class/android_usb/android0/iSerial
		;;
esac
