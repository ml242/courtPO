class ProgrammersController < ApplicationController
  def index
    programmers = Person.all
  # binding.pry
  @programmer_names = []
  programmers.entries.each do |programmer|
    @programmer_names << programmer.name
  end
end
def show
  id = params[:id].to_i
  person = Person.find(id)
  @name = person.name
  @twitter_pic = person.twitter_pic
  @twitter_username = person.twitter_username
  @github = person.github_username
  if @github != nil
    repos = Github.repos.list user: @github
    repos = repos.body
    @repos_array = []
    repos.each do |repo|
      name = repo['name']
      url = repo['html_url']
      @repos_array << {:name => name, :url => url}
    end
  end
end
def edit
  id = params[:id].to_i
  @person = Person.find(id)
  @id = id
end
def update
  id = params[:id].to_i
  name = params[:name]
  twitter_pic = params[:twitter_pic]
  twitter_username = params[:twitter_username]
  github_username = params[:github_username]
  person = Person.find(id)
  person.name = name
  person.twitter_pic = twitter_pic
  person.twitter_username = twitter_username
  person.github_username = github_username
  person.save
  redirect("/programmers/#{id}")
end
end