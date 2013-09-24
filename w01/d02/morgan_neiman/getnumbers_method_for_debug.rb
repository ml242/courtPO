def getNumbers #method to make an array out of user's numbers
  puts "Enter the numbers you'd like me to use, separated by spaces."
  numIn = gets.chomp #gets numbers
  puts numIn + "I'm numin"
  numbers = numIn.split(" ") #separates numbers into individual strings
  puts numbers + "I'm numbers"
  workingArray = [] #create new array
  puts workingArray + "I'm working array before the function"
  numbers.each { |num| workingArray << num.to_i } #adds each number to the end of workingArray
  puts workingArray + "I'm working array after"
end

getNumbers

array2 = [8, 9, 10]
puts array2