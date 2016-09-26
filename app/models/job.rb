class Job < ActiveRecord::Base
belongs_to :department
has_many :access_jobs
has_many :users, :through => :access_jobs
end
