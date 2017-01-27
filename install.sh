#!/bin/bash

################################
######## VIMPRESSIONIST ########
################################

set -e

# =============================
# LOG 
# =============================

log() {
    type="$1"
    str="$2"

    case "$type" in
        err) echo -e "\033[0;31m$str\033[0m" 1>&2 ;;
        warn) echo -e "\033[0;33m$str\033[0m" ;;
        info) echo -e "\033[0;36m$str\033[0m" ;;
        ok) echo -e "\033[0;32m$str\033[0m" ;;
    esac
}

# =============================
# INTERACTIVE CMD 
# =============================

ask() {
    read -r choice
    while [[ ! "$choice" =~ ^(y|n)$ ]]; do
        log err "Invalid choice. Please enter 'y' (yes) or 'n' (no)."
        read -r choice
    done

    if [ "$choice" = "n" ]; then
        log ok "Bye"
        exit 1
    fi
}

# =============================
# DISCLAIMER 
# =============================

log warn "You are going to install \033[1;33mVimpressionist\033[0m."
log warn "This will replace your configuration for each Vim-like app."
log warn "You will also need a working Internet connection.\n"
log warn "Do you really want to continue? (y/n)"

ask

# =============================
# PACKAGE MANAGEMENT 
# =============================

pkg_manager=""

test_pkg() {
    if hash "$1" 2> /dev/null; then
        pkg_manager="$1"
    fi
}

test_pkg "pacman"
test_pkg "apt"
test_pkg "yum"
test_pkg "zypper"

pkg_install() {
    # Arch & Co. 
    if [ "$pkg_manager" = "pacman" ]; then
        sudo pacman -S --noconfirm "$@"
    # Debian & Co. 
    elif [ "$pkg_manager" = "apt" ]; then
        sudo apt-get --assume-yes install "$@"
    # Red Hat & Co. 
    elif [ "$pkg_manager" = "yum" ]; then
        sudo yum --assumeyes install "$@"
    # openSUSE
    elif [ "$pkg_manager" = "zypper" ]; then
        sudo zypper --non-interactive install "$@" 
    else
        log err "Your package manager has not been recognized."
        exit 2
    fi
}

# =============================
# DEPENDENCIES 
# =============================

# Tests based on exit codes (0 = OK)
firefox=$(hash firefox 2> /dev/null; echo $?)
chromium=$(hash chromium 2> /dev/null || hash chromium-browser 2> /dev/null; echo $?)
git=$(hash git 2> /dev/null; echo $?)

if [ "$firefox" -ne 0 ]; then
    log warn "Firefox is necessary to use Vimperator. Installing Firefox..."
    pkg_install "firefox"
fi

if [ "$chromium" -ne 0 ]; then
    log warn "Chromium is necessary to use Vimium. Installing Chromium..."
    if [ "$pkg_manager" = "apt" ]; then
        pkg_install "chromium-browser"
    else
        pkg_install "chromium"
    fi
fi

if [ "$git" -ne 0 ]; then
    log warn "Git is necessary to clone vim-anywhere. Installing Git..."
    pkg_install "git"
fi

# =============================
# CORE 
# =============================

pkg_install i3 dmenu vim gvim vifm zathura termite mutt cmus lynx conky

git clone https://github.com/cknadler/vim-anywhere.git
bash vim-anywhere/install
rm -rf vim-anywhere

log info "So far so good! Now you have to install Vimperator and Vimium manually."
read -n1 -rsp $'Press any key to continue or Ctrl+C to exit...\n'

firefox https://addons.mozilla.org/fr/firefox/addon/vimperator/

if [ "$pkg_manager" = "apt" ]; then
    chromium-browser https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb
else
    chromium https://chrome.google.com/webstore/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb
fi

# -----------------------------
# i3
# -----------------------------

if [ -f ~/.config/i3/config ]; then
    rm -rf ~/.config/i3/*
    cp -r i3/* ~/.config/i3
    mv ~/.config/i3/conkyrc ~/.conkyrc
else
    if [ -f ~/.i3/config ]; then
        rm -rf ~/.i3
    fi
    mkdir ~/.i3
    cp -r i3/* ~/.i3
    mv ~/.i3/conkyrc ~/.conkyrc
fi

# -----------------------------
# (G)Vim
# -----------------------------

if [ -f ~/.vimrc ] || [ -f ~/.gvimrc ]; then
    if [ -d ~/.vim ]; then
        rm -rf ~/.vim
    fi
    mkdir ~/.vim
    cp -r vim/* ~/.vim
    mv ~/.vim/vimrc ~/.vimrc
fi

# -----------------------------
# Vifm
# -----------------------------

if [ -f ~/.config/vifm/vifmrc ]; then
    rm -rf ~/.config/vifm/*
    cp -r vifm/* ~/.config/vifm
else
    if [ -f ~/.vifm/vifmrc ]; then
        rm -rf ~/.vifm
    fi
    mkdir ~/.vifm
    cp -r vifm/* ~/.vifm
fi

# -----------------------------
# Zathura 
# -----------------------------

if [ -f ~/.config/zathura/zathurarc ]; then
    rm -rf ~/.config/zathura/*
    cp -r zathura/* ~/.config/zathura
fi

# -----------------------------
# Termite 
# -----------------------------

if [ -f ~/.config/termite/config ]; then
    mv termite/config ~/.config/termite/config
fi

# -----------------------------
# Mutt 
# -----------------------------

if [ -f ~/.muttrc ]; then
    if [ -d ~/.mutt ]; then
        rm -rf ~/.mutt
    fi
    mkdir ~/.mutt
    cp -r mutt/* ~/.mutt
    mv ~/.mutt/muttrc ~/.muttrc
else
    if [ -f ~/.mutt/muttrc ]; then
        rm -rf ~/.mutt/*
        cp -r mutt/* ~/.mutt
    fi
fi

# -----------------------------
# Vimperator 
# -----------------------------

if [ -f ~/.vimperatorrc ]; then
    if [ -d ~/.vimperator ]; then
        rm -rf ~/.vimperator
    fi
    mkdir ~/.vimperator
    cp -r vimperator/* ~/.vimperator
    mv ~/.vimperator/vimperatorrc ~/.vimperatorrc
fi

# -----------------------------
# Vimium
# -----------------------------

log info "Almost done! Now you have to configure Vimium manually."
log info "Check the vimiumrc in the repo and copy/paste every part of the config.\n"
log info "Do you want to open the Vimium configuration page in Chromium? (y/n)"

ask

if [ "$pkg_manager" = "apt" ]; then
    chromium-browser chrome-extension://dbepggeogbaibhgnhhndojpepiihcmeb/pages/options.html
else
    chromium chrome-extension://dbepggeogbaibhgnhhndojpepiihcmeb/pages/options.html
fi

# =============================
# END 
# =============================

log ok "OK"
exit 0
