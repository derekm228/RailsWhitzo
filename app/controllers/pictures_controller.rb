class picturesController < ApplicationController

   # Invoke the set_rental method before all actions
   before_action :set_rental

  def index
    @pictures = Picture.all
  end


   # GET /rentals/:rental_id/picture/:id
   def new
      # Create an empty picture, no attributes, for a rental.
      # Empty picture is needed by the form_for helper
      @picture = @rental.pictures.new
   end


   # POST /rentals/:rental_id/pictures
   def create
      # Create a new picture
      @picture = @rental.pictures.new(picture_params)

      if @picture.save
         # Success, we've saved the picture
         redirect_to rental_pictures_path(@rental), notice: 'Created Picture'
      else
         # Oops, failed to create the picture
         render :new
      end
   end

  def destroy
    @picture = Picture.find(params[:id])
    @picture.destroy
    redirect_to pictures_path, notice:  "The picture #{@picture.name} has been deleted."
  end

   private

   def set_rental
      # Pull the rental id out of the URL
      # /rentals/:rental_id/pictures
      @rental = Rental.find(params[:rental_id])
   end

   # Strong params for a picture
   def picture_params
      params.require(:picture).permit(:name, :attachment)
   end
end
