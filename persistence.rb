# The intention of this template is to add 
# options for persistence for the Rails App.
# - Persistence: 
#   - relational:
#     - postgresql
#     - mysql
#     - sqlite
#     - rom-rb
#   - document based
#     - mongo
# `rails app:template LOCATION=~/persistence.rb`

def ask_yes_no(statement)
  if yes?("Do you want #{statement}?")
    puts "Ok... We are going to use #{statement}"
    yield
  else
    puts "Ok... We are NOT going to use #{statement}"
  end
end

ask_yes_no("Document Based Persistence") do
  ask_yes_no("Mongoid") do
    gem 'mongoid'
    run_bundle
    # after_bundle do
    #   generate "mongoid:config"
    # end
    generate "mongoid:config"
    git add: "--all"
    git commit: %Q{ -m 'Mongoid is added' }
    # mongo_db_name = ask("How would you like to call your DB?")
    # file 'config/mongoid.yml', <<~MONGO_CONFIG_FILE
    #   development:
    #     clients:
    #       default:
    #         database: #{mongo_db_name}
    #         hosts:
    #           - localhost:27017
    #         options:
    #           server_selection_timeout: 1
    # MONGO_CONFIG_FILE
  end
end
