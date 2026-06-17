import { readFile } from 'node:fs/promises';

const apiKey = process.env.LGEVITY_API_KEY;
if (!apiKey) {
    throw new Error('Set LGEVITY_API_KEY before running this example.');
}

const baseUrl = process.env.LGEVITY_BASE_URL ?? 'https://api.acceptance.l-gevity.nl';
const payloadUrl = new URL('../curl/biometric-assessment.payload.json', import.meta.url);
const payload = await readFile(payloadUrl, 'utf8');

const response = await fetch(`${baseUrl}/v1/biometric-assessments`, {
    method: 'POST',
    headers: {
        'Content-Type': 'application/json',
        'X-Api-Key': apiKey,
    },
    body: payload,
});

const body = await response.json().catch(() => null);

if (!response.ok) {
    console.error(JSON.stringify(body, null, 2));
    process.exitCode = 1;
} else {
    console.log(JSON.stringify(body, null, 2));
}
