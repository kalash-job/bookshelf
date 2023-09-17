tests:
	bin/rails test

check:
	bin/rails test
	bundle exec rubocop
	bundle exec slim-lint app/views/

rspec:
	rspec spec --format documentation

setup:
	cp -n .env.example .env || true
	bin/rails db:migrate

start:
	bin/rails server

lint:
	bundle exec rubocop

lint-fix:
	bundle exec rubocop -A