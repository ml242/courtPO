require 'pry'
# require 'pry-tools'
# require 'pry-remote'

# require_relative 'main'
# require_relative 'building'
# require_relative 'apartment'


class tenant
  attr_accessor :name, :apt
end

  def initialize

  args.each do |k,v|
    instance_variable_set("@#{k}", v) unless v.nil?
  end

  def greeting
    "Hello #{@name}"
  end
end


p1 = Person.new :name => "bob", :apt => "a1"
puts p1