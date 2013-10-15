class ProgrammerController < ApplicationController

  def index
    if request.post?
      new_info = Hash.new
      new_info[name] = params[:name] if params[:name]
      new_info[github_username] = params[:github_username] if params[:github_username]
      new_info[twitter_username] = params[:twitter_username] if params[:twitter_username]
      new_info[img_url] = params[:img_url] if params[:img_url]
      p1 = Programmer.new
      new_info.each do |k, v|
        p1.k = v
      end
      p1.save
      redirect_to('/programmers')
    elsif request.get?
      @programmers = Programmer.all
    end
  end

  def view

  end

  def edit
    id = params[:id]
    if request.post?
      new_info = Hash.new
      new_info[name] = params[:name] if params[:name]
      new_info[github_username] = params[:github_username] if params[:github_username]
      new_info[twitter_username] = params[:twitter_username] if params[:twitter_username]
      new_info[img_url] = params[:img_url] if params[:img_url]
      p1 = Programmer.find(id)
      new_info.each do |k, v|
        p1.k = v
      end
      p1.save
      redirect_to("/programmers/#{id}")
    elsif request.get?
      @programmer = Programmer.find(id)
    end
  end

  def delete
    if request.post?
      id = params[:id]
      Programmer.find(id).destroy
    end
    redirect_to('/programmers')
  end



end




  get '/programmers/:id' => 'programmer#view'

  get '/programmers/:id/edit' => 'programmer#edit'
  post '/programmers/:id' => 'programmer#edit'

  post '/programmers/:id/delete' => 'programmer#delete'
