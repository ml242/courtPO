class ProfileController < ApplicationController
  # GET '/programmers' - Show all programmers
  def index
    @programmers = Programmer.all
  end
  # GET '/programmers/:id' - Individual programmer info
  def list
    @programmer = Programmer.find(params[:id])
    if gh_handle = @programmer.github_acct
      @gh_repo = Github.repos.list user: gh_handle
    end
  end
  # GET '/programmers/edit/:id' - Programmer chosen to edit, Display text boxes
  def edit
    @programmer = Programmer.find(params[:id])
  end
  # POST '/programmers/:id' - info received, save and redirect to Ind. listing
  def edited
    id = params[:id].to_i
    @programmer = Programmer.find(id)
    @programmer.name = params["prog-name"]
    @programmer.twitter_acct = params["prog-twitter"]
    @programmer.github_acct = params["prog-github"]
    @programmer.avatar_url = params["prog-url"]
    @programmer.save
    redirect_to("/programmers/#{id}")
  end
end