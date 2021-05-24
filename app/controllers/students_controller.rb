class StudentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :vibemeter]
  def new
    @student = Student.new 
    @lesson = @student.build_lessons
    @guide = Guide.find_by_id(1)


  end

  def create 
    
    student(student_fields)
    
    if @student.save
      redirect_to student_path
    else
      render 'new'
    end
  end

  

  private

  def find_student
    @student = Student.find(params[:id])
  end 
  def student_fields
     params.require(:student).permit(:name, lesson_attributes: [:title, :description]) 
    
  end
end

