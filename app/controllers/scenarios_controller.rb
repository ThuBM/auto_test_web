class ScenariosController < ApplicationController
  def index
    @scenarios = Scenario.all
  end

  def new
    @scenario = Scenario.new
  end

  def destroy
    @scenario = Scenario.find params[:id]
    @scenario.destroy!
    redirect_to scenarios_path
  end
end
