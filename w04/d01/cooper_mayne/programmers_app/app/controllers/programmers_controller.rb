class ProgrammersController < ApplicationController

  def index
    @programmers = Programmer.all
  end

  def view
    id = params[:id]
    @programmer = Programmer.find(id)
  end

  def edit
    id = params[:id]
    @programmer = Programmer.find(id)
  end

  def update
    id = params["id"]
    github_username = params["github_username"]
    p = Programmer.find(id)
    p.github_username = github_username
    p.save
    redirect_to '/programmers'
  end

  def repos
    id = params[:id]
    @repos = []
    programmer = Programmer.find(id)
    repos = Github.repos.list :user => programmer.github_username
    repos.each do |repo|
      @repos << {
        :name => repo["name"], 
        :description => repo["description"],
        :url => repo["html_url"]
      }
    end
  end

end
