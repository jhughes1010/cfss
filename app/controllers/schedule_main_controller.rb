class ScheduleMainController < ApplicationController
  def index
    @today = Date.today.beginning_of_week
    @workweek = @today.cweek
    @grids = Grid.order("id")
    @schedules = Schedule.horizon(@workweek)
    #@schedules = Schedule.order("id")
  end
end
