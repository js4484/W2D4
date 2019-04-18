require "byebug"
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]


def my_min1(list)
    smallest = list[0]
    list.each do |ele1|
        list.each do |ele2|
            smallest = ele2 if ele2 < smallest
        end
    end
    smallest
end

def my_min2(list)
    smallest = list[0]
    
        list.each do |ele1|
            smallest = ele1 if ele1 < smallest
        end
    
    smallest
end

list = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
list3 = [-5, -1, -3]

def largest_contig(list)
    largest = list[0]
    (0...list.length).each do |idx1|
        (idx1...list.length).each do |idx2|
            sub = list[idx1..idx2]
            sub_sum = sub.sum
            largest = sub_sum if sub_sum > largest            
        end
    end    
    largest
end
list3 = [-5, -1, -3]

list = [5, 3, -7]
list2 = [2, 3, -6, 7, -6, 7]
def largest_contig2(list)
    largest = list[0]
    current = list[0]
    if list.all? {|el| el < 0}
        return list.max
    end
    (1...list.length).each do |idx|
        current += list[idx] 
        largest = current if current > largest
        
        if current < 0 
            current = 0
        end
    end
    largest 
end        


  # largest = list[idx2] if list[idx2] > largest
  #     new_current = current + list[idx]
    #    if new_current > current
    #         current = new_current
    #    else 
    #     current = list[idx+1] if idx < list.length - 1
    #    end
    #    largest = current if current > largest
