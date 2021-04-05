class SessionAlliesController < ApplicationController

    layout 'main'

    before_action :find_by_id, only: [:show, :edit, :update, :destroy]

    def index
        @session_allies = SessionAlly.all
    end

    def show
    end

    def new
        @session_ally = SessionAlly.new
    end

    def create
        @session_ally = SessionAlly.new(session_ally_params)

        if @session_ally.save
        redirect_to @session_ally
        else
        render 'new'
        end
    end

    def edit
    end

    def update
        if @session_ally.update(session_ally_params)
        redirect_to @session_ally
        else
        render 'edit'
        end
    end

    def destroy
        @session_ally.destroy

        redirect_to session_allies_path
    end

    private

    def find_by_id
        @session_ally ||= SessionAlly.find(params[:id])
    end

    def session_ally_params
        params.require(:session_ally).permit(:name, :hit_points, :backstory, :armour, :goals, :initiative, :image_url)
    end
end
