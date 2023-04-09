
ifconfig wlan0 up
wpa_supplicant -i wlan0 -c /root/wifi/wp_conf -B
udhcpc -i wlan0
