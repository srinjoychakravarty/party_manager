class HostsController < ApplicationController

  def show
  @host = Host.find(params[:id])
  @title = @host.first_name
  end
  
  def new
  @host = Host.new
   @title = "Sign Up"
  end
  
  def create
	@host = Host.new(params[:host])
	if @host.save
		sign_in @host
		flash[:success] = "Welcome to the Party Manager!"
		redirect_to @host
	else 
	@title = "Sign Up"
	render 'new'
    end
  end
   
  def edit
  @host = Host.find(params[:id])
  @title = "Edit Host"
  end
  
  def update
  end
  
  def destroy
  end

 end
