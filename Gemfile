source 'https://rubygems.org'

ruby '2.2.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Logan's additions
# HAML because I hate ERB
gem 'haml', '~> 4.0.7'
# Redcarpet for project content parsing
gem 'redcarpet', '~> 3.3.2'
# Pygments for syntax highlighing after parsing
gem 'pygments.rb', '~> 0.6.3'
# Friendly ID for human- and SEO-friendly permalinks
gem 'friendly_id', '~> 5.1.0'
# Acts-as-taggable-on for project tagging
gem 'acts-as-taggable-on', '~> 3.5.0'
# Paperclip for image attachment with projects
gem 'paperclip', '~> 4.3.1'
# Amazon S3 for image storage (Heroku only allows read access)
# Took out version declaration '~> 2.1.20'
gem 'aws-sdk', '< 2.0'
# Mail_Form for contact form
gem 'mail_form', '~> 1.5.1'
# Devise for Logan authentication
gem 'devise', '~> 3.5.2'
# Inline_SVG for logos
gem 'inline_svg', '~> 0.6.1'
# Sitemap_generator for sitemap.xml
gem 'sitemap_generator'
# Carrierwave for communicating generated sitemap
# It would be useful to check out some alternatives like FOG?
gem 'carrierwave'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # Development database
  gem 'sqlite3'
end

# Production group (Heroku deployment)
group :production do
	gem 'pg';
	gem 'rails_12factor';
end

