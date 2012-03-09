# == Schema Information
#
# Table name: subscriptions
#
#  id          :integer(4)      not null, primary key
#  graduate_id :integer(4)      not null
#  year_number :integer(4)      not null
#  type        :string(0)       default(""), not null
#  description :string(100)     default(""), not null
#  date        :date            not null
#  created_at  :datetime
#  updated_at  :datetime
#

class Subscription < ActiveRecord::Base
	belongs_to :graduate
end
