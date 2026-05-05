#!/bin/sh

# the ./services folder contains one or more folders.
# Each of these folders contains a .service file, and a bin folder.
# Copy the service file into SERVICES_DIR
# Copy the bin folder into BIN_DIR, named by the same name as the folder name
# Enable the service so it starts on boot
# Start the service manually

SERVICES_DIR=/etc/systemd/system/
BIN_DIR=/usr/local/bin

for service_dir in ./services/*/; do
    name=$(basename "$service_dir")
    service_file=$(find "$service_dir" -maxdepth 1 -name "*.service" | head -n 1)

    if [ -z "$service_file" ]; then
        echo "Warning: No .service file found in $service_dir, skipping."
        continue
    fi

    echo "Installing $name..."

    cp "$service_file" "$SERVICES_DIR"
    cp -r "$service_dir/bin" "$BIN_DIR/$name"
    chmod +x "$BIN_DIR/$name/$name.sh"

    systemctl enable "$name"
    systemctl start "$name"

    echo "$name installed and started."
done

echo "Done."