#!/bin/sh

# Enable basic sound output via pulseaudio
# Run "pacmd list-sinks | grep -e 'name:' -e 'index'" to find your QEMU_PA_SINK
# export QEMU_AUDIO_DRV=pa
# export QEMU_PA_SINK=alsa_output.pci-[MyAudioDevice].analog-stereo
# export QEMU_PA_SOURCE=input


# Start QEMU
qemu-system-x86_64 \
    -enable-kvm \
    -m 8G \
    -smp cores=2,threads=2,sockets=1,maxcpus=4 \
    -cpu host,hv_relaxed,hv_spinlocks=0x1fff,hv_vapic,hv_time \
    -machine type=pc,accel=kvm,kernel_irqchip=on \
    -global PIIX4_PM.disable_s3=1 \
    -global PIIX4_PM.disable_s4=1 \
    -name windows-gvt-g-guest \
    -usb \
    -device usb-tablet \
    -display gtk,gl=on \
    -device vfio-pci,sysfsdev=/sys/devices/pci0000:00/0000:00:02.0/a072b1ec-c156-48bc-a1ac-0b4047300434,x-igd-opregion=on,display=on \
    -drive file=/home/nathan/Documents/windows.qcow2,format=qcow2,l2-cache-size=8M \
    -cdrom /home/nathan/Downloads/Win10_Edu_1809Oct_English_x32_backup.iso \
    -vga qxl \
#    -nic none \
