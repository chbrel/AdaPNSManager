# == Schema Information
#
# Table name: polytechdiplomas
#
#  id                    :integer(4)      not null, primary key
#  diploma_year          :integer(4)      not null
#  polytechschool_id     :integer(4)      not null
#  type                  :string(0)       default(""), not null
#  polytechstudyfield_id :integer(4)      not null
#  polytechoption_id     :integer(4)
#  created_at            :datetime
#  updated_at            :datetime
#

class Polytechdiploma < ActiveRecord::Base
	has_one :polytechschool
	has_one :polytechstudyfield
	has_one :polytechoption
end
