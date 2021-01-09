#!/bin/bash
#  _______   _______
# |  _____| |  ___  |
# | |       | |   | |    Rolando Ramos Torres (@rolodoom)
# | |       | |___| |    http://rolandoramostorres.com
# |_|       |_______|
#  _         _______     collab3-setup/install.sh
# | |       |  ___  |
# | |       | |   | |    Missing desktop icon installer
# | |_____  | |___| |    for CollaB3 software
# |_______| |_______|    Tested on Kubuntu 20.04 LTS
#
#
#
#


SAMPLESON=$(readlink -f "$HOME/.sampleson")

# install subrutine
aa_install () {
    echo "installing desktop icon..."

    # check if $HOME/.sampleson exists
    if [ ! -d "$SAMPLESON" ]; then
    # Create dir if doesn't exists
        echo "The folder $SAMPLESON doesn't exist!!!"
    else
        # echo "The folder $SAMPLESON exists!!!"

        # # copy .local files
        cp -r local/share "$HOME/.local"

    fi

    echo "Done!!!"
}

# uninstall subrutine
aa_uninstall () {
    echo "Uninstalling desktop icon..."

    # desktop files
    rm -rf "$HOME/.local/share/applications/CollaB3.desktop"
    # icons
    rm -rf "$HOME/.local/share/icons/CollaB3.png"

    echo "Done!!!"
}


# Start
echo ""
echo "*****************************************"
echo "*    CollaB3 Desktop Icon Installer     *"
echo "*****************************************"
echo "Available commands:"
echo ""
echo "  [I]nstall"
echo "  [U]ninstall"
echo "  [Q]uit"
echo ""
echo -n "Command [I,U,Q]:"
read input
echo ""

# 
case "$input" in
    install|INSTALL|I|i)
    aa_install    
    ;;

    uninstall|UNINSTALL|U|u)
    aa_uninstall
    ;;
      
    quit|QUIT|Q|q|exit|EXIT|x|X) 
    echo "Bye!!!"
    ;;
    
    # NOT IMPLEMENTED
    *)
    echo "Choose an available command!!!"
    ;;

esac
