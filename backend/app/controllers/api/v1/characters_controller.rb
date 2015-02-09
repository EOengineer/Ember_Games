class Api::V1::CharactersController < ApplicationController
  def index
    @characters = Character.where(project_id: params[:project_id])

    render json: @characters
  end

  def show
    @characters = Character.find(params[:id])

    render json: @character
  end
end
