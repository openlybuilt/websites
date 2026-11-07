#!/bin/sh
set -eu

cd "$(dirname "$0")"

for site in openly cua design; do
  pnpm --dir "$site" install --frozen-lockfile
  pnpm --dir "$site" build
done

rm -rf dist
mkdir -p dist/cua dist/design
cp -R openly/dist/. dist/
cp -R cua/dist/. dist/cua/
cp -R design/dist/. dist/design/
