class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def show
		@users = User.find(params[:id])
		@user = Kaminari.paginate_array(@users.articles).page(params[:page])
	end
end
