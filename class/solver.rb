class Solver
  def self.factorial(n)
    raise ArgumentError, 'Factorial is defined only for 0 and positive integers.' if n.negative?
    return 1 if n.zero?

    result = 1
    (1..n).each do |i|
      result *= i
    end
    result
  end

  def self.reverse(word)
    word.reverse
  end

  def self.fizzbuzz(n)
    if (n % 3).zero? && (n % 5).zero?
      'fizzbuzz'
    elsif (n % 3).zero?
      'fizz'
    elsif (n % 5).zero?
      'buzz'
    else
      n.to_s
    end
  end
end


result = Solver.factorial(5)
game = Solver.fizzbuzz(15)
constring = Solver.reverse('Hello')
puts result # Output: 120
puts game
puts constring
