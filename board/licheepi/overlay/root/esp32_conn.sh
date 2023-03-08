function esp32(){
        insmod /root/esp32_sdio.ko resetpin=152
        ifconfig espsta0 up
        wpa_supplicant -Dnl80211 -iespsta0 -c /root/wp_conf  -B
        udhcpc -i espsta0
}

esp32