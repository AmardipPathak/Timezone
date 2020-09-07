class TimesheetsController < ApplicationController
  def new
  	@timesheet = Timesheet.new
  end

  def edit
  	@timesheet = Timesheet.find(params[:id])
  end

  def show
  	@timesheet = Timesheet.find(params[:id])
  end

  def index
  	@timesheets = current_user.timesheets.all
  end

  def create
  	@timesheet = Timesheet.new(time_params.merge(user_id: current_user.id))
  	if @timesheet.save
  		redirect_to timesheets_path, notice: "timesheet created"
  	else
  		render 'new'
  	end
  end

  def update
  	@timesheet = Timesheet.find(params[:id])
  	if @timesheet.update(time_params)
  		redirect_to timesheets_path,notice: "timesheet updated"
  	else
  	  render 'edit'
  	end
  end

  def destroy
  	@timesheet = Timesheet.find(params[:id])
  	@timesheet.destroy
  	redirect_to timesheets_path,notice: "timesheet deleted"
  end
  
  private
  def time_params
  	params.require(:timesheet).permit(:time_name,:time_for,:time_date)
  end
end
