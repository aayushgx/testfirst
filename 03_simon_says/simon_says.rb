def echo(strg)
  strg
end

def shout(strg)
    strg.upcase
end

def repeat(strg, val=2)
  rep = "#{strg}"
  (val-1).times do
  rep = "#{strg}" + " #{rep}"
end
rep
end

def start_of_word(strg, val)
  strg[0..(val-1)]
end

def first_word(strg)
  strg.split(" ").first
end

def titleize(strg)
  strg.capitalize!
  astrg= strg.split(" ")
  astrg.each do |x|
    x.capitalize! unless ["and", "the", "over"].include? x
  end
  astrg.join(" ")
end
  