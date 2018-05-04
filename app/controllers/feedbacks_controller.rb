class FeedbacksController < ApplicationController
  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new feedback_params
    if @feedback.save
      flash[:success] = "Cảm ơn quý khách đã đóng ghóp ý kiến"
      redirect_to new_feedback_path
    else
      flash.now[:error] = "Xin hãy điền đủ cả email và nội dung"
      render :new
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:email, :content)
  end
end
