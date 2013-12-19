class MasterpiecesController < ApplicationController
  before_filter :authenticate_user!, only: [:new, :create]

  def new
    @portfolio = Portfolio.find(params[:portfolio_id])
    @masterpiece = Masterpiece.new
  end

  def create
    @portfolio = Portfolio.find(params[:masterpiece].delete(:portfolio_id))
    @masterpiece = current_user.masterpieces.build(params[:masterpiece])
    @masterpiece.portfolio = @portfolio
    if @masterpiece.save
      flash[:notice] = "Portfolio created successfully"
      redirect_to user_portfolio_path(current_user, @portfolio)
    else
      flash[:error] = "There was a problem creating the masterpiece"
      render :new
    end
  end
end
