require("minitest/autorun")
require("minitest/rg")

require_relative("../Bus.rb")
require_relative("../Person.rb")

class TestBus < MiniTest::Test
	def setup()
    @bus = Bus.new("22","Bath Street")
    @passenger1 = Person.new("Nan" ,"40")
    @passenger2 = Person.new("Dan" ,"30")
  end
  def test_route_number()
    assert_equal("22", @bus.route_number())
  end
  def test_destination()
    assert_equal("Bath Street", @bus.destination())
  end
  def test_drive()
    assert_equal("Brum brum" , @bus.drive())
  end
  def test_passengers()
    assert_equal(0 , @bus.passengers())
  end
  def test_add_passenger()
   @bus.add_passenger(@passenger1)
    assert_equal(1,@bus.passengers())
  end
  def test_drop_off_passenger()
 @bus.add_passenger(@passenger1)
    @bus.add_passenger(@passenger2)
    @bus.drop_off_passenger(@passenger2)
    assert_equal(1,@bus.passengers())
  end
  def test_empty()
    # @bus.destination == "Bath Street"
    @bus.empty()
    assert_equal(0, @bus.passengers())
  end
end
