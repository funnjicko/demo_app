class UsersController < ApplicationController

	def index
 	 @user = User.all
  		respond_to do |format|
   		format.html  # index.html.erb
    	format.json  { render :json => @user }
	end
	end

	def new
		@user = User.new
	end

	def show
		@user = User.find(params[:id])
	end

	def create
		@user = User.new(params[:user])
		if @user.save
			redirect_to @user 
		else
			render 'new'
		end
	end

	def edit
 		 @user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
 
  		respond_to do |format|
    	if @user.update_attributes(params[:user])
      format.html  { redirect_to(@user,
                    :notice => 'User was successfully updated.') }
      format.json  { head :no_content }
    else
      format.html  { render :action => "edit" }
      format.json  { render :json => @user.errors,
                    :status => :unprocessable_entity }
    end
  end
	end

	def destroy
	end

end	