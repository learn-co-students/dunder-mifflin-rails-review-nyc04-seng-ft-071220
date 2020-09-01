class DogsController < ApplicationController
    def index
        @dogs=Dog.all
    end
    
    def show
        @dog=Dog.find(params[:id])
        @employee=Employee.all

    end

    def new
        @dog=Dog.new
    end
    
    def create
        @dog=Dog.find(params[:id])
        @dog.create(dog_params)
        redirect_to dog_path(@dog)
    end
    
    def edit 
    end

    def update 
    end

    def destroy
    end


    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end
end
