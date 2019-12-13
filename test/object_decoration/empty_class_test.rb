require "test/unit"
require_relative '../../object_decoration/empty_class'

class EmptyClassTest < Test::Unit::TestCase
  def test_instance_object_method
    instance = EmptyClass.new
    assert_equal('hello Im an empty class', instance.hello)

    def instance.fly
      'I can fly'
    end

    assert_true(instance.respond_to? :fly)
    assert_equal('I can fly', instance.fly)

    new_instance = EmptyClass.new

    assert_false(new_instance.respond_to? :fly)
  end
end