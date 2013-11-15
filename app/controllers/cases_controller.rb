class CasesController < ApplicationController
  def index
    @cases = Case.find(:all,:order => 'created_at ASC',:limit => 100);
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.create(
      title: params[:title],
      conflict: params[:conflict],
      expiration: params[:expiration])
    @case.user = current_user
    if @case.save
      flash[:notice] = "Added case successfully"
      redirect_to cases_path
    else
      render json: { confirmation: "success"}
    end
  end

  def edit
    @case = Case.find(params[:id])
    if @case.user != current_user
      flash[:notice] = " You are not authorized to edit"
      redirect_to root_path
    end
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
    @solution = Solution.new
    @case = Case.find(params[:id])
  end

end


