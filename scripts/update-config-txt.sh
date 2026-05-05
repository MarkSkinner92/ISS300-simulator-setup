#!/bin/bash

CONFIG="/boot/firmware/config.txt"

add_if_missing() {
    grep -qF "$1" "$CONFIG" || echo "$1" >> "$CONFIG"
}

add_if_missing "enable_uart=1"
add_if_missing "dtoverlay=uart3,txd3_pin=5,rxd3_pin=4"
add_if_missing "#dtoverlay=gpio-shutdown,gpio_pin=16,active_low=1,gpio_pull=up"
add_if_missing "dtoverlay=gpio-fan,gpiopin=22,temp=60000"

echo "Done."