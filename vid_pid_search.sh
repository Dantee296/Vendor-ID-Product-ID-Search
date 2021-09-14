#! /bin/bash

################################################################
# Description: When you see a USB device's vendor id and product id you should know what it means.
# specifically when it comes to mobile device forensics, hacking, and interrogation
#
# Author: Jonathan Scott Villarreal
# Date Modified: 09/14/2021
# Program Name: "VID PID SEARCH" (Search USB Vendor ID's and Product ID's)
################################################################
################################################################

trap ctrl_c INT

 ctrl_c() {
    echo
    echo "Ctrl-C by user"
    # do the jobs
    exit
}

    # FUNCTION TO ADD 1 BLANK ROW JUST BY TYPING space
        space(){

                     echo ""

         }
     # FUNCTION TO ADD 2 BLANK ROWS JUST BY TYPING double_space
         double_space(){

                    echo ""
                    echo ""

         }

# ---------------------------------------------------------------------------------------------

    echo "This will search through the crowd sourced usb.ids list from http://www.linux-usb.org/usb.ids"
    double_space
    IFS= read -r -p "Enter The Vendor ID: " input1
    space
    IFS= read -r -p "Enter The Product ID: " input2
    double_space

# ---------------------------------------------------------------------------------------------

    grep -e "^${input1}" -e "${input2}" usb.ids | sed '$!N;s/\n/ /'

