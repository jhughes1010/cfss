class ScheduleMainController < ApplicationController
  def index
    @today = Date.today.beginning_of_week
    @workweek = @today.cweek
    @grids = Grid.order("name")
    @schedules = Schedule.horizon(@workweek)
  end
end
