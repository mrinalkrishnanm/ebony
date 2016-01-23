class Project < ActiveRecord::Base
	has_many :issues
	belongs_to :created_by, class_name: 'User', foreign_key: :created_by_id
	has_many :users
end

# Project User

# Project Table
# 1	    Interno
# 2 	Nullify

# User Table

# 1		Mrinal	
# 2 	Akhil

# Third Table

# #project_id 	#user_id
# 1				1
# 1				2
# 2				1
# 2				2