#!/bin/bash

# Create a directory to store APT repository keys if it doesn't exist
sudo install -d -m 0755 /etc/apt/keyrings

# Import the Mozilla APT repository signing key
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null

# Check if wget is installed, if not install it
if ! command -v wget &> /dev/null
then
    echo "wget could not be found, installing wget"
    sudo apt-get install -y wget
fi

# Verify the fingerprint of the imported key
FINGERPRINT=$(gpg -n -q --import --import-options import-show /etc/apt/keyrings/packages.mozilla.org.asc | awk '/pub/{getline; gsub(/^ +| +$/,""); print $0}')
EXPECTED_FINGERPRINT="35BAA0B33E9EB396F59CA838C0BA5CE6DC6315A3"

if [ "$FINGERPRINT" == "$EXPECTED_FINGERPRINT" ]; then
    echo "The key fingerprint matches ($FINGERPRINT)."
else
    echo "Verification failed: the fingerprint ($FINGERPRINT) does not match the expected one ($EXPECTED_FINGERPRINT)."
    exit 1
fi

# Add the Mozilla APT repository to your sources list
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null

# Configure APT to prioritize packages from the Mozilla repository
echo '
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
' | sudo tee /etc/apt/preferences.d/mozilla

# Update your package list and install the Firefox .deb package
sudo apt-get update && sudo apt-get install -y firefox

echo "Firefox installation completed."
