# Publishing Checklist

This repository is published from the private L-GEVITY application repository.
The private repository remains the source of truth for the runtime
implementation and OpenAPI contract.

Before updating this public repository:

1. Run the private contract validator:

   ```bash
   npm run validate:openapi
   ```

2. Copy only the public contract:

   ```text
   packages/api-product/openapi/public-api.v1.openapi.json
   -> openapi/public-api.v1.openapi.json
   ```

3. Confirm the public OpenAPI file does not include private routes:

   ```text
   /v1/api-keys
   /v1/usage
   ```

4. Confirm examples contain no real API keys, bearer tokens, connection strings,
   Azure resource names, customer data, or private endpoint URLs.

5. Confirm examples use only public product routes:

   ```text
   /v1/manifest
   /v1/biometric-assessments
   /v1/intervention-recommendations
   ```

6. Confirm README links API-key creation back to the authenticated L-GEVITY site:

   ```text
   https://l-gevity.nl/profile.html#api-keys
   ```

7. Review the public diff before pushing.

