class Tracker < ActiveRecord::Base
    belongs_to :user
    validates_length_of :Name, :minimum => 3, :maximum => 50, :allow_blank => false
    validates_length_of :description, :maximum => 150
end
