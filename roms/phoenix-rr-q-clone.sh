# Script to Clone Sources for Building RR For Redmi K30/Poco X2

repo init -u https://github.com/ResurrectionRemix/platform_manifest.git -b Q
repo sync -f --force-sync --no-clone-bundle
git clone https://github.com/revanth-24/device_xiaomi_phoenix -b ten device/xiaomi/phoenix
git clone https://github.com/ResurrectionRemix-Devices/vendor_xiaomi_phoenix -b ten vendor/xiaomi
git clone https://github.com/ResurrectionRemix-Devices/kernel_xiaomi_phoenix -b ten kernel/xiaomi/phoenix
git clone https://github.com/revanth-24/vendor_aeonax_ANXCamera vendor/aeonax/ANXCamera
git clone https://gitlab.com/revanth-24/platform_vendor_pixelgapps vendor/pixelgapps --depth=5
