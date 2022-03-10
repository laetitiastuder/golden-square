def track_tasks(text)
  fail "No task entered" if text.empty?
  my_text = text.split(" ")
  is_included = my_text.include? "@TODO"
  #can be used into a ternary
  if is_included 
    return true
  else
    return false
  end
end

track_tasks("walking the dog")