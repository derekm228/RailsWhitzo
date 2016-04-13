class AddMovieReferencesToPicture < ActiveRecord::Migration
  def change
   add_reference :pictures, :rental, index: true, foreign_key: true
  end
end
