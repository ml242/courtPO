class CrewMembersController < ApplicationController

  def index
    @crew_members = CrewMember.select("name, id")
    render :json => @crew_members
    erb :index
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
