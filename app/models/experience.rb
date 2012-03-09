# == Schema Information
#
# Table name: experiences
#
#  id          :integer(4)      not null, primary key
#  graduate_id :integer(4)      not null
#  type        :string(0)       default(""), not null
#  start_date  :date            not null
#  end_date    :date
#  company_id  :integer(4)      not null
#  comment     :text
#  post        :string(100)
#  created_at  :datetime
#  updated_at  :datetime
#

class Experience < ActiveRecord::Base
	belongs_to :graduate
	has_one :company
end
