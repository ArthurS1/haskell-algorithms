# A simple script to clean all algorithms executables

echo "This script will clean the following executables:"
find . -maxdepth 2 -mindepth 2 -type f -executable -print -delete
