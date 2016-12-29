class Book
# write your code here
    attr_accessor :title
    #SETTER
    def title=(value)
        exceptions = ['the','a','and','an','in','the','of']
        arr = value.split(' ')
        arr2 = arr.each.map do |e|
            if (exceptions.include?(e))
                e = e
            else
                e.capitalize
            end
        end
        arr2[0] = arr2[0].capitalize
        @title = arr2 * ' '
    end
end
