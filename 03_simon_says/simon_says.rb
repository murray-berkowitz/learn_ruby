#write your code here
def echo(word)
    return word
end

def shout(words)
    return words.upcase
end

def repeat(word,times = 2)
    result = [word] * times * ' '
    return result
end

def start_of_word(word, start = 1)
    result = ""
    start.times do |i| 
        result += word[i]
    end
    return result
end

def first_word(string)
    result = string.split(' ')
    return result[0]
end

def titleize(word)
    
    if(word.include? ' ')
        arr = word.split
        arr2 = arr.each_with_index.map do |e, index|
            if(index != 0 && (e == 'and' || e == "the" || e == "over" ))
                e.downcase
            else
                e.capitalize
            end
        end
        result = arr2 * ' '
    else
        result = word.capitalize
    end
    return result
end




