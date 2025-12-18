# Exporting environtment variables
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.local/share"

# Other env variables
export HISTFILE="${XDG_STATE_HOME}"/bash/history
export CALCHISTFILE="$XDG_CACHE_HOME"/calc_history
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrcERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"
export IPYTHONDIR="${XDG_CONFIG_HOME}/ipython"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
ERRFILE="$XDG_CACHE_HOME/X11/xsession-errors"
export XCOMPOSECACHE="${XDG_CACHE_HOME}"/X11/xcompose

# Startship
export STARSHIP_CACHE=~/.starship/cache

# FZF Color scheme
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' --color bw'

# Exporting paths
export PATH="/opt/anaconda/bin:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="~/.cargo/bin:$PATH"
export PATH="~/.local/share/gem/ruby/3.4.0/bin:$PATH"
export LIBRARY_PATH=/usr/lib:$LIBRARY_PATH

# Exporting android paths
export ANDROID_HOME="$HOME/Android/Sdk"
# export ANDROID_SDK_ROOT="$HOME/Android/Sdk/platform-tools/34.0.0"
export ANDROID_NDK_ROOT="$HOME/Android/Sdk/ndk/26.1.10909125"
export PATH="$HOME/Android/tools:$PATH"
export PATH="$HOME/Android/platform-tools:$PATH"
export PATH="$ANDROID_HOME/cmdline-tools/latest/bin:$PATH"
export PATH="$ANDROID_HOME/build-tools/34.0.0:$PATH"

export PATH="$HOME/.scripts:$PATH"

export EDITOR="nvim"
export SUDO_EDITOR="nvim"

# Browser
export BROWSER="firefox"

# Variables from Hyprland
export XDG_SESSION_TYPE="wayland"
export XDG_CURRENT_DESKTOP="river"
export XDG_SESSION_DESKTOP="river"
# export QT_QPA_PLATFORMTHEME="qt5ct"
export QT_QPA_PLATFORMTHEME="gtk3"
export QT_QPA_PLATFORM="wayland"
export MOZ_ENABLE_WAYLAND="1"
export GDK_BACKEND="wayland"
#export GDK_SCALE="0.711" # Fractional scaling breaks android studio
export WLR_DRM_NO_ATOMIC="1"
export _JAVA_AWT_WM_NONREPARENTING="1"
export SDL_VIDEODRIVER="wayland"
export CLUTTER_BACKEND="wayland"

# DBUS
export $(dbus-launch)
