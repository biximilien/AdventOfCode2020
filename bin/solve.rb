#!/usr/bin/env ruby

require './lib/day1/expense_report'

expenses = []
File.open('./bin/puzzle_input.txt').each do |line|
  expenses << line.to_i
end
expense_report = Day1::ExpenseReport.new(expenses)

a, b = expense_report.find_sum_of_two(2020)
solution = a * b
puts "Day 1 Part 1 Solution : #{solution}"

a, b, c = expense_report.find_sum_of_three(2020)
solution = a * b * c
puts "Day 1 Part 2 Solution : #{solution}"
