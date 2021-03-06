class GamesController < ApplicationController
  before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    games = Game.high_scores

    render json: GameSerializer.new(games)
  end

  # GET /games/1
  def show
    render json: @game
  end

  # POST /games
  def create

    game = Game.new(score: params[:score], player_name: params[:player_name])
    # game = Game.new(game_params)

    if game.save
      render json: GameSerializer.new(game), status: :created, location: game
    else
      render json: game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    if @game.update(game_params)
      render json: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # # DELETE /games/1
  # def destroy
  #   @game.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def game_params
      params.permit(:player_name, :score)
    end
end
