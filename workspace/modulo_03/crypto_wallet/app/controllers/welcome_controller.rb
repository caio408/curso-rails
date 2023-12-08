class WelcomeController < ApplicationController
  def index
    @my_name = params[:name]
    @curso = params[:curso]
  end
end
