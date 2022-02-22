def oxford_comma(array)
    array_result = array.map{|item| item}
    if array.length > 2 
        last_element = array_result.pop
        array_result.push("and #{last_element}").join(', ')
    elsif array.length == 2 
        last_element = array_result.pop
        array_result.push("and #{last_element}").join(' ')
    elsif array.length == 1
        array_result.join
    end
end

print oxford_comma(["fish", 'head', "stink"])