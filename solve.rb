require "./navigator.rb"
input = File.read("./input.txt")
navigator = Navigator.new
navigator.navigate(input)
puts navigator.position
