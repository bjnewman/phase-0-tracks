def fav_animal
  puts "Here is my favorite animal... drumroll please."
  yield("red_pandas")
end

fav_animal { |animal| puts "Here is my favorite animal: #{animal}" }  