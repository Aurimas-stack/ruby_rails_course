class StudentCoursesController < ApplicationController 
    def create
        course_to_add = Course.find(params[:course_id])
        unless current_user.courses.include?(course_to_add)
            StudentCourse.create(course: course_to_add, studet: current_user)
            flash[:success] = "You have enroleld in #{course_to_add.name}"
            redirect_to current_user
        else  
            flash[:alert] = "Something went wrong with enrollment"
            redirect_to roo_path
        end
    end
end