# KERN suite singularity container

This is source repo for creating a Singularity container populated with
KERN suite software. KERN is a bi-annually released set of radio astronomical
software packages. It should contain most of the tools that a radio astronomer
needs to work with radio telescope data.

http://kernsuite.info/

## This fork
The default target is minimal. It has the kern repositories added but no
packages installed. `img` and `size` can be passed to `make`.
### Additional targets
- `lofar`: prefactor, factor.
- `ddf`: ddf-pipeline, KillMS, DDFacet.
- `zero`: zeros the empty space so it'll compress a little better. NB: Image
will not be sparse afterwards. (Although on my machine they're not sparce in
any case.)
- `c3se`: creates mount points used on Chalmers cluster.


## build your own

run make:
```
$ make img=ddf.img
$ make img=ddf.img ddf
$ make img=ddf.img c3se
$ make img=ddf.img zero
```
