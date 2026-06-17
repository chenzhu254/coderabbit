# Rollout Tasks

Use this checklist to finish the CodeRabbit integration.

## 1. Create GitHub Repository

Recommended repository name:

```text
coderabbit
```

CodeRabbit can use an organization-level central configuration from a repository with this name.

## 2. Push This Local Repository

After creating the GitHub repository, run:

```powershell
git remote add origin https://github.com/<ORG_OR_USER>/coderabbit.git
git branch -M main
git push -u origin main
```

Replace `<ORG_OR_USER>` with your GitHub organization or username.

## 3. Install CodeRabbit

1. Go to CodeRabbit.
2. Connect GitHub.
3. Install CodeRabbit on the `coderabbit` repository.
4. Install CodeRabbit on one pilot repository that you want reviewed.

## 4. Verify Central Configuration

Open a small pull request in the pilot repository and comment:

```text
@coderabbitai configuration
```

Confirm CodeRabbit reports that it is using:

```text
Repository: coderabbit/.coderabbit.yaml
```

## 5. Pilot Acceptance Criteria

The pilot is successful when:

- CodeRabbit reviews new pull requests automatically.
- Review comments are in Chinese.
- It prioritizes security, correctness, and missing tests.
- It does not produce excessive style-only comments.
- It can request changes for high-risk findings.

## 6. Roll Out To More Repositories

After the pilot:

1. Install CodeRabbit on the next repository.
2. Open a test pull request.
3. Tune `.coderabbit.yaml` if the review is too noisy or too weak.
4. Repeat until all target repositories are covered.

## 7. Per-Repository Overrides

For a repository that needs custom behavior:

```powershell
Copy-Item templates/repository/.coderabbit.yaml <TARGET_REPO>\.coderabbit.yaml
```

Then edit the copied file with project-specific instructions.
