class Admin::VisitsController < ApplicationController
  def index
    @visits = Ahoy::Visit.order(created_at: :desc) # Fetch all visits, ordered by creation time
  end
end
