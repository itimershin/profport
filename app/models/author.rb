class Author < ApplicationRecord
  has_one :user
 has_many :competences
end
