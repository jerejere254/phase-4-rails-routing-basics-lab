class StudentsController < ApplicationController
 def index
        all_students = Student.all
        render json: all_students
    end

    def grades
        sorted = Student.all.order("grade DESC")
        render json: sorted
    end

    def highest_grade
        top_most = Student.all.order("grade Desc").first
        render json: top_most
    end
end
