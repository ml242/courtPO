require 'pg'

# print out everything

db_connect = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
sql = "SELECT * FROM kittens"
response = db_connect.exec(sql)

p response.entries

db_connect.close

# print out names, age, is_cute, image_url using "SELECT * FROM kittens"

db_connect = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
sql = "SELECT * FROM kittens"
response = db_connect.exec(sql)

response.entries.each do |kitten|
  puts kitten['name']
  puts kitten['age']
  puts kitten['is_cute']
  puts kitten['image_url']
end

db_connect.close

# print out the names using "SELECT name FROM kittens"

db_connect = PG.connect(:dbname => 'kitten_shop_db', :host => 'localhost')
sql = "SELECT name FROM kittens"
response = db_connect.exec(sql)

response.entries.each do |kitten|
  p kitten['name']
end

db_connect.close
