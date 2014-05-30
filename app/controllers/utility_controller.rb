class UtilityController < ApplicationController

  def import
    stations = Station.all
    shifts = Shift.all
    
    #delete grids records
    Grid.delete_all
    shifts.each do |shift|
      stations.each do |station|
        #create grids record
        puts "Writing grid record"
        grid = Grid.new
        grid.station_id = station.id
        grid.shift_id = shift.id
        grid.save
      end
    end
    render nothing: true
  end
end
