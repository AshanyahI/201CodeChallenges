#!/bin/bash

#!/bin/bash

# Script: Ops 201 Class 07 Ops Challenge Solution
# Author: Ashanyah Israel
# Date of latest revision: 2/07/24
# Purpose: Create a script that Automates the gathering of useful information

# Main
# Create a script that Uses lshw to display system information to the screen
# End

# Check if the script is run as root
if [[ $(id -u) -ne 0 ]]; then
    echo "Please run this script as root or using sudo."
    exit 1
fi

# Display system information using lshw
echo "System Information:"

# Display information about the CPU
echo "CPU Information:"
lshw -class processor | grep -E 'product|vendor|phys id|bus info|width'

# Display information about the RAM
echo "RAM Information:"
lshw -class memory | grep -E 'description|phys id|size'

# Display information about the display adapter
echo "Display Adapter Information:"
lshw -class display | grep -E 'description|product|vendor|phys id|bus info|width|clock|capabilities|configuration|resources'

# Display information about the network adapter
echo "Network Adapter Information:"
lshw -class network | grep -E 'description|product|vendor|phys id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources'

exit 0

