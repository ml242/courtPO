class CatsController < ApplicationController

  # GET /cats/new
  # GET /cats/new.json
  def new
    @cat = Cat.new
    # new.html.erb
  end

  # POST /cats
  # POST /cats.json
  def create
    @cat = Cat.new(params[:cat])

    if @cat.save
      redirect_to @cat, notice: 'Cat was successfully created.'
    else
      render action: "new"
    end
  end




  # GET /cats/1
  # GET /cats/1.json
  def show
    @cat = Cat.find(params[:id])
    respond_to do |format|
      format.xml do
        render xml: @cat
      end
      format.json do
        render json: @cat
      end
      format.html
    end
    # show.html.erb
  end

  # GET /cats
  # GET /cats.json
  def index
    @cats = Cat.all
    # index.html.erb
  end




  # GET /cats/1/edit
  def edit
    @cat = Cat.find(params[:id])
    # edit.html.erb
  end

  # PUT /cats/1
  # PUT /cats/1.json
  def update
    @cat = Cat.find(params[:id])

    if @cat.update_attributes(params[:cat])
      redirect_to @cat, notice: 'Cat was successfully updated.'
    else
      render action: "edit"
    end
  end




  # DELETE /cats/1
  # DELETE /cats/1.json
  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy

    redirect_to cats_url
  end

end
