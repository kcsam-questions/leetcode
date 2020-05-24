# Count the number of prime numbers less than a non-negative number, n.

# ------------- Exceed time limit ----------------------
$prime_dict = {}

def is_prime_number?(num)
  return false if num == 0 || num == 1
  return false if num.to_s[-1] == 5
  (2..num/2).each do |divisible|
    return false if num % divisible == 0
  end
  true
end

def count_primes(n)
  prime_count = 0
  # Start from 3 because we know 0,1,2 is not prime number
  (2..n-1).each do |num|
    $prime_dict[num] ||= is_prime_number?(num)
    prime_count += 1 if $prime_dict[num]
  end
  prime_count
end
# ------------------------------------------------------
#
require 'prime'
def count_primes(n)
  prime_count = 0
  # Start from 3 because we know 0,1,2 is not prime number
  (2..n-1).each do |num|
    $prime_dict[num] ||= Prime.prime?(num)
    prime_count += 1 if $prime_dict[num]
  end
  prime_count
end

# ------------------------------------------------------
#
require 'prime'

def count_primes(n)
  Prime.each(n-1).count
end

# ------------- Sieve_of_Eratosthenes ------------------
# -> Omit the prime number's multiple
def count_primes(n)
  prime_arr = (0..n-1).to_a
  prime_arr[0] = prime_arr[1] = nil

  prime_arr.each do |p|
    next if p.nil?

    # This case is covered by p ** 2 < n,
    break if p ** 2 > n

    # from p**2 upto n with the multiple of p, do what is inside the block
    # Start from p ** 2 because we does not want to take into 
    # consideration the number itself.
    # For eg, 2 is a prime number, but 2^2 is not.
    # We don't want to take in 2, but want to take in 2^2.
    # Hence, we start from 4, which is the next multiples of 2.
    #
    # https://apidock.com/ruby/Numeric/step
    # (:from).step(:to, step) { method }
    (p**2).step(n-1, p) { |x| prime_arr[x] = nil }
  end

  prime_arr.compact.count
end

# ------------- Sieve_of_Eratosthenes ------------------
