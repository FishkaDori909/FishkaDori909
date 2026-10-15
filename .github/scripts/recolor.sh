#!/usr/bin/env bash
# Перекрашивает карточки статистики (тема tokyonight) в палитру профиля
set -e
SRC=profile-summary-card-output/tokyonight
DST=profile-summary-card-output/custom
rm -rf "$DST" && cp -r "$SRC" "$DST"
sed -i -E \
  -e 's/stroke="#1a1b27"/stroke="#d0d7de"/I' \
  -e 's/#1a1b27/#ffffff/gI' \
  -e 's/#70a5fd/#1f2328/gI' \
  -e 's/#38bdae/#1a7f37/gI' \
  -e 's/#bf91f3/#a4243b/gI' \
  "$DST"/*.svg
