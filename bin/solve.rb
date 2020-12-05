#!/usr/bin/env ruby

require './lib/day1/expense_report'

expenses = []
File.open('./bin/puzzle_input.txt').each do |line|
  expenses << line.to_i
end
expense_report = Day1::ExpenseReport.new(expenses)
a, b = expense_report.find_sum_of_two(2020)

solution = a * b
puts solution
