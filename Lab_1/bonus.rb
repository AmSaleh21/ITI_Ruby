
                                    #########
                                    # BONUS #
                                    #########

###### "task8" ######

def task8(nums, target)
    for i in 0..nums.length-2
        for j in i+1..nums.length-1
            if ((nums[i]+nums[j]) == target)
                return [i,j]
            end
        end
    end
    return -1
end

print "##task 8 test\n\n"

print task8([2,7,11,15], 9)

print "\n\n\n"

############

###### "task9" ######

def task9(s)
    n=-1
    while s.length != n
        n=s.length
        s=s.sub('()','')
        s=s.sub('[]','')
        s=s.sub('{}','')
        if s.length==0
            return 'Yes'
        end
    end
    return 'NO'
end

print "##task 9 test\n\n"

puts task9("{[()]}")
puts task9("{[(])}")
puts task9("{{[[(())]]}}")

print "\n\n\n"

############

###### "task10" ######

def checkTimes(array, element) 
    count = 0

    array.each do |e|
        if e == element
            count += 1
        end
    end
    return count
end

def countWords (words1, words2)
    result = 0

    words1.each do |word|
        if checkTimes(words1, word).eql?(1) && checkTimes(words2, word).eql?(1)
            result += 1
            p "result"
            p result
        else 
            p "else"
        end

    end

    return result
end

print "##task 10 test\n\n"

words1 = ["leetcode","is","amazing","as","is"], words2 = ["amazing","leetcode","is"]
# words1 = ["b","bb","bbb"], words2 = ["a","aa","aaa"]

p countWords(words1, words2)


#############