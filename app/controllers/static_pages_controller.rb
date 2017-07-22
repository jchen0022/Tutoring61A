class StaticPagesController < ApplicationController

  before_action :verify_user, only: [:calendar]
  before_action :assign_user, only: [:calendar]

  def home
  end

  def calendar
    @tutoring_sessions = TutoringSession.all
  end


private 
  def verify_user
    student = params[:student]
    if student 
      @email = student[:email]
    end
    if @email.nil?
      redirect_to root_path and return
    end
    
    email_valid = /\A([\w+\-].?)+@+berkeley.edu/i.match(@email)
    if not email_valid
      redirect_to root_path and return
    end
  end

  def assign_user
    @user = Student.find_by(email: @email)
    if not @user
      @user = Student.create(email: @email, struggle_amt: 0)
    end
  end
end
