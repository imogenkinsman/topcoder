def hawaiian(words)
  hawaiian_words = []

  hawaiian_letters = %w(a e i o u h k l m n p w)

  words.split(' ').each do |word|
    ok = true
    word.chars do |char|
      ok = false unless hawaiian_letters.include?(char.downcase)
    end
    hawaiian_words << word if ok
  end
  
  hawaiian_words
end