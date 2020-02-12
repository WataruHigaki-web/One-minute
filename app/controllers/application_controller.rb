class ApplicationController < ActionController::Base
    def index
  end
  def new
  	@daybook = Daybook.new(daybook_params)
  end


  def create 
  	@daybook = Daybook.new(daybook_params)
  	if daybook .save
  		redirect_to 
  	else
  		render 'new'
  	end
  end

   private

  def daybook_params
  	params.require(:daybook).permit(:title, :body, :user_id)
  end

end
