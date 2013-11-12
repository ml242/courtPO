class CasesController < ApplicationController
  def index
    @cases = Case.all
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(params[:case])
    @case.user = current_user
      if @case.save
        flash[:notice] = "Added case successfully"
        redirect_to cases_path
      else
        render :action => "new"
      end
  end

  def edit
    @case = Case.find(params[:id])
  end

  def destroy
    Case.find(params[:id]).destroy
    flash[:notice] = "Deleted person successfully"
    redirect_to cases_path
  end


  def update
    @case = Case.find(params[:id])
      if @case.update_attributes(params[:case])
        flash[:notice] = "Updated case "
        redirect_to cases_path
      else
        render :action => "new"
      end
  end

  def show
    id = (params[:id])
    @case = Case.find(id)
    @user = User.find(@case.user_id)
    @solution = Solution.new
  end

end
