class CaptainsLogsController < ApplicationController
  def create
    @captainslog = CaptainsLog.new
    @captainslog.title = params["title"]
    @captainslog.message = params["message"]
    @captainslog.save
    render :json => @captainslog
  end
end
