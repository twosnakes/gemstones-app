class StonesController < ApplicationController

  def index
    @stones = Stone.all
  end

  def new
  end

  def create
    stone = Stone.new(
                      name: params[:name],
                      properties: params[:properties]
                      )
    stones.save

    redirect_to "/stones/#{stone.id}"
  end

  def show
    @stone = Stone.find(params[:id])
  end

  def edit
    @stone = Stone.find(params[:id])
  end

  def update
    stone = Stone.find(params[:id])
    stone.assign_attributes(
                            name: params[:name],
                            properties: params[:properties]
                            )
    stone.save

    redirect_to "/stones/#{stone.id}"

  end

  def destroy
    stone = Stone.find(params[:id])

    redirect_to '/'
  end


end
