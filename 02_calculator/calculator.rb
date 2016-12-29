#write your code here
def add(a,b)
    return a+b
end

def subtract(a,b)
    return a-b
end

def sum(arr)
    total = 0
    if (arr == []) 
        total = 0
    else
        arr.each do |e|
            total+=e
        end
    end
    return total
end

def multiply(*args)
    total = 1
    args.each do |e|
        total *= e
    end
    return total
end

def power(a,b)
    result = 1
    b.times do
        result *= a
    end
    return result
end

def factorial(a)
    result = 1
    if a == 0 
        result = 0
    else
        2.upto(a) do |e|
            result *= e
        end
    end
    return result
end