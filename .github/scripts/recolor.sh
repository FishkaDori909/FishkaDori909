#!/usr/bin/env bash
# Перекрашивает карточки статистики (тема tokyonight) в палитру профиля
set -e
SRC=profile-summary-card-output/tokyonight
DST=profile-summary-card-output/custom
rm -rf "$DST" && cp -r "$SRC" "$DST"
sed -i -E \
  -e 's/stroke="#1a1b27"/stroke="#30363d"/I' \
  -e 's/#1a1b27/#0d1117/gI' \
  -e 's/#70a5fd/#e6edf3/gI' \
  -e 's/#38bdae/#56d364/gI' \
  -e 's/#bf91f3/#c9506b/gI' \
  "$DST"/*.svg
