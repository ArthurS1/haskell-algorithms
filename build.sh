# A simple script to build all algorithms

echo "This script will build all algorithms:"
find . -path *.hs -type f -exec ghc -no-keep-hi-files -no-keep-o-files '{}' \;
