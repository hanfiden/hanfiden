class ContactRequest < ApplicationRecord
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :email, presence: true, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
  validates :subject, presence: true
  validates :content, presence: true
end
