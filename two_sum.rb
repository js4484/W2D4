def brute_force(arr, target)
    result_arr = arr.combination(2).to_a
    result_arr.each do |ele|
        return true if ele.sum == target
    end
    false
end

def sorting(arr, target)
    s_arr = arr.sort
    
    
    s_arr.each do |el|
        missing = target - el
        return true if s_arr.include?(missing)
    end
    false

end

def hash_map(arr, target)
    hash = Hash.new
    arr.each {|el| hash[el] = true}
    hash.keys.each do |el|
        missing = 

end