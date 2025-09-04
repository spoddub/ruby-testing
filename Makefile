.PHONY: lint lint-fix test

lint:
	bundle exec rubocop

lint-fix:
	bundle exec rubocop -A

test:
	bundle exec ruby -e 'Dir["test/**/*_test.rb"].sort.each { |f| require File.expand_path(f) }'
