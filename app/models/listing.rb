class Listing < ActiveRecord::Base
  belongs_to :shop
  validates_formatting_of :image, using: :url
  validates_formatting_of :url, using: :url
end
