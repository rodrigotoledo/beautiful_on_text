# frozen_string_literal: true

require 'bundler/setup'
require 'active_record'
require 'beautiful_on_text'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.infer_spec_type_from_file_location!
end

# Define an in-memory SQLite database for testing
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
ActiveRecord::Schema.define do
  create_table :my_models do |t|
    t.string :description
    t.timestamps null: false
  end
end
