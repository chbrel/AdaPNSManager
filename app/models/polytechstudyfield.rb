# == Schema Information
#
# Table name: polytechstudyfields
#
#  id         :integer(4)      not null, primary key
#  short_name :string(45)      default(""), not null
#  full_name  :string(45)      default(""), not null
#  created_at :datetime
#  updated_at :datetime
#

class Polytechstudyfield < ActiveRecord::Base
end
