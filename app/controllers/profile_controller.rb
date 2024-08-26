class ProfileController < ApplicationController

    def index
        @feedbacks = Feedback.all
      end
    def new
        
   @feedbacks = Feedback.all
          
    end
    
end
