class AddAddress1AndMobileAndZipAndCityAndPresentationToUser < ActiveRecord::Migration
  def change
    add_column :users, :address1, :string
    add_column :users, :mobile, :string
    add_column :users, :zip, :string
    add_column :users, :city, :string
    add_column :users, :presentation, :string
  end
end
