module Day2
  class Password
    # 1-3 a: abcde

    def initialize(line, policy_adapter = Policy)
      @policy = policy_adapter.new(line.split(':')[0])
      @password = line.split(':')[1].strip()
    end

    def valid?
      @policy.valid?(@password)
    end
  end

  class Policy
    def initialize(input)
      tmp = input.split(' ')
      @min, @max = tmp[0].split('-').map(&:to_i)
      @char = tmp[1]
    end

    def valid?(password)
      c = password.count(@char)
      return false if c < @min || c > @max
      true
    end
  end

  class NewPolicy < Policy
    def initialize(input)
      super(input)
      tmp = input.split(' ')
      @pos1, @pos2 = tmp[0].split('-').map(&:to_i)
    end

    def valid?(password)
      return true if (password[@pos1-1] == @char) ^ (password[@pos2-1] == @char)
      false
    end
  end
end
