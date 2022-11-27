class KidsController < ApplicationController

    def index 
        kids = Kid.all
        render json: kids
    end

    def show
        kid = Kid.find_by(id: params[:id])
        render json: kid
    end

    def create
        kid = Kid.create(kid_params)
        render json: kid
    end

    def update
        kid = Kid.find_by(id: params[:id])
        kid.update(kid_params)
        render json: kid
    end

    def destroy
        kid = Kid.find_by(id: params[:id])
        kid.destroy
        head :no_content
    end

    private

    def kid_params
        params.permit(:name, :age, :img_src)
    end
end
