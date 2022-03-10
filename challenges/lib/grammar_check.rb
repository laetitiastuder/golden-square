def grammar_check(text)
  fail "Not a sentence." if text.empty?
  #if 1st letter is a capital letter
  first_letter_is_capital = text[0] == text[0].upcase
  last_character_is_valid = ["." , "!", "?"].include? text[-1]
  if first_letter_is_capital && last_character_is_valid
    return true
  else
    return false
  end
end