# Install docker
cd $HOME
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh
sudo usermod -aG docker $USER
newgrp docker
sudo usermod -aG docker $USER

# This applies the group change to the rest of the script/session 
# without locking the terminal
sg docker -c "docker ps"

echo "Installation complete. You are now in user space."
cd $HOME