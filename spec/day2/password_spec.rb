require './lib/day2/password'

module Day2
  RSpec.describe Password do
    describe "#valid?" do
      it "returns true when the password respects policy" do
        password = Password.new('1-3 a: abcde')
        expect(password.valid?).to be true

        password = Password.new('1-3 b: cdefg')
        expect(password.valid?).to be false

        password = Password.new('2-9 c: ccccccccc')
        expect(password.valid?).to be true

        password = Password.new('1-4 d: abc')
        expect(password.valid?).to be false
      end

      context "given a new policy rule set" do
        it "returns true when the password respects policy" do
          password = Password.new('1-3 a: abcde', NewPolicy)
          expect(password.valid?).to be true

          password = Password.new('1-3 b: cdefg', NewPolicy)
          expect(password.valid?).to be false

          password = Password.new('2-9 c: ccccccccc', NewPolicy)
          expect(password.valid?).to be false

          password = Password.new('1-4 d: abc', NewPolicy)
          expect(password.valid?).to be false
        end
      end
    end
  end
end
