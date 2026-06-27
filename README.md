# VENKATESH C V

🌐 Portfolio: [venkateshcv1809.github.io](https://venkateshcv1809.github.io/)
💼 LinkedIn: [linkedin.com/in/venkateshcv1809](https://www.linkedin.com/in/venkateshcv1809/)  

[![CI/CD](https://github.com/venkateshcv1809/venkateshcv1809.github.io/actions/workflows/deploy.yaml/badge.svg?branch=main)](https://github.com/venkateshcv1809/venkateshcv1809.github.io/actions/workflows/deploy.yaml)

---

## 🛠️ Architecture & Tech Stack

This site is built utilizing a decoupled, cloud-native static site generation pipeline.

* **Framework:** `Jekyll` (Ruby ecosystem)
* **Local Environment Manager:** `mise` (for predictable tool version pinning)
* **Task Automation:** `just` (for structured workspace shortcuts)
* **Deployment Platform:** GitHub Actions Engine to GitHub Pages CDN

### CI/CD Architecture
Rather than utilizing standard branch-copying deployments, this repository uses a decoupled multi-job pipeline:
1. **`build`**: Spins up an isolated Ubuntu runner to compile markdown assets via Jekyll into production artifacts, matching the local workspace signature.
2. **`deploy`**: Dynamically streams the compiled raw assets directly to GitHub’s global edge servers via OIDC secure handshakes, keeping the Git tree and commit history perfectly clean.

---

## 🚀 Local Development Setup

Ensure you have your environment tools installed locally (`mise`, `just`, and `bundler`).

### 1. Initialize the Environment
Install the pinned tool dependencies and project gems:
```bash
mise install
bundle install
```

### 2. Available Automation Commands
This workspace leverages a `justfile` for clean development shortcuts:

* Clean the Workspace:
```bash
just clean
```

* Boot Local Development Server: (Runs with auto-regeneration and live-reload at `http://localhost:4000`)
```bash
just serve
```

---

## 🌿 Branching Strategy

* `main`: Production branch. Pushes to this branch trigger the automated `CI/CD` pipeline to stream live changes directly to the production web hosting servers.
* `develop`: Staging sandbox branch used for drafting, UI layout experiments, and styling updates.
