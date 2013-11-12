class SolutionsController < ApplicationController
  before_filter :load_case

  def create
    @solution = @case.solution.build(params[:solution])
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

  def load_case
    @case = Case.find(params[:case_id])
  end

end
