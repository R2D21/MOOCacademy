# Crée une relation avec lessons

class Course < ApplicationRecord
  has_many :lessons
end
