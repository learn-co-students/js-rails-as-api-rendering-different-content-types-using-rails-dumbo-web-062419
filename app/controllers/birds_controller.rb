class BirdsController < ApplicationController
  def index
   @birds = Bird.all
   render json: @birds
   #render json: ['As','well','as','arrays']
  end

  def plain
    render plain: "I am a plain language"
  end


  def show
    bird = Bird.find(params[:id])
    #render json: bird, only: [:name, :species]
    render plain: "I am bird number #{bird.id}, and my name is #{bird.name}"
  end

end
