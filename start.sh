#! /usr/bin/env bash

START_pm2="--pm2"

if [[ "$1" == "$START_pm2" ]]; then

  echo "... starting via pm2"

  cd frontend || exit
  npm install pm2
  npm run build
  pm2 start .output/server/index.mjs --name "your-app-p-3000" --env production
  pm2 ps
els
  echo "... starting containers"

  echo "... starting frontend"
  cd frontend/compose || exit
  docker-compose --env-file ../.github.env up --detach


  cd ../..
fi
  echo "++++ Started correctly ++++"
