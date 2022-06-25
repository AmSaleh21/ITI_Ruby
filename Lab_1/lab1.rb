
###### "task1" ######

def task1(n,ch)
    for i in 1..n
        puts ch*i
    end
end

print "##task 1 test\n\n"

task1(5,'a')

print "\n\n\n"

############

###### "task2" ######

def task2(str)
    if str.start_with?("if") 
        puts true
    else
        puts false
    end
end

print "##task 2 test\n\n"

print 'check ifconfig :'
task2('ifconfig')
print 'check hello :'
task2('hello')

print "\n\n\n"

############

###### "task3" ######

def task3(str)
    puts str[-1] << str[1...-1]  << str [0]
end 

print "##task 3 test\n\n"

task3('Python')
task3('Java')

print "\n\n\n"

############

###### "task4" ######

def task4(str)
    if(str.length() > 1)
        last_ch = str.length() - 1 
        print  str.split('')[last_ch] + str + str.split('')[last_ch], "\n"
    end
end 

print "##task 4 test\n\n"

task4('abc')
task4('abcd')
task4('java')

print "\n\n\n"

############

###### "task5" ######

def task5(year)
    if((year%4)==0)
        if((year%100 != 0))
            return "#{year} is leap year"
        elsif((year%400) == 0)
            return "#{year} is leap year"
        end
    end
    return "#{year} is not leap year" 
end

print "##task 5 test\n\n"

puts task5(2012) 
puts task5(1500) 
puts task5(1600) 
puts task5(2020)

print "\n\n\n"

############


###### "task6" ######

def task6(nums)
    tempNums = []
    for i in 0..nums.length-1
        tempNums[i] = nums[nums.length-(i+1)]
    end
    return tempNums
end

print "##task 6 test\n\n"

p task6([1,2,5])
p task6([1,2,3,4,5])
p task6([1,2,4,5,2,9])

print "\n\n\n"

############

###### "task7" ######

def task7(nums)
    sum = 0
    i = 0
    while i < nums.length
        if(nums[i] == 17)
            i += 1
        else
            sum += nums[i]
        end
        i += 1
    end
    return sum
end

print "##task 7 test\n\n"

print task7( [3, 5, 17, 6] ).to_s + "\n"
print task7( [3, 5, 1, 17] ).to_s + "\n"
print task7( [3, 17, 1, 7] ).to_s + "\n"
print task7( [] ).to_s + "\n"

print "\n\n\n"

############
