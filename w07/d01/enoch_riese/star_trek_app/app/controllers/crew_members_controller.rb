class CrewMembersController < ApplicationController
  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @crew_members }
  end
  respond_to :json
  def index
    @crew_members = CrewMember.select("name, id, shirt_color")
    respond_with @crew_members
  end

  def show
    @crew_member = CrewMember.find(params[:id])
  end

  def create
    @crew_member = CrewMember.new(params[:crew_member])
  end

  def update
    @crew_member = CrewMember.find(params[:id])
  end

  def destroy
    @crew_member = CrewMember.find(params[:id])
  end
end
