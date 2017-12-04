img?=kern-2.img
size?=2000

.PHONY: bootstrap upgrade list lofar ddf zero c3se

all: bootstrap

${img}:
	sudo singularity create -s ${size} ${img}

bootstrap: ${img}
	sudo singularity bootstrap ${img} Singularity

upgrade:
	sudo singularity exec --writable ${img} apt-get update
	sudo singularity exec --writable ${img} apt-get upgrade

list:
	curl -s http://ppa.launchpad.net/kernsuite/kern-2/ubuntu/dists/xenial/main/binary-amd64/Packages.gz | zgrep Package | awk {'print $$2}' | xargs echo

lofar:
	sudo singularity exec --writable ${img} bash install_lofar.sh

ddf:
	sudo singularity exec --writable ${img} bash install_ddf.sh

zero:
	sudo singularity exec --writable ${img} bash zero.sh

# Mount points for Chalmers cluster
c3se:
	sudo singularity exec --writable ${img} mkdir -p /c3se /local /apps /usr/share/lmod/lmod /var/hasplm

