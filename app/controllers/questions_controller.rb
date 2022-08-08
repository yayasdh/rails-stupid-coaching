class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    #@members = ['doug', 'sylvain', 'sasha', 'yann', 'trouni']
    #if params[:member]
     # @members = @members.select { |member| member.start_with?(params[:member]) }
    #end
  end
end
