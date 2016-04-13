# == Schema Information
#
# Table name: rentals
#
#  id                 :integer          not null, primary key
#  title              :string
#  owner              :string
#  address1           :string
#  address2           :string
#  city               :string
#  state              :string
#  zip                :string
#  price              :integer
#  bedrooms           :integer
#  bathrooms          :integer
#  lease_months       :integer
#  move_in            :date
#  move_out           :date
#  washer_dryer       :boolean
#  outdoor_space      :boolean
#  fitness_center     :boolean
#  pet_friendly       :boolean
#  dishwasher         :boolean
#  pool               :boolean
#  storage_space      :boolean
#  wifi               :boolean
#  utilities_included :boolean
#  porch              :boolean
#  bike_friendly      :boolean
#  ceiling_fans       :boolean
#  parking            :boolean
#  central_air        :boolean
#  concierge          :boolean
#  fireplace          :boolean
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Rental < ActiveRecord::Base
    # Valid States

    STATES =
        ['AK'],
        ['AL'],
        ['AR'],
        ['AZ'],
        ['CA'],
        ['CO'],
        ['CT'],
        ['DC'],
        ['DE'],
        ['FL'],
        ['GA'],
        ['HI'],
        ['IA'],
        ['ID'],
        ['IL'],
        ['IN'],
        ['KS'],
        ['KY'],
        ['LA'],
        ['MA'],
        ['MD'],
        ['ME'],
        ['MI'],
        ['MN'],
        ['MO'],
        ['MS'],
        ['MT'],
        ['NC'],
        ['ND'],
        ['NE'],
        ['NH'],
        ['NJ'],
        ['NM'],
        ['NV'],
        ['NY'],
        ['OH'],
        ['OK'],
        ['OR'],
        ['PA'],
        ['RI'],
        ['SC'],
        ['SD'],
        ['TN'],
        ['TX'],
        ['UT'],
        ['VA'],
        ['VT'],
        ['WA'],
        ['WI'],
        ['WV'],
        ['WY']

    # Validates that the rental has a title, address, city, state, zip
    validates :title, presence: true
    validates :address1, presence: true

    # The rental may have many pictures
    has_many :pictures
end
