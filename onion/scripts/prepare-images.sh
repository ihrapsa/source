#!/bin/sh

### rename firmware images based on device name and version number

DIR="bin/targets/ramips/mt76x8/"

# find version and build number
VERSION=$(cat onion/files/etc/uci-defaults/12_onion_defaults | grep "onion.version" | sed -re "s/^.+='//" -e "s/'.*$//")
BUILD=$(cat onion/files/etc/uci-defaults/12_onion_defaults | grep "onion.build" | sed -re "s/^.+='//" -e "s/'.*$//")


renameImage () {
    device="$1"
    echo "Renaming image for $device device"

    imageName="${device}-v${VERSION}-b${BUILD}.bin"
    mv $DIR/openwrt-ramips-mt76x8-onion_${device}-squashfs-sysupgrade.bin $DIR/$imageName
}

# rename images
renameImage "omega2p"
