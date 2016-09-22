class Job < ActiveRecord::Base
belongs_to :department
has_one :contract
has_one :work_pattern
end
