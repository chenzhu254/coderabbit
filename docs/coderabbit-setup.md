# CodeRabbit Setup Guide

## Recommended Rollout

1. Push this repository as `ORG/coderabbit`.
2. Install CodeRabbit on `ORG/coderabbit` so it can read `.coderabbit.yaml`.
3. Install CodeRabbit on one pilot repository.
4. Open a small pull request in the pilot repository.
5. Confirm the CodeRabbit review comment shows `Repository: coderabbit/.coderabbit.yaml`.
6. Tune `.coderabbit.yaml` after the first few reviews.
7. Install CodeRabbit on the remaining repositories.

## Repository Override

For a project with special needs:

1. Copy `templates/repository/.coderabbit.yaml` into the target repo root.
2. Add project-specific instructions.
3. Commit through normal review.

Repository-level config overrides the central `coderabbit` repository config.

## Suggested GitHub Branch Protection

Use branch protection together with CodeRabbit:

- Require pull request reviews before merging.
- Require status checks to pass.
- Require conversation resolution before merge.
- Restrict direct pushes to protected branches.

## PR Commands To Remember

- Ask CodeRabbit for current configuration: `@coderabbitai configuration`
- Ask follow-up review questions in the pull request comments.

## Maintenance

Review this config monthly or after repeated false positives. Keep rules focused on issues with real security, correctness, test, performance, or maintainability impact.
