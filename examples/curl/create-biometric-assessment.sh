#!/usr/bin/env bash
set -euo pipefail

: "${LGEVITY_API_KEY:?Set LGEVITY_API_KEY before running this example.}"

BASE_URL="${LGEVITY_BASE_URL:-https://api.acceptance.l-gevity.nl}"
IDEMPOTENCY_KEY="${LGEVITY_IDEMPOTENCY_KEY:-$(uuidgen)}"

curl "${BASE_URL}/v1/biometric-assessments" \
  -H "Content-Type: application/json" \
  -H "X-Api-Key: ${LGEVITY_API_KEY}" \
  -H "Idempotency-Key: ${IDEMPOTENCY_KEY}" \
  --data-binary "@biometric-assessment.payload.json"

