# frozen_string_literal: true

gem_group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
end

initializer 'generators.rb', <<~CODE
  Rails.application.config.generators do |g|
    g.test_framework :rspec,
      view_specs:       false,
      controller_specs: false,
  end
CODE

after_bundle do
  generate 'rspec:install'
end
