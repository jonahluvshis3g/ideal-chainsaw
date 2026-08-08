# Ideal Chainsaw iOS 6 Cydia Repo

Repo URL for Cydia:

    https://ideal-chainsaw.org/

Upload the contents of this folder to the web root for ideal-chainsaw.org.

## Structure

- `Release`
- `Packages`
- `Packages.bz2`
- `debs/`
- `depictions/`
- `scripts/rebuild.sh`

## Add packages

Put `.deb` files in:

    debs/

Then run:

    chmod +x scripts/rebuild.sh
    ./scripts/rebuild.sh

This rebuilds `Packages` and `Packages.bz2`.

## Example package control metadata

    Package: com.ideal-chainsaw.mytweak
    Name: My Tweak
    Version: 1.0
    Architecture: iphoneos-arm
    Description: Example tweak for iOS 6
    Maintainer: Ideal Chainsaw
    Author: Ideal Chainsaw
    Section: Tweaks
    Depends: firmware (>= 6.0)
    Depiction: https://ideal-chainsaw.org/depictions/com.ideal-chainsaw.mytweak.html

The generated package index will use paths like:

    Filename: debs/com.ideal-chainsaw.mytweak_1.0_iphoneos-arm.deb

Cydia will therefore fetch the package from:

    https://ideal-chainsaw.org/debs/com.ideal-chainsaw.mytweak_1.0_iphoneos-arm.deb
