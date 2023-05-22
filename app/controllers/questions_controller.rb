class QuestionsController < ApplicationController
  def ask
  end
  def answer
      @question = params[:question]
      @answers = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work"]
    # message = I am going to work affiche Great!
    if @question == "I am going to work"
      @answer = @answers[0]
      # s'il y a un ? affiche "Silly question, get dressed and go to work!"
    elsif @question.include?('?')
      @answer = @answers[1]
    # sinon affiche "I don't care, get dressed and go to work"
    else
      @answer = @answers[2]
    end
  end
end
