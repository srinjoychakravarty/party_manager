class HostsController < ApplicationController

  def home
  @title = "Home"
  end

  def show
  @title = "Show"
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
