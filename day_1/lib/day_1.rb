# frozen_string_literal: true

# Day 1 of Advent of Code

input = []
File.foreach('day_1/input.txt') { |x| input.push(x) }

# if value in array is more than value before it, add 1 to increased counter
increased = 0
decreased = 0
y = 0

input.each do |depth|
  if input[1].to_i > depth.to_i
    increased += 1
  elsif input[y + 1].to_i > depth.to_i
    increased += 1
  else
    decreased += 1
  end
  y += 1
end

puts increased
# ruby day_1/day_1.rb
