def phase1(word1, word2)
    possible = word1.split('')
    perms = possible.permutation.to_a
    perms.map!(&:join)
    perms.include?(word2)
end
#o(n!)

def phase2(word1, word2)
    arr2 = word2.split("")#n
    word1.each_char.with_index do |char, i1|#n
        w2_index = arr2.find_index(char)#n
        if w2_index == nil
            return false
        else
            arr2.delete_at(w2_index)#n
        end
    end
    arr2.empty?#n
end
#n raise 2

def phase3(word1, word2)
    arr1 = word1.split("").sort #sort = o(nlog n) + n
    arr2 = word2.split("").sort #sort = o(nlog n) + n
    arr1 == arr2
end
# o(nlogn)

def phase4(word1, word2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    word1.each_char {|char| hash1[char] += 1}# n
    word2.each_char {|char| hash2[char] += 1}# n
    hash1 == hash2 
end
#n