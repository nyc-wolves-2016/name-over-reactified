class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    User.find_by(id: session[:user_id])
  end

  def logged_in?
    !!current_user
  end


  def require_user
    redirect_to '/' unless logged_in?
  end

  def find_question(comment)
    if comment.commentable_type == "Question"
      Question.find_by(id: comment.commentable_id).id
    else
      Answer.find_by(id: comment.commentable_id).question_id
    end
  end

  def user_logged_in?(user_id) # Ensures a user who is not logged in can view home page
    if logged_in?
      true if current_user.id == user_id
    end
  end
end
