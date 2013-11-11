class SolutionsController < ApplicationController

  def create
    @solution = Solution.new(params[:case])
      if @solution.save
        flash[:notice] = "Added solution successfully"
        redirect_to case_path
      else
        render :action => "new"
      end
  end


  def destroy
    Solution.find(params[:id]).destroy
    flash[:notice] = "Deleted solution"
    redirect_to case_path
  end

end
