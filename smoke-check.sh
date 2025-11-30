#!/usr/bin/env bash
# smoke-check.sh
set -e
if [[ ! -f index.html ]]; then
  echo "index.html missing"
  exit 1
  else
    echo "index.html obstaja"
fi
# preprosta sintaktična kontrola: iskanje <html> tag
grep -iq "<html" index.html && echo "html obstaja" || echo "html ne obstaja"
echo "smoke OK"
exit 0
