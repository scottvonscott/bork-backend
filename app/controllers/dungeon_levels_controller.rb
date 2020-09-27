class DungeonLevelsController < ApplicationController
    before_action :set_dungeon_level, only: [:show, :update, :destroy]
  
    # GET /players
    def index
      dungeon_levels = DungeonLevel.all
  
      render json: DungeonLevelSerializer.new(dungeon_levels)
    end
  
    # GET /dungeon_levels/1
    def show
      dungeon = @dungeon_level
      render json: DungeonLevelSerializer.new(dungeon)
    end
  
    # # POST /dungeon_levels
    # def create
    #   @dungeon_level = DungeonLevel.new(dungeon_level_params)
  
    #   if @dungeon_level.save
    #     render json: @dungeon_level, status: :created, location: @dungeon_level
    #   else
    #     render json: @dungeon_level.errors, status: :unprocessable_entity
    #   end
    # end
  
    # # PATCH/PUT /dungeon_levels/1
    # def update
    #   if @dungeon_level.update(dungeon_level_params)
    #     render json: @dungeon_level
    #   else
    #     render json: @dungeon_level.errors, status: :unprocessable_entity
    #   end
    # end
  
    # # DELETE /dungeon_levels/1
    # def destroy
    #   @dungeon_level.destroy
    # end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_dungeon_level
        @dungeon_level = DungeonLevel.find_by(id: params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def dungeon_level_params
        params.require(:dungeon_level).permit(:name)
      end
  end
  