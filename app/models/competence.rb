class Competence < ApplicationRecord
  VALID_REGEXP = /\A[a-zA-Z\s]+\z/i
  VALID_REGEXP_SKILL = /\A[1-3]\z/i
  validates :title, presence: true, format: { with: VALID_REGEXP }
  validates :skillrate, format: { with: VALID_REGEXP_SKILL }
end
