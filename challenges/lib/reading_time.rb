def reading_time(words)
  fail "Not a text." if words == nil
  one_word = (60.to_f/200).round(2)
  text_length = words.split(" ").length
  time_taken = one_word * text_length
  return "#{time_taken} seconds"
end