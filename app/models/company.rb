# == Schema Information
#
# Table name: companies
#
#  id           :integer(4)      not null, primary key
#  name         :string(60)      default(""), not null
#  address_id   :integer(4)      not null
#  ape_code     :string(45)
#  url          :string(100)
#  phone_number :string(45)
#  fax_number   :string(45)
#  created_at   :datetime
#  updated_at   :datetime
#

class Company < ActiveRecord::Base
	has_one :address
end
