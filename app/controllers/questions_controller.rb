class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:answer].downcase == 'i am going to work'
      @result = 'Great!'
    elsif params[:answer].include?('?')
      @result = 'Silly question, get dressed and go to work!'
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
