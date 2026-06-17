# L-GEVITY Developers

The L-GEVITY API lets backend applications submit biomarker measurements and
receive structured longevity analysis over HTTP JSON. Integrations can fetch the
public biomarker manifest, create a biometric assessment, and request ranked
intervention recommendations from the L-GEVITY intervention catalogue.

Use the API when you want to add L-GEVITY engine output to another product,
dashboard, coach workflow, lab portal, or internal health application without
embedding the engine itself. The API returns machine-readable results; account
management, API-key creation, billing, and engine source code stay outside this
public repository.

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

Examples and curl payloads are published at:

```text
examples/README.md
```

The complete manifest example is published at:

```text
docs/complete-manifest.md
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
