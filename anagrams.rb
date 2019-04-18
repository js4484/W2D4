def phase1(word1, word2)
    possible = word1.split('')
    perms = possible.permutation.to_a
    perms.map!(&:join)
    perms.include?(word2)
end

phase1("stationarily", "antiroyalist")