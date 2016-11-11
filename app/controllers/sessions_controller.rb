class SessionsController < ApplicationController

	def index
		@session=Session.all
		
	end
	

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(session_params)
       @session.save

     
      
    end
  

  private

    def session_params
      params.require(:session).permit(:email,:password)
end
end
