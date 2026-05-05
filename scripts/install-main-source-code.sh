# Clone the repo and .env and configure for your hardware
cd $HOME
git clone git@github.com:MarkSkinner92/ISS300-simulator.git
cd ISS300-simulator
cp .env.example .env

# Build the images (this will automatically run, and ensures it runs on boot)
sudo docker compose up
cd $HOME