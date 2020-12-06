#!/usr/bin/env ruby

require './lib/day1/expense_report'
require './lib/day2/password'
require './lib/day3/map'

# Day 1

expenses = []
File.open('./data/puzzle_input_day1.txt').each do |line|
  expenses << line.to_i
end
expense_report = Day1::ExpenseReport.new(expenses)

a, b = expense_report.find_sum_of_two(2020)
solution = a * b
puts "Day 1 Part 1 Solution : #{solution}"

a, b, c = expense_report.find_sum_of_three(2020)
solution = a * b * c
puts "Day 1 Part 2 Solution : #{solution}"

# Day 2

passwords = []
File.open('./data/puzzle_input_day2.txt').each do |line|
  passwords << Day2::Password.new(line)
end
count = 0
passwords.each do |password|
  count += 1 if password.valid?
end
puts "Day 2 Part 1 Solution : #{count}"

passwords = []
File.open('./data/puzzle_input_day2.txt').each do |line|
  passwords << Day2::Password.new(line, Day2::NewPolicy)
end
count = 0
passwords.each do |password|
  count += 1 if password.valid?
end
puts "Day 2 Part 2 Solution : #{count}"

# Day 3

map_tiles = []
File.open('./data/puzzle_input_day3.txt').each do |line|
  map_tiles << line.strip unless line.strip.empty?
end
@map = Day3::Map.new(map_tiles)
count = @map.find_trees_on_path(3, 1)
puts "Day 3 Part 1 Solution : #{count}"

slope1_count = @map.find_trees_on_path(1, 1)
slope2_count = @map.find_trees_on_path(3, 1)
slope3_count = @map.find_trees_on_path(5, 1)
slope4_count = @map.find_trees_on_path(7, 1)
slope5_count = @map.find_trees_on_path(1, 2)
count = slope1_count * slope2_count * slope3_count * slope4_count * slope5_count
puts "Day 3 Part 2 Solution : #{count}"
