class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
  end

  def create
    @question = Question.new(title: params[:title], content: params[:content], user_id: current_user.id)

    if @question.save
      redirect_to root
    else
      @errors = @question.errors.full_messages
      render 'new'
    end
  end

  def show
    # @question = Question.find_by(id: params[:id])
    # erb :'questions/show'
  end

  def destroy
    # question = Question.find_by(id: params[:question_id])
    # user_id = question.user_id
    # question.destroy
    #
    # redirect "/users/#{user_id}"
  end
end
