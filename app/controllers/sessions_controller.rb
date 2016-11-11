class SessionsController < ApplicationController

	def index
		@session=Session.all
		
	end
	def show
    @session = Session.find(params[:id])
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
       @session.save
     redirect_to new_action_path
      
    end
  

  private

    def session_params
      params.require(:session).permit(:email,:password)
end
end
