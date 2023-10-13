class Solver
  def self.factorial(num)
    raise ArgumentError, 'Factorial is defined only for 0 and positive integers.' if num.negative?
    return 1 if num.zero?

    result = 1
    (1..num).each do |i|
      result *= i
    end
    result
  end

  def self.reverse(word)
    word.reverse
  end

  def self.fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end

result = Solver.factorial(5)
game = Solver.fizzbuzz(15)
constring = Solver.reverse('Hello')
puts result # Output: 120
puts game
puts constring
