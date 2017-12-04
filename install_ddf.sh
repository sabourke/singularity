#!/bin/sh

export DEBIAN_FRONTEND="noninteractive"
apt-get install -y casacore-tools python-lofar git build-essential cmake cython python-casacore gfortran libboost-python1.58-dev python-pip python-astropy python-pyregion python-emcee python-ephem python-deap libfftw3-dev python-psutil python-pyfits python-requests wget
apt-get autoremove
apt-get clean

# Install non-ubuntu/kern Python packages needed for DDF
pip install --upgrade pip
pip install reproject Polygon2 pyFFTW SharedArray py-cpuinfo numexpr git+https://github.com/lofar-astron/PyBDSF

# Install ddf-pipeline (includes KillMS and DDFacet)
mkdir /opt/DDF
cd /opt/DDF
git clone https://github.com/mhardcastle/ddf-pipeline.git
./ddf-pipeline/scripts/install.sh
ln -s lib.linux-x86_64-2.7 DDFacet/build/lib
# Modify tier1.cfg example to local system
sed -e "/cache_dir/d" -e "sX/stri-data/mjh/tgssX/opt/DDF/catalogsX" -e "sX/stri-data/mjh/bootstrapX/opt/DDF/catalogsXg" ddf-pipeline/examples/tier1.cfg > tier1.cfg

# Catalogs used by tier1.cfg
mkdir catalogs
cd catalogs
wget http://www.extragalactic.info/bootstrap/VLSS.fits
wget http://www.extragalactic.info/bootstrap/wenss.fits
wget http://tgssadr.strw.leidenuniv.nl/catalogs/TGSSADR1_7sigma_catalog.fits

# Add ddf initialisation to main bashrc
sed -i -e "3i. /opt/DDF/init.sh" /etc/bash.bashrc
