=begin

TODO
- make a cheatsheat

- next
- step
- continue

- Code is execeuted sequentially
  - don't think about it as moving backwards into the program, but when you call a method, it "jumps" there next
  - and if you call step, you will jump to it, otherwise, if you call next, you will skip past the inner workings of the method

=end

require 'pry'
require 'pry-remote'
require 'pry-nav'

binding.pry

name = "Jonathan"

def say_good_morning(input_name)
  name = input_name
  greeting = "Good Morning #{name}!"
end

say_good_morning(name)

# check greeting here