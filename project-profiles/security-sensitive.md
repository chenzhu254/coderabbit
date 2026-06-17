# Security-Sensitive Review Profile

Apply this profile to authentication, payment, permission, admin, file upload, webhook, secrets, and personal-data code.

Focus on:

- Authorization bypasses.
- Token/session handling.
- Privilege escalation.
- Injection and unsafe deserialization.
- SSRF, open redirect, XSS, CSRF, and path traversal.
- Sensitive data in logs, analytics, traces, and client responses.
- Missing audit trails for high-risk actions.

Require tests for:

- Denied access.
- Cross-tenant access.
- Expired, malformed, or replayed credentials.
- Malicious or malformed input.
