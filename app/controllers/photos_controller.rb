class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @photo = Photo.find_by({ :id => params[:id] })
  end

  def new_form
  end

  def create_row
    p = Photo.new
    p.caption = params[:the_caption]
    p.source = params[:the_source]
    p.save

    # render("create_row.html.erb")
    redirect_to("http://localhost:3000/photos")
  end

  def destroy
    p = Photo.find_by({ :id => params[:id] })
    p.destroy

    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @photo = Photo.find_by({ :id => params[:id] })
  end

def update_row
  p = Photo.find_by({ :id => params[:id] })
  p.caption = params[:the_caption]
  p.source = params[:the_source]
  p.id = params[:id]
  p.save

      redirect_to("http://localhost:3000/photos/" + p.id.to_s)
      # render("update_row.html.erb")
end

end
