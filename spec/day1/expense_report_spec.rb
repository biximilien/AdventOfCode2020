require './lib/day1/expense_report'

module Day1
  RSpec.describe ExpenseReport do
    describe "#find_sum_of_two" do
      it "finds the sum of two expenses given a target value" do
        expenses = [1,2]
        report = ExpenseReport.new(expenses)
        expect(report.find_sum_of_two(3)).to eq([1,2])

        expenses = [1,2,3]
        report = ExpenseReport.new(expenses)
        expect(report.find_sum_of_two(5)).to eq([2,3])

        expenses = [31,21,34,45]
        report = ExpenseReport.new(expenses)
        expect(report.find_sum_of_two(76)).to eq([31,45])
      end
    end

    describe "#find_sum_of_three" do
      it "finds the sum of three expenses given a target value" do
        expenses = [1,2,3]
        report = ExpenseReport.new(expenses)
        expect(report.find_sum_of_three(6)).to eq([1,2,3])

        expenses = [1,2,3,4]
        report = ExpenseReport.new(expenses)
        expect(report.find_sum_of_three(9)).to eq([2,3,4])

        expenses = [31,21,34,45,67]
        report = ExpenseReport.new(expenses)
        expect(report.find_sum_of_three(100)).to eq([21,34,45])
      end
    end
  end
end
