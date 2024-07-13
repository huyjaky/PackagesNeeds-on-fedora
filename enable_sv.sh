
#!/bin/bash

# Enable and start core system services
sudo systemctl enable NetworkManager
sudo systemctl start NetworkManager

sudo systemctl enable firewalld
sudo systemctl start firewalld

sudo systemctl enable dbus
sudo systemctl start dbus

sudo systemctl enable systemd-journald
sudo systemctl start systemd-journald

sudo systemctl enable udisks2
sudo systemctl start udisks2

sudo systemctl enable upower
sudo systemctl start upower

# Enable SSHD if you need remote SSH access
sudo systemctl enable sshd
sudo systemctl start sshd

# Enable cronie for scheduled tasks
sudo systemctl enable cronie
sudo systemctl start cronie

# Enable and start hardware/software specific services if used
sudo systemctl enable bluetooth
sudo systemctl start bluetooth

sudo systemctl enable ModemManager
sudo systemctl start ModemManager

sudo systemctl enable cups
sudo systemctl start cups

sudo systemctl enable gdm
sudo systemctl start gdm

sudo systemctl enable libvirtd
sudo systemctl start libvirtd

# Enable and start services specific to virtualization if applicable
sudo systemctl enable vmtoolsd
sudo systemctl start vmtoolsd

sudo systemctl enable vboxservice
sudo systemctl start vboxservice

# Enable thermald for managing thermal temperature
sudo systemctl enable thermald
sudo systemctl start thermald

# Disable services not often used
sudo systemctl disable avahi-daemon
sudo systemctl stop avahi-daemon

sudo systemctl disable gssproxy
sudo systemctl stop gssproxy

sudo systemctl disable rpcbind
sudo systemctl stop rpcbind

sudo systemctl disable lvm2-monitor
sudo systemctl stop lvm2-monitor

echo "Recommended services have been enabled and started."
