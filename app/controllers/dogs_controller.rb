class DogsController < ApplicationController
    def index
        @dogs=Dog.all
    end

    def new
        @dog=Dog.new
    end

    def create
        @dog=Dog(dog_param)
        redirect_to dog_path(@dog)
    end

    def show
        @dog = Dog.find(params[:id])
    end

    def home
        
    end

    private
    def dog_param
        params.require(:dog).permit(:name,:breed,:age)
    end
end
