class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    lastcaracter = @question.last
    if @question == "I am going to work"
      @answer = "Great!"
    elsif lastcaracter == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer =  "I don't care, get dressed and go to work!"
    end
  end
end
