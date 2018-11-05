class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:query] == 'I am going to work'
      @answer = 'Great!'
    elsif params[:query].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end

# I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise he will answer I don't care, get dressed and go to work!
