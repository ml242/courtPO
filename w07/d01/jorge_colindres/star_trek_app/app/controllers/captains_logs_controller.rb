class CaptainsLogsController < ApplicationController

  def new
    @captains_log = CaptainsLog.new
  end

  def create
    @captains_log = CaptainsLog.create params[:captains_log]
    respond_to do |format|
      format.html
      format.json
    end
  end

end
