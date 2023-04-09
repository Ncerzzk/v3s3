function esp32(){
        insmod /root/wifi/esp32_sdio.ko resetpin=152
        ifconfig espsta0 up
        sleep 5
        wpa_supplicant -Dnl80211 -iespsta0 -c /root/wifi/wp_conf  -B
        udhcpc -i espsta0
}

esp32