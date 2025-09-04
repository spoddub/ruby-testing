# frozen_string_literal: true

require "simplecov"

if ENV["CI"]
  require "simplecov-lcov"

  SimpleCov::Formatter::LcovFormatter.config do |c|
    c.report_with_single_file = true
    c.single_report_path = "coverage/lcov.info"
  end

  SimpleCov.formatter = SimpleCov::Formatter::LcovFormatter
else
  SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter
end

SimpleCov.start do
  enable_coverage :branch
  add_filter "/test/"
  minimum_coverage 90
end

require "minitest/autorun"
require "minitest/power_assert"
