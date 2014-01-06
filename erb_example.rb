require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

array = ["exactly", 3, "elements!"]
template1 = ERB.new "This array has <%= array.count%> elements."
puts template1.result(binding)

birthplace = "miami"
statement = ERB.new "I was born in <%= birthplace.capitalize %>."
puts statement.result(binding)

tourist = {:name => "fred", :age => 17}
tourist1 = ERB.new "In 10 years, <%= tourist[:name].capitalize %> will be <%= tourist[:age] + 10 %> years old."
puts tourist1.result(binding)
