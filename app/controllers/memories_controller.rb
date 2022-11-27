class MemoriesController < ApplicationController

    def index
        memories = Memory.all
        render json: memories
    end 

    def show
        memory = Memory.find_by(id: params[:id])
        render json: memory 
    end

    def update
        memory = Memory.find_by(id: params[:id])
        memory.update(memory_params)
        render json: memory
    end

    def destroy 
        memory = Memory.find_by(id: params[:id])
        memory.destroy
        head :no_content
    end

    def create
        memory = Memory.create(memory_params)
        render json: memory
    end

    private

    def memory_params
        params.permit(:body, :date)
    end
end
