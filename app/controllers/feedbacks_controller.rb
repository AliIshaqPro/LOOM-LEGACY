class FeedbacksController < ApplicationController
    def create
      @feedback = Feedback.new(feedback_params)
      if @feedback.save
        redirect_to root_path, notice: 'Thank you for your feedback!'
      else
        redirect_to root_path, alert: 'There was an error saving your feedback.'
      end
    end
  
    def index
      @feedbacks = Feedback.all
    end
  
    private
  
    def feedback_params
      params.require(:feedback).permit(:message)
    end
  end
  