class PortfoliosController < ApplicationController
  before_filter :authenticate_user!, only: [:create, :new]

  def create
    @portfolio = current_user.portfolios.build(params[:portfolio])
    if @portfolio.save
      flash[:notice] = "Portfolio created successfully."
      redirect_to user_portfolio_path(current_user, @portfolio)
    else
    end
  end

  def new
    @portfolio = Portfolio.new
  end

  def show
    @portfolio = Portfolio.find(params[:id])
    @user = @portfolio.user
  end
end
