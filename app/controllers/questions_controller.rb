class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])

  end

  def update
    @question = Question.find(params[:id])

  end

  def edit
    @question = Question.find(params[:id])
  end
end
