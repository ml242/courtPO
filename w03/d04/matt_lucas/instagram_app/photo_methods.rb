class Photo
  @@connection = PG.connect( dbname: "insta_db", :host => 'localhost' )

#inserts the object into the table as a string, and adds the key pairs without strange notation.
  def self.insert(data)
    @@connection.exec "insert into #{self.to_s.downcase} ( #{ transform_keys(data.keys) } ) values ( #{ transform_vals(data.values) } )"
  end

# Will return the self in find
  def self.find(id)
    @@connection.exec("select * from #{self.to_s.downcase} where id=#{id}").first
  end

  # May only be called within the context of the calling object
  private

  def self.transform_vals(values)
    values.map { |v| "\'#{v}\'" }.join(",")
  end

  def self.transform_keys(keys)
    keys.map(&:to_s).join(',')
  end
end

# => books inherits from Table.
class Books < Table
end