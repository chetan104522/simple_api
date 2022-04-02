class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_destroyed

  private
  # 1 if different erros come so we make new rescue block(5 to 6) controller has big  
  # 2 if this errors come form different controller destroy action it can handle

  def not_destroyed(e)
    render json: { errors: e }, status: :unprocessable_entity
  end
end
