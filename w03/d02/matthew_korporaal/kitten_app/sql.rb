require 'pg'
require 'pry'
classmates_hashes = [
  { :name => "McKenneth",
    :food => "Duck confit",
    :github => "DrRobotmck"
  },
  { :name => "Aby",
    :food => "Sushi",
    :github => "abzilla"
  },
  { :name => "Marco",
    :food => "Ceviche",
    :github => "mpvazquez"
  },
]
db_connect = PG.connect(
  :dbname => 'kick_hash_db',
  :host => 'localhost');

classmates_hashes.each do |class_hash|
  name = class_hash[:name]
  food = class_hash[:food]
  git = class_hash[:github]

  sql = "INSERT INTO users (name, favorite_food, github) VALUES ('#{name}', '#{food}', '#{git}')"

  response = db_connect.exec(sql)
end
  db_connect.close
