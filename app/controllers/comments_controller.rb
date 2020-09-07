class CommentsController < ApplicationController
  def index
  	@comments = current_user.comments.all 	
  end

  def create
  	@timesheet = Timesheet.find(params[:timesheet_id])
  	
  	@comment = @timesheet.comments.create(comment_params.merge(user_id: current_user.id))

  	redirect_to timesheet_path(@timesheet)
  end

  private

  def comment_params
  	params.require(:comment).permit(:comm_name, :comm_text)
  end
end
