# Contributing

First off, thank you for considering contributing! It’s people like you who make this project better for everyone.

## 🚀 Our Release Process
We use an automated release system. This means your commit messages and Pull Request titles directly determine the next version number and populate our CHANGELOG.

### 1. Conventional Commits
We follow the [Conventional Commits](https://www.conventionalcommits.org/) specification. Every Pull Request must have a title following this format:

`type(optional-scope): description`

**Common Types:**
* `feat`: A new feature (triggers a **MINOR** version bump)
* `fix`: A bug fix (triggers a **PATCH** version bump)
* `docs`: Documentation only changes
* `style`: Changes that do not affect the meaning of the code (white-space, formatting, etc)
* `refactor`: A code change that neither fixes a bug nor adds a feature
* `perf`: A code change that improves performance
* `test`: Adding missing tests or correcting existing tests

**Breaking Changes:**
If your change breaks backward compatibility, include an `!` after the type or `BREAKING CHANGE:` in the footer. This triggers a **MAJOR** version bump.
> Example: `feat!: change authentication API`

### 2. Pull Requests
1.  **Fork the repo** and create your branch from `main`.
2.  **Commit your changes.** Don't worry about being perfect with local commits; we use **Squash and Merge**, so your 20 "wip" commits will become one clean commit on `main`.
3.  **Ensure the PR Title is correct.** Our CI checks this! If your PR title is `feat: add user login`, that is exactly what will appear in the version history.
4.  **Check the Preview.** Once you open a PR, a bot will comment with a "Release Preview." Check this to see what the next version will be.

## 🛠️ Local Development
1. Clone your fork: `git clone ...`
2. Install dependencies: `pip install -e .[dev]`
3. Run tests: `pytest`

---
Questions? Feel free to open an issue or reach out to the maintainers!