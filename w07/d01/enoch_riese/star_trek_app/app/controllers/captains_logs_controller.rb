class CaptainsLogsController < ApplicationController
respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @captainsLogs }
  end
  respond_to :json
  def index
    @captainsLogs = CaptainsLog.all
    respond_with @captainsLogs
  end
  respond_to :json
  def create
    captainsLog = CaptainsLog.new(params[:captainsLog])
    captainsLog.save
    redirect_to '/'
  end
end
