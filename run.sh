#!/bin/bash

docker compose run --rm gog \
  --directory /downloads \
  --download \
  --new --updated --clear-update-flags --delete-orphans \
  --language pl+en \
  --save-serials \
  --save-game-details-json \
  --save-logo \
  --save-ico \
  --check-free-space \
  --threads 4 \
  --include-hidden-products \
  --platform all \
  --create-xml automatic \
  --exclude patches
