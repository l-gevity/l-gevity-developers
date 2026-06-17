#!/usr/bin/env bash
set -euo pipefail

: "${LGEVITY_API_KEY:?Set LGEVITY_API_KEY before running this example.}"

BASE_URL="${LGEVITY_BASE_URL:-https://api.acceptance.l-gevity.nl}"

curl "${BASE_URL}/v1/intervention-recommendations" \
  -H "Content-Type: application/json" \
  -H "X-Api-Key: ${LGEVITY_API_KEY}" \
  --data-binary "@intervention-recommendation.payload.json"
