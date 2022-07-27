class QuestionsController < ApplicationController
  def ask; end
  def answer
    @question = params[:q]
    answers = {
      work: 'Great!',
      question: 'Silly question, get dressed and go to work!',
      normal: "I don't care, get dressed and go to work!"
    }
    if @question == 'I am going to work'
      @answer = answers[:work]
    elsif @question.end_with?('?')
      @answer = answers[:question]
    else
      @answer = answers[:normal]
    end
  end
end
