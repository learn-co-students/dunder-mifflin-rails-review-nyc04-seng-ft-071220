class EmployeesController < ApplicationController
    
    def index
        @employees = Employee.all
    end

    def new
        @employee = Employee.new
    end

    def show
        @employee = Employee.find(params[:id])
    end

    def create
        @employee = Employee.create(employee_param)
        if @employee.valid?
            redirect_to students_path
        # else, render the form back and save the errors
        else
            flash[:errors] = @employee.errors.full_messages
            redirect_to employees_path
        end
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def update
        @employee = Employee.find(params[:id])
        @employee.update(employee_param)
        redirect_to employee_path(@employee)
    end

    def destroy
        @employee = Employee.find(params[:id])
        @employee.destroy
        redirect_to employees_path
    end

    private

    def employee_param
        params.require(:employee).permit(:first_name,:last_name,:alias,:title,:office,:img_url,:dog_id)
    end

end
