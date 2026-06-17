# Review Guidelines

## Priority Order

1. Security: auth, authorization, injection, secrets, sensitive data, unsafe parsing, dependency risk.
2. Correctness: broken logic, edge cases, concurrency, data consistency, migration compatibility.
3. Tests: missing coverage for changed behavior, error paths, permissions, and regressions.
4. Performance: inefficient queries, repeated network calls, excessive rendering, resource leaks.
5. Maintainability: confusing boundaries, risky duplication, unclear ownership, brittle abstractions.

## What To Avoid

- Do not raise personal style preferences as findings.
- Do not request broad refactors unless the current change creates concrete risk.
- Do not approve risky changes just because tests pass.
- Do not assume product requirements when evidence is missing; ask an open question instead.

## Finding Format

Each finding should include:

- Priority: P0, P1, P2, or P3.
- File and line.
- Problem.
- Impact.
- Suggested fix.

## Approval Standard

Approve only when there are no unresolved P0 or P1 issues. P2 items can be accepted when the risk is acknowledged and follow-up work is explicit.
