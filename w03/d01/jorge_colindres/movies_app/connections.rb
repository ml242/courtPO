def connect_to_db(database, host)
  PG.connect :dbname => database, :host=> host
end

def execute_sql(connec, sql)
  response = connec.exec sql
  response.entries
end

def get_json(url)
  response = HTTParty.get(url)
  JSON.parse(response)
end
