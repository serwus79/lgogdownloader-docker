#!/bin/bash

docker compose run --rm gog \
  --directory /downloads \
  --repair --download \
  --language pl+en \
  --save-serials \
  --save-game-details-json \
  --save-logo \
  --save-ico \
  --check-free-space
