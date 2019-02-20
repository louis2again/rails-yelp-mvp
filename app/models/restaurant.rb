# A restaurant has a name, an address, a phone number,
# a category (chinese, italian...) and many reviews
#
# rails generate model Restaurant address:text phone:text category:text
# missed name and phone number and had to run another migrate
# rails generate migration add_name_to_restaurant name:string
# rails generate migration add_phone_number_to_restaurant phone_number:string
#
class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true,
                       inclusion: { in: %w[chinese italian japanese french belgian] }
end
