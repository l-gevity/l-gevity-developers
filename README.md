# L-GEVITY Developers

Public developer contract and integration examples for the L-GEVITY REST API.

The API gives backend integrations access to the L-GEVITY biometric and
intervention engine products through a stable HTTP JSON facade. Engine source,
account management, billing internals, and API-key management stay private.

## Base URLs

```text
Production:  https://api.l-gevity.nl
Acceptance:  https://api.acceptance.l-gevity.nl
```

## Public Contract

The OpenAPI contract is published at:

```text
openapi/public-api.v1.openapi.json
```

The public API currently contains:

```text
GET  /health
GET  /v1/manifest
POST /v1/biometric-assessments
POST /v1/intervention-recommendations
```

API-key creation, revocation, usage, billing, and account state are managed in
the authenticated L-GEVITY site, not in this public repository.

## Authentication

Product routes require an API key in the `X-Api-Key` header:

```text
X-Api-Key: YOUR_API_KEY
```

Create and manage API keys from the L-GEVITY profile page:

```text
https://l-gevity.nl/profile.html#api-keys
```

The manifest and health endpoints are public and do not require an API key.

## Idempotency

Each `POST` request requires an `Idempotency-Key` header:

```text
Idempotency-Key: 2f8c6f3e-5db7-4f3c-8bb8-18c80f33a111
```

Use the same key only when retrying the exact same request body. A replay returns
the original response and does not count as a new product call.

## Quick Start

Fetch the public manifest:

```bash
curl https://api.acceptance.l-gevity.nl/v1/manifest
```

Create a biometric assessment:

```bash
cd examples/curl
LGEVITY_API_KEY="YOUR_API_KEY" ./create-biometric-assessment.sh
```

Create intervention recommendations:

```bash
cd examples/curl
LGEVITY_API_KEY="YOUR_API_KEY" ./create-intervention-recommendations.sh
```

## Errors

Error responses use Problem Details JSON with `application/problem+json`.

Example:

```json
{
  "type": "https://api.l-gevity.nl/problems/422",
  "title": "Invalid request body",
  "status": 422,
  "detail": "biomarkers: Required",
  "requestId": "req_01JZ7Z8Y2Y5V8A9T7P6Q5R4S3T"
}
```

## Repository Boundary

This repository is intentionally small. It contains the public API contract,
examples, and publication rules. It does not contain runtime implementation,
engine internals, infrastructure configuration, customer data, secrets, or API
keys.

