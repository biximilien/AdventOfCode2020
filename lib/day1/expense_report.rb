module Day1
  class ExpenseReport
    def initialize(expenses = [])
      @expenses = expenses
    end

    def find_sum_of_two(target)
      for i in @expenses do
        expenses_without_i = @expenses - [i]
        for j in expenses_without_i do
          return [i,j] if i + j == target
        end
      end
      return nil
    end

    def find_sum_of_three(target)
      for i in @expenses do
        expenses_without_i = @expenses - [i]
        for j in expenses_without_i do
          expenses_without_i_j = expenses_without_i - [j]
          for k in expenses_without_i_j do
            return [i,j,k] if i + j + k == target
          end
        end
      end
      return nil
    end
  end
end
