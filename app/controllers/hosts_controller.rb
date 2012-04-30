class HostsController < ApplicationController

 

  def show
  #@title = "Show Host"
  @host = Host.find(params[:id])
  end
  
  def new
   @title = "Sign Up"
  end
  
  def create
  end
  
  def edit
  @title = "Edit"
  end
  
  def update
  end
  
  def destroy
  end

 end
