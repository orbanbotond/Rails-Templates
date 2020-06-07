# The intention of this template is to let you create a rails app
# with different options in different aspects.
# - Persistence: 
#   - relational:
#     - postgresql
#     - mysql
#     - sqlite
#   - document based
#     - mongo
# - Form Handling:
#   - simple form
#   - form objects?
#     - dry-struct with schemas
#     - active_data
#     - active_type
# - Business Logic:
#   - Railway Oriented Way
#     - dry-transactions
#     - trailblazer
#   - Pure Ruby Way
#     - granite
#     - monad do notation
# - Tests
#   - minispec
#   - spec
#   - shoulda matchers

# Usage: rails new blog -m ~/template.rb
# rails app:template LOCATION=~/template.rb

# Commands
----------

# rails_command("rails:freeze:gems") if yes?("Freeze rails gems?")
# run "rm README.rdoc"

# Interactivity
----------
# mongo_db_name = ask("How would you like to call your DB?")
# <do...> if yes?("Do you want...?")

# Generate 
----------
# generate(:scaffold, "person name:string")
# route "root to: 'people#index'"
# rails_command("db:migrate")
 
# after_bundle do
#   git :init
#   git add: "."
#   git commit: %Q{ -m 'Initial commit' }
# end

# # File Creation Commands
# ------------------------

# rakefile("bootstrap.rake") do
#   <<-TASK
#     namespace :boot do
#       task :strap do
#         puts "i like boots!"
#       end
#     end
#   TASK
# end


# file 'app/components/foo.rb', <<-CODE
#   class Foo
#   end
# CODE

# initializer 'bloatlol.rb', <<-CODE
#   class Object
#     def not_nil?
#       !nil?
#     end
 
#     def not_blank?
#       !blank?
#     end
#   end
# CODE

# Gem related commands
# --------------------

# gem_group :development, :test do
#   gem "rspec-rails"
# end

# gem "bj"

# add_source "http://gems.github.com"
