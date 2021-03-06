class PhotosController < ApplicationController
  def index
    @photos = Photo.all

    render("photo_templates/index.html.erb")
  end

  def show
    @photo = Photo.find(params[:id_to_display])

    render("photo_templates/show.html.erb")
  end

  def new_form
    @photo = Photo.new
    render("photo_templates/new_form.html.erb")
  end

  def create_row
    @photo = Photo.new

    @photo.image = params[:image]
    @photo.caption = params[:caption]

    save_status = @photo.save

    if save_status == true
      redirect_to("/photos", :notice => "Photo created successfully.")
    else
      render("photo_templates/new_form.html.erb")
    end
  end

  def edit_form
    @photo = Photo.find(params[:prefill_with_id])

    render("photo_templates/edit_form.html.erb")
  end

  def update_row
    @photo = Photo.find(params[:id_to_modify])

    @photo.image = params[:image]
    @photo.caption = params[:caption]

    save_status = @photo.save

    if save_status == true
      redirect_to("/photos/#{@photo.id}", :notice => "Photo updated successfully.")
    else
      render("photo_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @photo = Photo.find(params[:id_to_remove])

    @photo.destroy

    redirect_to("/photos", :notice => "Photo deleted successfully.")
  end
end
