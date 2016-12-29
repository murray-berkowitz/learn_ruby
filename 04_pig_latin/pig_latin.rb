#write your code here
def translate(words)
    consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','x','y','z']
    if(words.include? ' ')
        arr = words.split
        arr2 = arr.each_with_index.map() do |e,index|
            if(e.start_with?('a','e','i','o','u'))
                e << 'ay'
            else
               count = 0
                letters = ""
               3.times do |i|
                   if(consonants.include? e[i])
                      count += 1
                      letters += e[i]
                      e << e[i]
                   elsif(letters[-1] == 'q' && e[i] == 'u')
                       e << e[i]
                       count +=1
                   else
                       break
                   end
               end
               e << 'ay'
               e = e[count..-1]    
            end
        end
        result = arr2 * ' '
        return result
    else
        if(words.start_with?('a','e','i','o','u'))
            words << 'ay'
        else
            letters = ""
            count = 0
            3.times do |i|
                if(consonants.include? words[i])
                    count += 1
                    letters += words[i]
                    words << words[i]
                elsif(letters[-1] == 'q' && words[i] == 'u')
                    words << words[i]
                    count +=1
                else
                    break
                end
            end
            words << 'ay'
            words = words[count..-1]
        end
        return words
    end
end

puts translate('cherry pie quickly please')