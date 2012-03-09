# == Schema Information
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  login      :string(45)      default(""), not null
#  password   :string(45)      default(""), not null
#  isAdmin    :boolean(1)      default(FALSE), not null
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
end
