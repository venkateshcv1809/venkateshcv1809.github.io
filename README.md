# VENKATESH C V

Personal portfolio, technical blogs, notes, and experiments.

🌐 [Portfolio](https://venkateshcv1809.github.io/)  
💼 [LinkedIn](https://linkedin.com/in/venkateshcv1809)

[![CI/CD](https://github.com/venkateshcv1809/venkateshcv1809.github.io/actions/workflows/deploy.yaml/badge.svg?branch=main)](https://github.com/venkateshcv1809/venkateshcv1809.github.io/actions/workflows/deploy.yaml)

---

## Architecture & Tech Stack

- **Static Site Generator:** Jekyll
- **Language:** Ruby
- **Environment Management:** mise
- **Task Automation:** just
- **Deployment:** GitHub Actions → GitHub Pages

### CI/CD

The production site is built and deployed through GitHub Actions.

The pipeline:

1. Builds the Jekyll site.
2. Generates the production site in `_site/`.
3. Deploys the generated site to GitHub Pages.

The generated `_site/` directory is not committed to the repository.

---

## Local Development

### Prerequisites

The project uses:

- mise
- Ruby/Bundler
- just

### Initialize the Environment

```bash
mise install
bundle install
```

### Development Server

Start the standard Jekyll development server:
```bash
just serve
```

The site is available at: http://localhost:4000

For live reload and network access:
```bash
just dev
```

### Production Build

```bash
just build-prod
```

### Clean Generated Files
```bash
just clean
```

---

## Repository Structure

```
.
├── _config.yml
├── _data/
├── _includes/
├── _layouts/
├── _pages/
├── _sass/
├── assets/
├── .github/
├── Gemfile
├── justfile
└── mise.toml
```

---

## Branching

### `main`

Production branch. Changes pushed to `main` trigger the production deployment workflow.

### `develop`

Development branch used for drafting, experimentation, UI work, and styling changes.