#! /usr/bin/env bash

START_FLAG="--start"

echo "... building images"

cd frontend || exit

export STORYBLOK_IS_PREVIEW=false
export EMAIL_SMTP=ct-secure.eu
export EMAIL_PORT=465
export EMAIL_USERNAME=contact@ct-secure.eu
export EMAIL_TARGET=webdev@wizany.at
./build.sh
cd ..

echo "++++ Building Finished ++++"

# Start Container if started with --start
if [[ "$1" == "$START_FLAG" ]]; then
  echo "Starting container"
  ./start.sh
fi
