export INCLUDE_XWAYLAND=1
export WLROOT=/data/Wayland
export WLD=/usr/local/   # change this to another location if you prefer

if [ "$(uname -i)" = "i386" ]; then
	export WL_BITS=32
else
	export WL_BITS=64
fi

XWAYLAND=${WLD}/bin/Xwayland
export DISTCHECK_CONFIGURE_FLAGS="--with-xserver-path=$XWAYLAND"

export PATH=${HOME}/.local/bin:$PATH
export ACLOCAL_PATH="$WLD/share/aclocal"
export ACLOCAL="aclocal -I $ACLOCAL_PATH"

