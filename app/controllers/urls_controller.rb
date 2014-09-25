class UrlsController < ApplicationController

	def index
    end

    def show
		@url = Url.find(params[:id])
		puts "Hi"
	end

	def new
		@url = Url.new
	end

	def create
		@url = Url.new(safe_params)
		if @url.save
			#success
			redirect_to url_path(@url)

		else
			render 'new'
		end
	end

	def update
	end

	def destroy
	end

	private
	def safe_params
		params.require(:url).permit(:url)
	end
end
