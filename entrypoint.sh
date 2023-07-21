# Setup a vtty to convice xorg to start?
sudo ln -snf /dev/ptmx /dev/tty7
sudo nvidia-xconfig

export DISPLAY=":0"

Xorg vt7 -novtswitch -sharevts "${DISPLAY}" &
bash
