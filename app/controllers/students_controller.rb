class StudentsController < ApplicationController
  
  def index
    @students = Student.all
    #binding.pry
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    @student = Student.new
    @student.first_name = params[:first_name]
    @student.last_name = params[:last_name]
    @student.save
    
    redirect_to action: "show", id: @student.id
  end

end
