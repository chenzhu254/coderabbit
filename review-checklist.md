# Review Checklist

## Security

- Is authorization checked server-side for every protected action?
- Are user-controlled inputs validated before database, shell, template, or URL usage?
- Are secrets, tokens, passwords, or personal data excluded from logs and errors?
- Are file uploads, redirects, webhooks, and callbacks constrained?
- Are dependency, permission, and environment changes justified?

## Correctness

- Are null, empty, malformed, and boundary inputs handled?
- Can async code race, double-submit, or write stale state?
- Are retries, transactions, and idempotency handled where needed?
- Are errors surfaced instead of swallowed?
- Are migrations backward-compatible with deployed code?

## Backend

- Are status codes and error bodies consistent?
- Are database queries scoped to tenant/user permissions?
- Are pagination and filtering safe for large datasets?
- Are time zones, money, and precision handled explicitly?

## Frontend

- Are loading, empty, and error states present?
- Are form validation rules aligned with server validation?
- Can state updates become stale or inconsistent?
- Is accessibility preserved for changed interactive elements?
- Does responsive layout still fit real content?

## Tests

- Are new behavior and changed behavior covered?
- Are failure paths and permission checks tested?
- Are tests deterministic and isolated?
- Is there an integration or end-to-end test for cross-boundary risk?
