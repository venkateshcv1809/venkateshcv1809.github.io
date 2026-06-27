default: serve

# Run the local development server with live reloading
serve:
	bundle exec jekyll serve --livereload

# Force a clean static build of the site
build:
	bundle exec jekyll build

# Force a clean production build of the site
build-prod:
    JEKYLL_ENV=production bundle exec jekyll build

# Clean up built artifacts and caches
clean:
	rm -rf _site .jekyll-cache