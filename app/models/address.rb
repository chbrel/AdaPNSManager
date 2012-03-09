# == Schema Information
#
# Table name: addresses
#
#  id         :integer(4)      not null, primary key
#  address1   :string(100)     default(""), not null
#  address2   :string(100)
#  address3   :string(100)
#  zipcode    :string(15)
#  city       :string(60)
#  country_id :integer(4)
#  created_id :datetime
#  updated_id :datetime
#

class Address < ActiveRecord::Base
	has_one :country
end
