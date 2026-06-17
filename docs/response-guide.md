# Response Guide

Use this guide to decide which response fields to store, display, or ignore in a
client integration.

## Biometric Assessment

Endpoint:

```text
POST /v1/biometric-assessments
```

Top-level fields:

| Field | Meaning |
| ----- | ------- |
| `id` | Assessment id for this API response |
| `createdAt` | Server timestamp |
| `productId` | Always `biometric-engine-v1` |
| `billableUnits` | Billable product units for the successful call |
| `biologicalValue` | Compact engine score for the submitted data |
| `dataCurrency` | 0-100 indicator of how much usable data contributed |
| `riskBands` | Highest-risk domains sorted by hazard ratio |
| `engineResult` | Detailed engine-native output for advanced integrations |

`riskBands[].hazardRatio` is centered around `1.0`. Values above `1.0` indicate
higher relative risk in that domain; values below `1.0` indicate a protective or
lower-risk signal.

Recommended first integration:

- show `biologicalValue` as the headline score
- show `dataCurrency` as a data-completeness signal
- show the first 3 to 5 `riskBands`
- store `engineResult` only if your product needs deeper analytics

## Intervention Recommendations

Endpoint:

```text
POST /v1/intervention-recommendations
```

Top-level fields:

| Field | Meaning |
| ----- | ------- |
| `id` | Recommendation response id |
| `createdAt` | Server timestamp |
| `productId` | Always `intervention-engine-v1` |
| `billableUnits` | Billable product units for the successful call |
| `recommendations` | Ranked intervention list |

Recommendation fields:

| Field | Meaning |
| ----- | ------- |
| `rank` | 1-based rank; lower is higher priority |
| `biomarker` | Biomarker or virtual biomarker driving the recommendation |
| `direction` | Whether the biomarker should move `lower` or `raise` |
| `severity` | Relative severity signal used by ranking |
| `impactRatio` | Relative actionable impact used by ranking |
| `rationale` | Ranking factors for auditability |
| `intervention` | Public intervention content and evidence metadata |

Intervention fields:

| Field | Meaning |
| ----- | ------- |
| `id` | Stable intervention id |
| `category` | Intervention category such as movement or nutrition |
| `labelNL` | Full Dutch user-facing action label |
| `shortNL` | Short Dutch label |
| `anchor` | Suggested routine anchor |
| `weeksToEffect` | Expected time window before measurable effect |
| `effectSummaryNL` | Dutch effect summary |
| `safetyNL` | Dutch safety note |
| `citation` | Source citation text |
| `evidenceTier` | Evidence strength tier, `1` strongest |
| `effectWeight` | 1-5 intervention effect weight |

Recommended first integration:

- display `rank`, `intervention.shortNL`, `effectSummaryNL`, and `safetyNL`
- keep `intervention.id` for deduplication and analytics
- use `weeksToEffect` for expectation setting
- treat `citation`, `evidenceTier`, and `effectWeight` as supporting metadata

## Error Responses

Errors use `application/problem+json`.

| Status | Meaning |
| ------ | ------- |
| `400` | Malformed HTTP request |
| `401` | Missing or invalid API key |
| `403` | Valid API key that is disabled |
| `422` | Valid JSON with invalid request body |
| `503` | Temporary dependency outage |

Always log `requestId` when present. Never log the API key or private health
payloads.

## Compatibility

The OpenAPI contract in `openapi/public-api.v1.openapi.json` is the public
source of truth. Compatible changes may add response fields. Breaking changes
require a new major API version path.

