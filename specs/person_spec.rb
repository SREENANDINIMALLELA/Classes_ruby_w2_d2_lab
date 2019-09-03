require("minitest/autorun")
require("minitest/rg")

require_relative("../Person.rb")
require_relative("../Bus.rb")
class TestPerson < MiniTest::Test
	def setup()
    @person = Person.new("Anthony" ,"20")
  end
  def test_name()
    assert_equal("Anthony" ,@person.name())
  end
  def test_age()
    assert_equal("20" ,@person.age() )
  end
end
