require './lib/day2/password'

module Day2
  RSpec.describe Policy do
    describe "#valid?" do
      it "returns true when the password respects policy" do
        password = Policy.new('1-3 a')
        expect(password.valid?('abcde')).to be true

        password = Policy.new('1-3 b')
        expect(password.valid?('cdefg')).to be false

        password = Policy.new('2-9 c')
        expect(password.valid?('ccccccccc')).to be true

        password = Policy.new('1-4 d')
        expect(password.valid?('abc')).to be false
      end
    end
  end
end
