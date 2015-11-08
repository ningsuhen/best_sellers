class Shop < ActiveRecord::Base
  has_many :listings
  validates_formatting_of :url, using: :url
end
