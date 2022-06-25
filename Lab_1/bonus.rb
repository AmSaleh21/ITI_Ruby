
                                    #########
                                    # BONUS #
                                    #########

###### "task8" ######

def task8_n2(nums, target)
    for i in 0..nums.length-2
        for j in i+1..nums.length-1
            if ((nums[i]+nums[j]) == target)
                return [i,j]
            end
        end
    end
    return -1
end

def task8_n(nums, target)
    map = Hash.new
    for i in 0..nums.length
        comp = target - nums[i]
        if map.has_key?(comp)
            return [map[comp], i]
        end
        map[nums[i]] = i
    end
    return nil
end

print "##task 8 test O(n^2)\n\n"

print "#{task8_n2([2,7,11,15], 9)}\n"
print task8_n2([2,7,11,15], 26)

print "\n\n##task 8 test 2 O(n)\n\n"

print "#{task8_n([2,7,11,15], 9)}\n"
print task8_n([2,7,11,15], 26)

print "\n\n\n"

############

###### "task9" ######

def validate(str)
    if str == "" || (str.length % 2) != 0
        return false
    else
        chars = str.split(//)
        for c in chars
            if (!(c == '{' || c == '[' || c == '(' || c == '}' || c == ']' || c == ')'))
                return false
            end
        end
    end
end

def task9(s)
    if validate(s)
        n=-1
        while s.length != n
            n=s.length
            s=s.sub('()','')
            s=s.sub('[]','')
            s=s.sub('{}','')
            if s.length == 0
                return true
            end
        end
        return false
    else
        return false
    end
end

# using hash and stack
def task9_ap2(str)
    if validate(str)
        close_for_open = Hash[ '(' => ')', '[' => ']', '{' => '}' ]

        stack = []
    
        for c in str.split(//)
            if c == '(' || c == '[' || c == '{' 
                stack.push(c)
            elsif c == ')' || c == ']' || c == '}'
                if stack.length == 0
                    return false
                end
    
                pop = stack.pop
                if close_for_open[pop] != c
                    return false
                end
            end
        end
        return stack.length == 0
    else
        return false
    end
end

print "##task 9 test\n\n"

puts task9("{[()]}")
puts task9_ap2("{[()]}")
puts '----'
puts task9("([{[}])")
puts task9_ap2("([{[}])")
puts '----'
puts task9('')
puts '----'
puts task9('{[}]')
puts task9_ap2('{[}]')
puts '----'

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
        if checkTimes(words1, word) == 1 && checkTimes(words2, word) == 1
            result += 1
        end

    end

    return result
end

print "##task 10 test\n\n"

words1 = ["leetcode","is","amazing","as","is"], words2 = ["amazing","leetcode","is"]
# words1 = ["b","bb","bbb"], words2 = ["a","aa","aaa"]

p countWords(words1, words2)


#############