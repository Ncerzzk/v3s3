
ifconfig wlan0 up
wpa_supplicant -i wlan0 -c /root/wp_conf -B
udhcpc -i wlan0
