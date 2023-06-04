class Api::V0::PlaygroundsController < ApplicationController
  def index
    render json: PlaygroundSerializer.new(PlaygroundsSearchFacade.new(params).playgrounds)
  end

  def show

  end
end
