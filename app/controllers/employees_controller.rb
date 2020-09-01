class EmployeesController < ApplicationController
    def index
        @employees=Employee.all
    end
    
    def show
        @employee=Employee.find(params[:id])
    end

    def new
      @employee=Employee.new
      @dog=Dog.all
        
    end
    
    def create
        @employee=Employee.new(employee_params)
        params[:employee]['img_url'].each do |img|
            @employee.img_url=img
            @employee.save
        end
    end
    
    def edit 
    end

    def update 
    end

    def destroy
    end
    
    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id, :img_url)
    end
end
