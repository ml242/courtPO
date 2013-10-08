db_connection = PG.connect(:dbname =>'movies_db', :host => 'localhost')

sql = INSERT INTO movies (title, year, genre) VALUES
('#{@movie[:title]}', '#{@movie[:year]}', '#{@movie[:genre]}')

response = db_connection.exec(sql)
