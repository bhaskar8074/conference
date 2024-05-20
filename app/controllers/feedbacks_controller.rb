class FeedbacksController < ApplicationController
  def create
    @conference = Conference.find(params[:conference_id])
    @feedback = @conference.feedbacks.new(feedback_params.merge(user: current_user))

    if @feedback.save
      redirect_to @conference, notice: 'Feedback successfully submitted.'
    else
      redirect_to @conference, alert: 'Failed to submit feedback.'
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:comment)
  end
end
