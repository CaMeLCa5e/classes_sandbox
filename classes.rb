

class FooBar

  def initialize(title)
    @title = title
  end

  def testing_init
    puts @title
    title_to_string = @title.to_s
    puts "Is this a string?"
    puts title_to_string.is_a? String
    return title_to_string
  end

  def foo(value)
    @variable = value
      if @variable.is_a? Integer
        puts "is #{@variable} an integer?"  
        puts @variable.is_a? Integer
        puts "converting #{@variable} to a string..."
        string_val = @variable.to_s
        puts "is #{@variable} a string?"
        puts string_val.is_a? String
        puts "Returning sting value..."
        return string_val  
      else
        puts "Please try request again with an integer."
      end       
    end

    def foo_no_param
      inf = Float::INFINITY
      puts "Testing to see if the value is equal to Infinity"
      if inf.infinite?
        puts "foo_no_param will return " + inf.to_s
      else
        puts inf.to_s + "is not equal to Infinity"
      end
      return inf
    end

    def self.check_for_negative_string(string)
      if string[0] == "-"
        puts "Confirmed that this variable is negative"
        true
      else
        puts "Variable is not negative."
      end
    end

    def self.bar
      inf = -1.0/0
      puts "Testing to see if the value is equal to -Infinity"
      if inf.infinite?
        inf_to_string = inf.to_s
        check_for_negative_string(inf_to_string)
        puts "bar will return " + inf_to_string
      else
        puts inf_to_string + "is not equal to -Infinity"
      end
      return inf
    end
  end


my_var = FooBar.new(1)

puts "Exercise 1"
puts "Invoke the foo method:"
my_var.foo(4)

puts 

puts "Invoke the foo method using the send method"
my_var.send(:foo, 4)

puts "-------------------"
puts "Exercise 2"

puts "Invoke the foo_no_param method:"
my_var.foo_no_param

puts 

puts "Invoke the foo_no_param method using the send method"
my_var.send(:foo_no_param)

puts "-------------------"
puts "Exercise 3"

puts "Invoke the bar class method:"
FooBar.bar

puts "Invoke the bar class method using the send method"
FooBar.send(:bar)

puts "-------------------"
puts "Exercise 4: Constructors"

my_var = FooBar.new("This is my title")

my_var.testing_init

puts "* * * * * * * * *"

my_var.send(:testing_init)
