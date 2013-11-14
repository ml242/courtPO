class SolutionsController < ApplicationController
  # before_filter :load_case

  def create
    @user = current_user
    @case = Case.find(params[:case_id])
    @solution = Solution.new(params[:solution])

   #this goes to the show and helps to print out what you want to see form the database.
    if @solution.save
      redirect_to cases_path
    else
      @users = User.all
      render :new
    end
  end

  def update
    @solution = Solution.find(params[:id])
    if params[:vote] == "+"
      @solution.liked_by current_user
    else
      @solution.disliked_by current_user
    end
    return @solution.likes.count
  end

  def destroy
    Solution.find(params[:id]).destroy
    flash[:notice] = "Deleted solution"
    redirect_to case_path
  end

end
