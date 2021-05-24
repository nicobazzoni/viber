class LessonsController < ApplicationController

  def new
    @student = Student.new
    @lesson = @student.lessons.build
    @guide = Guide.find_by_id(1)


  end

  def create 
    
    @student = Student.create_with(student_fields)
    
    if @student.save
      redirect_to student_path
    else
      render 'new'
    end
  end

  

  private

  def student_fields
     params.require(:student).permit(:name, lesson_attributes: [:title, :description]) 
    
  end
end
