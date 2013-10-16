class ProfileController < ApplicationController

  Twitter.configure do |config|
  config.consumer_key = 'RBEUTkkzdGvCkna4ELTRiQ'
  config.consumer_secret = 'msvEV1Cgqleg24GZFdl184uMy9zzwatpRKlM8zNShw'
  config.oauth_token = '1833280297-mmnLLg4V2v9kBIHt1oGxJePcvmIR42ikANkfVTC'
  config.oauth_token_secret = 'ko3ipKnKQkiIxXaTw01n8P6StPvvzWfaCyLM6PRDLo'
  end

  # GET '/programmers' - Show all programmers
  def index
    @programmers = Programmer.all
  end
  # GET '/programmers/:id' - Individual programmer info
  def list
    @programmer = Programmer.find(params[:id])
    @twitter = Twitter.user_timeline("#{@programmer.twitter_acct}")
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