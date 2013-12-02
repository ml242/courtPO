class SolutionsController < ApplicationController
  # before_filter :load_case We may want to build here to fully cmommit to AJAX

  def create
    @user = current_user
    @case = Case.find(params[:case_id])
    @solution = Solution.new(
      :user_id => current_user.id,
      :case_id => @case.id,
      :opinion => params[:opinion_input],
      :score => 0
    )
   #this goes to the show and helps to print out what you want to see form the database.
    if @solution.save
      render json: @solution
    else
      @users = User.all
      render :new
    end
  end

  def show
    # @solutions = Solution.find(:all,:order => 'score DSC',:limit => 100);
    render json: params[:id]

  end

  def update
    @solution = Solution.find(params[:case_id])
    if params[:vote] == "+"
      @solution.liked_by current_user
      @solution.addToScore
      @solution.save
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
