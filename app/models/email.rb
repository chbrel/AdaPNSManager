# == Schema Information
#
# Table name: emails
#
#  id          :integer(4)      not null, primary key
#  graduate_id :integer(4)      not null
#  type        :string(0)       default(""), not null
#  email       :string(60)      default(""), not null
#  diffusion   :boolean(1)      default(FALSE), not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Email < ActiveRecord::Base
	belongs_to :graduate
end
