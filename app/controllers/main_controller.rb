class MainController < ApplicationController
  def index
    @today = Date.today()
  end
end
