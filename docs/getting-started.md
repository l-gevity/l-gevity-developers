# Getting Started

This guide walks through the full developer journey from discovery to the first
successful authenticated product call.

## 1. Confirm The API Fits Your Integration

Use the L-GEVITY API when your backend already has biomarker measurements and
wants JSON output from the L-GEVITY engines.

Use cases:

- show a biometric assessment in another dashboard
- enrich a lab, coach, or clinic workflow with L-GEVITY scores
- request ranked lifestyle and intervention recommendations from submitted data
- validate supported biomarker input fields against the manifest

Out of scope:

- browser-only integrations, because API keys must stay secret
- account creation, login, billing, or API-key management through this public repo
- storing user profiles in the public API
- embedding or redistributing the engine source code

## 2. Fetch The Manifest

The manifest is public metadata. It tells you which products and biomarker input
codes are available.

```bash
curl https://api.acceptance.l-gevity.nl/v1/manifest
```

Each biomarker has:

- `code`: send this exact value in request bodies
- `name`: human-readable label
- `units`: supported units when a unit is useful
- `valueType`: `number`, `string`, or `boolean`

`unit` is optional in product requests. Send it when your source system tracks
one; omit it for categorical fields or fields with no listed unit.

## 3. Create An API Key

Create and manage API keys from the authenticated L-GEVITY profile page:

```text
https://l-gevity.nl/profile.html#api-keys
```

Keys are shown once. Store the value in your secret manager immediately.

Use the key prefix to choose the base URL:

| Key prefix | Environment | Base URL |
| ---------- | ----------- | -------- |
| `lg_test_` | Acceptance | `https://api.acceptance.l-gevity.nl` |
| `lg_live_` | Production | `https://api.l-gevity.nl` |

## 4. Run The Curl Examples

```bash
git clone https://github.com/l-gevity/l-gevity-developers.git
cd l-gevity-developers/examples/curl

export LGEVITY_API_KEY="YOUR_API_KEY"
export LGEVITY_BASE_URL="https://api.acceptance.l-gevity.nl"

./create-biometric-assessment.sh
./create-intervention-recommendations.sh
```

The product calls return `201 Created`, a `Location` header, and a JSON response
body. Each successful product response contains `billableUnits`.

## 5. Build Your Request Body

Both product endpoints use the same request shape:

```json
{
  "biomarkers": [
    { "code": "birthYear", "value": 1984, "unit": "year" },
    { "code": "gender", "value": "male" },
    { "code": "waistToHeightRatio", "value": 0.52, "unit": "ratio" }
  ]
}
```

Rules:

- `biomarkers` is required and must contain 1 to 100 items
- every item requires `code` and `value`
- `value` must match the manifest value type
- `unit` and `measuredAt` are optional
- include `birthYear` and `gender` when available for better age- and sex-aware output

## 6. Choose The Product Endpoint

Use `POST /v1/biometric-assessments` when you need a compact assessment with
scores, data currency, risk bands, and the detailed engine result.

Use `POST /v1/intervention-recommendations` when you need ranked interventions
from the L-GEVITY intervention catalogue. This route runs the biometric analysis
internally and then ranks actionable interventions.

## 7. Handle Errors

All errors use Problem Details JSON:

```json
{
  "type": "https://api.l-gevity.nl/problems/422",
  "title": "Invalid request body",
  "status": 422,
  "detail": "biomarkers: Required",
  "requestId": "req_01JZ7Z8Y2Y5V8A9T7P6Q5R4S3T"
}
```

Log `requestId` in your backend. Do not log API keys or private health data.

Troubleshooting:

| Symptom | Likely cause | Fix |
| ------- | ------------ | --- |
| `401 Invalid API key` | Key missing, mistyped, revoked, or used against the wrong environment | Check `X-Api-Key`, key prefix, and base URL |
| `422 Invalid request body` | Request shape does not match the OpenAPI schema | Validate against `openapi/public-api.v1.openapi.json` |
| Empty or weak recommendations | Too little actionable biomarker data | Add more measured biomarkers from the manifest |
| Unexpected field names | Raw engine result contains detailed engine-native keys | Use `docs/response-guide.md` for stable integration fields |

