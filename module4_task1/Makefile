clean: ## Cleanup the content of the directory dist/
		rm -r ./dist/

build: ## Generate the website from the markdown and configuration files in the directory dist/
		hugo
		touch awesome-api

post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME
	hugo new posts/$(POST_NAME).md
	sed -i '/title:/c\title: "$(POST_TITLE)"' content/posts/$(POST_NAME).md

help:     ## Show this help usage
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

lint: ## markdownlint
	ls

build-docker: ## builds docker
	docker build -t awesome:build ./build

unit-tests: ## testing
	pwd

integration-tests: ## tests
	ls

validate: ## validaion
	ls -l

package: ## creating package
	make build
	zip awesome-website.zip dist/
