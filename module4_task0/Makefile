clean: ## Cleanup the content of the directory dist/
		rm -r ./dist/

build: ## Generate the website from the markdown and configuration files in the directory dist/
		hugo > /dev/null 2>&1
		touch awesome-api

post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	hugo new posts/$(POST_NAME).md
	sed -i '/title:/c\title: "$(POST_TITLE)"' content/posts/$(POST_NAME).md

help:     ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

lint: ## lint
	ls

unit-tests: ## testing
	make build
	make clean
	touch coverage-units.out

integration-tests: ## tests
	touch coverage-integrations.out

validate: ## validaion
	ls -l

package: ## creating package
	zip awesome-website.zip dist/
