#!/bin/bash -e
# vim: set ts=4 sw=4 sts=4 et :

source "${SCRIPTSDIR}/vars.sh"
source "${SCRIPTSDIR}/distribution.sh"

##### '=========================================================================
debug ' Cleaning up...'
##### '=========================================================================

# ==============================================================================
# Execute any template flavor or sub flavor 'pre' scripts
# ==============================================================================
buildStep "${0}" "pre"

#### '-------------------------------------------------------------------------
info ' Cleaning up  any left over files from installation'
#### '-------------------------------------------------------------------------
rm -rf "${INSTALLDIR}/var/cache/apt/archives"
rm -rf "${INSTALLDIR}/var/cache/apt/pkgcache.bin"
rm -rf "${INSTALLDIR}/var/cache/apt/srcpkgcache.bin"
rm -f "${INSTALLDIR}/etc/apt/sources.list.d/qubes-builder.list"
rm -rf "${INSTALLDIR}/${TMPDIR}"

# ==============================================================================
# Execute any template flavor or sub flavor 'post' scripts
# ==============================================================================
buildStep "${0}" "post"
