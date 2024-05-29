#!/bin/bash

# Update the package list and install prerequisites
sudo apt-get update
sudo apt-get install -y git cmake g++ make

# Clone the fuzzylite repository
git clone https://github.com/fuzzylite/fuzzylite.git

# Navigate to the fuzzylite directory
cd fuzzylite

# Create a build directory and navigate into it
mkdir build
cd build

# Run cmake to configure the project
cmake ..

# Build the project using make
make

# Install the library
sudo make install

# Verify installation
if command -v fuzzylite &> /dev/null
then
    echo "fuzzylite was installed successfully!"
else
    echo "There was an issue installing fuzzylite."
fi


# to make it executable
# chmod +x install_fuzzylite.sh
# to run the script:
#./install_fuzzylite.sh

