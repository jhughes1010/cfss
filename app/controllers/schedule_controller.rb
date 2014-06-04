class ScheduleController < ApplicationController
  def index
    @today = Date.today
    @workweek = @today.cweek
    @grids = Grid.order("id")
  end
end
