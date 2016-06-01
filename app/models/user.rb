class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  geocoded_by :address
  after_validation :geocode, :if => lambda{ |obj| obj.address1_changed? && obj.city_changed? && obj.zip_changed? }

  def address
    [city, zip, address1].compact.join(', ')
  end

end
