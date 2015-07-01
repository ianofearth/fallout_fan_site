class ReviewsController < ApplicationController
  def new
    @game = Game.find(params[:game_id])
    @review = @game.reviews.new
  end

  def show
    @game = Game.find(params[:game_id])
    @review = Review.find(params[:id])
  end

  def create
    @game = Game.find(params[:game_id])
    @review = @game.reviews.new(review_params)
    if @review.save
      flash[:notice] = "New review has been added to " + @game.title + "!"
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def edit
    @game = Game.find(params[:game_id])
    @review = Review.find(params[:id])
  end

  def update
    @game = Game.find(params[:game_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      flash[:notice] = @review.name + "'s review has been updated!"
      redirect_to game_review_path(@game, @review)
    else
      render :edit
    end
  end

  def destroy
    @game = Game.find(params[:game_id])
    @review = Review.find(params[:id])
    @review.destroy
    flash[:notice] = @review.name + "'s review has been deleted"
    redirect_to game_path(@game)
  end


private
  def review_params
    params.require(:review).permit(:name, :opinion, :rating, :number)
  end
end
