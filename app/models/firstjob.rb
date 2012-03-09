# == Schema Information
#
# Table name: firstjobs
#
#  id                :integer(4)      not null, primary key
#  graduate_id       :integer(4)      not null
#  salary            :string(45)
#  firstjob_duration :string(45)
#  looking_for_job   :boolean(1)
#  created_at        :datetime
#  updated_at        :datetime
#

class Firstjob < ActiveRecord::Base
	belongs_to :graduate
end
