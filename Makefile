.PHONY: test
test:
	./vendor/bin/phpunit

.PHONY: generate
generate:
	php bin/user_agent_sorter.php > tests/user_agents.tmp.json && mv tests/user_agents.tmp.json tests/user_agents.json
	php bin/constant_generator.php > src/browser_constants.php

.PHONY: init
init:
	php bin/init_user_agent.php > tests/user_agents.tmp.json && mv tests/user_agents.tmp.json tests/user_agents.json
	make generate