
class FooBar

  def initialize(title)
    @title = title
  end

  def testing_init
    @title.to_s
  end

  def foo(value)
    @variable = value
      if @variable.is_a? Integer
        @variable.to_s
      end
    end

    def foo_no_param
      Float::INFINITY
    end

    def self.check_for_negative_string(string)
      if string[0] == "-"
        true
      end
    end

    def self.bar
      inf = -1.0/0
      if inf.infinite?
        inf_to_string = inf.to_s
        check_for_negative_string(inf_to_string)
        return inf
      end
    end
  end


my_var = FooBar.new(1)

my_var.foo(4)

my_var.send(:foo, 4)

my_var.foo_no_param

my_var.send(:foo_no_param)

FooBar.bar

FooBar.send(:bar)

my_var = FooBar.new("This is my title")

my_var.testing_init

my_var.send(:testing_init)
