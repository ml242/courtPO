class ReviewsController < ApplicationController
  # taken from Alicia's article's controller, which seems to be exactly what I'm trying to do with my titles/reviews relationship. I want to show the option to review the title only after the user has selected "watched". This section should be the last thing I work on
  def new
    @review = Review.new
  end

  def create
    @title = Title.find(params[:title_id])
    @review = @title.review.new(params[:review])

    if @review.save
      flash[:notice] = "Review created"
    else
      flash[:alert] = "Review not created."
    end
    redirect_to @title
  end

  def show
    @review = Review.find(params[:title_id][:user_id])
  end

  def edit
    @review = Review.find(params[:title_id][:user_id])
    render :new
  end

end
