class PhotosController < ApplicationController

	# recall homepage
	def index
		@photos = Photo.all

	end

	#build up a new file
	def new
		@photo = Photo.new # 要先定義實例變數給form_for使用（預設必須提供）

	end

	# then create after build up
	def create
		@photo = Photo.new(photo_params)
		if @photo.save
			redirect_to photo_path(@photo) #新建檔案後應跳回該檔案show page

		else
			render :action => :new

		end

	end

	#show the photo info.
	def show
		@photo = Photo.find(params[:id])

	end


	# edit file
	def edit 
		@photo = Photo.find(params[:id])

	end

	# update after edit
	def update
		@photo = Photo.find(params[:id])
		if @photo.update(photo_params)
			redirect_to photo_url(@photo)

		else
			render :action => :edit

		end

	end

	#destroy an item
	def destroy
		@photo = Photo.find(params[:id])
		@photo.destroy

		redirect_to photos_url

	end

	private

	def photo_params # 定義params 讓使用者在頁面上輸入的資料可以被rails認同並更改，預設為所有資料都無法存取
		params.require(:photo).permit(:title, :date, :description, :file_location)

	end

end
