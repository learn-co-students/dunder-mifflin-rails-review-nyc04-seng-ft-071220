class EmployeesController < ApplicationController

    def index
        @employees = Employee.all
    end

    def new
        @errors = flash[:errors]
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create
        employee_params = params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
        @employee = Employee.create(employee_params)
        if @employee.valid?
            redirect_to employee_path(@employee)
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to new_employee_path
        end
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def edit
        @errors = flash[:errors]
        @employee = Employee.find(params[:id])
        @dogs = Dog.all
    end

    def update
        @employee = Employee.find(params[:id])
        employee_params = params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
        @employee.update(employee_params)
        if @employee.valid?
            redirect_to employee_path(@employee)
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to edit_employee_path
        end
    end
end
