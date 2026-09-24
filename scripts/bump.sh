#!/bin/sh
# Usage: scripts/bump.sh Casks/pinch.rb 1.0.2 <sha256>
set -e
file="$1"; version="$2"; sha256="$3"
[ -f "$file" ] && [ -n "$version" ] && [ -n "$sha256" ] || { echo "usage: $0 <file> <version> <sha256>" >&2; exit 1; }
sed -i.bak -E "s/^(  version )\".*\"/\1\"$version\"/; s/^(  sha256 )\".*\"/\1\"$sha256\"/" "$file"
rm -f "$file.bak"
grep -q "version \"$version\"" "$file" && grep -q "sha256 \"$sha256\"" "$file" || { echo "bump.sh: $file did not change as expected" >&2; exit 1; }
