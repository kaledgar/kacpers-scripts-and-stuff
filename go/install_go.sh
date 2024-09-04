#!/bin/bash

# Specify the version of Go you want to install
GO_VERSION="1.23.0"

# Download the Go tarball
echo "Downloading Go $GO_VERSION..."
sudo wget https://dl.google.com/go/go$GO_VERSION.linux-amd64.tar.gz

# Extract the tarball to /usr/local
echo "Extracting Go $GO_VERSION..."
sudo tar -xvf go$GO_VERSION.linux-amd64.tar.gz
sudo mv go /usr/local

# Clean up the tarball
rm go$GO_VERSION.linux-amd64.tar.gz
echo "Updating .bashrc with Go environment variables..."
cat <<EOT >> ~/.bashrc

# GoLang configuration
export GOROOT=/usr/local/go
export GOPATH=\$HOME/go
export PATH=\$GOPATH/bin:\$GOROOT/bin:\$PATH
EOT

# Apply the changes to the current session
echo "Applying changes..."
source ~/.bashrc

# Check the Go version to confirm installation
echo "Go installation complete. Verifying..."
go version

if [ $? -eq 0 ]; then
  echo "Go $GO_VERSION installed successfully!"
else
  echo "Go installation failed."
fi