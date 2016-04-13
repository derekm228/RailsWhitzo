class RentalsController < ApplicationController

   # Restrict access. Only signed in users can access the new/create,
   # edit, create and delete actions.
   before_action :authenticate_user!, except: [:index]

   # GET /rentals
   def index
      # create an instance variable, @rentals, that
      # will have all the rentals stored in the DB.
      @rentals = Rental.all

      # By default will render the app/views/rentals/index.html.erb file
      respond_to do |format|
         format.html
         format.json { render json: @rentals }
      end
   end

   # GET /rentals/:id
   def show
      @rental = Rental.find(params[:id])

      # Handle multiple representations, (html, json, ...)
      # By default render HTML representation
      respond_to do |format|
         format.html # render app/views/rentals/show.html.erb template
         format.json { render json: @rental }
      end
   end

   # GET /rentals/new
   def new
      # Create Rental object, need by the form_for helper
      # in the view
      @rental = Rental.new
   end

   # POST /rentals
   def create
      # Create a new rental from the params hash
      # (Note the rentals_params is a method from below)
      @rental = Rental.new(rental_params)

      respond_to do |format| # Select HTML or JSON representation.

         if @rental.save  # Will return true if saved in DB.

            # save succeeded! Send a HTTP Redirect to the /rentals/:id
            # where :id is the id of the rental just saved, ex: /rentals/4.
            format.html { redirect_to rental_path(@rental.id), notice: 'Rental created' }

            # save succeeded! Send a HTTP status of 201 Created in the Response
            format.json { render :show, status: :created, location: @rental }

         else
            # save failed! show the form again.
            format.html {render :new}

            # save failed! show the json representation of the song errors.
            # Send a HTTP status of 422 Unprocessable Entity in the Response
            format.json {render json: @rental.errors, status: :unprocessable_enitity }
         end
      end
   end

   # GET /rentals/:id/edit
   def edit
      # Find the rental to update
      # The rental's attribute will be used to fill in the form fields.
      @rental = Rental.find(params[:id])
   end

   # PATCH /rentals/:id
   def update
      # Find the rental to update
      @rental = Rental.find(params[:id])

      respond_to do |format|
         if @rental.update(rental_params)
            format.html { redirect_to rental_path(@rental), notice: 'Successfully updated the rental' }
            format.json { render :show, status: :ok, location: rental_path(@rental) }
         else
            format.html { render :edit } # show the edit form again
            format.json { render json: @rental.errors, status: :unprocessable_entity }
         end
      end
   end

   # DELETE /rentals/:id
   def destroy
      @rental = Rental.find(params[:id])

      @rental.destroy
      respond_to do |format|
         format.html { redirect_to rentals_url, notice: "You deleted a Rental"}
         format.json { head :no_content }
      end
   end

   private

   # Enforces strong parameter. Limit what attributes/columns can be set in the
   # rentals table.
   def rental_params
      # require(:rental) - params hash MUST have a key with the symbol :rental
      # permit(...) - hash value for rental must have keys, :name, :desc, ...
      params.require(:rental).permit(
         :title, :address1, :price, :bedrooms, :bathrooms, :move_in, :move_out, :washer_dryer, :outdoor_space,
         :fitness_center, :pet_friendly, :dishwasher, :pool, :storage_space, :wifi, :utilities_included, :porch,
         :bike_friendly, :ceiling_fans, :parking, :central_air, :concierge, :fireplace)
   end

end
