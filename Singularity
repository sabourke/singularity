Bootstrap: debootstrap
MirrorURL: http://archive.ubuntu.com/ubuntu/
OSVersion: xenial
Include: software-properties-common
%post
    add-apt-repository -s ppa:kernsuite/kern-2
    apt-add-repository multiverse
    apt-add-repository restricted
    apt-get update
    apt-get dist-upgrade -y
    apt-get install -y \
        cassbeam python-qwt5-qt4 python-qwt5-doc tempo purify casacore-dev casacore-doc casacore-tools casarest casacore-data meqtrees-timba python-purr python-tigger python-meqtrees-cattery python-owlcat python-kittens python-pyxis python-meqtrees-timba makems rpfits lofar meqtrees libmeqtrees-timba0 aoflagger wsclean sagecal mt-imager oskar python-casacore python-attrdict python-montblanc python-pymoresane obit parseltongue libcasasynthesis-dev libcasasynthesis1 libspdlog-dev libcasa-casa2 libcasa-coordinates2 libcasa-derivedmscal2 libcasa-fits2 libcasa-images2 libcasa-lattices2 libcasa-meas2 libcasa-measures2 libcasa-mirlib2 libcasa-ms2 libcasa-msfits2 libcasa-python2 libcasa-python3-2 libcasa-scimath-f2 libcasa-scimath2 libcasa-tables2 python3-casacore psrcat presto tempo2 sigproc psrchive multinest dspsr python-presto python-sourcery singularity-container chgcentre python-tkp libsopt-dev libsopt2.0 libpurify-dev libpurify2.0 aoflagger-dev libaoflagger0 libwsclean0 wsclean-dev python-katversion python-katpoint python-katdal python-rfimasker simfast21 dysco 21cmfast libapplcommon libawimager2lib libbbscontrol libbbskernel libblob libcommon libdocker libdppp-aoflag libdppp libelementresponse liblmwcommon liblofar-pyparameterset liblofar-pyparmdb liblofar-pystationresponse liblofar-pytools liblofarft liblofarstman libmessagebus libms libmslofar libparmdb libplc libpythondppp libspwcombine libstationresponse libtransport lofar-dev lofar-doc python-lofar stimela msutils simms casalite cub-dev python-transitions python3-transitions python-scatterbrane tmv-dev tmv0 galsim-dev galsim0 galsim python-galsim drive-casa sigpyproc
    apt-get clean
    pip install --upgrade pip virtualenv
