#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
apt-get install -y casacore-tools lofar aoflagger wsclean python-casacore dysco prefactor factor
apt-get autoremove
apt-get clean
