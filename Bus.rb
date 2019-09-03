class Bus
attr_reader :route_number , :destination

def initialize(route_number , destination)
  @route_number= route_number
  @destination=destination
  @passengers =[]
end

def drive()
  return "Brum brum"
end
def passengers()
  return @passengers.count()
end
def add_passenger(new_passenger)
return  @passengers.push(new_passenger)
end
def drop_off_passenger(drop_passenger)
  for passenger in @passengers
    if passenger ==  drop_passenger
      @passengers.delete(drop_passenger)
    end
  end
end

def empty()
 for passenger in @passengers
   @passenger.delete(passenger)
 end
end

end
