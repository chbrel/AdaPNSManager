# == Schema Information
#
# Table name: polytechtrainings
#
#  id                 :integer(4)      not null, primary key
#  graduate_id        :integer(4)      not null
#  polytechdiploma_id :integer(4)      not null
#

class Polytechtraining < ActiveRecord::Base
	belongs_to :graduate
	has_one :polytechdiploma
end
