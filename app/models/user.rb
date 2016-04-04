class User < ActiveRecord::Base
	has_many :goals, dependent: :destroy
end
