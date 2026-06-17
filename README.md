# Code Review Hub

This repository is a CodeRabbit configuration hub for reviewing other projects.

## Purpose

Use this repo as the default review policy for your GitHub organization. CodeRabbit supports a central configuration repository named `coderabbit`; when installed on that repository, its root `.coderabbit.yaml` can apply to repositories that do not define their own config.

## Setup

1. Create or rename this repository to `coderabbit` inside your GitHub organization.
2. Commit and push these files.
3. Install CodeRabbit on this central `coderabbit` repository.
4. Install CodeRabbit on the repositories you want reviewed.
5. Open a pull request in a target repository and confirm CodeRabbit reports the config source as `Repository: coderabbit/.coderabbit.yaml`.

## Per-Repository Override

If a project needs different rules, copy `templates/repository/.coderabbit.yaml` into that project's repository root and adjust it. A repository-level `.coderabbit.yaml` takes precedence over the central configuration.

## Review Philosophy

CodeRabbit should behave like a quality gate:

- Findings first.
- Security and correctness before style.
- No purely subjective nitpicks.
- Every issue should explain impact and a practical fix.
- Test gaps should be called out when they affect changed high-risk behavior.

## Local Files

- `.coderabbit.yaml`: central CodeRabbit config.
- `review-guidelines.md`: durable review standards.
- `review-checklist.md`: checklist for manual and AI review.
- `project-profiles/`: specialized profiles for frontend, backend, and security-sensitive work.
- `templates/repository/.coderabbit.yaml`: starter override for individual projects.
- `docs/coderabbit-setup.md`: installation and rollout guide.
