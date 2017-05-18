##############################
#### MANIPULATING NUMBERS ####
##############################
def count_to(n)
  n = n.to_i
  if n >= 0
    (0..n).to_a
  else
    0.downto(n).to_a
  end    
end
  # takes in a number
  # returns an array containing every integer from 0 to n
  # counts up or down
  # rounds off decimals

def is_integer?(number)
  number.class == Fixnum || number.class ==Bignum ||
    (number.is_a?(Float) && !number.nan? && number.to_i == number)
end
  # takes in a number
  # returns true for Fixnums and Bignums (whole number or 'integer' types)
  # returns true for Floats (decimals) equal to integers
  # returns false for non-integer decimals
  # returns false for Float::NAN
  # returns false for non-numbers

def is_prime? (number)
  if !is_integer?(number) || number <= 1 
    false
  else 
    (2..(number-1)).each do |n|
      if number % n == 0 
        return false  
      end
    end
    true
  end
end

  # takes in a number and checks if it's prime
  # returns false for non-integer decimals
  # returns false for numbers less than or equal to 1
  # returns false for numbers divisible by anything but 1 and themselves
  # returns true for prime numbers
  # Hint: google prime numbers!
def primes_less_than(number)
  primes = []
  (2..number-1).each do |n|
    if is_prime?(n)
      primes.push n
    end
  end
  primes
end
  # takes in a number
  # returns an empty array if there are no primes below num
  # does not return the number itself
  # finds all primes less than the given number

## STRETCH ##
def iterative_factorial(num)
   if num < 0 || !is_integer?(num)
    return Float::NAN  
  end
  memo = 1  
  (1..num).each do |i|
    memo = memo*i
  end
  memo
end

  # takes in a number
  # returns 1 for 0 and 1
  # returns NaN for numbers less than 0
  # returns NaN for non-integers
  # calculates and returns the factorial of the input number
