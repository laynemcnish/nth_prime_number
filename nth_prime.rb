class Prime

  def all_primes_up_to(num)
    array = []
    n = 2
    while array.length < num
      array << n
      n = n.next_prime
    end
    array
  end

  def nth(num)
    raise ArgumentError if num == 0
    all_primes_up_to(num).last
  end
end

class Integer < Numeric
    def is_prime?
        return false if self <= 1
        2.upto(Math.sqrt(self).to_i) do |x|
            return false if self%x == 0
        end
        true
    end

    def next_prime
        n = self+1
        n = n + 1 until n.is_prime?
        n
    end
end
