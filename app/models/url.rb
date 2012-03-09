# == Schema Information
#
# Table name: urls
#
#  id          :integer(4)      not null, primary key
#  graduate_id :integer(4)      not null
#  url         :string(100)     default(""), not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Url < ActiveRecord::Base
	belongs_to :graduate
end
