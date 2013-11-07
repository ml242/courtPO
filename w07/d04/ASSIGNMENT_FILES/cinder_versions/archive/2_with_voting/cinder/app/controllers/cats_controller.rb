class CatsController < ApplicationController

  # GET /cats/new
  # GET /cats/new.json
  def new
    @cat = Cat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: {age: nil, image_url: nil, name: nil, tag_line: nil} }
    end
  end

  # POST /cats
  # POST /cats.json
  def create
    @cat = Cat.new(params[:cat])

    respond_to do |format|
      if @cat.save
        format.html { redirect_to @cat, notice: 'Cat was successfully created.' }
        format.json { render json: @cat, status: :created, location: @cat }
      else
        format.html { render action: "new" }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end




  # GET /cats/1
  # GET /cats/1.json
  def show
    @cat = Cat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cat }
    end
  end

  # GET /cats
  # GET /cats.json
  def index
    @cats = Cat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cats }
    end
  end




  # GET /cats/1/edit
  def edit
    @cat = Cat.find(params[:id])
  end

  # PUT /cats/1
  # PUT /cats/1.json
  def update
    @cat = Cat.find(params[:id])

    respond_to do |format|
      if @cat.update_attributes(params[:cat])
        format.html { redirect_to @cat, notice: 'Cat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cat.errors, status: :unprocessable_entity }
      end
    end
  end




  # DELETE /cats/1
  # DELETE /cats/1.json
  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy

    respond_to do |format|
      format.html { redirect_to cats_url }
      format.json { head :no_content }
    end
  end


  # POST /cats/1/upvote
  # POST /cats/1/upvote.json
  def upvote
    @cat = Cat.find(params[:cat_id])
    @cat.upvote!

    respond_to do |format|
      format.html { redirect_to @cat, notice: "UPVOTED!: #{@cat.name} has a cuteness score of #{@cat.score}" }
      format.json { render json: @cat }
    end
  end

  # POST /cats/1/downvote
  # POST /cats/1/downvote.json
  def downvote
    @cat = Cat.find(params[:cat_id])
    @cat.downvote!

    respond_to do |format|
      format.html { redirect_to @cat, notice: "DOWNVOTED: #{@cat.name} has a cuteness score of #{@cat.score}" }
      format.json { render json: @cat }
    end
  end


end
