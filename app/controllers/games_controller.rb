class GamesController < ApplicationController
    def index
        @games = Game.all
    end

    def new
        # Create form (HTML)
        @game = Game.new
    end

    def create
        # Create new game
        @game = Game.new(game_params)

        puts game_params

        @game.save
        redirect_to @game
    end

    def show
        @game = Game.find_by_id(params[:id])
    end

    def edit
        # Edit form (HTML)
    end

    def update
        # PATCH/PUT to update
    end

    def destroy
        game = Game.find_by_id(params[:id])

        if (defined?(game)).nil?
            # Game does not even exist!
            logger.info "Game with id #{params[:id]} does not exist?!"
            return
        end

        game.destroy

        redirect_to games_url
    end

    private
    def game_params
        params.require(:game).permit(:name, :description, :console_id, :releasedate, :owned, :completed, :digital).tap do |p|
            p.require(:name)
            p.require(:releasedate)
        end
    end
end
