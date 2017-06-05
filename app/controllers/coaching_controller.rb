class CoachingController < ApplicationController
  def answer
    # here the params need to work so I can pass them as
    # them to the answer logic
    @question = params[:query]
    @answer = coach_answer(@question)

    @answer_enhanced = coach_answer_enhanced(@question)

  end


  def ask
  end

  private

  def coach_answer(question)
    @coach_answer = ''
    if question == "I am going to work right now!"
      @coach_answer = "I am now done with you"
    elsif question.to_s.include? "?"
      @coach_answer = "Silly question son, get dressed and go to work!"
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(question)
    @coach_enhanced = ''
    if question.to_s == "I AM GOING TO WORK RIGHT NOW!"
      @coach_enhanced = ''
    elsif @question.to_s == @question.to_s.upcase
      @coach_enhanced.prepend("I can feel your motivation! ")
    else
      return ""
    end
  end

end
