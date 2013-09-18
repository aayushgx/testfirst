def translate(word)
    words=word.split(" ")
    words.each do |x|
            if ["a","e","i","o","u"].include?x[0,1]
                x << ("ay")
            elsif x[0..1]=="qu"
                x[0..-1]= x[2..-1] + "quay"
            elsif x[1..2]=="qu"
                x[0..-1]= x[3..-1] + x[0..2] + "ay"
            else
                until ["a","e","i","o","u"].include?x[0,1]
                x << ("#{x[0,1]}")
                x[0,1]=""
                end
                x << ("ay")
            end
    end
    words.join(" ")
end