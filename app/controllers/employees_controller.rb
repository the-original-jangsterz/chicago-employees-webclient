class EmployeesController < ApplicationController
  def index
    @employees = Unirest.get("https://data.cityofchicago.org/resource/xzkq-xp2w.json").body
    render 'index.html.erb'
  end
end
