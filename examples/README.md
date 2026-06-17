# Examples

These examples use the acceptance API by default:

```text
https://api.acceptance.l-gevity.nl
```

Use the production base URL when your integration is ready:

```text
https://api.l-gevity.nl
```

Run commands from the repository root unless a command says otherwise.

Runnable HTTP request files live in:

```text
examples/http/
```

Runnable Node.js examples live in:

```text
examples/node/
```

Response fixtures live in:

```text
examples/responses/
```

For the full first-run journey, start with:

```text
docs/getting-started.md
```

For response field meanings, use:

```text
docs/response-guide.md
```

The curl scripts read these environment variables:

| Variable | Required | Default |
| -------- | -------- | ------- |
| `LGEVITY_API_KEY` | Yes | none |
| `LGEVITY_BASE_URL` | No | `https://api.acceptance.l-gevity.nl` |

## GET /v1/manifest

Returns the public product list and biomarker input manifest. This endpoint does
not require an API key.

```bash
curl https://api.acceptance.l-gevity.nl/v1/manifest
```

Request file:

```text
examples/http/manifest.http
```

Use the complete static response example in:

```text
docs/complete-manifest.md
```

## POST /v1/biometric-assessments

Creates a biometric assessment from submitted biomarker values.

Required headers:

```text
Content-Type: application/json
X-Api-Key: YOUR_API_KEY
```

Request:

```bash
curl https://api.acceptance.l-gevity.nl/v1/biometric-assessments \
  -H "Content-Type: application/json" \
  -H "X-Api-Key: YOUR_API_KEY" \
  --data-binary "@examples/curl/biometric-assessment.payload.json"
```

Request file:

```text
examples/http/create-biometric-assessment.http
```

Request body:

```json
{
  "biomarkers": [
    { "code": "birthYear", "value": 1984, "unit": "year" },
    { "code": "gender", "value": "male" },
    { "code": "height", "value": 180, "unit": "cm" },
    { "code": "bodyWeight", "value": 86, "unit": "kg" },
    { "code": "waistCircumference", "value": 94, "unit": "cm" },
    { "code": "systolicBP", "value": 132, "unit": "mmHg" },
    { "code": "diastolicBP", "value": 84, "unit": "mmHg" },
    { "code": "ldlCholesterol", "value": 3.1, "unit": "mmol/L" },
    { "code": "hdlCholesterol", "value": 1.4, "unit": "mmol/L" },
    { "code": "triglycerides", "value": 1.2, "unit": "mmol/L" },
    { "code": "hba1c", "value": 5.5, "unit": "%" },
    { "code": "hsCRP", "value": 1.8, "unit": "mg/L" },
    { "code": "vo2max", "value": 42, "unit": "ml/kg/min" },
    { "code": "dailySteps", "value": 7200, "unit": "steps/day" },
    { "code": "sleepHours", "value": 7 }
  ]
}
```

Successful responses return `201`, a `Location` header, and a JSON body.

Response fixture:

```text
examples/responses/biometric-assessment.response.json
```

Node.js example:

```bash
cd examples/node
LGEVITY_API_KEY="YOUR_API_KEY" node create-biometric-assessment.mjs
```

## POST /v1/intervention-recommendations

Creates ranked intervention recommendations from submitted biomarker values.

Required headers:

```text
Content-Type: application/json
X-Api-Key: YOUR_API_KEY
```

Request:

```bash
curl https://api.acceptance.l-gevity.nl/v1/intervention-recommendations \
  -H "Content-Type: application/json" \
  -H "X-Api-Key: YOUR_API_KEY" \
  --data-binary "@examples/curl/intervention-recommendation.payload.json"
```

Request file:

```text
examples/http/create-intervention-recommendations.http
```

Request body:

```json
{
  "biomarkers": [
    { "code": "birthYear", "value": 1972, "unit": "year" },
    { "code": "gender", "value": "male" },
    { "code": "waistToHeightRatio", "value": 0.62, "unit": "ratio" }
  ]
}
```

Successful responses return `201`, a `Location` header, and a JSON body.

Response fixture:

```text
examples/responses/intervention-recommendations.response.json
```

## Error Response

Errors use Problem Details JSON with `application/problem+json`.

```text
examples/responses/problem.validation.response.json
```
