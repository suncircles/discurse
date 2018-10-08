class Api::PracticesController < ApplicationController

  def index
    @practices = Practice.all
    render 'index.json.jbuilder'
  end

  def create
    @practice = Practice.new(
                            user_id: params[:user_id]
                            )
    @practice.save
  end

end
