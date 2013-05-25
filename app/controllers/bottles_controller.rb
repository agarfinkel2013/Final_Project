class BottlesController < ApplicationController

  def index
    @bottles = Bottle.all
  end

  def show
    @bottle = Bottle.find_by_id(params[:id])
  end

  def new
    @bottle = Bottle.new
  end

  def create
    @bottle = Bottle.new
    @bottle.name = params[:name]
    @bottle.year = params[:year]
    @bottle.color = params[:color]
    
    if @bottle.save
      redirect_to bottles_url
    else
      render 'new'
    end
  end

  def edit
    @bottle = Bottle.find_by_id(params[:id])
  end

  def update
    @bottle = Bottle.find_by_id(params[:id])
    @bottle.name = params[:name]
    @bottle.year = params[:year]
    @bottle.color = params[:color]
    
    if @bottle.save
      redirect_to bottles_url
    else
      render 'new'
    end
  end

  def destroy
    @bottle = Bottle.find_by_id(params[:id])
    @bottle.destroy
    redirect_to bottles_url
  end
end