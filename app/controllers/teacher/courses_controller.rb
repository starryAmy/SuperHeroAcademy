class Teacher::CoursesController < ApplicationController
  def index
    @user = current_user
  end
end
