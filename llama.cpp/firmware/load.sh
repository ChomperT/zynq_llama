make
sudo sh -c "cp sgemm.bit /lib/firmware"
sudo sh -c "echo sgemm.bit > /sys/class/fpga_manager/fpga0/firmware"

sudo sh -c "rmdir /configfs/device-tree/overlays/sgemm"
sudo sh -c "mkdir /configfs/device-tree/overlays/sgemm"
sudo sh -c "cat sgemm.dtbo > /configfs/device-tree/overlays/sgemm/dtbo"

