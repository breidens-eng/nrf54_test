#!/bin/sh
echo "Run Docker gerdie/ubuntu-zephyr-ncs-v2.9.0:v0 with Nordic v2.9.0 Zephyr 0.16.8"

current_dir="abus_sw/""$(basename "$PWD")"
#mountpoint
echo  "$current_dir"

# Directory structure
#       └── sw_zephyr/
#           ├── zephyrproject_ncs/
#           │   └── abus_sw/  (code working space mounted into Docker container)
#           │       ├── boards/
#           │       │   └── arm/
#           │       │       ├── AB0003
#           │       │       └── ..
#           │       ├── nrf54l15_blinky
#           │       ├── nrf52832_blinky
#           │       └── ... 
#           ├── bootloader
#           ├── ..
#           ├── zephyr
#           └── .west
docker run --rm -it -v ../$pwd:/workdir/abus_sw gerdie/ubuntu-zephyr-ncs-v2.9.0:v0 make -C "$current_dir" $1