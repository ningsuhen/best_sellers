class Listing < ActiveRecord::Base
  belongs_to :shop
  validates_formatting_of :image, using: :url
end
