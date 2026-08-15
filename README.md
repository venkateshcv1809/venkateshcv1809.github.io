# VENKATESH C V

Personal portfolio built with Jekyll and deployed to GitHub Pages.

[Portfolio](https://venkateshcv1809.github.io/)  
[LinkedIn](https://linkedin.com/in/venkateshcv1809)

[![CI/CD](https://github.com/venkateshcv1809/venkateshcv1809.github.io/actions/workflows/deploy.yml/badge.svg?branch=main)](https://github.com/venkateshcv1809/venkateshcv1809.github.io/actions/workflows/deploy.yml)

## Local development

```bash
mise install
bundle install
just serve
```

The site runs at `http://localhost:4000`.

### Useful commands:

```bash
just dev        # live reload, network access
just build      # local build
just build-prod # production build
just check      # lint and build
just clean      # remove generated files
```

## Notes

- `main` deploys to GitHub Pages through GitHub Actions.
- Generated files in `_site/` are not committed.
