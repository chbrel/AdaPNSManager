# == Schema Information
#
# Table name: graduates
#
#  id             :integer(4)      not null, primary key
#  user_id        :integer(4)      not null
#  student_id     :string(10)      default("00000000"), not null
#  lastname       :string(45)      default(""), not null
#  maiden_name    :string(45)
#  firstname      :string(45)      default(""), not null
#  sex            :string(0)
#  birthday       :date
#  date_of_death  :date
#  photo          :string(255)
#  cnisf_id       :string(8)       default(""), not null
#  cnisf_password :string(20)
#  created_at     :datetime
#  updated_at     :datetime
#

class Graduate < ActiveRecord::Base
	has_one :user
	has_many :emails
	has_many :urls
	has_many :subscriptions
	has_many :phones
	has_many :trainings
	has_many :polytechtrainings
	has_many :experiences
	has_many :useraddresses
end
