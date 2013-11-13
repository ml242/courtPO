class CaptainsLogsController < ApplicationController
  def create
    r = CaptainsLog.new
    r.message = params["message"]
    r.save
    render :json => ""
  end
end
