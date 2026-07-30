default: serve

# Start local development server with live reload
serve:
	bundle exec jekyll serve --livereload

# Build development site
build:
	bundle exec jekyll build

# Build production site
build-prod:
	JEKYLL_ENV=production bundle exec jekyll build

# Remove generated files
clean:
	rm -rf _site .jekyll-cache

# Build from a clean state
rebuild: clean build

# Update bundled gems
update:
	bundle update

# Show outdated gems
outdated:
	bundle outdated

# Lint Ruby plugins
lint:
    bundle exec rubocop

# Auto-correct Ruby style issues where safe
lint-fix:
    bundle exec rubocop -A

# Verify the project builds cleanly
check: lint build

# Display installed gems
gems:
    bundle list

# Show dependency tree
deps:
    bundle exec bundle viz

# Show Jekyll environment information
doctor:
    bundle exec jekyll doctor