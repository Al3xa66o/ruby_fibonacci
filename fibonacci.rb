# fibonacci sequence with iteration
def fibonacci(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  new_arr = [0, 1]
  (n - 2).times do
    new_arr << (new_arr[-1] + new_arr[-2])
  end
  return new_arr
end
puts fibonacci(5)

# fibonacci sequence with recursive
def fibonacci_recursive(n)
  return [0] if n == 0
  return [0, 1] if n == 1

  sequence = fibonacci_recursive(n - 1)
  sequence << (sequence[-1] + sequence[-2] || 0)
  sequence
end
puts fibonacci_recursive(6)