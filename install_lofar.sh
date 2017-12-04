#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get install -y casacore-tools lofar aoflagger wsclean python-casacore dysco prefactor factor wget
apt-get autoremove
apt-get clean
# We just wanted prefactor for it's deps. The actual prefactor package is broken.
apt-get remove -y prefactor
cd /opt
wget -O- https://github.com/lofar-astron/prefactor/archive/V2.0.2.tar.gz | tar zxf -
# Fix paths in the parsets
find prefactor-2.0.2 -name "*.parset" -exec \
    sed -e "sX/homea/htb00/htb001/prefactorX/opt/prefactor-2.0.2X" \
        -e "sX/homea/htb00/htb003/local_jurecaX/usrX" \
        -e "sX/cep3home/username/Pre-Facet-Cal/skymodels/X/opt/prefactor-2.0.2/skymodels/X" \
        -e "sX/soft/wscleanX/usrX" \
        -e "sX/home/wwilliams/scripts/git/wprefactor/prefactorX/opt/prefactor-2.0.2X" \
        -e "sX/soft/lofar-220216X/usrX" \
        -e "sX/opt/cep/losoto/currentX/usrX" \
        -e "sX/homea/htb00/htb003/lofar_jureca_2.17_stack2016aX/usrX" \
        -e "sX/homea/htb00/htb003/lofar_jureca_2-15X/usrX" \
        -i {} \;
