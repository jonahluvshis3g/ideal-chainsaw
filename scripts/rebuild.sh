#!/bin/bash
set -e

cd "$(dirname "$0")/.."

echo "Building Packages..."

if ! command -v dpkg-scanpackages >/dev/null 2>&1; then
    echo "dpkg-scanpackages not found."
    echo "macOS: brew install dpkg"
    echo "Debian/Ubuntu: sudo apt install dpkg-dev bzip2"
    exit 1
fi

dpkg-scanpackages -m debs /dev/null > Packages
bzip2 -c9 Packages > Packages.bz2

echo "Done."
echo "Packages: $(grep -c '^Package:' Packages 2>/dev/null || true)"
