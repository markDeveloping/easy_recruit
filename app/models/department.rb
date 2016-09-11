class Department < ActiveRecord::Base
	has_many :jobs
	has_many :users
end
