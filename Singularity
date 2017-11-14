Bootstrap: debootstrap
MirrorURL: http://se.archive.ubuntu.com/ubuntu/
OSVersion: xenial
Include: software-properties-common
%post
    add-apt-repository "deb http://se.archive.ubuntu.com/ubuntu/ xenial-updates main restricted"
    add-apt-repository "deb http://se.archive.ubuntu.com/ubuntu/ xenial-backports main restricted"
    add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main restricted"
    add-apt-repository ppa:kernsuite/kern-2
    apt-add-repository multiverse
    apt-add-repository restricted
    apt-get update
    apt-get dist-upgrade -y
    apt-get install -y casacore-tools lofar aoflagger wsclean python-casacore dysco prefactor factor vim-gtk
    apt-get autoremove
    apt-get clean
    mkdir -p /c3se /local /apps /usr/share/lmod/lmod /var/hasplm
    cat /dev/zero > /zero.bin || true
    sync
    rm /zero.bin
