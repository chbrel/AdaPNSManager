# == Schema Information
#
# Table name: trainings
#
#  id            :integer(4)      not null, primary key
#  graduate_id   :integer(4)      not null
#  training_year :integer(4)      not null
#  school        :string(45)      default(""), not null
#  diploma       :string(45)      default(""), not null
#  studyfield    :string(45)
#  option        :string(45)
#  option_name   :string(70)
#  created_at    :datetime
#  updated_at    :datetime
#

class Training < ActiveRecord::Base
	belongs_to :graduate
end
