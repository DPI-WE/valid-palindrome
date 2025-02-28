
def palindrome?(input)
  input.downcase!
  input.gsub!(/[^a-z0-9]/, '')

  input.split('').each_with_index do |char, index|
    reciprocal_index = input.length - 1 - index
    reciprocal_char = input[reciprocal_index]

    return false unless char == reciprocal_char
  end

  true
end
