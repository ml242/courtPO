require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative 'active_record'

get '/' do
end

# Create Database

# set up ActiveRecord
# Build it all!

# Entry {author: name , photo: url, date_taken: date}


# Actions:
# Index (Displays all entries)
# New (Displays a form to create a new entry)
# Create (Creates a new entry and saves it to the database)
# Show (Displays one particular entry)
