# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

# Turn off haml indentation so code blocks in pre's are
# formatted correctly
Haml::Template.options[:ugly] = true
