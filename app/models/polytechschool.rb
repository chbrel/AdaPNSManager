# == Schema Information
#
# Table name: polytechschools
#
#  id         :integer(4)      not null, primary key
#  short_name :string(45)      default(""), not null
#  full_name  :string(45)      default(""), not null
#  created_at :datetime
#  updated_at :datetime
#

class Polytechschool < ActiveRecord::Base
end
