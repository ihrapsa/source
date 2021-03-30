# Onion Omega2 & Omega2S Firmware Build System
This buildsystem for the OpenWRT Linux distribution has been modified by Onion Corporation to build firmware for the Onion Omega2 and Omega2S family of devices.

The buildsystem can be used to create software packages and firmware images for Omega2 and Omega2S devices.

## Using this Build System

Setup build system:

```
sh onion/scripts/setup-build.sh
```

Compile:

```
make -j9
```

### Making a Release

Update version and/or build number in `onion/files/etc/uci-defaults/12_onion_defaults` and commit changes