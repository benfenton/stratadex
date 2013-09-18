class User < ActiveRecord::Base
  include Clearance::User
  has_many :contacts, dependent: :destroy
end
