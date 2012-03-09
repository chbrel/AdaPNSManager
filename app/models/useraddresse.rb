# == Schema Information
#
# Table name: useraddresses
#
#  id          :integer(4)      not null, primary key
#  graduate_id :integer(4)      not null
#  address_id  :integer(4)      not null
#  type        :string(0)       default(""), not null
#  diffusion   :boolean(1)      default(FALSE), not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Useraddresse < ActiveRecord::Base
	belongs_to :graduate
	has_one :address
end
