class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new feedback_params
    if @feedback.save
      flash[:success] = "Đã gửi phản hồi của quý khách thành công, xin cảm ơn!"
      redirect_to new_feedback_path
    else
      flash.now[:error] = @feedback.errors.full_messages
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:email, :content)
  end
end
