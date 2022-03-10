class Diary

  def make_snippet(text)
    my_text = text.split(" ")
    if my_text.length >= 5
      return my_text[0..4].join(" ") + "..."
    else
      return my_text[0..4].join(" ")
    end 
  end

  def count_words(word)
    return word.split(" ").length
  end
  
end