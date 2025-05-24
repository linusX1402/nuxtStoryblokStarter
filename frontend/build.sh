#! /usr/bin/env bash

DOCKERFILE="./compose/github.Dockerfile"

echo "building frontend image"
echo ============================================================
echo "preview state: $STORYBLOK_IS_PREVIEW"
echo "e-mail sender: $EMAIL_USERNAME"
echo "e-mail receiver: $EMAIL_TARGET"
echo ============================================================

npm install
npm run build

echo "Building image"
  docker build \
      --build-arg STORYBLOK_IS_PREVIEW="$STORYBLOK_IS_PREVIEW" \
      --build-arg EMAIL_USERNAME="$EMAIL_USERNAME" \
      --build-arg EMAIL_TARGET="$EMAIL_TARGET" \
      --build-arg EMAIL_SMTP="$EMAIL_SMTP" \
      --build-arg EMAIL_PORT="$EMAIL_PORT" \
      -t cts-frontend -f $DOCKERFILE .