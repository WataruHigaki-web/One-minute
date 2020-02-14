class DaybooksController < ApplicationController
  def index
  end
  def new
  	@daybook = Daybook.new
  end


  def create 
  	@daybook = Daybook.new(daybook_params)
  	if @daybook.save
  		redirect_to 
  	else
  		render 'new'
  	end
  end

  def home
  end
  def help
  end

  private

  def daybook_params
  	params.require(:daybook).permit(:title, :body, :user_id)
  end

end
