sudo cp ../resources/usb0-static.nmconnection /etc/NetworkManager/system-connections/

sudo chown root:root /etc/NetworkManager/system-connections/usb0-static.nmconnection
sudo chmod 600 /etc/NetworkManager/system-connections/usb0-static.nmconnection

sudo nmcli connection reload
sudo nmcli connection up usb0-static