class Job < ActiveRecord::Base
belongs_to :department
has_many :access_jobs
has_many :users, :through => :access_jobs
has_one :contract
has_one :workpattern
has_many :locations

validates :title, presence: true
validates :salaryMin, presence: true, length: {maximum: 6}
validates :salaryMax, presence: true, length: {maximum: 6}
end
