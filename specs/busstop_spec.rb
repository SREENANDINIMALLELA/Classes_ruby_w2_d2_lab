require("minitest/autorun")
require("minitest/rg")

require_relative("../BusStop.rb")
class TestBusStop < MiniTest::Test
	def setup()
    @bus_stop = BusStop.new("Central Station")
  end
  def test_stop_name()
    assert_equal("Central Station",@bus_stop.stop_name)
  end
end
