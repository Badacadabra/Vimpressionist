##!/bin/bash

#################################
######### VIMPRESSIONIST ########
#################################

#set -e

## =============================
## LOG
## =============================

#log() {
    #type="$1"
    #str="$2"

    #case "$type" in
        #err) echo -e "\033[0;31m$str\033[0m" 1>&2 ;;
        #warn) echo -e "\033[0;33m$str\033[0m" ;;
        #info) echo -e "\033[0;36m$str\033[0m" ;;
        #ok) echo -e "\033[0;32m$str\033[0m" ;;
    #esac
#}

## =============================
## INTERACTIVE CMD
## =============================

#ask() {
    #read -r choice
    #while [[ ! "$choice" =~ ^(y|n)$ ]]; do
        #log err "Invalid choice. Please enter 'y' (yes) or 'n' (no)."
        #read -r choice
    #done

    #if [ "$choice" = "n" ]; then
        #log ok "Bye"
        #exit 1
    #fi
#}

## =============================
## DISCLAIMER
## =============================

#log warn "You are going to install \033[1;33mVimpressionist\033[0m."
#log warn "This will replace your configuration for each Vim-like app."
#log warn "You will also need a working Internet connection.\n"
#log warn "Do you really want to continue? (y/n)"

#ask

## =============================
## PACKAGE MANAGEMENT
## =============================

## /!\ Be careful here!
## For instance, pacman is not a package manager on Debian systems (it is the game...).
#pkg_manager=""
#pkg_managers=( "pacman" "apt" "aptitude" "yum" "dnf" "zypper" "emerge" "equo" )

#test_pkg() {
    #if hash "$1" 2> /dev/null; then
        #pkg_manager="$1"
    #fi
#}

#for mgr in "${pkg_managers[@]}"; do
    #test_pkg "$mgr"
#done

#pkg_update() {
    ## Arch & Co.
    #if [ "$pkg_manager" = "pacman" ] && [ -f /etc/arch-release ]; then
        #sudo pacman -Syu --noconfirm
    ## Debian & Co.
    #elif [ "$pkg_manager" = "apt" ] && [ -f /etc/debian_version ]; then
        #sudo apt-get update
        #sudo apt-get --assume-yes upgrade
    #elif [ "$pkg_manager" = "aptitude" ] && [ -f /etc/debian_version ]; then
        #sudo aptitude update
        #sudo aptitude --assume-yes upgrade
    ## Red Hat & Co.
    #elif [ "$pkg_manager" = "yum" ] && [ -f /etc/redhat-release ]; then
        #sudo yum update
    #elif [ "$pkg_manager" = "dnf" ] && [ -f /etc/redhat-release ]; then
        #sudo dnf update
    ## SuSE & Co.
    #elif [ "$pkg_manager" = "zypper" ] && [ -f /etc/SuSE-release ]; then
        #sudo zypper update
    ## Gentoo & Co.
    ## elif [ "$pkg_manager" = "emerge" ] && [ -f /etc/gentoo-release ]; then
    ##   sudo emerge install "$@"
    ## elif [ "$pkg_manager" = "equo" ] && [ -f /etc/gentoo-release ]; then
    ##   sudo equo install "$@"
    #else
        #log err "Your package manager has not been recognized."
        #exit 2
    #fi
#}

#pkg_install() {
    ## Arch & Co.
    #if [ "$pkg_manager" = "pacman" ] && [ -f /etc/arch-release ]; then
        #if [ "$#" -eq 0 ]; then
            ## vte3-ng is a dependency of the Termite package (conflict with vte3)
            #sudo pacman -Rdd --noconfirm vte3
            #sudo pacman -S --noconfirm i3 dmenu gvim vifm zathura zathura-pdf-mupdf termite mutt cmus feh lynx conky
        #else
            #sudo pacman -S --noconfirm "$@"
        #fi
    ## Debian & Co.
    #elif [ "$pkg_manager" = "apt" ] && [ -f /etc/debian_version ]; then
        #if [ "$#" -eq 0 ]; then
            ## Termite is not in official repos
            #git clone https://github.com/Corwind/termite-install.git
            #sh termite-install/termite-install.sh
            #sudo apt-get --assume-yes install i3 suckless-tools vim vim-gnome vifm zathura mutt cmus feh lynx conky
        #else
            #sudo apt-get --assume-yes install "$@"
        #fi
    #elif [ "$pkg_manager" = "aptitude" ] && [ -f /etc/debian_version ]; then
        #if [ "$#" -eq 0 ]; then
            ## Termite is not in official repos
            #git clone https://github.com/Corwind/termite-install.git
            #sh termite-install/termite-install.sh
            #sudo aptitude --assume-yes install i3 suckless-tools vim vim-gnome vifm zathura mutt cmus feh lynx conky
        #else
            #sudo aptitude --assume-yes install "$@"
        #fi
    ## Red Hat & Co.
    #elif [ "$pkg_manager" = "yum" ] && [ -f /etc/redhat-release ]; then
        #if [ "$#" -eq 0 ]; then
            ## Cmus and Termite are not in official repos
            ## Termite install???
            #su -lc 'yum install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm'
            #sudo yum --assumeyes install i3 dmenu vim-enhanced vim-X11 vifm zathura mutt cmus feh lynx conky
        #else
            #sudo yum --assumeyes install "$@"
        #fi
    #elif [ "$pkg_manager" = "dnf" ] && [ -f /etc/redhat-release ]; then
        #if [ "$#" -eq 0 ]; then
            ## Cmus and Termite are not in official repos
            #su -lc 'dnf install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm'
            #sudo dnf --assumeyes install i3 dmenu vim-enhanced vim-X11 vifm zathura mutt cmus feh lynx conky
        #else
            #sudo dnf --assumeyes install "$@"
        #fi
    ## SuSE & Co.
    #elif [ "$pkg_manager" = "zypper" ] && [ -f /etc/SuSE-release ]; then
        #if [ "$#" -eq 0 ]; then
            ## Zathura, Cmus and Termite are not in official repos
            #sudo zypper addrepo http://download.opensuse.org/repositories/home:msvec/openSUSE_Tumbleweed/home:msvec.repo
            #sudo zypper addrepo http://download.opensuse.org/repositories/home:cschneemann/openSUSE_Tumbleweed/home:cschneemann.repo
            #sudo zypper addrepo http://download.opensuse.org/repositories/home:cyphar/openSUSE_Tumbleweed/home:cyphar.repo
            #sudo zypper refresh
            #sudo zypper --non-interactive install i3 dmenu vim gvim vifm zathura termite mutt cmus feh lynx conky
        #else
            #sudo zypper --non-interactive install "$@"
        #fi
    ## Gentoo & Co.
    ## elif [ "$pkg_manager" = "emerge" ] && [ -f /etc/gentoo-release ]; then
    ##    if [ "$#" -eq 0 ]; then
    ##        sudo emerge install ...
    ##    else
    ##        sudo emerge install "$@"
    ##    fi
    ## elif [ "$pkg_manager" = "equo" ] && [ -f /etc/gentoo-release ]; then
    ##    if [ "$#" -eq 0 ]; then
    ##        sudo emerge install ...
    ##    else
    ##       sudo equo install "$@"
    ##    fi
    #else
        #log err "Your package manager has not been recognized."
        #exit 2
    #fi
#}

## =============================
## DEPENDENCIES
## =============================

## Tests based on exit codes (0 = OK)
#firefox=$(hash firefox 2> /dev/null; echo $?)
#chromium=$(hash chromium 2> /dev/null || hash chromium-browser 2> /dev/null; echo $?)
#git=$(hash git 2> /dev/null; echo $?)

#if [ "$firefox" -ne 0 ]; then
    #log warn "Firefox is necessary to use Vimperator. Installing Firefox..."
    #pkg_install "firefox"
#fi

#if [ "$chromium" -ne 0 ]; then
    #log warn "Chromium is necessary to use Vimium. Installing Chromium..."
    #if [ "$pkg_manager" = "apt" ]; then
        #pkg_install "chromium-browser"
    #else
        #pkg_install "chromium"
    #fi
#fi

#if [ "$git" -ne 0 ]; then
    #log warn "Git is necessary to clone vim-anywhere. Installing Git..."
    #pkg_install "git"
#fi

## =============================
## CORE
## =============================

## Main packages
#pkg_install

## log warn "vim-anywhere requires GNOME desktop environment (DE)"
## log warn "Do you want to install GNOME? (y/n)"
## log warn "(If you answer 'no', you will keep your DE and vim-anywhere will not be installed.)"

## ask "optional"

## if [ "$choice" = "y" ]; then
##    git clone https://github.com/cknadler/vim-anywhere.git
##    pkg_install xclip
##    bash vim-anywhere/install
##    rm -rf vim-anywhere
## fi

#log info "So far so good! Now you have to install Vimperator manually."
#log info "Firefox will open a new window at the right URL."
#log info "Please close it after the installation of Vimperator to continue with the wizard."
#read -n1 -rsp $'Press any key to continue or Ctrl+C to exit...\n'

#firefox https://addons.mozilla.org/fr/firefox/addon/vimperator/

#log info "Alright! Now you need to do the same thing for Vimium."
#log info "Chromium will open a new window at the right URL."
#log info "Please close it after the installation of Vimium to continue with the wizard."
#read -n1 -rsp $'Press any key to continue or Ctrl+C to exit...\n'

#if [ "$pkg_manager" = "apt" ]; then
    #chromium-browser https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb
#else
    #chromium https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb
#fi

#cp readline/inputrc ~/.inputrc

## -----------------------------
## Handle simple directories
## -----------------------------

## Simple means that there is only one possible config directory
## So basically it exists or not...

#handle_simple_dir() {
    #dir="$1"
    #if [ -d "$dir" ]; then
        #rm -rf "${dir:?}/*"
    #else
        #mkdir "$dir"
    #fi
#}

## -----------------------------
## (G)Vim
## -----------------------------

## vimrc & gvimrc files are generally created by the user
## They are not created automatically after an install

#handle_simple_dir ~/.vim
#cp -r vim/* ~/.vim
#mv ~/.vim/vimrc ~/.vimrc

## Plugins
#git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#vim +PluginInstall +qall

## Patched fonts
#git clone https://github.com/powerline/fonts.git
#bash fonts/install.sh
#rm -rf fonts

## -----------------------------
## i3
## -----------------------------

## i3 comes with a config directory
## It can be ~/.config/i3 or ~/.i3

#if [ -d ~/.config/i3 ]; then
    #rm -rf ~/.config/i3/*
    #cp -r i3/* ~/.config/i3
    #mv ~/.config/i3/conkyrc ~/.conkyrc
    #sudo mv ~/.config/i3/scripts/* /usr/local/bin
#else
    #rm -rf ~/.i3/*
    #cp -r i3/* ~/.i3
    #mv ~/.i3/conkyrc ~/.conkyrc
    #sudo mv ~/.i3/scripts/* /usr/local/bin
#fi

## -----------------------------
## Vifm
## -----------------------------

## Vifm comes with a config directory
## It can be ~/.config/vifm or ~/.vifm

#if [ -d ~/.config/vifm ]; then
    #rm -rf ~/.config/vifm/*
    #cp -r vifm/* ~/.config/vifm
#else
    #rm -rf ~/.vifm/*
    #cp -r vifm/* ~/.vifm
#fi

## -----------------------------
## Zathura
## -----------------------------

## Zathura normally comes with an empty config directory
## Here is the path: ~/.config/zathura

#handle_simple_dir ~/.config/zathura
#cp -r zathura/* ~/.config/zathura

## -----------------------------
## Termite
## -----------------------------

## There is usually no Termite directory after install

#handle_simple_dir ~/.config/termite
#cp -r termite/* ~/.config/termite
#echo -e "\n# Termite hack" >> ~/.bashrc
#echo "source /etc/profile.d/vte.sh" >> ~/.bashrc

## -----------------------------
## Mutt
## -----------------------------

## Mutt does not create directories or files in $HOME after install
## The user is responsible for its entire configuration (through ~/.muttrc and ~/.mutt)

#handle_simple_dir ~/.mutt
#cp -r mutt/* ~/.mutt
#mv ~/.mutt/muttrc ~/.muttrc

## -----------------------------
## Vimperator
## -----------------------------

## Vimperator should create its config directory (~/.vimperator) automatically

#handle_simple_dir ~/.vimperator
#cp -r vimperator/* ~/.vimperator
#mv ~/.vimperator/vimperatorrc ~/.vimperatorrc

## -----------------------------
## Vimium
## -----------------------------

#log info "Almost done! Now you have to configure Vimium manually."
#log info "Check the vimiumrc in the repo and copy/paste every part of the config.\n"

#if [ "$pkg_manager" = "apt" ]; then
    #chromium-browser chrome-extension://dbepggeogbaibhgnhhndojpepiihcmeb/pages/options.html
#else
    #chromium chrome-extension://dbepggeogbaibhgnhhndojpepiihcmeb/pages/options.html
#fi

## =============================
## END
## =============================

#log ok "OK"
#exit 0
