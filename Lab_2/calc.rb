class Calculator
    def calc
      # .chomp to remove the empty line from user input
      puts "enter first number : "
      num1 = gets.chomp
      puts "enter operator : "
      operator = gets.chomp
      unless operator == "+" || operator == "-" ||operator == "*" || operator == "/"
        puts "you only can use + or - or * or / as operator"
        exit(1)
      end
      puts "enter second number: "
      num2 = gets.chomp
  
      #convert inputs to floats for operation
      number1 = num1.to_f
      number2 = num2.to_f
  
      case operator
      when "+"
        puts "#{number1} + #{number2} = #{number1 + number2}"
      when "-"
        puts "#{number1} - #{number2} = #{number1 - number2}"
      when "*"
        puts "#{number1} * #{number2} = #{number1 * number2}"
      when "/"
        begin
            div = number1.div(number2)
            puts "#{number1} / #{number2} = #{div.to_f}"
        rescue ZeroDivisionError
            print "infinity"
        end
      end
    end
  end
  
  calc = Calculator.new
  puts calc.calc