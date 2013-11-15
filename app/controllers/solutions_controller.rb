class SolutionsController < ApplicationController
  # before_filter :load_case

  def create
    @user = current_user
    @case = Case.find(params[:case_id])
    @solution = Solution.new(
      :user_id => current_user.id,
      :case_id => @case.id,
      :opinion => params[:opinion_input]
    )
   #this goes to the show and helps to print out what you want to see form the database.
    if @solution.save
      binding.pry
      render json: @solution
    else
      @users = User.all
      render :new
    end
  end

  def show
    render json: params[:id]
  end
  def update
    @solution = Solution.find(params[:id])
    if params[:vote] == "+"
      @solution.liked_by current_user
      @solution.addToScore
    else
      @solution.disliked_by current_user
    end
    render json: @solution.likes.size
  end

  def destroy
    Solution.find(params[:id]).destroy
    flash[:notice] = "Deleted solution"
    redirect_to case_path
  end

end
