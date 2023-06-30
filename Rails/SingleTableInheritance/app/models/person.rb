class Person < ApplicationRecord
    scope :student, -> {where(type: 'Student')}
    scope :teacher, -> {where(type: 'Teacher')}
end
