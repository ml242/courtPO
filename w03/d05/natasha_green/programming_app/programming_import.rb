require 'pg'
require 'active_record'
require 'csv'

ActiveRecord::Base. logger = Logger.new ( STDOUT )

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "natashagreen",
  :password => " ",
  :database => "programming_db"
)

class Programmer < ActiveRecord::Base


column_names = Programmer.columns.map{ |column| column.name }
value_sets = some_method_to_load_data_from_csv_file( 'programmers.csv' )
options = { :validate => true }

Programmer.import( column_names, value_sets, options)


=begin
File.open('/tmp/items.csv', 'w') do |f|
     f.write(...) }
  end
  ActiveRecord::Base.connection.execute(
    "COPY items FROM '/tmp/items.csv' csv;")
=end

end