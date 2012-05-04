class HostsController < ApplicationController
	before_filter :authenticate, :only => [:index, :edit, :update]
	before_filter :correct_host, :only => [:edit, :update]
	before_filter :admin_host, :only => [:destroy]

  def index
	@title = "All Hosts"
	@hosts = Host.paginate(:page => params[:page])
  end
	
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
  
  private
  
  def authenticate
	deny_access unless signed_in?
  end
  
  def correct_host
	@host = Host.find(params[:id])
	redirect_to(root_path) unless current_host?(@host)
  end	
   
  def edit
  @title = "Edit Host"
  end
  
  def update
	@host = Host.find(params[:id])
	if @host.update_attributes(params[:host])
		flash[:success] = "Profile updated."
		redirect_to @host
	else
		@title = 'Edit host'
		render = 'edit'
	end
   end	
 
  
  def destroy
	Host.find(params[:id]).destroy
	flash[:success] = "Host Annihilated"
	redirect_to hosts_path
  end

  def admin_host
	redirect_to(root_path) unless current_host.admin?
  end
  
 end
 
