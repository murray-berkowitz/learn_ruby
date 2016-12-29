def ftoc(num)
    result = (num - 32)*(5/9.to_f)
    return result
end

def ctof(num)
    result = (num*1.8+32)
    return result
end
