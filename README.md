# L-GEVITY REST-API for Developers

The L-GEVITY API lets backend applications submit biomarker measurements and
receive structured longevity analysis over HTTP JSON. Integrations can fetch the
public biomarker manifest and create a biometric assessment.

Use the API when you want to add L-GEVITY engine output to another product,
dashboard, coach workflow, lab portal, or internal health application without
embedding the engine itself. The API returns machine-readable results; account
management, API-key creation, billing, and engine source code stay outside this
public repository.

## Start Here

1. Inspect the public input manifest:

   ```bash
   curl https://api.acceptance.l-gevity.nl/v1/manifest
   ```

   See the [manifest HTTP request](examples/http/manifest.http) and
   [complete manifest example](docs/complete-manifest.md).

2. Create an API key from the authenticated
   [L-GEVITY profile page](https://l-gevity.nl/profile.html#api-keys).

3. Choose the matching API base URL:

   | Key prefix | Base URL                             |
   | ---------- | ------------------------------------ |
   | `lg_test_` | `https://api.acceptance.l-gevity.nl` |
   | `lg_live_` | `https://api.l-gevity.nl`            |

4. Run a product example:

   ```bash
   git clone https://github.com/l-gevity/l-gevity-developers.git
   cd l-gevity-developers/examples/curl

   export LGEVITY_API_KEY="YOUR_API_KEY"
   export LGEVITY_BASE_URL="https://api.acceptance.l-gevity.nl"

   ./create-biometric-assessment.sh
   ```

   Related examples:

   - [Curl script](examples/curl/create-biometric-assessment.sh)
   - [Curl payload](examples/curl/biometric-assessment.payload.json)
   - [HTTP request](examples/http/create-biometric-assessment.http)
   - [Node.js fetch example](examples/node/create-biometric-assessment.mjs)
   - [Example response](examples/responses/biometric-assessment.response.json)

5. Read the [response guide](docs/response-guide.md).

## Base URLs

```text
Production:  https://api.l-gevity.nl
Acceptance:  https://api.acceptance.l-gevity.nl
```

## What The API Does

| Need                                                        | Endpoint                                                                           | Auth        |
| ----------------------------------------------------------- | ---------------------------------------------------------------------------------- | ----------- |
| Discover supported products and biomarker input codes       | [`GET /v1/manifest`](examples/http/manifest.http)                                  | None        |
| Convert biomarker values into a biometric engine assessment | [`POST /v1/biometric-assessments`](examples/http/create-biometric-assessment.http) | `X-Api-Key` |

## API Functionality

The public API exposes the biometric assessment layer of L-GEVITY's longevity
platform. It is built for backend systems that already collect health
measurements and need structured engine output without embedding the L-GEVITY
engine.

The workflow follows the product flow from measurement to interpretation:

1. Discover supported biomarker inputs with `GET /v1/manifest`. The manifest
   lists the input codes, display names, units, and value types that clients can
   use to build validation and mapping logic.
2. Submit measured values with `POST /v1/biometric-assessments`. The API accepts
   blood values, body composition, fitness, cognition, movement, and lifestyle
   biomarkers when they are available.
3. Receive a machine-readable assessment. The response includes a compact
   `biologicalValue`, a `dataCurrency` signal, ranked `riskBands`, and the
   detailed `engineResult` for deeper analytics.

The API is intentionally stateless from the integrator's point of view: each
assessment is calculated from the submitted payload, and the public contract does
not expose account, profile, billing, or action-planning workflows.

The API is designed for server-to-server use. Keep API keys on your backend; do
not put them in browser JavaScript, mobile apps, public repositories, logs, or
screenshots.

This public API does not create accounts, manage API keys, expose billing
records, store user profiles, or publish engine source code.

## Request Model

Product requests send one JSON object with a `biomarkers` array:

```json
{
  "biomarkers": [
    { "code": "birthYear", "value": 1984, "unit": "year" },
    { "code": "gender", "value": "male" },
    { "code": "waistToHeightRatio", "value": 0.52, "unit": "ratio" }
  ]
}
```

Use `GET /v1/manifest` to discover valid biomarker `code` values, display names,
supported units, and value types. `unit` is optional in the request. Include
`birthYear` and `gender` when available because age- and sex-aware calculations
produce better output.

## Contract And Examples

The OpenAPI contract is published at
[openapi/public-api.v1.openapi.json](openapi/public-api.v1.openapi.json).

Examples and curl payloads are published in [examples/README.md](examples/README.md).

The examples include curl, `.http`, and Node.js `fetch` examples. There is no
official SDK yet; the OpenAPI contract can be used to generate one inside your
own stack.

The complete manifest example is published at
[docs/complete-manifest.md](docs/complete-manifest.md).

The first-run guide is published at [docs/getting-started.md](docs/getting-started.md).

The response guide is published at [docs/response-guide.md](docs/response-guide.md).

## Authentication

Product routes require an API key in the `X-Api-Key` header:

```text
X-Api-Key: YOUR_API_KEY
```

Create and manage API keys from the
[L-GEVITY profile page](https://l-gevity.nl/profile.html#api-keys).

The manifest endpoint is public and does not require an API key.

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

Common causes:

| Status | Meaning                             | First check                                          |
| ------ | ----------------------------------- | ---------------------------------------------------- |
| `400`  | Malformed HTTP request              | JSON syntax and `Content-Type: application/json`     |
| `401`  | Missing or invalid API key          | `X-Api-Key`, key prefix, and matching base URL       |
| `422`  | Valid JSON but invalid request body | Required fields, biomarker array shape, value types  |
| `503`  | Temporary service outage            | Retry later with normal backoff                      |

## Repository Boundary

This repository is intentionally small. It contains the public API contract,
examples, and publication rules. It does not contain runtime implementation,
engine internals, infrastructure configuration, customer data, secrets, or API
keys.
